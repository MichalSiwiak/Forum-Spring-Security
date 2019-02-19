package net.coffeecoding.controller;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;
import net.coffeecoding.service.EntryService;
import net.coffeecoding.service.TopicService;
import net.coffeecoding.service.UsersService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.security.Principal;
import java.sql.Timestamp;
import java.util.*;

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
        }

        return "redirect:/topic?id=" + id;

    }

    @RequestMapping(value = "/refresh", produces = MediaType.TEXT_PLAIN_VALUE, method = RequestMethod.GET)
    public ResponseEntity<String> refresh() {

        List<Entry> entryList = entryService.getEntries();
        for (Entry entry : entryList) {
            entryService.deleteEntry(entry);
        }

        List<Topic> topicList = topicService.getTopics();
        for (Topic topic : topicList) {
            topicService.deleteTopic(topic);
        }


        Map<Integer, String> titles = new HashMap<>();
        Map<Integer, String> contents = new HashMap<>();
        Map<Integer, Integer> topicIds = new HashMap<>();

        contents.put(0, "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.");
        contents.put(1, "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.");
        contents.put(2, "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.");
        contents.put(3, "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).");
        contents.put(4, "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.");


        titles.put(0, "Discounts especially for forum readers");
        titles.put(1, "Is this a good site for sharing files?");
        titles.put(2, "Linux");
        titles.put(3, "programming languages");
        titles.put(4, "Allegro - Network protocol error");
        titles.put(5, "How it is with this checksum");
        titles.put(6, "Mobile software");
        titles.put(7, "I am looking for a smartphone around 1200 zlotys");
        titles.put(8, "Computer Networks");
        titles.put(9, "Do you want to buy a laptop? Be sure to check it out here");
        titles.put(10, "Setting the router in the Access Point (AP) mode - guide");
        titles.put(11, "How to check your anti-virus");
        titles.put(12, "Old YouTube look with a changed browser user-agent");
        titles.put(13, "Facebook - a problem with 360 photos?");
        titles.put(14, "Solving problems with Windows Update in Windows 10");


        for (int i = 0; i < 100; i++) {

            Topic topic = new Topic();

            topic.setTitle(titles.get(new Random().nextInt(14)));
            topic.setContent(contents.get(new Random().nextInt(4)));
            topic.setDate(new Timestamp(new Date().getTime()));
            topic.setUsers(usersService.getUser("admin"));

            topicService.saveTopic(topic);
            topicIds.put(i, topic.getId());

        }

        for (int i = 0; i < 500; i++) {
            Entry entry = new Entry();
            entry.setDate(new Timestamp(new Date().getTime()));
            entry.setUsers(usersService.getUser("user"));
            entry.setContent(contents.get(new Random().nextInt(4)));
            int id = topicIds.get(new Random().nextInt(99));
            Topic topic = topicService.getTopic(id);
            entry.setTopic(topic);
            entryService.saveEntry(entry);
        }

        return new ResponseEntity<>("Successfully refreshed database!", HttpStatus.OK);
    }
}
