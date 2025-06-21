public class financialforecasting {

    // Recursive method to calculate future value
    public static double futureValue(double presentValue, double rate, int years) {
        if (years == 0) return presentValue;
        return (1 + rate) * futureValue(presentValue, rate, years - 1);
    }

    public static void main(String[] args) {
        double pv = 1000.0; // Present value in currency
        double rate = 0.05; // 5% annual growth
        int years = 5;

        double fv = futureValue(pv, rate, years);
        System.out.printf("Future Value after %d years: %.2f\n", years, fv);
    }
}
