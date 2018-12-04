package pl.javacoding.model;

public class Offer {

    private String title;
    private String bankName;
    private String margin;
    private String interest;
    private String commission;
    private String rrso;

    @Override
    public String toString() {
        return "Offer{" +
                "title='" + title + '\'' +
                ", bankName='" + bankName + '\'' +
                ", margin='" + margin + '\'' +
                ", interest='" + interest + '\'' +
                ", commission='" + commission + '\'' +
                ", rrso='" + rrso + '\'' +
                '}';
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getMargin() {
        return margin;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getCommission() {
        return commission;
    }

    public void setCommission(String commission) {
        this.commission = commission;
    }

    public String getRrso() {
        return rrso;
    }

    public void setRrso(String rrso) {
        this.rrso = rrso;
    }
}
