/*
write a program to create a medical archive for covid to store the following data from the user
name ,phone , has covid before or not
it should support the following case
1- add new person
2- print all data
3- exit

NOTE: you should use a list and map (map inside a list) [{},{}]
 */
/* the final output 
________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
ali
enter phone number:
000
is have covid (yes or no):
yes
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true

________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
hassan
enter phone number:
4444
is have covid (yes or no):
no
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true

__
name is : hassan
phone number is : 4444
has covid before: false

________________________
what you want to perform
1- add new person
2- print all data
3- exit
3
 */

import 'dart:io';

final List<Map> info = [];

void main(List<String> args) {
  while (true) {
    print('''\n________________________
what you want to perform
1- add new person
2- print all data
3- exit''');

    final option = stdin.readLineSync()!;

    if (option == "3") {
      print("exit");
      break;
    } else if (option == "1") {
      print("enter name:");
      addNewName();

      print("enter phone number:");
      addPhoneNumber();
      print("is have covid (yes or no):");
      covidInfo();

      continue;
    } else if (option == "2") {
      printAll();
    } else {
      print("pleas choose one of these numbers");
    }
  }
}

addNewName() {
  final input = stdin.readLineSync()!;
  return info.add({"name": input});
}

addPhoneNumber() {
  final num = stdin.readLineSync()!;

  return info.add({"phone num": num});
}

covidInfo() {
  final input = stdin.readLineSync()!;

  if (input == "yas") {
    return info.add({"cov": true});
  } else if (input == "no") {
    return info.add({"cov": false});
  }
}

printAll() {
  print("name is : ${info[0]["name"]}");
  print("phone number is : ${info[1]["phone num"]}");
  print("has covid before : ${info[2]["cov"]}");
  print(info);
}
