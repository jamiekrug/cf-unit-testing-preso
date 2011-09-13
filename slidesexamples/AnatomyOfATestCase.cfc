component extends="mxunit.framework.Testcase"
{
	/*
	 * Run before every test in this test case
	 **/
	function setUp()
	{
		variables.cut = new ComponentUnderTest();
	}

	/*
	 * Run after every test in this test case
	 **/
	function tearDown()
	{
		// code to be run after every single test
	}

	/*
	 * Run once, before any tests are run
	 **/
	function beforeTests()
	{
		// code to run once, before any tests
	}

	/*
	 * Run once, after all tests have run
	 **/
	function afterTests()
	{
		// code to run once, after all tests
	}

	/*
	 * A test, with a descriptive name
	 **/
	function doSomething_should_xxx_when_yyy()
	{
		// exercise your component under test
		var result = variables.cut.doSomething();
		
		// make some assertion based on the result of exercising the component
		assertEquals( "SomeExpectedValue", result, "result should've been 'SomeExpectedValue' but was #result#" );
	}

	/*
	 * Another test, not yet implemented
	 **/
	function xxx_should_yyy_when_zzz()
	{
		// fail, until properly implemented
		fail( "xxx_should_yyy_when_zzz not yet implemented" );
	}

	/*
	 * This will not be run by MXUnit, because it's private
	 **/
	private function somePrivateMethod()
	{
		// private method code, for convenience
	}

}