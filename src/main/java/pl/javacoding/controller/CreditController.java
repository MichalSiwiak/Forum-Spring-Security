package pl.javacoding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.javacoding.model.Credit;
import pl.javacoding.model.Offer;
import pl.javacoding.model.OfferList;
import pl.javacoding.utils.Utils;

import java.io.*;
import java.util.List;

@Controller
public class CreditController {

    @Autowired
    Utils utils;
    @Autowired
    OfferList offerList;
    @Autowired
    Credit credit; // warning - can be null !!!

    @PostMapping("/credit")
    public String calculate(@ModelAttribute("credit") Credit credit, Model theModel) {
        this.credit = new Credit(credit.getPeriod(), credit.getAmount(), credit.getRateOfInterest());
        theModel.addAttribute("newCredit", this.credit);
        return "credit-form-result";
    }

    @GetMapping("/credit")
    public String getNewTopic(Model theModel) {
        List<Offer> offers = offerList.getOffers();
        theModel.addAttribute("credit", credit);
        theModel.addAttribute("offers", offers);
        return "credit-form";
    }

    @GetMapping("/downloadpdf")
    public ResponseEntity<InputStreamResource> downloadPDF() {
        utils.exportCreditTimetableToPdf(credit);
        File file = new File("C:\\Users\\msiwiak\\Desktop\\timetable.pdf");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=" + file.getName())
                .contentType(MediaType.APPLICATION_PDF).contentLength(file.length())
                .body(resource);
    }

    @GetMapping("/downloadxls")
    public ResponseEntity<InputStreamResource> downloadXls() {
        utils.exportCreditTimetableToXls(credit);
        File file = new File("C:\\Users\\msiwiak\\Desktop\\poi-generated-file.xls");
        InputStreamResource resource = null;
        try {
            resource = new InputStreamResource(new FileInputStream(file));
        } catch (FileNotFoundException e) {
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment;filename=" + file.getName())
                .contentType(MediaType.valueOf("application/vnd.ms-excel")).contentLength(file.length())
                .body(resource);
    }
}
