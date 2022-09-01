/*
write a dart program for a student attendance for a school class  
it should have 4 functionally
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
NOTE:create function for each case above and do not put all code in the main function
4- exit from the program



NOTE: print a msg to user if he try to print the student and there is no one in the class
NOTE: there is no need for now to handle the case for having duplicate name

 */

/*  the output of execute the program is :
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

3
the names student in the class now:
ali
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

2  
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

3
no student exist
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit

4
 */
import 'dart:io';

final List<String?> names = [];

void main(List<String> args) {
  while (true) {
    print('''\n------------------------------------------------
    what you want to do ? (enter 1 or 2 or 3 or 4)
  1- enter a student to the class
  2- leave a student from the class
  3- print all student at the class
  4- exit \n''');

    final option = stdin.readLineSync()!;

    if (option == "4") {
      print("exit");
      break;
    } else if (option == "1") {
      print("enter the name of new student:");

      print(enterStudent());

      continue;
    } else if (option == "2") {
      leaveStudent();
    } else if (option == "3") {
      printAll();
    } else
      print("pleas choose one of these numbers 1,2,3,4");
  }
}

enterStudent() {
  final input = stdin.readLineSync()!;
  names.add(input);
  return input;
}

leaveStudent() {
  print("enter the name of student to remove:");
  final input = stdin.readLineSync()!;
  names.remove(input);
  return input;
}

printAll() {
  print("the names of student the class now:");
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  return;
}
