package pl.javacoding.model;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;

public class Main {

    public static void main(String[] args) {

        List<Offer> offers = getOffers();
        for (Offer offer : offers) {
            System.out.println(offer.toString());
        }

    }

    public static List<Offer> getOffers() {
        List<Offer> offers = new ArrayList<>();
        try {
            Document dodument = Jsoup.connect("https://hipoteki.net/ranking-kredytow-hipotecznych/").timeout(6000).get();
            Elements offerTags = dodument.select("div.oferta ");

            for (Element offerTag : offerTags) {

                Offer offer = new Offer();

                String[] titleAndBank = offerTag.select("div.ofertatitle").text().split("\\| ");
                String title = titleAndBank[0];
                String bank = titleAndBank[1];
                String margin = offerTag.select("div.oferta_values").attr("data-margin");
                String interest = offerTag.select("div.oferta_values").attr("data-interest");
                String commission = offerTag.select("div.oferta_values").attr("data-commission");
                String[] rrso = offerTag.select("div.ofertarow2 div.ofertarow2-2").text().split("\\| ");

                offer.setBankName(bank);
                offer.setTitle(title);
                offer.setMargin(margin);
                offer.setInterest(interest);
                offer.setCommission(commission);
                offer.setRrso(rrso[4].substring(6, 10).replace(",", "."));

                offers.add(offer);
            }

        } catch (Exception e) {

        }

        return offers;
    }
}
