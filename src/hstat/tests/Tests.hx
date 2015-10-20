package hstat.tests;

import hstat.tests.distribution.Beta_test;
import hstat.tests.special.Gammafn_test;
import hstat.tests.special.Gammap_test;
import hstat.tests.special.LowRegGamma_test;
import openfl.system.System;
import utest.Runner;
import utest.ui.Report;
import utest.ui.common.HeaderDisplayMode;

/**
 * ...
 * @author 
 */
class Tests
{

	public function new() 
	{
		var runner = new Runner();
		
		//Special
		runner.addCase(new Gammafn_test());
		runner.addCase(new Gammap_test());
		runner.addCase(new LowRegGamma_test());
		
		//Distributions
		runner.addCase(new Beta_test());

		Report.create(runner, NeverShowSuccessResults, AlwaysShowHeader);
		
		runner.onComplete.add(function(h) { 
			System.exit(0);
		} );
		
		
		runner.run();
	}
	
}