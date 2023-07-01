UserRole role = [SELECT Id, Name FROM UserRole WHERE Name = 'TestRole' LIMIT 1];
System.debug(role);
update new User(Id = UserInfo.getUserId(), UserRoleId = role.Id);
