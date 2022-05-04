from os import system

def time_operation(seconds,mag):
    print("Insert the value in ", mag)
    value = input()
    time = str(int(float(value) * seconds))
    cmd_command = "shutdown /s /t " + time
    system(cmd_command)
    print("The PC will shutdown in ",time,mag)
    
while True:
    system("cls")
    print("---------------------------------------------")
    print(" 1. Hours")
    print(" 2. Minutes")
    print(" 3. Seconds")
    print(" 4. Cancel")
    print(" 5. Exit")
    print("---------------------------------------------")
    menu_value = int(input())

    if menu_value == 5:
        break
    
    elif menu_value == 1:
        system("cls")
        print("-------------------Hours-------------------")
        time_operation(3600,"Hours")
        print("-------------------------------------------")
        input()
        
    elif menu_value == 2:
        system("cls")
        print("-------------------Minutes-------------------")
        time_operation(60,"Minutes")
        print("---------------------------------------------")
        input()
        
    elif menu_value == 3:
        system("cls")
        print("-------------------Seconds-------------------")
        time_operation(1,"Seconds")
        print("----------------------------------------------")
        input()

    elif menu_value == 4:
        system("cls")
        print("-------------------Cancel Menu-------------------\n")
        print("The system shutdown has been canceled\n")
        print("---------------------------------------------------------")
        system("shutdown /a")
        input()
