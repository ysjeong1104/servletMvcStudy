package hello.servlet.web.springmvc.v1;

import hello.servlet.domain.member.Member;
import hello.servlet.domain.member.MemberRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringMemberSaveControllerV1 {

    private final MemberRepository memberRepository = MemberRepository.getInstance();
    @RequestMapping("/springmvc/v1/members/save")
    public ModelAndView save(@RequestParam String username, @RequestParam int age ){

        Member member = new Member(username, age);

        Member saved = memberRepository.save(member);

        ModelAndView mv = new ModelAndView("save");

        mv.addObject("member", saved);

        return mv;

    }
}
