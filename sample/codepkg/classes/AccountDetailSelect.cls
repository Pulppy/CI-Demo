public with sharing class AccountDetailSelect {
	
	public Account accObj;
	public AccountDetailSelect() {
		accObj = getAcc();
	}
	// Doremon
	public Account getAcc(){
		// Khoi
		Account acc = [Select Id, Name from Account];
		return acc;
	}
}
