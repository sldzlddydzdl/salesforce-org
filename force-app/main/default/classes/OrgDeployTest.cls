@IsTest
public with sharing class OrgDeployTest {
    @IsTest
    public static void OrgDeployTest(){
        System.assertEquals(1, 1);
        System.assertEquals(2, 2);
        System.assertEquals(3, 3);
        List<Account> accountList = [SELECT id, name from Account];
        
        
    }
}
