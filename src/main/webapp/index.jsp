<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>coffeecoding.net</title>
    <meta name="description"
          content="Free open source projects present different java solutions using spring, hibernate and other popular frameworks.">
    <meta name="keywords"
          content="java, spring, hibernate, apache, tomcat, coding, programmer, linux, google cloud platform, open source, bootstrap, mysql, java ideas">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
    <link rel="stylesheet" href="https://coffeecoding.net/resources/css/now-ui-kit.css" type="text/css">
    <link rel="stylesheet" href="https://coffeecoding.net/resources/css/style.css" type="text/css">
    <link rel="icon" href="resources/img/favicon.png">
    <!-- PAGE scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
</head>


<body class="bg-light text-dark">
<div id="wrap">
    <div id="main" class="clear-top">


        <div class="collapse" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 py-4">
                        <h4>About</h4>
                        <p class="text-info">Free open source projects present different java solutions using spring,
                            hibernate
                            and other popular frameworks.</p>
                    </div>
                    <div class="col-md-3 offset-md-1 py-4">
                        <h4>Contact</h4>
                        <ul class="list-unstyled">
                            <li>
                                <a href="https://pl.linkedin.com/in/michalsiwiak" class="text-secondary"
                                   target="_blank">Follow
                                    on LinkedIn</a>
                            </li>
                            <li>
                                <a href="mailto:info@coffeecoding.net" target="_top" class="text-secondary">Email me</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar sticky-top navbar-dark bg-info">
            <div class="container d-flex justify-content-between">
                <a href="https://www.coffeecoding.net/" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-home fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">
                    HOME
                </text>
                </a>
                <a href="https://github.com/MichalSiwiak/Forum-Spring-Security" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-git-square fa-fw d-inline-block lead fa-2x"></i>&nbsp;&nbsp;<text class="">SOURCE
                    CODE
                </text>
                </a>
                <a href="${pageContext.request.contextPath}/demo" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-desktop fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DEMO VIEW
                </text>
                </a>
                <a target="_blank" href="https://coffeecoding.net/resources/img/cv_msiwiak.pdf"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-address-card fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">RESUME
                </text>
                </a>
                <a href="/contact" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-envelope fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">CONTACT
                </text>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>


        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-left">Forum Spring Security</h1>
                        <hr>
                        <h5>This application presents simple implementation of forum using spring mvc, spring security
                            and spring
                            data.<br></h5>
                        <h5>The application supports operations:</h5>
                        <h5>
                            <ul>
                                <li>creating a new user using spring security database,</li>
                                <li>logging to forum using spring security database,</li>
                                <li>resetting the user password if it is forgotten and sending new password by e-mail,
                                </li>
                                <li>creating a new topic,</li>
                                <li>commenting on topics,</li>
                                <li>browsing topics.</li>
                            </ul>
                        </h5>
                        <h5><b>Back End: </b>Java, Spring MVC, Spring Data, Hibernate, MySQL.</h5>
                        <h5><b>Front End: </b>HTML, CSS, JSP.</h5>
                        <h5>Each topic and answer is assigned to the user in the database. The database is refreshed
                            once a day at night with sample data.</h5>
                        <h5><b>Database schema: </b></h5>
                        <center>
                            <img class="m-0 mb-0 img-fluid" alt="..." src="./resources/img/schema.png" width="800">
                        </center>
                        <br>
                        <br>

                        <h5>To run application create database from sql script and, git clone
                            https://github.com/MichalSiwiak/Forum-Spring-Security.git,
                            upload and run application using tomcat application server or similar.</h5>
                        <h5>Demo View: <a
                                href="https://coffeecoding.net/forum/demo">https://coffeecoding.net/forum/demo</a>
                        </h5>
                    </div>
                </div>
                <h5 class="mb-3">SQL script:</h5>
                <pre><code class="sql">
CREATE DATABASE  IF NOT EXISTS `forum`;

USE forum;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `enabled` boolean not null,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `users` VARCHAR(50),
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`users`) REFERENCES users(username) ON DELETE SET NULL
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` TEXT NOT NULL,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic`INT NOT NULL,
  `users`VARCHAR(50),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`topic`) REFERENCES topic(id),
  FOREIGN KEY (`users`) REFERENCES users(username) ON DELETE SET NULL
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
                        </code></pre>
                <h5 class="mb-3">Controller class:</h5>
                <pre><code class="java">
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

</code></pre>
                <h5 class="mb-3">TopicDAO implementation class:</h5>
                <pre><code class="java">
package net.coffeecoding.dao;

import net.coffeecoding.entity.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TopicDAOImpl implements TopicDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Topic> getTopics() {

        Session currentSession = sessionFactory.getCurrentSession();

        Query<Topic> theQuery =
                currentSession.createQuery("SELECT t from Topic t",
                        Topic.class);

        List<Topic> topics = theQuery.getResultList();

        return topics;
    }

    @Override
    public Topic getTopic(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        Topic theTopic = currentSession.get(Topic.class, id);

        return theTopic;
    }

    @Override
    public void deleteTopic(Topic topic) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.delete(topic);
    }

    @Override
    public void saveTopic(Topic theTopic) {

        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theTopic);

    }
}
                </code></pre>

                <h5 class="mb-3">EntryDAO implementation class:</h5>
                <pre><code class="java">
package net.coffeecoding.dao;

import net.coffeecoding.entity.Entry;
import net.coffeecoding.entity.Topic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EntryDAOImpl implements EntryDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void saveEntry(Entry entry) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(entry);

    }

    @Override
    public List<Entry> getEntries() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Entry> theQuery =
                currentSession.createQuery("SELECT e from Entry e",
                        Entry.class);

        List<Entry> entries = theQuery.getResultList();

        return entries;
    }

    @Override
    public void deleteEntry(Entry entry) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.delete(entry);
    }
}
                </code></pre>

                <h5 class="mb-3">Topic service implementation class:</h5>

                <pre><code class="java">
package net.coffeecoding.service;

import net.coffeecoding.dao.TopicDAO;
import net.coffeecoding.entity.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TopicServiceImpl implements TopicService {

    @Autowired
    private TopicDAO topicDAO;


    @Override
    @Transactional
    public List<Topic> getTopics() {
        return topicDAO.getTopics();
    }

    @Override
    @Transactional
    public Topic getTopic(int id) {
        return topicDAO.getTopic(id);
    }

    @Override
    @Transactional
    public void deleteTopic(Topic topic) {
        topicDAO.deleteTopic(topic);
    }

    @Override
    @Transactional
    public void saveTopic(Topic theTopic) {
        topicDAO.saveTopic(theTopic);
    }
}
                </code></pre>

                <h5 class="mb-3">Entry service implementation class:</h5>
                <pre><code class="java">
package net.coffeecoding.service;

import net.coffeecoding.dao.EntryDAO;
import net.coffeecoding.entity.Entry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EntryServiceImpl implements EntryService {

    @Autowired
    private EntryDAO entryDAO;

    @Override
    @Transactional
    public void saveEntry(Entry entry) {
        entryDAO.saveEntry(entry);
    }

    @Override
    @Transactional
    public List<Entry> getEntries() {
        return entryDAO.getEntries();
    }

    @Override
    @Transactional
    public void deleteEntry(Entry entry) {
        entryDAO.deleteEntry(entry);
    }
}
                </code></pre>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/highlight.min.js"></script>
                <script>
                    hljs.initHighlightingOnLoad();
                </script>
            </div>
        </div>


    </div>
</div>


<footer class="footer bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 coffeecoding.net - All rights reserved.<br>Contact: info@coffeecoding.net<br>Warsaw PL<br><a
                href="https://www.coffeecoding.net/">Visit the homepage</a>
        </p>
    </div>
</footer>


</body>
</html>