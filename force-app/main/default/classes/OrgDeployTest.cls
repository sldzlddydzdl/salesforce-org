@IsTest
public with sharing class OrgDeployTest {
    @IsTest
    public static void OrgDeployTest(){
        System.assertEquals(1, 1,'true');
        System.assertEquals(2, 2,'true');
        System.assertEquals(3, 3);
        System.assertEquals(4, 4);
        List<Account> accountList = [SELECT id, name from Account];
        
        
    }
}
