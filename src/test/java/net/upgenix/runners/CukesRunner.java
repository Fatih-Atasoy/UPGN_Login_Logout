package net.upgenix.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {

                "html:target/cucumber-report.html",
                "rerun:target/rerun.txt",
                "json:target/cucumber.json"

        },
        features = "src/test/resources/features",
        glue = "net/upgenix/step_definitions",
        dryRun = false,
        tags = "@UPGN-260"


)
public class CukesRunner {
}


