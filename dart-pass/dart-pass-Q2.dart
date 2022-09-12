import 'dart:io';

// I solve this question in two ways one deal with codes
//and the seconed deal with console I write it in comments down
void main() {
  Account account1 = Account();
  account1.insert(1, "bahaa", "07/04/1987", 500);
  account1.deposit(50);
  account1.withdraw(100);
  account1.toString();
}

class Account {
  int _accountNo = 0;
  String _name = "";
  String _dateOfBirth = "";
  double _amount = 0;
  DateTime _dateCreated = DateTime.now();
  void insert(int acountNo, String name, String dateOfBirth, double amount) {
    this._accountNo = acountNo;
    this._name = name;
    this._dateOfBirth = dateOfBirth;
    this._amount = amount;
    this._dateCreated = DateTime.now();
  }

  void deposit(double depositeAmount) {
    if (this._accountNo == 0) {
      print("Insert the Information of the Acount First ");
    } else {
      this._amount = this._amount + depositeAmount;
    }
  }

  void withdraw(double amount) {
    if (this._accountNo == 0) {
      print("Insert the Information of the Acount First ");
    } else {
      if (amount < this._amount) {
        this._amount = this._amount - amount;
      } else {
        print("The Amount of withdraw is more than the acount amount");
      }
    }
  }

  void checkBalance() {
    print("The Total Amount of the Acount Now is : ${this._amount}");
  }

  String toString() {
    print("The Number of the Acount is ${this._accountNo}");
    print("The Name of the Acount is ${this._name}");
    print("The Date Birth of the Client is ${this._dateOfBirth}");
    print("The Total Amount of the Acount is ${this._amount}");
    print("The Created Date of the Acount is ${this._dateCreated}");
    return "";
  }

  /*  void insert() {
    print("enter the Number of the Acount :");
    this._accountNo = int.parse(stdin.readLineSync().toString());
    print("enter the Name of the Client :");
    this._name = stdin.readLineSync().toString();
    print("enter the Date Birth of the Client :");
    this._dateOfBirth = stdin.readLineSync().toString();
    print("enter the Amount of the Balance :");
    this._amount = double.parse(stdin.readLineSync().toString());
    this._dateCreated = DateTime.now();
  }

  void deposit() {
    print("enter the Amount of the Deposit");
    double amountOfDeposit = double.parse(stdin.readLineSync().toString());
    this._amount = this._amount + amountOfDeposit;
    print("The Total Amount of the Acount Now is : ${this._amount}");
  }

  void withdraw() {
    print("enter the Amount of the withdraw");
    double amount = double.parse(stdin.readLineSync().toString());
    this._amount = this._amount - amount;
    print("The Total Amount of the Acount Now is : ${this._amount}");
  }

  void checkBalance() {
    print("The Total Amount of the Acount Now is : ${this._amount}");
  }

  String toString() {
    print("The Number of the Acount is ${this._accountNo}");
    print("The Name of the Acount is ${this._name}");
    print("The Date Birth of the Client is ${this._dateOfBirth}");
    print("The Total Amount of the Acount is ${this._amount}");
    print("The Created Date of the Acount is ${this._dateCreated}");
    return ""; 
  }*/
}
