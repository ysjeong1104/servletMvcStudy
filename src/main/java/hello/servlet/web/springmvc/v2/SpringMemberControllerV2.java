package hello.servlet.web.springmvc.v2;

import hello.servlet.domain.member.Member;
import hello.servlet.domain.member.MemberRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/springmvc/v2/members")
public class SpringMemberControllerV2 {
    private final MemberRepository memberRepository = MemberRepository.getInstance();
    @RequestMapping("new-form")
    public ModelAndView newForm(){
        return new ModelAndView("new-form");
    }

    @RequestMapping("save")
    public ModelAndView save(@RequestParam String username, @RequestParam int age) {

        Member member = new Member(username, age);

        Member saved = memberRepository.save(member);

        ModelAndView mv = new ModelAndView("save");

        mv.addObject("member", saved);

        return mv;
    }

    @RequestMapping
    public ModelAndView members(){

        List<Member> members = memberRepository.findAll();

        ModelAndView mv = new ModelAndView("members");

        mv.addObject("members", members);

        return mv;

    }
}
