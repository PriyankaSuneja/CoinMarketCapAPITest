package com.coinmarket;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;

import net.masterthought.cucumber.Configuration;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;
import net.masterthought.cucumber.ReportBuilder;


import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


class CoinMarketITTests {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:com/coinmarket").tags("~@ignore").parallel(5);
        generateReport(results.getReportDir());
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    // Generate report method to generate the report
    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        //Specify the folder where to want to generate the report
        Configuration config = new Configuration(new File("target"), "CoinMarket");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
