public with sharing class StudentClassCI {
	public HocSinh__c student;
	public StudentClassCI() {
		student = getStudent();
	}
	
	// Hello World
	public HocSinh__c getStudent(){
		HocSinh__c stu = [Select Id, Name from HocSinh__c];
		return stu;
	}
}