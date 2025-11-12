terraform {
    source = "../module"
}

remote_state {
    backend = "local"
    config = {
        path = "${get_terragrunt_dir()}/terraform.tfstate"
    }
    generate = {
        path = "backend.tf"
        if_exists = "overwrite"
    }
}

input = {
    message = "HI FROM Terrateam welcome all "
}