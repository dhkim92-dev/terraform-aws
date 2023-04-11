data "aws_iam_policy_document" "ec2_assume_role" {
    statement {
        actions = ["sts:AssumeRole"]
        
        principals {
          type       = "Service"
          identifiers = ["ec2.amazonaws.com"]
        }
    }
}

data "aws_iam_policy" "system_manager_core" {
    arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

