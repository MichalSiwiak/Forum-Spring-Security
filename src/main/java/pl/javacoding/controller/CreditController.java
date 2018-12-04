package pl.javacoding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.javacoding.model.Credit;
import pl.javacoding.utils.Utils;
import java.io.*;

@Controller
public class CreditController {

    @Autowired
    Utils utils;
    Credit credit; // warning - can be null !!!

    @GetMapping("/credit")
    public String getNewTopic(Model theModel) {
        Credit credit = new Credit(15, 5000, 6);
        theModel.addAttribute("credit", credit);
        this.credit = credit;
        return "credit-form";
    }

    @GetMapping("/downloadpdf")
    public ResponseEntity<InputStreamResource> downloadPDF() {
        utils.exportCreditTimetableToPdf(credit);
        File file = new File("/tmp/timetable.pdf");
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
    public ResponseEntity<InputStreamResource> downloadXls(){
        utils.exportCreditTimetableToXls(credit);
        File file = new File("/tmp/poi-generated-file.xlsx");
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
