package pl.javacoding.model;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Credit {

    private int period;
    private double amount;
    private double rateOfInterest;
    private double payment;

    private List<Double> interests;
    private List<Double> capitalParts;
    private List<Double> debtBalances;
    private List<Integer> periods;

    public Credit(){}

    public Credit(int period, double amount, double rateOfInterest) {
        this.period = period;
        this.amount = amount;
        this.rateOfInterest = rateOfInterest;
        this.payment = calculatePayment();

        List<Double> interests = new ArrayList<>();
        List<Double> capitalParts = new ArrayList<>();
        List<Double> debtBalances = new ArrayList<>();
        List<Integer> periods = new ArrayList<>();

        double debt = amount;

        for (int i = 1; i <= period; i++) {

            double interest = debt * (rateOfInterest / (100) / 12);
            debt = debt - (payment - interest);
            double capitalPart = payment - interest;

            interests.add(roundDouble2precision(interest, 2));
            capitalParts.add(roundDouble2precision(capitalPart, 2));
            debtBalances.add(roundDouble2precision(debt, 2));
            periods.add(i);
        }

        this.interests = interests;
        this.capitalParts = capitalParts;
        this.debtBalances = debtBalances;
        this.periods = periods;
    }

    private double calculatePayment() {
        return amount * (((rateOfInterest / (100) / 12) * Math.pow((1 + (rateOfInterest / (100) / 12)), period))
                / (Math.pow((1 + (rateOfInterest / (100) / 12)), period) - 1));
    }

    private double roundDouble2precision(double value, int places) {

        if (places < 0)
            throw new IllegalArgumentException();
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

    public int getPeriod() {
        return period;
    }

    public void setPeriod(int period) {
        this.period = period;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getRateOfInterest() {
        return rateOfInterest;
    }

    public void setRateOfInterest(double rateOfInterest) {
        this.rateOfInterest = rateOfInterest;
    }

    public double getPayment() {
        return roundDouble2precision(payment, 2);
    }

    public List<Double> getInterests() {
        return interests;
    }

    public List<Double> getCapitalParts() {
        return capitalParts;
    }

    public List<Double> getDebtBalances() {
        return debtBalances;
    }

    public List<Integer> getPeriods() {
        return periods;
    }

    @Override
    public String toString() {
        return "Credit{" +
                "period=" + period +
                ", amount=" + amount +
                ", rateOfInterest=" + rateOfInterest +
                ", payment=" + payment +
                ", interests=" + interests +
                ", capitalParts=" + capitalParts +
                ", debtBalances=" + debtBalances +
                ", periods=" + periods +
                '}';
    }
}
