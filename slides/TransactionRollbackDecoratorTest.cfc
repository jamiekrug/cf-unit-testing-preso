component
		extends="mxunit.framework.TestCase"
		mxunit:decorators="mxunit.framework.decorators.TransactionRollbackDecorator"
{


	function setUp()
	{
		gateway = new FooGateway( dsn = 'foo' );
	}


	function testFooInsert()
	{
		gateway.insertFoo( id = 1, name = 'bar' );
		
		var foo = gateway.getFoo( id = 1 );

		assertEquals( 1, foo.getID() );

		assertEquals( 'bar', foo.getName() );
	}


}