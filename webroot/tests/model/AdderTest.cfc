component extends="mxunit.framework.TestCase"
{

	function setUp()
	{
		adder = new model.Adder();
	}


	function add_shouldPassWithProperSum()
	{
		var actual = adder.add( 1, 2 );
		var expected = 3;

		assertEquals( expected, actual );
	}

}