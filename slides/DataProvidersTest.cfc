component extends="mxunit.framework.TestCase"
{
	
	function setUp()
	{
		myObj = new MyComponent();

		nameListData = "Jamie,Wendy,Ayvin,Nyah,Elsie";

		nameArrayData = [ 'Marge', 'Homer', 'Bart', 'Lisa', 'Maggie' ];

		nameQueryData = queryNew( 'name' );
		queryAddRow( nameQueryData, 1 );
		querySetCell( nameQueryData, 'name', 'Melissa' );
		queryAddRow( nameQueryData, 1 );
		querySetCell( nameQueryData, 'name', 'Tiasia' );
	}


	/*
	 * @mxunit:dataprovider nameListData
	 **/
	function testNameValidationWithList( name )
	{
		assertTrue( myObj.validateName( name ) );
	}


	/*
	 * @mxunit:dataprovider nameArrayData
	 **/
	function testNameValidationWithArray( name )
	{
		assertTrue( myObj.validateName( name ) );
	}


	/*
	 * @mxunit:dataprovider nameQueryData
	 **/
	function testNameValidationWithQuery( qry )
	{
		assertTrue( myObj.validateName( qry.name ) );
	}


}