locals {
  full_path = abspath(path.module)
  right_most_folder_one = basename(local.full_path)
  right_shit_one = replace(local.full_path, local.right_most_folder_one, "")
  account_customizations_name = basename(local.right_shit_one)
}