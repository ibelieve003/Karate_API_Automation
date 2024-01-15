package karate;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
public class KarateRunner {
	
	@BeforeClass 
	public static void before () {
		System.setProperty("karate.env", "QA");
	}
}
