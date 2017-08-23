@isTest
private class AccountDetailSelectTest
{
	static{
		Account acc = new Account(Name ='Account Test');
		insert acc;
	}

	static testMethod void testGetStudent() {
		AccountDetailSelect accTest = new AccountDetailSelect();
		accTest.getAcc();
	}
}