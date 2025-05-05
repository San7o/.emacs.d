;; -*- coding: utf-8-emacs; -*-
(setq nnrss-group-data '((12 (26629 57990 639233 261000) "https://www.usebox.net/jjm/blog/playing-skyrim/" "Playing Skyrim" nil "Sun, 20 Apr 2025 16:18:52 +0000" "<p>I used to write more often here about games I was playing, specially because it was a rare event.</p>
<p>Now things have changed a bit. Essentially because my PC broke -no idea why, which is what happens with the modern computers: they just stop working-, and I got a <em>modern-ish</em> replacement.</p>
<p>It isn't a gaming PC, but has a Ryzen 9 CPU that allows playing <em>some stuff</em>, including games <em>not that new</em>, but that for me look amazing independently of not being state of the art any more. For example: <a href=\"https://en.wikipedia.org/wiki/The_Elder_Scrolls_V:_Skyrim\">The Elder Scrolls V: Skyrim</a>.</p>
<figure >

<img src=\"https://www.usebox.net/jjm/blog/playing-skyrim/nice-views.png\" alt=\"Some nice views in the game\">


<figcaption>
<h4>Not the best views, but unfortunately I didn't think about taking screenshots until now</h4>

</figcaption>

</figure>
<p>When playing new games, I don't seem to stick with them for more than a handful of sessions, and it feels like real effort! Until I tried Skyrim. I've been playing for <code>45 hours</code> so far, and my interest hasn't waned at all.</p>
<p>Sure, some of the side quests are awful -like you stumble upon a bandit hideaway, and of course you murder everybody-, and the main quest is not super original; but there is something about walking around foraging ingredients to make potions, or visiting new places -not necessarily dungeons-, or going back to my house in Whiterun and talk to the two girls I adopted -I play a woman and they call me <em>mommy</em>-; that clicks with me. I had tried <a href=\"https://en.wikipedia.org/wiki/The_Elder_Scrolls_IV:_Oblivion\">Oblivion</a> -the previous game in the series- before this one, but after a few sessions I forgot to keep playing it.</p>
<figure >

<img src=\"https://www.usebox.net/jjm/blog/playing-skyrim/dragon-fight.png\" alt=\"Fighting a dragon\">


<figcaption>
<h4>You get to kill a few of these in the game and some people say that after a while it gets old</h4>

</figcaption>

</figure>
<p>Also the difficulty seems OK for me, so far. I'm playing in the default setting and only a couple of events felt a bit unbalanced -and there are some caves with vampires that I had to give up; but some day I will return and they'll see!-, and another couple of encounters required some creativity. In one of those, my first companion Lydia sadly died, and I refused to reload a save: that's my experience of Skyrim and I will take it as it is.</p>
<p>Of course everything is scripted, but you still have some agency and being an open world game, I feel like <em>it is my story</em>.</p>
<p>As always, I'm not sure how much I'm going to play, but I don't feel like quitting for now. I know is not too original, but considering that I don't play many <em>new</em> games, Skyrim is probably my favourite of <em>the modern era</em>!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Playing%20Skyrim\">an email</a>!</p>" nil nil "cbe1439d03a537289cb6fbc7652de420") (11 (26606 45060 91532 372000) "https://www.usebox.net/jjm/blog/logwatch-and-systemd-journal/" "logwatch and systemd/journal" nil "Wed, 02 Apr 2025 09:42:07 +0000" "<p>I'm a bit old-style and I like <a href=\"https://manpages.debian.org/testing/logwatch/logwatch.8.en.html\">logwatch</a>, and all my servers send me an email every day with a handy summary of what happened on the server. And sometimes I even read those emails! It is probably not as useful as <a href=\"https://manpages.debian.org/testing/logcheck/logcheck.8.en.html\">logcheck</a>, but it is easier to use.</p>
<p>Anyway, from the man page:</p>
<blockquote>
<p>Logwatch is a customizable, pluggable log-monitoring system. It will go through your logs for a given period of time and make a report in the areas that you wish with the detail that you wish.</p>
</blockquote>
<p>I have been using it <em>virtually for ever</em>, and I was setting up a new server last weekend and of course I had to get that daily email. But turns out a fresh install of Debian 12 comes with <code>systemd-journald</code> -my other servers were <em>upgraded</em>, so they still use the old logging system-, and there aren't logs for <code>sshd</code> that <code>logwatch</code> can process. At least not in the usual place.</p>
<p>In reality <code>systemd-journald</code> is not that different from what you get with <code>rsyslog</code>, but some of the differences are annoying, like being a binary log that means you can't use the text processing tools you are used to in simple files, you need to use <code>journalctl</code>. And that is what prevents <code>logwatch</code> from checking <code>sshd</code>'s logs, because there is not <code>auth.log</code> file.</p>
<p>I don't like the direction  most Linux distributions are taking embracing <code>systemd</code> and its ecosystem, but I trust Debian, even if some decisions are controversial. In theory <code>systemd-journald</code> improves on a few things, but in practice none of those really make a difference to me, and I'm only left with the annoyance of things that used to work that now they don't.</p>
<p>This time I decided to see if I can still use it, instead of just installing <code>rsyslog</code> like in the other servers. And turns out, <code>logwatch</code> can interact with <code>journalctl</code>.</p>
<p>We only have to add a file in <code>/etc/logwatch/conf/services</code> with the name of the service ending in <code>.conf</code>, in this case <code>sshd.conf</code>, with the following content:</p>
<pre tabindex=\"0\"><code>LogFile =
LogFile = none
*JournalCtl = \"--output=cat --unit=ssh.service\"
</code></pre><p>With <code>Logfile</code> you specify a <em>logfile group</em>, and it is required. You can provide as many entries as you want and they will be merged. We don't really have a log file, that's why we need to provide two entries: one empty to clear any value, and the other with a magic string <code>none</code> for no logfile group (we could also create a logfile group pointing to an empty log file, but this is cleaner).</p>
<p>Then <code>*JournalCtl</code> refers to a script in <code>/usr/share/logwatch/scripts/</code> that will interface with <code>journalctl</code>, and will enable <code>logwatch</code> to process the missing logs.</p>
<p>Once the file is in place, you can run <code>logwatch</code> with <code>/etc/cron.daily/00logwatch</code> and you should get your email, including the report of the <code>sshd</code> logs (you can also just run <code>logwatch</code> and get the report on the console, but testing end-to-end is nice in this case).</p>
<p>I assume I will find other cases in which <code>journalctl</code> gets in the way and I may end installing <code>rsyslog</code> anyway, but for now things work!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20logwatch%20and%20systemd%2fjournal\">an email</a>!</p>" nil nil "4c8f512bc15e904e2aeb953652effb0c") (10 (26587 55753 155547 619000) "https://www.usebox.net/jjm/blog/the-problem-of-the-llm-crawlers/" "The problem of the LLM crawlers" nil "Wed, 19 Mar 2025 09:20:46 +0000" "<p>The founder of <a href=\"https://sourcehut.org/\">SourceHut</a>, an open source platform to build software collaboratively -sometimes referred to as <em>forge</em>-, has written a post in his blog that shows <a href=\"https://drewdevault.com/2025/03/17/2025-03-17-Stop-externalizing-your-costs-on-me.html\">the scale of the problems that bad crawlers feeding AIs are causing</a>:</p>
<blockquote>
<p>If you think these crawlers respect robots.txt then you are several assumptions of good faith removed from reality. These bots crawl everything they can find, robots.txt be damned, including expensive endpoints like git blame, every page of every git log, and every commit in every repo, and they do so using random User-Agents that overlap with end-users and come from tens of thousands of IP addresses – mostly residential, in unrelated subnets, each one making no more than one HTTP request over any time period we tried to measure – actively and maliciously adapting and blending in with end-user traffic and avoiding attempts to characterize their behavior or block their traffic.</p>
</blockquote>
<p>I know other people suffering with those <em>new</em> crawlers that are essentially very aggressive -or in some cases likely <em>broken</em>-, don't follow the rules, and try to conceal themselves as regular traffic. For example, read what <a href=\"https://alexschroeder.ch/view/2024-09-15-emacs-china\">Alex has been writing about trying to keep Emacs Wiki online</a> -and <a href=\"https://alexschroeder.ch/view/2024-11-25-emacs-china\">a follow up</a>, <a href=\"https://alexschroeder.ch/view/2025-01-23-bots-devouring-the-web\">and another</a>, <a href=\"https://alexschroeder.ch/view/2025-02-19-bots-again\">and it won't stop</a>, etc-.</p>
<p>As Drew mentions on his post, you can find a lot of system administrators struggling with this, just because they are sharing publicly source code. As it sounds: because they have decided to distribute open source.</p>
<p>I have been <a href=\"https://www.usebox.net/jjm/blog/self-hosting-git-repos-for-now/\">self-hosting my repositories since 2023</a> and although it is not really a forge, I managed to make it <em>small scale</em> and work for me by providing a web interface on <a href=\"https://git.usebox.net/\">git.usebox.net</a>. It has ``about pages'' -rendering the <code>README</code> see for example <a href=\"https://git.usebox.net/spacebeans/about/\">the SpaceBeans page</a>-, and together with email and <code>RSS</code> feeds to track releases, it just works.</p>
<p>I noticed some issues last year in my server, but I attributed it to a mistake in the setup of <a href=\"https://git.zx2c4.com/cgit/about/\">cgit</a>, honestly thinking that it was less performant than I was expecting and just configured a cache. It is supported by the tool, but being optional I thought <em>I probably don't need that</em>.</p>
<p>Setting the cache seemed to fix the issue, and I didn't investigate further. Until I few weeks ago that I was reading on Mastodon how someone was having a hard time dealing with these bots, and I realised that <em>it was probably happening to me but I wasn't paying attention</em>. And that was the case!</p>
<p>Essentially it is what Drew is describing -if much smaller in my case-, and for me it seems to be always coming from the same IPs owned by Alibaba Cloud -that seem to have their own ``Generative AI'' product-. The day I checked the logs, I had over <code>200,000</code> requests in 24 hours coming from only two IPs.</p>
<p>My first impulse was to check with <code>whois</code> who was the owner of the IPs and, because they are owned by a cloud company, block on the firewall the whole range. And I kept monitoring the situation for a couple of days.</p>
<p>Of course they kept coming, so I kept blocking. At some point there was a few <code>/16</code>, <code>/15</code>, and even some <code>/14</code> ranges in my block list. That was already <code>681,504</code> IPs, all owned by the same cloud company.</p>
<p>Because I have better things to do -really-, I wrote a small script that will ban IPs if they make what I consider ``an abusive number of requests in 24 hours'', and keep the ban until they stop the abuse for 2 complete days. I don't think this should affect legit users, but if you experience any issues, please contact me to justify why you need that volume of requests!</p>
<p>I did this on principle, because my <em>forge</em> is very small and I can handle the load. It wasn't strictly necessary for me to block these bad actors, but I know people that couldn't spend time with the problem and had to make all those open source repositories private; which is in my opinion the tragedy of all this: we are sharing code with the rest of the world, and the abuse of these companies trying to make profit on it is ruining it all for everybody.</p>
<p>I can't help thinking about the <a href=\"https://en.wikipedia.org/wiki/Instrumental_convergence#Paperclip_maximizer\">paperclip maximizer</a>.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20The%20problem%20of%20the%20LLM%20crawlers\">an email</a>!</p>" nil nil "94a3c4f38d06ca3aab7e936fe27db2b6") (9 (26587 55753 155092 100000) "https://www.usebox.net/jjm/blog/using-a-light-theme/" "Using a light theme" nil "Sat, 15 Mar 2025 08:22:01 +0000" "<p>Spring is coming and we have more hours of sun, or light at least, so I've been suffering headaches and pain around my eyes -likely to be eye strain-. My solution for this has always been closing the curtain so I can keep doing my work -that requires staring to a computer screen-. Is not living in darkness, but I was avoiding bright light into my eyes.</p>
<p>I've been using a dark theme in my terminal and my editor, that is what I use most when I'm programming, since <em>forever</em>. Can't put a date, but over 20 years ago. I always found the black background more comfortable, and my screens have already very low brightness.</p>
<p>And over the years the ``dark themes'' have become more popular, and now virtually everything from your computer to your phone can be done in a dark theme; some websites (like this blog!) even support both light and dark themes depending on the settings of the user -the browser chooses the right CSS-.</p>
<p>There is also an aesthetic consideration: it just looks better <em>to me</em>.</p>
<p>But I know as well that there is some scientific proof that dark themes aren't really the best for people with astigmatism -and to some extent myopia-. Essentially because a dark mode requires your pupils to dilate, which can make it harder to focus on the screen, resulting as well on the foreground content bleeding into the dark background and making it hard to read -specially with small fonts-. And that can lead to eye strain.</p>
<p>For some time now I have my <em>phone</em> configured to use <strong>both</strong> dark and light themes, depending on the time of the day: during the day hours it will use a light theme, and during the night hours a dark theme. And turns out I can see the screen better during the day!</p>
<p>So I have been running an experiment with the work laptop -that I use during the day-, and changed everything from a dark theme to a light one. Because I'm using the excellent <a href=\"https://github.com/sainnhe/gruvbox-material\">gruvbox-material</a>, it was very easy to switch my editor.</p>
<figure >

<img src=\"https://www.usebox.net/jjm/blog/using-a-light-theme/gruvbox-light.png\" alt=\"Screenshot of neovim editing a file using a light theme\">


<figcaption>
<h4>Gruvbox Material (light version)</h4>

</figcaption>

</figure>
<p>After a couple of days in which I didn't close the curtains, I think I can feel the benefits: no eye pain or headaches! So I have decided to transition completely, including in my personal machine, with the caveat that it requires me now to ensure that I always have good lighting when I'm using the computer -specially at night-, so the bright light coming out of the screen is not causing other problems.</p>
<p>Perhaps Gurvbox is not the most popular theme, but is popular enough that you can find settings for most popular applications. In my case there is already a theme built-in in <a href=\"https://wezterm.org/\">WezTerm</a>, and it was easy to find <a href=\"https://git.usebox.net/dotnvim/tree/tmux-gruvbox-light.conf\">a theme for tmux</a>.</p>
<p>Then I had to set my desktop to use a light theme, and everything else changed, with the exception of my i3 theme, that for now I'm keeping with the Gruvbox dark theme because looks great and is a very small portion of the screen that won't affect my eyes.</p>
<p>I've never been an advocate for dark themes -use whatever works for you and leave me alone!-, and this post is not me recommending a light theme. It works for me and I wanted to share the experience.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Using%20a%20light%20theme\">an email</a>!</p>" nil nil "8d28bf6af50b0edb6631309a45473d60") (8 (26587 55753 154563 709000) "https://www.usebox.net/jjm/blog/using-my-own-dns-resolver/" "Using my own DNS resolver" nil "Sun, 23 Feb 2025 12:50:25 +0000" "<p>Many years ago I used to have a home server. It was connected to <em>elxwifi</em>, a metropolitan area network built on WiFi, and also to the Internet.</p>
<p>It was hosting my blog and a few more things, so it kind of made sense to provide some services to the local network. Like a good firewall with QoS -back then residential connections didn't have much upload bandwidth-, HTTP proxy for caching, and a DNS resolver.</p>
<p>I was reading the other day how <a href=\"https://boingboing.net/2025/02/07/recaptcha-819-million-hours-of-wasted-human-time-and-billions-of-dollars-google-profit.html\">reCAPTCHA has wasted 819 million hours of human time and led to billions of dollars in profits</a> by helping Google in their tracking business.</p>
<blockquote>
<p>Re-captcha takes a pixel by pixel fingerprint of your browser, a realtime map of everything you do on the internet.</p>
</blockquote>
<p>And Cloudflare Protection achieves a similar goal: when you are forced to ``prove that you are human'' is just because they don't have enough tracking information about you, so# you could be a bot. Because that is what differentiates humans from robots these days?</p>
<p>For whatever reason it bothered me that <a href=\"https://support.mozilla.org/en-US/kb/dns-over-https-doh-faqs\">Mozilla uses DNS over HTTPS with Cloudflare</a>, and although they have <a href=\"https://developers.cloudflare.com/1.1.1.1/privacy/cloudflare-resolver-firefox/\">a clear privacy policy</a>, big tech has exhausted any trust left in me.</p>
<p>And what about my Internet provider's DNS resolver? Well, my provider -like many others- implements a DNS hijacking service, so if you try to resolve in your browser a domain that doesn't exist, they redirect you to a landing page they own. This can be disabled, but we are back to <em>trust</em> -why is this opt-out?-.</p>
<p>I don't have a 7x24 server at home, so today I'm not going to implement this for my whole local network, but I fancied the experiment with my machine.</p>
<p>Please take into account that this <em>might not</em> be a good idea for you. My PC never leaves my desk and it always uses my home connection, so the use case is not the same as if I was using a laptop on a coffee shop's free WiFi. I would say using Mozilla's DoH may be your best option!</p>
<p>I installed <a href=\"https://www.nlnetlabs.nl/projects/unbound/about/\">Unbound</a>:</p>
<blockquote>
<p>Unbound is a validating, recursive, caching DNS resolver. It is designed to be fast and lean and incorporates modern features based on open standards.</p>
</blockquote>
<p>My OS is Debian 12, so I just run:</p>
<pre tabindex=\"0\"><code>sudo apt install unbound
</code></pre><p>The configuration is in <code>/etc/unbound</code> and there is a full commented example in <code>/usr/share/doc/unbound/examples/unbound.conf</code>.</p>
<p>I recommend reading the base configuration, but essentially Debian enables remote control in <code>localhost</code> that is handy to check stats and manage the service using the <code>unbound-control</code> tool as <code>root</code>.</p>
<p>I added a <code>local.conf</code> file in <code>/etc/unbound/unbound.conf.d</code>:</p>
<div class=\"highlight\"><pre tabindex=\"0\" style=\"color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;\"><code class=\"language-yaml\" data-lang=\"yaml\"><span style=\"display:flex;\"><span><span style=\"color:#f92672\">server</span>:
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">username</span>: <span style=\"color:#e6db74\">\"unbound\"</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">directory</span>: <span style=\"color:#e6db74\">\"/etc/unbound\"</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">do-ip6</span>: <span style=\"color:#66d9ef\">no</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">interface</span>: <span style=\"color:#ae81ff\">127.0.0.1</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">port</span>: <span style=\"color:#ae81ff\">53</span>
</span></span><span style=\"display:flex;\"><span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">cache-max-ttl</span>: <span style=\"color:#ae81ff\">14400</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">cache-min-ttl</span>: <span style=\"color:#ae81ff\">1800</span>
</span></span><span style=\"display:flex;\"><span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">hide-identity</span>: <span style=\"color:#66d9ef\">yes</span>
</span></span><span style=\"display:flex;\"><span>  <span style=\"color:#f92672\">hide-version</span>: <span style=\"color:#66d9ef\">yes</span>
</span></span></code></pre></div><p>I can't remember if I had to do anything else, but it is managed by <code>systemd</code>, so you can run the usual commands, starting with <code>systemctl status unbound</code>.</p>
<p>Then I had to make two changes to use the new resolver:</p>
<ol>
<li>In Network Manager, I edited my wired connection -yes, I don't use WiFi in this machine-, setting method ``Automatic (DHCP) addresses only'' and in DNS servers ``127.0.0.1''. Then restart the connection to apply the changes. When all is done, your <code>/etc/resolv.conf</code> should be like this:</li>
</ol>
<pre tabindex=\"0\"><code># Generated by NetworkManager
nameserver 127.0.0.1
</code></pre><ol start=\"2\">
<li>In Firefox, open settings and search for ``DNS''. In ``Enable DNS over HTTPS using'', select ``Off, use your default DNS resolver''.</li>
</ol>
<p>And that should be all.</p>
<p>I don't have any scientific proof, but browsing feels snappier, and I guess it makes sense because for cached name resolutions there is no need to go to Cloudflare at all!</p>
<p>After a bit of browsing you can run <code>unbound-control stats_noreset</code> (the regular <code>stats</code> clears them), and get something like:</p>
<pre tabindex=\"0\"><code>thread0.num.queries=26297
thread0.num.queries_ip_ratelimited=0
thread0.num.cachehits=13232
thread0.num.cachemiss=13065
...
</code></pre><p>There is no need to be an expert to more or less understand what these mean.</p>
<p>It was all very easy, and it took much more time writing this post than setting it up. This could be a good service to offer the local network, so perhaps I have found finally a good use for one of my Raspberry Pis!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Using%20my%20own%20DNS%20resolver\">an email</a>!</p>" nil nil "0811c7a157689036a1c1a2f878cb01f5") (7 (26587 55753 153880 354000) "https://www.usebox.net/jjm/blog/web-based-minigame/" "Web based minigame" nil "Mon, 10 Feb 2025 09:02:17 +0000" "<p>Yesterday I <a href=\"https://ctrl-c.club/~reidrac/shooter/\">published a minigame</a> I made in JavaScript following the ideas of my 7yo son. He drew most of the graphics -I gave him a hand with the slimes' sprites-, and I had never made a twin stick shooter type of game, so that was interesting. I haven't played any games on the genre either, and I think I understand now why they can be very fun!</p>
<p>It was a good exercise to use <a href=\"https://git.usebox.net/js-canvas-2023/about/\">my JavaScript codebase with canvas 2D</a> that I put together in 2023 <a href=\"https://www.usebox.net/jjm/blog/refreshing-my-javascript/\">refreshing my knowledge of the language</a> with the new shiny bits from <code>ECMAScript 2016</code>, that didn't exist -or I wasn't aware of them- when I made some web games back in 2014, like <a href=\"https://www.usebox.net/jjm/flax/\">Flax</a>.</p>
<p>It is still more like a tech demo, but playable -and kind of fun for 10 minutes-, and it helped me to make some improvements on the ``engine''. The development experience was OK, but the bits I don't like about JavaScript are still there, including the hit and miss performance of canvas 2D on Linux.</p>
<p>I don't see myself writing larger games in JavaScript, but for small prototypes or jam games -if I was still doing jams!-, it could be a good match.</p>
<p>The source is available <a href=\"https://git.usebox.net/js-twin-shooter/about/\">js-twin-shooter</a>.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Web%20based%20minigame\">an email</a>!</p>" nil nil "a73d1e75e5fa9d0f666f31fbb4404627") (6 (26587 55753 153418 673000) "https://www.usebox.net/jjm/blog/reading-feeds-should-be-easier/" "Reading feeds should be easier" nil "Thu, 06 Feb 2025 20:00:58 +0000" "<p>This is a bit of a rant. You can skip it or, depending on you experience, you may come for the ride nodding along.</p>
<p>I have spent a couple of evenings improving my <em>feed reading experience</em>, and I'm not sure why it is so difficult in 2025 to read blogs like we did in the early 2000s. Was it bad back then? It is possible it was!</p>
<p>Let's set the starting point:</p>
<ul>
<li>I don't want to use a cloud service to read my blogs. I only read blog in my main PC, never in my phone -I used to, but I realised <em>I wasn't really reading them</em>-.</li>
<li>Although is not necessarily linked to the previous point, I don't want to use a website either. Essentially because I don't want to self-host a complex application I would have to maintain to just <em>read blogs on my PC</em>. I know I could just run some containers and whatnot on my PC, but that's over-engineering it.</li>
<li>If I'm using a native application, I want it to <em>be native</em>. We used to have those applications, now we have <a href=\"https://www.electronjs.org/\">Electron</a> and <a href=\"https://flutter.dev/\">Flutter</a>, and probably others I don't want to know about. Let websites be websites, and native applications, well# something else.</li>
</ul>
<p>I thought it would be easy! There aren't that many options currently open source, working on Linux, and still maintained: do you want to download and process content from the Internet with an application that has been untouched for years? Sounds fun!</p>
<p>I started using <a href=\"https://lzone.de/liferea/\">Liferea</a> over 20 years ago, but a few months ago <em>something happened</em> -can't remember what, it could have been me!-, and I decided to look around to see what was out there.</p>
<p>And I found <a href=\"https://gitlab.com/news-flash/news_flash_gtk\">NewsFlash</a>. Although not exactly: what I found because the decadence of the search engines -topic for another day- is a lot of <em>click-bait</em> sites saying how amazing NewsFlash is. And it really looks good, I agree!</p>
<p>The easiest way of using the latest version is via <a href=\"https://flathub.org/apps/io.gitlab.news_flash.NewsFlash\">its official flatpak</a>, which I'm not the biggest fan of but you can't have it all. And slowly but surely you realise that all those sites raving about NewsFlash haven't used it for more than 10 minutes.</p>
<p>Don't get me wrong. NewsFlash it is Open Source and it keeps improving with each release. I have reported bugs, the response times of the main developer are fantastic, and I believe it has a bright future ahead. It is just that <em>currently</em> it isn't a good match for my needs, and I don't have the time -or the skills, to be honest- to contribute and make it work for me.</p>
<p>Hopefully I'm not unfair or not too picky, but I hit bugs importing an <code>OPML</code> file -that I resolved <a href=\"https://mastodon.gamedev.place/@reidrac/113942141819646551\">editing the sqlite database by hand</a>, fun!-, exporting to <code>OPML</code> doesn't seem to overwrite an existing file correctly and can result on a corrupt file -<a href=\"https://gitlab.com/news-flash/news_flash_gtk/-/issues/745\">seems to be fixed already</a>!-, it doesn't seem to be rendering the fonts I choose -probably Flatpak's fault-, and other small paper cuts I can't remember right now.</p>
<p>Oh, and the last straw was when it crashed <em>my whole system</em>. Can't tell 100% what happened because the system didn't respond and I had to power-cycle, but my I3 status was reporting <code>800MB</code> free from the <code>32GB</code> of RAM that I have on my PC. Not bad for an application written in <a href=\"https://www.rust-lang.org/\">rust</a>!</p>
<p>At the end, I'm back with Liferea. I edited <code>~/.config/liferea/liferea.css</code> to:</p>
<div class=\"highlight\"><pre tabindex=\"0\" style=\"color:#f8f8f2;background-color:#272822;-moz-tab-size:4;-o-tab-size:4;tab-size:4;\"><code class=\"language-css\" data-lang=\"css\"><span style=\"display:flex;\"><span><span style=\"color:#f92672\">div</span>.<span style=\"color:#a6e22e\">content</span> {
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">margin</span>: <span style=\"color:#ae81ff\">2</span><span style=\"color:#66d9ef\">em</span>;
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">max-width</span>: <span style=\"color:#ae81ff\">50</span><span style=\"color:#66d9ef\">em</span>;
</span></span><span style=\"display:flex;\"><span>}
</span></span><span style=\"display:flex;\"><span>
</span></span><span style=\"display:flex;\"><span><span style=\"color:#f92672\">body</span> {
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">font-family</span>: <span style=\"color:#e6db74\">\"Garamond\"</span>;
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">font-size</span>: <span style=\"color:#ae81ff\">16</span><span style=\"color:#66d9ef\">px</span>;
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">line-height</span>: <span style=\"color:#ae81ff\">1.5</span>;
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">color</span>: rgb(<span style=\"color:#ae81ff\">240</span>, <span style=\"color:#ae81ff\">240</span>, <span style=\"color:#ae81ff\">240</span>);
</span></span><span style=\"display:flex;\"><span>    <span style=\"color:#66d9ef\">background-color</span>: rgb(<span style=\"color:#ae81ff\">32</span>, <span style=\"color:#ae81ff\">32</span>, <span style=\"color:#ae81ff\">32</span>);
</span></span><span style=\"display:flex;\"><span>}
</span></span></code></pre></div><p>And with GTK on a dark theme, looks decent enough. I'm back to a happy place, and the tools I use work and I'm not frustrated any more.</p>
<p>Then perhaps we should take a look to the current state of the feeds out there:</p>
<ul>
<li><strong>RSS is still popular, although it has many limitations</strong>. And I know it because: I use RSS! At very least it needs some extensions from Atom, but it is common that the feed uses the post creation date in <code>pubDate</code> instead of <em>when it was modified last time</em> resulting on updates to the post never showing in the feed reader. I am conflicted on this one: is it the RSS' fault or the reader's limitation? I don't know, but it is hard to detect this unfortunately. <strong>We should be using Atom instead</strong> because it makes distinction between <em>published</em> and <em>updated</em>.</li>
<li>It is not common, but some people -including me- like tinkering, and we end with <strong>bad implementations of RSS or Atom</strong> -e.g. the images won't load on the feed readers-. You can contact the author, but let's be real: people are busy and I didn't get results, so no images on that blog.</li>
<li><strong>Some feeds don't include the full post</strong>. I don't know why, but back in the day this was because the blog post had ads and those don't show in the feed. NewsFeed deals with it beautifully and turns out <a href=\"https://www.lzone.de/liferea/blog/Liferea-Trick-7-Force-Read-Full-Posts\">Liferea can do it as well</a> -although is not 100% consistent applying its theme, but it is <em>close enough</em>-. This ``retrieve the post from the web'' works also with the two previous problems, but then feels like we are failing a bit a <em>syndicating content</em>.</li>
</ul>
<p>Finally, it is kind of difficult to find new interesting blogs.</p>
<p>Back in the early 2000s we had <em>blogrolls</em> and comments, and both were an excellent way to build your own community of blogs and find new content <em>organically</em>.</p>
<p>Unfortunately all that was ruined because Google's dominance in the search space and ads, and their <a href=\"https://en.wikipedia.org/wiki/PageRank\">pagerank</a> that lead to <a href=\"https://en.wikipedia.org/wiki/Search_engine_optimization\">SEO</a> and <em>spam</em>, and links had <em>value</em> beyond their original intent of <em>linking content</em>. Having comments on your blog wasn't useful anymore, because it was mostly <em>spam</em>, and most of us removed the functionality.</p>
<p>Similarly people started to drop the <em>blogrolls</em>, because all that <em>perceived value</em> on the outgoing links. Which I don't think it matters anymore because Google buried blogs deep in their search results, so you may as well have links. If I stopped having a <em>blogroll</em> is because the blogs I was reading disappeared, mostly. And I lost the community part around blogging.</p>
<p>Since about a year that <a href=\"https://www.usebox.net/jjm/notes/blogroll/\">my blogroll</a> is back, and we'll see about the community. Go and check it, you may find blogs that you like.</p>
<p>If you got to this point, I hope it wasn't too bad. Despite all these arguably small things, I love it and I'm slowly building a list of blogs that I enjoy reading, and I'm even writing about it!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Reading%20feeds%20should%20be%20easier\">an email</a>!</p>" nil nil "6dcc34e9f91c15616a4d23fcd85af77b") (5 (26587 55753 152465 914000) "https://www.usebox.net/jjm/blog/why-blog/" "Why I blog?" nil "Wed, 29 Jan 2025 09:00:26 +0000" "<p>I've been thinking about this after <a href=\"https://alexschroeder.ch/view/2025-01-25-why-blog\">Alex asked himself</a> and blogged about the ``Blog Question Challenge'':</p>
<ul>
<li>Why did you start blogging in the first place?</li>
<li>What platform are you using to manage your blog, and why do you use it?</li>
<li>Have you blogged on other platforms before?</li>
<li>What’s your favourite post on your blog?</li>
<li>Any future plans for the blog?</li>
</ul>
<p>I found interesting Alex's answers because my first blog, that <a href=\"https://web.archive.org/web/20210415113005/https://blackshell.usebox.net/\">I closed in 2021 after 18 years</a>, also <em>didn't start as a blog</em>.</p>
<p>Back in 2003 I had a home server -my old Pentium 100Mhz initially- and I was part of a project to build a metropolitan area network using a wireless -I still have <a href=\"https://www.usebox.net/jjm/obsd-wifi/elchewireless/proyecto-elchewireless.pdf\">a presentation in PDF about the project</a>; in Spanish-. My server was connected to a nearby <em>elxwifi</em> node (that's how we called our network), and I offered some services. That included a website in which I shared news about my server and the project, in reverse chronological order -newer entries first-. I had no idea that it was a blog, but that was what started it all for me.</p>
<p>At some point the web was also available via <em>the Internet</em>, which meant a bit more attention than the handful of visits I would get via the wireless network, and because I was learning a lot of new things about open source and Linux, I started to write about that in my page. Then you <em>read</em> other blogs, start commenting on those, and the authors of those blogs comment on yours, and you build a small community. A <em>social network</em> if you will. We called it <em>blogosphere</em>.</p>
<p>I met a lot of interesting people thanks to my blog. Some of them even in person -there were meet ups called <em>Beers and Blogs</em>, for example-, with friendships that last more than 20 years now.</p>
<p>Because my initial approach was <em>homebrew</em>, I ended writing my own blogging software in PHP with MySQL as database to store the posts. I rewrote that a few years later in Python (with Redis to store the posts; during the NoSQL <em>hype</em>), because I was learning that language and that's what you used to do back then. Today I don't need any dynamic parts, so I'm using <a href=\"https://gohugo.io/\">Hugo</a> to manage this blog as a static site.</p>
<p>I don't think I have a favourite post, but the last post in my old blog was emotive to write. Not every day you decide to end something that has been with you for so long.</p>
<p>I'm not sure what are my plans for this blog. I started trying to replace other social media -<em>Twitter</em> back then-, so I used it to write updates about game development and my projects, and I still do that; but in my experience, thematic blogs are very hard to keep in focus and they turn a bit <em>personal blogs</em> at the end. So I may write about anything I find interesting and I feel like sharing.</p>
<p>I guess <a href=\"https://www.usebox.net/jjm/blog/how-do-we-get-back/\">I would like to go back to that version of the Internet</a>, that includes writing a blog and participating in memes like this one! So I'm going to tag <a href=\"https://oscarmlage.com/\">Oscar</a>, that was one of those bloggers that started blogging by the time I started, and I'm interested in his answers to this challenge.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Why%20I%20blog%3f\">an email</a>!</p>" nil nil "74a1c00d14f667d8199163ae0ecaef63") (4 (26587 55753 151878 89000) "https://www.usebox.net/jjm/blog/and-that-was-2024/" "And that was 2024" nil "Wed, 08 Jan 2025 19:16:32 +0000" "<p>Well, <a href=\"https://www.usebox.net/jjm/blog/2023-recap-sort-of/\">I did it last year</a>, sort of. Is not that I don't like writing this type of post, because it is good to reflect on what happened in the year that ends, but I always have <em>that feeling</em> that I'm missing a lot of things. Anyway, let's do some highlights at least.</p>
<p>Let's start with <em>gamedev</em>: two games this year! Not bad for feeling a bit <em>uninspired</em>. Part of the success is perhaps because my 7 years old son want <em>us</em> -which is <em>me</em>- to make more games.</p>
<p>I released two good games, if I say so myself:</p>
<ul>
<li><a href=\"https://www.usebox.net/jjm/heart-of-salamanderland/\">The Heart of Salamanderland</a> (Amstrad CPC), that will have a sequel we have been planning already.</li>
<li><a href=\"https://www.usebox.net/jjm/alien-intruder/\">Alien Intruder</a> (DOS 16-bit), that feels a bit too close to the end of the year, but to be fair it was <em>almost finished</em> for a while but I run out of steam in the last 10%.</li>
</ul>
<p>Why I have been <em>uninspired</em>? I don't know for sure. We have passed the <strong>10 years</strong> mark of me releasing consistently at least one game every year (sometimes more!). I suspect I'm getting tired because it is a lot of effort. Not that much the actual work of programming, drawing the graphics, and writing the music; but the focus required to actually finish a more or less polished game, and release it -two different things, by the way-.</p>
<p>If found myself wondering if it was worth it, pushing forward for months to reach my own high standards, when it is a free game after all. Even if I do things <em>for myself</em> -and my sons, of course-, I believe it is human wanting to know that what you do kind of matters. There so much stuff out there, and could I be using my free time for other things? Absolutely.</p>
<p>I can hear you say: <em>take a break!</em> And you may be right, but I don't want to go back to ``not finishing things''. I suspect there is a risk of that if I stop.</p>
<p>As I mentioned recently, <a href=\"https://www.usebox.net/jjm/blog/more-haskell-in-2025/\">I would like to write more Haskell in 2025</a>, and that would mean a bit less time for <em>retro-gamedev</em>. So that could be it: not that much a break as to <em>do different things</em>.</p>
<p>And that goes in hand with my old mini PC from 2015 (an Intel Core i3-5010U), dying on me. So I got a new one, this time a bit more powerful. Still not what you would consider a <em>gaming rig</em>, but is clearly <em>not a potato</em> like the old one, so# I can play <em>modern-ish</em> games now!</p>
<p>I suppose we can add that to the list of things I could be doing instead of spending all my nights working on games, isn't it? Anyway, not a big factor, but I have enjoyed finishing <a href=\"https://www.supergiantgames.com/games/pyre/\">Pyre</a> -after <a href=\"https://www.usebox.net/jjm/blog/transistor/\">I completed Transistor</a>, I'm a big fan of Supergiant Games-. It is a beautiful game, with a great story, music and sound design. Very inspiring, even if in a way that I'm sure I can't make games like that.</p>
<p>Because <a href=\"https://lutris.net/\">Lutris</a> is awesome, we have been trying other games, but our big hit is <a href=\"https://www.runicgames.com/torchlight2/\">Torchlight 2</a> ``family co-op'' in the local network. It is <em>almost</em> not age appropriate for the boys, but the kind of isometric perspective graphics with the fantasy theme makes it <em>alright</em>. We have completed it once, and we are having another go with different character classes. We are still playing some Minecraft, of course, but I prefer Torchlight 2!</p>
<p>The third big activity that has eaten a lot of my free time has been <em>reading books</em>. I'm still finishing about two books a month, although this year I've been reading authors that write very long books. Because I had a ``not very good'' book I wanted to read because it was the end of a series, and a ``slow starter''; I didn't manage to read 24 books this year. But 23 is still pretty good!</p>
<p>I have realised that <em>finding what to read next</em> is a big problem when reading two books a month. So when I discover a new author that I like, I tend to try other books by them, hoping that it would be as good. I did that last year, and it did work well, even if that meant reading a lot of Brandon Mull. This year I've been disappointed a few times, because <em>it wasn't as good</em> -but it wasn't bad either, so it is still a win-.</p>
<p>My highlights are the ``Mistborn'' series by Brandon Sanderson; probably the best fantasy I have read in many years to the point that I'm considering re-reading it in 2025. Another highlight, also by Sanderson, was ``The Sunlit Man''. Only one book with almost no padding! Very recommended.</p>
<p>And that's all. Would you believe that I've only been making games, playing some games, and reading books? Exactly, that is the feeling I was talking about!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20And%20that%20was%202024\">an email</a>!</p>" nil nil "da2c52dad287df3413c754aa783d18aa") (3 (26587 55753 150960 410000) "https://www.usebox.net/jjm/blog/alien-intruder-released/" "Alien Intruder released!" nil "Thu, 26 Dec 2024 13:53:08 +0000" "<p>So I finally released <a href=\"https://www.usebox.net/jjm/alien-intruder/\">Alien Intruder</a> yesterday, on Christmas day. Perhaps it should have happened a few weeks ago, but I was tired and couldn't focus on writing the music. But that's OK, it has been like a Christmas present -although I don't think is the best date to release a game!-.</p>
<figure >

<img src=\"https://www.usebox.net/jjm/blog/alien-intruder-released/menu.gif\" alt=\"Game menu\">


<figcaption>
<h4>The blobs have a lot of personality</h4>

</figcaption>

</figure>
<p>Although I sent a couple of emails to the usual people -what I call <em>the press release</em>-, the main ``announcement'' has been <a href=\"https://mastodon.gamedev.place/@reidrac/113712501135838818\">this post in Mastodon</a>, and a few people said they liked the game, so it is being played. But you know, it is very unlikely that the news have reached to everybody that could be interested in an new DOS game in 2024. Any help spreading the word would be appreciated!</p>
<p>Checking some of the websites that cover DOS games beyond being a site to download ``free'' games, and at least check new titles, I was visiting <a href=\"https://www.doshaven.eu/\">DOS haven</a>, and I liked they answer to <em>why would someone make game for DOS nowadays?</em>, which is essentially three reasons:</p>
<ul>
<li>Because it's fun, if you are into that sort of thing. Indeed.</li>
<li>Because it's retro, and retro is cool! Perhaps I would say <em>nostalgia</em> plays a role here. Although I didn't look at the DOS era like that, some people do.</li>
<li>Because thanks to DOSBox, you can run DOS programs almost anywhere: Windows, Linux, MacOS, smartphones, tablets, Raspberry Pi, you name it. Yes, this is a nice plus: games are as portable as DOSBox.</li>
</ul>
<p>I'm not encouraging people to make DOS games as a <em>for-profit</em> adventure -there are plenty of limitations-, but <a href=\"https://mastodon.gamedev.place/@reidrac/113712718296967354\">playing the game on my RG35xx H</a> is very nice and I didn't have to <em>port the game</em>.</p>
<p>Anyway, I wanted to make a <code>16-bit</code> DOS game, in the spirit of the <a href=\"https://en.wikipedia.org/wiki/Shareware\">shareware</a> boom of early 90s. Although it isn't shareware -and you don't need to register the game!-, I was inspired by the feel of those titles -and I read <a href=\"https://sharewareheroes.com/\">Shareware heroes</a> this year as well, an enjoyable book-. I know I have already released other DOS games, targeting both the age before and after, but I guess it doesn't matter because it is 2024 anyway.</p>
<p>Making a game for the <code>286</code> with VGA graphics wasn't perhaps the best idea, and I mentioned already <a href=\"https://www.usebox.net/jjm/blog/coding-my-own-sound-drivers-for-16-bit-dos/\">how dificult was to write my own sound driver</a>, but I enjoyed the process (it is fun, remember?). I may or may not make more DOS games, but after this experience I think that would be <code>32-bit</code> -meaning <code>386</code> or better-. It is probably what makes more sense now that I have <em>been there, done that</em>.</p>
<p>As always, there's a free download in the game's website. I was approached by a publisher asking if I would like to make a big box release of the game. I'm not sure about this, but <em>never</em> say never. For now, just go an blast some cute aliens!</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Alien%20Intruder%20released%21\">an email</a>!</p>" nil nil "95efbbd1def14a5e9c6af903bc047bec") (2 (26587 55753 150186 304000) "https://www.usebox.net/jjm/blog/more-haskell-in-2025/" "More Haskell in 2025" nil "Wed, 04 Dec 2024 22:14:20 +0000" "<p>Looking <a href=\"/jjm/tags/haskell/\">at this blog's archive on my Haskell posts</a>, looks like I started learning Haskell two years ago. It doesn't feel like it!</p>
<p>I streamed some sessions of game development with Haskell and I got to make <a href=\"https://git.usebox.net/space-plat-hs/about/\">a platform game</a> with some reasonable functional code. I <em>didn't release a game</em> because there wasn't a game there, really; but despite that, I think I implemented enough pieces to be confident that I can <em>finish a game</em> in Haskell.</p>
<p>However, time flies when you are having fun, and my free time this year has gone mostly to <a href=\"https://www.usebox.net/jjm/heart-of-salamanderland/\">The Heart of Salamanderland</a> -released in May-, and my current project for DOS <code>16-bit</code> ``Alien Intruder'' that should be ready in the next two weeks, if I manage to finish writing the music -seriously, <em>it is hard</em> to write decent enough tunes-.</p>
<p>And I haven't written any more Haskell, despite revisiting the codebase a couple of times and <em>missing writing Haskell</em>. Why I miss it? I don't know for sure, but besides being fun, I like how it makes me feel happy about writing code.</p>
<p>I don't have much choice of languages when I'm making games for classic systems. If is a Z80 based machine, it is going to be assembler and C. If it is for DOS, it will be assembler and C. See the pattern?</p>
<p>For my tools I don't think I'm going to stop using Python, because I am very productive with it. Being <em>my tools</em>, I don't need to worry about packaging, distribution, or performance. So I started writing Python in 2010 and it still makes me happy in 2024, even if I'm not interested in using it <em>everywhere</em> like perhaps 10 years ago.</p>
<p>Then I write a lot of <a href=\"https://scala-lang.org/\">Scala</a> professionally every day. Sometimes I even write it <a href=\"https://www.usebox.net/jjm/spacebeans/\">for fun</a>, and I love it. But then, it runs on the <code>JVM</code> and I wanted something different, perhaps also functional like Scala, for my personal projects. Likely a compiled language that generates native binaries.</p>
<p>I put a significant amount of time in Go two years ago, and even dabbled a bit into <a href=\"https://ebitengine.org/\">Ebiten</a>. I liked that after a while the language just disappeared, and what was left was the problem I was trying to solve. But I also found out that the language was very uninspiring, and <a href=\"https://drewdevault.com/2021/08/06/goproxy-breaks-go.html\">some of Google's practices</a> put me off. So I moved on.</p>
<p>I <a href=\"https://git.usebox.net/js-canvas-2023/about/\">refreshed my Javascript game a bit</a> -but that wasn't really what I was looking for-, I wrote <a href=\"https://git.usebox.net/tr8vm/about/\">some C with SDL2</a>, and it was fun, but also too similar to what I'm doing when I'm making games for classic systems.</p>
<p>I even tried <a href=\"https://www.call-cc.org/\">a Scheme</a>, again, very inspired and motivated <em>to like it</em>. And it didn't happen. Again. I'm just going to accept the fact that <em>lisps</em> aren't for me and live a normal life.</p>
<p>But with Haskell was different. Writing the code made me happy. Evidently, it is a shame I didn't have <em>gameplay</em> to support the code I wrote, but that is only my fault. ``Alien Intruder'' <em>could be a PC game</em>, and that would have been a nice project to write in Haskell. I know, like making a game is not challenge enough!</p>
<p>So that is one thing for next year: write more Haskell -hopefully with a PC game release!-.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20More%20Haskell%20in%202025\">an email</a>!</p>" nil nil "14fb6ee289fa1ae255fad5ca24b1045b") (1 (26587 55753 149369 548000) "https://www.usebox.net/jjm/blog/alien-intruder-progress/" "Alien Intruder progress" nil "Mon, 28 Oct 2024 16:08:48 +0000" "<p>More than a month since the last update? What happened!?</p>
<p>Well, ``Alien Intruder'' is progressing nicely: I have <code>25</code> stages ready -including playtesting-, and everything else is more or less in place.</p>
<p>The current <code>TODO</code> list is reasonable:</p>
<ul>
<li>At least another tileset (two ideally), so we can get to <code>50</code> stages with some variability to the eye.</li>
<li>Likely another enemy, to make the stages <code>30</code> to <code>40</code> more interesting.</li>
<li>High score table, because this is an arcade game and chasing score is part of it.</li>
<li>The music, at least: the menu tune, in game, game over, and stage clear. I could also change the tune every 10 stages, but it depends on inspiration writing!</li>
<li>Some more testing!</li>
</ul>
<p>So is not that much, is it? The engine has been finished for the last month and I have fixed a handful of bugs that necessarily would appear when designing and playtesting the stages, although the ``problem'' are usually those bugs that don't present themselves as part of this process, and that's why <em>we need testing</em>.</p>
<p>I still need to learn to use the <a href=\"https://www.3eality.com/productions/reality-adlib-tracker\">Reality AdLib Tracker v2</a>, although I went down a rabbit hole with the music player and I ended implementing a <a href=\"https://zdoom.org/wiki/DRO\">DRO</a> player, so In theory I can use anything that generates AdLib audio and can be captured by DosBox.</p>
<p>There was also a lot of polishing, from improving the asset management -that looks like I almost reimplemented the <a href=\"https://doomwiki.org/wiki/WAD\">WAD</a> format-, better memory allocation and far pointer support -ah, isn't DOS 16-bit fun?-, and small things like saving the joystick calibration to disk.</p>
<p>Anyway, I keep posting updates in <a href=\"https://mastodon.gamedev.place/@reidrac\">my mastodon account</a> -that, by the way, I have moved from <a href=\"https://sdf.org/\">SDF</a>; but that is probably a story for a different day-.</p>
<hr>
<p>Would you like to discuss the post? You can send me <a href=\"mailto:jjm@usebox.net?subject=Re:%20Alien%20Intruder%20progress\">an email</a>!</p>" nil nil "b9c0820d3b1e1e34f05ceef96b22beec")))