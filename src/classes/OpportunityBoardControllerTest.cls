@isTest
private class OpportunityBoardControllerTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    static testMethod void OpportunityBoardControllerTest() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            OpportunityBoardController cls = new OpportunityBoardController();
            
            Test.stopTest();
        }
    }

    static testMethod void getOpportuniesTest() {
        
        System.runAs(testAdminUser) {

            Test.startTest();
            
            List<Opportunity> results = OpportunityBoardController.getOpportunies();
            
            Test.stopTest();
            
            System.assertEquals(results.isEmpty(), true);
        }
    }
}