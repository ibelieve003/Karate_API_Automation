package karate;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
public class KarateRunner4 {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "qa");
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
