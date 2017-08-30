public with sharing class AccountDetailSelect {
	public Account accObj;

	public AccountDetailSelect() {
		accObj = getAcc();
	}

	public Account getAcc(){
		Account acc = [Select Id, Name from Account];
		return acc;
	}
}

/*Hien*/