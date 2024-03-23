@istest
public class TaskUtilTest {
    @isTest static void testTaskPriority() {
        String priority = TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', priority);
    }
    
    @isTest static void testNormalTaskPriority() {
        String priority = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', priority);
    }
    
    @isTest static void testNullTaskPriority() {
        String priority = TaskUtil.getTaskPriority('CALIFORNIA');
        System.assertEquals(null, priority);
    }
    
    @isTest static void testEmptyStringTaskPriority() {
        String priority = TaskUtil.getTaskPriority('');
        System.assertEquals(null, priority);
    }
}