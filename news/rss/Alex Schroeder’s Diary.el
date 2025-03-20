;; -*- coding: utf-8-emacs; -*-
(setq nnrss-group-data '((11 (26588 11780 102477 30000) "https://alexschroeder.ch/view/2025-03-20-bot-defence" "2025-03-20 Something about the bot defence is working" nil "Thu, 20 Mar 2025 16:00:10 +0000" "<h1 id=\"2025-03-20-something-about-the-bot-defence-is-working\">2025-03-20 Something about the bot defence is working</h1>
<p>At midnight, there was a surge in activity.
CPU usage went up.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-1.jpg\" alt=\"\" /></p>
<p>Load went up, too. But it stayed within reasonable bounds - less than 4 instead of the more than 80 I have seen in the past.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-2.jpg\" alt=\"\" /></p>
<p>And the number of IP addresses blocked by <code>fail2ban</code> went from 40 to 50.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-3.jpg\" alt=\"\" /></p>
<p>I'm usually sceptical of this because the big attacks are from a far wider variety of IP numbers.
In this case, however, maybe there was some probing that resulted in blocks? I don't know. Lucky, I guess?</p>
<p>In any case, the site is still up. Yay for small wins.</p>
<p>Also, I cannot overstate how good it feel to have some <a href=\"https://munin-monitoring.org/\">Munin</a> graphs available.</p>
<p><code>alex-bots</code> is a setup I desribed in <a href=\"2025-02-19-bots-again\">2025-02-19 Bots again, cursed</a>.
Basically a request to one of my Oddmuse wikis containing the parameter <code>rcidonly</code> is an expensive endpoint: ``all changes for this single page'' or ``a feed for this single page''. This is something a human would rarely access and yet it somehow the URLs landed in some dataset for AI training, I suspect. So what I do is I’m redirecting any request containing “rcidonly” in the query string to <code>/nobots</code>, warning humans not to click on these links.</p>
<p>In addition to that, the filter <code>/etc/fail2ban/filter.d/alex-bots.conf</code> contains this:</p>
<pre><code>[Definition]
failregex = ^(www\\.emacswiki\\.org|communitywiki\\.org|campaignwiki\\.org):[0-9]+ <HOST> .*rcidonly=
</code></pre>
<p>And I added a section using this filter to my jail <code>/etc/fail2ban/jail.d/alex.conf</code>:</p>
<pre><code>[alex-bots]
enabled = true
port    = http,https
logpath = %(apache_access_log)s
findtime = 3600
maxretry = 2
</code></pre>
<p>So if an IP number visits three URLs containing ``rcidonly'' in an hour, they get banned for ten minutes.</p>
<p>The <code>recidive</code> filter (a standard filter you just need to activate) then makes sure that any IP number that got blocked three times gets blocked for a week.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Administration\">#Administration</a> <a class=\"tag\" href=\"/search/?q=%23Butlerian_Jihad\">#Butlerian Jihad</a></p>
<p><strong>2025-03-20</strong>. Ever since Drew DeVault published his blog post, more people seem to notice what's going on: AI ingestion is killing web sites and web services.</p>
<blockquote>
<p>If you think these crawlers respect <code>robots.txt</code> then you are several assumptions of good faith removed from reality. These bots crawl everything they can find, <code>robots.txt</code> be damned, including expensive endpoints like git blame, every page of every git log, and every commit in every repo, and they do so using random User-Agents that overlap with end-users and come from tens of thousands of IP addresses – mostly residential, in unrelated subnets, each one making no more than one HTTP request over any time period we tried to measure – actively and maliciously adapting and blending in with end-user traffic and avoiding attempts to characterize their behavior or block their traffic. - <a href=\"https://drewdevault.com/2025/03/17/2025-03-17-Stop-externalizing-your-costs-on-me.html\">Please stop externalizing your costs directly into my face</a>, by Drew DeVault, for SourceHut</p>
<p>Then, yesterday morning, KDE GitLab infrastructure was overwhelmed by another AI crawler, with IPs from an Alibaba range; this caused GitLab to be temporarily inaccessible by KDE developers. I then discovered that, one week ago, an Anime girl started appearing on the GNOME GitLab instance, as the page was loaded. It turns out that it's the default loading page for Anubis, a proof-of-work challenger that blocks AI scrapers that are causing outages. - <a href=\"https://thelibre.news/foss-infrastructure-is-under-attack-by-ai-companies/\">FOSS infrastructure is under attack by AI companies</a>, by Niccolò Venerandi, for LibreNews</p>
</blockquote>
" nil nil "d5fbb42d7b346ab63f660d3c2da42907") (10 (26587 60093 852691 718000) "https://alexschroeder.ch/view/2025-03-20-bot-defence" "2025-03-20 Something about the bot defence is working" nil "Thu, 20 Mar 2025 10:30:09 +0000" "<h1 id=\"2025-03-20-something-about-the-bot-defence-is-working\">2025-03-20 Something about the bot defence is working</h1>
<p>At midnight, there was a surge in activity.
CPU usage went up.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-1.jpg\" alt=\"\" /></p>
<p>Load went up, too. But it stayed within reasonable bounds - less than 4 instead of the more than 80 I have seen in the past.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-2.jpg\" alt=\"\" /></p>
<p>And the number of IP addresses blocked by <code>fail2ban</code> went from 40 to 50.</p>
<p><img loading=\"lazy\" src=\"2025-03-20-bot-defence-3.jpg\" alt=\"\" /></p>
<p>I'm usually sceptical of this because the big attacks are from a far wider variety of IP numbers.
In this case, however, maybe there was some probing that resulted in blocks? I don't know. Lucky, I guess?</p>
<p>In any case, the site is still up. Yay for small wins.</p>
<p>Also, I cannot overstate how good it feel to have some <a href=\"https://munin-monitoring.org/\">Munin</a> graphs available.</p>
<p><code>alex-bots</code> is a setup I desribed in <a href=\"2025-02-19-bots-again\">2025-02-19 Bots again, cursed</a>.
Basically a request to one of my Oddmuse wikis containing the parameter <code>rcidonly</code> is an expensive endpoint: ``all changes for this single page'' or ``a feed for this single page''. This is something a human would rarely access and yet it somehow the URLs landed in some dataset for AI training, I suspect. So what I do is I’m redirecting any request containing “rcidonly” in the query string to <code>/nobots</code>, warning humans not to click on these links.</p>
<p>In addition to that, the filter <code>/etc/fail2ban/filter.d/alex-bots.conf</code> contains this:</p>
<pre><code>[Definition]
failregex = ^(www\\.emacswiki\\.org|communitywiki\\.org|campaignwiki\\.org):[0-9]+ <HOST> .*rcidonly=
</code></pre>
<p>And I added a section using this filter to my jail <code>/etc/fail2ban/jail.d/alex.conf</code>:</p>
<pre><code>[alex-bots]
enabled = true
port    = http,https
logpath = %(apache_access_log)s
findtime = 3600
maxretry = 2
</code></pre>
<p>So if an IP number visits three URLs containing ``rcidonly'' in an hour, they get banned for ten minutes.</p>
<p>The <code>recidive</code> filter (a standard filter you just need to activate) then makes sure that any IP number that got blocked three times gets blocked for a week.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Administration\">#Administration</a> <a class=\"tag\" href=\"/search/?q=%23Butlerian_Jihad\">#Butlerian Jihad</a></p>
" nil nil "1304bd9c10457fdabb9ec59f6f7683cc") (9 (26587 60093 852442 355000) "https://alexschroeder.ch/view/2025-03-19-touch-ground" "2025-03-19 Grounding myself" nil "Wed, 19 Mar 2025 16:31:15 +0000" "<h1 id=\"2025-03-19-grounding-myself\">2025-03-19 Grounding myself</h1>
<p>The powerlessness when reading the news makes me think that perhaps I need to read even less news, shut it all out.</p>
<p>I also find a new appreciation for all of my ancestors who bore children and raised them even though their world seems like a hellscape compared to what I'm seeing.</p>
<p>Sometimes I wish I could just go to church and sing and pray and it would all be good again. Except it don't believe in it.</p>
<p>So all I have is plants and animals to care for. In a somewhat unhealthy (?) relationship with life around me I find that I put plants where they need me to water them, and find solace in the fact that they at least are unperturbed by everything and are just happy for me to be there and tend them. It feels a bit like an artificial dependent relationship so I dunno, it's weird.</p>
<p>When I see happy dogs and their owners I keep thinking that a dog that's so happy to see me, to fetch that ball, to for that walk, this happiness is real, and they are grounded in life and the present moment.</p>
<p>I want back this ignorant bliss of childhood, some days.</p>
<p>I have no illusions. While I grew up, Iran and Iraq were at war; the Moçambique and Angolan wars of independence turned into civil wars; Yugoslavia fell apart in civil war. Those are the conflicts I remember, in any case.
Life and the news wasn't great. I just didn't know.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Life\">#Life</a></p>
" nil nil "006ae765016095b8ad6cea1c5929b0dd") (8 (26587 60093 852227 472000) "https://alexschroeder.ch/view/2025-03-16-memories" "2025-03-16 Klingnauer Stausee" nil "Sun, 16 Mar 2025 23:19:53 +0000" "<h1 id=\"2025-03-16-klingnauer-stausee\">2025-03-16 Klingnauer Stausee</h1>
<p>We walked around the lake, me, my wife, my stepmother and her partner. It was late 2020 and the COVID-19 pandemic was ongoing. I remember having masks on the train and only taking them off as we were walking around the lake.</p>
<p><img loading=\"lazy\" src=\"2025-03-16-memories-8.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-9.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-1.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-2.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-3.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-4.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-6.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-7.jpg\" alt=\"\" />
<img loading=\"lazy\" src=\"2025-03-16-memories-5.jpg\" alt=\"\" /></p>
<p><a class=\"tag\" href=\"/search/?q=%23Pictures\">#Pictures</a></p>
" nil nil "4ea535c6d69ac82893f73d6d876021a2") (7 (26587 60093 851973 20000) "https://alexschroeder.ch/view/2025-03-15-canada" "2025-03-15 Canada" nil "Sat, 15 Mar 2025 23:16:54 +0000" "<h1 id=\"2025-03-15-canada\">2025-03-15 Canada</h1>
<p>Today I saw somebody posting a message about Trump's threats to annex Canada from a friend that wanted to remain anonymous. It seems pretty important to me because that's how every former friend of the US is going to react. Greenland is an autonomous territory in the Kingdom of Denmark. Denmark is part of Europe. Denmark spent a lot to support Ukraine. The USA threatened to abandon Ukraine. Both Denmark and Canada are part of NATO. The USA is not behaving like a friend and ally. Not at all.</p>
<p>Trump is a Russian asset.</p>
<p>People will remember.</p>
<p>For reference, aid to Ukraine:</p>
<p><img loading=\"lazy\" src=\"ukraine-aid-2025.jpg\" alt=\"\" /></p>
<p>The US has contributed $69bn, Europe has contributed $66bn, the biggest contributors being Germany with $13.6bn, UK with $10.8bn, Denmark with $8.1bn, and so on. Source: <a href=\"https://www.ifw-kiel.de/topics/war-against-ukraine/ukraine-support-tracker/\">Kiel Institute for the World Economy: War against Ukraine</a>.</p>
<p>Here's the message I mentioned at the top:</p>
<blockquote>
<p>One thing I've learned over the past few weeks, and it's been a bit of a sobering lesson, is that a lot of Americans I know don't actually know what's going on between the US and Canada right now, and just how seriously Canadians are taking this. So, against my better judgement, here's a timeline to explain why we're here, and why we're angry.</p>
<p>Nov 30th, 2018. The United States, Canada and Mexico finalize a trade agreement. Trump personally negotiates the terms and signs the document, celebrating it as `the greatest trade agreement in history''. (This is important.)</p>
<p>Nov 29th, 2024. In a face to face meeting, Trump threatens the Canadian Prime Minister, Justin Trudeau, that he will be imposing 25% tariffs and that if Canada wants to avoid that, it should join the US as a state.</p>
<p>Nov 30th, 2024. Trump publicly calls our Prime Minister `Governor Trudeau' and instructs his staff to only address him as Governor going forward. He again suggests Canada should join the USA.</p>
<p>Dec 3rd, 2024. Trump remarks that he would split Canada into two states once annexed.</p>
<p>Dec 10th, 2024. Trump posts that the majority of Canadians support annexation, despite public polling that only 13% of Canadians would consider the idea.</p>
<p>Dec 18th, 2024. Trump again falsely states that the majority of Canadians support annexation and that one of his lapdogs, Wayne Gretzky, should have a leadership role in that new scenario.</p>
<p>Jan 7th, 2025. At a press conference, Trump says that he would use economic force to destroy the Canadian economy to annex it.</p>
<p>Jan 14, 2025. Trump again claims that most Canadians want to be American, despite new polls showing only 10% of us are open to the idea.</p>
<p>Jan 20th, 2025. During his inaugural address, Trump says that the U.S. will `expand its territory' during his second term.</p>
<p>Jan 23rd, 2025. At the World Economic Forum, Trump says that Canada can avoid tariffs and economic collapse if it joins the US. He says this in front of representatives from most countries in the world.</p>
<p>Jan 24th, 2025. Trump states publicly that Canada `will' become a state</p>
<p>Jan 31st, 2025. Trump announces a 25% tariff on all Canadian imports to begin the next day.</p>
<p>Feb 2nd, 2025. Trump refers to Canada as its `Cherished 51st state' and that it should join the US to avoid tariffs.</p>
<p>Feb 3rd, 2025. A one month delay is agreed upon. Trump, in a conversation with Trudeau states that he doesn't think existing border treaties with Canada are valid, and need to be revised.</p>
<p>Feb 7th, 2025. In a closed door meeting with his cabinet, Prime Minister Trudeau is recorded, without his knowledge, telling everyone that he believes very strongly that Trump is serious and that he stated his reason for annexation as Canadian resources.</p>
<p>Feb 9th, 2025. In a Super Bowl pre-game interview, Trump says that he's serious about his threats, calling it a `viable consideration for expanding US territory'</p>
<p>Feb 10th, 2025. Trump announces an additional 25% tariffs on steel and aluminum imports from Canada to come into effect March 12th.</p>
<p>Feb 24th, 2025. Trump publicly remarks that whoever signed the USMCA agreement is an idiot. He was the one that signed it.</p>
<p>March 4th, 5th, and 6th 2025. Tariffs come into effect. Canada retaliates with it's own tariffs. Tariffs are again postponed until April 1st after a huge market backlash.</p>
<p>March 4th, 2025. In an address to a joint session of congress, Trump states that the US will own Greenland `one way or the other'.</p>
<p>March 5th, 2025. US Secretary of Commerce Howard Lutnick told Canadian finance minister Dominic LeBlanc that Trump ``had come to realize that the relationship between the United States and Canada was governed by a slew of agreements and treaties that were easy to abandon.''</p>
<p>March 7th, 2025. Unconfirmed Memorandum and maps leaked on twitter reveal Trump is allegedly planning to annex the entirety of the great lakes and Southern Ontario, home to 13,491,332 Canadians. This amounts to 35.25% of Canada's total population and includes its largest city, Toronto. This region accounts for 38% of the Canadian economy, and its loss would make Canada's independence functionally impossible.</p>
<p>March 8th, 2025. Canada's foreign minister warns European allies that their government considers Canada to be under existential threat.</p>
<p>March 9th, 2025. Mark Carney, the new Canadian Prime Minister, in his acceptance speech, states that Trump is seeking to destroy Canada, and its way of life.</p>
<p>March 11, 2025. President Trump threatens to “permanently shut down the automobile manufacturing business in Canada” if Canada does not drop a 250% to 390% tariff on U.S. dairy products, which he doesn’t state only kicks in after a certain quantity of tariff-free U.S. dairy enters Canada, a quantity that was originally negotiated and agreed to by Trump during the USMCA in 2018.</p>
<p>In Trump's own words, ``The only thing that makes sense is for Canada to become our cherished Fifty First State. This would make all Tariffs, and everything else, totally disappear.</p>
<p>Canadians’ taxes will be very substantially reduced, they will be more secure, militarily and otherwise, than ever before, there would no longer be a Northern Border problem, and the greatest and most powerful nation in the World will be bigger, better and stronger than ever — And Canada will be a big part of that. The artificial line of separation drawn many years ago will finally disappear, and we will have the safest and most beautiful Nation anywhere in the World — And your brilliant anthem, “O Canada,” will continue to play, but now representing a GREAT and POWERFUL STATE within the greatest Nation that the World has ever seen!''</p>
<p>March 11th, 2025 PT. II. Peter Navarro, a Senior Advisor for Trump is interviewed by MSNBC. When asked about the tariffs he responds with ``Just tamp it down, please, over there, ok? They're throwing down the hockey gloves. Stop that rhetoric#we're not going to tolerate anything but them stopping killing Americans'', insinuating that this situation was caused by Canadians killing Americans.</p>
<p>March 11th, 2025 PT III. Trump again publicly muses that Canada, Greenland, and the US should be one country, and questions the validity of the Canadian and American border.</p>
<p>To my American friends, I know most of you are amazing and generous people. You didn't ask for this, and I understand that. I hold no ill will towards you, whatsoever. But I must stress, with as much seriousness as I can, the amount of damage this has done.</p>
<p>We have viewed you as our closest friend and ally for a century. We thought of you as brothers and sisters. We answered the call, again and again, for any support you needed from us. Most of Canadians visit the USA so much that we've seen more of the US than we have the rest of Canada.</p>
<p>American products have been taken off our shelves. Canadians are cancelling travel plans to the US. Photo after photo has been shared on social media of empty flights from Canada to the USA.</p>
<p>This isn't a joke to us. We're not overreacting. We don't think he's just saying this shit to cause chaos or negotiate a deal. We wholeheartedly believe that our closest ally and friend is about to bring violence across our border, economically destroy us, and eliminate our way of life.</p>
<p>The main driver for Canada's creation in 1867 was SPECIFICALLY to not be part of America, and to end America's very public threats and plans to annex our territory.</p>
<p>We're angry. We're really, really fucking angry. Open your eyes to what's happening because we're tired of trying to make you understand why and asking you why it seems like none of you care. **</p>
<p>I still hope that there is time to repair this. I still believe that this is the result of one man's plan to burn it all down. But time is running out, and fast.</p>
<p>- Anonymous</p>
</blockquote>
<p><a class=\"tag\" href=\"/search/?q=%23USA\">#USA</a> <a class=\"tag\" href=\"/search/?q=%23Canada\">#Canada</a> <a class=\"tag\" href=\"/search/?q=%23Trump\">#Trump</a></p>
" nil nil "c4f48bfff8bd3cca4f3290858e8711cb") (6 (26587 60093 851157 542000) "https://alexschroeder.ch/view/2025-03-15-niri" "2025-03-15 New window manager: niri" nil "Wed, 19 Mar 2025 13:20:51 +0000" "<h1 id=\"2025-03-15-new-window-manager-niri\">2025-03-15 New window manager: niri</h1>
<p>I'm giving <a href=\"https://github.com/YaLTeR/niri\">niri</a> a go.
The idea is that a scrollable tiling window manager
(``Wayland compositor'') is a better fit than just a tiling window manager.
For tiling window managers, I just create new stuff and have it maximized.
I really can't do the quick splitting and rearranging that it seems to afford.
The result is that I start moving stuff to other workspaces, where they're
invisible and gone.
I'm hoping that new windows popping up next to existing windows makes it feel
like a stack.</p>
<p>Having gone through the config file and having made a few small changes it
already feels pretty nice. Right now one of the problems I have is that
by sheer bad luck I decided to rotate my external monitor by 90° and that
doesn't work quite as well, maybe? I'm not sure. One of the first changes
I did was change the default widths from ⅓ / ½ / ⅔ to 0.95 / ⅔ / ½ with 0.95 being
the default.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Window_Managers\">#Window Managers</a> <a class=\"tag\" href=\"/search/?q=%23Niri\">#Niri</a></p>
<p>I didn't find a solution for Gimp. And I already had no solution for VASSAL under Sway. So for these applications, I still have Gnome installed.</p>
<p>Currently my <code>~/.config/fish/conf.d/window-manager.fish</code> says:</p>
<pre><code># If running from tty1 start sway
set TTY (tty)
[ \"$TTY\" = \"/dev/tty1\" ] && exec sway
[ \"$TTY\" = \"/dev/tty2\" ] && exec startx
[ \"$TTY\" = \"/dev/tty3\" ] && exec niri
</code></pre>
<p>Oh well. 😅</p>
<p><strong>2025-03-19</strong>. I'm finding that there were too many problems with apps that didn't work or had very slow startup times. So I'm back to <a href=\"2023-10-22-sway\">using Sway</a>.</p>
" nil nil "dd6a88ed6b3330528988354f62633daf") (5 (26587 60093 850910 879000) "https://alexschroeder.ch/view/2025-03-14-fado" "2025-03-14 Fado on Bandcamp" nil "Fri, 14 Mar 2025 22:19:17 +0000" "<h1 id=\"2025-03-14-fado-on-bandcamp\">2025-03-14 Fado on Bandcamp</h1>
<p>I heard about <a href=\"https://linaralrefree.bandcamp.com/album/lina-ra-l-refree\">Lina_Raül Refree</a>, yesterday, bought it, and I've been listening to it.
Today I'm listening to <a href=\"https://linafado.bandcamp.com/album/fado-cam-es\">Fado Camões</a> by LINA.</p>
<p>Also bought:</p>
<ul>
<li><a href=\"https://lheuredeschiens.bandcamp.com/album/jusquici-tout-va-bien\">Jusqu'ici tout va bien</a> by L'heure des chiens</li>
<li><a href=\"https://cristinabranco.bandcamp.com/album/m-e\">mãe</a> by Cristina Branco</li>
<li><a href=\"https://claudia-aurora.bandcamp.com/album/mulher-do-norte\">Mulher do Norte</a> by Claudia Aurora</li>
</ul>
<p>Let me know if you have other suggestions.</p>
<p>I should put some on Têtes raides.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Music\">#Music</a></p>
" nil nil "29eaa7a86d20222c52e07d53b6cd1641") (4 (26587 60093 850635 637000) "https://alexschroeder.ch/view/2025-03-13-calc" "2025-03-13 Calculators and spreadsheets" nil "Thu, 13 Mar 2025 22:45:10 +0000" "<h1 id=\"2025-03-13-calculators-and-spreadsheets\">2025-03-13 Calculators and spreadsheets</h1>
<p>I stumbled upon a discussion about the Gnome Calculator. Apparently it stopped working for some people because a bank blocked it from retrieving the exchange rates it needs to allow users to do currency conversions. I get it. It's a feature, it needs data that's up to date, so you need to fetch it. The default is to do this once a week, I hear.</p>
<p>Based on <a href=\"https://gitlab.gnome.org/GNOME/gnome-calculator/-/blob/main/lib/currency-provider.vala\">currency-provider.vala</a>, the currency providers are the <a href=\"https://www.imf.org/external/np/fin/data/rms_five.aspx\">International Monetary Fund</a> (IMF) and the <a href=\"https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml\">European Central Bank</a>.</p>
<p>So that leads me to another question: What do you use to do calculations you can't do in your head?</p>
<p>I mostly do it in Emacs using <code>M-x calc</code>. It uses the reverse-polish notation (RPN) I am used to from my old calculators before there where smartphones.
For a while I used <code>bc</code> but the precision was weird. Then I tried <code>dc</code> but it was weird, too. Now I have Super+C bound to <code>orpie</code> running in a terminal. Perhaps I should bind that key to run <code>emacsclient</code> and eval <code>(calc)</code>. 😂</p>
<p>From the replies, I found a large number of people reporting that they used the interpreters of their favourite programming languages. I didn't know that this was so wide-spread. People named Python, Ruby, Fennel, Scheme.</p>
<p>Python:</p>
<pre><code>Python 3.11.2 (main, Nov 30 2024, 21:22:50) [GCC 12.2.0] on linux
Type \"help\", \"copyright\", \"credits\" or \"license\" for more information.
>>> 1+2+3
6
</code></pre>
<p>Ruby:</p>
<pre><code>irb(main):001:0> 1+2+3
=> 6
</code></pre>
<p>Fennel:</p>
<pre><code>Welcome to fennel!
>> (+ 1 2 3)
6
</code></pre>
<p>Chicken Scheme:</p>
<pre><code>CHICKEN
(c) 2008-2021, The CHICKEN Team
(c) 2000-2007, Felix L. Winkelmann
Version 5.3.0 (rev e31bbee5)
linux-unix-gnu-x86-64 [ 64bit dload ptables ]
Type ,? for help.
#;1> (+ 1 2 3)
6
</code></pre>
<p><a class=\"account\" href=\"https://nrw.social/@HaraldKi\" title=\"@HaraldKi@nrw.social\">@HaraldKi</a> shared that they use a shell, but not just any shell: <code>tclsh</code> with the <a href=\"https://www.tcl-lang.org/man/tcl8.4/TclCmd/expr.htm\">expr</a> built-in command.</p>
<blockquote>
<p>Tclsh uses just double math, afair, and understands plain and simple everyday expressions you basically learned in primary school. Plus scientific notation like 2.7e22 . Plus a chunk of log, sin, cos, tan if really needed. So no brain tweaks needed. The only thing to keep in mind: add .0 to most numbers to not accidentally get ¾ -> 0.</p>
</blockquote>
<p>The key is have a function in your shell that gets transformed into a Tcl command that is piped to <code>tclsh</code>.
In my case, using <code>fish</code>, use <code>funced calc --save</code> and use the following:</p>
<pre><code>function calc
echo \"puts [expr {$args}]\" | tclsh
end
</code></pre>
<p>At the shell prompt:</p>
<pre><code>> calc 1+2+3
6
> calc 4/3
1
> calc 4/3.0
1.3333333333333333
</code></pre>
<p>What about the other options?</p>
<p>I think the key is that they have to startup fast and be ready to type.
<code>bc</code> certainly qualifies.
Just remember to set the scale!
Or use the <code>--mathlib</code> option.</p>
<pre><code>bc 1.07.1
Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017 Free Software Foundation, Inc.
This is free software with ABSOLUTELY NO WARRANTY.
For details type `warranty'.
1+2+3
6
4/3
1
scale=3
4/3
1.333
</code></pre>
<p><code>dc</code> has reverse-polish notation (RPN) but is very terse.
Tokens are separated by spaces or newlines.
Thus, the Enter key doesn't print a result. You need to use the <code>p</code> command.
Again, the default is integer math.
Use the <code>k</code> command to switch scale.</p>
<pre><code>1 2 3 + + p
6
4 3 / p
1
3 k 4 3 / p
1.333
</code></pre>
<p>A weird part is that you need to enter negative numbers using the underscore (<code>_3</code> for -3).</p>
<p>By contrast, my favourite calculator in the terminal right now is <code>orpie</code>.
You get reverse-polish notation and immediate feedback.</p>
<pre><code>Orpie v1.6.1 -- swap drop dup view    | 25:
--------------------------------------| 24:
Calculator Modes:                     | 23:
angle: RAD  base: DEC  complex: REC | 22:
| 21:
Common Operations:                    | 20:
enter    : <return>                 | 19:
drop     : \\                        | 18:
swap     : <pagedown>               | 17:
backspace: \\177                     | 16:
add      : +                        | 15:
subtract : -                        | 14:
multiply : *                        | 13:
divide   : /                        | 12:
y^x      : ^                        | 11:
negation : n                        | 10:
Miscellaneous:                        |  9:
scientific notation     : <space>   |  8:
abbreviation entry mode : '         |  7:
stack browsing mode     : <up>      |  6:
refresh display         : C-L       |  5:
quit                    : Q         |  4:
|  3:
|  2:                                   6
|  1:                    1.33333333333333
--------------------------------------------------------------------------------
</code></pre>
<p>Emacs comes with <code>M-x quick-calc</code> which simply asks for an expression and prints the result:</p>
<pre><code>Result: 1 + 2 + 3 =>  6  (16#6, 8#6, 2#110, \"^F\")
</code></pre>
<p>Then there's <code>M-x calculator</code> which comes with its own mode. You can use <code>o h</code> to switch output to hex, for example. So adding up 1 + 2 + 3 + 4 results in 10, or A in hex.</p>
<pre><code>Calc==H> A
</code></pre>
<p>And finally there is <code>M-x calc</code>.
Check out the <a href=\"https://github.com/ahyatt/emacs-calc-tutorials/blob/master/README.org\">short tutorials</a> by Andrew Hyatt, if you're interested in learning more.
As I said above, this is my default solution. <code>1 RET 2 RET 3 RET + +</code> and there we go. Plus a trail over on the right in case you're confused.</p>
<pre><code>---------------------- Emacs Calculator Mode ---------------------- |----- Emacs Calculator Trail -----
1:  6                                                               |     1
.                                                               |     2
|     3
|   + 5
|   +>6
|
|
-UUU:%*--F1  Calc: 12 Deg    All L2     (Calculator) ---------------|-UUU:%*--F1  *Calc Trail*   All L5
</code></pre>
<p>Copying the result runs into a tiny problem, for me: The stack depth is copied along with it! So if you copy the above result (6), what you actually get is <code>1: 6</code>. Which is never what I want to paste elsewhere. Never.</p>
<p><a class=\"account\" href=\"https://sfba.social/@kickingvegas\" title=\"@kickingvegas@sfba.social\">@kickingvegas</a> suggested <a href=\"https://github.com/kickingvegas/casual?tab=readme-ov-file#calc-elisp-library-casual-calc\">casual-calc</a>, which is part of ``a project to re-imagine the primary user interface for Emacs using keyboard-driven menus''.</p>
<p><a class=\"account\" href=\"https://helvede.net/@m\" title=\"@m@helvede.net\">@m</a> suggested <a href=\"https://qalculate.github.io/\">qcalc</a> which also offers “currency conversion”:</p>
<blockquote>
<p>The exchange rates can be updated manually using File → Update Exchange Rates, or automatically at specific intervals (by default once every week, but this can be changed in the preferences dialog), when needed (when currencies are converted).</p>
</blockquote>
<p>Apparently it gets the exchange rates from the European Central Bank and Coinbase App APIs.</p>
<p>Another option is spreadsheets, of course.
<a class=\"account\" href=\"https://merveilles.town/@neauoire\" title=\"@neauoire@merveilles.town\">@neauoire</a> mentioned <a href=\"https://wiki.xxiivv.com/site/nebu\">nebu</a>.
I don't have a Varvara system up and running, however.</p>
<p>There is <code>sc</code>, of course.
If you don't want to hit <code>=</code> for every number you enter, use <code>-n</code> for ``quick numeric entry''.
I'm not sure how I can quickly select the range for something like <code>@sum(A0:A2)</code> but it certainly seems possible to use <code>sc</code> for interesting stuff.</p>
<pre><code>B2 (10 2 0) [B0/B1]
A         B         C         D         E         F         G
0       1.00      4.00
1       2.00      3.00
2       3.00      1.33
3       6.00
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
</code></pre>
<p>Visidata (<code>vd</code>) also looks interesting. Sadly I have no idea how to do anything. 😂</p>
<pre><code>  File  Edit  View  Column  Row  Data  Plot  System  Help     Ctrl+H for help menu
directory          │ filename           ║ ext                │ size              #│ modtime
1› .|                                                              BUTTON1_RELEASED   no-op 0 files  •0
</code></pre>
<p>Of course, Emacs also comes with a spreadsheet. Visit an empty file ending with <code>.ses</code>.
Enter a number. To add a new row, use <code>down</code> then create a new cell using <code>TAB</code> and enter a second number.
When you need a formula, use <code>(apply ses+ (ses-range A1 A3))</code>, for example.</p>
<pre><code>File Edit Options Buffers Tools SES Help
A       B       C       D
1
2
3
6
</code></pre>
<p><a class=\"tag\" href=\"/search/?q=%23Calculators\">#Calculators</a> <a class=\"tag\" href=\"/search/?q=%23Spreadsheets\">#Spreadsheets</a> <a class=\"tag\" href=\"/search/?q=%23Software\">#Software</a></p>
" nil nil "17428377d23d75a51b1fb96973105368") (3 (26587 60093 849610 713000) "https://alexschroeder.ch/view/2025-03-11-us-arms" "2025-03-11 Distrusting US arms dealers" nil "Tue, 11 Mar 2025 11:04:58 +0000" "<h1 id=\"2025-03-11-distrusting-us-arms-dealers\">2025-03-11 Distrusting US arms dealers</h1>
<p>Ah, this is where the quotes come from:</p>
<blockquote>
<p>He’s done everything to discredit and demean Zelensky on the international stage with the shameful press conference in which he teamed up with the vice president to attack Zelensky,” said Sen. Jeff Merkley (D-Ore.). He pressed Whitaker, and other State Department nominees in the hearing, over whether Trump is a Russian asset. “What else could a Russian asset actually possibly do that Trump hasn’t yet done? – <a href=\"https://thehill.com/homenews/senate/5175978-matthew-whitaker-nato-trump/\">Trump’s NATO nominee commits to alliance, despite MAGA opponents</a>, by Laura Kelly, for The Hill</p>
</blockquote>
<p>In the same piece:</p>
<blockquote>
<p>Moreover — people should not assume that Trump’s policies are destructive for NATO. If anything, pushing European allies to increase defense spending is going to strengthen NATO.</p>
</blockquote>
<p>Well, I'm assuming that a NATO full of bootlickers would be great for Trump as he and Putin divvy up Europe.</p>
<p>I bet every European country that bough US equipment is super angry right now.</p>
<p>I am super angry because Switzerland, after a long fight against the new fighter planes, after considering Swedish and French fighter planes, decided to go with the planes that are the most expensive, the most unreliable (based on my uninformed opinions), and the most untrustworthy: the F-35.</p>
<p>From a country that bullies its allies and betrays its friends, that switches off the satellite phones, the intelligence sharing, and whatever else it damn pleases in order to force a settlement. Which is within their rights, of course. But also disqualifies them as a friend for a generation, if you ask me.</p>
<p>A country with the most powerful military in the world and the wisdom of a tooth that needs to be pulled. 🤮</p>
<p>And we're not even part of NATO.</p>
<p>⁂</p>
<p>For more about the F-35, <a class=\"account\" href=\"https://agora.echelon.pl/users/kravietz\" title=\"@kravietz@agora.echelon.pl\">@kravietz</a> recently linked to this article:</p>
<blockquote>
<p>With over 400 F-35s projected for Europe by 2030, per Lockheed Martin, the jet remains a cornerstone of NATO’s air power—but its integration highlights a paradox: its technological edge comes at the cost of strategic vulnerability. The U.S. policy restricting independent test operations outside CONUS, combined with reliance on U.S.-managed MDFs, ALIS, ODIN, and software updates, amplifies fears of over-dependence. - <a href=\"https://theaviationist.com/2025/03/10/f-35-kill-switch-myth/\">The F-35 ‘Kill Switch’: Separating Myth from Reality</a></p>
</blockquote>
<p><a class=\"account\" href=\"https://agora.echelon.pl/users/kravietz\" title=\"@kravietz@agora.echelon.pl\">@kravietz</a> adds:</p>
<blockquote>
<p>… but the problem is not technical. The problem is that in 2025 US has rather clearly signalled that its subjectively defined “interests” will now have priority of international agreements.</p>
<p>That is, the same agreements towards which the US has over the 30 years consistently pushed all European countries, and especially the new EU and NATO joiners. And it made sense as long as the US was the guarantor of these treaties.</p>
<p>What we have now? Let’s say Russia conducts a limited military incursion into eastern Poland with the objective of controlling the Suwalki Corridor. This of course is in violation of UN Charter, NATO Charter and a hundred of bilateral treaties between Russia and EU and Poland. So what? The 2025 US president now decides a “prolonged defense” is “not in US interests” and does everything to force “peace” on Poland.</p>
<p>“Everything” includes impairing US-delivered weapons systems and generally creating a powerful impression of stab in the back.</p>
<p>A “peace”, in which Poland’s concession is the town of Suwałki, and Russia’s “concession” is the nearby town of Olsztyn, which Russia mercifully agrees not to occupy or destroy. Well, it also happens to be a Polish town but Russia in the meantime declared it “historically Russian region” and it now presents it as a concession.</p>
<p>And the 2025 US president says it’s OK, because “peace” and “both sides did concessions”.</p>
</blockquote>
<p><a class=\"tag\" href=\"/search/?q=%23Russia\">#Russia</a> <a class=\"tag\" href=\"/search/?q=%23Poland\">#Poland</a> <a class=\"tag\" href=\"/search/?q=%23NATO\">#NATO</a></p>
" nil nil "2e63a02ec32e9dc8887c2eb60322d1f6") (2 (26587 60093 849007 581000) "https://alexschroeder.ch/view/2025-03-11-chainsaw-politicians" "2025-03-11 Chainsaw politicians" nil "Tue, 11 Mar 2025 11:01:51 +0000" "<h1 id=\"2025-03-11-chainsaw-politicians\">2025-03-11 Chainsaw politicians</h1>
<p>Recovery from DOGE is hard.</p>
<p>To put recovery from DOGE into perspective: In tiny Switzerland we elected prime right-winger Blocher into government and he ran the justice department for a handful years. And he fired a lot of people for efficiency. And the institutions are still struggling twenty years later. People fired find new jobs, new careers, early retirements. People staying work hard, burn out, are angry, work on projects and switch tracks before the projects run into walls. The institutional memory keeps shrinking as the new recruits are younger and younger. Suddenly the seniors have been here for just four years. It’s a disgrace. A festering wound. All the jobs are overwhelming and people are drained when they take these positions and they leave again or burn out or struggle or backstab.</p>
<p>And of course everybody who was against the cuts isn’t automatically in favour of increasing the budgets and raising taxes when the chainsaw politicians are gone. But the jobs still needs to get done and so quality goes down and waiting times increase and you can all join the slow march of institutional death and hope for that rekindling of the founding spirit, when having working institutions are a goal again, when the empathy-deprived scrooges are long gone.</p>
<p><a class=\"tag\" href=\"/search/?q=%23Switzerland\">#Switzerland</a> <a class=\"tag\" href=\"/search/?q=%23USA\">#USA</a></p>
" nil nil "f8c2b2bbbcc0e3c6830ed3e93083983d") (1 (26587 60093 848579 962000) "https://alexschroeder.ch/view/2025-03-09-discord-ipo" "2025-03-09 The looming Discord IPO" nil "Tue, 11 Mar 2025 12:35:10 +0000" "<h1 id=\"2025-03-09-the-looming-discord-ipo\">2025-03-09 The looming Discord IPO</h1>
<p>So# Discord might be going there. I like their offering. I even pay them about $10/month.
What they offer works well.
People get their own little communities to administer, with the tools to administer them well, with the self-written automations and bots to handle communities from a handful of people to many thousands.
Read <a class=\"account\" href=\"https://infosec.exchange/@isotopp\" title=\"@isotopp@infosec.exchange\">@isotopp</a>’s <a href=\"https://infosec.exchange/@isotopp/114116202418228034\">perspective on Discord</a>.</p>
<p>But the monetization drive is strong.
And once the shareholders are in place, pressure for monetization will ramp up even more, I'm sure. How long until it all goes down? Five years?</p>
<p>What are your backup plans?</p>
<p><a href=\"https://campaignwiki.org/wiki/Chat\">My backup plan</a> is an IRC backend (<a href=\"https://ngircd.barton.de/\">ngircd</a> uses about 5M of memory) and two instances of a web front-end called <a href=\"https://thelounge.chat/\">The Lounge</a>. One of them is free for all and connects to my chat server; the other needs registration and offers file uploads and always-on connectivity (it acts as a ``bouncer''). The two of them take about 150M of memory. Each registered account gets a little SQLite file with the logs. No other resources required.</p>
<p>You can connect to the IRC backend directly using your favourite IRC client, of course. Emacs comes with two of them. Just saying. 😄</p>
<p>For iOS, there's <a href=\"https://colloquy.app/\">Colloquy</a>.</p>
<p>For Android, <a class=\"account\" href=\"https://tabletop.social/@wandererbill\" title=\"@wandererbill@tabletop.social\">@wandererbill</a> suggests <a href=\"https://f-droid.org/packages/io.mrarm.irc/\">Revolution IRC</a>.</p>
<p><a class=\"account\" href=\"https://tabletop.social/@phf\" title=\"@phf@tabletop.social\">@phf</a> suggested <a href=\"https://snikket.org/service/quickstart/\">Snikket</a> instead. Installation requires a Docker image.</p>
<p>I dislike Docker, not because of what it is but because of what it implies. A virtual machine inside your virtual machine means that it doesn't auto-update. Upgrading will be tricky. It also means individual deployment requires multiple services such that it ended up being easier for them to supply a Docker image instead of supplying good instructions. I always take that to mean that the setup is brittle and underdocumented. Perhaps I’m wrong but it that’s the suspicion I have.</p>
<p>Generally speaking, I dislike Docker images for my virtual server server (6G memory, 75g storage, 2 cores) because multiple services packaged in a dockerfile usually mean lots of resources required. Frugal computing means that I am loath to accommodate that. I prefer not to upgrade my virtual machine.</p>
<p><a class=\"account\" href=\"https://tabletop.social/@phf\" title=\"@phf@tabletop.social\">@phf</a> also suggested <a href=\"https://app.revolt.chat/\">Revolt</a>.
<a class=\"account\" href=\"https://tabletop.social/@wandererbill\" title=\"@wandererbill@tabletop.social\">@wandererbill</a> created a <a href=\"https://rvlt.gg/wkBDhJPb\">Grenzland Server on Revolt</a>.
<a class=\"account\" href=\"https://social.city-of-glass.net/users/cidney\" title=\"@cidney@social.city-of-glass.net\">@cidney</a> noted that it had Discord-like roles and role management for the server owner to hand out, so perhaps it's quite a suitable replacement.
Revolt can be self-hosted via Docker or self-building. At least there is a lot of info out there.
<a class=\"account\" href=\"https://social.city-of-glass.net/users/cidney\" title=\"@cidney@social.city-of-glass.net\">@cidney</a> also found a wiki pages listing only four known instances including the default one, the largest being Andrew Tate's. 🤮</p>
<p><a class=\"account\" href=\"https://tabletop.social/@wandererbill\" title=\"@wandererbill@tabletop.social\">@wandererbill</a> wanted to give Matrix another spin.
There are two server implementations, Synapse and Dendrite.</p>
<blockquote>
<p>At an absolute minimum, Dendrite will expect 1GB RAM. For a comfortable day-to-day deployment which can participate in federated rooms for a number of local users, be prepared to assign 2-4 CPU cores and 8GB RAM — more if your user count increases. - <a href=\"https://element-hq.github.io/dendrite/installation/planning\">Planning your installation</a></p>
</blockquote>
<p><a class=\"account\" href=\"https://tabletop.social/users/kyonshi\" title=\"@kyonshi@tabletop.social\">@kyonshi</a> suggested <a href=\"https://jitsi.org/\">Jitsi</a>.
I tried to self-host it a few years ago.
It worked well! But it also took a lot of resource. During the video call, the virtual machine's <a href=\"2020-03-26_Jitsi_and_the_CPU\">load went up to 8</a>.
We sometimes use the installation at the <a href=\"https://ffmuc.net/\">Freifunk München</a> for gaming.
Thanks, ffmuc! 😍</p>
<p>So, where does that leave is? I don't know. People don't seem to like The Lounge with IRC backend and I seem to be unwilling to upgrade my hosting commitments.</p>
<p><a class=\"account\" href=\"https://hackers.town/@mc\" title=\"@mc@hackers.town\">@mc</a> recently recommended a different IRC server called <a href=\"https://ergo.chat/about\">Ergo</a> and a different web front-end called <a href=\"https://codeberg.org/emersion/gamja\">Gamja</a> but it's unclear to me what significant advantages either would offer.</p>
<p>Previously:</p>
<blockquote>
<p>So… the situation is bad, but I still use Discord. - <a href=\"2022-08-16_Discord\">Discord</a> (2022)</p>
</blockquote>
<p><a class=\"account\" href=\"https://tilde.zone/@dashdsrdash\" title=\"@dashdsrdash@tilde.zone\">@dashdsrdash</a> wrote wrote in with some interesting feedback. The Zulip part is interesting because I only used it for tiny bit, talking to the maintainers of Antora. Here's what they have to say:</p>
<blockquote>
<ul>
<li>Zulip is great for UI, slightly aggravating to run. It absolutely wants a dedicated server. It has a dice roller as one of the sample bots, and the API is extensive.</li>
<li>IRC is extremely easy to setup and relatively easy to write bots for. Interfaces vary from bare bones to not-bad; The Lounge is up on the not-bad end, and also easy to host.</li>
<li>Matrix may be the future of federated chat systems, but if you don't need federation, the complexity and ongoing maintenance are not worth it.</li>
<li>Jitsi has integrated chat but is video-conferencing-centric; the text chat is actually Prosody (an XMPP/Jabber) server under the hood. Video processing takes up a lot of CPU and bouncing it around takes a lot of bandwidth; otherwise, it's pretty nice.</li>
<li>I haven't tried running Revolt but I looked at the docs and I am really not favorably inclined. They have some questionable technology choices and insist on a Docker-first install that in my experience is a likely sign that there are too many moving parts for anyone to be able to diagnose what's going wrong.</li>
</ul>
<p>My suggestions would be:</p>
<ul>
<li>IRC is still a solid choice</li>
<li>Prosody without the Jitsi video conferencing is pretty nice, albeit a little complex to configure initially.</li>
<li>If I felt like spending the money for a medium-large VM at a hosting service dedicated to gaming, Zulip would be nice.</li>
</ul>
</blockquote>
<p>I didn't know about the hosting of Zulip but the rest tracks my experience. IRC is the simplest option.</p>
<p><a class=\"account\" href=\"https://social.vivaldi.net/@randomwizard\" title=\"@randomwizard@vivaldi.net\">@randomwizard</a> is giving <a href=\"https://galene.org/\">Galène</a> a try. Videoconferencing that might not be as hard to setup correctly as self-hosted Jitsi!</p>
<p><a class=\"tag\" href=\"/search/?q=%23Snikket\">#Snikket</a> <a class=\"tag\" href=\"/search/?q=%23Discord\">#Discord</a> <a class=\"tag\" href=\"/search/?q=%23Revolt\">#Revolt</a> <a class=\"tag\" href=\"/search/?q=%23Matrix\">#Matrix</a> <a class=\"tag\" href=\"/search/?q=%23Jitsi\">#Jitsi</a> <a class=\"tag\" href=\"/search/?q=%23IRC\">#IRC</a> <a class=\"tag\" href=\"/search/?q=%23Chat\">#Chat</a></p>
" nil nil "9814721ff9c54f91818decf5447b9f22")))