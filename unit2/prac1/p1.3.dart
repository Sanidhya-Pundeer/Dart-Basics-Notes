class BankAccount {
  String? userName;
  int? _accNo;
  String? accType;
  int? accBal;

  get getAccBal => this.accBal;

  set setAccBal(accBal) => this.accBal = accBal;
  get getUserName => this.userName;

  set setUserName(userName) => this.userName = userName;

  get accNo => this._accNo;

  set accNo(value) => this._accNo = value;

  get getAccType => this.accType;

  set setAccType(accType) => this.accType = accType;

  BankAccount(String userName, [int? _accNo, int? accBal, String? accType]) {
    this._accNo = _accNo ?? 101;
    this.accBal = accBal ?? 0;
  }
}
