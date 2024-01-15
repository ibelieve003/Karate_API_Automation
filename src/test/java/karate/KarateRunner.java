package karate;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import org.junit.runner.RunWith;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Runner;
import com.intuit.karate.Results;
import com.intuit.karate.junit4.Karate;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

@RunWith(Karate.class)
public class KarateRunner {

	@BeforeClass
	public static void before() {
		System.setProperty("karate.env", "qa");
	}

//	@AfterClass
//	public static void testParallel() {
//		String karateOutPutPAth = "C:\\Projects\\API_Automation\\Karate_API_Automation\\target\\karate-reports";
//		Results results = new Runner.
////		
////		
//		generateReport(results.getReportDir());		
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
