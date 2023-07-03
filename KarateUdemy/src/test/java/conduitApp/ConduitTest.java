package conduitApp;

import com.github.javafaker.File;
import com.intuit.karate.FileUtils;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.jayway.jsonpath.Configuration;

import net.masterthought.cucumber.ReportBuilder;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

// import java.io.File;
// import net.masterthought.cucumber.Configuration;
// import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

class ConduitTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:conduitApp")
                .outputCucumberJson(true)
                 .parallel(3); 
                //generateReport(results.getReportDir());
                // assertTrue(results.getFailCount()==0, results.getErrorMessages());
    }

    // public static void generateReport(String karateOutputPath){
    //     Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
    //     List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
    //     jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
    //     Configuration config = new Configuration(new File(pathname: "target"), projectName: "conduitApp");
    //     ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
    //     reportBuilder.generateReports();

    // }

}
