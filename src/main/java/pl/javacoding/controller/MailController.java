package pl.javacoding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.javacoding.entity.Topic;
import pl.javacoding.mail.Mail;

import javax.annotation.PostConstruct;
import java.security.Principal;
import java.sql.Timestamp;
import java.util.Date;

@Controller
public class MailController {

    @Autowired
    public JavaMailSender emailSender;

    @PostConstruct
    public void init() {

    }

    @GetMapping("/contact")
    public String newMail(Model theModel) {
        theModel.addAttribute("mail", new Mail());
        return "contact-form";
    }

    @PostMapping("/contact")
    public String sendNewMail(@ModelAttribute("mail") Mail mail, Model model) {

        try {

            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(mail.getTo());
            message.setSubject(mail.getSubject());
            message.setText(mail.getContent());
            System.out.println(mail.toString());
            //emailSender.send(message);
            model.addAttribute("ok");


        } catch (Exception e) {

        }

        return "redirect:/contact";
    }
}
