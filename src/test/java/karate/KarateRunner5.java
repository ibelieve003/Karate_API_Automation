package karate;

import org.junit.BeforeClass;

import com.intuit.karate.junit5.Karate;

public class KarateRunner5 {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "qa");
	}

	
//	@Karate.Test
//	Karate testTags() {
//		return Karate.run("tags").tags("@testGet").relativeTo(getClass());
//		
//	}
	
	@Karate.Test
	Karate testFeature() {
		return Karate.run("@TestLocalRestAPI").relativeTo(getClass());
		
	}
	
	
//	@AfterClass
//	public static void testParallel() {
//		String karateOutPutPAth = "C:\\Projects\\API_Automation\\Karate_API_Automation\\target\\karate-reports";
////		Results results = new Runner.
////		
////		
////		generateReport(results.getReportDir());		
//		generateReport(karateOutPutPAth);
//	}
//
//	public static void generateReport(String karateOutPutPAth) {
//		Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutPutPAth), new String[] { "json" }, true);
//		List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
//
//		for (File file : jsonFiles) {
//			jsonPaths.add(file.getAbsolutePath());
//		}
//
//		Configuration config = new Configuration(new File("target"), "DemoProject");
//		ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//		reportBuilder.generateReports();
//
//	}
}
