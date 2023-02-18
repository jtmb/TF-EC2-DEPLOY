# ###########################################################################################################################################################
# #                                                              !!!SET VARS HERE!!!                                                                      # #
# #   Vars must be set in order for deploy to work. If you are unsure about what these VARS do, search for them in the project and get familiar.          # #
#############################################################################################################################################################


# Your AWS credentials file location
  # See here for more info: https://docs.aws.amazon.com/sdk-for-php/v3/developer-guide/guide_credentials_profiles.html
credentials_file = ["~/.secrets/credentials"]

# Update server tags, these won;t do anything really except give your server tags to identify it by.
tags = {
    Name = "PRD-WBSRV"
    OS = "Debian Linux"
    Type = "Webserver"
    Application = "NGNIX Proxy"
    Environment = "PRD"
  }
# Enter Pub Key Value to deploy to server, key must be in " "
aws_key_pair = ""