# ###########################################################################################################################################################
# #                                                              !!!SET VARS HERE!!!                                                                      # #
# #   Vars must be set in order for deploy to work. If you are unsure about what these VARS do, search for them in the project and get familiar.          # #
#############################################################################################################################################################


# Your AWS credentials file location
  # See here for more info: https://docs.aws.amazon.com/sdk-for-php/v3/developer-guide/guide_credentials_profiles.html
credentials_file = ["/var/jenkins_home/.secrets/credentials"]

# Update server tags, these won;t do anything really except give your server tags to identify it by.
tags = {
    Name = "PRD-WBSRV"
    OS = "Debian Linux"
    Type = "Webserver"
    Application = "NGNIX Proxy"
    Environment = "PRD"
  }
# Enter Pub Key Value to deploy to server, key must be in " "
aws_key_pair = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBwrGIDSI0zmJ5Dg5rSQ61fPZyGg4pakf9W3dIzJkbsdSyGu3kV07C1U2YMEwJLAQ6UVlXSUn4Gdzt9YjxUnVJ7KpLhp6SLcsHu+UXEMLiEtUPeLucYLWwktX/hmxiSTLw0HxwP0FT8J06iJpLQPUQHRLGx/MnPdngtKl8/NVQv+ZlxJD4IXlOsHRKgV/UPjeQQAiNMNOSzCSj3+TaUAVQcXDAL9VW2ziK9at+d3ZWyaePDTjRaaH3n1jPQ92JPOwlTfQLdy9Zt0YgAsgpf0qMcI6Ilo7MCm9YrqmE0xRZa+v7dL/eLGkWdT8tPU4QUNISdlNRCsWDz1+2CUAN/6b7 brajam@DESKTOP-4ID28K7"