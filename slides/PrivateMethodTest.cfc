component extends="mxunit.framework.TestCase"
{


	function testSomePrivateDefaultBehavior()
	{
		var myObj = new Something();

		makePublic( myObj, "somePrivate" );

		var result = myObj.somePrivate( "blah" );

		assertEquals( "blah", result );
	}


	function testSomePrivateUsingDifferentName()
	{
		var myObj = new Something();

		makePublic( myObj, "somePrivate", "_somePrivate" );

		var result = myObj._somePrivate( "blah2" );

		assertEquals( "blah2", result );
	}


}