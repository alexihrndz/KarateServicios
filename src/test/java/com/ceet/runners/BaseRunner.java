package com.ceet.runners;

import com.ceet.report.ReporteCucumber;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static com.ceet.utils.Parametros.AMBIENTE;
import static com.ceet.utils.Parametros.RUTA_REPORTES;
import static org.junit.Assert.assertEquals;

@KarateOptions(features = {"src/test/resources/features/metodo_get.feature"})
public class BaseRunner {
    @Test
    public void runTest() {
        System.setProperty("karate.env", AMBIENTE);
        Results results = Runner.parallel(getClass(), 1, RUTA_REPORTES);
        ReporteCucumber.generar();
        assertEquals(results.getErrorMessages(), 0, results.getFailCount());
    }
}
