public with sharing class StudentClassCI {
	public HocSinh__c student;
	public Map<Id,HocSinh__c> mapHocSinh {get;}

	public StudentClassCI() {
		student = getStudent();
		mapHocSinh = getMapHocSinh();
	}

	public HocSinh__c getStudent(){
		HocSinh__c stu = [Select Id, Name from HocSinh__c];
		return stu;
	}

	public Map<Id,HocSinh__c> getMapHocSinh(){
		Map<Id,Hocsinh__c> mapObj = new Map<Id,Hocsinh__c>();
		try{
			List hocSinh = [Id,TenHocSinh__c,GioiTinh__c,DiemTB__c from Hocsinh__c];
			mapObj.putAll(hocSinh);
		}catch(QueryException ex){
			System.debug('xxxxx ' + ex);
		}
		return mapObj;
	}
}