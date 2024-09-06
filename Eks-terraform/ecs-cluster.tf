resource "aws-ecs-cluster" "ECS" {
    name = "my-new-cluster"
    
    tags = {
        name = "my-new-cluster"
    }
}