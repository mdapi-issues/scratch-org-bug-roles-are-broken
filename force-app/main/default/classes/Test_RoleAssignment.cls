@isTest
private class Test_RoleAssignment {
    @isTest
    private static void testAssignCeoRole() {
        UserRole role = [SELECT Id, Name FROM UserRole WHERE Name = 'CEO' LIMIT 1];
        update new User(Id = UserInfo.getUserId(), UserRoleId = role.Id);
    }

    @isTest
    private static void testAssignDummyRole() {
        UserRole role = [SELECT Id, Name FROM UserRole WHERE Name = 'Dummy' LIMIT 1];
        update new User(Id = UserInfo.getUserId(), UserRoleId = role.Id);
    }
}