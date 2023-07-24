resource "aws_iam_instance_profile" "instance_profile" {
  name = "example_instance_profile"
  role = aws_iam_role.elasticbeanstalk_ec2_role.name
  # Include any other necessary configuration for the instance profile
}



# Create an Elastic Beanstalk application
resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = "beanstalk_application" # Change to your desired application name
  description = "Example Elastic Beanstalk Application"
}

resource "aws_elastic_beanstalk_environment" "beanstalk_environment" {
  name                = "my-beanstalk-environment"
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = "64bit Amazon Linux 2 v5.8.2 running Node.js 18"

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "S3_BUCKET_NAME"
    value     = "my-pipeline-artifact-bucket"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.instance_profile.name
  }
}