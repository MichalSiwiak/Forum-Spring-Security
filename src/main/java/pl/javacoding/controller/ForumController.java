package pl.javacoding.controller;

import pl.javacoding.entity.Entry;
import pl.javacoding.entity.Topic;
import pl.javacoding.service.EntryService;
import pl.javacoding.service.TopicService;
import pl.javacoding.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Controller
public class ForumController {

    @Autowired
    private TopicService topicService;
    @Autowired
    private UsersService usersService;
    @Autowired
    private EntryService entryService;

    @GetMapping("/index")
    public String listTopics(Model theModel) {

        List<Topic> topics = topicService.getTopics();
        theModel.addAttribute("tematy", topics);

        return "forum";
    }

    @GetMapping("/nowyTemat")
    public String getNewTopic(Model theModel) {
        Topic topic = new Topic();
        theModel.addAttribute("topic", topic);
        return "newTemat";
    }

    @PostMapping("/nowyTemat")
    public String saveNewTopic(@ModelAttribute("topic") Topic topic, Principal principal) {

        if (!"".equals(topic.getTitle()) && !"".equals(topic.getContent())) {
            Timestamp date = new Timestamp(new Date().getTime());
            topic.setDate(date);
            topic.setUsers(usersService.getUser(principal.getName()));
            topicService.saveTopic(topic);
            return "redirect:/temat?id=" + topic.getId();
        } else {
            return "newTemat";
        }

    }

    @GetMapping("/temat")
    public String viewNewTopic(@RequestParam("id") int id, Model theModel) {

        if (id != 0) {
            Topic topic = topicService.getTopic(id);
            theModel.addAttribute("temat", topic);
            return "temat";
        } else {
            return "/index";
        }
    }

    @PostMapping("/temat")
    public String saveNewEntry(@RequestParam("tresc") String content, @RequestParam("id") int id, Principal principal) {

        if (!"".equals(content) && id != 0) {
            Topic topic = topicService.getTopic(id);
            Entry entry = new Entry();
            entry.setDate(new Timestamp(new Date().getTime()));
            entry.setTopic(topic);
            entry.setContent(content);
            entry.setUsers(usersService.getUser(principal.getName()));
            entryService.saveEntry(entry);
        }

        return "redirect:/temat?id=" + id;

    }
}
