package net.coffeecoding.controller;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;
import net.coffeecoding.service.EntryService;
import net.coffeecoding.service.TopicService;
import net.coffeecoding.service.UsersService;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

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


    @GetMapping("/demo")
    public String listTopics(Model theModel) {

        List<Topic> topics = topicService.getTopics();
        theModel.addAttribute("topics", topics);

        return "forum-form";
    }

    @GetMapping("/new-topic")
    public String getNewTopic(Model theModel) {
        Topic topic = new Topic();
        theModel.addAttribute("topic", topic);
        return "new-topic-form";
    }

    @PostMapping("/new-topic")
    public String saveNewTopic(@ModelAttribute("topic") Topic topic, Principal principal) {

        if (!"".equals(topic.getTitle()) && !"".equals(topic.getContent())) {
            Timestamp date = new Timestamp(new Date().getTime());
            topic.setDate(date);
            topic.setUsers(usersService.getUser(principal.getName()));
            topicService.saveTopic(topic);
            return "redirect:/topic?id=" + topic.getId();
        } else {
            return "new-topic-form";
        }

    }

    @GetMapping("/topic")
    public String viewNewTopic(@RequestParam("id") int id, Model theModel) {

        if (id != 0) {
            Topic topic = topicService.getTopic(id);
            theModel.addAttribute("topic", topic);
            return "topic-form";
        } else {
            return "/demo";
        }
    }

    @PostMapping("/topic")
    public String saveNewEntry(@RequestParam("content") String content, @RequestParam("id") int id, Principal principal) {

        if (!"".equals(content) && id != 0) {
            Topic topic = topicService.getTopic(id);
            Entry entry = new Entry();
            entry.setDate(new Timestamp(new Date().getTime()));
            entry.setTopic(topic);
            entry.setContent(content);
            entry.setUsers(usersService.getUser(principal.getName()));
            entryService.saveEntry(entry);
            System.out.println(content);
        }

        return "redirect:/topic?id=" + id;

    }
}
