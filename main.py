import os
new_name = input("What is the name of the project?: ")
input(f"Press 'Enter' when you have created a repo on git with the name {new_name}: ")
git_url = f"git@github.com:JakobHenning/{new_name}.git"
os.system(f"git remote set-url origin {git_url}")
os.rename("Create_python_project",new_name) #Rename current repo




