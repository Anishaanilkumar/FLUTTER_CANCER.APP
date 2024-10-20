// Data model for survivor details
import 'package:flutter/material.dart';

class SurvivorDetail {
  final String title;
  final String author;
  final String? description;
  final String imagePath;

  SurvivorDetail({
    required this.title,
    required this.author,
    this.description,
    required this.imagePath,
  });
}

// List of survivor stories
final List<SurvivorDetail> survivorDetails = [
  SurvivorDetail(
    title: 'Expedition Inspiration',
    author: 'Laura Evans',
    description: '''For me, the will to live is synonymous with the love of life - love of experiences, people, places, things. I have an insatiable curiosity about what makes people tick, about what other places look like, smell like, and feel like. I am an avid reader. I love to travel. I am thrilled when I meet a new, interesting, fun person, even from a distance. And I enjoy the things I have collected or been given over the years, each one conjuring a pleasant memory.

I am an advocate for change, for pushing the boundaries of one's comfort zone. We must know cold to appreciate warmth. We must be hungry to really enjoy food. We must know death to fully understand the joy of life. I came to appreciate this more than ever in December of 1989.

Two weeks before Christmas, I was diagnosed with a rapidly advancing breast cancer. As the tests came back, my prognosis went from bad to worse. I was in shock. I had been busy living life, with a husband. career, travel, sports, and entertaining. Like many other women, I have since come to learn, I thought my life would go on indefinitely. Yet suddenly I was faced with cancer, the C word, the one that most often follows the word deceased.

I was thirty-nine when I found a lump in my breast. I had never thought about cancer, and, even though the lump was clearly there, it seemed inconceivable that I might have breast cancer. To be certain, I went to the doctor for my first mammogram. When the doctor said, No problem. It doesn't show anything. Go home, it was like music to my ears. So I went home. Happily. Naively.

On some deeper level when I found the second lump, I knew I was in trouble. What I didn't realize yet was that the cancer had aggressively spread to eleven of my lymph nodes and that I would be lucky to survive the next three to five years. I knew I would have to summon up all my resources. I would have to educate myself on a disease I knew nothing about. I would need to locate health care specialists who could help with both my physical and emotional needs. I would have to do something radical in terms of treatment.

I knew I was not ready to die. I thought about what my father said before he died. No man's life is complete without his death. It is the framework for his life. But my father had done everything he wanted to exceeding his own expectations and dreams. I hadn't. When I looked at my wish list of things I still wanted to accomplish, I was haunted by the fact that I might not get to do them. I loved my family and friends and couldn't bear the thought of not being with them, of all the great times yet to come.

With the tremendous help of my supportive husband, I took control of my destiny. We made endless phone calls to different hospitals' oncologists, finally locating a promising clinical trial in which I was enrolled. I was one of the first people in the country to go through an experimental protocol that called for intensive chemotherapy followed by a bone-marrow transplant. The treatment also included two surgeries, three months of outpatient chemotherapy, and seven weeks of radiation. The transplant required that I spend two months in the hospital, seven weeks in a sterile room the size of a closet.

I almost died in isolation. The massive doses of drugs ravaged my system, filling my lungs with fluid. I got pneumonia and for the first time came to understand the release that comes with death. I also came to understand why I wanted to live.

As my atrophied body struggled to build itself back, my mind revisited a recent trek in Nepal that had kindled my desire to do more climbing. At night, as the sedatives to relieve my discomfort took hold, I would visualize myself standing on top of one peak or another, fists thrust defiantly and exultantly skyward. These visions, however disconnected from reality they may have been, kept me going. The visions of mountains with me atop their summits became my mental symbol, something I desperately wanted.

When I left the hospital, I was barely able to walk four blocks. But at the end of my first walk in eight weeks, I stood with my arms raised high overhead, with the hospital - and, I hoped, the cancer - a shadow in the background. One step at a time, I walked, then hiked, then started thinking seriously about getting back into the mountains. To climb again became my passion.

At the same time, I wanted to help others. Even with the tremendous love and support of my husband, family, and friends, I felt isolated by the devastating side effects of my illness. How could they really understand the mutilation of my body, and the loss to self-esteem as a woman that accompanied the loss of my hair, the early menopause, the pain of arthritis that followed the drugs, and the emotional upheaval that left me drained and confused?

I knew that others in the same situation would understand. There was no organized support group in my hometown, however, so I started one and facilitated it for two years. Together, the women in the Wellness Group and I rebuilt ourselves.

During those two years, I gained a new appreciation for the tremendous satisfaction of giving to and helping others. I also learned how little we know about breast cancer and how little was being done. My mission became twofold: to climb and to call attention to breast cancer. And that mission became my raison d'etre. I became passionate about it, and I believe that passion has kept me alive.

There is always the question of why one person survives and not another, why some people cling to life while others give up hope. I have found that the people who love life the most and live it fully have an inner fire that drives them. Whether it is golf, needlepoint, crossword puzzles, or bocce ball, it is something they clearly can't live without. I wanted to help others and find that special passion and, barring that, share mine with them.

Three years after my cancer diagnosis, I realized how I could achieve that. I would organize and lead a climb up one of the world's highest mountains to raise awareness of, and funds for, breast cancer research and care. What set this climb apart was the makeup of the team: seventeen women - single women, mothers, grandmothers - ranging from twenty-one to sixty-two years old. These were mountain climbers in the traditional sense. The only thing they all had in common, other than being women, was that they were all breast cancer survivors.

Peter Whittaker, whose involvement really ensured the climb would happen, picked both the mountain and the name of the project, while Jansport underwrote the cost of the entire climb. The mountain was the 23,000-foot Aconcagua in Argentina, the highest peak in the Western hemisphere. The project was christened Expedition Inspiration.

Many people have asked me, Why, when you almost lost your life to cancer, do you again put it on the line by climbing mountains? Why climb a mountain for breast cancer? Personally, I revel in the awe inspiring, breathtaking beauty of mountains and the satisfying singular focus it takes to climb them. The physical and mental perseverance I have to expend in order to stand on a summit demonstrates, in my mind, that there is nothing out of reach.

Far beyond what I personally get out of it, mountain climbing as a vehicle to further the cause of breast cancer awareness calls up some very poignant parallels:

In both climbing a mountain and dealing with breast cancer, you face your deepest fear, the reality of death.
Each is an individual struggle that is better handled with team support.
In order to survive, it takes one small uphill step at a time.
In the process, you find out what your ultimate values are. You develop a greater sense of self and self-worth.

For thousands of women suffering through breast cancer, the message was clear. Many sent letters stating, If you can climb a mountain, I can get through chemo. If you can climb a mountain, I can go out and walk a few blocks. For the Expedition Inspiration team members it reinforced what facing a life-threatening illness can teach you: that too often we walk through life unconsciously. There is, in reality, no time to waste. Now is the time to go for it.

The Expedition Inspiration team - the first true national support group-alleviated some of the fear of joining the club by demonstrating that getting a cancer diagnosis does not necessarily mean your life is over.

Through Expedition Inspiration, we helped educate women not just about breast cancer, but about themselves. I have met few women who are not hard on themselves. Most of us give endlessly, forgetting about our our health and well-being. With this project, we wanted to empower others to let go of what doesn't contribute to their wellness and to applaud their own talents and interests. We wanted to teach the importance of knowing our limitations without limiting ourselves.

Through the Expedition Inspiration Fund for Breast Cancer Research, which includes ongoing international expeditions as well as locally sponsored Take-a-Hike, I have dedicated myself to helping others. I have written a book, to encourage others to follow their hearts. I feel as if I have been given a special gift - the gift of life - and I don't want to squander it.

But I never lose sight of what rejuvenates me, what sparks my will to live. So I take frequent forays into the wilderness, always finding the solace or answers I seek. I look for the laughter, the irony in all things, realizing how infinitesimal we are in the much bigger Picture I remember to laugh out loud daily, sometimes for no apparent reason.

On rainy afternoons,I reevaluate my wish list. What else do I want out of life? What else can I do? Ten years from now I won't look back and say, I wish I had _____. Ten years from now, I'll have a new wish list of all the great adventures yet to come. There's so much to live for.

Laura Evans survived breast cancer with a bone-marrow transplant. She has so far climbed five of the eight major mountains in the world and led a team of breast cancer survivors in a successful climb of Mount Aconcagua, the highest peak in the Western Hemisphere.

Laura Evans The Climb of My Life: A Miraculous Journey from the Edge of Death to the Victory of a Lifetime (San Francisco, Harper, 1996)''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'I Don\'t Have Time Not to Live',
    author: 'Carol Buck',
    description: '''When I was given my diagnosis that I had a possibly fatal malignancy and I had to take chemotherapy in order to live, it didn't change my style of life at all, except that I, of course, got tired. I pretty much knew even before I saw the doctor that I had breast cancer because of the physical signs: the shape of the breast and so on.

I wasn't angry when they said that the breast was probably going to have to come off. Angry isn't the right word. I was mad at being inconvenienced by it.

The operation and the subsequent treatment of chemotherapy and radiation obviously took their toll on me but didn't really change my lifestyle a whole lot. I had complete confidence in my doctors, and I just knew I was going to get over it and get through it.

My doctor's care and encouragement were extremely valuable to me. Every time I went to see him, I got a hug and was told how nice I looked. Such support is wonderful, such caring. A doctor can be very important as far as making you feel that you're still a woman, that even with breast cancer, you're still going to come back.

At my fifth treatment, my doctor, Alan Glassberg, looked at me, no hair, no nothing, and he said, You're not your same cheerful self. What's the matter with you?

And I said, I don't know. I just don't feel too good.

Which treatment is this? he asked

I said, My fifth.

Ah, he said, it usually happens at four. He gave me a big hug and a kiss and said, Get in there and get it over with. After that, something inside of me said, You're going to be all right.

I remember, finally, one day about four months after I had finished everything, I woke up in the morning and felt like myself again.

At my next meeting with the doctor, I told him this, and he said, Well, you look like you did back when I first met you.

My nurses were also incredible, especially one named Irene. If I could have made Irene a saint, I would have. To me, she is the one who most helped me through everything. I've watched her with people who were not going to get better, and her kindness is incredible.

I think I had such confidence in what was happening to me, the treatment that I was getting, because of the positive attitude of my doctor, Irene, and everybody in that office who cared. Even the girls out at the front desk cared. They made me feel like I was part of the family.

It is also very important to trust the people who work with you. From the first moment I walked into my doctor's office, I trusted him. He told me what he was going to do, and I said, Okay, that's fine. Go ahead and do it tomorrow. Trust is very important.

 

There is a great connection between the mind and the body. Whatever brings you joy and pleasure, relaxation in life, whether it's reading or watching old movies, listening to opera or jazz, or playing with the grandkids, you have to have that in your life. Especially when you're fighting something like cancer.

I've been through several other accidents that have almost killed me. And each time I survive one of these things, I have an even stronger feeling that there is something more for me to do before I go. I often don't know what I need to do specifically, of course. Some of it has to do with my involvement with opera and with education and scholarships. But I know there's something out there I still have to do, and it will present itself.

My strong will to live is based, I think, on the fact that right now I'm too busy to die. I'm doing too much, things that I feel are really important in more than just my life but also in other peoples' lives. I had been doing that for about ten years prior to coming down with cancer, and I'm still doing it: helping others enjoy life.

So, I still feel that I just don't have the time. I don't have time not to live. I live a very busy life, both in life and in enjoyment.

There's no time to sit down and cry. I've never had time in my life to sit down and cry, and I didn't when my breast cancer was discovered. I certainly got depressed, but I had wonderful support from my family. My son said, Hey, Mom, come on. Let's go do this. All my golfing ladies said, Well, come on, you'll probably hit the ball better, now, when you get your strength back. That sort of encouragement is important.

I don't know where my certainty of not dying yet came from. I'm not a very religious person, but I did sit down and pray before I started my treatment. I asked God to let me get through this, and I asked Him to help me not get too sick. And He answered my prayers. I had the great fortune of never having any bad side effects.

The best way I can summarize my feelings about the will to live is to recall an incident I had right after my surgery. I was sitting across from a woman who had cancer and who was scared to death. I looked at her and said, Hey, I'm okay. I'm shooting for ninety-two, and I'm enjoying life. That's not bad.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'One in a Million',
    author: 'Connie Teevan',
    description: '''I had always thought of myself as a healthy person. I was forty-four years old when I was diagnosed with breast cancer. They found five lumps on a Friday; I was biopsied on Monday and had a mastectomy the following Friday. I knew it was serious because they were really pushing me along. I knew a little bit about breast cancer and had fourteen positive lymph nodes, which is not good. I was not old, and I was shocked about how serious my illness was. My surgeon told me that I needed to start living each day as if it were my last.

This hit me like a ton of bricks. I had a six-year-old daughter, eleven-Year-old son, and a fourteen-year-old daughter who was just starting high school. You do everything you can to protect your children. You send them to the best schools. You send them to special classes. But I couldn't protect them from the loss of their mother. That hit me really hard, and I started to prepare to die.

I went through all my high school and college things and put together a time capsule, packets of letters and pictures of me for the kids, so they would know me from the beginning, as a child all the way up. You really don't get to know your mother as a person until you're older, and I thought, They're not going to get to know who I am. I realized that my six-year-old would barely remember me.

I asked my husband, Jim, to start videotaping me. Before, whenever he would take videos of us, I'd say, Oh, turn that thing off, and stop taking so many pictures:Then I thought, Oh, God, the kids are going to remember me this way. So I asked him to take videos of me smiling and being really sweet.

I also got the family into counseling immediately because I wanted to get Jim ready to be the mother. I was hoping he could learn to listen better and take on a dual parental role, which is not easy for anybody. Family counseling was very important for all of us because we could talk about scary things during our counseling sessions and then leave those thoughts there, go out for ice cream, and get on with our lives.

Meanwhile, I was trying to wrap up everything as quickly as I could. I'm a very organized person. and I wanted to leave my family in good shape to go on without me. Then, all of a sudden, I knew that I couldn't leave these children. I realized that the best thing I could do for my family was to make a commitment to live.

I immediately flipped to the opposite approach. Instead of preparing to die, I prepared to stay here with my family. I came to believe that if I had a one-in-a-million chance, I was going to be that one in a million.

Several things helped me make that decision. We were all working hard in family therapy, and I saw how important I was to my kids and how much they didn't want to lose me. Also, my doctor had told me about bone-marrow transplants -- a very aggressive, state-of-the-art treatment and that gave me hope that I could get rid of the cancer.

There wasn't any reason not to have hope. It never even crossed Jim's mind that I was going to die. He is a very optimistic person and was always sure I was going to make it. I had the best doctors in San Francisco and they cared about me. I had very supportive friends. Everyone was rallying behind me. So I just started thinking, I need to be here. Everybody wanted me to live, and there was no reason not to.

I wasn't always positive. When I was in the hospital during my bone-marrow transplant, I had many problems: my kidneys failed, I had severe infections, and I was on many antibiotics. I was in such bad shape most of the time that it was hard for me to have much control or will or ability to do anything to heal myself. Never in my life had I felt like such a passive victim, just lying there at everybody's mercy.

That was a terrifying situation. I had all kinds of hallucinations. I couldn't do anything by myself, and if the nurses didn't have the right IV bags going into me, I was going to die. The Gulf War was going on, but I couldn't concentrate enough to watch TV. I thought they were going to come bomb me. I thought that there'd be an earthquake and everybody would leave the hospital while I was still hooked up to my IV bags. It was probably the low point of my life. I was so dependent and scared.

Many times during my treatment I felt down, but everybody around me was giving me the same message: I was going to make it. The partners at my law firm made me a partner when I was undergoing the bone-marrow transplant. Not many law firms would do that. That was a life-affirming act. They believed I was going to come back to work. I was going to be whole.

My doctor had a wonderful woman in his office named Dorothy Mihaly who did New Age therapy with me right from the beginning. She had interesting ways of looking at things. We often meditated, which is probably conventional now, but at the time it was all new to me. We traveled inside ourselves and cleansed ourselves. We worked on positive thinking and did hands-on healing if there was something about our bodies that concerned us.

I joined a support group that Dorothy was leading. I had gone to a lot of support groups where people had what seemed to me to be less serious problems -- they'd had lumpectomies and were concerned about what people thought about their breasts and I had thought, This isn't for me. I want to be with people who are dealing with life- and-death issues. So I joined Dorothy's group of people with very serious illnesses. Almost all of the group members had been given death sentences.

We did a lot of adventuresome things. We put special objects- things that were important to us-in a basket, and then we chanted to empower them. You might put a healing crystal into the basket. If you were having an important client call, you might put your file in there. I put in pictures of my children. One night we went to the beach, built a bonfire, and danced around it. We shared the different things we were trying. Some of us were doing Tai Chi, some were doing acupuncture, some were on macrobiotic diets.

When I was first diagnosed, my family had been planning a back-packing trip to New Mexico that we had to cancel. When I recovered, we decided to go to New Mexico after all. On the drive through New Mexico with the kids, we stopped at a tiny healing church and gathered the healing sand. When we got back home, my daughter put together a little bowl with the sand, and we put in some of the Native American fetishes we had bought.

It wasn't that the fetishes or the sand or the objects in the basket or any of these had any meaning in and of themselves -- I'm a lawyer and I don't take much on faith -- but they were always for me to live, to be positive, to be life-affirming. They were all ways of enabling me to take control of things. The best doctors were giving me the most aggressive treatment they could, but that's what they were doing. The only way I could take control of my life was to work on healing myself in these other ways.

How would I define the will to live? It's just a conscious decision that you're going to live, and you make sure that everything you do all day, every day, leads to that outcome. You decide that you are not going to die from this disease now, and you're not going to accept anything that tells you differently. You just gear yourself up and that's it.

It wasn't the fear of death that drove me. It wasn't even concern about my husband so much. It was that I didn't want to leave my children. My goals are different now, because my children are growing up. it's a much more selfish kind of thing. Now I want to retire with my husband. I want to travel with him.

I didn't think I was going to live forever, but I needed to make a window of time in which I was going to get my older daughter in college and my son out of junior high school. Now my aim is to get my younger daughter through high school, and I think I might make it to a ripe old age. My goals keep expanding. In fact, when I meditate, I envision myself as an old, old lady. That is such a beautiful symbol to me. I am old and fat and wrinkled, and it is joyful to see myself that way.

Sometimes I feel like a sham because I have been very lucky. I don't know why I'm still here or how long I'm going to be here. Everybody really has to make their own decisions about that. But the most important thing to me is to cut out all the things that tell you that you are not going to make it or that you're at high risk. There are lots of things that intrude and give you the message you are going to die. You have to be very careful. You have to ferret out all the negative messages, even if people think they're not being negative.

For a while, when I'd see my doctors they'd say, Oh, here's the miracle girl. Look at her. She's doing so well. It sounds like a compliment, but it's not, because it implies that you should have died. When I heard that I would think, I'm not a miracle girl. Don't talk about this as if it's something extraordinary. This is not unusual. This is just my life. I'm going to live. I'm going to make it.

It's not that I don't get scared or discouraged. It's not that I don't cry or don't ever think I am going to die, but I don't stray from my course.

You have to be vigilant. I loved my support group, but when most of the group that was my age or younger died, I had to leave the group because the message was, You're next. I never listen to any statistics. I never want to hear them. Never, ever, ever. I purposely block all that out because I don't want to incorporate that negative information. The worst thing that happened to me was reading the letter my bone-marrow doctor had written to the insurance company to get insurance coverage for the transplant. I was very upset to read how serious my condition was. Now I never read or listen to anything that has to do with statistics. There was an article in Time magazine about breast cancer. As soon as I came to the statistics, I put the article away. I want to make my own destiny. And my destiny is to live.

The funny thing is, people think you'll change your life completely after an experience like this. You'll quit your job, you'll do different things, you'll live a new life or whatever. But what this experience did for me was to show me how much I liked my life. I used to think, I should be doing more than this. I should be a more successful lawyer or accomplish more each day. I ought to keep a clean house or study more. I always had these shoulds and oughts. I was always pushing myself, never being satisfied with where I was.

The experience made me see that I was really happy with what I had. I loved everything about my family, my friends, my work, my garden, my house, I just wanted to stay around to enjoy it all. It made me appreciate the normal, everyday things. I'm much more content now with who I am and what I'm doing. I just had to change the way I viewed my life. If I could do anything, I would choose to do exactly what I'm doing now. .

I think everyone has to find what's best for them. Really working on staying positive and focused is what helped me the most, and all the other things I did were a means to that end. Maybe I'll need those other things again, but I don't need them right now. But, continuing to maintain a positive attitude is very important for me. Even if it doesn't work in healing me, it still improves the quality of my life, so it's a win-win situation.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'The Scent of an Orange',
    author: 'Jane Townsend',
    description: '''I THINK ALL OF US are born with a significant will to live that is very powerful. It's not easy to snuff out a life. Death usually comes after many years of living or at the hand of a powerful adversity of some kind. Over time and with experience, each will gets individualized and personalized, customized to who we are. We each have a strong willingness to either live or to die.

When I was twenty-four years old, I was diagnosed with Hodgkin's Disease and was treated with radiation therapy. Fifteen years later, I developed another disease, non-Hodgkin's-lymphoma and underwent chemotherapy treatments. That was ten years ago.

At the time, I was depressed and in pain. I felt that I really wasn't getting any better. The doctors couldn't tell me why I was so lethargic and fatigued, and I was getting more and more depressed about it. I just couldn't get my old energy back. Even though my motto at the time was one day at a time, at one low point I don't think I wanted to live anymore.

Then one day in the lunch room, a friend came in and started to peel an orange. The scent of the orange wafted towards me and, as I smelled it, I felt a thrill, a joyful feeling. I suddenly thought, I really don't want to die now. I want to smell things like this again. It was in that instant that I began to live with a renewed eagerness, anxious to experience the small joys of life more fully.

This orange incident put me back in touch with my will to live. I sat there in pain, smelling the orange, and I was so happy to be alive. I learned in that moment to look beyond the pain to see what else there is in life. I found out then, and since then, that there's always something else. As long as I can find something positive in my life, I'll be okay. I'm pretty good now at finding something joyful just about anywhere, however small it might be.

I'd say that my will to live is based on an openness and on a recognition of what I can add to others' lives. I look outside of myself to find more inside. I become bigger and greater if I am an active, positive part of someone else's life.

Staying in touch with my doctors is also essential. I tend to worry, but if I see value in myself and get good news occasionally from a doctor's visit, a positive reinforcement takes place, shoring up my reserves. In this way, I can manage my fears more effectively and stay positive in outlook.

We can teach ourselves to do everything we can to recognize and support the notion that we are still alive for some reason or purpose, maybe yet to be discovered, even though we may be suffering. Doing this may seem mechanical at first, but it can work. Soon, we can be joyful in life and cope with the challenges of disease at the same time.

As I've said, openness is my approach. You must be receptive and willing to be open to the truth. This is the key to my resiliency.

Openness is being receptive to all the events of life, even disease. There is a peace of mind that comes when, after being told you have a disease, you realize that only you can control the way you live your life. Openness is the acknowledgment that your future will be different from the one you had dreamed.

I accept what comes my way. I don't complain much. Each complaint takes power from me, power that I need to move forward through doubt, frustration, fear, and pain. Complaining diminishes my will to live, and distracts me from my focus on living my life freely and fully.

I seek and dream far beyond the reality of my disease and look to others for friendship, humor, encouragement, and, especially, perspective. Somebody else always has more troubles, more pain. On the other hand, I can always enjoy someone else's pleasures vicariously. I enjoy my personal pleasures, such as growing flowers on my deck, watching children play, listening to music, and reading with eyes that only need glasses. To these enjoyments I add the vicarious joys of Olympic competitors, kids riding skateboards, and expert skiers, human abilities that I as a human can share the happiness and thrill of, even if I am unable to engage in them myself. In a nutshell, I have trained myself to integrate bits and pieces of what is a blast in life, in anybody's life.

I am doing well today. Medicine is an evolving and imperfect science. Doctors don't know as much as we would like them to, or as much as they'd like, either. As we care for ourselves, we must be patient patients.

I strive for peace of mind, and I'm enjoying a full life. As perennial student of my own training, I've discovered that I'm far more than simply my body's weaknesses.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'A Cup of Breath',
    author: 'Ellie Bine',
    description: '''I usually hate cliches, but there is one I like: Forget what you did yesterday. Instead, think of what you can do tomorrow. That's what you have to do with an illness like mine -- put yesterday behind you and think about what you can do tomorrow to make yourself or someone else happy.

My disease, which is partially a medical mystery, began when I was thirty-nine years old and my children were six and eleven. The doctors decided I have a type of collagen disease. It isn't lupus and isn't quite scleroderma, although I do have some symptoms of scleroderma. Whatever my disease is, it has caused many medical problems over the years, from fluid retention to calcium deposits in my arms and legs.

With some diseases, such as arthritis, people feel better physically when they get up and do things. I feel worse physically but better mentally when I get up, so I decided years ago that I would rather have a happy head than a happy body.

I've found that you can learn to live with not feeling good, once you get over the impatience involved in learning to deal with a disease or a handicap. It isn't something that comes overnight or even in a week or a month. You just have to keep at it all the time. And, once you've conquered it, it's simply a matter of constantly reminding yourself that you can do it.

In spite of being bedridden, I knew I wanted to raise my own children. Someone else could have done it, but I really wanted to, and I pushed myself because it was important to me. Even so, many times I'd do things not knowing if I was going to make it.

I still push myself to do things even when the doctors tell me to take it easy. Although I may just have been lucky, I think my stubbornness is one of the reasons I've survived.

Another reason is my attitude. Attitude can make a physical illness easier or harder to live with.

It's a terrible thing if the first thought that occurs to you when something threatening happens is, I'm going to die. I have news for you: it isn't that easy to die. Most people who get sick, get well. Most people who go to hospitals leave again and are perfectly all right. The chance of something fatal happening in surgery is less than your chances of dying when you walk out of the house to the bus stop and go downtown.

One of the most important things we all can do is to decide what dying means to us. All it means to me is that I would have to leave the things and people I love. I've always known that the quality of the years you live is far more important than the quantity.

My attitude comes from my mother, a marvelous woman. She was orphaned at the age of five, and by the age of eleven she was cooking for ranch hands and fighting them off. She never had a single luxury until her later years but, in her view, she had everything. Other people mattered more to her than she did to herself. She loved doing things for her husband, children, and friends. She was a woman who could have been as bitter about life as anyone, but she wasn't -- she loved life, every bit of it. And you can't live with a woman like that and not get an awful lot out of it.

There were three of us, and we were never allowed to feel sorry for ourselves, Our mother told us, If you lose an arm, a leg, or both legs -- if you can still hear or you can still see or you can still walk -- be grateful and make the best of it. You make your own happiness. Don't sit around waiting for everybody else to make you happy.

Another person I take strength from is a young woman named Barbara who was in nurses' training with me. She married, had two children, and, at the age of twenty-six, became paralyzed from polio. When she asked her doctor how long she would live, he said, Five years.

She lasted seven years and ran her house from her iron lung. She oversaw the cooking, the dressing of her children, everything. So if I indulge in self-pity, it doesn't last long. I just think of Barbara and the way she handled herself. I can still put my arms around my husband and children. Can you imagine never being able to hug anyone? I may not be able to walk well, but at least I can walk straight. I can drive a car, and I can laugh.

I have a friend whose daughter was blinded by someone putting lye in her eye drops. Thirty-two years old. Blind. Yet she has not let it change her life. She goes rowing twice a week with a companion and has a full-time job with Guide Dogs for the Blind. The only thing she hasn't been able to do is fly an airplane.

In the summertime, I often invite children from the Center for Attitudinal Healing (The Center for Attitudinal Healing in Tiburon, California, is an organization for psychological help and healing) to swim at my house. The first time they came, I didn't think I could bear to look at ten or fifteen children who had life-threatening diseases. But as I sat in the house, I heard them laughing and splashing in the pool and just having a wonderful time. I went out to watch them play. You would have thought there wasn't a thing in the world wrong with them.

I remember one boy, only nine years old, who had lost both legs and both arms yet always had a playful attitude and always talked about how much he wanted a bicycle. Some students at a college in Florida heard about him and designed a bike with a little seat and a strap that went around his torso so all he had to do to make the bike move was lean forward. The first time he got on and made it go, he was so happy. He just laughed and laughed and had a great time. When I saw him -- with no arms and legs -- having so much fun and enjoying himself so much, it made me wonder again what on earth I've got to complain about.

If somebody said to me, Tomorrow we are going to cure you, but the price will be that your husband and children will have great unhappiness for the rest of their lives, I'd tell them to go to hell. When my husband and children are happy, I am happy. If I had to stay in bed for the rest of my life to ensure that they would never have an unhappy or unhealthy moment, I'd do it. I'm sorry for people who don't have that kind of love to share with a partner and children. It is mainly because of my husband, Rene, that I have managed to cope with my difficulties and stay happy.

When our children were young, they not only had to cope with my inability to go places with them, but Rene, as a doctor, was often called out on emergencies and was therefore unable to be with them. On several wedding anniversaries and birthdays for myself or the children, Rene ended up at the hospital or visiting a patient at home. The children and I learned early that every day had to be an important day. Every day had to be the equivalent of a birthday or an anniversary. Every day was Mothers' Day, Fathers' Day, and Childrens' Day, even if it was only a part of the day.

We all need to feel useful. How sad that some people feel that to be useful they have to do something spectacular or nearly spectacular. A smile to a tired husband, a reassuring squeeze to an unhappy child, these are little things but so very important.

Since I also need to feel useful, I acted as the message center and key keeper for our neighborhood or as an emergency service for mothers with problems. I couldn't always go to the scene of the problem, but, if I couldn't, I would find someone who could.

I am almost always at home, and, although I enjoy having a beautiful house, what I can see out of my bedroom window is more important to me: the trees. For years people told me to have them pruned, but I wanted them to grow tall so I could see them waving in the wind and hear them batting against the house. mow the branches wander back and forth, flocks of birds come to eat the berries, and the foghorns blow.

Aside from my bedroom, I spend most of my time in the kitchen. I like to cook for people, and the way I handle guests is simply to cook ahead of time and freeze the dishes. For years I had a stool I rolled around on so I could cook sitting down. When it wasn't that bad, I stood up until I couldn't stand anymore. If the stool wasn't nearby, I sat or lay on the floor until I felt better.

I also love going to restaurants, although I am on an extremely low-sodium diet. I've gone into the most elegant restaurants with some salt-free margarine and my own little frying pan in a fancy bag. A doctor's wife once asked me if I wasn't embarrassed to do that, and I said, No way. I like to eat and I enjoy food. If this is the only way I can do it, why should I be embarrassed?

A lot of people think that because they're sick, they are different or oddballs. I never felt that way.

I have worried about how Rene felt because I know his concern is very deep, and he doesn't always tell me what he is thinking. One day when I was feeling lousy and couldn't stand up, he phoned and said, I wish there was something I could do for you. The rest of the afternoon was shot for me. All I could think of was that he was hurt because of me, and that upset me.

It's good when other people care about you, but there's such a thing as caring too much. For me, it has been very necessary to be treated like a normal person.

Of course, the other side of that is that I have had to let people know how I want to be treated. People react to you according to how you conduct yourself. I remember once climbing a flight of stairs at a friend's house and having difficulty breathing. My friend said, Is there anything I can do for you?

I replied, No!

And then, in a very light-hearted tone, she asked, How about a cup of breath.

People have been exceptionally good to me in my life, yet they haven't smothered me. If they try to, it's good-bye. I need others to accept the fact that I am what I am and am going to do things my way. I've been very selective about my friends because I can't be bothered thinking about what I'm going to say or how I'm going to say it.

I've always been outspoken with my children as well. They don't have to guess what I'm thinking, although I don't tell them every time I'm not feeling well. That's something I need to cope with, not them.

I feel very strongly that people should rely on other people. Support from an empathetic doctor is invaluable, But that alone isn't enough. If the doctor spent twenty-four hours a day with his patients, there is no way he could keep them going. Nor could a husband or a wife. For an ill person, it is dreadfully important to have someone to help you, someone to lean on, just as healthy people do. It's like swimming: sometimes you need to hang on to somebody to get your head above the water and occasionally stretch out your arm and take a rest. But then you have to start swimming by yourself again.

I've been thinking about what motivates people to go on and continue to struggle when they are on dialysis or in a position such as mine. There are lots of tangible reasons -- family, the beauty of nature, a nice meal -- but there is an intangible one that's hard to define.

It's an intensity that has sustained me and still sustains me even after more than thirty years. I'm in my seventies now. I've lost a finger and a leg and now they tell me I've got lung cancer. But that intensity is still there. I don't know where it came from. You can't tell somebody how to have it any more than you can tell somebody how to love.

Of course, people also need a tangible reason to continue to struggle. And if they don't have one, they had better find one, even if it's the refusal to be victimized by their misfortune. My main motivation was my husband and children, But I probably would have coped anyway because I don't like being unhappy, and I'm basically strong. I like a challenge. I think anyone who sets their mind to it can do anything if they try hard enough.

I have no fear of dying. There isn't anybody who can tell you what comes after death. But it doesn't really make much of a difference. We live our lives every day not knowing what tomorrow holds. I take what comes as it comes. I tell people, If it would help to worry and worry and worry, then stay awake twenty-four hours a day and worry. But it doesn't help. It must be a terrible thing to be afraid all the time. My philosophy is to quit worrying about things you can't change.

One time I woke up in the middle of the night and said to my husband, Have you ever thought about dying?

He said, Yeah.

What did you decide? I asked.

' I decided there was nothing to decide, so I didn't bother thinking about it anymore.

''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  // More stories
  SurvivorDetail(
    title: 'Arms Too Short to Box with God',
    author: 'Val Staton',
    description: '''My career has been as a dancer at Finocchio's, a female-impersonator club in San Francisco. I've performed as Sophie Tucker, Marilyn Monroe, Dolly Parton, Mae West, Rita Hayworth, and Wynona Judd. I'm thirty-three years old now, and I have AIDS.

I define the will to live in terms of the desire to continue, to see what's around the corner, and to have some semblance of a normal life.

The pleasures of life add to the will to live. I enjoy theater. I enjoy reading. And I enjoyed acting very much. It was still a job, but it was nice to work at something where I got to smell good and wear sparkley-colored evening gowns.

I got into it when I was very young. It was the only way I could actually get into the clubs. I had a baby face and, back in those days, all it took was some mascara and lip gloss, and I was a woman.

There are things that have boosted my will to live. Getting some good news about getting well I would definitely rate as number one. Comfort level is very important and could be number two. To be able to eat again is definitely on my wish list, even though all my life I've been heavy and have desired to be thin.

My grandmother is fond of the old expression: Where there is life, there is hope. But there's another expression: I'm tired of all that's ailing me and of not dying. There is only so much a body can take. The awful thing about AIDS is that when you just get over one thing, then there is immediately something else to knock you down.

You can be totally decimated. I didn't have the ability to eat, to feed myself, to get myself out of bed. I did nothing but vomit for nine and a half months and had temperatures between 103 and 106 degrees.

There has to be a time when you decide to give up. The body can only sustain you for so long, and you can only take so much. I have been with more than 180 people when they died, and that there is a point when you can look at them and tell whether they're ready to go. It's been said there comes a time in life when death becomes a friend. Death is just as natural as a shower.

Yet even when you're emotionally ready to die, there is an almost spiritual spark that just won't let you go if you're not really ready. That spark allows you to go through the bone-marrow taps, the surgeries, and the excruciating medications you have to take.

The will to live is intrinsic in us as human beings. I think it's what keeps people going after tragedies, holocausts, disease, and whatever else. With AIDS I may be losing my battle to live, but that doesn't mean necessarily losing my will to live.

One of the things I take comfort in is the fact that life is going to go on. The day I die, people are going to walk down the street and go to their jobs, and they will continue to do it for as long as mankind is here. That's life. It's somebody else's life. It's not yours. But it goes on.

You can get to a place where you think there is no hope, that there is no quality of life. I was there. I tried to cash in. I was willing to die, to just give up because of the excruciating pain. I attempted euthanasia twice and failed. I am alive, I think, because of my will to live. And I am also alive because my higher power did not want me to die.

I am convinced that a lot of the will to live is based on our own sense of pride. But along the way we lose our pride and say, Okay, it's your will now, not just my will. You can't just do it on your own.

My will to live is God's will for me to live, because if God wants me dead, my ass is cooked. Like that great musical called, Your Arms are Too Short to Box with God.

I believe very strongly in the relationship between myself and a higher power. I live out my personal relationship with God. God is somebody who directs me and has a purpose for me in His universe. It is for me to discover what that purpose is.

I basically went to the wall and tried everything to stay alive until something finally did work. Protease inhibitors came on the market and saved my life. As far as body weight goes, I went from 220 pounds to 120 pounds by the time I finished the course of drugs. Now I weigh 162 pounds. I am very happy with this weight.

There is a fifteen percent failure rate with the protease inhibitors right now. It's not a magic bullet, but it's the closest thing we have had in the fifteen years since this health crisis began. I am very fortunate to be one of the people who is a true success story. My doctor says I have had one of the best responses to the protease inhibitors of any of his patients. I am basically back to normal.

Now I get up every day, try to do thirty minutes' worth of exercise on a Stair Master and eat just about anything I want. I am not concerned about the quality of what I'm eating, just the quantity. I eat all the ice cream I want. As I say, I used to beat myself up because I had a weight problem. but not anymore

My experience with AIDS has completely changed my direction in life. I am not sure what I need to be doing yet, but a lot of things happened to me when I was so ill, including near-death experiences and going deeper into the more spiritual side of my life. The whole process was excruciating. I wouldn't wish it on my worst enemy. But it has also been the most enlightening and maturing process I have ever lived through.

When she was dying, my mother told me, Nothing matters in life but life itself and those who you love. The rest is bullshit. If I could make one statement, it would be, Nothing matters in life but life itself and who you love. I have a sense of peace about me now that I didn't have before, a sense of spiritual comfort. And when you have internal comfort, it is a lot easier to tolerate outside discomforts.

I've lived my entire adult life with HIV. I've lost many, many friends and some lovers to this disease. It has been a genocide of my peer group. I have gotten some comfort and knowledge out of reading things by holocaust survivors, people who have dealt with this kind of multiple loss and trauma and had to face their own mortality at the same time.

Yet, after being devastated physically as much as I have been by this disease, it is really incredible to actually look with hope towards a halfway normal life expectancy. It is also scary.

The great thing about having gone through what I have gone through is that we will all have to go through it again. I'm going to end up dying from something some day. Hopefully, it will be old age. But I don't have to be afraid of dying anymore. Dying is not scary.

The will to live can overcome anything and, if it can't, it is because it is not meant for you to overcome it. You have a purpose in your life and you have a purpose in your death. There is an expression, Let go and do it by God.

You can have all the money and material possessions in the world. You can be totally secure financially, but, if you are dying, you are in the same boat as somebody who has nothing. A person who has their basic human needs met and has the comfort of faith and the ability to accept and continue is much better off than somebody who is only materially wealthy.

I haven't worked in three years. Instead, I've been living off disability. Now, instead of just going back to work, I am thinking about going back to school. I want to be a nurse. I was inspired by the home care nurses I had. I wouldn't be alive if it hadn't been for their compassion and their positive reinforcement, their attitude of, You're going to make it. You're going to be okay.

There are other things I want to do too. Being an entertainer has given me the ability to deliver a message. There are many people in the gay community who still have not been tested for HIV. There are many who have been tested and, because of denial factors, don't seek active medical care. I want to be a positive role model for people in the gay and lesbian community, particularly in the HIV community, as someone who has accessed good medical care and been successful with the available drugs.

I'm glad my attempts to leave life didn't work. I am grateful that I am alive. I have something to learn and something to give. I believe that God has a higher purpose for me. I don't know what it is as yet. But it will come. It will be revealed.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'To Call Forth That Spark',
    author: 'Kathleen Grant, MD',
    description: '''As an Oncologist, a cancer doctor, I am always thinking about helping people define their will to live. Individuals with families often define this in terms of their relationships, as in, I've got to see ten-year-old daughter grow up.

Those who don't have strong relationships or gratifying careers may have a more difficult time marshaling their energy. So they need to be empowered as individuals. It's important to develop a sense you are important because you exist. The healing bond between physician and patient is in part an expression of hope and the will to live, in which the physician is saying, in effect, You are valuable as an individual, and I want you to get well.

Hope is part of that empowerment that says, I have a right to wish for more life, more health, more time to accomplish a goal. The goal doesn't have to be a physical achievement. Even a determination to look good after completing chemotherapy and to start dating again is an expression of life force. Each person needs to find a way to express this feeling.

It is important to distinguish between a person's physical limitations and his or her desire or ability to express life. Someone who has have a lung removed for cancer can still have the same vitality, even though that person is probably not going to climb a mountain. In January 1995, I served as one of the team physicians for a group of women breast cancer survivors who climbed the 23,000-foot Aconcagua Peak in South America. Called Expedition Inspiration, the purposes of the climb were to raise hope, public awareness, and research funds.

I was very worried about the health problems that might arise in is group of cancer survivors - problems related to either their breast cancer or to their previous treatments. Being at high altitude is risky anyway; even completely healthy people can get seriously ill or even die at altitudes like those we were going to attempt. I was very preoccupied with watching for signs of illness, but remarkably little went wrong.

After the extensive chemotherapy and radiation treatments the women had received, the climb was an incredible physical achievement, never done before under such circumstances. Beforehand, there was no way to predict whether it was going to be safe or successful. One woman had a couple of bad days because of her arthritis, a side effect of her chemotherapy, but she was still able to complete the journey.

The opportunity to be on the climb helped many of the women to be less emotionally and physically passive. Some of the group had never really done anything physically challenging before. One woman had three firsts on the first day of the trip: she had never been on horseback before, and we had to cross a river by horse the first day; she had never slept in a tent overnight; and she had never urinated outdoors. This is a woman who is very daring and forceful in other ways - she's an attorney and certainly knows how to get what she wants - but participating in the climb opened up another dimension of what her life could be like.

For this group - and from what I have seen in caring for other cancer patients - just being alive is not enough. There is a need to continue achieving and stretching the limits. The determination to prove themselves physically was especially striking in the climbers. Many of the women talked about taking it to the edge and about how their diagnosis had changed their priorities, challenging them to experience events as vividly as possible.

I wanted to challenge and prove myself physically as well, because I've had some serious health problems - cancer and multiple retinal detachments. My participation in Expedition Inspiration, both as a climber and as a physician, helped me to further define my own goals. It certainly made me want to climb more mountains. I was obsessed with mountain climbing when I came back from that climb, and I'm still trying to figure out where that fits in my life.

Some of my favorite moments on Aconcagua were at night, when it was so quiet. At high altitude stars seem very close, and it was very calming to feel linked to the entire universe, despite our campsite being only a small dot in the landscape.

One of a physician's roles is to foster the will to live - to call forth - by giving patients examples of others who have done well and helping them find their own uniqueness in their period of crisis.

One of my patients with very serious breast cancer was hospitalized for her bone-marrow transplant the evening the documentary on Expedition Inspiration was shown on television. She wrote to me from her hospital room about the tremendous confidence watching the broadcast gave her for her own future.

I think the will to live is a natural component of being alive. All animals have it, and I often think of its source being in the primitive, parts of the brain rather than the intellect. When you are not challenged by the fear of dying, it's all too easy to just kind of sleep walk through daily routines, always getting frustrated at the little things in life. The threat of actually having life taken away can make a person suddenly want to prove a point to the world, or to change direction. Risk taking physically or emotionally is part of that. The fact that this group of women, who had gone through chemotherapy and radiation treatments, were able to achieve this physical feat should make them justifiably proud.

I heard a priest-philosopher give a lecture a number of years ago. One of his points was that clinging to life was not good, and that at a certain point patients should move from hope to resignation. He described a woman with advanced ovarian cancer who talked with her goals and hope for further life. He didn't consider her a candidate for active treatment, but she focused on getting more chemotherapy.

The priest said to her, Why do you want to do that?
She said, Well, at least it would give me hope.
Hope for what?, he asked.
She looked at him and said, Well, just hope.

She did receive further chemotherapy but died a few months later, apparently heartened by her belief that all appropriate therapy had been tried.

Hope is such a tiny word, because we throw it around and can't quite get to the kernel of its meaning. In many ways, our hope is for continued existence, for feeling alive. In oncology we really see very few suicides, perhaps because people have already come to grips with the precariousness of life, despite the paradoxes and painful moments.

The will to live is so strong and primal that it is a rare person who is ready to move on, away from life. The wish to remain, to be, is enough.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'Each Day Really Is a Miracle',
    author: 'Father Isaacs',
    description: '''I look back on my twenty-five years as a priest as very happy years. I would never change them. I've had wonderful experiences. I went to Peru for five months as a missionary and then went to the mountains at Lake Titicaca. I went to Curacao and Machu Picchu.

I am now stationed at a large, Hispanic parish in San Francisco. My story of cancer started about three and a half years ago when I was diagnosed with a melanoma on my back. I had an operation and it was removed. The doctors said they'd gotten everything and there probably wouldn't be any more problems. But three years later it came back, which was extremely shocking. I've always believed that when you get rid of something, it's gone.

The first sign of the recurrence was that my left side became paralyzed. I thought I'd had a stroke. I could hardly walk and couldn't use my hand. I held off seeing a doctor because my twenty-fifth anniversary in the priesthood was coming up, which was an important event. I couldn't make it. My condition just kept getting worse and worse. My speech was getting slurred. I went to see my regular doctor who did a test and said, No, you didn't have a stroke. You probably have something far more serious.

I had a brain scan, and the doctor scheduled surgery to remove a tumor from my brain. The surgeon gave me some time. He said there was no rush and that I should have my party, and he gave me some very powerful steroid pills to reduce the brain swelling.

I walked out of the hospital and down the street to a Catholic church that had a statue of St. Jude, a patron saint of the apostles. I went in to pray to him. I planned on being very impassive about this whole thing. I said, I'm not praying for health. Whatever God wants is no problem.

The day before I went in for my operation, I had my twenty-five years ordained party. It was a huge mass, with tons of people, choirs and dancers. At the end of mass, I asked for people's prayers. I went into the hospital full of confidence.

The tumor was large, the size of a silver dollar. The neurosurgeon was quite confident that the tumor was encapsulated (confined to one area, not spreading throughout the body), so for the second time I thought, Well, that's it. I'm finished. I don't have to worry. I can go back to work and forget it.

But later, I had another problem. The surgeon explained that it could be either a recurrence or a residual bit of tumor they just didn't get out. I had a small amount of radiation and, so far, everything has been fine.

In the midst of all this, between seeing doctors and feeling very confused, I read a very helpful book, Choices in Healing by Michael Lerner. His basic premise is that you have to call up your own healing powers, which seems obvious, but it was totally new to me because I had never been sick. Soon after, I met with Mr. Lerner, who recommended a book by Lawrence LeShan, Cancer As A Turning Point. This happened to be the right book, at the right place, at the right time. There were a couple of stories in there that were just dynamite. Reading it was a turning point for me.

Lerner said the question isn't, What's wrong with you? Instead the more appropriate questions are: What would be truly healing for you in your life at this point? Short term and long term what would, be right for you? What is it in your life that you like? Who are you? How can you help yourself to do more of what you find truly fulfilling? And how can we help you to keep doing that.

The will to live, I believe, has to do with finding the place in your heart where you are, where you live, and realizing that you have not yet accomplished all you wanted. It is awakened by looking through a new set of eyes at what you have been doing and getting a new perspective on your life. For me, it involved not denying the past but realizing I had to deepen what I'd done and start to get back on track with my goals.

After the radiation, I went back to the church near the hospital and prayed again. This time I said, I want to live. I have a couple of projects and I want to do them.

This time I didn't say, Whatever God wants is no problem. It's not that I do not believe in God's will anymore. I still do very much, and it's very important. Whatever God wants, obviously, is the bottom line. But to me, the heart of life is not us discovering the will of God. It's God asking us, so that our will can become aligned with the will of God.

I said to God, If you ask me what I want, I have a plan and here's my will. If it's Yours too, okay. If it isn't, okay. But here's me.

I laid it out very clearly what I wanted in my heart. And I felt a jump. I felt that I was heard. It was a moment of recognition. I felt it was going to be up to me. If this is what I want, it is going to be up to me to get it. This isn't a dress rehearsal. We're not here to just sort of see what other people need. We're here to do things, and if God has given some insights, then we need to realize them. Otherwise when we die He can say, You didn't do what I wanted you to do.

I prayed, first of all, to be able to complete a collection of stories I started writing fifteen years ago. I've written short stories all my life - just quick, unpolished things - but I had never put them together. I even used to write down conversations at somebody's house, or a phrase or a word. I have one enormous file called Exactly that is filled with stuff that I heard and that made me think, That's exactly right. I would write down what ever it was and put it into the Exactly file. A lot of my stories came out of that file.

While I was recovering from the brain surgery, I finally got the stories all typed up, bought a word processor and did some correcting. I was very happy writing them.

The other part of my prayer was to say, Here's what I really want for the parish: to tighten it and give it a vision.

My parish is in the middle of the Mission District and is a very, very busy place. We have a congregation of over two thousand people and the number of religious services is extremely high. Apart from the masses, we have six to seven hundred baptisms a year and a huge number of weddings. We have ninety people a night sleep in a shelter, several youth groups, a clinic with doctors and dentists, a theater group, a religious school with over five hundred children, and an after-school program for about four hundred children not going to Catholic schools. It's a massive project in terms of administering a million-dollar-a-year budget. None of us was trained for such a task, so, needless to say, there are a lot of pressures.

I now have to pursue my vision and let the chips fall where they may. I try to make as many changes as I can to alleviate some of the pressure. I don't have time to please everybody, which is what I think I tried to do before.

There are some things I've always wanted to do with the parish in terms of hiring different people, giving it a new direction, and bringing the social and religious, the social and spiritual, together. I think I have now deepened the direction of both.

I wanted to bring in more Spanish culture through music, plays, and socio-dramas using liturgy for teaching moments with theater. We started celebrating the feast days in the same way our parishioners celebrated them at home, so they wouldn't feel lost or like strangers. It gave them more of an ownership of the parish. We painted a big mural-which won awards-on a church wall, so that when people walked by they could stand up straighter with pride rather than feeling beaten down. Since the cancer and since my moment of recognition, I think I have deepened my understanding of these projects.

I had another experience, another moment of recognition, in the middle of this whole thing.

I always lived very fearfully. I guess that goes back at least as far as the seminary. There were so many rules and so much fear. That was just part of my life. Life and death were so frightening. When I first got this thing, this cancer, I was so frightened. I remember going into a restaurant and physically feeling my heels digging into the carpet under the table in fear.

Then, just before another operation, something happened. I can't explain it, but my fear just lifted, and I thought, Whatever is to be.The fear left me. There wasn't anything to be worried about or frightened about.

Someone once said, Worry is interest paid on money you'll never see. I understand that now. This is life, this is death, and I'm very much part of it. Whatever is to be.

All my life I've handled problems by working harder and more. In that sense, my life hasn't changed much because of my illness, but everything has been greatly clarified. I think I'm coping with things the same way I always have, but some insights have become a little sharper, and I've cut out a lot of the nonsense of life.

When I got sick again and it was suggested I get my affairs in order, I thought of not going back to the parish. But I decided it was no use sitting around, worrying about what might happen. I decided to find a path that has a heart, and that path for me is back in church, working with people, and directing my parish.

I have learned so much about God and about prayer and my spiritual life. I've had much more time to pray.

I now feel like I'm beginning to be able to competently guide people. Sometimes I wonder what I said before, because I don't think I knew anything then. Whatever I knew was probably very superficial. Maybe it was out of a book, and maybe it was right. I hope to God it was. But now, I'm very conscious that guidance has to come, somehow, from within. If it doesn't come from the heart, it doesn't work. Now I really know what I'm saying, and I mean it.

I always considered myself a very hopeful, optimistic person. But there was a time when I used the word exasperated a lot. That word came to my lips quite often when the tumor was growing. When I thought of what was happening to me, I used to sigh. I never felt so exasperated. That's when I fell apart.

But now, I've been re-reading a lot of books I've enjoyed over the years and have felt physically and mentally better. I read Hamlet, Macbeth and King Lear again, and they kind of pick me up, give me some new ideas, and help me get back up and on the trail again. I've been seeing people I haven't seen in a long, long time. I've been enjoying each day. Each day really is a miracle. People say that, and you hear it, but it's not until you experience it for yourself that you know it's true.

Looking back, I'm so happy that I had the opportunity to look at myself, to stop and see what I wanted to do in terms of this little part of me, this little inner part. I feel like I'm in a good place in my life, and I feel this is a great time to say I have a vision about what I want to do with the parish. And I'm going to do it.

Before I knew how serious my illness was, I was planning to take a trip after my twenty-five year anniversary, perhaps back to Peru or Ireland, or maybe to Italy, whose beautiful churches I have never seen.

But what I realize is that, since my party and my operation, I had a much more wonderful year with far more extraordinary experiences than any vacation could bring.

Now when I think of having missed going to Peru or Ireland, I just laugh. I would have gone, come back, people would have asked how was it. I would have said wonderful and it would have been over. Two months later I would have forgotten I had gone.

Now I say, I've had one of the best years of my life. And I really mean it.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'Inner Fire Preface',
    author: 'Ernest and Isadora Rosenbaum',
    description: '''Medical oncologists have always been fascinated by the power of the will to live. What makes a person faced with a life-threatening crisis fight to live? How do people cope with chronic disease or refuse to let physical discomfort keep them from enjoying their family, friends, and outside interests? We feel that the answer to questions such as these has to do with the will to live.

In trying to find how certain people were able to overcome such obstacles, we began asking them about their will to live. What promoted their ability to cope under the stress of disease and get so much out of life, no matter what the circumstances?

We discovered a commonality of factors among both those who live with acute and chronic disease and health care professionals in good health. These factors include: hope, faith, attitude, determination, the love of life, courage, luck and chance, the ability to cope, a support system, having a purpose (or goals), and appropriate medical care. We consider the integration of these common factors to be the keystone for the will to live.

Our research began with the premise that, through telling stories of how people cope with illness or various life crises, we could better understand the process and then help to implement what we learned in our patients' lives.

Our goal was to help others, but, in the summer of 1995, we became direct beneficiaries of this research. It was at this time that Ernest acquired a rare medical syndrome, Chlamydia type II double pneumonia, and had an acute heart attack. He was on a respirator for ten days and would have died were it not for the excellence of his intensive care medical team and the love of family and friends. Not only were his own values, reaffirmed, but also he learned much more about his own will to live and about the power of the human spirit.

This book deals not only with people who have faced or are facing cancer or other serious illnesses, but also those around them - physician, care givers, and family members - who have experienced first hand or through observation some of the critical ingredients of the will to live. We believe that when you read the experiences of the people, written in their own words, you will agree that we all have untapped potential for emotional and spiritual strength that enables us to endure.

We go through many stages as we deal with illness: fear, frustration, depression, and helplessness. We may eventually find ourselves drained by illness and inactivity, tired of feeling victimized by events beyond our control. We cannot endure such emotional upheaval indefinitely. At this point, an acceptance of reality begins to emerge along with thoughts of how to work around problems and recapture something of value in life. We consciously or unconsciously make a decision for life.

Many of the people in this book made that decision. Each of the journeys is unique, but several life-affirming themes continually resurface. It is clear that they have a message of importance for all of us. Their stories lead us to reassess our own values and goals.

In presenting you with the ways in which others have coped, we are not advocating a drastic change in your own way of life. We only want to suggest that, even if you have a life-threatening disease, you can make choices and compromises, as you did before you were ill, and in this way live with your problems. We hope you then will increase your efforts to keep fighting.

We really know very little about this mysterious force, the will to live. It seems more potent in people who are connected to others than it is in those without strong bonds. It also seems to involve a willingness to fight and struggle through whatever the difficulties and pains of life may be.

We hope to be able to find something in those people who have a strong will to live that can be taught to those who seem to lack it. Perhaps the best we can do at this point is to share the stories and struggles of some of our patients, friends, and colleagues to reassure others that they are not alone, that their fears are justified, that hope always exists, and that attitude can make all the difference in the world.

If the contributors of this book were to give one piece of advice to those who have encountered adversity in their lives, it would be: It's up to you. You can learn to live with it, live around it, or live in spite of it. You don't know what you can do until you try.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'In Touch with My Dream',
    author: 'Alan J. Cooper, MD',
    description: '''After the initial shock of learning that I had cancer -- malignant melanoma -- and worrying through two recurrences, I concluded that the only quest in life that made any sense for me or gave me any sense of purpose was to get cured.

I asked several oncologists to advise me of ways to conduct my life that might enhance the chances of cure, but I received no worthwhile advice other than, Stay out of the sun. The medical profession doesn't even know if that advice makes any difference once the cancer had occurred.

I also asked what it meant to fight, since we have all heard that those who fight survive longer. There were no concrete suggestions in this area either, although most oncologists do believe that a fighting attitude helps somewhat. I was left feeling suddenly alone as a patient and increasingly distant from the assurances and help of my colleagues.

I decided to explore every aspect of life that might hold promise for effecting a cure. I continued to receive the best available conventional therapy for my illness, but I also took part in experimental therapy.

It seems entirely possible that there are mechanisms within the total neurophysiological structure of a person which bring about a restoration of health by entirely natural means. The triggering factor could be mental, physical, or spiritual. The process might take seconds or years. I didn't see any value in excluding such possibilities.

I realized early on that I would be adopting measures in part based on intuitive or inner validation rather than on any external structure of proof. I have not regretted this approach. Indeed. it has immensely enriched my life.

The first step for me was to take stock of my life in the broadest sense. I was helped very much by the exercises described in Alan Lakein's book, How to Get Control of Your Time and Your Life, (New American Library, 1996).

To my surprise, I found that the most important thing on my list of what I meant to accomplish in life was attaining inner peace. Dr. Jerry Jampolsky at the Center for Attitudinal Healing in Marin County, California, defines healing as precisely that: the attainment of peace.

Many other aspects of my life-plan emerged from reading Lakein's book as well, and I highly recommend it to anyone drifting along in life who hasn't discovered their particular purpose or meaning. Through this process I have accomplished a number of things I would never have done if I had not had cancer, including, running in the San Francisco Bay to Breakers race.

I want to make it clear that the value of listing life goals and then doing them is not just to enjoy life while you still can. That kind of attitude is self-defeating. Rather, the value is that by becoming active in doing things that are truly and deeply meaningful, I began to restore some physical and emotional balance to my life and actually realized the possibility of a physical cure.

There is a Native American belief that when a man loses his dream, he begins to die. I realized that I had indeed lost touch with my personal dream. I have tried a smorgasbord of things to help me get back in touch with my dream and to reestablish my positive feelings and energies.

I have practiced both receiving and giving love; I've gotten psychological counseling from a man trained in the thought process and theology of Lawrence LeShan; and I have used sleep time to listen to a wide variety, of tapes on health and life. I have overcome inertia and discovered that all kinds of things I hadn't thought I could do are possible.

I've strengthened my ability to have faith. It is hard to believe in the efficacy of external factors (immunotherapy, exercise, etc.) if we don't nurture the impulse of faith itself, especially if our body seems to have failed us. Increasingly, I turn the whole process over to God whenever I can. The feeling of peace and power that comes from the act of letting go and, occasionally, from prayer, seems to ratify that the universe is on my side.

I must have tried all the many varieties of prayer. Some have been quite moving. I have also experimented with the use of affirmations -- uplifting positive statements -- repeated many, many times, such as: I am healthy, or, God loves me.

Visualization has also been very helpful. I have used several forms of visualization, including seeing and feeling myself healthy, successful, and happy in the far distant future in which I love myself. I've used a visualization in which I see myself healed by significant other people, and another very important visualization in which I address all the organs of my body with gratitude and respect for a prolonged, healthy life. Along with visualization, I have used self-hypnosis to more deeply reconstruct my attitudes and self-image.

Bodily, I have found regular vigorous exercise to be important. I run three times a week and wrestle with rocks in my living creek. I also follow a strict vegetarian diet and take vitamins, including high doses of vitamins C and A.

Since embarking on this program to reestablish my positive feelings and energies over a year ago, I have scarcely had a single moment of depression or hopelessness. Such feelings occasionally start, but I seem to be able to stop them cold. To me this is a minor miracle following three operations and a lung metastasis.

My doctors have always projected a healthy optimism. I can't tell you how uplifting and energizing this is once you have had a life- threatening illness. There is such a large body of negative programming out there that any positive statements, actions, and feelings seem not only justified, on the basis of equal time, but necessary in order to positively influence our immunity.

There seems to be a kind of subliminal, self-fulfilling prophecy in many of the communications received from people about cancer. Conventional opinion assumes cancer to be a kind of slow death. Even the kindest of friends look morose as they ask how you are. The powers of the community are such that people can enhance the likelihood of death from cancer simply by projecting such a negative attitude subliminally.

Another important area of negativity appears in statistics about melanomas or any other illness. Such statistics may have no bearing on me. Someone who survives a particular illness for five or ten years may be a one-in-a-hundred or one-in-a-thousand statistic, but, for themselves, they are a hundred-percent survivor. I chose to be such a person, since I enjoy not being a victim. Why not be a victor?

The process of separating myself from the conventional wisdom that all cancer ends in death is just beginning, and I have only partially rid myself of self-defeating attitudes. I have learned not to call myself a cancer patient because I have not stopped being myself just because a melanoma happened to me. I don't intend to change my identity at this time because of a disease.

Although it might appear that I'm only concerned with positive things, I am increasingly aware of the destructive forces within me. Especially Fear. With a capital F. Part of my program involves facing fears one by one, getting to know them, and then doing something about them.

Action is one of the best antidotes for fear. A lifelong fear of mine has been of standing in front of a group of people and leading them or lecturing them. I therefore started giving classes during the past few years about deep relaxation and imagery techniques that lead to changes of attitude as well as to some physiological changes. Doing this has given me a great deal of confidence, and I plan more classes, possibly for cancer patients.

More than once I have caught myself imagining how I would have to die in order to be memorable. But there is no profit conforming to others' expectations that cancer patients must die bravely, heroically, philosophically, spiritually, or any other way. People with cancer need not be scapegoats for other people's fear of death.

I'll never forget the words my oncologist recently spoke to me. They have been ringing in my ears, mind, and heart ever since. He reviewed my records, looked up with surprise on his face, and said, Why, Alan, your body seems to have done an amazing job of controlling your cancer. I think you may well be cured. He has made similar remarks on all subsequent normal examinations.

In closing, I must say that illness for me has been a gift and a springboard into new life. I've been able to resurrect hope and fun and to rediscover the value of leisure and laughter. I suspect all those legendary, 120-year-old men sitting around in the Urals sipping their vodka are also telling and retelling 100-year-old jokes that we ought to go listen to.

''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
  SurvivorDetail(
    title: 'A Broken Window Every Day',
    author: 'Maria Smith, Ernest H. Rosenbaum, MD, Leef Smith',
    description: '''I've had two extremely good fortunes. One was my husband, Donald, a remarkable man with whom I had a magical marriage. The other was my oncologist, without whom I would not have survived. Any other doctor would have looked at my prognosis and said, It's over! I was given a gift with the two of them, and something in me used that gift. Subconsciously, I didn't think I could fail either one of them.

If you have confidence in those who care about you, then you can go through a lot of stuff. You go on with life with real strength. I had a lot to support me. Would I have done it had I been a single person? I'm not sure. I think one of the worst things is for people to go for treatment every week and feel that they're in a cold, steel world. My husband and my doctor alleviated that. I always felt that I had a comforter around me.

In 1970, at the age of thirty-three, I had a mastectomy for breast cancer. Later that same year I had a hysterectomy and an oophorectomy (surgical removal of the uterus and ovaries). One morning I said to Donald, Let's talk about this. Do I have a chance with what's going on here?

He said, That's entirely up to you. That's all he said. Not, I can help you, or, your doctor can help you Rather, It's entirely up to you. I think I took in that message and decided that there was no reason for me not to be positive. What did I have to lose?

My surgeon, Sheldon Levin, also said something very important to me. It was the day before I left the hospital, and my family was supposed to move to a new house. I was kind of down and said, I want to ask you. We're about to move. Should we?

He said, Don't change anything, keep on going. It was a simple statement that helped me. He has been a major support over the last twenty-six years. I have often called him several times a week just to talk.

In 1971, I was told I had advanced breast cancer with liver, bone, and lung metastases. My doctor put me on chemotherapy right away along with an experimental immunotherapy program, BCG, a tuberculosis vaccine and Transfer Factor, a mixture of immunological chemicals. I later had eight weeks of radiation to my back. I didn't know how I was going to do it, but I did it. I had a three-year-old daughter. There was a lot I was fighting for.

Once I got over the pain and my body started to heal, I made an effort to get out of bed every single morning as if nothing were wrong. I'm not sure my thinking was even that specific. I just had a lot of crutches around me, and I was very much in love. I never even thought about it, I just got up out of bed and started the day. That was a gift. That was God's gift.

Chemotherapy was something else. The first time I had chemotherapy, it was devastating. I had to block out a day every week for I don't know how many years. When they'd shoot those drugs in my vein, I could feel them going through my whole body. Immediately, psychologically, I'd become ill. I would go home, prepare dinner, then just go to bed and try to block it out until the next day. I wasn't really very good at it. Donald wouldn't allow me to stay in bed. I'd have to get up and sit at the table. The food would drive me up the wall, but I did it.

Donald also made me get films from the American Cancer Society. Every single day for an hour, I'd set up a movie projector on the dining room table and watch a film about how cancer cells migrate, how they kill, and how they are killed by lymphocytes in the immune system. I don't know what that did, except that it was a hell of a chore.

I went to a support group once and wanted to wallop the participants. To me they were a bunch of whining women talking about losing their breasts. They drove me crazy.

One thing I found that helped was that I never cried in front of my family. I discovered very quickly that if I had an emotional breakdown in front of them, I not only had to lift myself up, but I had to bring all of them up too.

So I just broke a window every day. Sometimes more than one a day. That really got rid of a big thing inside of me. I decided that if I ever wrote a book the title would be A Broken Window Every Day. After a few weeks, the window repairman asked me why I was doing this. I told him I was really angry. He didn't ask me any more questions after that.

Another important point is that I live in a small town, and a lot of gossip was circulating about me. So Donald went to our tennis club one day and told everyone to mind their own business. I didn't have the energy to deal with someone calling every day wondering if I was going to die. There were days that I looked so horrible people must have known something was going on. But I made a conscious decision not to go into any detail with anyone. That privacy was a tremendous help.

I went to the dentist and had to fill out a form about my health. I wrote excellent. Where it asked if I had any diseases, I put advanced breast cancer.

The dentist came out and said, Are you serious?

I said, Very serious. That was the end of the conversation.

It was like being an actress on stage. I just went on with my life. I entertained. We took trips. With my daughter where her schooling was concerned, my activities were limited because my immune system was so weakened. So I chose to do all the carpooling. This kept me seated and let me use as little energy as possible. But it kept me in control of the kids. That was important because I didn't feel detached from her growing up.

I took ten years of chemotherapy and concurrently three years of immunotherapy. The tumors in my liver shrank significantly, and then my treatments were changed to hormone therapy. My doctors tried to compare my old nuclear medicine scans from 1970 to new CAT scans in 1980 only to find out that my old scans from 1970 were not available. The doctors didn't keep x-rays over seven years and they thought I had died, so they simply tossed them out. I was on various hormonal therapies for about eight to ten years, and then, because of the progression of lung metastases, I was again placed on chemotherapy with a complete remission of the lung tumors.

In 1994 I suddenly lost my major supporter. Donald died suddenly of an acute heart attack after returning from the tennis club. It was the most devastating event of my life. Although my mother lived with me, I felt alone for the first time.

Even if you're doing fine, there's a medical checkup on your illness every three months. The worst one was the first one I went to alone after Donald died. I thought I was going to give up the treatments. Now I'm going at it on my own and it's okay. I think I've resigned myself to the fact that I'm either going to be able to make this work a while longer or I'm not. If I'm not, I'll start the countdown and cease treatment.

In 1995 my doctor wanted me to go on Taxol, which meant I would lose my hair again. Actually I did a very bad thing once which didn't turn out so badly. I was on Cytoxan and finally got so disgusted with the thought of losing my hair again that I took myself off chemotherapy for a few weeks. When my doctor heard about that he almost finished me off himself right then and there. Fortunately it did not hurt me.

Faith has been very important to me. I don't follow any organized religion, but I've always believed in God and that's been a source of much strength. But I've always been a strong person. My father had one expression when there was a problem: Handle it. He said, You've been prepared to handle it, just handle it. I've relied on that strength too.

Dr. Rosenbaum

Maria had an amazingly strong will to live and phenomenal endurance throughout her twenty-six-year battle with cancer. Even when she realized she was fading during the last few months of her life, she did not wish to discuss her future with me. She always kept some hope that she would get better. When asked how she wished to be cared for, her only request was that she should be made comfortable and be allowed to die in peace. She would even lie to her daughter Leef -- who was twenty-seven years old and a newspaper reporter in Washington, DC-- about her declining health. Maria did not want to worry her. While they talked almost daily by phone, she maintained that her health was stable.

In April 1996, Maria began to develop a left-sided weakness. She was unable to get about on her own and had her ninety-year-old mother to help her walk rather than admit that she needed help. She asked her mother not to tell anyone about her failing health.

She became progressively worse, but she didn't want to go into the hospital or see a doctor. Isadora and I were in Europe for two weeks. She refused to have a hospital bed with a trapeze or wheelchair. Her primary physician, Marcie Gotlieb, MD, ordered a home health nurse and blood tests which showed an elevated calcium level reflecting her advancing cancer. She improved only a little on medical therapy.

On the day we returned from Europe I had a message to call Maria. I called, and she said, I'm going to die today. I've been waiting for you to return. Could you come over to see me?

When we arrived, I found her toxic and mentally lucid but dying. We had a meaningful conversation, discussing her life and attitude, and she thanked us for our care over the last twenty-five years.

She said good-bye to her family and the special people she loved and died shortly thereafter.

There is a will to live and also a will to die. Maria exemplified an amazingly strong will to live. When Donald died, Maria lost a major life force that had promoted her own will to live. She decided that she did not wish to begin using Taxol, a new chemotherapy treatment, which two years before she and Donald had been excited about. When she decided she could not live with all the disability, discomfort, and pain and could no longer take care of herself or her mother, she decided to die. She was always a proud person and could no longer accept that her illness had taken away her dignity.

Leef Smith

Fighting cancer consumed nearly half of my mother's life. It was her enemy, her nightmare, and, ultimately, her greatest secret.

Only a handful of people ever knew that the strong, outspoken woman they loved was battling disease. Even her closest friends, the ones who drove her to chemotherapy each week, were in the dark. Sure, they thought it was odd, maybe even suspicious that she went to the hospital, and of course they asked if she was okay. My mother knew they were on to her but she tossed off their inquiries with what she believed was a plausible excuse. She told them she was on the board of directors at UCSF. It was a lie. It was also her protection story.

Why? was the question on everyone's lips following my mother's death. Given the secrecy surrounding her illness, it was a death that hit friends and neighbors like an unexpected blow to the head.

Just hours before her death one of my mother's friends called looking for her. I'm sorry, I told her, trying hard not to cry. My mother isn't well, She can't come to the phone.

Oh, I know Maria has the flu, she persisted. Just put her on the phone. It'll only take a minute. I want to touch base.

No, really, I said, my grief turning to anger. She's dying. She may only have a short time to live, and I can't talk to you right now.

That's crazy, the woman said. We talked last week. She's fine.

A friend rescued me from the remainder of that very surreal conversation, but many more like it followed in the days after my mother's death. No one could understand that she had died and they were angry, angry that she hadn't let them help her when she clearly needed it. Some of them felt betrayed.

But she wanted privacy. It was her sanctuary from the disease. It allowed her to survive in the workplace without speculation and emotional injury and to focus her attention on fighting the cancer. She wasted no time battling peoples' perception of her as a victim because few people knew about it. Some would say that medicine kept my mother alive and seemingly healthy for so long. Certainly modern medicine had a lot to do with it. Just as important, though, was her will to live.

My mother was a fighter. She fought every battle on her own terms, and those terms centered on privacy. She was asked several times by her doctor to speak to breast cancer support groups, but to her those women were holding the ultimate self-pity party, and she would have none of it. If my mother had a mantra, and maybe she did, it surely would have been I am not a victim. Rather than risk being treated like one, she chose to hide her troubles from her friends. And, when it suited her, sometimes from her family too.

Sometimes when my mother and I would have arguments, my father would say, Don't you realize how sick your mother is? The answer, really, was no. To all intents and purposes she always looked healthy. No one would dare talk about it. Unlike today, cancer was something you hid from the world, not something you reveled in beating. Whatever else you can say about it, this strategy worked for my mother. Between her trust in the Christian Scientist belief, mind over matter, and the unfailing love of a devoted husband, my mother held off the disease.

The flip side is that until my father's death, I was pretty much out of the need-to-know loop regarding my mother's health. She and my father made it their goal to shelter me from the reality of her condition. That was fine, until suddenly I needed to know.

Clearly what stopped her was my father's death. He was her number-one support and confidant. Without him, she was scared and alone. While I believe my mother would have given anything to see me married and to hold my children, she also knew I was now a grown woman with a bright future. She knew she could let go when the fighting became too much.

As her condition deteriorated she kept the news from me, her friends, even her ninety-year-old mother. At least in my case, it wasn't so hard to do. She lived in California, and I kept a home in Virginia.

While it wasn't my mother's intention to lie to me, more important to her was a lifetime spent minimizing her sickness. Admitting to me that she was really sick meant admitting it to herself. After twenty-six years of fighting successfully, she couldn't admit the truth.

My mother asked me for one thing before she died. She made me promise that I would neither purchase a death notice in the local San Francisco area newspapers nor hold a memorial service.

My mother lived for twenty-eight years in an affluent town in Marin County where she was a well-established realtor and social butterfly. I wanted to honor my mother's wishes. I thought long and hard about the appropriate course of action. In the end, we held a private service at her home, but I was too proud of her struggle and her strength to deny telling the Bay Area about her.''',
    imagePath: 'assets/image/glassbg.jpg',
  ),
];


// Detailed view page for a single survivor story
class SurvivorDetailScreen extends StatelessWidget {
  final SurvivorDetail detail;

  SurvivorDetailScreen({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail.title),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image section
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(detail.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Title section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                detail.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Author section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                detail.author,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            // Description section (Handles null case)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                detail.description ?? 'Description to be added soon...',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
