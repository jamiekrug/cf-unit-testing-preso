component extends="mxunit.framework.TestCase"
{

	function testMyComponentInteractions()
	{
		// Our component under test (CUT)
		var myComponent = new MyComponent();
		
		// Create the mock
		var mockSomeOtherComponent = mock();
		
		// Define the behavior for our mock, including expected parameters
		mockSomeOtherComponent.doSomething( 'foo' ).returns( 123456 );
		
		// Inject the mock into CUT
		myComponent.setSomeOtherComponent( mockSomeOtherComponent );
		
		// Excercise CUT method (assume it relies on dependency of SomeOtherComponent)
		var actual = myComponent.myMethod( 'foo' );
		
		// Test assertion
		assertEquals( 'good stuff', actual );
	}

}