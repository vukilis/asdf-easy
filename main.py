import os, sys 
import subprocess

####################################################################
#oooooo     oooo             oooo          .o  oooo   o8o           
# `888.     .8'              `888        o888  `888   `"'           
#  `888.   .8'   oooo  oooo   888  oooo   888   888  oooo   .oooo.o 
#   `888. .8'    `888  `888   888 .8P'    888   888  `888  d88(  "8 
#    `888.8'      888   888   888888.     888   888   888  `"Y88b.  
#     `888'       888   888   888 `88b.   888   888   888  o.  )88b 
#      `8'        `V88V"V8P' o888o o888o o888o o888o o888o 8""888P' 
####################################################################

subprocess.run(["clear"])
SCRIPT_DIR = os.getcwd()

print("""

----------------------------------------------------------------------------
                        Automated setup asdf with poetry
                            MadeBy: Vuk1lis™
                        https://github.com/vukilis
----------------------------------------------------------------------------\n""")

choice = ""

while True:
    print("1) Debian/Ubuntu")
    print("2) Fedora")
    print("3) openSUSE")
    print("4) Quit")

    choice = input("Enter Choice: ")
    choice = choice.strip()

    if choice == "1":
        subprocess.run(["./setup-debian.sh"])
        break
    elif choice == "2":
        subprocess.run(["./setup-fedora.sh"])
        break
    elif choice == "3":
        subprocess.run(["./setup-openSUSE.sh"])
        break
    elif choice == "4":
        print("Goodbye!")
        break
    elif choice == "":
        print("Invalid option. Please try again!\n")
    else: print(choice + " is invalid option. Please try again!\n")
