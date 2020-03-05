# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Project.destroy_all
UserProject.destroy_all
PostFavorite.destroy_all
ProjectFavorite.destroy_all

ann = User.create(name: "Ann", github_profile: "https://github.com/", cohort_name: "Live fast pry young", cohort_start: Date.today, username: "annduong", password: "annduong")
carl = User.create(name: "Carl", github_profile: "https://github.com/cjp34", cohort_name: "Live fast pry young", cohort_start: Date.today, username: "carlparm", password: "carlparm")
paul = User.create(name: "Paul", github_profile: "https://github.com/bumbot", cohort_name: "Live fast pry young", cohort_start: Date.today, username: "paulkim", password: "paulkim")
matteo = User.create(name: "Matteo", github_profile: "https://github.com/matteoaricci", cohort_name: "Live fast pry young", cohort_start: Date.today, username: "matteoricci", password: "matteoricci")
bri = User.create(name: "Bri", github_profile: "https://github.com/briannalturner", cohort_name: "Live fast pry young", cohort_start: Date.today, username: "briturner", password: "briturner")

post1 = Post.create(title: "Becoming a Junior Developer in 2019", user_id: carl.id, content: "Say that you jumped on the “Everyone needs to learn how to code” train. And you like writing code so much that you now envision it as a career. What do you need to know in order to get your first job in the field? Is it even possible to do that without any formal training? I’ve been there. Over the years, I’ve also hired many junior developers so I will try to help you navigate this route with a few tips and tricks.
    Companies that you want to work for
    Let’s start this with a word of caution. There are many companies out there that legitimately are looking for novice programmers. They require some work done (and that’s the basis for hiring someone!) but along the way, they will also help you grow in your job. These are the ones you want to work for. On the other hand, there are also a ton of companies advertising junior positions and when you get to read the job description, you find this line: 5 years experience required. It’s easy to feel as if there’s no chance for you out there because let’s be frank here: the crushing majority of job listings are like this one. Don’t be discouraged, though. When you have about 1500 days of professional programming experience, you are not junior-level any longer. These companies are not really looking for entry-level programmers anyway, so don’t feel bad about it. They are just trying to pay a junior wage for an experienced developer. There even is a subreddit dedicated to these types of job postings. I read it sometimes. It makes me laugh.
    So, again, don’t start feeling worthless if all you can seem to find are such openings. If you can solve problems with code, you are worth something and there are people out there looking for you right now. You just haven’t met them yet.
    What is a junior developer anyway?
    There is no definitive description for what a junior developer is so I will give you mine. Junior developers are people who know the basics of programming. They know the idiomatic constructs of at least one programming language and are used to navigating the language’s documentation for its standard library. Their main tasks include supporting users, identifying issues, documenting processes, and refactoring code where needed under the supervision of a more experienced developer. In some cases and as they grow, they will be asked to develop new features for an existing software product.
    I have seen too many new programmers expecting to be hired to develop new apps using the flashiest new technology that they spent months reading about and experimenting with. The reality is that they will mostly be asked to work on legacy code to fix bugs, sometimes using a technology two or three versions behind the current one. That’s what one must go through at the start of a career, and you should keep that in mind or you’ll be very disappointed.
    What you need to know
    This list is based on my own experience. It is by no means comprehensive as different industries require different sets of skills but I believe that if you are comfortable with these points, there are no reasons that you wouldn’t get a job.
    Know the basics
    Obviously, you will need to know what coding is and the major techniques used in programming. If you learned an object-oriented language, you are expected to know what a class is and how to create objects out of it. The basic concepts such as functions, conditional statements, looping logic, and these other low-level components should be familiar to you.
    You should also be familiar with the basic algorithms used in programming. Sorting a list of values is one of them, for example. Although I am not a big fan of whiteboard interviews (where you are asked to “program” on a whiteboard in front of an audience), they serve a purpose: to highlight how someone thinks about a problem and goes about solving it. One of the favorite questions is usually a variation of “how would you revert the characters in a string without using the sorting function provided by the language?” Try googling for junior coding interview algorithms. This should give you a starting point.
    Another basic point that is often overlooked is to know how to search for answers. I liked to ask candidates what are their favorite resources for finding answers. “Google” will not cut it as an answer. Be ready to speak about which online communities you frequent and where you ask your questions.
    This is general theory but it ties into my next point: languages.
    Know at least one language
    You can code, right? So you know at least one language. And if you know more than one, you probably are more comfortable with one of them. Opinions vary on this one but I would focus my research on job postings that mention that language. You will need to demonstrate that not only you are fluent with the tasks mentioned in the previous point but that you also know how to navigate the documentation for it. In the case of languages that evolve rapidly, you will also be expected to know how previous versions of the language works. I said it earlier, a junior programmer job involves a lot of bug fixing on legacy code. Not everyone has the chance to work for a Silicon Valley startup on a greenfield project. Actually, this is the exception rather than the norm.
    In some fields, web development being one of them, you will be asked to know at least one framework. Whether it is React, Rails, Angular, Flask or ASP.NET or any other popular one, you will need to demonstrate that you can be proficient with a framework even if the job at hand doesn’t require it. This is to show that you can learn how to work with an external package.
    Your troubleshooting and testing skills are great
    Junior developers spend the majority of their time on code that was written by someone else. Not only you should be good at reading and understanding code that is already written, but you should also be familiar with the common troubleshooting methods. Break points in step-by-step execution, verifying assumptions, and so on.
    It is recommended to know at least one testing framework for your language of choice and being able to explain how do you use it. But even if this is not part of your skill set, make sure that you can demonstrate how you can write bits of code to test your assumptions (the expected result) when something goes wrong. Senior developers, like any developer, like to create and build new awesome stuff, not fix their previous mistakes. Impress them by showing them that you can take the troubleshooting tasks away from them!
    Master the lingo
    You will most likely not work alone in a silo, doing your own thing. As a junior developer, you will be part of a team and be attending (sometimes too many!) meetings. You will need to be able to communicate with your team and that means knowing the vocabulary. Say the arguments passed to the function XYZ rather than the stuff that this XYZ thing needs.
    It may seem trivial but as a senior developer drowning in an infinite ocean of things to do, getting help from a junior programmer means being able to communicate effectively around a technical topic or this will quickly turn into a waste of time rather than getting meaningful help.
    Collaboration is key
    As an echo to the previous point, you will also need to know how to collaborate on an existing code base. That means mastering collaboration tools to a degree. For example, make sure that you know at least one source control system. Knowing how to work with Git and GitHub is a safe bet. You can easily demonstrate that you possess this skill when showing your portfolio (more on that later). Participating even slightly in an open-source project goes a long way to impress!
    Bring in some domain knowledge
    This is probably the most important point and surprisingly, it gets overlooked by many job-seeking programmers. You will never be hired to write code for the sake of writing code! Programming is all about solving problems and automating tasks. However beautiful your coding style is, if it doesn’t solve anything, you will never be hired.
    If your background is in the travel industry, try targeting online travel agencies. If you know everything about shipping containers across the oceans, target companies that are active in the field of logistics. If you studied accounting, try to break into the FinTech industry. If… well… I guess you got it.
    Don’t get me wrong. It is very common for programmers to be hired in an industry they don’t know anything about. But it is very unlikely to happen for a first programming position. You need to bring something to the table and obviously, it won’t be your years of experience in coding professionally.
    Showing that you can do it
    Each time a company hires someone, they are taking a bet that the selected candidate is the person for the job. You can help sway the decision in your favor using several tips. Here are two of them that usually impress me when I’m in the recruiting position:
    Have a portfolio: this is especially important if you are self-taught as you won’t have any fancy degree that could put the recuiter mind at ease. Come with several personal projects that you have worked on. Explain them and why you made certain technical decisions. Bonus point: your portfolio is available on GitHub and your code is fully documented. Extra bonus point: your portfolio includes your participation in an open-source project and you can demonstrate that you can collaborate with other developers.
    Come prepared: again a trivial point but so many times overlooked. Come to an interview with diagrams, screenshots of your apps, technical architecture of your project(s). This serves to demonstrate that you can think about code but also explain the reasoning behind it. And of course, it makes you look engaged because you took the time to prepare something.
    Conclusion
    The job market for programmers is thriving. In many industries, the demand exceeds the supply. Code is everywhere and although you may think that everyone is doing it (this is a normal bias because of the time you are spending in coding circles), just go ring the bell of the people living in your street and ask them if they can code professionally. You will notice that you are a rare commodity after all.
    I hope these few tips can help you on your journey to become a programmer and make a living out of it. If you are still at the beginning of your learning journey, I’ve recently produced a course on programming called Thinking & Creating with Code that is available at the EPFL Extension School — and I discuss it on this podcast episode. It’s all about getting these basic needed skills.")
post2 = Post.create(title: "9 Things NOT to do on an Airplane", user_id: carl.id, content: "Flying is fun, but there are definitely ways to make the experience less enjoyable for you and for those around you.
    If you’ve flown often, you should hopefully know the standard operating procedures for how to be a good passenger.
    If you haven’t flown or don’t fly often, this list is a fun, good reminder for some best practices that if possible, you should think to avoid the next time you get on an airplane.
    After all, you don’t want to be that guy or girl who does one or more of these things and has the whole plane looking at you like, “Seriously?”
    Don’t be a rookie when you can be a veteran. So buckle up, the captain has turned on the fasten seatbelt sign.
    Seriously. Buckle up.
    Before we get to the nine things to avoid doing on an airplane, I feel like I need to make this clear. This list is for everyone. Everyone.
    It doesn’t matter if you're in business class or at the back of the airplane. It doesn’t matter if you’re on your seventh plane of the week or if you’re on the first flight you’ve ever taken. Don’t let anyone tell you otherwise.
    There isn’t a status level you reach where you can suddenly choose to start doing these things. That’s because most of these things you shouldn’t do on an airplane deal with courtesy. Most of these things involve being respectful to your fellow humans who did nothing to deserve being co-passengers with you on this flight besides needing to get to the same location as you.
    Flying is never an individual sport. Unless you own your own private jet like Drake. In that case, it very much is an individual sport that I have no true understanding of. Drake, if you’re reading this, you can do whatever you want.
    If you aren’t Drake, this is for you. It doesn’t matter if you are a platinum, excelsior, gold-level boss. You still should try to not break these rules. But the odds would say that you aren’t that level, which means you’re just like the rest of us.
    And if all of us try our best to avoid these nine things, we might just enjoy a great flight.
    1. Take Your Shoes Off
    This is an “oh no, no” for flying.
    Here’s a couple of fun facts. Most airplanes have three seats per row. Which means most flights you’ll probably sit next to someone you don’t know. Most people who sit on a plane are fairly cramped. Most airplanes have poor ventilation.
    If you can smell the perfume of the lady sitting three rows behind you, you can definitely smell your shoes that are stuffed under the seat in front of you.
    And most people are just weirded out by feet in the first place.
    So don’t do it. Just keep your shoes on.
    2. Snore Loudly
    I didn’t think I would have to write this until I sat next to a stranger on a flight home the other day and he legit started snoring loudly enough that it seemed like everyone on the plane could hear him.
    Loud enough where you put in earplugs but can still hear it.
    If you’re thinking, “Some people just can’t help it.”
    I agree. If you’re one of those people, don’t sleep on an airplane. Spare the rest of your co-passengers.
    3. Lean on Your Unsuspecting Neighbor
    Few things are weirder than randomly getting leaned on by the co-passenger next to you. There are very few other places in public where this would be acceptable.
    “Excuse me, sir, while we’re waiting in this line at Starbucks, do you mind if I lean my head on your shoulder?”
    You barely meet the people you sit by on an airplane—if you meet them at all. Unless you’re that girl that talks to everyone. Suddenly you’re not only sleeping right next to that person but you’re laying your head on their shoulder, which is more physical contact than you had in all of eighth grade.
    Don’t be a leaner.
    4. Spill Your Drink
    This is a hard one to include because it really is a total accident 98% of the time it happens, but it deserves to be on this list because of how much of a pain it is when it happens.
    Spilling your drink on an airplane is like throwing up on a rollercoaster—there’s no place to go and it usually affects the people around you.
    These days, most people are trying to get around airline restrictions on luggage so the majority of spaces under seats are crammed to the max. The stakes are high. We know it. So just take extra caution when sipping your Sprite at 30,000 feet.
    5. Be Uncourteous With Your Window Shade
    The window shade is a gift. I repeat: the window shade is a gift. As Spiderman’s Uncle Ben says, “With great power comes great responsibility.”
    The easiest way to be a happy traveler is to just play by the rules with the window shade. If people are trying to sleep, consider lowering your window shade. If someone in your aisle wants to see the mountain you’re flying over, be kind and lift your shade to give them a peek.
    I know looking out the window on an airplane is fun, but there are other people on the plane as well.
    6. Not Use Headphones
    If you are stuck within a metal tube for long durations of time, you do not want to be the person making overly loud noises of any kind.
    A nice calm flight is a quiet flight. I don’t care what kind of music you listen to or what you like to watch on HBO. That’s your business. And it should stay that way.
    I don’t need to overhear the conversation between you and your mom or between you and your child’s elementary school principal. There is a plane full of people who didn’t pay decent money to listen to your noises.
    7. Get Things From The Overhead Locker Mid-Flight
    This rule has an exponential factor attached to it based on which seat you are sitting in within the standard three-person row. If you’re on the aisle, directly under the overhead compartment, this is still pretty annoying.
    If you’re in the middle seat, now you’re not only pretty annoying but you’re also inconveniencing your neighbor. If you’re in the window seat, just forget about what you want up in the overhead bin. If you move, there’s going to be a traffic jam in the aisle and with nowhere else to go, people get antsy.
    I once flew on a flight where the guy next to me got up and got something from his overhead bin every 15 minutes. Savage.
    8. Bring Food on the Plane From the Terminal
    I didn’t discover this until recently, when the guy who sat down beside me dropped down a brown paper bag on his tray table. About 30 minutes into our flight, he opened the bag and took out an overstuffed burrito made at some restaurant at the departing airport terminal.
    Not only did the food not smell great to my stomach, which was already feeling a bit queasy from the turbulence, but it was also messy. When the first plop of rice and beans fell on the tray table, no big deal. When it kept falling, one thought: “Get it together buddy.”
    9. Stand in the Aisle for Long Periods
    This one happens rarely, but once you see it you won’t stop thinking about it.
    Most adults on an airplane at some point along their journey feel a little cramped. Even kids hit a point where they feel restless. And when you hit that point, you’ll likely think: “This would all just be better if I could stand up and stretch my legs out.”
    Wrong.
    Well, right about stretching your legs out would feel better, but wrong about doing it on an airplane.
    Have you ever seen someone doing calisthenics in the middle row of an airplane? Me neither. That’s because it’s uncalled for.
    If you stand up on an airplane, you should either be going to the bathroom or getting off the plane. Anything else is improper airplane etiquette.
    Earn Your Wings
    No one is perfect. I’ve done many of the things on this list, so if you’re an airplane rule-breaker, it’s okay. Almost all of us are at one point or another.
    The trick is to be aware of the things to avoid. The goal is courtesy, and if you try to be a nice human being and you try to think about the people around you on an airplane, you’ll probably be just fine.
    Happy flying.")
post3 = Post.create(title: "Get a Free Tesla", user_id: carl.id, content: "This post is a guide to buying a Tesla Model 3 for free.
    I was interested in buying a Tesla Model 3 but I didn’t want a major liability on my balance sheet. After doing a lot of research and calculations, I figured out how to turn it into an asset. Here’s how.
    Note: this is not for everyone. It depends on where you live and your ability to stomach some risk. But dozens if not hundreds of people are doing this, so it’s proven to work.
    How to buy a Tesla Model 3 for free
    Go to Tesla.com and design your Model 3. You’ll notice the Standard Range $35,400 model is off-menu.
    The long-range RWD Model 3 is also off-menu. This is the one I was interested in buying. My order agreement is below (more on this later).
    
    Screenshot of my long-range RWD Tesla Model 3 order agreement.
    If you take away the long-range RWD upgrade, you’re left with a base price of $35,400 for a black Tesla Model 3 with aero wheels and autopilot.
    I wanted the long-range RWD upgrade because I didn’t want to have to charge as often. According to posts and conversations with owners, the long-range RWD Model 3 reaches 325 miles per single charge. The standard range plus Model 3 achieves 220–240 per charge.
    For this guide, let’s stick with the Standard Range Plus Model 3 — the most affordable option on Tesla’s current menu. $39,400.
    Choose “Loan” as your payment plan and put in $2,500.
    This is the bare minimum. You must pay $2,500 to place your order. There’s no way around it. This goes towards your down payment on the car. (You can use a credit card and it’s fully refundable within seven days.)
    
    $2,500 down. $38,400 loan. 4.25% APR. 72 months.
    Your monthly payment will be $608/month — built on a 4.25% interest rate for six years.
    There are also other expenses to take into account. All of these will vary on your personal situation. These figures were mine. I live in the state of Virginia.
    Insurance: ~$80/month
    Charging: ~$30/month
    Taxes: ~$125
    Registration: ~$45
    Delivery fee: $1,200
    Total upfront payment: $3,870
    Total monthly payment: $718/month
    This is where it gets interesting.
    There is a federal tax credit of $3,750 for vehicles delivered before July 1, 2019. After that, the tax credit goes down to $1,875.
    Since delivery takes approximately two weeks, you would need to purchase your Model 3 very, very soon to receive it before July 1, 2019.
    If you do qualify for the tax incentive, this means you’ll get nearly all of your upfront costs back when you file your 2019 taxes.
    It gets better.
    There are also state tax incentives.
    
    If you happen to live in one of the following states you are eligible for even more tax breaks:
    Connecticut ($2k)
    Louisiana ($2.5k)
    Colorado ($5k)
    Pennsylvania ($1,750)
    California ($2.5k)
    New York ($2k)
    Massachusetts ($1.5k)
    Delaware ($3.5k)
    Maryland ($3k)
    Finally, before we get to the monthly payments, let’s talk about the “gas savings.”
    Tesla likes to position the money you’ll save on fuel as an incentive — as if it’s reducing the overall price of the vehicle.
    For someone who is trading in a second car, it makes sense that there would be savings on gas down the road. But in no way is it reducing the sale price of the car at the time of purchase.
    More importantly, for someone like me who lives in a one-vehicle household and a Tesla would be our second car, this is an added fuel expense, albeit smaller than if we were to get a gas-powered second car. But still, paying for electric charge is over-and-above what I would be paying with just one gas engine vehicle.
    At this point, we’ve gotten our down payment money back, thanks to tax credits, but we still have a $718 monthly payment. That’s not free!
    This is where it gets even more interesting.
    To cover the $718 monthly payment for a Tesla Model 3, you need to use the car to make that money back. You need to make your investment generate a return.
    One of the ways to do that is with Turo, the ‘Airbnb’ for renting your vehicle. Car owners are able to list their vehicles on Turo’s app and website and charge a daily rental fee to renters.
    It turns out Tesla has three of the top 11 most popular cars listed on Turo, based on how much they’re earning for their owners.
    
    Image credit Turo.com via Ars Technica
    According to data from Electrek, the Tesla Model 3’s average daily price on Turo is $156.
    The M3 gets booked on an average of 10.1 days per month, earning an average of $1,083 per month.
    $1,083 minus $718 equals $365 of net profit. In other words, renting your Tesla Model 3 on Turo is actually making you money.
    One Tesla-Turo host made a YouTube video about her experience renting her Model 3 on Turo. I’ve embedded it below. But you don’t need to watch it.
    
    As the comments were quick to point out, the video is not the best.
    Here’s a screenshot of her math:
    
    Go to 5:48 if you want to watch the owner talk through it.
    The Model 3 owner was disappointed that she made a take-home of $71.10 from one booking on Turo — not as much money as she had hoped.
    One commenter wrote about three steps she could have taken to increase her margin:
    Don’t pay to wash it. Hose it down in the driveway only if it's dirty.
    Only rent to 3+ day drivers.
    Do the 25% insurance cost instead of the 35%.
    That last point is discussing Turo’s three-tier insurance coverage for hosts: Basic (15% of rent), Standard (25% of rent), and Premium (35% of rent). Turo’s insurance covers the car while renters are driving it. You don’t need to pay for commercial insurance.
    Had she taken the commenters advice, she would have earned closer to $300 ($151*3=$453–25% insurance=$339.75–$20 charging=$319.75)
    You can also use the “Turo Carculator.” Although, be aware that some have said it’s more of a marketing tool than a financial instrument.
    According to Turo, the average Tesla Model 3 owner in the U.S. makes $823 per month.
    
    Tesla Model 3 owners who rent their car on Turo in the U.S. earn an average of $823 per month.
    In my market (Richmond, Virginia), there are only three Tesla Model 3 owners on Turo. Their prices are $165, $163, and $131. I have read in California, where Teslas are like belly buttons, the day price can hover around $75-$115.
    So, depending on where you live, if you rent your Tesla Model 3 out on Turo an average of 5–7 days per month, your monthly payment will be covered ($823 minus $718 equals $105).
    And that is how you own a Tesla Model 3 for free.
    Wait. What about time? You don’t want this side venture to suck up all your time.
    I talked to a local Tesla-Turo host and asked him how many hours per week he dedicates to Turo-related things. He said four hours.
    Four hours is a good chunk of time. If you freelance, that’s a half day of work. Factor in your hourly rate, multiply it by four (four weeks in one month), and subtract that from the $105 every month. Depending on your hourly rate, it might not be free anymore.
    However, that is only one person’s experience. The point is to be sure to think about the time it will require to manage your vehicle and renters.
    What if you dish out a bigger down payment and reduce your monthly installments?
    Having a Tesla Model 3 that pays for itself is great, but if you have more cash to put down, you can turn it into a decent income stream.
    A helpful tool to play with is Teslanomics’ Tesla auto loan calculator, which accounts for the additional line items like monthly charging costs, taxes, and insurance. For example, if you doubled the down payment to $5,000, your monthly payment would go down to $680/month (a $38 difference). Let’s say you’re able to make $1,100 per month with your Model 3 on Turo. That’s $420 in your pocket each month
    Not bad for side hobby. But let’s ratchet it up a bit.
    My story
    I bought a Tesla Model 3 with a sizeable down payment but canceled my order the next day. Here’s why.
    What I bought
    I bought the long-range RWD model to reduce “range anxiety” and better the longevity of the vehicle. The Standard Range Plus would have required more charging, i.e., more time. I don’t have a garage at my house, so I would have been relying on the supercharging station ten minutes away.
    I was planning to put down a good chunk of cash ($26k) to get the monthly payments down to $309.64.
    
    At an average monthly revenue of $1,000, I was hoping to earn $700+ per month in net income.
    I would’ve been the closest Tesla rental to the international airport (10 minutes away), which is a major advantage for selling rental cars. I don’t believe I would’ve struggled to close over a grand in bookings each month.
    Ultimately, I didn’t go through with it because of where I’m at in my life. I am already short on time, between my family and the business initiatives I currently have that would reap much better returns if I dedicated the same resources to them. In short, it would have been a distraction and not the most practical use of my time and capital. But these are just my personal reasons. You might have a completely different situation. If I had a full-time job, no side hobbies, and lived in a different house and neighborhood, I’d probably do it. Check back with me in a few years.
    In the end, if you’re looking to purchase a Tesla Model 3 but the price tag is intimidating, leverage tax breaks and Turo to make it free or even cash flow. Consider it a business investment. Investments always entail risk. This investment vehicle 😉 might be more on the risky side, but maybe it fits your profile and lifestyle. It’s certainly a more thrilling investing experience than putting your money in the stock market.
    Thanks for reading. I hope this was helpful to you.
    I’d love to hear other people’s thoughts on this, especially if you’re doing it. Maybe leave a comment below.
    Footnotes:
    Why a Tesla is an ideal option for renting on Turo — first of all, it’s novel and people are enthusiastic about it and you can charge a high rate. But even better, you can remotely lock and unlock the vehicle through the Tesla app so you don’t have to worry about keys being lost or renters getting locked out. And you can also see where the car is on a map at all times so you don’t have to worry about having it stolen or lost. You can also track charging costs and work out a deal to charge renters seamlessly for re-upping the battery on their trip.
    You can’t use Turo with a leased vehicle. You must own it.
    Helpful resources:
    Design your own Tesla Model 3 [Tesla.com]. Configure your vehicle and see pricing options for using cash, leasing, or financing to order.
    Tesla Model 3 cost calculator [Teslanomics].
    How I bought a Tesla for $78 Per Month [YouTube]. Interesting teardown of the numbers but too idealistic. This situation won’t apply to the average Tesla owner.
    The best thread about buying a Model 3 to rent out on Turo [Reddit]. Really good, diverse perspectives and experiences here.
    Renting My Tesla Model 3 on Turo (How I’ve made thousands!) [YouTube]. Detailed insights with lots of stories.
    How I make $900+ per month Passive Income on Turo.com [YouTube]. Not a Tesla owner, but a solid walk-through of the Turo owner dashboard.
    Turo Market Guides [Turo]. Find your city and see what’s renting well and why, according to Turo.")
post4 = Post.create(title: "Plight of a Junior Developer", user_id: paul.id, content: "Junior developers entering the job market in 2019 are running headlong into the harsh reality that it can be very difficult to get hired in this field if you lack practical experience. Any junior developer who has spent time on the job hunt fresh out of a boot-camp or university program has experienced the paradoxical mindset of companies hiring developers. Some will hire juniors, but only if they have 2+ years experience (how do they get it?). Others only have openings for mid to senior level developers, and don’t hire juniors at all on principle. Still others require 4+ years experience with Gatsby.js, along with 2+ years experience with Angular 8 (these companies are frustrating for all of us).
What’s causing companies to shy away from hiring new developers? There are several reasons I see for this trend, and I will spend some time unpacking them in this post. I’ll also give my thoughts on how juniors can improve their prospects during the job hunt.
Supply of junior developers is surging
According to the US Bureau of Labor Statistics, software developer jobs have more than doubled, from 507 thousand available jobs in 2006 to 1.2 million jobs in 2016, and this number is only supposed to go up. In response to this demand, universities, MOOCs, and coding bootcamps have ramped up their offerings for prospective software engineers. Universities in the US graduate nearly 50 thousand students per year, while estimates for bootcamps are between 15 and 30 thousand graduates per year. While it’s hard to doubt that the demand for software developers in general is rising steadily, the ratio of juniors to non-junior developers entering the marketplace is definitely skewed towards those with less experience.
What this usually means for juniors today is that they are competing in a very saturated market, with the few junior jobs available having dozens if not hundreds of competitive applicants. I say “few junior jobs”, but why is that? Shouldn’t there be a relatively even spread between junior and senior openings? Not quite, and here’s why.
Developers are hard to interview
Software developers in general are notoriously hard to interview and vet properly. Even experienced developers with many years of complex projects and value added have a difficult time conveying their merits to potential employers. Many companies have resorted to catch-all ‘code-quiz’ style interview processes, with arbitrary puzzle-solving acting as a gateway to further interview stages. While this at least creates a concrete goal juniors looking for their first job can aim toward (studying these types of problems), it also means that companies are able to be brutally selective, filtering out all but the strongest puzzle-solvers. The irony here is that of course the code-challenge interview style is a poor indicator of how a candidate will perform day-to-day development activities, but that’s a topic for another article.
In addition to the problems with code-challenges, most companies are aware of the pitfalls faced when trying to hire software developers, and so they opt to not even bother interviewing juniors. Instead, they focus their efforts on more experienced candidates, with the hope of securing a more productive employee from the start. However, this just further limits the avenues for juniors to gain experience and become more competent, exacerbating the problem.
Juniors are risky
Finally, juniors are a huge risk to the company that hires them. They must first dedicate resources from more experienced developers in order to properly train the new hires. For an average developer it takes 3–6 months before they’re fully productive, and for juniors this time is extended to 6–12 months. Junior developers are also more likely to introduce bugs to the codebase and to deviate from clean software construction patterns and principles. With the proper testing infrastructure and mentoring opportunities in place, these downsides can be mitigated, but many times companies will have neither, and so low-quality code can make it into a production environment, creating even more work down the road and accumulating technical debt. These things are to be expected with a junior hire, but, much like with the interview process, many companies will just choose to not hire juniors to begin with in order to avoid these issues.
Further complicating matters is the fact that many developers, juniors included, will not stay at one company for an extended period of time. There are several factors that drive this, but many boil down to the fact that developers can often raise their pay by 50% or more, just from joining a new company. If a developer is not extremely happy with their current work situation, that kind of pay increase makes it a no-brainer when deciding to jump ship. Since junior developers have a longer ramp-up cycle for becoming productive and contributing value, companies will again try to partially mitigate this risk by only hiring experienced developers from the start.
What can you do?
As a junior developer, there are several things you can do to give yourself the best possible chance to get hired in the current competitive landscape.
One way is to hone your self-learning techniques to make sure you can stay on top of the changing industry, and stay as attractive as possible to potential employers. This will better enable you to maintain a high-quality portfolio of work and side-projects to give companies a better idea of what your strengths are as a developer. Continuing to work on your skills is extremely important: don’t fall for the trap that after receiving your degree or certificate that you are ‘done’ with learning. In software development, and especially with web technologies, your skills will stagnate without regular training and practice.
You should also focus on the fundamentals to ensure that your skill set stays flexible and marketable for the long-term, and is not greatly affected by the short-term trends in technology. Having a good understanding of the fundamentals will also allow you to pick up new, trendy technology relatively quickly, because you will have an understanding of what the problem being solved is, and an appreciation for tools that solve it well.
Finally, don’t be a junior. The best way to increase your chances of getting a job is to have enough experience and projects under your belt that employers will recognize you as skilled and valuable. This can be tough, especially if you need to be hired soon after finishing your education. One way to accumulate practical experience, even as a junior, is to offer freelance services. Doing this will widen your understanding of the technologies used in the real world, as well as grow your people and communication skills.
Wrapping it up
Junior developers are entering a tougher marketplace than ever before. Skill requirements are increasing, the number of juniors in the marketplace is skyrocketing, and companies are wary of adding a newbie to their ranks. Even so, as a junior there are concrete steps you can take to improve your prospects and gain valuable skills that will serve you for years to come. To all the juniors out there, don’t give up, and good luck!
If you enjoyed this article please consider clapping or sharing it with others. Thanks for reading.")
post5 = Post.create(title: "Self Taught Developer", user_id: paul.id, content: "The path of the self-taught developer is tough and clouded with uncertainty. There is no straight line from newbie to career programmer. Because of this, I believe all self-taught developers have a unique story to tell.
    In this article, I’ve shared a few stories and lessons learned from my time teaching myself programming. Hopefully reading about my experiences will help you reflect on your past and motivate you moving forward.
    Focus on the process
    When I first started learning to program, I never had the intention of making a career out of it. I just wanted to make a specific app.
    My journey started when I was a senior in college. I just finished Richard Branson’s book Losing my Virginity, and I was probably reading too much TechCrunch. I was pumped up full of entrepreneurial energy. I was constantly reading about how college kids were receiving massive amounts of investment for their mobile app ideas. I thought I could be one of those people.
    One day, while walking in-between classes, an app idea hit me. The specifics of the app aren’t important. The point is, the idea was unique and had a lot of growth potential (at least in my mind).
    I was convinced that I’d found the next big thing. I was consumed by the idea and stopped paying attention to lectures. My excitement for the idea quickly grew to the point where I felt the need to take action.
    There was one big problem. My idea was a mobile app and I didn’t know anyone who could build mobile apps.
    So I thought what the hell. How hard could programming be? I was losing interest in my major and I was spending a lot of time playing Xbox. I could allocate some of my free time towards building this mobile app.
    Sometimes being naive helps you take action when you normally wouldn’t.
    What we had was a college student with no programming, business, or design experience trying to learn Android so he could build a complex app. I guess that’s what you get when you mix a big idea with the Silicon Valley hype machine.
    I wish I could tell you things went well from here. 😉
    I bought a few books on Android development and spent many hours in my room trying to duct-tape this app together. I didn’t care how the app worked. I just wanted a finished product, if that meant copying and pasting code from any source I could find.
    I thought I could get away with learning very little about programming. I became too focused on the end result. The light at the end of the tunnel kept driving me forward.
    Time went on and the app turned into a Frankenstein of copy and pasted code. The app didn’t have many features and it barely ran without crashing.
    It wasn’t until I accidentally got into a Computer Science class that I realized that maybe I should focus more on learning. My inability to program lead me to abandon my initial app idea. I had come to the realization that I wasn’t going to make the next big thing, at least not yet.
    Luckily, over time I corrected my behavior and took learning more seriously. I started to enjoy programming and eventually started a career as a software developer.
    Take Away
    Having a big idea is great, but beware when the idea becomes all-consuming. It’s a powerful force and it consumed me for a long time. It put my focus on the end result rather than the process of getting there.
    It’s important to remember that learning anything big, like programming, requires many small steps. The only way you are going to learn anything is by focusing on and mastering each individual step.
    When you get too focused on the end result, you start taking shortcuts. Shortcuts might lead you to short-term progress but in the long run, your lack of knowledge will always catch up on you. Learning new things is like building a house. You start with the foundation and build up. If the foundation is faulty the whole thing will crumble down sooner or later.
    Sometimes building a strong foundation requires you to slow down. There’s no shame in going slow. The people who understand the basics the first time will end up going ahead of the people who have to go back and relearn them.
    I was a perfect example. From the outside, it might’ve looked like I was a programming whiz kid. In reality, I couldn’t build an app to save my life.
    There’s an old Chinese proverb that goes:
    It is better to take many small steps in the right direction than to make a great leap forward only to stumble backward.
    Focus on the process each day and you will surprise yourself with how much progress you make.
    Stack Overflow is awesome (and dangerous)
    As I was building the app, Stack Overflow became my best friend. Anytime I got stuck I would try to craft together a question to ask the Stack Overflow community. I averaged a few questions a week.
    Not only would I post questions, I would treat the answers on Stack Overflow as Gospel. I would spend a crazy amount of time scouring the site to try to find an exact chunk of code that would fix my problem. Once I found the answer, I would copy and paste it right into my codebase and try to make it work. I spent little time trying to understand. I made brute-force trial and error a new art form.
    This process went on for a while, until eventually, I wised up and realized the flaws of this approach.
    Take Away
    Copying and pasting is a terrible way to learn how to code.
    Stack Overflow is a blessing and a curse. It’s great at helping you solve and fix problems. But it also can become a crutch that you always depend on if you aren’t careful.
    Sometimes, the website is too good at solving your problems. It creates a false sense of confidence that will only lead to more headaches down the road.
    It’s impossible to learn anything if the answers are constantly given to you. Make sure you make a few attempts at solving your problem before going to Google.
    If you do find yourself copying and pasting code, make sure you spend at least a little time understanding the code block before moving on. There are no short-cuts in the learning process.
    Find experienced help
    The first thing I did after I decided I wanted to learn programming was buying two Android development books.
    At the start, I followed the exercises in the books closely and worked through all the example projects.
    I quickly got bored and/or frustrated following the book. I decided to go off on my own and figure out programming myself.
    As you’ve read above, that slowly resulted in disaster.
    I would spend many hours a week isolated in my room or at coffee shops. I cut myself off from the world. I felt like there wasn’t anyone who could help me, because no one I knew had any experience with Android development.
    Days turned into weeks and I wasn’t making much progress.
    At one point I had the bright idea to download a massive C library called FFMPEG. My app needed to edit videos, so I thought it was a good idea to utilize the library’s robust functionality. It wasn’t the smartest move, considering at the time, I could barely get my Android app working.
    I wasted a lot of time trying to read the C code and figure out how I could use it in my app. I became frustrated and eventually abandoned the library.
    Luckily, around the same time, I signed up for an Object Oriented Programming class and somehow got in. I was the only non-Computer Science major in the class. I don’t know how or why I got selected. I think there was a bug in the enrollment software. 😉
    The first assignment was to build a Blackjack program. I’d been teaching myself programming for 5 - 6 months at this point, and I felt confident with my skills.
    I finished the assignment and felt good about my work. However, that feeling quickly faded.
    My whole program was written in one huge method. Just about everyone else in the class was able to pick up on the fact that the program needed to be separated into classes. Not good.
    Take Away
    Luckily, the classwork and guidance from the teacher allowed me to take a step back from my Android app and reflect on my development abilities. I started to value learning a lot more and reigned back my desires to make a completed app.
    If I had spoken to just one experienced developer in those early days, they would’ve seen what I was doing, set my priorities straight, and talked some sense into me. They would’ve helped me correct my path when I was going down useless dead ends (like trying to work with FFMPEG).
    As I outlined in a previous article, experienced developers are like a compass. They won’t get you to your destination but they will make sure you are pointed in the right direction. Their help can often be the difference between success and failure.
    In hindsight, there were a lot of ways I could’ve found help. I could’ve tried to find a professor/student at the university with Android experience. I also could’ve tried finding an online Android community.
    Instead, I isolated myself.
    Isolation is a double-edged sword. On one side, it helps you focus on the task at hand. On the flip side, it removes you from the world starving you of crucial feedback.
    Make sure you seek out guidance wherever you can find it. It will save you time and frustration down the road.
    Craft your environment
    This might be the only thing I felt like I did right when I was teaching myself programming.
    Throughout my life, I’ve been really bad at studying for tests or doing my homework at home. There are just too many distractions at any given moment. I would often try to find refuge in libraries or coffee shops.
    Luckily I applied this rule when I was teaching myself programming.
    I ended up becoming a regular at a few local coffee shops around town. I preferred coffee shops over other study locations because they provided some variety and it’s easy to hide yourself (easy access to caffeine doesn’t hurt either). Coffee shops are also nice because you can choose a location where you know you won’t bump into people you know.
    If I was studying at home, I made sure my door was shut and my roommates knew not to disturb me for a certain period of time.
    Regardless of where I was, I would make sure my music was loud enough so I couldn’t hear what was going on around me. Upbeat music without lyrics worked best for me.
    I can’t say I was perfect at finding a distraction-free work environment but I was able to succeed a majority of the time.
    Take Away
    Having the right work environment is often an overlooked part of learning. Your work environment shouldn’t be distracting and should allow for long uninterrupted stretches of focus.
    Focus is a foundational component of memory and skill acquisition. When you try to encode new information into your brain, the strength of the encoding is directly linked to the intensity of your focus. When your focus is weak, new information will be less sticky which will result in slower learning and more time studying.
    Take any world-class performer and look at how they practice. Do you think they are checking their phone every 5 minutes? Probably not.
    The easiest way to increase your focus is by crafting an environment where there are minimal distractions. This can be done in a few ways:
    Finding a location where people won’t interrupt you
    Putting your phone in airplane mode
    Using some sort of timed website blocker for social media and news sites
    Wearing headphones and listening to non-distracting music (preferably a long playlist so you don’t have to constantly switch songs)
    Avoiding TV or other highly stimulating surroundings
    Having a notebook nearby to write down any tasks or ideas that pop into your head
    Only you can decide where and how to craft your environment. But make sure you do, because it’s worth it.
    Get out into the world and meet people
    My first programming job was sort of a random occurrence. I just moved to Omaha, Nebraska and I had around a year of self-taught development under my belt.
    I knew very few people in Omaha, so I searched Meetup.com to try and find other people interested in Android development. Luckily, at the time there was a Mobile Meetup which covered both iOS and Android development. So I built up the nerve and decided to go to the group.
    Going to that first meeting was nerve-racking. I spent around 10 minutes in my car at the venue deciding if I should go in or drive off. I was intimidated. I wasn’t confident of my programming skills and I knew everyone at the meeting had much more experience that I did.
    I finally said, screw it and went inside. I’m glad I did.
    I started to attend regularly. During one Meetup, not too long after I moved to Omaha, I met a recruiter who was looking for an Android contractor. We talked for a while and I got an interview for the job later that week.
    Before the interview, I felt confident. During the interview, I was a deer in the headlights. The interviewer was talking about the project I’d be working on and it all went right over my head. I tried to stay engaged but they could tell it was out of my range.
    After the interview, they asked me to hang-out for an hour so I could talk to someone else. Knowing I blew it, I walked around downtown trying to clear my head.
    I ended up interviewing with someone else, and shortly after, they offered me an internship. The CTO was doing all the Android work at the time and they needed someone to take on the load. I started that day.
    I was so shocked that after I signed all the paperwork and got my work laptop running, I went over to the CEO and asked if it was a paid internship or not.
    The internship turned into a full-time job and I started my career as a software developer.
    Take Away
    When you are self-taught, people are not going to come and seek you out. You will need to step out and find the opportunities.
    People graduating from four-year universities and code schools have the advantage of leaning on the schools to help them find jobs. Self-taught developers don’t have this advantage.
    The best way to find a job as a self-taught developer is to go out into the world and meet people. Websites like Meetup.com are great for finding programming specific groups that meet monthly or bi-monthly.
    Do what you can to build up the nerve to go to these groups. Be friendly and talk to people about your experiences. Make sure people know of your long-term goal of finding a job.
    Put yourself in situations where something positive might happen. You can’t win a raffle if you never buy a ticket.
    Consider any opportunity that comes your way, because even if it looks like a dead end, it has the potential to lead to something bigger.
    The key is to think of job opportunities in the long-term. Internships or part-time jobs might not give you your desired salary upfront but they might open up doors in the future.
    Conclusion
    As you can see, I made a lot of mistakes in my learning journey.
    Learning something new is never a straight road. There will be turns and dips (maybe a few will take you off the road).
    I encourage other self-taught developers to share their stories. Not only will they provide valuable insights, they will also help shine a light on the unique paths we’ve taken.
    Hopefully, my story and the lessons I learned will help you moving forward.
    Join hundreds of other self-taught developers on my Zero to Programmer Newsletter. I write about what it takes to become a successful self-taught developer. Sign up here…")
post6 = Post.create(title: "What is Sinatra? A Basic Understanding and Initial Setup", user_id: paul.id, content: "So, you’ve been working hard, coding your life away on Ruby — making your databases, creating your migrations and seeding it all with your dummy data pulled from APIs — and mapping out your Domain Models to figure out who keeps track of what (and I don’t know’s on third). But now how do you create a way for a User to interact with any of that stuff? Do you force them to stare down at a CLI?
A Mac terminal which is not easy on the average user’s eyes
who wants to stare at that all day, huh?
Well, probably not. We’d probably want them to view things on a bigger screen that’s easier to read — aka websites. But how do we go about setting up our ugly files and lines of code into something more readable?
Enter Sinatra
It’s Frank Sinatra ok I was trying to be clever
Ok maybe not that guy. But funny enough, Sinatra was named after the man himself (who would’ve thought?). Sinatra — the Ruby gem and an open-source project — has provided people with an easy alternative to creating web applications that can be up in mere hours.
Sinatra is a convenient way to get your program up and running on a user-friendlier interface for people to see and interact with. It’s important to note that there should be a basic understanding and knowledge of HTML, CSS, and file paths (or routes) in a URL before delving in. However, Sinatra will not make beautiful websites with buttons and colored text right from the start.What Sinatra does, is allow programmers to create and link their front-end websites to their back-end code together in a way that follows the MVC pattern of organization. In order to get Sinatra set up with our Ruby files, we must first include it into our Gemfile, or we can install it directly through the terminal interface:
through the terminal
gem install sinatra
or in the Gemfile (before running a ‘bundle install’ command in the terminal)
gem ‘sinatra’
And we’re done! Or…are we?
We’ve only downloaded the gem, which allows us to utilize the built-in methods incorporated into the gem (THANK YOU). Sinatra also serves as a great segway or launch-point into larger, robust frameworks later down, such as Rails. As a Domain Specific Language, or DSL, Sinatra’s design allows us to build upon another gem called Rack, so that we the programmer can have more accessibility and functionality in our web applications.
Sinatra provides us access to basic methods such as ‘get’ and ‘post’ that allow us to use Ruby code to create and link our HTML pages together! And in the reverse way, we can incorporate Ruby code directly into our HTML pages (thanks to .erb file extensions already built in to Ruby), which can allow our files to talk to our Sinatra methods and to follow the conventions of CRUD in our programs.
In order to use Sinatra and its built-in methods, we must first inherit from the Sinatra class and Base module:
class ExampleClass < Sinatra::Base
In oversimplified terms, when our User enters a website, our User sends a “get request” to the server to get a specific HTML webpage, and the server will respond by sending back the HTML webpage in “response,” which is easier for the User to view and understand. Our ExampleClass class from above essentially acts as the traffic intersection, acting as a space for requests and responses to meet and diverge — making sure that each of them don’t “crash” or conflict with one another, and making sure that our webpages can be accessed without error. Get and Post are the Sinatra methods that act as traffic lights and signs — with these methods, our User requests and server responses know which turns and directions they need to make so that our User can navigate their way around an entire website without running into a dreaded “Error: 4xx” message.
There is a lot to explore with Sinatra, and a lot of cool functionality that Sinatra provides us. If you are interested in learning more about what Sinatra can do and how to fully implement it, here are some additional links
Sinatra ReadMe
Sinatra Routes")
post7 = Post.create(title: "Become the junior developer that companies want to hire.", user_id: ann.id, content: "Who am I, and why listen to me?
    As a self-taught web developer, I struggled to overcome the barriers of entry into the workforce. I had always done well in academia, which resulted in professor affirmation, offers for advanced classes, and offers for scholarships. I naively believed the workforce to behave similarly: that all I had to do was be good at what I did and the jobs would come to me. If I could pass an interview the way I could pass a test, my encyclopedic knowledge of programming would make finding a job easy.
    That was not the case. Not only did job offers not come flooding into my mailbox, but I could rarely get a response to an application when I reached out to companies directly. What was wrong? I was a good developer. I could solve real world problems. I had created applications and met customer demands. Somehow, I was wholly unprepared for an enterprise setting.
    I doubted my abilities. My ego was crushed. I thought I was intelligent; I thought my projects pushed the envelope; but employers seemed to disagree. They often did not see me as even worth interviewing. The most common feedback I received was that they required a degree. The fact that I had invented applications that generated revenue did not matter. I gave up and pursued other passions, leaving web development as my favorite pastime that it had always been.
    Years later, I decided to pursue web development again after encouragement from my peers. I was still passionate about it. I was good at it. It made me happy. I attempted to re-enter the workforce, knowing from past experience that it would not be easy. I took the act of job searching much more seriously than before. The difference? Humility. You should know what you don’t know, and I knew there was something I did not know about web development careers and how they differed from web development as a hobby.
    I spent a lot of time researching how to build a résumé and portfolio, the interview process, and the soft skills of developer careers. I sought résumé and portfolio critique. I did as many practice interviews as I could book. I networked every opportunity. I still research these topics to this day. I take a strong interest in them, as my ignorance of these topics held me back for so long. I am passionate that other developers be prepared to face these issues as well, especially those whom are self-taught, because they are often overlooked in academia and barely existent online.
    Since entering an enterprise setting, I have been involved with as much interview training, sat on as many interview panels, and gathered as much employee feedback as possible. I have applied what I have learned to everyone I have come across who seeks it — from Reddit threads to direct LinkedIn messages. This is my attempt to publicly document and share this knowledge, in hopes that talented and self-motivated developers receive the fair shot at success they deserve.
    Education 👨‍🎓👩‍🎓
    
    Before you can become a junior developer that is in demand, you must first become a junior developer. This article is not equivalent to an education. This article is meant to be supplemental to an education, be it formal or self-driven.
    Cracking the Coding Interview by Gayle Laakmann McDowell is another powerful education supplement that I highly recommend. It covers many of the soft skills required by companies and ensures you know the hard skills. You will see it recommended time and time again online, and it is easily worth the $30 investment.
    I encourage anyone to at least read the data structures and algorithms discussed in that book. If you can already solve the problems, implement the data structures, or create the algorithm, then just go to the next one. If you find yourself feeling a bit hazy about the implementation details, I strongly recommend that you write it yourself. This will add to your portfolio and help solidify the knowledge in your mind. Learning through teaching is a practice that I recommend often. It was my inspiration for Implementing Quicksort in JavaScript and the resulting GitHub repository and NPM package for my portfolio.
    You need go a step further than merely knowing what the data structures and algorithms are. Understand the trade-offs between them. When do you choose one over another? Which is more extensible and under what conditions? Which uses less memory or is faster to execute? When would you want to trade memory or efficiency for these other features and why? Knowing the answers to these questions will be very important during your interview process. You will almost certainly be asked to solve a problem that requires a complex data structure. Whichever you choose, you will want to be able to defend. “It’s the first data structure I remembered” does not fly too well on a production application, so it does not fly too well in an interview either.
    Open Source 📄
    
    It may seem obvious, but a portfolio is meant to be a document of your accomplishments. So document them! Thoroughly. I mistakenly spent my earliest years creating proprietary software. My server-side code was backed up to several hard drives, and my JavaScript never saw user eyes without first being ran through a minifier. I believed that in order for code to be profitable, it can’t be copied. I was wrong.
    I encourage you to open-source as much as possible. Your Quicksort implementation is not doing you any favors on your hard drive. Your intro-to-programming video game may be embarrassingly inefficient, but you are selling it short. These beginner’s projects show:
    You wanted to make something and have an interest in programming outside of work.
    You learned to make something and are both willing and capable of learning new technologies as needed.
    You completed a project without giving up. You can see challenges through to the end by overcoming obstacles instead of quitting.
    You did something. If you do not publish your code, employers will assume that you never wrote it. It is so much better to write something inefficient than to write nothing at all.
    Since open-sourcing my projects, my development career has earned more value than those projects ever offered me on their own. I have received a significant amount of community feedback that has allowed me to prioritize what is important to customers and account for use cases and environments I never would have otherwise considered. Bugs that never existed in my environment have arisen in others’. From their reports, I have identified and learned from mistakes in my code designs. Today, I can create components and packages that are extensible to more use cases than just my personal portfolio and projects. These learned concepts and deeper understanding of technologies improve my quality of work.
    For each project, I recommend adding the following to its README.md:
    An actual name. repository-name is nice and automated, but try to give it a description that differentiates you from other candidates. Every candidate has a “TODO App” and “Shopping List.” Why is yours better? Try “React TODO App” or “MongoDB Shopping List.”
    An actual description. “TODO App” can mean a lot of things. It is obvious to you, because you made it. What CRUD operations does it support? Does it use server-side code? Who is the target audience? What problem are you solving and how? For example, my Shopping List application “was created for my father, who needed a printable shopping list for his home care aides. To support his declining memory, the application keeps track of past items so that they may be re-added with ease.” I have put the customer first, identified a problem, and executed on a solution.
    The tech stack used. HTML, JavaScript, React, PHP, SQL, Docker? Let people know what you have experience using. Even if your project is not the cleanest code or optimal implementation, you have demonstrated that you understand these technologies at least in concept. You know what problems they solve, and that’s the largest hurdle. Perfecting their use can be learned on the job.
    Nobody, and I mean nobody, is going to clone your repository, install it, then run it locally just to see your work. Companies are often flooded with candidates (whether or not they are good candidates). They will just move on to the next candidate instead. At this point in time, to the company, you are statistically likely to be average. Their time is better spent researching another candidate than wasting time or muddying their machine. If your project is front end, consider deploying it to GitHub Pages. If your project is not front end, consider adding screenshots of any GUI, linking to a live demonstration of any API, or documenting example inputs and outputs.
    Document your API, if there is one. This is good experience and practice for when you are creating highly used, production-facing APIs in an enterprise setting. Companies want good documentation, even for APIs that are only used internally. Every time an internal customer references the documentation, there is one less support ticket to answer and one more free hour for a developer to implement new features instead of support existing ones. When the creator of an API leaves the company, how quickly can their replacement support the service they have inherited? Many companies have been burned by this before, and they know that good documentation is indicative of team-thinking.
    Networking 🌐
    
    Wiki Meetup in Thailand at Central Embassy by Mohammed Galib Hasan (CC BY-SA 4.0, unmodified)
    If you want to stand out, then you first need to stand. Not only should recruiters be able to find you, they should be impressed by what they see. Get your name out there for good reasons.
    LinkedIn
    Under your Career Interests, let recruiters know you are open. Reply to every recruiter, whether or not you want the job. Practice your professional communication skills. Practice putting complex social and career situations into words that are articulate and unoffensive. These skills will translate both into an interview setting and the workplace. Sometimes, you know what you want, but you do not quite know how to say it. Later, when you are interviewing, it will be good to be able to articulate professionally what it is that you want from the job — and that is the best way to get it.
    Practice declining jobs in which you are not interested without burning bridges. That recruiter may reach out to you in the future with a better opportunity more tailored to your interests. Similarly, job offers that you do not accept today may become desirable in the future. Finally, when you leave your first job for your second, your experience in rejecting your current company without burning bridges will help you get that professional recommendation.
    Squeeze recruiters for information. Find out what is in demand. For what skills are they looking? If they inform you that you are not the right fit for a position, ask them why. What are you lacking? What should you study? If you re-apply in some number of months, what do they want to see improved that could land you the position? Drop your pride, up your humility, and understand that employers want an employee that can learn, not one who thinks they know everything already. A candidate telling me that they will be back and more ready than ever is a very positive sign. It shows dedication, it shows an eagerness to learn, and if they come back having corrected their faults, it shows an ability to succeed at their goals.
    Learn your worth. No matter the recruiter or the position, what is the compensation? What does a front end engineer make in Seattle? What does a PHP developer make in Indiana? What does a React Native developer make in India? (Do note that I included a location in each of these. The greatest determinant for compensation is location!) When your first job offer inevitably asks what you want as far as compensation, you will know what you are worth. Do not be afraid to high-ball. Once they have decided that they want you, they will not just reject you for asking too much. They will counter with their max. This is better than low-balling yourself and making closer to minimum wage than your worth. This is a great way to lose motivation, feel underappreciated, and quickly burn out during your job.
    Link to your LinkedIn profile liberally. Your projects outside of LinkedIn should include links to LinkedIn. Recruiters who are impressed by your work need a way to contact you. Developers who are impressed by your work may be willing to give you a job recommendation. For example, I end every Medium article with “Follow me on LinkedIn.” As of February 2020, these link shares have resulted in over 700 connections.
    Stand, and allow yourself to be found.
    Twitter
    Keep your Twitter account professional. It is okay to have personal tweets, but do not have anything controversial. Build a following by constantly tweeting what you have accomplished, and share your Twitter profile on your projects to build a following. For example, I end every Medium article with “Follow me on Twitter.” As of February 2020, these link shares have resulted in nearly 500 followers.
    Twitter is free marketing. I have never made a social tweet. I maintain a strictly business Twitter account. If I post what I have made, people will see it, interact with it, provide feedback, and share it. Related hashtags, such as the tech stack, can be used to encourage bots to auto-retweet you for a wider audience.
    Résumé 💼
    
    Photo by Staff Sgt. Kayla Rorick
    The million dollar questions are, “How do you stand out from every other equally-educated recent college graduate?” and “How do you show that your self-taught education is equal to your accredited competitors?”
    First things first, actually write your résumé! Be sure to keep your portfolio and résumé in sync with your LinkedIn. This helps recruiters find you and know what tech stacks with which you are familiar.
    Keep your résumé to one page. If you think you need more than that because you have accomplished so much, you are wrong. For reference, my 17 years of experience is still a one page résumé. It is more likely that you are including information that should not be in a résumé. Remember that a résumé gets you to the interview. The fine details come up in the interview itself.
    LinkedIn often has promotions with free courses on their LinkedIn Learning platform. Completing these courses adds a Certification entry to your LinkedIn profile — an easy and fun way to stand out.
    Tailor your résumé to the job to which you are applying. Your education, experience, interests, and goals can all be conversation pieces during the interview. Know how they relate to the job. What formal training have you had in the field? Note college courses or online training that were particularly relevant. What past work applies specifically to this job? Remove unrelated projects. An employer seeking a front end engineer is not going to ask you about the time you coded a Caesar cipher in assembly. Any time they spend reading about it is mental fatigue that turns them off to you as a candidate. Any time they spend discussing it with you is likely time wasted. They will not have learned if you are a correct fit for the job. That time is better spent informing them of your strengths in the field.
    Do not list items on your résumé that you cannot defend. You may think you need to lie to land an interview, but you do not. Part of the interview process is specifically tailored to weed out liars. You achieve nothing more than wasting everyone’s time, including your own. You will be grilled on technologies you list and asked to give specifics about past projects. It will be apparent if you are not familiar with these technologies or supposed projects. It does not look good to claim to have worked with NPM and Travis CI but be unable to define them, what problems they solved, or how these tools solved those problems. Even vague answers can be red flags. You know that NPM managed your Node packages, but you do not know what packages, why you would want this tool on your project, or the commands you used. These are great reasons to explicitly not hire you. It would realistically be a better choice to hire a candidate who has no experience with NPM than one who supposedly does have experience but cannot answer the above. The inexperienced candidate may be able to learn. The lying candidate has demonstrated that they are incapable of learning.
    I do not say the above to make you fear of listing a technology on your résumé. I say the above to emphasize how many candidates lie, how employers have come to expect this, and to encourage you not to waste your time lying also. If you honestly have experience with a technology, do not be afraid to list or discuss it. If you do not know the answer to a question, admit it and explain why. “We used NPM to install packages, but the only one I know is npm install. The CI/CD pipeline ran the rest automatically, so I am unfamiliar with them.” You have demonstrated that you do understand what the tool is and what the tool solves. You have not demonstrated that you are incapable of learning. If I heard this answer, I would think you are perfectly capable of learning NPM better on the job. This is in stark contrast to the lying candidate who claims to have used a tool but cannot offer specifics about when, where, or why.
    Sell yourself. Don’t sell yourself short. Be proud of what you have accomplished and be confident in your verbiage. You did not “make a small website for a friend.” You “exceeded a customer’s expectations by delivering a accessibility-compliant single-page-application and maintain it through an Issues tracker and a CI/CD pipeline.” Employers do not want to make small websites for your friends. They want to make SPAs, perform long-term maintenance, track issues, and automate deployment. Your description of your project should not be “I made a tic-tac-toe clone in the browser,” but “A React application that implements Flux architecture through Redux, supporting keyboard navigation and performing animations with CSS.” Remember to tailor the résumé to the job and describe your projects with marketable terms.
    Mentality 🧠
    
    Know yourself.
    Why are you interviewing for this position? What are your short and long term goals, and how does this position help you reach them?
    For my last interview, my answers to these questions were: I want a higher skill ceiling than my previous job. I want to be challenged to learn new technologies and better myself. I feel like I have plateaued at my previous place of employment, and I have an intrinsic motivation to become the best developer that I can be.
    Employers want to know you are a right fit for them. If you just want money, you are a right fit anywhere — meaning there is no guarantee you will remain loyal when a competitor offers more. They do not want to invest in you if this is the case. For my last career shift, I would have been willing to take a pay cut, because it meant I could achieve greater things, and that is what mattered to me.
    Interviews Should Not Be Scary
    You should have the mentality that every interview is good for you. Much the way you can squeeze a recruiter for information, you can do the same with an interview. Determine what tech stacks their company uses, what skills are in demand, and why they are not interested. Some interviewers are unable to give you this information without first passing it through to HR, so be sure to follow up with HR after the interview. Use this information to better yourself between interviews.
    Interview places that you “know” you will not accept. I put know in quotes, because I have known someone to accept a job offer after following this advice, interviewing with no intention of accepting, finding out they actually loved the company, and accepting the offer. This is my only morally-ambiguous piece of advice. Practice interviewing at places in which you do not have an interest. Squeeze them for the same information — what is their tech stack, what skills do they value, in what areas can you improve, and if you receive a job offer, what is your worth? These practice interviews will allow you to better communicate your soft skills with less anxiety, and it will show when you take on an interview for a job that you really want.
    Treat your interview like it your first day on the job. This should help decrease your anxiety and feel less pressure of being judged. Interact with the interviewer as if they are your coworker. The entire point of an interview is for the interviewer to determine how you would behave on the job. When they ask you questions, it is not because this is a test, and you have to achieve 90% of higher to pass. It is because they want to see your thought process when you are given real world problems to solve. This thought process is not just getting a right or wrong answer. How many edge cases did you consider? Could you discern which did or did not apply to the customer in this use case? Did you take extra steps when solving the problem to make your code extensible to possible future modification, despite it not being a part of the current feature request? Can you communicate difficult technical concepts, data structures, algorithms, and their trade offs? Do you know when to ask for help, or do you think you know everything? These are potential areas in which the interviewer is taking notes, because these are the things you will work on in a team. Engage your interviewer. Talk to them. Ask them questions. Describe your thought process. Think out loud. Seeing them as a coworker really helps aid in this task.
    Interview Preparation 👨‍💼👩‍💼
    
    To prepare for your interview, make sure that you are intimately familiar with the S.T.A.R. format. When your interviewer asks you to describe an event, try your best to answer with S.T.A.R. This ensures you provide the information for which your interviewer is probing and that there is no miscommunication between the two of you. If your misinterpreted the question, it should become clear by the situation or task that you are answering the wrong question. If you are answering the right question, the interviewer may be looking for relevant experience (situation), problem identification or communication skills (task), problem-solving or technical skills (action), or ability to deliver results, compromise, or learn from mistakes (result). By answering with S.T.A.R., your bases are covered, and strong communication is achieved.
    Create a list of your most impressive projects.
    Impressive is subjective, but here I mean the projects that were the most extensive or unique. You worked on a team, you worked with clients, you worked with a manager, you received notable amounts of community feedback, it went viral, or you accomplished something that took weeks not hours. Prepare to reference your most impressive projects during behavioral questions. Unlike the quantitative, encyclopedic knowledge of programming, sometimes you can draw a blank when asked qualitative questions. You have so much experience writing for loops and traversing arrays that it comes second nature when asked to do so. Unfortunately, when asked to “name a time you had a disagreement with a superior,” you might not have an example at the ready. Your mind can go blank as you try to process this question.
    What if I’ve never had a disagreement? If I say I have not, do I sound inexperienced or like I’m lying? And if I have, will it sound like I am difficult to work with or oppositional? What counts as a disagreement? Who counts as a superior? I have little to no work history! How am I supposed to have disagreed with a superior?
    Do be aware that behavioral questions do not typically mean on the job. In the previous question, a superior may be a professor or a mentor. A disagreement does not need to be a heated argument, but could be different opinions on implementation details. You can make the question as generic as it needs to be to have an answer, and that’s why creating a list of your most impressive projects up front can be beneficial.
    I highly recommend reading through Amazon’s Leadership Principles. These are some of the most well-rounded, all-encompassing, and rigorously tested behavioral skills on the Internet. You would be hard-pressed to find a soft skill that is both important and not on this list. For each leadership principle, I recommend associating it with one of your impressive projects. Add new projects or situations as needed.
    Project A — I learned something new.
    Project B — I invented a tool to aid the development process.
    You may absolutely assign multiple principles to a single project, but I strongly recommend that you have a project or situation for each principle. If you find yourself unable to associate some, think harder. Try removing the job or development aspect from the association. A time you were frugal may have just been in your day-to-day life, where you have managed to cut expenses in order to prioritize paying off your student loans and therefore decreasing your accumulated interest.
    Once you have associated each leadership principle with a project or situation, clean up your list. Remove projects or situations that are not associated with any soft skills. You should be left with just a list of your actual most impressive projects.
    Bring this list with you to interview. When you are asked a behavioral question, if needed, read over this list to jog your memory of a time it applied. Do not write the soft skills next to the projects. The point of this list is to be memory-jarring. You should be able to skim it in a few seconds in response to a question, not spend several minutes reading a page of summaries before you answer. The combination of the location (project) and event (question) should be enough to quickly jog your memory of any relevant experience you may have.
    It may feel odd to have to look at notes of your own life story in response to a question about yourself, but do not worry. Interviewers are aware of the impact of nervousness during the interview process, and I assure you no one will mind that you took notes about your own soft skills. People struggle with these questions more than any others, so your ability to answer at all will put you ahead of the curve.
    Bring data.
    Numbers are the universal language. They remove ambiguity and drive business decisions. If you have data to accommodate your claims, bring it. By what percentage did you boost productivity or revenue? How much money did you generate? How much time did you save? If you only have qualitative results, they are better than nothing. Measuring your efficiency not only drives home the reality of your value, but it shows a mindset of valuing analytical data that indicates that you will do the same on the job.
    For example, some data I collected prior to my last interview:
    I reduced network traffic by 30% (gzipped) to 60% (non-gzipped) by implementing an opt-in (backwards compatible) compression algorithm on the API. This was not a complicated algorithm. I never had formal training in compression or data. I simply noticed that network traffic was being wasted downloading the same property names repeatedly. A quick Google search shows that I was not the only one to seek this data conversion. I measured the packet sizes with and without this change, and viola — data.
    I simplified an existing internal testing framework for a project. This resulted in the development time for end-to-end testing decreasing from 3 days per path to just 1. This wasn’t rocket science. I was annoyed by how difficult the existing framework was to use, so I turned common commands into re-usable function calls. When the team responded that it was much nicer to use, I documented the change in development time.
    Be confident.
    Confidence is important. Identify your insecurities and practice addressing them. If your interviewer probes these aspects of you and your achievements, you do not want to validate their concerns by lacking answers.
    Do you lack a degree? Why? You thought it was the right choice for you to make. Why? You decided that you could achieve academic equality to a college graduate. Why? Leave your fear of judgment behind and take pride in your decisions. If you cannot be confident that your choices thus far are the right ones, how can you be trusted to make the right choices for the company?
    I lack a degree in Computer Science. It was my biggest insecurity in my first attempt to enter the workforce. Now, I am outspoken against learning software development through college curriculums. I am confident that it was the correct decision for me. It would have cost me too much money and provided too little benefit. I learned faster on my own than in a classroom. I have worked with developers in open-source, in person, and engaged myself in as many developer communities as I can find. I have proven that I can comprehend and discuss complex topics, so I am confident that a college education would not improve myself as a developer. I can articulate that sentiment to an interviewer.
    Once you understand yourself, practice articulating it. Practice by yourself, putting your thoughts into words. There is a lot of emotion behind anxiety, insecurity, and fear of judgment. It can be difficult to find the right words to label emotionally-charged aspects of your life. Practice, practice, practice. Once you believe you have adequately described your biggest challenges, practice with friends and relatives. Then, practice with mentors and coworkers. Practice, practice, practice.
    Seek honest feedback. If your goal is to improve or land a job, you do not want your ego stroked. You want constructive criticism. Make sure those close to you know that they should not be afraid of hurting your ego, and make sure your ego is not hurt by opportunities for self-improvement.
    In the end…
    When the interview has come to a close, your interviewer will often give you an opportunity to ask questions. Do ask questions. This shows that you have an actual interest in the company and are not just here for a paycheck. Do not ask about pay, vacation time, time off, or anything else that insinuates that you care more about money than your career. Do ask about company culture, opportunities for growth, team dynamics, tech stacks, and making sure you are a good fit for each other. You are interviewing the company just as much as the company is interviewing you. They do not want to put you in an environment where you will not be happy — that’s the fastest way to have an employee quit. Identify what is important to you, and ask how questions related to your short and long term goals.
    End the interview with a closing statement. It does not feel as natural as it should, but after you have asked your questions, segue to a closing statement. “I don’t have any further questions, but I do have one comment.” This is your opportunity to describe your best qualities and what you can bring to the team. Instead of the interviewer leaving the interview fixated on your minor imperfections, have them leave with a positive thought. If your greatest qualities did not come up naturally during conversation, now is your opportunity to address them. During an interview, the bottom of my notes reference a few of what I consider to be my strongest qualities. If they came up already, I ignore them; if they did not come up, I bring them up now.
    Conclusion 🔚
    If you have any questions or relevant great advice, please leave them in the comments section.
    To read more of my articles or follow my works, you may connect with me on LinkedIn and Twitter. It’s quick, it’s easy, and it’s free!
    You can also check out my portfolio on CharlesStover.com.")
post8 = Post.create(title: "Ruby CLI Games: Setting a Timer", user_id: ann.id, content: "Our project started out the way many projects do: we mulled over classic project ideas and settled on zombies. The plan was to create five mini games to embed within our larger zombie-killing theme. The ideas seemed simple enough, but as is often the case with programming, simple ideas can be the most difficult to implement.

    After solidifying our plans for each mini game, we realized that in order to make the games more interesting for the user, we should include a timer. After all, pressure is what gets the adrenaline pumping. Unfortunately, it was difficult to find documentation for a timer in a CLI program. I’m still pretty new to programming, but it didn’t seem like there was an easy way to have two methods running simultaneously.
    With a helpful lead from our instructor, we found that it was possible to use the Time class to achieve the same result.
    
    The goal here is to give the user a time limit of five seconds to stab the zombie as many times as possible. The first step is to convert Time.now into seconds (.to_i). As long as the user’s current time is less than five seconds past the start time, the code inside the while loop will be triggered so that every time a user presses the enter key, the terminal will display “STAB!” and the stab number will increase by 1.
    This seemed to do the trick, but what about the laissez-faire game player that presses the enter key at a slow pace? Technically, as long as the while loop was triggered in time, the user could still wait indefinitely and have their last enter key count in their stab number. To solve this problem, we used an if/else statement.
    
    By including the if/else statement, we ensured that the number of stabs count would only increase if the user hit return before the time limit was up.
    And that’s it! Good luck implementing timers in your own CLI programs!
    
    
    Note: If your method continues on to another method that receives an input from the user, you may have to include a failsafe to avoid accidental extra inputs registering incorrectly.")
post9 = Post.create(title: "I LOVE POKEMONNNNNNNN", user_id: matteo.id, content: "Our first project was about creating, accessing, and manipulating databases in Ruby. The way a Pokemon game is set up made it seem like a perfect candidate for our project, but we lack both the time and ability to completely recreate a Pokemon game through ruby. Cutting down on features was a necessity. This was an incredibly important part of our design process but it did beg the questions:
    “What are the core mechanics of a Pokemon game?” and “Can we actually recreate those mechanics?”
    Overview
    Starting Out
    Attempting to Dive Right In
    Pokemon, Types, and Moves Oh My
    Where We Ended Up
    Starting Out
    Our first brainstorming session pushed us to find the most essential parts of a Pokemon game. Eventually we agreed that the two most important parts of Pokemon were catching, and battling. This led us to this domain model:
    A simplistic domain model for Pokemon
    A simplistic domain model for Pokemon
    Even as a starting out point you can see that our model left out a tremendous amount of content typically found in main series games. This includes items, gym leaders, locations, etc. Nonetheless we thought this would still be doable because we found a pretty robust Pokemon API.
    PokéAPI
    An open RESTful API for Pokémon data
    pokeapi.co
    The API we found had every piece of information on every Pokemon, item, berry, and anything else you can think of from every single main series Pokemon game.
    It was a bit too much information if we’re all being honest, and this was a problem.
    Attempting to Dive Right In
    
    A Most Basic Parse
    This is the result of our first attempt to parse out the data from the API. And at first we thought things were going smoothly. The problem with this is that we would then need to iterate even further using the “url” key. Then this would return more arrays and hashes that would need to be iterated through. And so on and so forth.
    It’s not that we couldn’t…it’s that we didn’t have enough time.
    And this was just for just getting the information, and storing it. We still need to create a CLI and create methods that go through all the information. This pushed us to go back to our domain model and make some cuts to what information is actually needed.
    Pokemon, Types, and Moves Oh My
    There was a lot of discussion about what we can keep and what we have to cut. This is where you have to think about what everything needs in order to function properly. The actual Pokemon themselves are an absolute must, and can exist with just a species name. Types, again, can be just a string, and must be accessible by all Pokemon. Battling is an entirely different story.
    Battling takes all of these pieces of data, and requires so much more from them. Battling requires at least two trainers, health point instance calculations, that stats for each Pokemon, Pokemon levels, and so many other factors that must be considered.
    
    Damage Calculation
    
    Everything the Modifier Takes Into Account
    Again this isn’t impossible to implement, but it would take much longer than a week.
    Battling would also require us to implement every move that a Pokemon could know, and then limit that to just 4 at a time. This goes back to the issue of parsing out the API several layers deep to pair each Pokemon with their move set.
    So battling was out.
    Where We Ended Up
    With all of these limitations, both time and our own ability, we landed on being able to create a trainer, give that trainer a starter Pokemon, catch Pokemon, and modify their party.
    When we started out we didn’t even have any, what we thought, grandiose ideas. We didn’t have to create a GUI, any artwork, any audio, or a space for a player to exist in. It was all data, and moving it around. Even with a template to follow we had to cut down out a tremendous amount of features from the application.
    While we still have a catching mechanic in our application, it still lacks too much from an actual game to have that Pokemon feel to it. The design process and template we had evolved over time to fit our own needs and deadlines.
    Sometimes the application you want to make is not the application you end up making.")
post10 = Post.create(title: "Using Validations", user_id: bri.id, content: "Say you are creating an app for pet owners to keep track of their cats. Each cat has an account, so you’ll want to include a form for a new cat.

    A simple form to create a cat
    Easy enough. Now we can add a bunch of new cats to our database using our awesome form:
    
    A view of all our cats
    Uh oh. It looks like we forgot to add a name to a few of our cats. If only there was a way to make sure that when a user fills out a form, their input isn’t recorded in the database until everything is correctly populated…
    Required fields are a common issue when creating forms in Rails. You don’t want your user to be able to submit a bunch of blank forms. This is where validations come in. Validations are a way to make sure that your user is inputting valid data before it gets saved into your database.
    Luckily, validations can be as simple or complex as you want them to be:
    
    Above is a basic validation for our Cat model. All that this code does is ensure that when we create a cat, it includes a name and an age.
    
    Now all we have to do is add an if-statement to our create method in the Cats Controller (the “.valid?” method just returns a boolean). If the new cat we created passes all of our validations, this if-statement will save the cat into our database and redirect to that cat’s show page. If the new cat is not valid, it will redirect to the create a new cat page. Let’s try making a cat without including a name.
    
    Well, it redirected us to the new cat page like we expected, but now our form looks wonky and it doesn’t really tell us what went wrong. This isn’t good. We want to let our user know exactly what they need to do in order to correctly submit the form.
    
    This is easily fixed. When a form is submitted with an error, a new class is generated on the field that was incorrectly filled out. This class is called “field_with_errors,” and it’s the reason that our form looked strange when we submitted a new cat without filling out the name field. All we have to do is go into our stylesheet and change that class to look the way we want it to. I decided to highlight the incorrect field in red and I also made a new class called “error_message.” I’m going to use my new “error_message” class to show the user exactly what went wrong on the form.
    
    Creating error messages in our new cat form
    With the addition of this if-statement, our app will print out each validation that failed. First, it checks to see if the form has any errors. If it does, it iterates through each of the error messages, printing out the full message using the “error_message” class that I defined earlier. Lets try making a cat without a name now:
    
    Our finished form
    Now our user can see exactly which field is invalid.
    With validations we can check if user input is numeric, unique, under a certain length, and so much more. This is only a small example of all of the things validations can do. For more information about validations I recommend checking out the Rails Documentation.")

project1 = Project.create(name: "Project 1", github_url: "https://github.com/", description: "This is a test description")
project2 = Project.create(name: "Project 2", github_url: "https://github.com/", description: "This is a test description")
project3 = Project.create(name: "Project 3", github_url: "https://github.com/", description: "This is a test description")
project4 = Project.create(name: "Project 4", github_url: "https://github.com/", description: "This is a test description")
project5 = Project.create(name: "Project 5", github_url: "https://github.com/", description: "This is a test description")
project6 = Project.create(name: "Project 6", github_url: "https://github.com/", description: "This is a test description")
project7 = Project.create(name: "Project 7", github_url: "https://github.com/", description: "This is a test description")
project8 = Project.create(name: "Project 8", github_url: "https://github.com/", description: "This is a test description")
project9 = Project.create(name: "Project 9", github_url: "https://github.com/", description: "This is a test description")
project10 = Project.create(name: "Project 10", github_url: "https://github.com/", description: "This is a test description")

user_project1 = UserProject.create(user_id: carl.id, project_id: project1.id)
user_project2 = UserProject.create(user_id: paul.id, project_id: project1.id)
user_project3 = UserProject.create(user_id: ann.id, project_id: project1.id)
user_project4 = UserProject.create(user_id: matteo.id, project_id: project2.id)
user_project5 = UserProject.create(user_id: bri.id, project_id: project2.id)
user_project6 = UserProject.create(user_id: carl.id, project_id: project3.id)
user_project7 = UserProject.create(user_id: paul.id, project_id: project4.id)
user_project8 = UserProject.create(user_id: ann.id, project_id: project5.id)
user_project9 = UserProject.create(user_id: bri.id, project_id: project6.id)
user_project10 = UserProject.create(user_id: matteo.id, project_id: project7.id)
user_project11 = UserProject.create(user_id: carl.id, project_id: project8.id)
user_project12 = UserProject.create(user_id: paul.id, project_id: project10.id)
user_project13 = UserProject.create(user_id: carl.id, project_id: project9.id)

post_favorites1 = PostFavorite.create(user_id: carl.id, post_id: post1.id)
post_favorites2 = PostFavorite.create(user_id: paul.id, post_id: post1.id)
post_favorites3 = PostFavorite.create(user_id: ann.id, post_id: post1.id)
post_favorites4 = PostFavorite.create(user_id: matteo.id, post_id: post2.id)
post_favorites5 = PostFavorite.create(user_id: bri.id, post_id: post2.id)
post_favorites6 = PostFavorite.create(user_id: carl.id, post_id: post3.id)
post_favorites7 = PostFavorite.create(user_id: paul.id, post_id: post4.id)
post_favorites8 = PostFavorite.create(user_id: ann.id, post_id: post5.id)
post_favorites9 = PostFavorite.create(user_id: bri.id, post_id: post6.id)
post_favorites10 = PostFavorite.create(user_id: matteo.id, post_id: post7.id)
post_favorites11 = PostFavorite.create(user_id: carl.id, post_id: post8.id)
post_favorites12 = PostFavorite.create(user_id: paul.id, post_id: post9.id)
post_favorites13 = PostFavorite.create(user_id: carl.id, post_id: post10.id)

project_favorites1 = ProjectFavorite.create(user_id: carl.id, project_id: project1.id)
project_favorites2 = ProjectFavorite.create(user_id: paul.id, project_id: project1.id)
project_favorites3 = ProjectFavorite.create(user_id: ann.id, project_id: project1.id)
project_favorites4 = ProjectFavorite.create(user_id: matteo.id, project_id: project2.id)
project_favorites5 = ProjectFavorite.create(user_id: bri.id, project_id: project2.id)
project_favorites6 = ProjectFavorite.create(user_id: carl.id, project_id: project3.id)
project_favorites7 = ProjectFavorite.create(user_id: paul.id, project_id: project4.id)
project_favorites8 = ProjectFavorite.create(user_id: ann.id, project_id: project5.id)
project_favorites9 = ProjectFavorite.create(user_id: bri.id, project_id: project6.id)
project_favorites10 = ProjectFavorite.create(user_id: matteo.id, project_id: project7.id)
project_favorites11 = ProjectFavorite.create(user_id: carl.id, project_id: project8.id)
project_favorites12 = ProjectFavorite.create(user_id: paul.id, project_id: project9.id)
project_favorites13 = ProjectFavorite.create(user_id: carl.id, project_id: project10.id)