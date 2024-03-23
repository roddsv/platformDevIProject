@isTest
public class TemperatureConverterTest {
    @isTest static void testWarmTemp() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(95);
        System.assertEquals(35, celsius);
    }
    
    @isTest static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, celsius);
    }
    
    @isTest static void testBoilingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);
        System.assertEquals(100, celsius);
    }
    
    @isTest static void testNegativeTemperature() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-22);
        System.assertEquals(-30, celsius);
    }
}