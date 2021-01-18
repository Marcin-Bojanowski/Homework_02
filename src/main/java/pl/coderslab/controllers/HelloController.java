package pl.coderslab.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;

@Controller
public class HelloController {
    @RequestMapping("/workers")
    public String workersAction(Model model) throws IOException {
        Random random = new Random();
        boolean flag = true;
        Path path = Paths.get("/Homework_02/Workers.txt");
String trst=null;
        while (flag) {
            int number = random.nextInt(30) + 1;
            String stringnumber = Integer.toString(number);
            StringBuilder builder = new StringBuilder();
            if (stringnumber.length() == 1) {
                builder.append("0").append(stringnumber);
            } else {
                builder.append(stringnumber);
            }
            for (String line : Files.readAllLines(path)) {
                if (line.contains(builder)) {
                    model.addAttribute("person", line);
                    flag = false;
                    break;
                }
            }

        }

        return "workers";
    }


}


