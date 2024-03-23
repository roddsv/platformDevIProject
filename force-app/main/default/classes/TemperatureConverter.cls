public class TemperatureConverter {
	// Takes a Fahrenheit temperature and returns the Celsius equivalent.
    public static Decimal FahrenheitToCelsius(Decimal fahrenheit) {
        Decimal celsius = 5*(fahrenheit - 32)/9;
        return celsius;
    }
}