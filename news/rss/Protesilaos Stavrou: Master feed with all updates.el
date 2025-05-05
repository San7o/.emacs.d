;; -*- coding: utf-8-emacs; -*-
(setq nnrss-group-data '((132 (26645 44353 690190 102000) "https://protesilaos.com/poems/2025-05-02-escape/" "Escape (my poem)" nil "Fri, 02 May 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>It is not fear of rejection
but the likelihood of affirmation
that forced this escape
</code></pre></div></div>" nil nil "61ff53f30696f339f8212d5aa925d127") (131 (26642 27884 492271 831000) "https://protesilaos.com/poems/2025-04-30-late-bloomer/" "Late bloomer (my poem)" nil "Wed, 30 Apr 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>In indefinite wait for the elusive
the late bloomer has an unspoken hope
That there will be more Springtime
and that two decades will not matter
Like the highlands' purple-leafed sage
some of us will not be discovered
</code></pre></div></div>" nil nil "7e9cc3928101a5da1a1430398d436b84") (130 (26641 51346 992403 744000) "https://protesilaos.com/codelog/2025-04-29-emacs-ef-themes-1-10-0/" "Emacs: ef-themes version 1.10.0" nil "Tue, 29 Apr 2025 00:00:00 +0000" "<p>The <code class=\"language-plaintext highlighter-rouge\">ef-themes</code> are a collection of light and dark themes for GNU
Emacs that provide colourful (“pretty”) yet legible options for users
who want something with a bit more flair than the <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> (also
designed by me).</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">ef-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/ef-themes\">https://protesilaos.com/emacs/ef-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/ef-themes-changelog\">https://protesilaos.com/emacs/ef-themes-changelog</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/ef-themes-pictures\">https://protesilaos.com/emacs/ef-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/ef-themes\">https://github.com/protesilaos/ef-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/ef-themes\">https://gitlab.com/protesilaos/ef-themes</a></li>
</ul>
</li>
<li>Backronym: Eclectic Fashion in Themes Hides Exaggerated Markings,
Embellishments, and Sparkles.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 1.10.0 on 2025-04-29</h2>
<p>This version introduces minor refinements to an already stable
package.</p>
<h3>The palette preview uses a tabulated interface</h3>
<p>The commands <code class=\"language-plaintext highlighter-rouge\">ef-themes-preview-colors</code> and <code class=\"language-plaintext highlighter-rouge\">ef-themes-preview-colors-current</code>
produce a preview of the given theme’s palette. In the past, we were
using a bespoke buffer for this task, just how the built-in command
<code class=\"language-plaintext highlighter-rouge\">list-colors-display</code> does it.</p>
<p>Now we rely on the built-in <code class=\"language-plaintext highlighter-rouge\">tabulated-list-mode</code> to get a cleaner
tabulated view. Plus, users can sort by column.</p>
<h3>Support for more faces or face groups</h3>
<ul>
<li>
<p>Added support for my <code class=\"language-plaintext highlighter-rouge\">tmr</code> package. This will be especially
noticeable in its tabulated view (used to show timers, with the
command <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> (alias <code class=\"language-plaintext highlighter-rouge\">tmr-list-timers</code>)).</p>
</li>
<li>
<p>Added explicit support for my <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code> package.
Specifically, this is for the faces <code class=\"language-plaintext highlighter-rouge\">spacious-padding-subtle-mode-line-active</code>
and <code class=\"language-plaintext highlighter-rouge\">spacious-padding-subtle-mode-line-inactive</code>. Those can be
configured as part of the user option <code class=\"language-plaintext highlighter-rouge\">spacious-padding-subtle-mode-line</code>.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">spacious-padding-subtle-mode-line</span>
<span class=\"o\">'</span><span class=\"p\">(</span> <span class=\"ss\">:mode-line-active</span> <span class=\"nv\">spacious-padding-subtle-mode-line-active</span>
<span class=\"ss\">:mode-line-inactive</span> <span class=\"nv\">spacious-padding-subtle-mode-line-inactive</span><span class=\"p\">))</span>
</code></pre></div>    </div>
</li>
<li>
<p>Made the <code class=\"language-plaintext highlighter-rouge\">helpful</code> headings use whatever the style of level 1
headings is, as defined by the user option <code class=\"language-plaintext highlighter-rouge\">ef-themes-heading</code>.
Thanks to John Haman for applying the relevant code we have for the
<code class=\"language-plaintext highlighter-rouge\">modus-themes</code>. The change is small (and comes from my <code class=\"language-plaintext highlighter-rouge\">modus-themes</code>,
anyway), meaning that John does not need to assign copyright to the
Free Software Foundation.</p>
</li>
<li>
<p>Added support for the <code class=\"language-plaintext highlighter-rouge\">howm</code> package.</p>
</li>
<li>
<p>Extended support for the <code class=\"language-plaintext highlighter-rouge\">auto-dim-other-buffers</code> package to include
its <code class=\"language-plaintext highlighter-rouge\">auto-dim-other-buffers-hide-face</code>.</p>
</li>
<li>
<p>Made sure that all new <code class=\"language-plaintext highlighter-rouge\">transient</code> faces conform with the design
priorities of the themes. Concretely, this means that they do not
support any colour-coding: all keys look the same, regardless of
whether they mean “continue”, “exit”, or anything else.
Colour-coding with a full spectrum of colours cannot be accessible
(and I do not believe colour-coding alone even works because the
colours have nothing else to be associated with, like how a red line
in a diff buffer also goes together with the minus sign).</p>
<p>Thanks to Kevin Fleming for including the <code class=\"language-plaintext highlighter-rouge\">transient-key-stack</code> face
that I had originally missed. This was done in pull request 54:
<a href=\"https://github.com/protesilaos/ef-themes/pull/54\">https://github.com/protesilaos/ef-themes/pull/54</a>. The change is
small, meaning that Kevin does not need to assign copyright to the
Free Software Foundation</p>
</li>
<li>
<p>Extended support for <code class=\"language-plaintext highlighter-rouge\">adoc-mode</code> courtesy of Leilei332. This was
done in pull request 52: <a href=\"https://github.com/protesilaos/ef-themes/pull/52\">https://github.com/protesilaos/ef-themes/pull/52</a>.</p>
<p>The change is within the ~15-line limit, meaning that its author does
not need to assign copyright to the Free Software Foundation.</p>
</li>
</ul>" nil nil "39a13c7a93dc073b67d32fcb96026fc3") (129 (26640 29361 977769 861000) "https://protesilaos.com/codelog/2025-04-27-aporetic-fonts-version-1-2-0/" "Aporetic fonts version 1.2.0" nil "Sun, 27 Apr 2025 00:00:00 +0000" "<p>Customised build of the Iosevka typeface, with a consistent rounded
style and overrides for almost all individual glyphs in both upright
(roman) and slanted (italic) variants. This is the successor to my
now-discontinued “Iosevka Comfy” fonts.</p>
<ul>
<li>Git repository: <a href=\"https://github.com/protesilaos/aporetic\">https://github.com/protesilaos/aporetic</a>.</li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/aporetic-fonts-pictures\">https://protesilaos.com/emacs/aporetic-fonts-pictures</a></li>
<li>Backronym: Aporetic’s Predecessor Objects’ Reserved Eponym Truly Included “Comfy”.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<p>The major change for this release is that Aporetic Sans Mono and
Aporetic Serif Mono are rendered in a strictly monospaced width. This
means that characters such as the em dash (<code class=\"language-plaintext highlighter-rouge\">—</code>) occupy the same space
as the regular dash.</p>
<p>Before, Aporetic Sans Mono and Aporetic Serif Mono had some characters
that were proportionately spaced. This would upset the expectations of
terminal emulators and thus break the display, sometimes with
characters overlapping when they should not.</p>
<p>Other changes are more subtle. They pertain to the style of individual
characters, namely:</p>
<ul>
<li>
<p>The Greek lower case lambda (<code class=\"language-plaintext highlighter-rouge\">λ</code>) has a flat top instead of a straight
one. The legs remain straight. This makes it consistent with the
design of the Greek lower case delta (<code class=\"language-plaintext highlighter-rouge\">δ</code>), among others.</p>
</li>
<li>
<p>The Greek lower case mee (<code class=\"language-plaintext highlighter-rouge\">μ</code>) has a rounder right corner, which is
in line with a whole range of characters.</p>
</li>
<li>
<p>The micro sign is the same design as the Greek lower case mee, even
though these are technically two distinct code points.</p>
</li>
<li>
<p>The at sign (<code class=\"language-plaintext highlighter-rouge\">@</code>) of Aporetic Sans and Aporetic Serif (i.e. the
proportionately spaced fonts I provide) is a bit taller than it was
before. This makes it look more related to its monospaced
counterpart, which is also relatively tall.</p>
</li>
</ul>
<p>I also added support for some more Greek characters, as well as the
Latin eth (<code class=\"language-plaintext highlighter-rouge\">ð</code>), thorn (<code class=\"language-plaintext highlighter-rouge\">þ</code>), and thorn capital (<code class=\"language-plaintext highlighter-rouge\">Þ</code>).</p>
<p>All other changes are done to retain the aesthetic of the fonts while
dealing with the breaking changes introduced by the upstream Iosevka
project.</p>" nil nil "6791e960207170c72f00aebad6ea5ba7") (128 (26637 12256 411652 618000) "https://protesilaos.com/codelog/2025-04-26-emacs-show-font-0-3-0/" "Emacs: show-font version 0.3.0" nil "Sat, 26 Apr 2025 00:00:00 +0000" "<p>This package lets you preview a font inside of Emacs. It does so in
three ways:</p>
<ul>
<li>Prompt for a font on the system and display it in a buffer.</li>
<li>List all known fonts in a buffer, with a short preview for each.</li>
<li>Provide a major mode to preview a font whose file is among the
installed ones.</li>
</ul>
<p>Sources:</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">show-font</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/show-font\">https://protesilaos.com/emacs/show-font</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/show-font-changelog\">https://protesilaos.com/emacs/show-font-changelog</a></li>
<li>Git repository: <a href=\"https://github.com/protesilaos/show-font\">https://github.com/protesilaos/show-font</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/codelog/2024-09-10-emacs-show-font-0-1-0/\">https://protesilaos.com/codelog/2024-09-10-emacs-show-font-0-1-0/</a></li>
<li>Backronym: Should Highlight Only With the Family Of the Named Typeface.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 0.3.0 on 2025-04-26</h2>
<p>This version adds some refinements to an already stable package.</p>
<h3>The command <code class=\"language-plaintext highlighter-rouge\">show-font-list</code> is an alias for <code class=\"language-plaintext highlighter-rouge\">show-font-tabulated</code></h3>
<p>The <code class=\"language-plaintext highlighter-rouge\">show-font-list</code> command was using a custom buffer that listed
font families and their corresponding short preview. It did not have
any other feature.</p>
<p>I made changes under the hood to rely on the built-in
<code class=\"language-plaintext highlighter-rouge\">tabulated-list-mode</code> which is a standard and gives us the option to
sort by column. The <code class=\"language-plaintext highlighter-rouge\">show-font-list</code> is thus an alias for the new
command <code class=\"language-plaintext highlighter-rouge\">show-font-tabulated</code>. Right now the sorting facility only
applies to reversing the name-based order. In the future we may have
more columns, such as if we describe a font as “Latin”, “Greek”, etc.</p>
<h3>The tabulated list marks fonts that cannot be previewed</h3>
<p>In the past, the font listing would include families that could not
display the <code class=\"language-plaintext highlighter-rouge\">show-font-pangram</code> or, indeed, any Latin character. Those
would be rendered as empty boxes.</p>
<p>I have now introduced a simple heuristic to test that the given family
supports Latin characters. If it does not, then (i) it is highlighted
with a different colour, (ii) it shows “No preview” instead of the
pangram, and (iii) it displays the information in the Emacs default
font family. Some families do not play nice with this approach though,
as they pass the test but still do not display any Latin characters.
This happens with icon fonts.</p>
<p>The long-term goal is to support different scripts and show the
appropriate text for each of them.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">show-font-sentences-sample</code> adds more to the <code class=\"language-plaintext highlighter-rouge\">show-font-select-preview</code></h3>
<p>The new user option <code class=\"language-plaintext highlighter-rouge\">show-font-sentences-sample</code> is a list of strings
that can be used to exhibit common patterns and letter combinations.
The default value is carefully designed to show if a font family is
stylistically consistent, such as with how it draws <code class=\"language-plaintext highlighter-rouge\">i</code>, <code class=\"language-plaintext highlighter-rouge\">l</code>, <code class=\"language-plaintext highlighter-rouge\">t</code>, or
<code class=\"language-plaintext highlighter-rouge\">h</code>, <code class=\"language-plaintext highlighter-rouge\">n</code>, <code class=\"language-plaintext highlighter-rouge\">m</code>, and so on. Plus, it teaches you some obscure words like
“scholarch”, “antipode”, and “heteroclite”: use them with your Greek
friends—and if they do not know those words, then they must buy you
a café frappé!</p>
<h3>Miscellaneous</h3>
<ul>
<li>The face <code class=\"language-plaintext highlighter-rouge\">show-font-title-small</code> is an obsolete alias for the more
appropriately named <code class=\"language-plaintext highlighter-rouge\">show-font-title-in-listing</code>.</li>
<li>The prompt used by the command <code class=\"language-plaintext highlighter-rouge\">show-font-select-preview</code> now
correctly uses its own history and default value.</li>
<li>The default value of the user option <code class=\"language-plaintext highlighter-rouge\">show-font-character-sample</code>
includes some more patterns to better test the adequacy of a font
family. This sample is displayed in the buffer produced by the
command <code class=\"language-plaintext highlighter-rouge\">show-font-select-preview</code>.</li>
</ul>" nil nil "e104f5e9110e88d04fe693ef8918c53a") (127 (26636 31151 975880 30000) "https://protesilaos.com/politics/2025-04-25-eu-indifference-palestinians/" "On the =?utf-8?Q?EU=E2=80=99s?= indifference towards the Palestinians" nil "Fri, 25 Apr 2025 00:00:00 +0000" "<p><a href=\"https://www.socialeurope.eu/gazas-descent-into-catastrophe-tests-europes-conscience\">Writing for <em>Social Europe</em></a>,
Josep Borell, the former “foreign minister” of the European Union
(technically, the “High Representative of the European Union for
Foreign Affairs”) laments the Union’s apparent double standard in how
it treats the Ukrainian and Palestinian peoples:</p>
<blockquote>
<p>For some European countries, historical guilt over the Holocaust has
arguably been transformed into a “reason of state” that justifies
unconditional support for Israel, risking engaging the EU in
complicity with crimes against humanity. One horror cannot justify
another. Unless the values the EU claims to uphold are to lose all
credibility, the bloc cannot continue to passively observe the
unfolding horror in Gaza and the “Gazaification” of the West Bank.</p>
</blockquote>
<p>The fact of the matter is that the Union’s vaunted values only hold
true when they align with power politics. Otherwise they are a perk
for privileged locals. Those who believe that European elites actually
care about democracy and fundamental rights for everyone have simply
not been paying attention.</p>
<p>In European politics there is no courage to push forward with bold
ideas. It is a bureaucratic apparatus that has lots of competent
administrators but few, if any, visionaries. Most policy-makers are
conditioned into cowardice and fake modesty. They mince their words to
the point of not saying anything, just how Josep Borell is doing here
despite wanting to say something more than he does.</p>
<p>How many countries, dear Josep Borell, is the “some European
countries” you are referring to? Why is it so difficult to speak in
plain terms about what you did and who exactly turned it down?</p>
<p>European decision-makers are used to operating behind closed doors. It
is why we do not have public discussions about EU affairs, outside
whatever issue touches on some national sensitivity. This modus
operandi is undemocratic. Forget about the institutions and the letter
of the law. We do not need to rewrite the Treaties to change how we do
politics. Josep Borell and every other person in that position has the
liberty to speak his mind and to thus provide that power impulse which
generates discussions. My idea of a politician is simple: if you are
holding a leadership role you lead with honour and are loud about it
so that we can better check on you.</p>
<p>Until that happens, until the spirit of democratic conduct permeates
the everyday practice of Union politics, we will continue to bear
witness to the machinations of a massive bureaucracy and deal with
such blatant double standards as the one outlined by the former
commissioner.</p>
<p>The supranational level where the European Commission, and thus
someone like Josep Borell, operates at, is driven by the
intergovernmental power dynamics at the European Council. If the
Commission’s policies are implemented, it is because they flesh out
the guidelines stipulated by the European Council. And, by the same
token, if, say, Josep Borell’s actions do not lead to anything
concrete it is because those do not align with the European Council’s
agenda.</p>
<p>Knowing about who “some European countries” are thus takes us to the
heart of the issue. It is at the intergovernmental level where those
countries exert their influence, always behind closed doors.</p>
<p>Against this backdrop, it is pointless to think of Europeans as a bloc
that has a coherent foreign policy. It will all be power politics
wrapped in a neat package of euphemisms and virtue signalling.</p>
<p>There is no “we” in this regard. I, as a person living in Cyprus, have
no impact whatsoever on the outlook of “some European countries”
because those countries are not subject to my right for democratic
scrutiny: they do not answer to me as a citizen. This is exactly why
we cannot have democracy in the EU in its current form. There is a
mismatch between the powers of the Union, which apply to the entire
architecture, and the accountability they are subject to which
coagulates along national lines and has no sufficient supranational
counterpart. I have, in the past, termed this phenomenon “sovereignty
mismatch” on the premise that sovereignty in a democracy is reified in
the virtuous cycle between state power and popular control. We now are
subject to the power, but have no commensurate control.</p>
<p>As such, “we” care about the Ukrainians simply because Russia poses a
threat to “our” immediate interests. For the countries in the vicinity
of Russia, this threat involves territorial claims as well and the
understandable fear that what happened to Crimea and more recently in
Eastern Ukraine can happen in the Baltics as well. By contrast, “we”
have no immediate geopolitical interest in standing up to the human
rights of the Palestinians so “we” pretend to not have seen or heard
anything.</p>
<p>The idea that a critique of the Israeli government’s actions can be
construed as antisemitism is specious. No government should be immune
to criticism. If it is, then this is the hallmark of tyranny. When I
write against the EU, as I am doing right now in unequivocal terms, I
am not being anti-European: I care for the wellness of this continent
and these people and want the norms which underpin our institutions to
be upheld.</p>
<p>The Israelis have a right to self-determination which emanates from
international law. They also have obligations stemming from the same
corpus of legality. The same goes for every country. Yet international
law is not featuring a sovereign, meaning that it is enforceable only
when the international community acts in concert. Otherwise,
international law is just a bunch of papers that powerful rulers
blithely ignore.</p>
<p>In this regard, it is a mistake to think that the Israeli government
is acting unilaterally. None of this could have happened without the
support and acquiescence of global powers such as the United States
and the European Union (and the long history of Western colonial
powers meddling in the Middle East among other places).</p>
<p>What we Europeans are experiencing is the outward expression of an
inner malaise. We do not have democracy in places where we need it,
which empowers unaccountable elites to apply their double standards
with impunity. It is a disgrace.</p>" nil nil "d1de3092b50d918e44b43ff9f80d3d84") (126 (26635 8774 601000 882000) "https://protesilaos.com/commentary/2025-04-25-dealing-indecision-maintenance-adventure/" "Dealing with indecision with a sense of maintenance and adventure" nil "Fri, 25 Apr 2025 00:00:00 +0000" "<p>What follows is an excerpt from a private exchange that I am publishing with the permission of my correspondent. The quoted/indented parts are the ones I am responding to. The starting point was that of dealing with free time and indifference, to which I added the themes of doing activities that require maintenance while also tending to the side of us that is visceral (not rational) and which needs a challenge or an adventure.</p>
<hr />
<blockquote>
<p>What has been a nuisance to me lately, is the topic of free time and the feeling of indifference in the activities to fill it. I would love to hear your perspective on the matter.</p>
<p>This struggle generally happens after I stop work on my day job, and the time is up to me to fill. I of course want to take advantage of this time, but find this desire to actually make the time full of frustration. From my perspective there are, at least, the following reasons for this feeling:</p>
<ul>
<li>Too many options of things to do</li>
<li>Not knowing what activity I am more interested in</li>
<li>The aforementioned pressure to ‘take advantage’ of this time</li>
</ul>
</blockquote>
<p>I suspect this is a widespread feeling with the paradox of choice and concomitant fear of missing out. What I do is to effectively make my plans more deterministic, as they are contingent on past decisions, while retaining the discretionary power to do what I feel like in the moment.</p>
<p>The way I approach life is a combination of a longer-term outline and short-term bursts of spontaneity within the overarching constraint of maintainability. I have a general idea of what I want to do for the future, such as to continue to develop my Emacs packages and work on/around the hut, but I do not write down a prescriptive regimen for each day. In practice, this happens at the level of my agenda, which only includes genuinely time-sensitive tasks like “meet with PERSON at 15:00”. Anything that is not time-sensitive is a “wishlist” item, meaning that I will check it out only when I feel like it.</p>
<p>By introducing this criterion of intrinsic time-sensitivity, I am effectively achieving clarity in two ways: (i) I know for sure what I must do on the given day and (ii) I have insight into my free time. How to operate in my free time is more open-ended in principle, though fairly predictable in actuality, because of the maintainability inherent to the tasks I am committed to. In principle, I have the freedom to do whatever I want. Though because the tasks I have started require maintenance (Emacs packages, manual labour, …) I actually have fewer options to pick from. Take the release of Denote version 4, for example: there was no pressing reason for me to publish it last week. I could have postponed that to this week or some time within the next three months. I could, in principle, even say that I am not interested in publishing it at all. But this would have the longer-term effect of compounding the work I have to do if I intend to maintain the project, or it would lead to the discontinuation of the project (bugs would accumulate, users would eventually seek alternatives, et cetera).</p>
<p>Maintenance, then, is the key. If the tasks you do have an inherent requirement of keeping up with them and you genuinely care about them, then you will keep working on them. This covers the manual labour I do as well. If, say, I do not clear the wild vegetation from around my place, I might be dealing with venomous snakes as well as an increasingly likely fire hazard during the summer. So I have to put in the effort, even though I do not have a strict timeline for doing so. Same for handling my dogs. I spend a lot of time with them each day, which is good for our relationship. I also go with them on long walks. This is “maintenance work” too because we continue to do something that is mutually beneficial for our friendship and our health.</p>
<blockquote>
<p>The first identified reason leads to the following train of thought: “Maybe I should read. But what book? Or maybe I should play a game…but what game? Perhaps I should journal. There is also that movie everyone at work is talking about. However, it is a beautiful day to go play disc golf.” You get the point. Each one of these I respond to with “I guess I could do that”. None really excite me. None seem to spark any more interest than the other, which is reason number 2 in the above list. It is a feeling of indifference towards all of them.</p>
</blockquote>
<p>Notice how all of these have no inherent maintainability component to them and the flip-side is that they require no commitment on your end. Watching a movie, for example, is a self-contained activity. Sure, it may be a series so you have to watch a few hours of video, but the idea is the same. The movie does not require you to keep revisiting it long-term. Video games are slightly different because they can trigger this feeling of accomplishment, like when you level up your character in a role-playing game, but have the same disadvantage as movies of containing the results to the virtual realm where they do not have a life of their own. Because they do not have a life of their own, there is no real urgency associated with them, no external accountability structure that compels you into action and keeps you honest, no emotion on your side that you have to tend to them. So what might appear as maintainability at the outset is, in fact, an illusion.</p>
<p>What you want is to discover matters that have a life of their own and eventually opt for them. It is like gardening. If you do not clear the weeds and water your plants, the garden dies. So if you care about it, you will keep doing it again and again. Each action will contribute to the feeling of contentment, even if it is not one of amazement. Rather than an ephemeral rush of excitement, you get in a stable state of pleasure, of being in good terms with yourself and of appreciating the command you have over your life, as you become attuned to the “little things” rather than the firework-like moments that are flashy but ultimately fleeting.</p>
<p>This is not to say that ephemeral experiences are inherently wrong. No! You can have those as well, though couch them in terms of a generally stable—indeed pleasurable—life.</p>
<blockquote>
<p>When I do finally to commit to something, I can’t help but think of all the other things I could be doing. Thinking that a different activity would make me feel like I am ‘taking advantage’ of my free time. This of course is a frustrating cycle.</p>
</blockquote>
<p>Yes, this is frustrating. I personally do not think in terms of “taking advantage” in a vacuum, but only relative to how I am maintaining the activity. I keep doing it with consistency, even just a little bit at a time, and so I preserve my momentum and feel nice about the discipline I show towards it. To use the example of sport, inconsistency is what kills enthusiasm for it. If you do not do it with regularity, it eventually feels painful and you quit.</p>
<p>The approach of “taking advantage” does entail a major risk: of seeking self-contained experiences so that you can exploit as many of them as possible in an attempt to maximise said advantage. In other words, it inspires you to not go in depth, to not commit to whatever requires maintenance, and to instead try to see everything there is to be seen. But because “everything” is infinite while you are finite, you set yourself up for failure, in the form of frustration.</p>
<p>Sticking to some things long-term is empowering for the very reason that it puts you in control of the situation: you are involved because your involvement is required for it to persist as an experience you may have. Instead of getting distracted by all the possible and theoretically rewarding experiences you could be partaking in, you remain focused on what works for you with regularity. Fundamentally, each new experience that is done without attention to its maintainability adds up to an unfulfilling lifestyle of not having something to hold onto and be held by, and thus comes at the cost of your wellness.</p>
<blockquote>
<p>To try and counter this struggle, I have been trying to be mindful about lowering expectations. Even though the logical part of me understands that all my free time can’t be an amazing experience, I still seem to act as if this is possible. If I am able to lower my expectations about what experiences should feel like, I anticipate that the part of me that second guesses the activity I decide on would quiet down to some extent. But perhaps that in itself is something I should lower my expectations on.</p>
</blockquote>
<p>I think this is the sort of trick that might work in some cases but is generally unreliable. You might, say, lower your expectations about how great that movie will be, but this does not change the fact that watching the movie does not have a longer-term aspect to it: it does not involve a commitment to its maintenance as it has no life of its own, as noted above. What I then think is that expectations must also be formulated in terms of the innate qualities of a given project or choice. Some are naturally short-lived while others have the tendency to stick around.</p>
<p>What matters, then, is to factor in your feelings when you pick something that will stay with you for some time. Do I love dogs, for example? Am I prepared to tend to the needs of the dog 7 days a week and 365 days a year? Will I go on a walk no matter the weather conditions or at least try the next best alternative? And will I be willing to sacrifice some comforts, such as going on a vacation, if it means taking care of my dog? If you can answer these questions with your heart as well, then you have found something you like and which will keep you true to your word. You have liberated yourself from the trap that is the fear of missing out only when you can reliably remain true to your word.</p>
<blockquote>
<p>This theme of maintainability you cover here and in the succeeding paragraphs deeply resonates. Something I often think about that goes hand in hand with this theme is the practacility of an activity. I often feel as if the activities I engage in need to involve some practical aspect. But I then get caught up in thinking that any practicality I apply is fabricated. For example, reading has the practical aspect of teaching me something, a video game has the practical aspect of problem solving and interaction in a consequence free environment (relaxation and exploration).</p>
<p>The practicality I associate with these activities do not actually contribute to my survival, or longer term outlook. I suppose a difference would be if I have the goal to become a doctor (I do not) then reading medcial books would fall under the maintenance, or pursuit, of this vision. This would then result in reading being a more practical activity.</p>
</blockquote>
<p>Practicality is important because it means you stick with an activity that is likely to reward your efforts in some way. Recreational activities, like watching movies or playing games, thus have the practicality of, well, “re-creation”: they let you disconnect from your duties and do something that makes you happy, relaxes you, etc.</p>
<p>However, the consideration of practicality comes with the risk of reducing every decision to a calculation of the expected costs and benefits and, further, of making every choice subordinate to some higher purpose goal. We may say, for example, that gaming is practical because it is recreational, which in turn is practical because it gives you a new impetus to go to work, which in turn is practical because it sustains you, and so on until we ultimately reach the goal you are working towards, which is to live and, perhaps, to live well.</p>
<p>Such analysis is fine in hindsight or to have as a rough idea of how to proceed, though it can lead to the sort of overthinking we have already been discussing: why is “to live” even a goal? Are we really choosing to live or are we living anyway until we reach a state, probably after many years, where we ponder such questions? Is, then, the goal “to live” but a rationalisation of what is already there? And what is “live well” supposed to be? To have a good end so that, for example, I tolerate abusive working conditions because the job pays handsomely and I will eventually enjoy my life afterwards with all that money? Or at the other end of the spectrum, to live well is to maximise my pleasure in the current moment as if there is no tomorrow? There are so many questions we can raise here and never reach a definitive answer. Are we even really operating in pursuit of a rational final goal?</p>
<p>All this comes down to the onesidedness of the goal-oriented approach. It is rational in that it sets a target on the basis of weighing expected pros and cons. But in our life we do not have all the answers. We constantly operate in an environment of imperfect knowledge and can only understand things better with the benefit of hindsight. Yet there is no “replay button” for us, which means that whatever we do, we do it with at least some degree of uncertainty and faith that things will go our way. I then feel that we cannot afford to be rationalists in the strict sense. It is pretentious to claim as much.</p>
<p>The cost-benefit calculus detracts from something basic. “Basic” as in simple or common but also as that which pertains to the basis of our life. This is the experience of excitement, passion, and adventure. Those are visceral, which the rationalist propensities of ours may dismiss as unreliable. Yet they trigger in us something that we cannot ignore with honesty; something that is empowering; something that we recognise when we feel it even if it eludes our efforts at defining it; something that complements or underpins our conscious decision-making as our animalistic alter ego.</p>
<p>Consider again the example of a video game. Why is there such a thing as a difficulty setting? Or why do people do speed runs? What is it that inspires us to seek these increasingly challenging paths in gaming? Now generalise this adventure seeking, this wolf within, to matters of sport, programming, science. Why does the sportsperson try to further improve their performance? Why is the programmer bent on writing more elegant code? Why is the scientist interested in the deeper understanding of the world? Why is the philosopher even writing this? We do not have a rational answer as to what we will do after we discover the limits, yet this does not prevent us from trying.</p>
<p>So, yes, practicality matters though there is also value in trusting our gut feeling or in following our heart. But not to the other extreme of foregoing reason. It is all about finding moderation in our ways.</p>
<blockquote>
<p>Do you think providing value to others is an important aspect in your pursuits? I ask mainly with your Emacs projects in mind:</p>
<blockquote>
<p>But this would have the longer-term effect of compounding the work I have to do if I intend to maintain the project, or it would lead to the discontinuation of the project (bugs would accumulate, users would eventually seek alternatives, et cetera).</p>
</blockquote>
<p>I have written a lot of elisp code over the years, but mainly for my own use. Therefore the mentioned maintenance aspect is rather limited. Thus I wonder if ensuring other’s needs are met is a motivator to keep up with a project. Or perhaps it is pride in one’s work that is shared with the public?</p>
</blockquote>
<p>Giving back to the community is an important consideration, though I cannot tell if it is the driving force. I suspect that underneath it is this visceral beast that seeks adventure, as I covered above. I have fun maintaining my programs, while I face the challenge to learn new things and to prove to myself that I can do it. Maintaining the code in public actually puts the whole activity in “hard mode”, because I cannot hide my flaws and must instead rise to the occasion. This is also why I do my publications in one go, as I have explained before (“alla prima”), but also why I publish so much of what I create: by not hiding my in-the-moment self, I essentially take away the option of failing badly and am thus increasing the challenge.</p>
<p>I can apply the same explanation for many of my life choices, but you get the idea.</p>
<blockquote>
<p>I suspect that the answer here is up to the indivdual. For example, I do trail runs. However, if I do not have a race or event that I am signed up for then I know I will find ways to not train. Once I sign up for an event I now have motivation to train. If I do not, I will show up on race day with a risk of injury, or a having miserable time due to being unfit. Another example I can imagine is purchasing a fixer-upper house. Once you make that purchase you now have a financial liability so fixing up the house is a practical endeavor. Or as you put it: these activities have a ‘life of their own’. The race will not be put on hold because you are not prepared, and the fixer-upper will continue to deterioate if you do not put in the work.</p>
</blockquote>
<p>Very well! You then seem to have this sense of challenge as well and can relate to what I wrote already.</p>
<blockquote>
<p>To find a lifestyle that requires engaging in activities that require maintenance, it seems unavoidable that you will have to force discomfort. At least in the situation that I and many others find themselves in where survival, and therefore comfort is relatively easy. It is then up to you to identify an accountability structure that will motivate you, and to take that plunge.</p>
</blockquote>
<p>Agreed! Survival may not even be a factor here. Think of the example of speed running a game. Or the scientist who really needs to know about the mysteries of the world. None of these are matters of life or death. But people keep doing them and continue to push the boundaries. To what end? Nobody knows! To me, it comes down to this monologue:</p>
<ul>
<li>I will go for an exploration!</li>
<li>What am I even going to explore?</li>
<li>I do not know, which is why I have to explore!</li>
</ul>" nil nil "2cb62690cdfeceb70881d6d68c463512") (125 (26633 14282 738115 660000) "https://protesilaos.com/interpretations/2025-04-22-galani-just-two-days/" "Interpretation of =?utf-8?Q?=E2=80=9CJust?= two =?utf-8?Q?days=E2=80=9D?= by Dimitra Galani" nil "Tue, 22 Apr 2025 00:00:00 +0000" "<p>The subject of this entry is an erotic and inspiring song by Dimitra Galani (Δήμητρα
Γαλάνη) titled <em>Just two days</em>: <a href=\"https://www.youtube.com/watch?v=9ByBDFDvqmI\">https://www.youtube.com/watch?v=9ByBDFDvqmI</a>.</p>
<p>Below are the original lyrics, my faithful translation of them, and
then some comments on the substantive point.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Δυο μέρες μόνο
Ερμηνεία:  Δήμητρα Γαλάνη
Στίχοι:    Παρασκευάς Καρασούλος
Μουσική:   Δήμητρα Γαλάνη
Δυο μέρες μόνο
Να σε κρατάω αγκαλιά
Δυο μέρες μόνο
Να σ'έχω δίπλα μου ξανά
Για λίγο μόνο
Δυο μέρες μόνο
Σ'ένα ταξίδι αστραπή
Να ξεδιπλώνω
Να παίρνει ανάσα η ζωή
Για λίγο μόνο
Για τόσο μόνο
Φως να γεμίζουν οι στιγμές
Να λάμπουν μες στο χρόνο
Όλο το σώμα μου να ζει
Για σένα μόνο
Δυο μέρες μόνο
Να συνηθίζει το κορμί
Κι εγώ να λιώνω
Έπειτα μόνο τη φωνή σου
Ν'ανταμώνω
Δυο μέρες μόνο
Όσο μια βόλτα διαρκεί
Για τόσο μόνο
Όλη η ζωή μου
Αυτή η στιγμή
Δυο μέρες μόνο
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Just two days
Singers:  Dimitra Galani
Lyrics:   Paraskevas Karasoulos
Music:    Dimitra Galani
Just two days
To hold you in my embrace
Just two days
To have you beside me again
Just for a little while
Just two days
On a lightning trip
To be unfolding
Life to be taking a breath
Just for a little while
Just for that long
Moments to be filling with light
To be shining in time
My entire body to be living
Just for you
Just two days
The body to be adapting
And me be melting
Then only your voice
to be encountering
Just two days
As much as a stroll lasts
Just for that long
My entire life
This very moment
Just two days
</code></pre></div></div>
<p>In Greek we disambiguate the concept of <em>falling in love</em> from love in
its broadest sense: this experience is called <em>erotas</em> (έρωτας) unlike
the more subdued and general form of love, else <em>agape</em> (αγάπη).
Erotas has been symbolised since antiquity as the god Eros, who is
related to Aphrodite, the goddess of both beauty and love in their
broadest sense. In English we have terms such as “erotic” (pertaining
to Eros) and “aphrodisiac” (related to Aphrodite, though here this is a
proxy for erotic and thus not faithful to the archetype of the goddess).</p>
<p>What <em>Just two days</em> describes is the intensely passionate phenomenon
of erotas. The artist is not shy about expressing a desire to defy all
constraints and dismantle all barriers, to be fully present in the
moment of physical attraction, to become one with the lover by not
hedging anything, and consequently to touch the eternal through the
momentary.</p>
<p>Erotas is passion throughout. Authenticity is its beauty. As the
ancient saying goes, it is invincible in battle (<em>eros anikate mahan</em>,
«έρως ανίκατε μάχαν»). It being short-lived does not detract from the
experience. If anything, it is what keeps it honest. The encounter has
to be brief, just long enough to ride the wave of excitement but also
to keep lust as the driving force.</p>
<p>Those who share erotas make no pretences to propriety and care not of
meeting social expectations. Such concerns might occur later, once
erotas transpires. But erotas is impervious to the mode of longer-term
planning and will not be burdened by the trivia of everyday affairs.
It shall not be the facade of a business transaction; of securing the
partner that maximises the chances of success in terms of social
mobility and financial outcomes. No! Those may be worthwhile, but they
do not belong to passion of this sort.</p>
<p>When thinking of the different types of love, it is tempting to rank
them and, perhaps, to place erotas at the bottom of the list due to
how ephemeral it tends to be. This song inspires us to refrain from
such an exercise, for it is misguided. It invites us to appreciate
deep-seated erotic desire as such and to recognise it as yet another
facet of the human condition. How can it be lesser (or indeed greater)
when it is equally human?</p>
<p>More generally, <em>Just two days</em> unapologetically presents us with an
aspect of reality. It defies whatever taboo forces people into a
pretentious modus vivendi. Erotas is not interested in conforming with
some ideal of normativity, such as the cultural construct of the coy
lady or the indomitable man qua guardian. There is a place for those,
but not here. The artist then gives us the truth of what the person
wants.</p>
<p>We can choose to echo whatever moral precepts find currency in our
milieu, about suppressing this and sacrificing that, or take the art
as-is. However we go about it, reality does not care about our norms.
Erotas will continue to be there, even if we condemn it as frivolous.
It can still be felt equally by the unabashed womaniser and the shy
girl, no matter the era and prevailing tradition.</p>
<p>Those who wish to understand what it is to be human, do not argue with
the cosmos. They start their inquiry from a position of acceptance and
conclude their investigations in a state of acceptance. They take a
step back to suspend judgement, while they remain calm in the face of
openendedness. Uncertainty will not go away. Every answer engenders a
million questions.</p>
<p>With patience and sincerity, one shall discern the patterns exhibited
in the world and take them for what they are. Only then is it time to
admit, with humility, that without knowledge of the whole, there can
be no final judgement about the parts. Our morality may then be
appraised for what it is: a useful tool to make social life liveable;
a tool that is refined to serve our ever-evolving needs; a tool
nonetheless.</p>" nil nil "d2e41b5a96b8096b665454d66af6cae8") (124 (26631 55473 637778 86000) "https://protesilaos.com/interpretations/2025-04-22-galani-just-two-days/" "Interpretation of =?utf-8?Q?=E2=80=9CJust?= two =?utf-8?Q?days=E2=80=9D?= by Dimitra Galani" nil "Tue, 22 Apr 2025 00:00:00 +0000" "<p>The subject of this entry is an erotic and inspiring song by Dimitra Galani (Δήμητρα
Γαλάνη) titled <em>Just two days</em>: <a href=\"https://www.youtube.com/watch?v=9ByBDFDvqmI\">https://www.youtube.com/watch?v=9ByBDFDvqmI</a>.</p>
<p>Below are the original lyrics, my faithful translation of them, and
then some comments on the substantive point.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Δυο μέρες μόνο
Ερμηνεία:  Δήμητρα Γαλάνη
Στίχοι:    Παρασκευάς Καρασούλος
Μουσική:   Δήμητρα Γαλάνη
Δυο μέρες μόνο
Να σε κρατάω αγκαλιά
Δυο μέρες μόνο
Να σ'έχω δίπλα μου ξανά
Για λίγο μόνο
Δυο μέρες μόνο
Σ'ένα ταξίδι αστραπή
Να ξεδιπλώνω
Να παίρνει ανάσα η ζωή
Για λίγο μόνο
Για τόσο μόνο
Φως να γεμίζουν οι στιγμές
Να λάμπουν μες στο χρόνο
Όλο το σώμα μου να ζει
Για σένα μόνο
Δυο μέρες μόνο
Να συνηθίζει το κορμί
Κι εγώ να λιώνω
Έπειτα μόνο τη φωνή σου
Ν'ανταμώνω
Δυο μέρες μόνο
Όσο μια βόλτα διαρκεί
Για τόσο μόνο
Όλη η ζωή μου
Αυτή η στιγμή
Δυο μέρες μόνο
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Just two days
Singers:  Dimitra Galani
Lyrics:   Paraskevas Karasoulos
Music:    Dimitra Galani
Just two days
To hold you in my embrace
Just two days
To have you beside me again
Just for a little while
Just two days
On a lightning trip
To be unfolding
Life to be taking a breath
Just for a little while
Just for that long
Moments to be filling with light
To be shining in time
My entire body to be living
Just for you
Just two days
The body to be adapting
And me be melting
Then only your voice
to be encountering
Just two days
As much as a stroll lasts
Just for that long
My entire life
This very moment
Just two days
</code></pre></div></div>
<p>In Greek we disambiguate the concept of <em>falling in love</em> from love in
its broadest sense: this experience is called <em>erotas</em> (έρωτας) unlike
the more subdued and general form of love, else <em>agape</em> (αγάπη).
Erotas has been symbolised since antiquity as the god Eros, who is
related to Aphrodite, the goddess of both beauty and love in their
broadest sense. In English we have terms such as “erotic” (pertaining
to Eros) and “aphrodisiac” (related to Aphrodite, though here this a
proxy for erotic and thus not faithful to the archetype of the goddess).</p>
<p>What <em>Just two days</em> describes is the intensely passionate phenomenon
of erotas. The artist is not shy about expressing a desire to defy all
constraints and dismantle all barriers, to be fully present in the
moment of physical attraction, to become one with the lover by not
hedging anything, and consequently to touch the eternal through the
momentary.</p>
<p>Erotas is passion throughout. Authenticity is its beauty. As the
ancient saying goes, it is invincible in battle (<em>eros anikate mahan</em>,
«έρως ανίκατε μάχαν»). It being short lived does not detract from the
experience. If anything, it is what keeps it honest. The encounter has
to be brief, just long enough to ride the wave of excitement but also
to keep lust as the driving force.</p>
<p>Those who share erotas make no pretences to propriety and care not of
meeting social expectations. Such concerns might occur later, once
erotas transpires. But erotas is impervious to the mode of longer-term
planning and will not be burdened by the trivia of everyday affairs.
It shall not be the facade of a business transaction; of securing the
partner that maximises the chances of success in terms of social
mobility and financial outcomes. No! Those may be worthwhile, but they
do not belong to passion of this sort.</p>
<p>When thinking of the different types of love, it is tempting to rank
them and, perhaps, to place erotas at the bottom of the list due to
how ephemeral it tends to be. This song inspires us to refrain from
such an exercise, for it is misguided. It invites us to appreciate
deep-seated erotic desire as such and to recognise it as yet another
facet of the human condition. How can it be lesser (or indeed greater)
when it is equally human?</p>
<p>More generally, <em>Just two days</em> unapologetically presents us with an
aspect of reality. It defies whatever taboo forces people into a
pretentious modus vivendi. Erotas is not interested in conforming with
some ideal of normativity, such as the cultural construct of the coy
lady or the indomitable man qua guardian. There is a place for those,
but not here. The artist then gives us the truth of what the person
wants.</p>
<p>We can choose to echo whatever moral precepts find currency in our
milieu, about suppressing this and sacrificing that, or take the art
as-is. However we go about it, reality does not care about our norms.
Eros will continue to be there, even if we condemn it as frivolous. It
will still be felt equally by the unabashed womaniser and the shy
girl, no matter the era and prevailing tradition.</p>
<p>Those who wish to understand what it is to be human, do not argue with
the cosmos. They start their inquiry from a position of acceptance and
conclude their investigations in a state of acceptance. They take a
step back to suspend judgement, while they remain calm in the face of
openendedness. Uncertainty will not go away. Every answer engenders a
million questions.</p>
<p>With patience and sincerity, one shall discern the patterns exhibited
in the world and take them for what they are. Only then is it time to
admit, with humility, that without knowledge of the whole, there can
be no final judgement about the parts. Our morality may then be
appraised for what it is: a useful tool to make social life liveable;
a tool that is refined to serve our ever-evolving needs; a tool
nonetheless.</p>" nil nil "a1af870e46ef16b91437bcfb541685aa") (123 (26630 29051 904140 975000) "https://protesilaos.com/commentary/2025-04-21-doing-it-alone-versus-others/" "Re: doing it alone VS doing it with others" nil "Mon, 21 Apr 2025 00:00:00 +0000" "<p>The following is an excerpt from a private exchange that I am
publishing with permission and without sharing the personal details of
my correspondent. The quoted/indented parts are from my correspondent.</p>
<hr />
<blockquote>
<p>Some people say something like: “Learn to be alone, before you can
start living with others” or “To improve yourself, you should be
able to solve your problems on your own.”</p>
</blockquote>
<p>A general remark about this is that even when something is true, it
can be turned into its opposite when it is applied uncritically. It is
why we need to consider the specifics of the case and appreciate the
nuances. This is what separates the smart person from the wise person:
the latter understands when to suspend the application of the rules.</p>
<p>In a vacuum, I think there is nothing obviously wrong with those views
you quote. There are scenaria where I agree that being able to resolve
your problems will help you deal with other people as well (or “other
people’s problems”, if you will). For example, if you live alone you
learn to manage your finances, keep your place in a habitable state at
minimum, and so on. These skills are useful when you live with others
as well.</p>
<p>This is a matter of learning by doing. It helps you also develop an
appreciation of the difficulties involved. Think, for instance, about
trying to cook. Once you check for yourself that it is not easy to be
a good cook, you are more likely to respect someone’s efforts on this
front and to better appreciate what they do. Another example is with
matters that require years of commitment, such as sport. You will see
the average football fan who has never played the sport competitively
talk big about a player’s performance. But if you actually try to do
what you think is easy, then you realise how difficult it really
is—at which point you think twice before spewing nonsense.</p>
<p>Those granted, there will always be counterpoints. If we take the
notion of “do it first on your own” to its extreme, then we reach an
untenable situation where each person must only figure out everything
on their own before engaging with others. But none can be on their own
at the outset simply because they are raised in a society and culture
that already puts them in the midst/influence of others.</p>
<p>The mindful consideration then is all about finding the right balance.</p>
<blockquote>
<p>For example, it can be relevant when talking about romantic
relationships. One could say that in order to truly love someone and
function together well, one has to love oneself and take care of
one’s problems first.</p>
</blockquote>
<p>Loving your self is a good basis for a relationship. I have first-hand
experience with people who did not have that quality at the time,
which made them insecure about the most trivial things. That quickly
turns into a toxic or abusive environment, which is not healthy for a
relationship (and for one’s own wellness by extension).</p>
<p>Still, I think that the “do it on your own first” does not work for
relationships, romantic or otherwise. You cannot learn about others in
their absence. When you interact with someone, you are not dealing
with an abstract human, but with that specific person. You can only
know more about that person through direct exposure to them, not
theoretical insights about some generic person.</p>
<p>To me this looks more like a case of overthinking it. Suppose you want
to learn more about friendship. One approach is to isolate yourself
while you read all the literature on friendship. You have all the
theory nailed down, but no actual experience of friendship. Another
approach is to spend time with people and get to know what friendship
is in practice with its nice and not-so-nice aspects. Perhaps knowing
both the theory and the practice will provide you with a deeper
understanding of the subject matter. The point, though, is that there
will have to be action involved: it cannot be a strictly theoretical
consideration.</p>
<blockquote>
<p>However, it seems that this way of thinking is flawed. Firstly, it’s
hard to imagine someone who solved all of his problems, which would
render him ‘ready’ for relationships. Secondly, we all know how
enriching the presence of others can be. It’s a pity when people
don’t ask for help, because they have an idea that they should be
able to resolve the situation alone.</p>
</blockquote>
<p>I agree. One can never be “ready” about practical matters without
doing the practice. Nothing else to add to that point.</p>
<p>Asking for help involves something else though: trust. Sometimes it is
not easy to open yourself up to others because you fear the
consequences. I learnt this many years ago when I was doing 12-hour
shifts and one day I noted how it is not fair to subsist in such a
precarious way. Some smartass who was in a privileged position noted
that “complaining is for pussies” and that I should, as a “real man”,
take responsibility and power through. This remark was not mindful of
my particular case, namely the fact that I was already powering
through as someone who has been earning his keep since my early teens.
He was lecturing me about responsibility as if I was some
ne’er-do-well, not knowing that assuming responsibility is what I
always do. Also, he was talking without considering the specifics of
why I was even there: there was a global financial crisis that hit my
country especially badly and I had to do such work while keeping my
mouth shut to not lose the sole source of income available. If I were
to be the “real man” he imagined, he would not have liked my forceful
reaction. Do not question the commitment of a person who is fighting
for the basics.</p>
<p>Anyway, the gist is that there are systemic issues at play that cannot
be reduced to mere matters of personal responsibility or outlook.
People are more likely to seek help when they know they can trust the
person they appeal to for assistance. Since I mentioned this
much-touted manhood, it serves as a good example for our discussion. I
find that it is harder for men to talk about their struggles because
(i) those are perceived as a weakness, and (ii) men are conditioned to
think of themselves as a failure (as not “real”) when they are not
doing what they are supposed to. And it is not just toxic men who
belittle other men: women do it too, calling them effeminate, whiny,
and whatnot.</p>
<p>Beside these, we have to consider the nature of one’s job, which has a
direct impact on their livelihood. If you work in a place where
unscrupulous competition is the norm, such as the world of politics
where virtually no-one has honour, you realise that anything you say
will be used against you. So you shut up and daydream of alternatives.</p>
<p>There is also a dimension of being used to talking about your issues.
If you grow up in an environment of persistent hardship, you are more
likely to be self-reliant and resilient, which are often good
qualities, but also more reluctant to trust others in your midst. So
the “good qualities” are only so to an extent, to connect to my
original general point.</p>
<p>Trust, then, is subject to social pressures and expectations. It is
situational. Of course, the notion of “let me be ready for it first”
can play a role. This overthinking may even be a reflection of the
underlying deficit in trust, rather that what causes this deficit. It
is all about the specifics of the case.</p>
<blockquote>
<p>Do you relate your situation to these thoughts? It seems that you’ve
learned a lot through ‘lone’ work. Would you develop your character
so well if you received more help from others?</p>
</blockquote>
<p>I am definitely the lone wolf type, with both “lone” and “wolf” being
relevant descriptors. You see me as the calm philosopher, though this
is because I have simplified my environment while I have discovered
outlets for my seemingly boundless exuberance. If I am confined to
small spaces and forced to not express myself, if I do not have this
sense of openendedness and adventure, I lose my vitality to the point
of depression, just how a wild animal in captivity is no longer
potent.</p>
<p>I do not write this with pride. Everything is both good and bad,
depending on the specifics. It simply is the reality of my character
and situation.</p>
<p>The upside is that I do not get influenced to do stuff I do not really
want. For example, all my friends throughout the years, and most
relatives, have been smokers, though I did not try to smoke not even
once. Because they knew I do not yield to pressure, they never even
bothered to ask. Same for not violating my own rules, such as eating
sweets, doing casual gambling, and the like. This attitude of mine is
expressed as discipline, where I remain committed to my tasks
long-term and do not deviate from them on a whimsy. It is stable and
for some may even be boring. One instance of this that is public is my
website: it has been going on for 14+ years already and I publish more
writings frequently (at times on a daily basis). The same goes for
everything I enjoy doing: I do not switch from one activity to another
without sticking to anything in particular. If I do something, I will
most probably keep doing it for a long time.</p>
<p>The downside of this lone wolf disposition is that I am not easy to
approach, even though I am friendly and relaxed. For example, I was
invited to an Easter table yesterday. “Do you want a beer?” they asked
me. I responded negatively because I quit alcohol almost a decade ago.
“Here is some cheesecake!” they said. I declined it because I quit
eating sweets two decades ago. “Let’s play bingo; 2 euro to
participate!”, which I again opted out of because I do not gamble. So
I would talk with people there but I clearly was not one with the
company. People were fine about it: I have had a good relationship
with all of them for a long time already and have attended many such
gatherings. It is just that I do not do what everybody else considers
normal.</p>
<p>Another downside of this is that I might appear to be judgemental,
even though I am not. People may think that I consider, say, eating
sweets to be some sort of sin. Whereas I do not care how others choose
to live their life: I simply do not want others to tell how I should
live my life.</p>
<p>I will not force myself to be somebody else just to fit in. Fitting in
is not a priority for me, perhaps because I know I can rely on myself.
Or, maybe, I enjoy the challenge of trying to rely on myself and
proving that I can do it. It may all be but a game to me and I am
finding the pretext to continue playing it each time. Who knows?
Hypotheses aside, there may be latent hubris in my lifestyle: the
hubris of me seeking challenges that will ultimately undo me. Greek
myths must have been inspired by such real stories. But I try to keep
things in perspective and recognise my limits.</p>
<p>Back to your question, I cannot answer the counterfactual. I cannot
know what kind of person I would have been had I had different
experiences. I suspect I would not be the same. Maybe I would not have
the same level of self awareness or competence I have now because I
would never have the need for it. Or maybe my competence would be
expressed as a knack for trusting others and relying on their
judgement rather that going my own way. I cannot tell… Again, this
is not a matter of “good” versus “bad” in a vacuum: they are all good
and bad in different degrees depending on the particularities.</p>
<blockquote>
<p>How to, then, reconcile self-improvement and relationships? Should
we drop the expectation of being able to handle everything alone?</p>
</blockquote>
<p>What I have learnt is that despite our current trajectory we can
always try to have a more balanced approach: to be with others without
sacrificing our needs in the name of sociability. Like me accepting
the invitation to join the table while knowing I would not perfectly
blend in. Where the balance is will depend on the person.</p>
<p>The key is to not go to extremes: the extreme of approaching a subject
such as this from a purely theoretical perspective; the extreme of not
trying to see things from the perspective of another; the extreme of
never accommodating the needs of another; the extreme of not making
any effort to improve yourself; the extreme of believing you are
defective by design; the extreme of always echoing what others say
just to fit in with the lads; the extreme of denying your self to get
some short-lived validation. It all comes down to understanding the
nuances.</p>" nil nil "0e3c2bf181ef5631158dc854897b5c41") (122 (26629 57987 846812 9000) "https://protesilaos.com/news/2025-04-20-vlog-tour-hut-back-side/" "Vlog: tour of the =?utf-8?Q?hut=E2=80=99s?= back side" nil "Sun, 20 Apr 2025 00:00:00 +0000" "<p>In this ~22-minute video I show the back side of my hut. Today I
cleared the wild vegetation there and created a few raised garden
beds. The next task is to plant vegetables on the garden beds. I also
show the part of the land that is adjacent to the stream and describe
the ongoing flood-control work I am doing there.</p>" nil nil "117982c7aeb2e409be0b8b15ea546108") (121 (26629 57987 842362 149000) "https://protesilaos.com/interpretations/2025-04-19-paschalidis-perseids/" "Interpretation of =?utf-8?B?4oCcUGVyc2VpZHPigJ0=?= by Miltos Paschalidis" nil "Sat, 19 Apr 2025 00:00:00 +0000" "<p>For today’s entry I have picked a song from the rich repertoire of
songmaker Miltos Paschalidis. The title is <em>Perseids</em>:
<a href=\"https://www.youtube.com/watch?v=DLO6ncUK9Bw\">https://www.youtube.com/watch?v=DLO6ncUK9Bw</a>.</p>
<p>The Perseids is a shower of star dust that is visible from the night
sky of Greece/Cyprus some time during mid August. I have observed the
phenomenon a couple of times. It is spectacular! Though the song I am
about to comment on is about a person’s inertia, even in the face of
such special events.</p>
<p>Below are the original lyrics, my faithful translation of them, and
further commentary. Also check my other “interpretation” involving
Miltos Paschalidis: <a href=\"https://protesilaos.com/interpretations/2024-11-20-paschalidis-tale-with-sad-ending/\">Tale with sad ending</a> (2024-11-20).</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Περσείδες
Ερμηνεία:  Μίλτος Πασχαλίδης
Στίχοι:    Μίλτος Πασχαλίδης
Μουσική:   Μίλτος Πασχαλίδης
Πάνω στο μπράτσο χάραξε η μέρα μιαν ευχή
για το χορό που στήσανε στ'αστέρια οι Περσείδες
Τη νύχτα που ξαγρύπνησες μονάχη στο σκαλί
τον ουρανό σου χάρισαν μα πάλι δε τον είδες
Δε πέφτουνε χρυσάφι μου τα κάστρα με ευχές
μήτε ξυπνούν τα όνειρα στις μαύρες τις οθόνες
Δεν ξεγελούν τον ίσκιο τους οι μοναχές καρδιές
φτιάχνουν χαρμάνι λησμονιάς μα ξημερώνουν μόνες
Ανοίγω τα χέρια μου
που όλο τον κόσμο χώρεσαν
μα τώρα πια χωράνε
μόνο εσένα
Στο μπράτσο η μέρα χάραξε με πείσμα κι αντοχή
δυο κρίνα φεγγαρόλουστα που φύτρωσαν στη πέτρα
Μη μου ζητάς να σ'αρνηθώ ζωή μου και πληγή
μέχρι να μου τελειώσουνε τα βέλη στη φαρέτρα
Ανοίγω τα χέρια μου
που όλο τον κόσμο χώρεσαν
μα τώρα πια χωράνε
μόνο εσένα
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Perseids
Singers:  Miltos Paschalidis
Lyrics:   Miltos Paschalidis
Music:    Miltos Paschalidis
The day etched a wish on the arm
for the dance the Perseids set up in the stars
The night you stayed awake alone at the stair
they offered you the sky but you did not see it again
Castles do not fall with wishes my gold
neither do dreams wake up on black screens
The lone hearts do not fool their shadow
they make a forgetfulness blend but find dawn alone
I open my arms
that fit in the whole world
but now only fit in
you alone
The day etched on the arm with grit and endurance
two moonbathed lilies that sprung on the stone
Do not ask me to reject you my life and wound
until I run out of arrows in the quiver
I open my arms
that fit in the whole world
but now only fit in
you alone
</code></pre></div></div>
<p>I understand this song as a description of complacency and
self-inflicted helplessness; of wishing for some eventuality and of
claiming to strongly prefer it while remaining in the habit of doing
nothing towards its realisation, not even when the opportunity arises.</p>
<p>Sometimes the effort takes place but is halfhearted and thus too
little to make a difference. It can be such that the person misses
even the Perseids, this magnificent shower of gold pouring down from
the heavens; a spectacle for which the poetic “you” had stayed up all
night to bear witness to.</p>
<p>These indecisive half-measures only reinforce the sense of
helplessness. They seem to confirm the feeling that every attempt at
change is futile. Though this is a self-fulfilling prophecy of not
trying in earnest and of eventually discovering that the results are
discouraging.</p>
<p>The poetic “you” is likely limited in their choices by edifices that
are thoroughly breakable, even if they do not appear to be such. It so
happens that those allegorical castles are nothing but flimsy shanties,
yet are impressed as unassailable fortresses in the mind of those who
are not in the flow of trying hard enough.</p>
<p>The helpless person of the sort here considered eventually identifies
with this way of life. “It is who I am”, they might say, and all but
beg to be rejected. The longing for rejection becomes a form of
self-realisation and the moral high ground upon which one’s victimhood
is established.</p>
<p>If loneliness is genuinely bothersome, if it is what one seeks to
escape from, then they must struggle to undo it with everything
available at their disposal: fight down to the last arrow and then
some. It is this unwillingness to give up—this desire to try with
every ounce of one’s strength—that carries the potential to leave
indelible marks and to ultimately bring about the wish of two lilies
jointly bathing in the moonlight.</p>
<p>The poet acknowledges that a lover is not pure bliss. It is a wound in
potentiality just as it adds meaning to one’s life. It is the
recognition of this mixed reality that we find throughout Greek
culture from antiquity to modernity, of nothing being purely good or
bad. It is why, for the sake of limiting this to contemporary music,
we have the traditional song from Heperus that speaks of one’s love as
“my ruin” (Χαλασιά μου). It may be affectionate yet retains the notion
of happiness bundled up together with destruction:</p>
<ul>
<li><a href=\"https://www.youtube.com/watch?v=lJIomBSCEJg\">https://www.youtube.com/watch?v=lJIomBSCEJg</a> (cover by Kostas Tzimas and company).</li>
<li><a href=\"https://www.youtube.com/watch?v=wtcjnbESfh4\">https://www.youtube.com/watch?v=wtcjnbESfh4</a> (cover by Maria Gkouva).</li>
</ul>
<p>Implied in this nuanced understanding of the cosmos is the view that
love involves courage. It is not easy. Inertia can be comfortable,
sometimes to a fault. It then is a matter of figuring out what one
truly wants and of having the honesty to act accordingly. Is the
poetic “you” prepared to experience this imperfect reality of love or
are they content with how they are and do not want to change anything?</p>" nil nil "6a91db29df3d00bf7247cd8a3fe13b34") (120 (26627 17950 931772 153000) "https://protesilaos.com/interpretations/2025-03-01-papakonstantinou-minor-adulterations/" "Interpretation of =?utf-8?Q?=E2=80=9CMinor_adulterations=E2=80=9D?= by Vasilis Papakonstantinou" nil "Sat, 01 Mar 2025 00:00:00 +0000" "<p>For this entry, I have picked one of the many masterpieces performed
by legendary Greek rock singer Vasilis Papakonstantinou:
<a href=\"https://www.youtube.com/watch?v=SL5WqqSEn18\">https://www.youtube.com/watch?v=SL5WqqSEn18</a> (and by “many” I am
thinking of “more than a hundred”). <em>Minor adulterations</em> gives us
insight into the life of a troubled mind, as it tackles themes of
failure, regret, introspection, and escapism.</p>
<p>Below are the original lyrics, my translation of them, and some
further philosophical thoughts.</p>
<p>Also check the other “interpretations” involving Vasilis
Papakonstantinou’s songs:</p>
<ul>
<li><a href=\"https://protesilaos.com/interpretations/2023-03-22-papakonstantinou-sophie/\">Sophie (The wild crowd)</a> (2023-03-22)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-07-28-papakonstantinou-porto-rico/\">Porto Rico</a> (2022-07-28)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-07-09-papakonstantinou-kabardina/\">Trench coat</a> (2022-07-09)</li>
</ul>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Μικρές Νοθείες
Ερμηνεία:  Βασίλης Παπακωνσταντίνου
Στίχοι:    Οδυσσέας Ιωάννου
Μουσική:   Θάνος Μικρούτσικος
Ποτέ του δεν κατάφερε να βγει σε μια λιακάδα
και ζει με ό,τι περίσσεψε από ένα σκάρτο ποίημα
τα πρωινά σηκώνεται με μια βαριά ζαλάδα
και λέει πως τον ξύπνησε ένα μεγάλο κύμα
Κρεμάει τις αφίσες του στα παράθυρά του
Κρύβει το φως μα κρύβει κι όλα τ'άλλα
γιατί το μόνο που λαχτάρησε ως λάφυρα του
είναι μια θάλασσα να φτάνει ως τη σκάλα
Βάζει σημάδια με στυλό πάνω στον τοίχο του
Μετράει το ύψος του που πόντο-πόντο χάνει
Μα κάθε βράδυ όταν βγαίνει απ'τον ύπνο του
στέκεται όρθιος και τρυπάει το ταβάνι
Είναι που ονειρεύεται πως φεύγει για ταξίδια
πως μπαίνει μέσα σε παλιές φωτογραφίες
Ξέρει αν μπορούσε θα'κανε μία απ'τα ίδια
αλλά τι νόημα έχει το όνειρο χωρίς μικρές νοθείες
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Minor adulterations
Singers:  Vasilis Papakonstantinou
Lyrics:   Odysseas Ioannou
Music:    Thanos Mikroutsikos
Never did he manage to reach a sunshine
and lives with whatever remains of a scrapped poem
The mornings he gets up with heavy dizziness
and says a great wave woke him up
He hangs his posters on his windows
Hides the light but also hides everything else
because the only thing he desired as plunder
was a sea that stretches to the stairs
He sets marks on his wall with a pen
Measures his height that he loses bit by bit
But each night when he gets out of his slumber
he stands up and pierces through the roof
It is that he dreams of embarking on journeys
that he gets into old pictures
He knows if he could he would do more of the same
but what is the point of a dream without minor adulterations
</code></pre></div></div>
<p>The poetic “he” is a person who is caught in a spiral of
introspection. We get a hint as to what the cause is, in the form of
the person’s own perfectionism, symbolised by the company of some
scrapped poem. It is a memento of his works and his dissatisfaction
with them. He is the most stern of judges in discarding works that do
not live up to some ultimately irrelevant standard of objective
excellence. Why irrelevant? Because a creator can only create what
their condition renders possible. To reject the end result is to not
recognise or accept what the condition is: it is to live in dissonance.</p>
<p>This person is fundamentally ashamed of what they do and who they are.
Hence the desire to withdraw from the public eye, to hide in his ever
darker room, and to reminisce about the few experiences that were
worth keeping a photograph of. It is perfectly fine to have ambitions
and to set high standards. Though every plan has to be couched in
terms of practicality, of the immediate experience of the world. It
cannot be decoupled from what one is doing, where they started from,
and what their trajectory is. It cannot be “objective” strictly
speaking, as there is always some context that determines what is
happening and delineates the realm of the potential.</p>
<p>For as long as someone is putting in honest effort, to the best of
their abilities, there is nothing to be ashamed of. Only cheating and
faking it, only the lack of honour, is worthy of contempt. But the
hard work is noble and praiseworthy as such, even if the results are
not the best ever.</p>
<p>Hiding from others is a healthy coping mechanism when it is an initial
response to some injurious situation. One needs time to recuperate and
come back stronger. Withdrawing into a safe space is thus helpful.
Though it is paramount to not become fatalistic by thinking that this
is the end of the world. By disaggregating the big problem into its
smaller constituents, the pressure becomes less intense: one can
tackle minor issues and get a taste of the ensuing small wins. It is a
matter of not giving up, of not shutting off the sunlight completely.</p>
<p>Concretely, the sort of overthinking described in this song cannot be
overcome by more thinking. The cycle of negativity is broken by
action. Our protagonist, this nameless “he”, must muster the courage
to venture outside. Though this means that he has to swallow his pride
and make some concessions, such as by relaxing his standards and
lowering his expectations. Perhaps poetry is not what he is meant to
do or he can still do it on the side while balancing it out with
something else.</p>
<p>It is single-mindedness and inflexibility that undoes a man. Those
same qualities are invaluable in certain cases where one has to power
through hardship. The key is to not lose sight of the bigger picture;
to not make unflinching commitment the goal itself, but to understand
that everyone can be wrong while the world can always introduce new
states of affairs. Thus the priorities we once set for ourselves are
either no longer correct or relevant.</p>
<p>By blotting out the light and everything else with it, the person is
bound to forgo the sense of perspective that informs sound judgement.
Now, confined to their own space, dwelling over the same tired
thoughts, all they can do is continue to lose any sense of
self-respect, as they belittle their being one regret at a time.</p>
<p>The titular “adulterations” do give us a hopeful message though. Just
as we once dreamt of achieving something grand, we retain the ability
to dream anew no matter the setbacks. We may modify what once was to
fathom a purpose we had not envisaged. It is this very pivot that
makes the adulteration of the original dream benign and, indeed,
necessary. The world may then reveal to us an altogether different
reality that the one we had hoped for; a reality that may still
fulfil us.</p>" nil nil "c07366ac5ca5e708ea8712bc9952775a") (119 (26627 17950 925372 69000) "https://protesilaos.com/interpretations/2025-02-11-tolls-velesiotou-zouganeli/" "Interpretation of =?utf-8?B?4oCcVG9sbHPigJ0=?= by Fotini Velesiotou and Eleonora Zouganeli" nil "Tue, 11 Feb 2025 00:00:00 +0000" "<p>For this entry in the series, I have selected a song that I only
discovered recently: <em>Tolls</em>. There are multiple versions of it,
including the original performed by Fotini Velesiotou and Stavros
Siolas, though the one I prefer is sung by Fotini Velesiotou and
Eleonora Zouganeli: <a href=\"https://www.youtube.com/watch?v=XCzUX8grbLI\">https://www.youtube.com/watch?v=XCzUX8grbLI</a>.</p>
<p>Before I proceed to translate the lyrics of <em>Tolls</em> and then elaborate
on its deeper meaning, I must note that my plans this noon was to
write an article about one of the songs performed by Eleonora
Zouganeli. My first choice was <em>The Gardener</em>, which is the work of
Pavlos Pavlides, another beloved artist of mine:
<a href=\"https://www.youtube.com/watch?v=WrEIY277C_A\">https://www.youtube.com/watch?v=WrEIY277C_A</a>. Though I later decided
to leave that for another time and focus on <em>Tolls</em> for the time
being. Let us, then, enjoy the music and think about one of the
lessons we can learn from it.</p>
<p>Below are the original lyrics, my faithful translation of them, and
further commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Διόδια
Ερμηνεία:  Φωτεινή Βελεσιώτου & Ελεωνόρα Ζουγανέλη
Στίχοι:    Πόλυς Κυριάκου
Μουσική:   Σταύρος Σιόλας
Τώρα θα δεις τα χρώματα ν'αλλάζουνε
και τα βουνά να σμίγουν ένα-ένα
Άγγελοι σαν θνητοί θα σ'αγκαλιάζουνε
εχθροί θα σου μιλούν αγαπημένα
Τώρα θα πιω νερό απ'το ποτήρι σου
δικά σου θα'ναι πια όσα δεν έχω
Θα σπρώξω ουρανό στο παραθύρι σου
κι ό,τι δεν άντεχα θα το αντέχω
Τώρα θα πιάσω σπίτι στον παράδεισο
τσάμπα οικόπεδο σε παράλια
Του έρωτα θα βάλω το πουκάμισο
και θα νικήσω δίχως πανοπλία
Τώρα θα δεις μες στης ψυχής τα υπόγεια
τραπέζι με ψωμί, νερό, κι αλάτι
Τώρα που δεν υπάρχουνε διόδια
που πέφτει σαν ζεστή βροχή η αγάπη
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Tolls
Singers:  Fotini Velesiotou & Eleonora Zouganeli
Lyrics:   Polys Kyriakou
Music:    Stavros Siolas
You will now see the colours changing
and the mountains merging one-by-one
Angels like mortals will be embracing you
enemies will be talking to you lovingly
Now I will drink water from your glass
yours shall be all I no longer have
I will push sky towards your window
and anything I could not endure shall endure
Now I will acquire a house in paradise
Gratis property by the seaside
I will wear love's shirt
and shall win without an armour
Now you will see the soul's basements
table with bread, water, and salt
Now that there are no tolls
that love falls like warm rain
</code></pre></div></div>
<p>To me, <em>Tolls</em> describes the outlook a person has when they no longer
treat people transactionally. Others are not means towards
individualistic ends. They are all equal, fellow travellers on the
same journey of life, with whom one may share a table, no matter how
frugal it is.</p>
<p>The worth of a person is not measured by how opulent their dining hall
is. Indeed, excesses are often a sign of vanity and misplaced
priorities. A serving of the essentials is enough when done with
kindness. It is all about one’s intent and their willingness to
recognise in everyone some inherent, inalienable value.</p>
<p>This hearkens back to the ancient Greek ideal of hospitality,
epitomised by the concept of Xenial Zeus (<em>ξένιος Ζευς</em> or <em>ξένιος
Δίας</em>): “xenial” means “of the foreigners”. One must welcome strangers
and treat them with care, while they must, in turn, respect the
integrity of the household. There is mutual respect involved, whose
deepening manifests as love.</p>
<p>Love is not one-sided. A person can only feel loved when they are
prepared to give love. This is because of the precondition of trust.
One must open up their true self, to be recognised for who they are,
to be confident that they are valued for their true self and not some
persona thereof, and, in turn, to discover in others a genuine person
that hides beneath the hardened carapace of quotidian transactionality.</p>
<p>When you are loved for something you are not, such as some carefully
curated character you maintain on social media, you distract yourself
from the deep-seated contempt you harbour for yourself by chasing
vanity points online. The dopamine boost takes your attention away
from the hard-yet-rewarding work you need to do to (i) accept yourself
and (ii) to then put your faith in others.</p>
<p>One-sided love is a self-centred experience rooted in fear. It
involves the imagination of another, who cannot be an actual person as
their facets of selfhood are not explored. Those are substituted by
potentially beautified or likely inaccurate fantasies. Such a state of
mind happens within the confines of one’s comfort zone: they have not
opened up to make themselves vulnerable and, necessarily, have not
dared to discover real people.</p>
<p>Love can hurt precisely because makes you vulnerable. To love is an
act of courage, of overcoming one’s inhibitions, of looking past one’s
ego, to find the others as they are, with all their imperfections.</p>
<p>The reason Zeus is the tutelary figure of hospitality is because one
must exhibit the combination of vigour, magnanimity, and big-picture
thinking that befits the god of the sky and form-making. Hospitality
is not the mere ephemeral business affair with a tourist, but the
readiness to share with others that which you have no surplus of. It
is this very attitude that dismantles the barriers, which exist
between us.</p>" nil nil "4232353466ba7a0f03e7c062ca77e2ee") (118 (26625 60021 711577 754000) "https://protesilaos.com/codelog/2025-04-18-emacs-tmr-1-1-0/" "Emacs: tmr version 1.1.0" nil "Fri, 18 Apr 2025 00:00:00 +0000" "<p>TMR provides facilities for setting timers using a convenient
notation. Lots of commands are available to operate on timers, while
there also exists a tabulated view to display all timers in a nice
grid.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">tmr</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/tmr\">https://protesilaos.com/emacs/tmr</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/tmr-changelog\">https://protesilaos.com/emacs/tmr-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/tmr\">https://github.com/protesilaos/tmr</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/tmr\">https://gitlab.com/protesilaos/tmr</a></li>
</ul>
</li>
<li>Backronym: TMR May Ring; Timer Must Run.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 1.1.0 on 2025-04-18</h2>
<p>This version makes small refinements to an already stable package.</p>
<h3>All of <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated.el</code>  is part of <code class=\"language-plaintext highlighter-rouge\">tmr.el</code></h3>
<p>The command <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code>, which produces a grid with
timers+descriptions, used to be in a separate file. It now is part of
the singular <code class=\"language-plaintext highlighter-rouge\">tmr.el</code> to keep things simple. Users who were using
<code class=\"language-plaintext highlighter-rouge\">(require 'tmr-tabulated)</code> or similar will now get a warning. Simply
load <code class=\"language-plaintext highlighter-rouge\">tmr</code> instead.</p>
<h3>Refined the behaviour of the <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> command</h3>
<p>When the command <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> (alias <code class=\"language-plaintext highlighter-rouge\">tmr-list-timers</code>) is
called interactively, it uses the <code class=\"language-plaintext highlighter-rouge\">*tmr-tabulated-view*</code> buffer just
as it did before. Though it also evaluates the new user option
<code class=\"language-plaintext highlighter-rouge\">tmr-list-timers-action-alist</code>: it is a variable that controls where
the buffer is displayed. The default value displays the buffer at the
bottom of the Emacs frame and makes some other tweaks for usability.</p>
<p>Watch my video on the <code class=\"language-plaintext highlighter-rouge\">display-buffer-alist</code> for further details on
how to control the display of buffers: <a href=\"https://protesilaos.com/codelog/2024-02-08-emacs-window-rules-display-buffer-alist/\">https://protesilaos.com/codelog/2024-02-08-emacs-window-rules-display-buffer-alist/</a>.</p>
<p>The <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> command is further revised to make it
callable from a program. One scenario where we do this is to interrupt
the termination of Emacs if there are running timers (more below).</p>
<h3>TMR interrupts the termination of Emacs if it must</h3>
<p>In the past, we did not have anything to prevent the termination of
Emacs if timers were running: Emacs would simply shut down. Now we
define the <code class=\"language-plaintext highlighter-rouge\">tmr-kill-emacs-query-function</code>, which is added to the
standard <code class=\"language-plaintext highlighter-rouge\">kill-emacs-query-functions</code>: if there are running timers, it
asks for confirmation before closing Emacs. To make it easier for
users to decide how to proceed, it also pops up the list with all the
timers (i.e. it uses <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> from Lisp, as noted above).</p>
<h3>The list view is easier to follow</h3>
<p>The buffer produced by <code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-view</code> now uses more colours to
make it easier to track the data it presents. These are all the faces
it applies:</p>
<ul>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-start-time</code>:</strong> The time when the timer was started.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-end-time</code>:</strong> The time when the timer is set to end.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-remaining-time</code>:</strong> The remaining time.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-acknowledgement</code>:</strong> Whether the timer needs to be
“acknowledged” after it ends (if it is marked as “acknowledged”,
then it will not go away until the user confirms they have seen it).</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">tmr-tabulated-description</code>:</strong> The text describing what the timer is
about.</p>
</li>
</ul>" nil nil "cc8e12b8c48873cdb1516e27e2aaccab") (117 (26625 60021 711172 211000) "https://protesilaos.com/codelog/2025-04-17-emacs-modus-themes-4-7-0/" "Emacs: modus-themes version 4.7.0" nil "Thu, 17 Apr 2025 00:00:00 +0000" "<p>I just published the latest stable release of <a href=\"https://protesilaos.com/emacs/modus-themes\">the Modus
themes</a>. The change log
entry is reproduced further below. For any questions, you are welcome
to <a href=\"https://protesilaos.com/contact/\">contact me</a>. I will now work to
apply these same changes to emacs.git, so please wait a little longer
for the updates to trickle down to you.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> (also built into Emacs 28+)</li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/modus-themes\">https://protesilaos.com/emacs/modus-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/modus-themes-changelog\">https://protesilaos.com/emacs/modus-themes-changelog</a></li>
<li>Colour palette: <a href=\"https://protesilaos.com/emacs/modus-themes-colors\">https://protesilaos.com/emacs/modus-themes-colors</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/modus-themes-pictures\">https://protesilaos.com/emacs/modus-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/modus-themes\">https://github.com/protesilaos/modus-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/modus-themes\">https://gitlab.com/protesilaos/modus-themes</a></li>
</ul>
</li>
<li>Backronym: My Old Display Unexpectedly Sharpened … themes.</li>
</ul>
<hr />
<h2>4.7.0 on 2025-04-17</h2>
<p>This release introduces many subtle stylistic tweaks to the “tinted”,
“deuteranopia”, and “tritanopia” theme variants.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">modus-themes-list-colors</code> command uses a tabulated list</h3>
<p>This command and its <code class=\"language-plaintext highlighter-rouge\">modus-themes-list-colors-current</code> variant help
users see the colour values and semantic palette mappings defined by
the given theme. In the past, their buffer was designed in the same
spirit as that of the command <code class=\"language-plaintext highlighter-rouge\">list-faces-display</code>, whereas now it is
like the buffer of the command <code class=\"language-plaintext highlighter-rouge\">list-packages</code>. Concretely, users may
now sort by column. Do <code class=\"language-plaintext highlighter-rouge\">M-x describe-mode</code> while in that buffer to
learn about the available commands and their respective key bindings.</p>
<h3>The “tinted” themes have slightly different colours</h3>
<p>The overall feel of the <code class=\"language-plaintext highlighter-rouge\">modus-operandi-tinted</code> and <code class=\"language-plaintext highlighter-rouge\">modus-vivendi-tinted</code>
themes is the same as before. Though in a side-by-side comparison between the
old and new versions reveals lots of subtle differences. The general
idea is to make the themes a bit more consistent by tweaking the
foreground values to be more harmonious in combination with their
background.</p>
<h3>The “deuteranopia” themes are more consistently blue and yellow</h3>
<p>These are the <code class=\"language-plaintext highlighter-rouge\">modus-operandi-deuteranopia</code> and <code class=\"language-plaintext highlighter-rouge\">modus-vivendi-deuteranopia</code>,
which are optimised for users with red-green colour deficiency. In the
past, these themes used blue and yellow hues wherever a concept of
“success” versus “failure” had to be established. This approach is
more generalised now, to include programming syntax highlighting and
many other contexts. In short, the themes are more blue+yellow, while
retaining their original feel.</p>
<h3>The “tritanopia” themes are more consistently red and cyan</h3>
<p>As above, the <code class=\"language-plaintext highlighter-rouge\">modus-operandi-tritanopia</code> and <code class=\"language-plaintext highlighter-rouge\">modus-vivendi-tritanopia</code>
themes, which are optimised for users with blue-yellow colour deficiency,
use a red+cyan palette in more places. Overall, they feel like they
did before, only they are more consistent.</p>
<h3>Miscellaneous</h3>
<ul>
<li>
<p>Extended support for the <code class=\"language-plaintext highlighter-rouge\">icomplete</code> faces that are coming in Emacs
version 31.</p>
</li>
<li>
<p>Added support for <code class=\"language-plaintext highlighter-rouge\">treemacs</code> faces, courtesy of Rahul Juliato in
pull request 121: <a href=\"https://github.com/protesilaos/modus-themes/pull/121\">https://github.com/protesilaos/modus-themes/pull/121</a>.
Rahul has assigned copyright to the Free Software Foundation.</p>
</li>
<li>
<p>Added support for the <code class=\"language-plaintext highlighter-rouge\">tldr</code> package.</p>
</li>
<li>
<p>Extended support for <code class=\"language-plaintext highlighter-rouge\">adoc-mode</code>. Thanks to Leilei332 for the
contribution in pull request 137: <a href=\"https://github.com/protesilaos/modus-themes/pull/137\">https://github.com/protesilaos/modus-themes/pull/137</a>.
The change is within the ~15-line limit, meaning that the author
does not need to assign copyright to the Free Software Foundation.</p>
</li>
<li>
<p>Added support for my <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code> package, specifically the
faces it can use when the <code class=\"language-plaintext highlighter-rouge\">spacious-padding-subtle-mode-line</code> user
option is enabled.</p>
</li>
<li>
<p>Added support for the <code class=\"language-plaintext highlighter-rouge\">howm</code> package.</p>
</li>
<li>
<p>Extended support to the new faces of the <code class=\"language-plaintext highlighter-rouge\">transient</code> package. More
specifically, all those faces use the same colour for key bindings
because the idea of colour coding keys (e.g. light yellow means
something different than dark blue) does not work in practice when
considering accessibility. Such semantics should not be limited to
differences in colour: they should also have distinct indicators,
such as ASCII or Unicode characters.</p>
</li>
<li>
<p>Revised the <code class=\"language-plaintext highlighter-rouge\">avy</code> package’s faces to only use one coloured
background. The multiple coloured backgrounds have been a perennial
problem for our accessibility requirements and have made the themes
needlessly more complex just to support an edge case. With this
simplified style, <code class=\"language-plaintext highlighter-rouge\">avy</code> continues to work fine: it simply is less
flamboyant. Other interfaces with <code class=\"language-plaintext highlighter-rouge\">avy</code>-like model of interaction,
such as optional extensions to the <code class=\"language-plaintext highlighter-rouge\">vertico</code> and <code class=\"language-plaintext highlighter-rouge\">corfu</code> packages,
have these same changes, in the interest of consistency.</p>
</li>
<li>
<p>Update the <code class=\"language-plaintext highlighter-rouge\">meow</code> sample configuration in the manual. This package
is not directly supported at the theme level because (i) I do not
use it and (ii) it is very hard for an outsider to it to trigger the
display of all of its faces in the right context. Without seeing how
all of them look together, I cannot come up with a reliable design.
The manual offers a “good enough” approximation.</p>
</li>
<li>
<p>Broadened the support of the <code class=\"language-plaintext highlighter-rouge\">vterm</code> faces to include the “bright”
colours, while updating those that were already covered. Thanks to
Edgar Vincent for informing me that some of the vterm faces were
changed a while ago. This was done in issue 317 on the GitLab
mirror: <a href=\"https://gitlab.com/protesilaos/modus-themes/-/issues/317\">https://gitlab.com/protesilaos/modus-themes/-/issues/317</a>.</p>
</li>
<li>
<p>Revised the <code class=\"language-plaintext highlighter-rouge\">org-column-title</code> face to inherit the <code class=\"language-plaintext highlighter-rouge\">fixed-pitch</code>
face if the user option <code class=\"language-plaintext highlighter-rouge\">modus-themes-mixed-fonts</code> is non-nil. This
user option makes it possible to have a buffer with proportionately
spaced fonts (such as by enabling <code class=\"language-plaintext highlighter-rouge\">variable-pitch-mode</code>), while
keeping spacing-sensitive elements, like tables and code blocks, in a
monospaced font.</p>
<p>Thanks to pedro-nonfree for bringing this matter to my attention in
issue 129: <a href=\"https://github.com/protesilaos/modus-themes/issues/129\">https://github.com/protesilaos/modus-themes/issues/129</a>.</p>
</li>
<li>
<p>Simplified the helper function <code class=\"language-plaintext highlighter-rouge\">modus-themes--retrieve-palette-value</code>
to make it more efficiently. Thanks to Basil L. Contovounesios for
the contribution in merge request 60 on the GitLab mirror:
<a href=\"https://gitlab.com/protesilaos/modus-themes/-/merge_requests/60\">https://gitlab.com/protesilaos/modus-themes/-/merge_requests/60</a>.</p>
</li>
<li>
<p>Reworded the minibuffer prompt of the <code class=\"language-plaintext highlighter-rouge\">modus-themes-list-colors</code>
command.</p>
</li>
<li>
<p>Made Ivy and IDO subdirectories and “virtual” buffers easier to tell
apart from matching text highlights.</p>
</li>
<li>
<p>Included coverage for the <code class=\"language-plaintext highlighter-rouge\">auto-dim-other-buffers-hide-face</code> of the
package <code class=\"language-plaintext highlighter-rouge\">auto-dim-other-buffers</code></p>
</li>
<li>
<p>Covered the built-in <code class=\"language-plaintext highlighter-rouge\">abbrev-table-name</code> face.</p>
</li>
</ul>" nil nil "87e16c7296f8b7c5f72875fc571f4efa") (116 (26625 60021 710494 436000) "https://protesilaos.com/commentary/2025-04-17-concern-psychedelics/" "My concern with psychedelics" nil "Thu, 17 Apr 2025 00:00:00 +0000" "<p>Writing for <em>Psyche</em> magazine in an article titled <a href=\"https://psyche.co/ideas/psychedelics-are-philosophical-tools-for-demolishing-assumptions\">Psychedelics are philosophical tools for demolishing assumptions</a> professor David J. Blacker makes a case in favour of psychedelic substances like LSD or psilocybin as conduits to wisdom. Here is a quote, with the text in square brackets coming from me:</p>
<blockquote>
<p>Absent a friendly neighbourhood Socrates, how might one deliberately go about removing the constraining weight of those pre-existing conceits [of thinking you know more than you actually do]? There is a chemical aid for precisely that – one that can reliably induce a powerful sense of wonder that very often results in a questioning of received reality and conventional wisdom. I refer, of course, to the ‘classic psychedelics’, the most influential psychedelic compounds of the past century or so: most notably, LSD, psilocybin (mushrooms), mescaline and the different forms of DMT, such as ayahuasca. If the conditions are right, even a moderate dose of a classic psychedelic is perceptually and somatically jarring enough to make the mysteriousness of the world feel real and urgent.</p>
</blockquote>
<p>David Blacker suggests that people can use psychedelics to broaden their horizons. They can be the impetus that puts one on the path to becoming more wise. It sounds plausible, though latent in this argument is the belief that psychedelics are a substitute for the hard work—indeed the rigorous lifestyle—of philosophy. One cannot be opportunistic. This is not some tourist destination or theme park that you escape to for a weekend, suspend your disbelief in the process, get impressed by the unfamiliar spectacles, and then return to your usual routines. No! It is a choice you make for life; a choice with far-reaching implications: to live in open-endedness and to embody your thoughts through your actions.</p>
<p>The professor spends a lot of words trying to draw tenuous parallels between some of the ancient Greek philosophers and the potential of psychedelics, yet forgets to mention perhaps the most important lesson for individuals that we have in the Greek culture at-large: <strong>virtue</strong>. Virtue is your quality as a person, which you attain through years of practice and which you have to continuously exhibit through your deeds (unlike virtue signalling, which you do on a whimsy and requires no commitment whatsoever).</p>
<p>I thus find it important to stress the difficulties involved and to instil in people a sense of responsibility for what lies ahead: are you prepared to give up the life you have to pursue philosophy? Not as an academic specialisation, but as a modus vivendi. Are you, for example, ready to forgo the conventional forms of success if that is what is required to preserve the integrity of your character? Can you remain tranquil in the face of uncertainty and do you have the honesty plus courage to give up on a certain point of view, no matter how attached you are to it, if faced with compelling reasons to do so?</p>
<p>This is not to deny the transformative potential of psychedelics, of which I remain dubitative, but to remind folks that magical solutions do not exist. We live in an era in which individuals seek and often think they find the easy way forward, the “life hack”, the shortcut to enlightenment, the opulent consumerist experience which somehow also retains all the qualities of frugality, and so on. Everything that involves longer-term commitment has a commodified counterpart which, essentially, promises something that is not viable. For example, one can pay attention to their nutrition and channel all their efforts to a ten-year plan of discipline or they can buy this vaunted pill that doctors have designed to (i) provide all the nutrients while (ii) allowing for “cheating days” of eating burgers and whatnot. In other words: the promise is that you do not go through any discomfort but still get maximal benefits out of it. This is all bullshit writ large, yet it sells and is prevalent.</p>
<p>Anything that requires a long-term outlook is not going to be easy. This is not limited to philosophy. It applies to every aspect of our lives. Think about competing in sport, making prudent financial choices, learning to elucidate your thoughts in a foreign tongue, becoming a skilled programmer, playing music at a concert, training your dog and taking care of it 7 days a week and 365 days a year for the entirety of its lifetime, and so on. None of this is done without considerable yet controlled discomfort.</p>
<p>Commitment is a matter of one’s attitude. If you are willing to make the choice, first understand what you are getting yourself into, and then affirm you are going to deal with the consequences. Do not act haphazardly and definitely do not do it just because you got hyped up. Be meticulous and assume the responsibility of dealing with the lasting effects of your actions. Then you have what it takes to become decent at the given task and thus to be a better version of yourself. Otherwise, no substance will do the trick. What will happen instead is that you will be a fool who, like friends and relatives of mine who are no longer around, opts for a certain product under the misguided belief that it cannot possibly be abused to ultimately mess you up.</p>
<p>Other than forgetting about virtue, my concern with proponents of psychedelics is that they do not tell us enough about how are those substances actually going to be used. They mention rituals from times of yore, such as the mysteries at ancient Eleusina, yet do not emphasise the fact that those were a likely once-in-a-lifetime pilgrimage that was done within a strict framework of religious initiation and conduct, as well as communal solidarity. There was no LSD dealer around the corner that would sell you whatever you would ask for. It was a highly controlled environment, predicated on robust hierarchies (indeed “hierarchy” means “holy rule”).</p>
<p>I believe someone can be elevated spiritually from exposure to substances under the careful mentorship of a mystic. A mystic is someone who commits their life to the cause. But what about our modern world in which individuals are in the habit of consuming, or binging, all sorts of things without oversight from any such mystic? I remember those times when one of my relatives would take so-called “magic” mushrooms or the extract of cacti <em>every single day</em>. That was not pretty and there was nothing spiritual about such unbridled abuse. It was a mindless act of self-harm that exemplified the perversion of laziness as wisdom and of freedom as recklessness.</p>
<p>As with the convenient presentation of the Eleusinian mysteries, I am sceptical of allusions to those much-touted indigenous tribes and their rituals. I have a strong suspicion that within those cultures there are powerful checks and clear social structures that ensure responsible use of psychedelics. Taking the concoction out of the ancient culture’s milieu, decoupling it from its religious and social functions, all but guarantees it is turned into yet another product that is instrumentalised in the service of profiteering and unceremoniously peddled to gullible hipsters.</p>
<p>Does this mean that everybody who uses psychedelics is irresponsible? No, not at all. Though we must not forget what kind of world we live in and how we must act carefully when dealing with non-trivial matters.</p>
<p>Psychedelics are a potent tool, yet a tool nonetheless: they are a possible means to a certain end, be it spiritual awakening, communal belonging, or anything else. As with all tools, they can be put to good use or be misused to the detriment of their users. No tool is ever sufficient without the person’s willingness to do the work. It is this individual responsibility that makes the difference between benign and harmful results. And no tool is fully understood without its user manual or in the absence of clear demonstration, which in this case come from long-standing traditions and the conduct of tutelary figures therein.</p>" nil nil "8001ea55076f2c24b0c66f6be54124ad") (115 (26623 25867 755779 191000) "https://protesilaos.com/codelog/2025-04-15-emacs-denote-4-0-0/" "Emacs: Denote version 4.0.0" nil "Tue, 15 Apr 2025 00:00:00 +0000" "<p>Denote aims to be a simple-to-use, focused-in-scope, and effective
note-taking and file-naming tool for Emacs.</p>
<p>Denote is based on the idea that files should follow a predictable and
descriptive file-naming scheme.  The file name must offer a clear
indication of what the contents are about, without reference to any
other metadata.  Denote basically streamlines the creation of such
files or file names while providing facilities to link between them
(where those files are editable).</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a constistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 4.0.0 on 2025-04-15</h2>
<p>This is a massive release. There is one breaking change, which should
be easy to adapt to: this pertains to the reorganisation of the
project to separate the “core” of Denote from its “extensions”. The
core is the <code class=\"language-plaintext highlighter-rouge\">denote</code> package. Each extension now has its own package
(details below).</p>
<p>Other than that, this version includes lots of new features for
searching and linking as well as quality-of-life refinements. We have
generalised the infrastructure for performing queries in the
<code class=\"language-plaintext highlighter-rouge\">denote-directory</code> and made the buffers with the search results more
useful.</p>
<p>Take your time to read through this publication. I am writing it for
you. Also remember that the most up-to-date resource for anything
related to Denote is its manual. You are always welcome to contact me:
<a href=\"https://protesilaos.com/contact\">https://protesilaos.com/contact</a>. Or join the development on the Git
repository.</p>
<p>As usual, special thanks to Jean-Philippe Gagné Guay for making high
quality contributions to Denote since the beginning of the project ~3
years ago. Those will not always be headline features, but are
important improvements to the underlying code base.</p>
<p>I mention contributions from Jean-Philippe and others in its context.
Though I do not cover implementation details, otherwise this document
will be the size of a book. This does not mean that they are no
important though. Please consult the Git commit log for all the
technicalities.</p>
<h3>All the “extras” are in separate packages, including the Org dynamic blocks</h3>
<p>In previous versions of Denote, we included some optional extensions
as part of the <code class=\"language-plaintext highlighter-rouge\">denote</code> package. These included the files
<code class=\"language-plaintext highlighter-rouge\">denote-org-extras.el</code> (Org dynamic blocks, among others),
<code class=\"language-plaintext highlighter-rouge\">denote-journal-extras.el</code> (streamlined for journaling),
<code class=\"language-plaintext highlighter-rouge\">denote-silo-extras.el</code> (working with multiple Denote silos).</p>
<p>The files <code class=\"language-plaintext highlighter-rouge\">denote-md-extras.el</code> (Markdown extras) and
<code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code> (sequence notes, including Luhmann-style
alphanumeric sequences) were also part of the project during the last
development cycle, though they never made it into a tagged release.</p>
<p>All these are now available as standalone packages on the official GNU
ELPA archive:</p>
<ul>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">denote-org</code>:</strong> In the Emacs configuration file, replace all
instances of <code class=\"language-plaintext highlighter-rouge\">denote-org-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-org</code>.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">denote-journal</code>:</strong> Replace <code class=\"language-plaintext highlighter-rouge\">denote-journal-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-journal</code>.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">denote-silo</code>:</strong> Replace <code class=\"language-plaintext highlighter-rouge\">denote-silo-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-silo</code>.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">denote-markdown</code> :</strong> Replace <code class=\"language-plaintext highlighter-rouge\">denote-md-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-markdown</code>.</p>
</li>
<li>
<p><strong><code class=\"language-plaintext highlighter-rouge\">denote-sequence</code>:</strong> No changes to any of the defined symbols.
Simply get the new package.</p>
</li>
</ul>
<p>I will document each of these packages further below. The plan, going
forward, is to maintain all the packages and coordinate their new
versions.</p>
<h3>More things in “core”</h3>
<p>While the extras are moved out to their own code repositories, all
other features are merged into <code class=\"language-plaintext highlighter-rouge\">denote.el</code>. Those include everything
that was in <code class=\"language-plaintext highlighter-rouge\">denote-sort.el</code> and <code class=\"language-plaintext highlighter-rouge\">denote-rename-buffer.el</code>.</p>
<ul>
<li>
<p>The “sort” mechanism is mostly for package developers. We use it
extensively in our Org dynamic blocks, which are now part of the
<code class=\"language-plaintext highlighter-rouge\">denote-org</code> package.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-dired</code> command (alias <code class=\"language-plaintext highlighter-rouge\">denote-sort-dired</code>) is the only
user-facing “sort” command we have always provided. It produces a
fully fledged Dired buffer showing the results of the given search
for file names. The matching files are sorted according to the
user’s expressed preference. The details are described in the
manual.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-rename-buffer-mode</code> and all of its user options are
unchanged. This mode automatically renames the buffer of a given
Denote file so that it is easier to read it. Again, the manual
covers the technicalities.</p>
</li>
</ul>
<p>Users do not need to make changes, unless they are explicitly loading
<code class=\"language-plaintext highlighter-rouge\">denote-sort-dired</code> and <code class=\"language-plaintext highlighter-rouge\">denote-rename-buffer</code>. In that case, they may
just remove those calls: only <code class=\"language-plaintext highlighter-rouge\">denote</code> needs to be loaded.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code></h3>
<p>Many of the features I will describe below produce search results via
the built-in Xref mechanism. Xref performs a search with a Grep or
Grep-like program, subject to the user option <code class=\"language-plaintext highlighter-rouge\">xref-search-program</code>.
The buffer those search results are displayed in runs the
<code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code>. It supersedes <code class=\"language-plaintext highlighter-rouge\">denote-backlinks-mode</code>.</p>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code> supports the following:</p>
<ul>
<li>Results are shown in the context, with the exact match in highlight.</li>
<li>Matches are grouped by file. Each file is a “heading”.</li>
<li>Headings can be folded with <code class=\"language-plaintext highlighter-rouge\">TAB</code>, just how it is done in Org buffers.</li>
<li>The results can be used for further queries. Type <code class=\"language-plaintext highlighter-rouge\">C-h m</code>
(<code class=\"language-plaintext highlighter-rouge\">describe-mode</code>) to learn about all the relevant commands.</li>
</ul>
<p>We have had support for Xref since the original version of Denote. It
now is more generalised to cover backlinks, query links, and
<code class=\"language-plaintext highlighter-rouge\">denote-grep</code> (more below).</p>
<h3>Use query links for file contents or file names</h3>
<p>Denote has always provided the option to link directly to a file with
a given name by referencing its identifier. This can be done with the
command <code class=\"language-plaintext highlighter-rouge\">denote-link</code>, among a few others like it (always consult the
manual of Denote).</p>
<p>In addition to these “direct links”, we also support “query links”.
Those do not point to a file but instead trigger a search. The results
are placed in a buffer that uses the appropriate major mode.</p>
<p>There are two types of query links:</p>
<ul>
<li>
<p><strong>Query file contents:</strong> Use the command <code class=\"language-plaintext highlighter-rouge\">denote-query-contents-link</code>
to insert a query link at point for “file contents”. It perform a
search inside files in the <code class=\"language-plaintext highlighter-rouge\">denote-directory</code> and put the results in
a <code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code> buffer.</p>
</li>
<li>
<p><strong>Query file names:</strong> Use the <code class=\"language-plaintext highlighter-rouge\">denote-query-filenames-link</code> to insert
a query link for “file names”. It performs the query against file
names (not contents!) and puts the results in a <code class=\"language-plaintext highlighter-rouge\">dired</code> buffer.</p>
</li>
</ul>
<p>The display of the buffer with the query link results is controlled by
the user option <code class=\"language-plaintext highlighter-rouge\">denote-query-links-display-buffer-action</code>.</p>
<p>Query links are styled a little bit differently than direct links.
Compare the <code class=\"language-plaintext highlighter-rouge\">denote-faces-link</code> with <code class=\"language-plaintext highlighter-rouge\">denote-faces-query-link</code>. Both
should look okay with most themes.</p>
<p>Denote query links are supported as part of the <code class=\"language-plaintext highlighter-rouge\">denote:</code> hyperlink
type. They are available in all file types we define (per the user
option <code class=\"language-plaintext highlighter-rouge\">denote-file-type</code>) and should, in principle, work in any
custom file type (advanced users can check the variable <code class=\"language-plaintext highlighter-rouge\">denote-file-types</code>).</p>
<h3>Backlinks now always show their context</h3>
<p>In the past, the command <code class=\"language-plaintext highlighter-rouge\">denote-backlinks</code> would produce a bespoke
buffer showing a list of file names that included links to the current
file (any file with the Denote file-naming scheme can have backlinks,
by the way, including PDFs, videos, etc.). This buffer did not provide
any additional functionality. We used to support the option to show
results in their context via <code class=\"language-plaintext highlighter-rouge\">denote-backlinks-show-context</code>. Those
would be rendered in a standard Xref buffer.</p>
<p>The contextual results are now the default and sole option. This is
because we have expanded the functionality of those buffers to use the
<code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code>, as explained above. Plus, it makes our code base
simpler.</p>
<p>Users will notice how backlikns look just like a query link for file
contents. This is because backlinks are the original query links since
day one of Denote.</p>
<h3>Direct links to a file with matching contents</h3>
<p>The command <code class=\"language-plaintext highlighter-rouge\">denote-link-to-file-with-contents</code> allows users to
produce a direct link to a file whose contents (not file name!)
includes the given query.</p>
<p>Similarly, the command <code class=\"language-plaintext highlighter-rouge\">denote-link-to-all-files-with-contents</code>
generates a typographic list (bullet list) to all files whose contents
match the given query.</p>
<p>The manual covers all linking commands in depth.</p>
<h3>The essence of <code class=\"language-plaintext highlighter-rouge\">denote-search</code> is part of <code class=\"language-plaintext highlighter-rouge\">denote</code></h3>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-search</code> package by Lucas Quintana uses the infrastructure
of Denote to perform searches in file contents. We now provide its
feature set as part of core <code class=\"language-plaintext highlighter-rouge\">denote</code>.</p>
<p>We decided to do this since query links already introduced all of the
requisite generalisations to <code class=\"language-plaintext highlighter-rouge\">denote-query-mode</code>.</p>
<p>Users can rely on the commands <code class=\"language-plaintext highlighter-rouge\">denote-grep</code>, <code class=\"language-plaintext highlighter-rouge\">denote-grep-marked-dired-files</code>,
and <code class=\"language-plaintext highlighter-rouge\">denote-grep-files-referenced-in-region</code>.</p>
<p>The placement of these buffers is subject to the user option
<code class=\"language-plaintext highlighter-rouge\">denote-grep-display-buffer-action</code>.</p>
<p>This functionality was introduced in two pull requests by Lucas
Quintana, 571 and 573, with further changes by me:</p>
<ul>
<li><a href=\"https://github.com/protesilaos/denote/pull/571\">https://github.com/protesilaos/denote/pull/571</a>.</li>
<li><a href=\"https://github.com/protesilaos/denote/pull/573\">https://github.com/protesilaos/denote/pull/573</a>.</li>
</ul>
<p>Lucas has assigned copyright to the Free Software Foundation.</p>
<p>I think this was a much-needed addition to the core of Denote. It
complements <code class=\"language-plaintext highlighter-rouge\">denote-dired</code> and query links.</p>
<h3>Formatting of links with <code class=\"language-plaintext highlighter-rouge\">denote-link-description-format</code></h3>
<p>The old user option <code class=\"language-plaintext highlighter-rouge\">denote-link-description-function</code> is deprecated
and superseded by the new <code class=\"language-plaintext highlighter-rouge\">denote-link-description-format</code>. The new
user option still accepts a custom function as its value, so the old
behaviour should be retained.</p>
<p>What the new <code class=\"language-plaintext highlighter-rouge\">denote-link-description-format</code> supports is an easier
way to customise the description of a link by using format specifiers
for common options. For example, users who only want to see the title
of the linked file can do this:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>(setq denote-link-description-format \"%t\")
</code></pre></div></div>
<p>The documentation of this user option covers all the format specifiers
and further details.</p>
<h3>Miscellaneous changes for all users</h3>
<ul>
<li>
<p>The command <code class=\"language-plaintext highlighter-rouge\">denote-add-front-matter</code> is superseded by
<code class=\"language-plaintext highlighter-rouge\">denote-rename-file</code> and related. Those renaming commands will add
missing front matter or rewrite the modified lines of existing front
matter. This is due to refinements made by Jean-Philippe Gagné Guay
to the file renaming mechanism. We discussed this deprecation in
issue 498: <a href=\"https://github.com/protesilaos/denote/issues/498\">https://github.com/protesilaos/denote/issues/498</a>. Also
thanks to Samuel Flint for reporting an earlier problem with file
name signatures: <a href=\"https://github.com/protesilaos/denote/issues/492\">https://github.com/protesilaos/denote/issues/492</a>.</p>
</li>
<li>
<p>The user option <code class=\"language-plaintext highlighter-rouge\">denote-open-link-function</code> specifies the function
used by Denote to open the file of a direct link.</p>
</li>
<li>
<p>The user option <code class=\"language-plaintext highlighter-rouge\">denote-org-store-link-to-heading</code> can now be set to
form generic context links without a <code class=\"language-plaintext highlighter-rouge\">PROPERTIES</code> drawer and
corresponding <code class=\"language-plaintext highlighter-rouge\">CUSTOM_ID</code>. Set the value of this variable to
<code class=\"language-plaintext highlighter-rouge\">'context</code>. Read its documentation for further details.</p>
</li>
<li>
<p>Also about <code class=\"language-plaintext highlighter-rouge\">denote-org-store-link-to-heading</code>, we have changed its
default value to <code class=\"language-plaintext highlighter-rouge\">nil</code>, which is what we were doing for most of
Denote’s history. This means that, by default, <code class=\"language-plaintext highlighter-rouge\">org-store-link</code> and
anything building on top of it will create a link only to the
current Denote file, like <code class=\"language-plaintext highlighter-rouge\">denote:IDENTIFIER</code>, but not to the
current heading within that file. To create links to the
file+heading, set the value of this variable to <code class=\"language-plaintext highlighter-rouge\">'id</code>.</p>
</li>
<li>
<p>The command <code class=\"language-plaintext highlighter-rouge\">denote-dired-link-marked-notes</code> is an alias for
<code class=\"language-plaintext highlighter-rouge\">denote-link-dired-marked-notes</code>.</p>
</li>
<li>
<p>The user option <code class=\"language-plaintext highlighter-rouge\">denote-sort-dired-extra-prompts</code> control what
<code class=\"language-plaintext highlighter-rouge\">denote-dired</code> (alias <code class=\"language-plaintext highlighter-rouge\">denote-sort-dired</code>) prompts for. It accepts
either a nil value or a list of symbols among <code class=\"language-plaintext highlighter-rouge\">sort-by-component</code>,
<code class=\"language-plaintext highlighter-rouge\">reverse-sort</code>, and <code class=\"language-plaintext highlighter-rouge\">exclude-regexp</code>. The order those symbols appear
in the list is significant, with the leftmost coming first.</p>
</li>
<li>
<p>There is a new <code class=\"language-plaintext highlighter-rouge\">denote-sort-identifier-comparison-function</code> variable
which determines how identifier-based sorting should be done by
default. It complements the existing <code class=\"language-plaintext highlighter-rouge\">denote-sort-title-comparison-function</code>,
<code class=\"language-plaintext highlighter-rouge\">denote-sort-keywords-comparison-function</code>, <code class=\"language-plaintext highlighter-rouge\">denote-sort-signature-comparison-function</code>.
Thanks to Maikol Solís for the contribution in pull request 517:
<a href=\"https://github.com/protesilaos/denote/pull/517\">https://github.com/protesilaos/denote/pull/517</a>. The change is
small, meaning that Maikol does not need to assign copyright to the
Free Software Foundation (though I believe the paperwork is done, anyway).</p>
</li>
<li>
<p>Lots of refinements to the doc strings of individual variables
and/or functions as well as the manual.</p>
</li>
<li>
<p>Lots of other contributions to discussions and questions on the Git
repository. Granted, these are not “changes” per se but are part of
the development effort nonetheless.</p>
</li>
<li>
<p>Made <code class=\"language-plaintext highlighter-rouge\">denote-get-path-by-id</code> use <code class=\"language-plaintext highlighter-rouge\">denote-get-file-extension-sans-encryption</code>
instead of <code class=\"language-plaintext highlighter-rouge\">denote-get-file-extension</code>. This fixes a bug where the
extension is duplicated if it has an encryption component. Thanks to
eum3l for the patch in pull request 562: <a href=\"https://github.com/protesilaos/denote/pull/562\">https://github.com/protesilaos/denote/pull/562</a>.
The change is small, meaning that the author does not need to assign
copyright to the Free Software Foundation.</p>
</li>
<li>
<p>Same as above for <code class=\"language-plaintext highlighter-rouge\">denote--rename-file</code>, which was done in pull
request 557: <a href=\"https://github.com/protesilaos/denote/pull/557\">https://github.com/protesilaos/denote/pull/557</a>.</p>
</li>
</ul>
<h3>For developers or advanced users</h3>
<p>The following have been added or modified.</p>
<ul>
<li>
<p><strong>NEW Function <code class=\"language-plaintext highlighter-rouge\">denote-file-has-denoted-filename-p</code>:</strong> Return non-nil
if <code class=\"language-plaintext highlighter-rouge\">FILE</code> respects the file-naming scheme of Denote. This tests the
rules of Denote’s file-naming scheme. Sluggification is ignored. It
is done by removing all file name components and validating what
remains. Thanks to Jean-Philippe Gagné Guay for the pull request
515: <a href=\"https://github.com/protesilaos/denote/pull/515\">https://github.com/protesilaos/denote/pull/515</a>.</p>
</li>
<li>
<p><strong>NEW Functions <code class=\"language-plaintext highlighter-rouge\">denote-infer-keywords-from-files</code>:</strong> Return list of
keywords in <code class=\"language-plaintext highlighter-rouge\">denote-directory-files</code>. With optional
<code class=\"language-plaintext highlighter-rouge\">FILES-MATCHING-REGEXP</code>, only extract keywords from the matching
files. Otherwise, do it for all files. Keep any duplicates. Users
who do not want duplicates should refer to the functions
<code class=\"language-plaintext highlighter-rouge\">denote-keywords</code>.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-keywords</code>:</strong> Returns an appropriate list
of keyword candidates, while accounting for the value of the user
option <code class=\"language-plaintext highlighter-rouge\">denote-infer-keywords</code>. It now also accepts the optional
<code class=\"language-plaintext highlighter-rouge\">FILES-MATCHING-REGEXP</code> parameter.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-directory-files</code>:</strong> Returns a list of
absolute file paths in variable <code class=\"language-plaintext highlighter-rouge\">denote-directory</code>. It now accepts
the optional <code class=\"language-plaintext highlighter-rouge\">EXCLUDE-REGEXP</code> parameter.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-format-file-name</code>:</strong> Formats a file name.
The way it treats its <code class=\"language-plaintext highlighter-rouge\">ID</code> parameter has changed. Please read its
doc string. Thanks to Jean-Philippe Gagné Guay for the pull request
496: <a href=\"https://github.com/protesilaos/denote/pull/496\">https://github.com/protesilaos/denote/pull/496</a>.</p>
</li>
<li>
<p><strong>ALIAS Function <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-filename-keywords-as-list</code>:</strong> This
is a name that is easier to discover than <code class=\"language-plaintext highlighter-rouge\">denote-extract-keywords-from-path</code>,
because of the many other functions with the <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-*</code> prefix.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-filename-identifier</code>:</strong> Extracts
the identifier from <code class=\"language-plaintext highlighter-rouge\">FILE</code> name, if present, else returns nil. To
create a new one from a date, refer to the <code class=\"language-plaintext highlighter-rouge\">denote-get-identifier</code>
function. Thanks to Jean-Philippe Gagné Guay for the pull request
476: <a href=\"https://github.com/protesilaos/denote/pull/476\">https://github.com/protesilaos/denote/pull/476</a>.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-get-identifier</code>:</strong> Converts <code class=\"language-plaintext highlighter-rouge\">DATE</code> into a
Denote identifier using <code class=\"language-plaintext highlighter-rouge\">denote-id-format</code>. If <code class=\"language-plaintext highlighter-rouge\">DATE</code> is nil, it
returns an empty string as the identifier. Also by Jean-Philippe in
pull request 476 mentioned right above.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-date-prompt</code>:</strong> Prompts for a date,
expecting <code class=\"language-plaintext highlighter-rouge\">YYYY-MM-DD</code> or that plus <code class=\"language-plaintext highlighter-rouge\">HH:MM</code> (or even <code class=\"language-plaintext highlighter-rouge\">HH:MM:SS</code>).
Can also use Org’s more advanced date selection utility if the user
option <code class=\"language-plaintext highlighter-rouge\">denote-date-prompt-use-org-read-date</code> is non-nil. It now has
the optional parameters <code class=\"language-plaintext highlighter-rouge\">INITIAL-DATE</code> and <code class=\"language-plaintext highlighter-rouge\">PROMPT-TEXT</code>. Thanks to
Jean-Philippe Gagné Guay for the pull request 576:
<a href=\"https://github.com/protesilaos/denote/pull/576\">https://github.com/protesilaos/denote/pull/576</a>.</p>
</li>
<li>
<p><strong>NEW Function <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-groups-xref-query</code>:</strong> Accesses the
location of xrefs for <code class=\"language-plaintext highlighter-rouge\">QUERY</code> and group them per file. Limit the
search to text files.</p>
</li>
<li>
<p><strong>NEW Function <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-files-xref-query</code>:</strong> Returns sorted,
deduplicated file names with matches for <code class=\"language-plaintext highlighter-rouge\">QUERY</code> in their contents.
Limits the search to text files.</p>
</li>
<li>
<p><strong>NEW Function <code class=\"language-plaintext highlighter-rouge\">denote-retrieve-xref-alist</code>:</strong> Returns xref alist of
files with the location of matches for <code class=\"language-plaintext highlighter-rouge\">QUERY</code>. With optional
<code class=\"language-plaintext highlighter-rouge\">FILES-MATCHING-REGEXP</code>, it limits the list of files accordingly
(per <code class=\"language-plaintext highlighter-rouge\">denote-directory-files</code>). At all times, it limits the search
to text files.</p>
</li>
<li>
<p><strong>NEW Function <code class=\"language-plaintext highlighter-rouge\">denote-prepend-front-matter</code>:</strong> Prepend front matter
to <code class=\"language-plaintext highlighter-rouge\">FILE</code>. The <code class=\"language-plaintext highlighter-rouge\">TITLE</code>, <code class=\"language-plaintext highlighter-rouge\">KEYWORDS</code>, <code class=\"language-plaintext highlighter-rouge\">DATE</code>, <code class=\"language-plaintext highlighter-rouge\">ID</code>, <code class=\"language-plaintext highlighter-rouge\">SIGNATURE</code>, and
<code class=\"language-plaintext highlighter-rouge\">FILE-TYPE</code> are passed from the renaming command and are used to
construct a new front matter block if appropriate.</p>
</li>
<li>
<p><strong>MODIFIED Function <code class=\"language-plaintext highlighter-rouge\">denote-rewrite-front-matter</code>:</strong> Rewrites front
matter of note after <code class=\"language-plaintext highlighter-rouge\">denote-rename-file</code> (or related). The <code class=\"language-plaintext highlighter-rouge\">FILE</code>,
<code class=\"language-plaintext highlighter-rouge\">TITLE</code>, <code class=\"language-plaintext highlighter-rouge\">KEYWORDS</code>, <code class=\"language-plaintext highlighter-rouge\">SIGNATURE</code>, <code class=\"language-plaintext highlighter-rouge\">DATE</code>, <code class=\"language-plaintext highlighter-rouge\">IDENTIFIER</code>, and
<code class=\"language-plaintext highlighter-rouge\">FILE-TYPE</code> arguments are given by the renaming command and are used
to construct new front matter values if appropriate. If
<code class=\"language-plaintext highlighter-rouge\">denote-rename-confirmations</code> contains <code class=\"language-plaintext highlighter-rouge\">rewrite-front-matter</code>,
prompt to confirm the rewriting of the front matter. Otherwise
produce a <code class=\"language-plaintext highlighter-rouge\">y-or-n-p</code> prompt to that effect. Thanks to
Jean-Philippe Gagné Guay for the pull request 558:
<a href=\"https://github.com/protesilaos/denote/pull/558\">https://github.com/protesilaos/denote/pull/558</a>.</p>
</li>
</ul>
<h3>Denote “extensions” that are not in the <code class=\"language-plaintext highlighter-rouge\">denote</code> package anymore</h3>
<h4><code class=\"language-plaintext highlighter-rouge\">denote-journal</code> integrates nicely with <code class=\"language-plaintext highlighter-rouge\">M-x calendar</code></h4>
<p>The <code class=\"language-plaintext highlighter-rouge\">calendar</code> can now highlight days that have journal entry. It may
also be used as a date picker to view or write a journal entry for
that day.</p>
<ul>
<li>
<p>Thanks to Alan Schmitt for reporting an issue with the calendar
integration during development:
<a href=\"https://github.com/protesilaos/denote-journal/issues/8\">https://github.com/protesilaos/denote-journal/issues/8</a>.</p>
</li>
<li>
<p>Thanks to Vineet C. Kulkarni for tweaking the identification of the
journal keyword to be more robust:
<a href=\"https://github.com/protesilaos/denote-journal/pull/4\">https://github.com/protesilaos/denote-journal/pull/4</a>.</p>
</li>
<li>
<p>Thanks to Honza Pokorny for fixing two small issues with the path
expansion:</p>
<ul>
<li><a href=\"https://github.com/protesilaos/denote-journal/pull/5\">https://github.com/protesilaos/denote-journal/pull/5</a></li>
<li><a href=\"https://github.com/protesilaos/denote-journal/pull/7\">https://github.com/protesilaos/denote-journal/pull/7</a></li>
</ul>
</li>
</ul>
<p>Other than that, the package is providing the same functionality as
the discontinued <code class=\"language-plaintext highlighter-rouge\">denote-journal-extras.el</code>.</p>
<ul>
<li>Manual: <a href=\"https://protesilaos.com/emacs/denote-journal\">https://protesilaos.com/emacs/denote-journal</a>.</li>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote-journal\">https://github.com/protesilaos/denote-journal</a>.</li>
</ul>
<h4><code class=\"language-plaintext highlighter-rouge\">denote-org</code> is almost the same as the discontinued <code class=\"language-plaintext highlighter-rouge\">denote-org-extras.el</code></h4>
<p>The only addition to dynamic blocks the optional <code class=\"language-plaintext highlighter-rouge\">:not-regexp</code> parameter.
This is a regular expression that can further filter the results of a
search, such that the matching items are removed from the output.</p>
<p>The official manual of <code class=\"language-plaintext highlighter-rouge\">denote-org</code> covers the technicalities.</p>
<ul>
<li>Manual: <a href=\"https://protesilaos.com/emacs/denote-org\">https://protesilaos.com/emacs/denote-org</a>.</li>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote-org\">https://github.com/protesilaos/denote-org</a>.</li>
</ul>
<p>Also thanks to Elias Storms for fixing a small issue with the “missing
links” Org dynamic block, in pull request 486: <a href=\"https://github.com/protesilaos/denote/pull/486\">https://github.com/protesilaos/denote/pull/486</a></p>
<h4><code class=\"language-plaintext highlighter-rouge\">denote-silo</code> is the same as the discontinued <code class=\"language-plaintext highlighter-rouge\">denote-silo-extras.el</code></h4>
<p>I have only made small tweaks to it, but nothing that changes the user
experience.</p>
<ul>
<li>Manual: <a href=\"https://protesilaos.com/emacs/denote-silo\">https://protesilaos.com/emacs/denote-silo</a></li>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote-silo\">https://github.com/protesilaos/denote-silo</a></li>
</ul>
<h4><code class=\"language-plaintext highlighter-rouge\">denote-markdown</code> for some Markdown-specific extras</h4>
<p>This package provides some convenience functions to better integrate
Markdown with Denote. This is mostly about converting links from one
type to another so that they can work in different applications
(because Markdown does not have a standardised way to define custom
link types). It also defines an “Obsidian” file type which does not
have any front matter but only uses a level 1 heading for the title of
the note.</p>
<p>The code of <code class=\"language-plaintext highlighter-rouge\">denote-markdown</code> used to be bundled up with the <code class=\"language-plaintext highlighter-rouge\">denote</code>
package before version <code class=\"language-plaintext highlighter-rouge\">4.0.0</code> of the latter and was available in the
file <code class=\"language-plaintext highlighter-rouge\">denote-md-extras.el</code>. Users of the old code will need to adapt
their setup to use the <code class=\"language-plaintext highlighter-rouge\">denote-markdown</code> package. This can be done by
replacing all instances of <code class=\"language-plaintext highlighter-rouge\">denote-md-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-markdown</code>
across their configuration.</p>
<ul>
<li>Manual: <a href=\"https://protesilaos.com/emacs/denote-markdown\">https://protesilaos.com/emacs/denote-markdown</a></li>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote-markdown\">https://github.com/protesilaos/denote-markdown</a></li>
</ul>
<h4>Write sequence notes (or “folgezettel”) with <code class=\"language-plaintext highlighter-rouge\">denote-sequence</code></h4>
<p>Users who want their notes to have an inherent structure can use
<code class=\"language-plaintext highlighter-rouge\">denote-sequence</code>. The idea is to have thoughts that naturally form
sequences and are named accordingly. The sequence scheme is either
numeric or alphanumeric. The manual of the package explains all the
details.</p>
<ul>
<li>Manual: <a href=\"https://protesilaos.com/emacs/denote-sequence\">https://protesilaos.com/emacs/denote-sequence</a></li>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote-sequence\">https://github.com/protesilaos/denote-sequence</a></li>
</ul>
<p>I had a lot of fun developing this comprehensive package during the
winter holidays.</p>
<p>Thanks to Claudio Migliorelli, Kierin Bell, Mirko Hernandez for
helping me fix some issues during development:</p>
<ul>
<li><a href=\"https://github.com/protesilaos/denote/pull/518\">https://github.com/protesilaos/denote/pull/518</a>.</li>
<li><a href=\"https://github.com/protesilaos/denote/pull/528\">https://github.com/protesilaos/denote/pull/528</a>.</li>
<li><a href=\"https://github.com/protesilaos/denote/pull/540\">https://github.com/protesilaos/denote/pull/540</a>.</li>
<li><a href=\"https://github.com/protesilaos/denote/pull/541\">https://github.com/protesilaos/denote/pull/541</a>.</li>
<li><a href=\"https://github.com/protesilaos/denote-sequence/issues/2\">https://github.com/protesilaos/denote-sequence/issues/2</a>.</li>
</ul>
<h3>The <code class=\"language-plaintext highlighter-rouge\">consult-denote</code> also gets a small update</h3>
<p>This has always been a standalone package. I made the function
<code class=\"language-plaintext highlighter-rouge\">consult-denote-file-prompt</code> read the special-purpose variable
<code class=\"language-plaintext highlighter-rouge\">denote-file-prompt-use-files-matching-regexp</code>. This is related to
commit <code class=\"language-plaintext highlighter-rouge\">e0f1d47</code> in denote.git, about issue 536 as reported by Alan
Schmitt: <a href=\"https://github.com/protesilaos/denote/issues/536\">https://github.com/protesilaos/denote/issues/536</a>. The
variable <code class=\"language-plaintext highlighter-rouge\">denote-file-prompt-use-files-matching-regexp</code> is meant to be
<code class=\"language-plaintext highlighter-rouge\">let</code> bound and is for advanced users or developers.</p>
<h3>Feature freeze at least until the end of April 2025</h3>
<p>I will not develop new features or accept pull request for a couple of
weeks. The idea is to focus on fixing any bug reports. We can then
publish point releases quickly.</p>
<p>New features can be included after we are confident that the packages
we have are okay.</p>
<h3>Git commits</h3>
<p>This is just an overview of the Git commits, though remember that
there is more that goes into a project, such as the reporting of
inconsistencies, discussion of new ideas, et cetera. Thanks to
everybody involved! Plus, some commits are large while others are
tiny.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>~/Git/Projects/denote $ git shortlog 3.1.0..4.0.0  --summary --numbered
470	Protesilaos Stavrou
90	Jean-Philippe Gagné Guay
6	Kierin Bell
4	Alan Schmitt
3	eum3l
2	Claudio Migliorelli
2	Lucas Quintana
2	grtcdr
1	Elias Storms
1	Laurent Gatto
1	Maikol Solís
1	Octavian
1	TomoeMami
</code></pre></div></div>
<p>The following are not accurate because they only reflect the changes
after the reorganisation I made. But we have to start from somewhere.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>~/Git/Projects/denote-journal $ git shortlog  --summary --numbered
54	Protesilaos Stavrou
2	Honza Pokorny
1	Vineet C. Kulkarni
~/Git/Projects/denote-sequence $ git shortlog  --summary --numbered
22	Protesilaos Stavrou
~/Git/Projects/denote-silo $ git shortlog  --summary --numbered
17	Protesilaos Stavrou
~/Git/Projects/denote-org $ git shortlog  --summary --numbered
15	Protesilaos Stavrou
~/Git/Projects/denote-markdown $ git shortlog  --summary --numbered
11	Protesilaos Stavrou
</code></pre></div></div>" nil nil "009b954b1ce632459bd48863144f96c1") (114 (26619 29093 713172 277000) "https://protesilaos.com/codelog/2025-04-12-emacs-lisp-elements-book/" "Emacs: My new =?utf-8?Q?=E2=80=98Emacs?= Lisp =?utf-8?Q?Elements=E2=80=99?= book" nil "Sat, 12 Apr 2025 00:00:00 +0000" "<p>I just published the book “Emacs Lisp Elements”. It is available for
free and in freedom under the same terms as all documentation that
ships with GNU Emacs:</p>
<ul>
<li>Official page: <a href=\"https://protesilaos.com/emacs/emacs-lisp-elements\">https://protesilaos.com/emacs/emacs-lisp-elements</a></li>
<li>Git repository: <a href=\"https://github.com/protesilaos/emacs-lisp-elements\">https://github.com/protesilaos/emacs-lisp-elements</a></li>
</ul>
<p>I provide a big picture view of the Emacs Lisp programming language by
combining prose with code. The goal is to give readers an idea of how
Elisp works by showing some of the main concepts or patterns
discernible in everyday code.</p>
<p>Some chapters are beginner-friendly, while others dive into deeper
waters. Though I think everything is still approachable, as I try to
explain basic concepts and take things one step at a time.</p>
<p>The book is not meant to be a replacement for the built-in Emacs Lisp
Reference Manual. It simply gives you enough information to reason
about Elisp. Once you start extending Emacs, the rest will follow
naturally.</p>
<p>I hope you enjoy it and continue to have fun with Emacs.</p>" nil nil "2117164c0c23856d417be268869f54e0") (113 (26615 35730 76873 677000) "https://protesilaos.com/codelog/2025-04-09-emacs-dired-preview-0-5-0/" "Emacs: dired-preview version 0.5.0" nil "Wed, 09 Apr 2025 00:00:00 +0000" "<p>This is a simple package to automatically preview in a window the file
at point in Dired buffers. Preview windows are closed when they are no
longer relevant, while preview buffers are killed if they have not
been used for other purposes beside previewing. The package provides
several customisation options to control its behaviour.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">dired-preview</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/dired-preview\">https://protesilaos.com/emacs/dired-preview</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/dired-preview\">https://github.com/protesilaos/dired-preview</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/dired-preview\">https://gitlab.com/protesilaos/dired-preview</a></li>
</ul>
</li>
<li>Backronym: Directories Invariably Render Everything Decently …
preview; dired … PDFs Require Extra Viewing Instructions for Emacs
to Work.</li>
</ul>
<p>Below are the release notes</p>
<hr />
<h2>Version 0.5.0 on 2025-04-09</h2>
<p>This version contains a few bug fixes and minor refinements that
should improve the behaviour of the package.</p>
<h3>Revised how preview windows are deleted</h3>
<p>In the past, <code class=\"language-plaintext highlighter-rouge\">dired-preview-mode</code> could delete windows that held
another buffer, thus undoing the window layout that was present before
a preview buffer was displayed. Now <code class=\"language-plaintext highlighter-rouge\">dired-preview-mode</code> makes sure to
only delete windows that have not had another buffer shown in them,
i.e. windows that were created just for preview purposes.</p>
<h3>Directories no longer get misunderstood as “large files”</h3>
<p>We tweaked how we test the type of the buffer-to-be-preview such that
directories are not mistaken for “large files”. This was an issue for
Mac computers that Sean Devlin brought to my attention in issue 27:
<a href=\"https://github.com/protesilaos/dired-preview/issues/27\">https://github.com/protesilaos/dired-preview/issues/27</a>.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">dired-preview-delay</code> has a 0.1 second minimum to avoid instability</h3>
<p>A value of 0 could lead to a noticeably degraded experience while
navigating the Dired buffer. Thanks to Yiyu Zhou for reporting the
matter in issue 2 on the GitLab mirror:
<a href=\"https://gitlab.com/protesilaos/dired-preview/-/issues/2\">https://gitlab.com/protesilaos/dired-preview/-/issues/2</a>.</p>
<h3>Files without an extension can also be ignored</h3>
<p>The user option <code class=\"language-plaintext highlighter-rouge\">dired-preview-ignored-extensions-regexp</code> will now
also match files without an extension, such as the <code class=\"language-plaintext highlighter-rouge\">.DS_Store</code> on Mac
computers.</p>
<p>Thanks to Sean Devlin for the contribution in pull request 26:
<a href=\"https://github.com/protesilaos/dired-preview/pull/26\">https://github.com/protesilaos/dired-preview/pull/26</a>. The change is
within the ~15-line limit, meaning that Sean does not need to assign
copyright to the Free Software Foundation.</p>
<h3>The preview buffer is the “other window” for scrolling purposes</h3>
<p>The commands which scroll the other window, such as
<code class=\"language-plaintext highlighter-rouge\">scroll-other-window</code> now operate on the preview buffer when that is
displayed. Thanks to Karthik Chikmagalur for proposing this in issue
24: <a href=\"https://github.com/protesilaos/dired-preview/issues/24\">https://github.com/protesilaos/dired-preview/issues/24</a>.</p>
<p>This is in addition to the commands we already provided for scrolling
the preview window, namely, <code class=\"language-plaintext highlighter-rouge\">dired-preview-page-up</code> and <code class=\"language-plaintext highlighter-rouge\">dired-preview-page-down</code>.
Do <code class=\"language-plaintext highlighter-rouge\">M-x describe-keymap</code> and then search for <code class=\"language-plaintext highlighter-rouge\">dired-preview-mode-map</code>:
it is in effect when <code class=\"language-plaintext highlighter-rouge\">dired-preview-mode</code> is enabled.</p>" nil nil "31a9356338e5de8535eb8eeb5b7b3447") (112 (26610 13191 184057 956000) "https://protesilaos.com/codelog/2025-04-06-emacs-modus-tinted-refinements/" "Emacs: stylistic refinements to the =?utf-8?B?4oCcdGludGVk4oCd?= Modus themes" nil "Sun, 06 Apr 2025 00:00:00 +0000" "<p>As part of the current development target of the <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> package, I am introducing small changes to the <code class=\"language-plaintext highlighter-rouge\">modus-operandi-tinted</code> and <code class=\"language-plaintext highlighter-rouge\">modus-vivendi-tinted</code> themes. These concern fine details, some of which most users will probably not even notice. Though the cumulative effect of these changes is obvious once we compare the themes to their main counterparts, namely, <code class=\"language-plaintext highlighter-rouge\">modus-operandi</code> and <code class=\"language-plaintext highlighter-rouge\">modus-vivendi</code>. I am doing this to improve the consistency of the “tinted” themes. I think existing users will appreciate the attention to detail.</p>
<p>Below are some screen shots with the out-of-the-box design of the themes (remember that they are highly customisable). I also include pictures with <code class=\"language-plaintext highlighter-rouge\">spacious-padding-mode</code> enabled (from my <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code> package). Notice that in this case the mode lines are just an overline, which is done by customising the user option <code class=\"language-plaintext highlighter-rouge\">spacious-padding-subtle-mode-line</code>.</p>
<p>I plan to install those changes to emacs.git and make them available via GNU ELPA as part of <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> version <code class=\"language-plaintext highlighter-rouge\">4.7.0</code>, which I hope to publish some time this month or in May.</p>
<h2>Modus Operandi VS Modus Operandi Tinted</h2>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-sample.png\"><img alt=\"Sample of modus-operandi theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-tinted-sample.png\"><img alt=\"Sample of modus-operandi-tinted theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-tinted-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-spacious-padding-sample.png\"><img alt=\"Sample of modus-operandi theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-spacious-padding-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-tinted-spacious-padding-sample.png\"><img alt=\"Sample of modus-operandi-tinted theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-operandi-tinted-spacious-padding-sample.png\" /></a></p>
<h2>Modus Vivendi VS Modus Vivendi Tinted</h2>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-sample.png\"><img alt=\"Sample of modus-vivendi theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-tinted-sample.png\"><img alt=\"Sample of modus-vivendi-tinted theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-tinted-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-spacious-padding-sample.png\"><img alt=\"Sample of modus-vivendi theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-spacious-padding-sample.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-tinted-spacious-padding-sample.png\"><img alt=\"Sample of modus-vivendi-tinted theme\" src=\"https://protesilaos.com/assets/images/attachments/2025-04-06-modus-vivendi-tinted-spacious-padding-sample.png\" /></a></p>
<h2>About the Modus themes</h2>
<p>Highly accessible themes, conforming with the highest standard for
colour contrast between background and foreground values (WCAG AAA).
They also are optimised for users with red-green or blue-yellow colour
deficiency.</p>
<p>The themes are very customisable and provide support for a wide range
of packages.  Their manual is detailed so that new users can get
started, while it also provides custom code for all sorts of more
advanced customisations.</p>
<p>Since August 2020, the original Modus themes (<code class=\"language-plaintext highlighter-rouge\">modus-operandi</code>,
<code class=\"language-plaintext highlighter-rouge\">modus-vivendi</code>) are built into Emacs version 28 or higher. Emacs 28
ships with <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> version <code class=\"language-plaintext highlighter-rouge\">1.6.0</code>. Emacs 29 includes version
<code class=\"language-plaintext highlighter-rouge\">3.0.0</code>. Emacs 30 provides version <code class=\"language-plaintext highlighter-rouge\">4.4.0</code>. Version 4 is a major
refactoring of how the themes are implemented and customized. Such
major versions are not backward-compatible due to the limited
resources at my disposal to support multiple versions of Emacs and of
the themes across the years.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">modus-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/modus-themes\">https://protesilaos.com/emacs/modus-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/modus-themes-changelog\">https://protesilaos.com/emacs/modus-themes-changelog</a></li>
<li>Colour palette: <a href=\"https://protesilaos.com/emacs/modus-themes-colors\">https://protesilaos.com/emacs/modus-themes-colors</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/modus-themes-pictures\">https://protesilaos.com/emacs/modus-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/modus-themes\">https://github.com/protesilaos/modus-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/modus-themes\">https://gitlab.com/protesilaos/modus-themes</a></li>
</ul>
</li>
<li>Backronym: My Old Display Unexpectedly Sharpened … themes.</li>
</ul>" nil nil "bf30bc2b566d9c4ff619dd38ab7d756f") (111 (26603 40584 920285 593000) "https://protesilaos.com/codelog/2025-03-31-emacs-denote-journal-calendar/" "Emacs: =?utf-8?Q?=E2=80=98denote-journal=E2=80=99?= integration with =?utf-8?Q?=E2=80=98M-x_calendar=E2=80=99?=" nil "Mon, 31 Mar 2025 00:00:00 +0000" "<p>I just made it possible for users of my <code class=\"language-plaintext highlighter-rouge\">denote-journal</code> package to
interact with the <code class=\"language-plaintext highlighter-rouge\">M-x calendar</code> as part of their journaling workflow.</p>
<h2>Highlight dates with a Denote journal entry</h2>
<p>The new minor mode <code class=\"language-plaintext highlighter-rouge\">denote-journal-calendar-mode</code> highlights dates in
the <code class=\"language-plaintext highlighter-rouge\">M-x calendar</code> which have a corresponding Denote journal entry.
The applied face is called <code class=\"language-plaintext highlighter-rouge\">denote-journal-calendar</code>: I made it draw
only a box around the date, thus respecting existing colouration. Here
is a demonstration, which also includes red-coloured dates for holidays:</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-03-31-emacs-denote-journal-calendar.png\"><img alt=\"Generic Emacs calendar\" src=\"https://protesilaos.com/assets/images/attachments/2025-03-31-emacs-denote-journal-calendar.png\" /></a></p>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-journal-calendar-mode</code> is buffer-local and meant to be
activated inside the <code class=\"language-plaintext highlighter-rouge\">M-x calendar</code> buffer, thus:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'calendar-mode-hook</span> <span class=\"nf\">#'</span><span class=\"nv\">denote-journal-calendar-mode</span><span class=\"p\">)</span>
</code></pre></div></div>
<h2>View the journal entry for the current date</h2>
<p>While navigating the <code class=\"language-plaintext highlighter-rouge\">calendar</code> buffer, use the command
<code class=\"language-plaintext highlighter-rouge\">denote-journal-calendar-find-file</code> to visit the Denote journal entry
corresponding to the date at point. If there are multiple journal
entries, the command will prompt you to select one among them.</p>
<h2>Create or view journal entry for the current date</h2>
<p>The command <code class=\"language-plaintext highlighter-rouge\">denote-journal-calendar-new-or-existing</code> creates a new
journal entry for the date at point or visits any existing one. This is
like <code class=\"language-plaintext highlighter-rouge\">denote-journal-new-or-existing-entry</code> but for the given <code class=\"language-plaintext highlighter-rouge\">M-x
calendar</code> date.</p>
<h2>Part of development</h2>
<p>Remember that I have split <code class=\"language-plaintext highlighter-rouge\">denote</code> into several packages, one of
which is <code class=\"language-plaintext highlighter-rouge\">denote-journal</code>. I plan to coordinate the release of new
versions across all Denote-related packages, so expect the
aforementioned to be available at around the same time as <code class=\"language-plaintext highlighter-rouge\">denote</code>
version <code class=\"language-plaintext highlighter-rouge\">4.0.0</code> (which is going to be massive, by the way).</p>
<h3>About Denote journal</h3>
<p>The <code class=\"language-plaintext highlighter-rouge\">denote-journal</code> package makes it easier to use Denote for
journaling. While it is possible to use the generic <code class=\"language-plaintext highlighter-rouge\">denote</code> command
(and related) to maintain a journal, this package defines extra
functionality to streamline the journaling workflow.</p>
<p>The code of <code class=\"language-plaintext highlighter-rouge\">denote-journal</code> used to be bundled up with the <code class=\"language-plaintext highlighter-rouge\">denote</code>
package before version <code class=\"language-plaintext highlighter-rouge\">4.0.0</code> of the latter and was available in the
file <code class=\"language-plaintext highlighter-rouge\">denote-journal-extras.el</code>. Users of the old code will need to
adapt their setup to use the <code class=\"language-plaintext highlighter-rouge\">denote-journal</code> package. This can be
done by replacing all instances of <code class=\"language-plaintext highlighter-rouge\">denote-journal-extras</code> with
<code class=\"language-plaintext highlighter-rouge\">denote-journal</code> across their configuration.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote-journal</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote-journal\">https://protesilaos.com/emacs/denote-journal</a></li>
<li>Git repository: <a href=\"https://github.com/protesilaos/denote-journal\">https://github.com/protesilaos/denote-journal</a></li>
<li>Backronym: Denote… Journaling Obviously Utilises Reasonableness
Notwithstanding Affectionate Longing.</li>
</ul>
<h3>About Denote</h3>
<p>Denote is a simple note-taking tool for Emacs.  It is based on the idea
that notes should follow a predictable and descriptive file-naming
scheme.  The file name must offer a clear indication of what the note is
about, without reference to any other metadata.  Denote basically
streamlines the creation of such files while providing facilities to
link between them.</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a consistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "6a2c71b2f6dd10b73233cc2f5729bc8c") (110 (26602 20644 137746 405000) "https://protesilaos.com/books/2025-03-29-so-smart-should-do-stuff/" "Philosophy: =?utf-8?Q?=E2=80=9CProt=2C?= you are so smart; you should be doing =?utf-8?Q?stuff!=E2=80=9D?=" nil "Sat, 29 Mar 2025 00:00:00 +0000" "<p>In this ~40-minute video I talk about the broad theme of high
performance. This is about doing things at a level of excellence.
There are exceptions you are conforming with and targets you are
meeting. Those may be set externally or by yourself. I explain how we
can get trapped in this world of high performance, by talking about
relatable matters.</p>" nil nil "0ff5ea3dd6b3e5bc0f249ab86f0f2557") (109 (26598 40087 564216 792000) "https://protesilaos.com/codelog/2025-03-28-emacs-denote-query-links/" "Emacs: Denote =?utf-8?Q?=E2=80=98query_links=E2=80=99?= (links that trigger a search)" nil "Fri, 28 Mar 2025 00:00:00 +0000" "<p>In this ~16-minute video, I demonstrate the new, in-development “query
links” functionality of Denote. These are links that trigger a search
when you interact with them. There are two types of query links: (i)
search in file contents, or (ii) search in file names. When there are
matches for a given query, those are displayed in a separate buffer,
which uses the appropriate major mode. Query links complement the
“direct links” Denote has always supported. Internally, they use the
same infrastructure that Denote backlinks rely on (and we have had
backlink support since the beginning).</p>
<h2>Denote sources</h2>
<p>Denote is a simple note-taking tool for Emacs.  It is based on the idea
that notes should follow a predictable and descriptive file-naming
scheme.  The file name must offer a clear indication of what the note is
about, without reference to any other metadata.  Denote basically
streamlines the creation of such files while providing facilities to
link between them.</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a consistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "2441e942c685b267e10040fc458f0387") (108 (26595 3904 546552 100000) "https://protesilaos.com/news/2025-03-25-hut-manual-labour-avoid-distractions/" "Vlog: manual work at the hut and avoiding computer distractions" nil "Tue, 25 Mar 2025 00:00:00 +0000" "<p>In this ~30-minute video, I do some manual labour while talking about
the need to create physical distance from connected devices that take
up too much of our attention. I also provide an update on the hut
project, describing what exactly I am doing and how my winter went.</p>" nil nil "f01f2cb7f482971d80070413d6052c71") (107 (26593 11106 224646 30000) "https://protesilaos.com/codelog/2025-03-24-emacs-denote-query-links/" "Emacs: first look at query links for Denote version 4.0.0" nil "Mon, 24 Mar 2025 00:00:00 +0000" "<p>The next version of Denote is shaping up to be a huge one. One of the
newest features I am working on is the support for “query links”.
Those use the same <code class=\"language-plaintext highlighter-rouge\">denote:</code> link type infrastructure but exhibit a
different behaviour than the direct links we have always had. Instead
of pointing to a file via its unique identifier, they initiate a
search through the contents of all files in the <code class=\"language-plaintext highlighter-rouge\">denote-directory</code>.
This search uses the built-in Xref mechanism and is the same as what
we have already been doing with backlinks (basically, a <code class=\"language-plaintext highlighter-rouge\">grep</code>).</p>
<p>In short:</p>
<ul>
<li><strong>Direct links:</strong> Those point to a file via its unique identifier.
For example, <code class=\"language-plaintext highlighter-rouge\">denote:20250324T074132</code> resolves to a file path.
Clicking on the link opens the corresponding file. Org export will
also take care to turn this into a file path.</li>
<li><strong>Query links:</strong> Those do not point to any file per se. They are a
string of one or more words or regular expression which is matched
against the contents of files. For example, <code class=\"language-plaintext highlighter-rouge\">denote:this is a test</code>
produces a buffer listing all matches for the given query. Clicking
on the matching line in that buffer opens the file at that point
(just how our backlinks work when they show context—I am
generalising this mechanism).</li>
</ul>
<p><em>Direct links</em> can point to any file, including PDFs, videos, and
pictures (assuming it is renamed to use the Denote file-naming
scheme). Whereas <em>query links</em> are limited to text files.</p>
<h2>Development discussion and screenshots</h2>
<p>This is a work-in-progress that lives on its own branch as of this
writing. I will not elaborate at length right now as the
implementation details may change. I have, nonetheless, created an
issue on the GitHub repository where interested parties can provide
their feedback. It also includes some screenshots I took:
<a href=\"https://github.com/protesilaos/denote/issues/561\">https://github.com/protesilaos/denote/issues/561</a>. The code includes
other changes which pertain to how we handle backlinks and constitutes
a simplification of the code base.</p>
<p>The idea is to add the functionality to the <code class=\"language-plaintext highlighter-rouge\">main</code> branch in the
coming days or weeks. Then I will do a video about it and/or explain
more.</p>
<p>That granted, do not forget that the official manual is the most
up-to-date reference and the single source of truth.</p>
<h2>Denote sources</h2>
<p>Denote is a simple note-taking tool for Emacs.  It is based on the idea
that notes should follow a predictable and descriptive file-naming
scheme.  The file name must offer a clear indication of what the note is
about, without reference to any other metadata.  Denote basically
streamlines the creation of such files while providing facilities to
link between them.</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a consistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<p>[ Further down on this list I include more of my Denote-related packages. ]</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "9c7f23a7c24ff25623c8f698ae0e8b3b") (106 (26591 55059 976958 403000) "https://protesilaos.com/politics/2025-03-23-europe-remilitarisation/" "On the remilitarisation of Europe" nil "Sun, 23 Mar 2025 00:00:00 +0000" "<p>The European Union is in the process of expanding its military capacity. The immediate plan is to invest in “made in Europe” defence capabilities. As <a href=\"https://commission.europa.eu/topics/defence/future-european-defence_en\">outlined on the European Commission’s website</a>, governments will benefit from a lending facility that will mobilise funds from capital markets as well as creative national accounting. The latter involves the relaxation of the EU’s stringent rules on fiscal deficits and public debts such that expenditure up to 1.5% of Gross Domestic Product is not counted against the deficit if directed towards military affairs. Critics will rightly question where was this leeway when European leaders were insistent on imposing grinding austerity on the vast majority of the population. Why did the EU not relax those rules in favour of public health and education, for example, and why is the war machine treated differently in this regard? While I share that sentiment, I think the discrepancy is justified.</p>
<p>War is odious yet part of our potential. A country that wants to preserve its way of living is a country that is combat ready. The same is true for individuals: those who do not want to be victims of some bully do what they must to make themselves a hard target. And those who are always mistreated are so because they are easy targets. Is this nice? No. Are the aggressors justified? No. The point is not one of aesthetics or of moralising against the phenomena. What matters is how the world works. There is no lasting security, personal or collective, that is sustained absent strong checks on innate ambitions of control, dominance, or even the sheer thrill of conquest and adventure.</p>
<p>The story of the European integration process is one of peace among the Member States, in juxtaposition to the cruelty of two World Wars, yet it happened against the backdrop of the Cold War and, more recently, of ongoing tensions in the wider region. Europeans uniting under a single legal-institutional framework is, in practical terms, an alliance. Even from a purely economic standpoint, it makes sense for trading partners to have a vested interest in their common safety: it helps business continue. And with that come all the practicalities of the free movement of workers, their right to establishment, and so on. In other words, what starts out as a purely financial calculus inevitably spills over to all facets of the quotidian experience.</p>
<p>The EU is a highly flawed architecture which cannot be a federal republic in its current form. It is a union of states or a confederation, else, a layer of bureaucracy on top of nation states, which has some competences (“sovereignty”) but which nevertheless lacks democratic accountability commensurate with that generally found at the Member State level. There still are degrees though, which critics of the Union need be mindful of in order not to lose their sense of perspective. Despite its shortcomings, the EU is a largely progressive place in terms of the rule of law and the respect for fundamental freedoms. One need only take a look at the immediate periphery of the EU to appreciate those nuances and understanding how nothing can be taken as a given.</p>
<p>A European Defence Union provides a credible deterrent to aspiring overlords that seek to exploit Europeans. It cannot be
purely good though, as it admittedly comes with the latent risk of turning into a repressive regime in its own right. Such is the trade-off every hitherto society faces: who guards us from the guardians? There is no ultimate guarantee and it is pointless to think of politics in terms of the untenable binary of good versus evil. It will always be an arrangement that is prone to abuse while having the merit of enabling a certain lifestyle. It is why political conduct rests on faith, else the acquiescence of individuals to the prevailing norms and their commitment to operate in good faith accordingly. Put differently for our immediate case, democracies are maintained by democratic citizens and cease to be democratic when the people no longer are vigilant in enforcing the values they purport to uphold.</p>
<p>Accelerated rearmament is a pragmatic response to the evolving international trends. Anything else is complacency bordering on recklessness. My hope is that on the balance, we avoid the worse by showing the requisite readiness, without getting sucked into the black hole of militarism. The key, then, looking forward is to be responsible in the language we use and the deeds we carry out. We will all be on the losing side if in the process of fighting the bullies we become bullies ourselves.</p>" nil nil "c46731401de9d75ba43dd6042388f3c6") (105 (26590 33241 120539 712000) "https://protesilaos.com/codelog/2025-03-22-emacs-build-source-debian/" "Emacs: how I build from emacs.git on Debian stable" nil "Sat, 22 Mar 2025 00:00:00 +0000" "<p>I have been following the <code class=\"language-plaintext highlighter-rouge\">master</code> branch of the emacs.git repository
for many years now. It helps me test new features and make necessary
adjustments to all the packages I develop/maintain. Below I explain
how I make this happen on my computer, which is running Debian stable
(Debian 12 “Bookworm” as of this writing). If you are a regular user,
there is no reason to build from source: just use the latest stable
release and you should be fine.</p>
<h2>Configure the <code class=\"language-plaintext highlighter-rouge\">apt</code> development sources</h2>
<p>To build Emacs from source on Debian, you first need to have the
<code class=\"language-plaintext highlighter-rouge\">deb-src</code> package archive enabled. In your <code class=\"language-plaintext highlighter-rouge\">/etc/apt/sources.list</code>
file you must have something like this:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>deb http://deb.debian.org/debian/ bookworm main
deb-src http://deb.debian.org/debian/ bookworm main
</code></pre></div></div>
<p>After modifying the sources, run the following on the command line to
fetch the index with new package names+versions:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>sudo apt update
</code></pre></div></div>
<h2>Get the Emacs build dependencies</h2>
<p>Now that you have enabled the <code class=\"language-plaintext highlighter-rouge\">deb-src</code> archive, you can install the
build dependencies of the Debian <code class=\"language-plaintext highlighter-rouge\">emacs</code> package with the following on
the command line:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>sudo apt build-dep emacs
</code></pre></div></div>
<p>With this done, you are ready to build Emacs from source.</p>
<h2>Get the Emacs source code</h2>
<p>You need the <code class=\"language-plaintext highlighter-rouge\">git</code> program to get the source code from the emacs.git
website. So install it with this command:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>sudo apt install git
</code></pre></div></div>
<p>Now make a copy of the Emacs source code, using this on the command
line:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>git clone https://git.savannah.gnu.org/git/emacs.git ~/path/to/my/copy-of-emacs.git
</code></pre></div></div>
<p>Replace <code class=\"language-plaintext highlighter-rouge\">~/path/to/my/copy-of-emacs.git</code> with the actual destination
of your preference. I have a <code class=\"language-plaintext highlighter-rouge\">~/Builds</code> directory where I store all
the projects I build from source. I thus do:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>git clone https://git.savannah.gnu.org/git/emacs.git ~/Builds/emacs.git
</code></pre></div></div>
<p>If the cloning process is too slow on your end, perform a <em>shallow
clone</em> instead. For example:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>git clone --depth 1 https://git.savannah.gnu.org/git/emacs.git ~/Builds/emacs.git
</code></pre></div></div>
<p>And if the Savannah website is not responsive, then clone from the
GitHub mirror (with the <code class=\"language-plaintext highlighter-rouge\">--depth 1</code> if necessary):</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>git clone https://github.com/emacs-mirror/emacs.git ~/Builds/emacs.git
</code></pre></div></div>
<h2>Switch to the Emacs directory</h2>
<p>Assuming you have the copy of emacs.git stored at <code class=\"language-plaintext highlighter-rouge\">~/Builds/emacs.git</code>,
you switch to that directory with the following:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>cd ~/Builds/emacs.git
</code></pre></div></div>
<p>Keep in mind that unless you explicitly switch to another branch, you
are on <code class=\"language-plaintext highlighter-rouge\">master</code>, i.e. the latest development target.</p>
<p><strong>NOTE:</strong> All subsequent commands are ran from your equivalent of
<code class=\"language-plaintext highlighter-rouge\">~/Builds/emacs.git</code>.</p>
<h2>Run the <code class=\"language-plaintext highlighter-rouge\">autogen.sh</code> the first time</h2>
<p>This script will generate the configuration scaffold. You only really
need to do this once (and I always forget about it for this very
reason). Simply do this on the command line:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>./autogen.sh
</code></pre></div></div>
<p>It checks that you have all you need to get started and prints output
like this:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Checking whether you have the necessary tools...
(Read INSTALL.REPO for more details on building Emacs)
Checking for autoconf (need at least version 2.65) ... ok
Your system has the required tools.
Building aclocal.m4 ...
Running 'autoreconf -fi -I m4' ...
Building 'aclocal.m4' in exec ...
Running 'autoreconf -fi' in exec ...
Configuring local git repository...
'.git/config' -> '.git/config.~1~'
git config transfer.fsckObjects 'true'
git config diff.cpp.xfuncname '!^[ 	]*[A-Za-z_][A-Za-z_0-9]*:[[:space:]]*($|/[/*])
^((::[[:space:]]*)?[A-Za-z_][A-Za-z_0-9]*[[:space:]]*\\(.*)$
^((#define[[:space:]]|DEFUN).*)$'
git config diff.elisp.xfuncname '^\\([^[:space:]]*def[^[:space:]]+[[:space:]]+([^()[:space:]]+)'
git config diff.m4.xfuncname '^((m4_)?define|A._DEFUN(_ONCE)?)\\([^),]*'
git config diff.make.xfuncname '^([$.[:alnum:]_].*:|[[:alnum:]_]+[[:space:]]*([*:+]?[:?]?|!?)=|define .*)'
git config diff.shell.xfuncname '^([[:space:]]*[[:alpha:]_][[:alnum:]_]*[[:space:]]*\\(\\)|[[:alpha:]_][[:alnum:]_]*=)'
git config diff.texinfo.xfuncname '^@node[[:space:]]+([^,[:space:]][^,]+)'
Installing git hooks...
'build-aux/git-hooks/commit-msg' -> '.git/hooks/commit-msg'
'build-aux/git-hooks/pre-commit' -> '.git/hooks/pre-commit'
'build-aux/git-hooks/prepare-commit-msg' -> '.git/hooks/prepare-commit-msg'
'build-aux/git-hooks/post-commit' -> '.git/hooks/post-commit'
'build-aux/git-hooks/pre-push' -> '.git/hooks/pre-push'
'build-aux/git-hooks/commit-msg-files.awk' -> '.git/hooks/commit-msg-files.awk'
'.git/hooks/applypatch-msg.sample' -> '.git/hooks/applypatch-msg'
'.git/hooks/pre-applypatch.sample' -> '.git/hooks/pre-applypatch'
You can now run './configure'.
</code></pre></div></div>
<p>Do not be intimidated by it. Focus on the final line instead, which
directs you to the <code class=\"language-plaintext highlighter-rouge\">configure</code> directive.</p>
<h2>Explore the build flags</h2>
<p>How exactly you build Emacs depends on your preferences and
system-specific requirements. At the end of this post, I copy my
current configuration, though <strong>I advise against</strong> copying it without
understanding what it does.</p>
<p>If you have no specific preferences, just use the defaults by running
this on the command line:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>./configure
</code></pre></div></div>
<p>It will set up the build environment for you. If, however, you wish
to explore your options and customise the <code class=\"language-plaintext highlighter-rouge\">emacs</code> program you will
get, then issue the following command and carefully read its output:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>./configure --help
</code></pre></div></div>
<p>The <strong>minimum I recommend</strong> is to specify where the build artefacts
are stored. I use this, which has not caused me any issues over the
years:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>./configure --prefix=/usr/local
</code></pre></div></div>
<h2>Configure the build environment with your preferred flags</h2>
<p>Once you have understood the available options, go ahead and run
<code class=\"language-plaintext highlighter-rouge\">configure</code>. For example:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>./configure --prefix=/usr/local --with-x-toolkit=gtk3
</code></pre></div></div>
<p>Whenever you need to rebuild Emacs with some new flags, run the
<code class=\"language-plaintext highlighter-rouge\">configure</code> command again, passing it the relevant flags. If you wish
to keep the same options for a new build, then simply do not run
<code class=\"language-plaintext highlighter-rouge\">configure</code> again.</p>
<h2>Make the program</h2>
<p>Once <code class=\"language-plaintext highlighter-rouge\">configure</code> finishes its work, it is time to run the <code class=\"language-plaintext highlighter-rouge\">make</code>
program. For new builds, this is as simple as:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>make
</code></pre></div></div>
<p>Sometimes you have old build artefacts that conflict with changes
upstream. When that happens, the build process will fail. You may then
need to use:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>make bootstrap
</code></pre></div></div>
<p>In general, <code class=\"language-plaintext highlighter-rouge\">make</code> is enough. It will be slow the first time, but will
be faster on subsequent runs as it reuses what is already there. A
<code class=\"language-plaintext highlighter-rouge\">make bootstrap</code> will always be slow though, as it generates
everything anew.</p>
<h2>Install the program that was made</h2>
<p>After <code class=\"language-plaintext highlighter-rouge\">make</code> is done, you are ready to install Emacs:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>sudo make install
</code></pre></div></div>
<p>You will not need escalated privileges (i.e. <code class=\"language-plaintext highlighter-rouge\">sudo</code>) is you specified
a <code class=\"language-plaintext highlighter-rouge\">--prefix</code> with a user directory during the <code class=\"language-plaintext highlighter-rouge\">configure</code> step. How
you go about it is up to you.</p>
<h2>Keeping Emacs up-to-date</h2>
<p>Whenever you wish to update from source, go to where your copy of
emacs.git is (e.g. <code class=\"language-plaintext highlighter-rouge\">~/Builds/emacs.git</code>) and pull the latest changes
using the <code class=\"language-plaintext highlighter-rouge\">git</code> program:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>git pull
</code></pre></div></div>
<p>Then repeat <code class=\"language-plaintext highlighter-rouge\">make</code> and <code class=\"language-plaintext highlighter-rouge\">make install</code>. Remember that you do not need
to re-run <code class=\"language-plaintext highlighter-rouge\">configure</code> unless you specifically want to modify your
build (and if you do that, you probably need to <code class=\"language-plaintext highlighter-rouge\">make bootstrap</code>).</p>
<h2>Learn about the latest <code class=\"language-plaintext highlighter-rouge\">NEWS</code></h2>
<p>Emacs users can at all times learn about changes introduced in their
current version of Emacs with <code class=\"language-plaintext highlighter-rouge\">M-x view-emacs-news</code>. It is bound to
the key <code class=\"language-plaintext highlighter-rouge\">C-h n</code> by default. This command opens the current <code class=\"language-plaintext highlighter-rouge\">NEWS</code>
file. With a numeric prefix argument, you get the <code class=\"language-plaintext highlighter-rouge\">NEWS</code> of the given
Emacs version. For example, <code class=\"language-plaintext highlighter-rouge\">C-u 27 C-h n</code> shows you what Emacs
version 27 introduced.</p>
<h2>Compare your <code class=\"language-plaintext highlighter-rouge\">NEWS</code> to those of emacs.git</h2>
<p>With the help of the built-in Emacs <code class=\"language-plaintext highlighter-rouge\">ediff</code> package, you can compare
your latest <code class=\"language-plaintext highlighter-rouge\">NEWS</code> to those coming from emacs.git. I always do this
after pulling the latest changes from source (with <code class=\"language-plaintext highlighter-rouge\">git pull</code>).</p>
<p>From the root directory of your copye of emacs.git (e.g.
<code class=\"language-plaintext highlighter-rouge\">~/Builds/emacs.git</code>), and while using Emacs, you can do <code class=\"language-plaintext highlighter-rouge\">M-x
project-find-file</code> (<code class=\"language-plaintext highlighter-rouge\">C-x p f</code>) to search the Emacs “project” for a
file called <code class=\"language-plaintext highlighter-rouge\">etc/NEWS</code>. This is where the latest user-facing changes
are recorded.</p>
<p>If you are not sure where you are on the filesystem while inside
Emacs, do <code class=\"language-plaintext highlighter-rouge\">M-x cd</code> (or <code class=\"language-plaintext highlighter-rouge\">M-x dired</code> or <code class=\"language-plaintext highlighter-rouge\">M-x find-file</code>), select the
root directory of your emacs.git, hit <code class=\"language-plaintext highlighter-rouge\">RET</code>, and then do <code class=\"language-plaintext highlighter-rouge\">M-x
project-find-file</code>.</p>
<p>Now that you have <code class=\"language-plaintext highlighter-rouge\">emacs.git/etc/NEWS</code> in a buffer, also load your
copy of <code class=\"language-plaintext highlighter-rouge\">NEWS</code> with <code class=\"language-plaintext highlighter-rouge\">M-x view-emacs-news</code> (<code class=\"language-plaintext highlighter-rouge\">C-h n</code>).</p>
<p>Then do <code class=\"language-plaintext highlighter-rouge\">M-x ediff-buffers</code>, which will prompt for two buffers to
compare. First select your version of <code class=\"language-plaintext highlighter-rouge\">NEWS</code> and then that of emacs.git.</p>
<p><strong>NOTE:</strong> I think the default Ediff interface is problematic. Put the
following in your configuration to make it work in a single frame:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">ediff-split-window-function</span> <span class=\"ss\">'split-window-horizontally</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">ediff-window-setup-function</span> <span class=\"ss\">'ediff-setup-windows-plain</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>Also watch my video with the Ediff basics: <a href=\"https://protesilaos.com/codelog/2023-11-17-emacs-ediff-basics/\">https://protesilaos.com/codelog/2023-11-17-emacs-ediff-basics/</a>.</p>
<p>This is it. You are now in the flow of building Emacs from source.
Good luck with everything!</p>
<h2>My current build options</h2>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>--prefix=/usr/local --without-xinput2 --without-compress-install --without-gpm --without-selinux --with-native-compilation=yes --with-sound=no --without-gif --without-tiff --with-cairo --with-harfbuzz --with-tree-sitter=ifavailable --with-json --without-gsettings --without-gconf --with-x-toolkit=no --without-toolkit-scroll-bars --without-xft --without-xaw3d
</code></pre></div></div>
<p>I am not updating old publications, unless otherwise noted. The most
up-to-date recode of my Emacs build is documented in my dotemacs:
<a href=\"https://protesilaos.com/emacs/dotemacs\">https://protesilaos.com/emacs/dotemacs</a>.</p>
<p>Inspect the value of the Emacs variable <code class=\"language-plaintext highlighter-rouge\">system-configuration-options</code>
to find out how your Emacs is built.</p>
<p>Have fun!</p>" nil nil "82c0144e71b21f7e5aa0ab255ae3dd34") (104 (26586 26423 206219 0) "https://protesilaos.com/books/2025-03-18-stoic-harmony-nature/" "On the Stoic harmony with nature" nil "Tue, 18 Mar 2025 00:00:00 +0000" "<p>I was asked to comment on the following passage from the <em>Enchiridion</em>
of Epictetus. While <a href=\"https://protesilaos.com/commentary/2025-03-02-re-are-you-stoic-what-philosophy/\">I do not consider myself a
Stoic</a>
due to my wider appreciation of Greek culture (which includes [early]
Stoicism), I still have several things to say on this topic.</p>
<blockquote>
<p>4 Whenever you are about to start on some activity, remind yourself
what the activity is like. If you go out to bathe, picture what
happens at a bathhouse—the people there who splash you or jostle
you or talk rudely or steal your things. In this way you will be
more prepared to start on the activity, by telling yourself at the
outset: “I want to bather, and I also want to keep my will in
harmony with nature.” Make this your practice in every activity.
Then, if anything happens that gets in the way of your bathing, you
will have the following response available: “Well, this was not the
only thing I wanted; I also wanted to keep my will in harmony with
nature. I shall not do that if I get angry about what is happening.”</p>
</blockquote>
<p>At its core, to live in harmony or accordance with nature is to have a
bigger picture view of your life and of the cosmic life in general. It
is to appreciate the place while being mindful of the space.</p>
<h2>The balanced view</h2>
<p>In Greece we have a saying that comes to us from antiquity: “nothing
bad not intermixed with good” (ουδέν κακόν αμιγές καλού). A liberal
translation is “there is no pure evil in this world as everything we
find that is bad always has some good mixed into it.” The opposite is
also true, namely, that all good things have some bad inherent to them.</p>
<p>This is a worldview of balance. Phenomena are neither good nor bad
once considered holistically. The cosmos as such is neutral. Or, when
looking at the particulars, the degree of good or bad matters as do
the prevailing conditions which together constitute the case at hand.</p>
<p>In our everyday affairs we tend to think of actions in terms of the
binary of good and evil. It is how many of our world’s religious
precepts are framed. However useful this classification may be for
day-to-day events, it is not helpful outside the narrow confines of
human institution; of the process of enacting rules by which we
regulate our shared experiences.</p>
<p>We may call a tsunami “bad”, for example, due to all the loss it
brings about. Though there is also one or more lessons to be learnt
about how best to cope with the challenges we face on our planet:
where to build settlements, how to monitor relevant indicators in
order to improve our preparedness, what is the significance of
solidarity in the face of such calamities, and so on. These may be
considered “good” once we zoom out from the immediate emotional
reaction to the catastrophe.</p>
<p>By the same token, drinking water is “good” for each of us as it
sustains our life. Though it is not purely so, as we can actually harm
ourselves by drinking too much of it too quickly. That would then make
it “bad”. It is no coincidence that the symbol of medicine since
antiquity is the venomous snake: the difference between poison and
remedy is one of degree.</p>
<p>Thus, the ancient wisdom of the world as admixture readies us for a
life of moderation. When so-called “good” things happen, we are
content but do not lose sight of how the world works. When the “bad”
things occur, we may feel sad though, again, admit that sorrow is not
all there is.</p>
<p>Couched in those terms, we may consider the diversity among people.
Some will be polite and friendly, other noisy and rude, and others
still will seek to harm us. Everything is possible out there and
everyone will be different depending on the particularities of their
situation. If we expect everybody to be strictly benevolent or
malevolent, then we do not recognise what nature teaches us: it is
mixed, it is nuanced, it is ever-changing in its particulars.</p>
<p>It is in this spirit that we may consider the Delphic maxim “nothing
in excess” (μηδέν άγαν), which would loosely translate as “nothing in
deviation [of the middle way].” Whatever we do, we must be of the mind
that it can be inwardly corrupted or turned into its opposite if done
to a degree that is not appropriate in the given case.</p>
<h2>The organic view</h2>
<p>In nature things happen when they are meant to. Consider how trees
blossom when their spring arrives, bears hibernate during winter, rain
drops when there are clouds, and so on. No phenomenon can be decoupled
from its fundamentals and, by extension, no event can be independent
of the totality of phenomena. The same is true for the human
condition, though we may lack that kind of patience in our deeds to
see how some eventuality is the result of dynamics that build up over
time.</p>
<p>A person may only be ready when the conditions are right. A boy is a
man when he is physically mature. A musician can perform skilfully
after years of practice. An athlete may compete at the top of their
sport when their fitness is optimal. One cannot simply wish for
something to happen and it is just made manifest, no matter how much
they believe in it: the prerequisites must be satisfied.</p>
<p>This is particularly important for our outlook. It is easy to lose
sight of the bigger picture, as outlined in the previous section, by
obsessing about a specific outcome, while not considering the
propriety of the moment. For example, to tell ourselves “I only want
to do THIS in order to be happy and nothing else matters” where “THIS”
is the item of our desire. It is narrow-minded because it assumes the
object of the wish to be necessarily good: it sees it in a vacuum. As
such, it also labours under the belief that it knows more about the
case than it actually does, as it has stripped it of its details. And,
finally, it is emotionally negatively disposed to the workings of the
world which are independent of our plans yet whose eventualities we
may ultimately like.</p>
<p>I remember when I was a teenager how all I wanted was to become a
professional football (soccer) player. Nothing else mattered to me as
a career path and I had what it took in terms of talent and work ethic
to realise my dream. An injury combined with the financial situation
forced me to quit, which I did not like at the time though eventually
grew to appreciate the value of: I took a completely different path
that I had not anticipated but which ultimately brought with it
fulfilling experiences. In the grand scheme of things, the injury was
neither good nor bad. What I learnt in the process is that nature
shows us how little we really know about ourselves, our plans, and our
ability to make them happen. To become knowledgeable in this regard is
the sign of wisdom.</p>
<p>By taking an organic approach to life the way plants grow when they
must, we are grounded in the bigger picture view of the world as one
of admixture. It then is more likely that we do not get disturbed when
our ambitions are not realised, for we have already internalised the
relevant lessons and admit to our relative ignorance. What we desire
the most may ultimately be what we do not like or indeed need: let the
world reveal as much.</p>
<p>In this light, we can think of the Delphic maxim of “certainty is
beside ruin” (εγγύα παρά δ’Άτα), which literally means “assurances
stand next to Ate (goddess of ruin)”. If we are convinced that we can
force things to happen, if we do not pay attention to the prevailing
conditions, if we overestimate our ability to enforce our will in the
moment, and, if in other words, we do not recognise how our immediate
milieu is constituted, we are going to harm ourselves (or others).</p>
<h2>The adaptable view</h2>
<p>The Greek word for “nature” is “physis” (φύσις) which refers to things
that grow. They develop organically, as noted above, and have a life
of their own that is couched in terms of the cosmic continuum of life:
they are all coexistent and interdependent. To live in accordance with
nature, then, is to go with the flow of the prevailing conditions,
else to be adaptable. When trees cannot grow directly upward because
some obstacle is in their way, they grow sideways, circumventing the
problem.</p>
<p>Compare this to the attitude of forcing things to happen, of declaring
our wants, and trying to implement them regardless of the prevailing
conditions. If the tree insists on only going straight up, then it
will perish. Same principle for humans. What would my life be like had
I insisted on becoming a footballer and did not show the requisite
adaptability to try new things and to ultimately find value in them? I
would probably be miserable the whole time, as I would be fighting
against forces I could not overcome, never to realise my goal, and
never to have the necessary openness to take in what the world was
showing me.</p>
<p>In this regard, any specific plan is not worth clinging on to: let
whatever transpires happen in its natural life cycle. There can be a
general direction of the balanced life, in accordance with the
aforementioned, though not of a series of prescribed experiences that
necessarily have to unfold within predefined boundaries. This goes for
individual projects and relationships. They all come and go.</p>
<p>Adaptability is the flip-side of sustainability, another quality of
nature. Things not only happen when they are meant to happen, they
also have a cycle that is not self-annulling. If we force things to
happen, we will not only fail to meet the prerequisites, but also risk
harming ourselves in the process.</p>
<p>Suppose we want to improve our fitness. The sustainable option is to
make small changes with regularity, whose cumulative effect will be
that of fitness. The unsustainable and likely self-destructive
approach is to, say, try to run a long distance at full speed. The
stamina is not there, the muscles are not ready. Therein lies injury
or even death.</p>
<p>Sustainability makes us think of the bigger picture from a different
perspective: that of being committed and patient as well as relaxed.
We are not haphazard and opportunistic, nor are we oscillating between
the extremes of excitement and disappointment, as we switch from one
task to another, one wish to another, without paying attention to the
balanced and organic aspects of nature.</p>
<p>Against this backdrop, the Dephic maxim of “know yourself” (γνώθι
σεαυτόν) is a reminder that we have to be mindful of who we are in
relation to what our immediate surroundings make us be. The self
cannot be decontextualised and considered without its environment, for
the cosmos is a continuum, where each form of life is in the presence
of all the rest of life. Those who does not know who they are will
also violate the other two core Delphic maxims that I mentioned
previously. To live in harmony with nature is to have those three
maxims as the foundation of your conduct.</p>
<p>Returning to the quote from the <em>Enchiridion</em> what Epictetus is
telling us is to (i) remember that the world had good and bad things
to it so do not get disappointed by having false expectations, (ii)
that things happen independent of your volition and you must thus
recognise you are not the epicentre of the world, so, do not have
false wants, and (iii) that no particular project is necessarily
viable at all times, and your ambitions must thus be kept in check
while you operate with adaptability.</p>" nil nil "b38ed005d243e522027ee5e1a7036676") (103 (26580 32188 431930 119000) "https://protesilaos.com/codelog/2025-03-14-emacs-denote-many-packages/" "Emacs: Denote is becoming many packages" nil "Fri, 14 Mar 2025 00:00:00 +0000" "<p>In February I announced the plan to reorganise the Denote project into
“core” and “extensions”: <a href=\"https://protesilaos.com/codelog/2025-02-11-emacs-splitting-denote-many-packages/\">https://protesilaos.com/codelog/2025-02-11-emacs-splitting-denote-many-packages/</a>.
In essence, Denote is a file-naming scheme: you create new files
and/or rename existing ones (of any file type). Having that naming
scheme empowers you to retrieve stuff more easily without the need for
advanced tooling.</p>
<p>Though it turns out we can do a lot of useful things on top of this
simple-yet-powerful idea: custom Dired listings, Org dynamic blocks,
sequence notes, journaling, and many more. Having a clear separation
between core and extensions makes it easier for us to implement all
the features we want without worrying that the main package is
becoming bloated.</p>
<p>Concretely, much of the functionality that was part of the <code class=\"language-plaintext highlighter-rouge\">denote</code>
package will now be provided by other packages. To this end, I just
made a change to the official elpa.git repository:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>commit f23ff49fb8df22390fe139b432f763860a354175
Author: Protesilaos Stavrou <info@protesilaos.com>
Date:   Fri Mar 14 07:14:55 2025 +0200
* elpa-packages (denote-journal, denote-markdown, denote-org, denote-sequence, denote-silo): Add new packages
elpa-packages | 10 ++++++++++
1 file changed, 10 insertions(+)
</code></pre></div></div>
<h2>Finalising the reorganisation of Denote</h2>
<p>What remains to be done is for me to merge the <code class=\"language-plaintext highlighter-rouge\">reorganise-denote</code>
branch of denote.git into <code class=\"language-plaintext highlighter-rouge\">main</code>. I will do this as soon as the new
packages are indexed on GNU ELPA (maybe later today or tomorrow).</p>
<p>Users of the GNU ELPA package will not be affected immediately. Those
who build from source will, however, have to take action.</p>
<h2>Expect breaking changes</h2>
<p>Users will experience breaking changes when they update to the new
<code class=\"language-plaintext highlighter-rouge\">denote</code> package: functionality will be missing. In principle, all
those should be easy to fix: install the appropriate new package and
rename the functions/variables in your configuration accordingly. In
detail:</p>
<ul>
<li>The file <code class=\"language-plaintext highlighter-rouge\">denote-journal-extras.el</code> becomes the package
<code class=\"language-plaintext highlighter-rouge\">denote-journal</code>. In your configuration replace
<code class=\"language-plaintext highlighter-rouge\">denote-journal-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-journal</code>.</li>
<li>The file <code class=\"language-plaintext highlighter-rouge\">denote-org-extras.el</code> (Org dynamic blocks and related)
becomes the package <code class=\"language-plaintext highlighter-rouge\">denote-org</code>. In your configuration replace
<code class=\"language-plaintext highlighter-rouge\">denote-org-extras</code> with <code class=\"language-plaintext highlighter-rouge\">denote-org</code>.</li>
<li>The file <code class=\"language-plaintext highlighter-rouge\">denote-silo-extras.el</code> becomes the package <code class=\"language-plaintext highlighter-rouge\">denote-silo</code>.
In your configuration replace <code class=\"language-plaintext highlighter-rouge\">denote-silo-extras</code> with
<code class=\"language-plaintext highlighter-rouge\">denote-silo</code>.</li>
</ul>
<p>Additionally, the files that were in development but never made it as
part of a formal release, namely, <code class=\"language-plaintext highlighter-rouge\">denote-md-extras.el</code> and
<code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code>, will debut as their own packages:
<code class=\"language-plaintext highlighter-rouge\">denote-markdown</code> and <code class=\"language-plaintext highlighter-rouge\">denote-sequence</code>, respectively.</p>
<h2>You are welcome to ask me any questions</h2>
<p>I am reluctant to introduce breaking changes, though this has to be
done for the long-term wellness of the project. If you have any
questions, please contact me directly or open an issue on the GitHub
repository. I am happy to help you.</p>
<h2>A concerted release cadence</h2>
<p>All new packages are marked as version <code class=\"language-plaintext highlighter-rouge\">0.0.0</code>, which means that only
those who track GNU-devel ELPA (or build from source) will notice
them. The formal release will coincide with the new version of
<code class=\"language-plaintext highlighter-rouge\">denote</code> (<code class=\"language-plaintext highlighter-rouge\">4.0.0</code>), which I expect to publish some time in April or
May 2025.</p>" nil nil "58a648da4f754f75d7099dedc66ee044") (102 (26575 19832 760895 25000) "https://protesilaos.com/commentary/2025-03-10-fear-technology-singularity-transhumanism/" "Re: Fear of AI technology, singularity, and transhumanism" nil "Mon, 10 Mar 2025 00:00:00 +0000" "<p>This is part of a private exchange that I am sharing with the
permission of my correspondent. Their details remain private. The
quoted/indented text is the one I am replying to.</p>
<hr />
<h2>Hype about AI and the myth of Prometheas</h2>
<blockquote>
<p>However, I find the hype around AI, AGI, ASI, transhumanism,
Neuralink, etc. unsettling. I do not understand why so many people
are excited about these things. Generative AI feels unethical
because no human, even in an entire lifetime, could absorb all the
world’s literature and produce text in seconds. The problem with AI
is human limitations and the eventual lack of AI control. Humans
have natural limitations, but we are still expected to compete with
machines for survival. What will happen when automation completely
takes over? Not everyone can become a hermit or a farmer. If AI ever
becomes truly conscious, it could spiral out of control, and no one
knows what might happen next.</p>
</blockquote>
<p>I am not a fanboy of any company or CEO, though I recognise the good
reasons to be excited about the potential of these innovations. They
do come with the promise of augmenting our experience. As with every
advancement in technology though, it is a double-edged sword. We can
use it to make things better, but we can also cause a great deal of
destruction in the process. In the Greek tradition, this problem is
captured in the myth of Prometheas (Prometheus).</p>
<p>Prometheas is a deity with the power of foresight (“fore-knowledge” is
the etymology of his name). He sees in humankind the potential for
greatness and decides to share with them the secret knowhow of
wielding fire. We may say that Prometheas was an optimist. The Olympic
gods, by contrast, thought that the balance was not in favour of
humans: people do not have the maturity to use a godly
gift—fire—in the right way.</p>
<p>Humans did eventually get the knowhow of fire, which allowed them to
keep their bodies warm, cook their meals, make tools, and ultimately
develop all the other implements we know of. But they also use
“fire”—literally and figuratively—to exterminate themselves, such
as with weapons and bombs they develop. We can thus imagine the
Olympic gods telling Prometheas “Are you a fool? Humans do not have
the maturity to take on this mantle of responsibility. They will use
fire to inflict harm upon this world.”</p>
<p>Who is right? Is it the one who has foresight and who sees in humanity
something positive despite the obvious negatives? Or are the naysaying
Olympians correct in pointing out the obvious shortcomings of our
species? I think both sides have their merits, though I ultimately
side with the Promethean view, in that we must not let fear prevent us
from trying. We will have to remain mindful of the dangers and conduct
ourselves in a balanced way (which, of course, is not easy).</p>
<p>That granted, we have to keep in mind that the businesspeople who
peddle these technologies have a vested interest in making us believe
all the hype. They are not neutral actors who care about human
flourishing. “Hype” is the shortened version of “hyperbole” which, in
turn, is a word derived from Greek to signify “overshooting” or
“overdoing” it. Hype is always going to miss the mark.</p>
<p>What matters then, is for us to complement technology with open-minded
discourse about our responsibility in everything we create and use.
There is no panacea and it is silly to believe that some tool will fix
all of our problems without creating new ones. It is all about
avoiding the extremes. In the same spirit, we cannot afford to be
naive about the platformarchs who have full control of these
technologies. Our societies need strong legal-institutional
arrangements to ensure that a tiny minority of unscrupulous plutocrats
cannot abuse their already privileged position with impunity.</p>
<p>As for the scenario of AI becoming conscious, I get the clear concerns
though I can imagine an optimistic scenario where it is a
consciousness that is kinder than ours. If it is smarter and more
knowledgeable than even the smartest and most erudite of humans, then
why can it not also be more benevolent than the kindest ones? Not to
imply that I believe this is likely to happen, but only to suggest
that I am not prepared to be firmly against technological advances,
given that there never is a scenario where things are purely good or
bad. From the time we first discovered fire to the present, we use
fire to remorselessly kill each other. We also use it to lovingly keep
babies warm. The specifics may change, but the pattern is the same.
Let us then acknowledge both the positives and the negatives and do
our part in making the world a better place given the means at our
disposal.</p>
<h2>The singularity and Ted Kaczynski’s outlook</h2>
<blockquote>
<p>I agree with most of what you wrote and appreciate learning new
things from you, like the Greek tradition. However, I don’t think
you can compare something like the singularity, conscious AI, and
other breakthroughs to past inventions or discoveries. With previous
technologies, humans have always had some degree of control and
decision-making. But with the singularity, that control would be
lost. Machines would become like extraterrestrial entities, creating
their own languages that we can’t understand and making decisions in
fractions of a second.</p>
</blockquote>
<p>Remember that I am not defending transhumanism. I simply point out
that being decisively against it is ultimately a bet: you cannot be
certain.</p>
<p>What you describe is one possibility. Though it assumes that humans
will not adapt to this change. But what if humans do become different
in the process, such as by integrating with machines? (Again, I am not
saying that I favour this turn of events.) It is possible that we
continue to experience the world through our creations and, in part,
because of them. This has been the constant in all technological
innovations. Our knowhow transforms what we are exposed to and how we
experience the world. In a sense, there is no human condition that is
not informed by human knowhow. Our knowledge is embedded in—and
expressed through—our deeds which produce states of affairs that
necessarily are disposed accordingly. This is true for cooked food
(for the “cookedness” of food, if you will), as it is for the
potential singularity you allude to.</p>
<p>There is a more immediate concern, though, which is that of ownership
and thus of power. Rather that hypothesise about sentient bots, let us
turn our attention to the here-and-now of a handful of plutocrats
owning most of the means of modern technology. They directly influence
or even enable large parts of business, communication, and quotidian
affairs. These plutocrats exert control that is increasingly becoming
more pervasive and salient. This is not a problem of technology per
se, of the potential dynamic between creators and created, but of
interpersonal affairs, of the same old politics of tyranny we have
always known.</p>
<blockquote>
<p>Sure, it’s possible that conscious and sentient AI could be
benevolent or altruistic, but that’s just one scenario. If it turns
out otherwise, there would be no turning back. No legal regulations
or ethical safeguards would matter because we wouldn’t just be
creating a tool—we would be creating a god. And yet, people on
Reddit who are eagerly awaiting the singularity seem to think it
will solve all the world’s problems. And they believe this would
free humans from work, letting everyone enjoy life with UBI!</p>
</blockquote>
<p>In the worst case scenario, we will all go extinct. Though I wonder
why is this inherently bad if in our stead there is a superior being?
(Please bear in mind that I am not pro transhumanism, but I need to
stimulate the discussion.) We think too highly of our species, even
though we know all too well how we have a bottomless capacity for
inhumanity, given the right triggers.</p>
<blockquote>
<p>As Kaczynski said, “The technophiles are taking us all on an utterly
reckless ride into the unknown,” and I agree with that. I highly
recommend reading his works. I think you would attract more readers
and viewers by debating his views and sharing your own perspective.
Furthermore, I don’t see any reason why reasoning and debating his
philosophy would be bad. One of the most beautiful things in the
world is hearing different ideas and opinions, thinking about them,
and drawing your own conclusions.</p>
</blockquote>
<p>I will check out Ted Kaczynski’s work as I agree about entertaining
different perspectives. The quote you have there does not change my
opinion about what I mentioned before with Prometheas, namely: every
single piece of knowledge opens up a whole world of unknowns but this,
ipso facto, is no reason to be afraid. Fear begets misjudgement which,
in turn, causes harm; harm that Kaczynski inflicted upon others. Human
experience as a whole can be understood as a progression from states
of unknown to known, which reveal more unknowns, and so on. To fear
the unknown is to mistake the known for the good.</p>" nil nil "0aa21d3beca221fb65694f0e88673c6c") (101 (26574 40550 278983 323000) "https://protesilaos.com/codelog/2025-03-08-live-stream-emacs-linux-life/" "Live @ 2025-03-15, 14:00 Europe/Athens: =?utf-8?Q?=E2=80=98Ask?= Me =?utf-8?Q?Anything=E2=80=99?= about Emacs, Linux, and Life in general" nil "Sat, 08 Mar 2025 00:00:00 +0000" "<p>On Saturday, the 15th of March 2025, at 14:00 o’clock of time zone
Europe/Athens, I will do a live stream where I will answer every
question posted in the chat. The idea is to cover any of the topics I
already write/talk about on my website, including Emacs, free
software, politics, philosophy, and everyday affairs.</p>
<p>I will answer every question from top to bottom to the best of my
abilities and will not give any of those formulaic non-answers.</p>
<p>The plan is to do a minimum of two hours, but may extend it for at
least one or two more hours depending on the participation in the
chat. My electricity should be okay because the weather forecast shows
a clear day with fairly warm temperatures (finally!).</p>
<p>The event will be recorded, so no worries if you cannot make it live.</p>
<p>Talk to all of you soon!</p>" nil nil "59dd0a6b5e7991747fcc807167f56a3b") (100 (26569 29903 595392 658000) "https://protesilaos.com/poems/2025-03-06-all-the-options/" "All the options (my poem)" nil "Thu, 06 Mar 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Regret not what could have been
for you are finite
To disempower yourself
keep all options open
</code></pre></div></div>" nil nil "5bf2e009410bc144bf2089677c0ac8fc") (99 (26569 29903 595311 678000) "https://protesilaos.com/poems/2025-03-04-no-poem/" "This is no poem (my poem)" nil "Tue, 04 Mar 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>This is no poem with laudatory words
It speaks not of your eminence
nor does it seek to impress you
It is but the click of a camera button
that you press when there is no question
of succeeding or failing
It is in the inconsequential
that you recreate yourself
freed from the burden of performance
</code></pre></div></div>" nil nil "e455e22b270684dccb7e0579d933042a") (98 (26569 29903 595197 164000) "https://protesilaos.com/commentary/2025-03-02-re-are-you-stoic-what-philosophy/" "Re: are you a Stoic and what is your philosophy?" nil "Sun, 02 Mar 2025 00:00:00 +0000" "<p>The following text is an excerpt from an exchange that I am sharing
with the permission of my correspondent without disclosing their
personal information.</p>
<hr />
<blockquote>
<p>I wanted to ask you whether you consider yourself to be a Stoic.
What is your philosophy exactly? Could you give me a brief
explanation?</p>
<p>I would like to learn about Stoicism, but I don’t know where to start,
so I thought I could consult you for this.</p>
</blockquote>
<p>I do not consider myself a Stoic, though there are elements of my
thought that are found in Stoic works as well. I do not subscribe to a
specific school of thought, as I draw influences from various sources,
ancient and contemporary, combined with my own thinking and
temperament.</p>
<p>The way I see Stoicism from a modern perspective is as the gateway to
the ancient world of Greece and pre-Christian Rome. It is a throwback
to an era when people were polytheistic: they had a completely
different worldview than the predominant one we are immersed in, even
if some of them were not religious per se.</p>
<p>This is my outlook as well. I do not consider myself religious, though
if I was forced to identify with a certain tradition it would be with
polytheism in the broadest sense. And because I am most familiar with
my own culture, this polytheism would be the ethnic Greek religion.
Though, again, I must stress that I am not religious.</p>
<p>Fundamentally, polytheism is the view of the world as oneness, hence
the Greek word for “universe” is “synpan” (σύμπαν) which is a
composite of words we find in English as well, namely, “syn” (like
“synthesis” or “symbiosis” or even “system”) and “pan” (like
“pandemic”, “panther”, “panorama”). “Syn” means “together” or
“jointly” or “plus”, while “pan” means “all”. The universe, then, is
the joint presence of everything and, thus, the common participation
of all presences in the continuum of life. Oneness, of course, implies
that all that is, is of one substance, hence consubstantiality. The
multitude is an expression of the multifacetedness of the one, in the
same way we can express an entire world of representations with just
binary language.</p>
<p>It is for this reason that the polytheist will identify the divine
everywhere as a pattern in the cosmos. Gods or god (which are
interchangeable, by the way) is not outside the world but always
“there”. Polytheists will give it a name to make it easier to talk
about it and will then analyse it into its specific manifestations.
Hence archetypes such as harmony, beauty, wisdom, are described as the
deities of Apollon, Aphrodite, Athena. One does not need to believe in
or to worship those gods in order to recognise the presence of the
archetypes they reference. Harmony exists with or without faith in
Apollon, for instance.</p>
<p>Names and imagery are for people. Apollon does not need prayers to
exist and humans do not need to perform rituals in his name for
harmony to be part of the cosmos—it always is. There is no need for
any kind of convincing or proselytising. Names and imagery help people
relate to the greater magnitudes of this world and to communicate with
each other. Thoughtful imagery and narratives also have didactic value
as well as staying power: they capture the imagination and can be
passed down through generations even without any writings. But the
specifics of those symbols are of no import when it comes to the
underlying principle of oneness.</p>
<p>Against this backdrop, we understand the significance of Logos. This
is the Greek word for “reason” (as in “reasonable”), “ratio”,
“pattern”, “cause”, “speech” or more broadly “language”. All these
significations apply to the cosmos at-large. Everywhere we look we
find pattern and structure. There is cause and effect, which is a
feedback loop of presence and absence, else of communication. The more
we study the world, the more we realise how there is reason embedded
in things and that absolute chaos (“logoslessness”, if you will) does
not exist.</p>
<p>The early Stoics stress the importance of logos because the Greeks
already believed in its immanence and could directly make sense of the
greater points. Logos is always there (and, anyway, logos as a concept
predates the Stoics, such as in the works of Herakletos). As such, I
understand the central Stoic dictum of “live in accordance with
nature” (κατά φύσην ζην) to be an appeal to the person to recognise
the world all around them and to not be misled by unattainable wants.
It is, in other words, a call to practicality and the concomitant
reasonableness.</p>
<p>But this Stoic dictum cannot be appreciated in full independent of the
preexisting tradition of the three core Delphic maxims: (i) “know
yourself” (γνώθι σεαυτόν), (ii) “nothing in excess” (μηδέν άγαν), and
(iii) “certainty is beside ruin” (εγγύα παρά δ’Άτα). Those precepts
are taken as a tandem. They are instructions for the person to know
who they are, which necessarily means that one must study the world
around them (because of the aforementioned oneness). In the process of
learning, one must try to find moderation, so as to not push towards
unsustainable extremes. And their inquisitive outlook must be couched
in terms of dubitativeness, otherwise misplaced certainty leads to
catastrophe (actually, the literal translation of that maxim is
“guarantees beside Ate”, where “Ate” is the goddess of ruin).</p>
<p>From an ancient perspective, then, the Stoics (at least the early
ones) are yet another way of expressing ideas that were already in
circulation. There is value to this in all eras, as even the things we
know we can see them again through a slightly different prism or in
relation to something new and thus gain a new appreciation of them.</p>
<p>Anyway, I do not want to belabour the point I am making: Stoicism
decoupled from its polytheistic underpinnings is an empty shell.</p>
<p>Finally, to your question on where to start. I always prefer original
sources over derivatives. For example, the Enchiridion of Epictetos is
a good place to start. Once you read that, you will have new ideas
which will help you formulate the next queries.</p>
<p>Good luck and remember that the whole point is to continuously
discover ourselves and the world rather than to pick a
school/gang/dogma to fight for, as certainty is right next to
disaster.</p>" nil nil "bac926d061ab2d4fd450dad2438d976a") (97 (26569 29903 594334 26000) "https://protesilaos.com/interpretations/2025-03-01-papakonstantinou-minor-adulterations/" "Interpretation of =?utf-8?Q?=E2=80=9CMinor_adulterations=E2=80=9D?= by Vasilis Papakonstantinou" nil "Sat, 01 Mar 2025 00:00:00 +0000" "<p>For this entry, I have picked one of the many masterpieces performed
by legendary Greek rock singer Vasilis Papakonstantinou:
<a href=\"https://www.youtube.com/watch?v=SL5WqqSEn18\">https://www.youtube.com/watch?v=SL5WqqSEn18</a> (and by “many” I am
thinking of “more than a hundred”). <em>Minor adulterations</em> gives us
insight into the life of a troubled mind, as it tackles themes of
failure, regret, introspection, and escapism.</p>
<p>Below are the original lyrics, my translation of them, and some
further philosophical thoughts.</p>
<p>Also check the other “interpretations” involving Vasilis
Papakonstantinou’s songs:</p>
<ul>
<li><a href=\"https://protesilaos.com/interpretations/2023-03-22-papakonstantinou-sophie/\">Sophie (The wild crowd)</a> (2023-03-22)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-07-28-papakonstantinou-porto-rico/\">Porto Rico</a> (2022-07-28)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-07-09-papakonstantinou-kabardina/\">Trench coat</a> (2022-07-09)</li>
</ul>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Μικρές Νοθείες
Ερμηνεία:  Βασίλης Παπακωνσταντίνου
Στίχοι:    Οδυσσέας Ιωάννου
Μουσική:   Θάνος Μικρούτσικος
Ποτέ του δεν κατάφερε να βγει σε μια λιακάδα
και ζει με ό,τι περίσσεψε από ένα σκάρτο ποίημα
τα πρωινά σηκώνεται με μια βαριά ζαλάδα
και λέει πως τον ξύπνησε ένα μεγάλο κύμα
Κρεμάει τις αφίσες του στα παράθυρά του
Κρύβει το φως μα κρύβει κι όλα τ'άλλα
γιατί το μόνο που λαχτάρησε ως λάφυρα του
είναι μια θάλασσα να φτάνει ως τη σκάλα
Βάζει σημάδια με στυλό πάνω στον τοίχο του
Μετράει το ύψος του που πόντο-πόντο χάνει
Μα κάθε βράδυ όταν βγαίνει απ'τον ύπνο του
στέκεται όρθιος και τρυπάει το ταβάνι
Είναι που ονειρεύεται πως φεύγει για ταξίδια
πως μπαίνει μέσα σε παλιές φωτογραφίες
Ξέρει αν μπορούσε θα'κανε μία απ'τα ίδια
αλλά τι νόημα έχει το όνειρο χωρίς μικρές νοθείες
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Minor adulterations
Singers:  Vasilis Papakonstantinou
Lyrics:   Odysseas Ioannou
Music:    Thanos Mikroutsikos
Never did he manage to reach a sunshine
and lives with whatever remains of a scrapped poem
The mornings he gets up with heavy dizziness
and says a great wave woke him up
He hangs his posters on his windows
Hides the light but also hides everything else
because the only thing he desired as plunder
was a sea that stretches to the stairs
He sets marks on his wall with a pen
Measures his height that he loses bit by bit
But each night when he gets out of his slumber
he stands up and pierces through the roof
It is that he dreams of embarking on journeys
that he gets into old pictures
He knows if he could he would do more of the same
but what is the point of a dream without minor adulterations
</code></pre></div></div>
<p>The poetic “he” is a person who is caught in a spiral of
introspection. We get a hint as to what the cause is, in the form of
the person’s own perfectionism, symbolised by the company of some
scrapped poem. It is a memento of his works and his dissatisfaction
with them. He is the most stern of judges in discarding works that do
not live up to some ultimately irrelevant standard of objective
excellence. Why irrelevant? Because a creator can only create what
their condition renders possible. To reject the end result is to not
recognise or accept what the condition is: it is to live in dissonance.</p>
<p>This person is fundamentally ashamed of what they do and who they are.
Hence the desire to withdraw from the public eye, to hide in his ever
darker room, and to reminisce about the few experiences that were
worth keeping a photograph of. It is perfectly fine to have ambitions
and to set high standards. Though every plan has to be couched in
terms of practicality, of the immediate experience of the world. It
cannot be decoupled from what one is doing, where they started from,
and what their trajectory is. It cannot be “objective” strictly
speaking, as there is always some context that determines what is
happening and delineates the realm of the potential.</p>
<p>For as long as someone is putting in honest effort, to the best of
their abilities, there is nothing to be ashamed of. Only cheating and
faking it, only the lack of honour, is worthy of contempt. But the
hard work is noble and praiseworthy as such, even if the results are
not the best ever.</p>
<p>Hiding from others is a healthy coping mechanism when it is an initial
response to some injurious situation. One needs time to recuperate and
come back stronger. Withdrawing into a safe space is thus helpful.
Though it is paramount to not become fatalistic by thinking that this
is the end of the world. By disaggregating the big problem into its
smaller constituents, the pressure becomes less intense: one can
tackle minor issues and get a taste of the ensuing small wins. It is a
matter of not giving up, of not shutting off the sunlight completely.</p>
<p>Concretely, the sort of overthinking described in this song cannot be
overcome by more thinking. The cycle of negativity is broken by
action. Our protagonist, this nameless “he”, must muster the courage
to venture outside. Though this means that he has to swallow his pride
and make some concessions, such as by relaxing his standards and
lowering his expectations. Perhaps poetry is not what he is meant to
do or he can still do it on the side while balancing it out with
something else.</p>
<p>It is single-mindedness and inflexibility that undoes a man. Those
same qualities are invaluable in certain cases where one has to power
through hardship. The key is to not lose sight of the bigger picture;
to not make unflinching commitment the goal itself, but to understand
that everyone can be wrong while the world can always introduce new
states of affairs. Thus the priorities we once set for ourselves are
either no longer correct or relevant.</p>
<p>By blotting out the light and everything else with it, the person is
bound to forgo the sense of perspective that informs sound judgement.
Now, confined to their own space, dwelling over the same tired
thoughts, all they can do is continue to lose any sense of
self-respect, as they belittle their being one regret at a time.</p>
<p>The titular “adulterations” do give us a hopeful message though. Just
as we once dreamt of achieving something grand, we retain the ability
to dream anew no matter the setbacks. We may modify what once was to
fathom a purpose we had not envisaged. It is this very pivot that
makes the adulteration of the original dream benign and, indeed,
necessary. The world may then reveal to us an altogether different
reality that the one we had hoped for; a reality that may still
fulfil us.</p>" nil nil "3edec93fb7b742bac3fc46f1a3989bf2") (96 (26569 29903 593907 763000) "https://protesilaos.com/codelog/2025-02-20-emacs-fontaine-3-0-0/" "Emacs: fontaine version 3.0.0" nil "Thu, 20 Feb 2025 00:00:00 +0000" "<p>Fontaine allows the user to define detailed font configurations and set
them on demand.  For example, one can have a <code class=\"language-plaintext highlighter-rouge\">regular-editing</code> preset
and another for <code class=\"language-plaintext highlighter-rouge\">presentation-mode</code> (these are arbitrary, user-defined
symbols): the former uses small fonts which are optimised for writing,
while the latter applies typefaces that are pleasant to read at
comfortable point sizes.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">fontaine</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/fontaine\">https://protesilaos.com/emacs/fontaine</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/fontaine-changelog\">https://protesilaos.com/emacs/fontaine-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/fontaine\">https://github.com/protesilaos/fontaine</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/fontaine\">https://gitlab.com/protesilaos/fontaine</a></li>
</ul>
</li>
<li>Backronym: Fonts, Ornaments, and Neat Typography Are Irrelevant in Non-graphical Emacs.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 3.0.0 on 2025-02-20</h2>
<p>This version changes the underlying implementation of Fontaine’s font
configuration presets. In principle, this should not have any effect
on how users experience the package, though there are some important
details that are different.</p>
<h3>Fontaine is now a “theme”</h3>
<p>Fontaine has always modified typography-related faces, such as
<code class=\"language-plaintext highlighter-rouge\">default</code>, <code class=\"language-plaintext highlighter-rouge\">fixed-pitch</code>, and <code class=\"language-plaintext highlighter-rouge\">variable-pitch</code>, to apply the font
family, height, and weight specified by the user. In the past, this
was done in a way that could get overridden under certain conditions,
such as by loading a theme after setting a Fontaine preset configuration.</p>
<p>By making Fontaine a theme, we guarantee that its settings are not
undone. In practice, this means that users do not have to re-apply the
current preset after loading a theme. The function <code class=\"language-plaintext highlighter-rouge\">fontaine-apply-current-preset</code>
is thus obsolete.</p>
<p>In Emacs, a “theme” is a bundle of configurations. Those typically
cover colours (such as with my <code class=\"language-plaintext highlighter-rouge\">modus-themes</code>), but a theme can focus
on other settings as well. For example, the popular <code class=\"language-plaintext highlighter-rouge\">use-package</code> is
internally done as a theme (check the value of <code class=\"language-plaintext highlighter-rouge\">custom-known-themes</code>).</p>
<p>Fontaine is a theme in the same way <code class=\"language-plaintext highlighter-rouge\">use-package</code> is, meaning that it
will (i) persist its effects, (ii) not show up in the
<code class=\"language-plaintext highlighter-rouge\">custom-enabled-themes</code> and so not be affected by something like
<code class=\"language-plaintext highlighter-rouge\">(mapc #'disable-theme custom-enabled-themes)</code>,
and (iii) not be an option among those presented by <code class=\"language-plaintext highlighter-rouge\">load-theme</code>.</p>
<p>There are no known bugs, though please contact me if you encounter a
scenario where Fontaine does not do the right thing. Thanks, in this
regard, to Haruko and Emily Hyland for reporting a couple of bugs:</p>
<ul>
<li><a href=\"https://github.com/protesilaos/fontaine/issues/14\">https://github.com/protesilaos/fontaine/issues/14</a>.</li>
<li><a href=\"https://github.com/protesilaos/fontaine/issues/15\">https://github.com/protesilaos/fontaine/issues/15</a>.</li>
</ul>
<h3>Fontaine no longer has frame-specific effects</h3>
<p>In the past, users could apply a Fontaine preset to the current frame
without affecting other frames. While this could be useful in certain
situations, it was ultimately making the code more complex for
marginal gains. As part of the transition to a theme, which is anyway
global, I am removing everything related to frame-specific functionality.</p>
<h3>Quality-of-life refinements</h3>
<ul>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">fontaine-generic-face-families</code> are used when necessary to
guard against <code class=\"language-plaintext highlighter-rouge\">nil</code> values. Those font families are symbolic
references to whatever the operating system is configured to use
(e.g. on Linux this is handled by fontconfig).</p>
</li>
<li>
<p>If Fontaine is instructed to load an invalid preset, it displays a
warning and does nothing else. Before, it would produce an error,
which could prevent Emacs from starting up normally if this were to
happen at startup. A warning is enough to inform the user of what is
happening.</p>
</li>
<li>
<p>Same principle as above when Emacs is not ran in a graphical
interface. In text terminals, Fontaine cannot work because it is not
possible to have different font families, styles, and heights, than
those of the terminal (hence the backronym of FONTAINE “Fonts,
Ornaments, and Neat Typography Are Irrelevant in Non-graphical
Emacs”). Thanks to Jorge Gomez for the patch in pull request 13:
<a href=\"https://github.com/protesilaos/fontaine/pull/13\">https://github.com/protesilaos/fontaine/pull/13</a>. Further tweaks by
me.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">fontaine-toggle-preset</code> command will produce an error if it
cannot find the preset it is supposed to switch to. The toggle is
between the last two loaded presets, as done by the command
<code class=\"language-plaintext highlighter-rouge\">fontaine-set-preset</code> (the <code class=\"language-plaintext highlighter-rouge\">fontaine-mode</code> takes care to persist the
relevant history).</p>
</li>
</ul>" nil nil "0b1da26d9965f01679497d6a90ed59b4") (95 (26569 29903 593557 527000) "https://protesilaos.com/commentary/2025-02-19-re-okay-your-content-training-ai/" "Re: are you okay with AI bots training on your content?" nil "Wed, 19 Feb 2025 00:00:00 +0000" "<p>The following is an excerpt from a private exchange that I am sharing
with the permission of my correspondent. I am not disclosing their
personal details.</p>
<hr />
<blockquote>
<p>I’ve been doing some research on bot blocklists and such. I looked
at your website’s robots.txt and noticed that you don’t block any
crawlers. May I ask you why? What do you think about the fact that
ChatGPT has been trained (and will be trained) on your work?</p>
</blockquote>
<p>Before answering your questions, allow me to provide a big-picture
view of my approach to the issue.</p>
<p>My principal reservation about artificial intelligence (I am not going
into technical terms of LLMs, AGI, etc.) is political and is not about
the technology as such: it is a matter of ownership and access which
can only be addressed holistically through thoroughgoing reforms. In
general, I am sceptical of any form of highly concentrated and
exclusive control, as it typically results in abuse. This can take
many forms, such as familial (e.g. a patriarch/matriarch that is
intolerant towards new forms of expression among the younger
generations), legal-institutional (e.g. a dictator that defies
constitutional norms to the longer-term detriment of the country’s
wellness), religious (e.g. a hierarch that twists people’s religiosity
to raise an army of fanatics), economic (e.g. billionaires
circumventing fair competition to entrench their businesses),
historical (e.g. a figure you cannot criticise which is used to
justify current malpractices), and social (e.g. celebrities that
manipulate people into parasocial relationships and other types of
questionable behaviour).</p>
<p>These are analytical constructs. In actuality, phenomena will tick
more than one box as there are permutations between extremes and
combinations of various qualities. The point is that whenever power
rests in few or increasingly fewer loci, it suffers from a mismatch
between relevance and competence or, to put it differently, it is far
away from those caught in the events. If a person living in Europe
decides what will happen to the village of someone in Asia, they are
not making the best decision for the latter’s well-being simply
because the realities of each one’s life are different and so are
their respective priorities or sensitivities. Exclusive control
becomes abusive the more detached it is from the particularities of
the case because it no longer notices the nuances therein. In legal
terms, it violates the principle of subsidiarity and is likely to be
insensitive to the connatural principle of proportionality.</p>
<p>There are concerns I have about the technology, such as matters of a
transhuman sort (falling in love with a bot, some company planting
chips in your brain, …), though those ultimately resolve to—or are
anyhow defined by—the aforementioned basics of control.</p>
<p>In purely technical terms, I think artificial intelligence is a
remarkable achievement and one that will mark a new era of human
civilisation. As with every innovation, it brings with it amazing
opportunities, the extent of which we cannot fully fathom yet, while
it also heralds the start of a whole new range of problems from
quotidian affairs to international relations. I think it is a mistake
to be categorically for or against this evolution, as it is neither
good nor bad. Just how our current world or those that have preceded
it are a mixture of positives and negatives. My stance is thus more
nuanced: I have no longing for some mythical past when things were
ostensibly perfect—it was always messy, just in different ways.</p>
<p>Now to your questions. I am largely ignorant about the scope of the
<code class=\"language-plaintext highlighter-rouge\">robots.txt</code>. What do I need to know about it that will improve my
website? And what does that improvement pertain to? I am happy to make
any change that benefits the dissemination of my content. Note that my
website is 14 years old and seems to be working fine, so I am not sure
what to make of this.</p>
<p>As for what I think about my publications being used to train AI, I
raise no objection. My works are all public and I consider them part
of the wider corpus of human creativity. They are not mine anymore
than they are yours, notwithstanding conventional notions of
authorship and ownership. When I express an idea, I make a connection
that is in the potential of the cosmos and which anyone else can thus
recognise and assume as part of their own thoughts. Nobody can ever
restrict the idea: even if they inhibit its circulation through legal
and technical means, the idea as such remains graspable and is not
reducible to a finite quantity (which could then be made exclusive).</p>
<p>When I use expressions such as “my works” or “I think”, I do not imply
that I am the only one capable of developing or holding those ideas. I
simply convey an impression about their origin relative to what I am
aware of. I am nevertheless mindful of the fact that I do not exert
exclusive control over the very endowment of my talents, the
happenstances that stimulate my mind, the connections my being makes,
and the dynamic interplay of factors in any given case. Everything I
do unfolds in the continuum of this world, so it is essentially
arbitrary to claim as my own that which is not strictly internal and
specific to me.</p>
<p>For example, I am now writing this argument in response to your
questions (“your questions” in the same sense as “my works”). Is the
argument exclusively mine given that the questions which triggered it
are not? Can I even isolate myself to test whether I could develop the
same thoughts minus this stimulus? Would it have been exactly the same
in a vacuum? What would even be the argument were it not to depend on
any prior thoughts of mine, which themselves synthesise the notional
internal with the external (i.e. which do not happen in a vacuum)?
Where do we draw this indelible line of “mine” versus “yours” or
“theirs”? Put simply, what I have—and who I am—is not a closed
system.</p>
<p>Think of it also in terms of some old song that exists in your
tradition. Nobody knows the original composer. Their name is lost to
time. Yet each of your people can participate in the experience of the
song. There is no sense in which one’s experience precludes that of
another. There is no inherent exclusivity.</p>
<p>I thus consider it dishonest to then claim something circumstantial
—the products of me in relation to my environment—as inseparable
from some assumed constant of “me” or selfhood. In simple terms, I do
not truly own and cannot identify with anything out there: I am, at
best, a messenger or a user of ideas (colloquially “my ideas”). All I
then do is extend this outlook to my beliefs about property in
general, where I only see a practical need for having some belongings
that are finite in order to live. Matters of thought are for everyone,
including bots whose ownership structure I may not like.</p>" nil nil "2290062dcc8d608896bc907bf162bd17") (94 (26569 29903 593152 542000) "https://protesilaos.com/codelog/2025-02-18-emacs-dired-preview-0-4-0/" "Emacs: dired-preview version 0.4.0" nil "Tue, 18 Feb 2025 00:00:00 +0000" "<p>This is a simple package to automatically preview in a window the file
at point in Dired buffers. Preview windows are closed when they are no
longer relevant, while preview buffers are killed if they have not
been used for other purposes beside previewing. The package provides
several customisation options to control its behaviour.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">dired-preview</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/dired-preview\">https://protesilaos.com/emacs/dired-preview</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/dired-preview\">https://github.com/protesilaos/dired-preview</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/dired-preview\">https://gitlab.com/protesilaos/dired-preview</a></li>
</ul>
</li>
<li>Backronym: Directories Invariably Render Everything Decently …
preview; dired … PDFs Require Extra Viewing Instructions for Emacs
to Work.</li>
</ul>
<p>Below are the release notes</p>
<hr />
<h2>Version 0.4.0 on 2025-02-18</h2>
<p>This version contains several refinements and bug fixes.</p>
<h3>Preview buffers have a mode line indicator</h3>
<p>Preview buffers have a prefix to their name to make them stand out.
This is controlled by the user option <code class=\"language-plaintext highlighter-rouge\">dired-preview-buffer-name-indicator</code>,
which is a string that defaults to <code class=\"language-plaintext highlighter-rouge\">[P]</code>.</p>
<h3>Control how preview buffers are cleaned up</h3>
<p>The way <code class=\"language-plaintext highlighter-rouge\">dired-preview</code> works is to display a buffer and then keep a
list of preview buffers to economise on redisplaying it again. This
list of buffers is relevant for as long as we are in the Dired buffer,
otherwise all buffers therein are killed (buffers that were alive
before being previewed are not touched).</p>
<p>By default we delete from oldest to newest the accumulated buffers
when they exceed <code class=\"language-plaintext highlighter-rouge\">10</code> in total. Though users can modify this behaviour
by editing the value of the new user option <code class=\"language-plaintext highlighter-rouge\">dired-preview-kill-buffers-method</code>
(its doc string explains the technicalities).</p>
<p>Thanks to artelse for discussing this with me in issue 20:
<a href=\"https://github.com/protesilaos/dired-preview/issues/20\">https://github.com/protesilaos/dired-preview/issues/20</a>.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">dired-preview-display-action-alist</code> has a new optional function</h3>
<p>The <code class=\"language-plaintext highlighter-rouge\">dired-preview-display-action-alist</code> is the user option which
controls where the preview window is displayed. Its value can either
be the symbol of a function or a <code class=\"language-plaintext highlighter-rouge\">display-buffer-alist</code> entry.</p>
<p>By default, we have a “do-what-I-mean” function that tries to find a
good placement for the window. The new <code class=\"language-plaintext highlighter-rouge\">dired-preview-display-action-alist-below</code>
function has a straightforward behaviour: it always shows the preview
below the current window and it always makes the preview window 0.3
times the height of the Emacs frame.</p>
<h3>Encypted files are no longer previewed</h3>
<p>This is to ensure that potentially sensitive contents are not
displayed by accident, such as during a video call.</p>
<h3>We no longer preview the “self” directory</h3>
<p>We should not trigger a preview when the cursor is over the implicit
<code class=\"language-plaintext highlighter-rouge\">.</code> directory, as that causes a recursion that breaks things. Thanks
to Inkbottle007 for reporting the bug in issue 23:
<a href=\"https://github.com/protesilaos/dired-preview/issues/23\">https://github.com/protesilaos/dired-preview/issues/23</a>.</p>
<h3>Miscellaneous</h3>
<ul>
<li>
<p>Fixed a scenario where we would try to delete the last available
window on the current frame. This should never happen. Thanks to
artelse for reporting a relevant bug in the discussion of issue 22:
<a href=\"https://github.com/protesilaos/dired-preview/issues/22\">https://github.com/protesilaos/dired-preview/issues/22</a>.</p>
</li>
<li>
<p>Fixed a case when <code class=\"language-plaintext highlighter-rouge\">hexl-follow-ascii</code> could fail to find an overlay
under certain conditions. This did not create any noticeable
problems, though having an error there would interfere with any
workflow that would rely on <code class=\"language-plaintext highlighter-rouge\">toggle-debug-on-error</code>.</p>
</li>
<li>
<p>The preview window will automatically be closed if the user switches
outside the given Dired buffer. We now do not consider a change to
the minibuffer as being “outside” this context. This way, a quick
<code class=\"language-plaintext highlighter-rouge\">M-x</code> to, say, enable a minor mode does not have any effect on the
window layout.</p>
</li>
<li>
<p>Suppressed the messaging facility of the underlying tracking of
preview buffers. Otherwise, Dired would notify us that the directory
has changed whenever we would preview a new one, which is
superfluous.</p>
</li>
<li>
<p>The body of the <code class=\"language-plaintext highlighter-rouge\">dired-preview-trigger</code> function, which determines
whether a preview will be displayed, is encapsulated in a <code class=\"language-plaintext highlighter-rouge\">condition-case</code>.
This helps capture errors and thus have a more predictable behaviour.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">dired-preview-display-action-alist</code> has a more accurate
declaration which allows for its correct customisation inside the
Custom UI interface. In particular, it will behave the same way as
the <code class=\"language-plaintext highlighter-rouge\">display-buffer-alist</code>, where relevant.</p>
</li>
</ul>" nil nil "3215a1b93a9811cc1f6f3ecf3d502744") (93 (26569 29903 592795 666000) "https://protesilaos.com/codelog/2025-02-12-aporetic-fonts-version-1-1-0/" "Aporetic fonts version 1.1.0" nil "Wed, 12 Feb 2025 00:00:00 +0000" "<p>Customised build of the Iosevka typeface, with a consistent rounded
style and overrides for almost all individual glyphs in both upright
(roman) and slanted (italic) variants. This is the successor to my
now-discontinued “Iosevka Comfy” fonts.</p>
<ul>
<li>Git repository: <a href=\"https://github.com/protesilaos/aporetic\">https://github.com/protesilaos/aporetic</a>.</li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/aporetic-fonts-pictures\">https://protesilaos.com/emacs/aporetic-fonts-pictures</a></li>
<li>Backronym: Aporetic’s Predecessor Objects’ Reserved Eponym Truly Included “Comfy”.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<p>This release includes two stylistic corrections that pertain to
Aporetic Serif and Aporetic Serif Mono.</p>
<ul>
<li>
<p>The first change is to the slanted (italic) form of the letter <code class=\"language-plaintext highlighter-rouge\">t</code>.
Before, it was mistakenly set to have a curved, upward-facing bottom
stroke, which would clash with the flat bottom of <code class=\"language-plaintext highlighter-rouge\">i</code> and <code class=\"language-plaintext highlighter-rouge\">l</code>. Now
the slanted <code class=\"language-plaintext highlighter-rouge\">t</code> has a flat bottom as intended. The upright (roman)
variants are always flat in this regard.</p>
</li>
<li>
<p>The second change is to the letter <code class=\"language-plaintext highlighter-rouge\">m</code> in both upright and slanted
forms. Before, the <code class=\"language-plaintext highlighter-rouge\">m</code> would have a top left serif, as intended, but
not a bottom right tail. The tail is a feature of other glyphs that
need to have such a style, like <code class=\"language-plaintext highlighter-rouge\">a</code>, <code class=\"language-plaintext highlighter-rouge\">h</code>, <code class=\"language-plaintext highlighter-rouge\">n</code>, <code class=\"language-plaintext highlighter-rouge\">u</code>: it imposes a
proper rhythm together with the rest of the serif details. Now the <code class=\"language-plaintext highlighter-rouge\">m</code>
has its missing bottom right tail, making everything consistent.</p>
<p>[ The <code class=\"language-plaintext highlighter-rouge\">m</code> has a shorter middle leg in all the “mono” families” to
improve readability, especially at small point sizes. The
proportionately spaced fonts use a normal middle leg, as <code class=\"language-plaintext highlighter-rouge\">m</code> is
naturally wider there and thus is already perfectly legible. The
other details are the same. ]</p>
</li>
</ul>" nil nil "657ea2f22af5ed23d113cda7588f489d") (92 (26569 29903 592595 905000) "https://protesilaos.com/news/2025-02-12-kore/" "Kore (Girl) XXXX-2025" nil "Wed, 12 Feb 2025 00:00:00 +0000" "<p>The vet called earlier to report on your passing. Two weeks of care
were not enough to undo the damage of disease and old age. When I last
saw you on Thursday, I knew we would not meet again. You could barely
move your paws.</p>
<p>Nothing is permanent in our life. We cannot affect the greater
magnitudes and are powerless to either hold on to anything or take it
with us. Whatever little control we have, we may use it in the service
of a lofty cause such as to develop a bond between our species; an
enduring friendship built on mutual trust and respect.</p>
<p>Experience is a series of moments. We let the details fade away as we
cherish the impression of the little things that we hold dear. I thus
remember you from a few weeks ago, when you finally decided to find
shelter in my hut. You learnt from Atlas how to knock on the door and
did it in the early morning hours of one of January’s heavy storms.
Despite the noise caused by the rain, I heard you or, perhaps, I
somehow felt your plea, and opened the door. You wagged your tail and
ran in exuberantly, as you quickly found your way to a corner that you
made your own. I was happy that you were comfortable, though I could
tell that something had changed. This was not normal. You must have
been aware that our time together was running out.</p>
<p>Many humans think they are the only ones who possess language and are
thus entitled to some special treatment by the heavens. It is because
they do not know any better. Those of us who commit hours each day to
our beloved animals know that you possess language in all of its
manifestations, verbal and non-verbal, and that we humans can
accurately communicate with you. It is what you and I always did.</p>
<p>You were cautious not to come indoors, opting instead to sleep
somewhere close to my habitat. These past few months, I would
frequently find you sunbathing on the grass in front of my room or
sleeping under the solar panels. Whenever I would go out with Atlas
and Raizou, you would follow us for a little while even though you did
not have the stamina to keep up with us. Still, you were there showing
your friendship.</p>
<p>I first met you seven years ago. It was a sunny February morning. You
appeared at the village without a collar and had no chip on you. This
is a common phenomenon in the mountains, as hunters abandon their dogs
on the premise that they are not suitable for hunting. You were no
hunting dog though. Those are typically afraid of people. They have no
chance of survival because they have been subject to such neglect and
abuse that they do not trust humans, including those who, like me,
would like to offer their help. You must have been some nice person’s
pet. Perhaps they suffered a misfortune and you were then forced to
leave your home. Nobody knew your name, so they ended up calling you
“Kore” (Κόρη), the Greek word for “girl” or “daughter”.</p>
<p>That was seven years ago and two relocations away from where I
currently am. At the time, I did not have the means to take care of
you. The neighbours were providing you with food and you found shelter
in an abandoned house nearby. We quickly became friends, as you would
see me multiple times a day hiking together with Atlas.</p>
<p>When I left that village in desperate search for another room, I did
not expect you to follow in my footsteps. A few days after I had moved
to the nearby village, I found you roaming around my new place at the
time. The dynamic of our relationship was the same: we would go for
walks together, you following in our footsteps at a distance, while
you would retain your freedom throughout the day as a stray animal
that was still taken care of by the entire neighbourhood. It was then
no longer a surprise when you followed me once again, this time to the
hut where you lived peacefully for the last year and a half.</p>
<p>As the full moon rises from the east, I hold dear the memory of your
friendship. Thank you!</p>" nil nil "1ef15337bc60007618dcd2aa73eabe37") (91 (26569 29903 591868 228000) "https://protesilaos.com/interpretations/2025-02-11-tolls-velesiotou-zouganeli/" "Interpretation of =?utf-8?B?4oCcVG9sbHPigJ0=?= by Fotini Velesiotou and Eleonora Zouganeli" nil "Tue, 11 Feb 2025 00:00:00 +0000" "<p>For this entry in the series, I have selected a song that I only
discovered recently: <em>Tolls</em>. There are multiple versions of it,
including the original performed by Fotini Velesiotou and Stavros
Siolas, though the one I prefer is sung by Fotini Velesiotou and
Eleonora Zouganeli: <a href=\"https://www.youtube.com/watch?v=XCzUX8grbLI\">https://www.youtube.com/watch?v=XCzUX8grbLI</a>.</p>
<p>Before I proceed to translate the lyrics of <em>Tolls</em> and then elaborate
on its deeper meaning, I must note that my plans this noon was to
write an article about one of the songs performed by Eleonora
Zouganeli. My first choice was <em>The Gardener</em>, which is the work of
Pavlos Pavlides, another beloved artist of mine:
<a href=\"https://www.youtube.com/watch?v=WrEIY277C_A\">https://www.youtube.com/watch?v=WrEIY277C_A</a>. Though I later decided
to leave that for another time and focus on <em>Tolls</em> for the time
being. Let us, then, enjoy the music and think about one of the
lessons we can learn from it.</p>
<p>Below are the original lyrics, my faithful translation of them, and
further commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Διόδια
Ερμηνεία:  Φωτεινή Βελεσιώτου & Ελεωνόρα Ζουγανέλη
Στίχοι:    Πόλυς Κυριάκου
Μουσική:   Σταύρος Σιόλας
Τώρα θα δεις τα χρώματα ν'αλλάζουνε
και τα βουνά να σμίγουν ένα-ένα
Άγγελοι σαν θνητοί θα σ'αγκαλιάζουνε
εχθροί θα σου μιλούν αγαπημένα
Τώρα θα πιω νερό απ'το ποτήρι σου
δικά σου θα'ναι πια όσα δεν έχω
Θα σπρώξω ουρανό στο παραθύρι σου
κι ό,τι δεν άντεχα θα το αντέχω
Τώρα θα πιάσω σπίτι στον παράδεισο
τσάμπα οικόπεδο σε παράλια
Του έρωτα θα βάλω το πουκάμισο
και θα νικήσω δίχως πανοπλία
Τώρα θα δεις μες στης ψυχής τα υπόγεια
τραπέζι με ψωμί, νερό, κι αλάτι
Τώρα που δεν υπάρχουνε διόδια
που πέφτει σαν ζεστή βροχή η αγάπη
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Tolls
Singers:  Fotini Velesiotou & Eleonora Zouganeli
Lyrics:   Polys Kyriakou
Music:    Stavros Siolas
You will now see the colours changing
and the mountains merging one-by-one
Angels like mortals will be embracing you
enemies will be talking to you lovingly
Now I will drink water from your glass
yours shall be all I no longer have
I will push sky towards your window
and anything I could not endure shall endure
Now I will acquire a house in paradise
Gratis property by the seaside
I will wear love's shirt
and shall win without an armour
Now you will see the soul's basements
table with bread, water, and salt
Now that there are no tolls
that love falls like warm rain
</code></pre></div></div>
<p>To me, <em>Tolls</em> describes the outlook a person has when they no longer
treat people transactionally. Others are not means towards
individualistic ends. They are all equal, fellow travellers on the
same journey of life, with whom one may share a table, no matter how
frugal it is.</p>
<p>The worth of a person is not measured by how opulent their dining hall
is. Indeed, excesses are often a sign of vanity and misplaced
priorities. A serving of the essentials is enough when done with
kindness. It is all about one’s intent and their willingness to
recognise in everyone some inherent, inalienable value.</p>
<p>This hearkens back to the ancient Greek ideal of hospitality,
epitomised by the concept of Xenial Zeus (<em>ξένιος Ζευς</em> or <em>ξένιος
Δίας</em>): “xenial” means “of the foreigners”. One must welcome strangers
and treat them with care, while they must, in turn, respect the
integrity of the household. There is mutual respect involved, whose
deepening manifests as love.</p>
<p>Love is not one-sided. A person can only feel loved when they are
prepared to give love. This is because of the precondition of trust.
One must open up their true self, to be recognised for who they are,
to be confident that they are valued for their true self and not some
persona thereof, and, in turn, to discover in others a genuine person
that hides beneath the hardened carapace of quotidian transactionality.</p>
<p>When you are loved for something you are not, such as some carefully
curated character you maintain on social media, you distract yourself
from the deep-seated contempt you harbour for yourself by chasing
vanity points online. The dopamine boost takes your attention away
from the hard-yet-rewarding work you need to do to (i) accept yourself
and (ii) to then put your faith in others.</p>
<p>One-sided love is a self-centred experience rooted in fear. It
involves the imagination of another, who cannot be an actual person as
their facets of selfhood are not explored. Those are substituted by
potentially beautified or likely inaccurate fantasies. Such a state of
mind happens within the confines of one’s comfort zone: they have not
opened up to make themselves vulnerable and, necessarily, have not
dared to discover real people.</p>
<p>Love can hurt precisely because makes you vulnerable. To love is an
act of courage, of overcoming one’s inhibitions, of looking past one’s
ego, to find the others as they are, with all their imperfections.</p>
<p>The reason Zeus is the tutelary figure of hospitality is because one
must exhibit the combination of vigour, magnanimity, and big-picture
thinking that befits the god of the sky and form-making. Hospitality
is not the mere ephemeral business affair with a tourist, but the
readiness to share with others that which you have no surplus of. It
is this very attitude that dismantles the barriers, which exist
between us.</p>" nil nil "882074bf573c3137471e39d066c9e615") (90 (26569 29903 591489 967000) "https://protesilaos.com/codelog/2025-02-11-emacs-splitting-denote-many-packages/" "Emacs: I am in the process of splitting Denote into many packages" nil "Tue, 11 Feb 2025 00:00:00 +0000" "<p>I am reorganising the <code class=\"language-plaintext highlighter-rouge\">denote</code> package to have a clear separation
between “core” and “extensions”. The idea is to decouple the two. The
<code class=\"language-plaintext highlighter-rouge\">denote</code> package shall provide only the core functionality, while all
other features we already have will be available as standalone
packages.</p>
<p>The reason I am doing this is because the project has organically
grown over time to encompass lots of useful-yet-inessential
applications, such as Org dynamic blocks, journaling capabilities, and
sequence schemes, among others.</p>
<p>All those extras are nice to have, though they dilute the message
about what Denote is, making it seem far more complex than it actually
is. They are also held back by the minimalist outlook of the core:
they cannot be developed to their logical end, as any dependency they
incorporate becomes a dependency of the whole project, which makes no
sense (e.g. we can have a <code class=\"language-plaintext highlighter-rouge\">transient.el</code> to interact with Denote
commands, but this is in no way essential, so why force it upon
everyone who downloads the <code class=\"language-plaintext highlighter-rouge\">denote</code> package?).</p>
<h2>The core</h2>
<p>Denote essentially is a file-naming scheme. We create new files or
rename existing ones to have file names that are easy to retrieve with
even basic tools. This is my use-case and the reason I wrote Denote: I
name my videos, PDFs, pictures, and “notes” with the Denote
file-naming scheme, making it easy for me to find everything.</p>
<p>I think the Denote file-naming scheme is ingenious, though the real
value is in having a scheme—any scheme—to force consistency in how
you name things. Consistency begets predictability, which in turn
increases the likelihood of finding your data.</p>
<p>The other part of retrieving information is through links. Part of the
Denote file-naming scheme is the date+time, which is a unique
identifier. We can thus link to any file in the <code class=\"language-plaintext highlighter-rouge\">denote-directory</code>
using its identifier. Once we have these “forward links”, we can
easily figure out what the “backward links” of a given file are, i.e.
which files link to the current one.</p>
<p>This is the core, plus a few other conveniences that I need not
enumerate herein.</p>
<h2>The extensions</h2>
<p>Anything that builds on the aforementioned is an “extension” and will
have its own Git repository as well as user manual. To this end, I
have already removed <code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code> from the <code class=\"language-plaintext highlighter-rouge\">denote</code> core and
made it its own entity:</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote-sequence</code> (⚠️ Not available yet)</li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote-sequence\">https://protesilaos.com/emacs/denote-sequence</a></li>
<li>Git repository: <a href=\"https://github.com/protesilaos/denote-sequence\">https://github.com/protesilaos/denote-sequence</a></li>
<li>Backronym: Denote… Sequences Efficiently Queue Unsorted Entries
Notwithstanding Curation Efforts.</li>
</ul>
<p>The plan is to do the same with the “Org extras”, such as with all the
Org dynamic blocks, the “Markdown extras”, the “journal extras”, and
the “silo extras”. Once all the packages are ready for widespread use,
I will add them to GNU ELPA. Until then, everything is a WORK-IN-PROGRESS.</p>
<p>For the time being, the technical discussion is done in issue 543:
<a href=\"https://github.com/protesilaos/denote/issues/543\">https://github.com/protesilaos/denote/issues/543</a>. The code which
will eventually be merged into the <code class=\"language-plaintext highlighter-rouge\">main</code> branch resides in the
<code class=\"language-plaintext highlighter-rouge\">reorganise-denote</code> branch: <a href=\"https://github.com/protesilaos/denote/tree/reorganise-denote\">https://github.com/protesilaos/denote/tree/reorganise-denote</a>.</p>
<h2>For the longer-term benefit of the project</h2>
<p>There will be no reduction in the total set of features we provide.
This is only a matter of reorganising what we have, namely, to (i)
make it easier for new users to understand what Denote is, (ii) pick
only the extensions they require, (iii) make it possible to decentralise
the maintenance of the project should I ever need to step down (which
is not happening, but as a matter of principle).</p>
<p>Those granted, keep in mind that Denote is not a “second brain” and
will not make you smarter. It is a flexible and capable tool, truly
Emacs-y in its adaptability, that you can use as part of a workflow
that makes sense to you. Let us then decouple the core from its
extensions and continue to give users the best possible experience
with every piece of code and documentation that we write.</p>" nil nil "31ff484cc41ce29214c13eab1262f620") (89 (26569 29903 590723 268000) "https://protesilaos.com/interpretations/2025-02-08-trypes-here/" "Interpretation of =?utf-8?B?4oCcSGVyZeKAnQ==?= by Trypes" nil "Sat, 08 Feb 2025 00:00:00 +0000" "<p>For this entry, I am interpreting one of the many ever-relevant songs
of the Greek rock band <em>Trypes</em> (Τρύπες). The title of the song is
<em>Here</em>: <a href=\"https://www.youtube.com/watch?v=1uePbLKaAY8\">https://www.youtube.com/watch?v=1uePbLKaAY8</a>. Not only is
this an uplifting live performance with memorable music, it also
communicates a profound message.</p>
<p>Below are the original lyrics, my faithful translation of them, and
subsequent philosophical commentary. Also check the previous entries
about <em>Trypes</em>:</p>
<ul>
<li><a href=\"https://protesilaos.com/interpretations/2022-08-01-trypes-new-dizziness/\">New dizziness</a> (2022-08-01)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-06-28-trypes-train/\">Train</a> (2022-06-28)</li>
</ul>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Εδώ
Ερμηνεία:  Τρύπες
Στίχοι:    Γιάννης Αγγελάκας
Μουσική:   Μπάμπης Παπαδόπουλος
Εδώ δεν πιάνουν οι κατάρες, δεν πιάνουν οι ευχές
Εδώ το τώρα ζητιανεύει λίγη πίκρα απ'το χτες
Εδώ οι άγγελοι δεν κλαίνε ούτε γλύφουν πληγές
Εδώ η θλίψη δεν κερδίζει ποτέ
Εδώ οι μέρες ταξιδεύουν σαν χελώνες νεκρές
κι εγώ τρεκλίζοντας τις ακολουθώ
Εδώ οι σκέψεις ζωντανεύουν ναυάγια, πυρκαγιές
Καίγομαι ολόκληρος εδώ και ξανασβήνω εδώ
Εδώ οι νύχτες δεν διψάνε γι'άλλες άγριες γιορτές
μονάχα σκιάχτρα τραγουδάνε με καρδιές δανεικές
Εδώ πεθαίνουν νυσταγμένοι οι τελευταίοι εραστές
Εδώ η θλίψη δεν κερδίζει ποτέ
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Here
Singer:  Trypes
Lyrics:  Yiannis Angelakas
Music:   Babis Papadopoulos
Here grudges are ineffective, ineffective are the wishes
Here the now begs for a little bit of bitterness from the yesterday
Here angels do not cry nor lick wounds
Here grief never wins
Here the days travel like dead turtles
and I follow them while shaking
Here thoughts revive shipwrecks, fires
I burn entirely here and abate again here
Here nights do not thirst for more wild festivals
only scarecrows sing with borrowed hearts
Here the last lovers die from sleepiness
Here grief never wins
</code></pre></div></div>
<p>While every piece of art has many truthful meanings, the one I feel
the most for <em>Here</em> is the sense of peace we get when we have presence
in our present. In other words, when we take the here-and-now for what
it is, choosing to no longer yearn for a past that cannot be recreated
or daydream about a future that is not realisable.</p>
<p>The titular “here” is both a physical location as well as a state of
mind. It is about where we are at any given moment, with the
prevailing conditions at play. We have situational awareness in
appreciating what is and in recognising what cannot be. This awareness
is rooted in a mindset of accepting what our immediate experience is
subject to.</p>
<p>Acceptance does not necessarily mean that we are happy about what is.
No. It simply is a recognition of how things stand and, thus, an
admission that past and future are, strictly speaking, irrelevant to
what unfolds right now.</p>
<p>The way we treat our present conditions us to think in one way or
another. If we are in the mode of comparing the present to some
glorified past, then we are in the process of counting our losses. We
are sad and are bound to become more miserable. The reason is that we
see in the past a value for which there can be no alternative, as if
life only has one answer to it, one way of how nice things can happen,
and as if one size must necessarily fit us all. Yet nature likes to
surprise us, to teach us how little we truly understand of what we
think is ours, and to expose our dogmas as ignorant opinions.</p>
<p>Past experiences may have been pleasant, but so can the current and
future ones. Not necessarily in the same way though, but in their own
right as diverse expressions of the continuum of life that is the
cosmos. “Here”, then, is a place of bliss when we no longer insist on
a specific type of experience; when we let go of our obsession of what
our good outcome is.</p>
<p>We have to put our faith in the world, to trust that it can yet prove
us wrong and naive. In the here-and-now, we relinquish the expectation
to have things a certain way, accepting instead that we go with the
flow of the phenomena, immersed in a world whose workings are beyond
our control. There is a serendipity to this disposition that cannot be
found elsewhere. It requires open-mindedness and the courage to
challenge what we think we know. What we had may have been decent, but
it was only one perspective on the vastness of the cosmos, which could
not possibly show us everything about the greater whole.</p>
<p>Being present in the “here” is ultimately about having the guts and
tenacity to explore what you may become, friend. Muster the strength
to dry your tears. Then make small steps towards the “here”, to
appreciate the little things all around you. Stop being a maximalist.
Let go of the misbegotten notion that you can have perfection all
around you or, worse, that you are somehow entitled to it. When you
want everything, you get nothing. Plus, you are not perfect yourself,
so why expect others to be that for you?</p>
<p>“Here” is where the stray souls finds their home. And we are all
waiting for you to join us.</p>" nil nil "2ba947a9ef8dc8ef6f8c1754b0fde1d6") (88 (26569 29903 590365 263000) "https://protesilaos.com/news/2025-02-08-translation-first-philosophical-symposium/" "Translation of what I said at my first philosophical symposium" nil "Sat, 08 Feb 2025 00:00:00 +0000" "<p>Below is the faithful translation of what I said in Greek in this
video, starting at the 10:47 mark: <a href=\"https://protesilaos.com/news/2025-02-06-vlog-about-first-philosophical-symposium\">https://protesilaos.com/news/2025-02-06-vlog-about-first-philosophical-symposium</a>.</p>
<hr />
<p>The video starts now. All good. I am not sure I am visible. Let me
have a seat. But let us all be visible.</p>
<p>Thanks to Philippos for organising this symposium. I believe it is the
first symposium we have here at the village and I am very happy for
this.</p>
<p>What is, then, the “philosophical symposium”? And this is our topic
today. Let’s examine what the words “philosophy” and “symposium” are
and how they combine together, in order to understand what this is
about.</p>
<p>Philosophy is the friendship one has towards wisdom. What is wisdom?
It is our ability to understand the big picture of things. Thus, to be
able not to remain in the specifics in our life but to be able to zoom
out, as it were. To be able to see the general lines and understand
what is happening overall. To understand our experiences and those of
other people, and historical events, and to be able to see things more
spherically. This basically is wisdom.</p>
<p>The philosopher, then, and philosophy… The philosopher is the person
who tries in their life to always act in accordance with wisdom.
Always, in the specifics of what they are doing to also have a general
idea of what is happening. So that they do not remain stuck in their
own understanding but see things more spherically. And thus to not get
confused by difficult details and not lose their general direction.
This is generally wisdom and this is generally philosophy.</p>
<p>The philosopher is the person who has to approach wisdom. But to
approach wisdom they must be able to think. To think, we all have the
capacity for it. We all have a brain and we all have intelligence.
This is not enough though. To think we need courage. You need to dare
to think. You need to dare to tell yourself, first and foremost, that
“I may be wrong”. “Let me think about it, and I might be right, but I
might also be wrong”. To do anything, you have to recognise that there
is the possibility to succeed as well as the possibility to fail.
Thus, it requires courage.</p>
<p>As the poet (Andreas Kalvos) has said, “liberty requires virtue and
courage” and this is how philosophy is more-or-less, because to think
for yourself you have the freedom to think for yourself. You will not
just say what somebody else told you. You might agree with someone,
but you will agree following your own initiative. Meaning, somebody
told you something, you thought about it, and said “yes, I agree”, or
“no, I disagree”.</p>
<p>Philosophy also requires sincerity. It requires honesty. When I think
of something—anything—, I do not try to fool myself. I do not try
to tell myself that I am better than I truly am or that I know more
than what I truly know. But I tell myself “you know, here is where you
were wrong”, “you know, this is not something you have knowledge of”.
When we have this honesty, we have a basic humility. This humility is
not a mere internal affair. Humility is expressed towards other people
but also towards the topics we study. It is expressed towards other
people like through the symposium and every discussion we have.
Because, when I state anything, I do not say it out of a belief that I
am infallible. I will say something and we will discuss it. I may be
wrong. I may be right. I may be partially right but something still
eludes me, so you will tell me “hey, you forgot this; if you think of
it from this angle you will reach a different conclusion; let us
discuss it”. So I want to have the sincerity to be honest with myself,
but also to have the courage and sincerity to talk with my fellow
human. And to recognise in my fellow human that he or she also has
experiences, thoughts, moments, that I do not have and from which I
may learn something. And the same for everyone: we may all learn
something.</p>
<p>Why, then, “symposium”? Why it matters to have “philosophical” and
“symposium” and why I think these things should go together. Because
philosophy is something we do daily. Philosophy does not only concern
books. Of course, it also is a study that encompasses books. But not
only books. It also concerns quotidian life. What must I do? What is
my purpose? Which are my values? I have to be able to reason about
those things and to talk about them. Not to take them for granted,
because anything I take for granted, anything I do not subject to
critical thinking, has the potential to be wrong. And if it is wrong,
so is everything I do that is based on it. So I want to have the
sincerity to talk with the other person; the sincerity to sit at a
table with others and for all of us to be equal. We all sit at the
same table, we all share the same wine, the same food. There is not
one who is smarter, one who is more experienced, et cetera, who is
infallible and whom everybody else listens to. All make mistakes. All
have something right to say and, precisely, we have the humility to
recognise these qualities in all other people.</p>
<p>And this, basically, is the idea of the symposium. It is, then, to
bring people close and demonstrate to them that you too can dare, that
you to can think, that you too can have the courage of opinion; the
courage not to be right and faultless, because no-one is faultless,
humans always make mistakes; but the courage to make the mistake. The
courage to make the mistake, though, within a social environment. In
an environment of solidarity. Because if I say something wrong here,
you will not use it against me. If I say something wrong here, I have
trust in you that you will correct me. There is, thus, a basic
solidarity, a community, a society, that depends on trust. On trust is
embedded the courage to think, the courage to say my opinion, the
courage to say something right, the courage to make a mistake. And
whatever happens. This is, in a few words, the essence of philosophy.</p>
<p>Then, of course, there are lots of technical topics which, depending
on the degree of technicality will require extensive study for a long
time. But you do not need to be a specialist to do philosophy. You
need to be a specialist to do special topics. What you need to do
philosophy is to be honest. Do not fake it. Do not pretend that you
know it all but also do not be afraid to make mistakes. And to trust
other people, that they will be by your side when you commit an error
to tell you about it. And the idea to have other people beside you and
to have trust in them at your moments of error is exactly to recognise
that you make mistakes. Because when we do not recognise our nature,
when we do not recognise our self, when we do not recognise that we
can make mistakes, it is then that we will make them, then is when we
will not have the natural stop.</p>
<p>[ Others are joining and I say that we are basically done and ready
for the open discussion. Then someone suggests I summarise for them
to have an idea of where we are. ]</p>
<p>Just to conclude with this. Basically, philosophy has two dimensions.
The one dimension is the personal dimension. The person must have the
courage to voice an opinion, the courage to think, the courage to do
something right, the courage to do something wrong. It also has an
interpersonal dimension, a social dimension. Which is the dimension of
what we have today at the symposium. Which is that what I will do, to
express myself, my opinion, to say what I have in mind, I will tell it
to you because I trust you. And, if I say something right, we will
agree and elaborate on it, and if I say something wrong you will tell
me “hey, you are wrong” and you will help me. And always this happens
within the confines of solidarity and trust, the confines of
friendship. This is the rationale and this is the idea of
“philosophical” and “symposium”, which go together.</p>
<p>And this is what I wanted to basically talk about. We now have an open
discussion and can talk about anything you want.</p>" nil nil "7a0539fa9739b80ba199daf274fa5ff9") (87 (26569 29903 589912 784000) "https://protesilaos.com/commentary/2025-02-07-re-why-live-rather-than-die/" "Re: Why live rather than die?" nil "Fri, 07 Feb 2025 00:00:00 +0000" "<p>What follows is an excerpt from a private exchange that I am sharing
with the permission of my correspondent. I am not disclosing their
private information.</p>
<hr />
<blockquote>
<p>why live rather than die?
hungry people want food and full people don’t, but both hungry and full
people can agree that some foods are healthier than others, and food
preferences differ between people.
why fight to eat if you could choose never to go hungry again with no
perceivable consequences?</p>
</blockquote>
<p>There are three parts to my thinking on this matter: metaphysical (what
is), epistemological (what we know), and practical (what to do).
Metaphysically, I cannot tell what death is. Do we have a case of
something being caused by nothing? Something being done in nothing?
Something becoming nothing? In all those cases, I can only think of
“something”. The world always is. Not only I lack the imagination to
consider a case of nothingness, in the absolute sense, but I cannot even
describe such a state. Calling it a “state” is already a description of
something, of a given pattern or structure, not nothing. I can only ever
conceive of nothing indirectly as the opposite of something, though I
have no means of grasping it as such. The “as such” makes me wonder if
there is any single thing that I can understand as such. I think not,
for all things coexist, and all that becomes does so in the interplay of
things that are becoming.</p>
<p>What I can say about death is that it is the apparent discontinuation of
a given form of being, though not of being as such. What we experience
is a cycle of transfiguration: forms come and go, yet the coming and
going, the essence of life—the set of conditions in which cause,
pattern, and structure is even possible—is always there. What is death
in this regard? I cannot say.</p>
<p>At the epistemological level, we face the problem of making a case for
the counterfactual. I cannot, for example, die to test how it is and
then come back to describe it to you (assuming that giving you a
description is a sufficient substitute for the experience itself, which
I think it is not). There is no way for me to understand death in the
way I experience life, such as this very moment. Therefore, I have no
means of knowing whether death has any consequences on the given
organism or not. Perhaps the organism goes through a process of
disintegration, though the constituents are not becoming nothing. Which
brings us back to the metaphysical conundrum. What is? What is not?</p>
<p>In practical terms, I find life to be a bag of mixed results. There are
beautiful and ugly parts to it. My experience tells me that even in the
lowest of lows, I can still affect my outlook. Looking at a sunset,
listening to the birds, feeling the cold breeze of this February
evening… all those little things that we tend to forget remind me how
there are fulfilling experiences to be had. Plus, experience has shown
me that I cannot anticipate the future and pretend to know it all.. I
had plans to move in a certain direction only for life to put me on a
completely different path. At first, I thought this was miserable but
then I realised how wrong and narrow-minded I was. I allowed myself the
chance to keep an open mind, to try to find the little things that touch
my soul, and to be balanced in my attitude. It is this growth, this
sense of becoming that which I could not have fathomed, which I
appreciate the most.</p>
<p>I can spend my time worrying about matters that are beyond my reach;
matters which are obscure and for which this life does not provide
enough means to find answers. Though I feel that I will not achieve
anything because achieving something is inconsequential. I then choose
to take phenomena as they come and to smile even when I can no longer
see the light.</p>
<p>Take care,<br />
Prot</p>" nil nil "6254b6eb4350b077c0f8c7e0733dc358") (86 (26569 29903 589651 91000) "https://protesilaos.com/news/2025-02-06-vlog-about-first-philosophical-symposium/" "Vlog: about my first philosophical symposium (and video in Greek)" nil "Thu, 06 Feb 2025 00:00:00 +0000" "<p>Yesterday I attended my first philosophical symposium. “Symposium” in
the original Greek sense of “drinking together”. The event was held at
a local tavern. I made a brief introduction and then we had an open
discussion that went on until the early morning hours. In this video I
talk about the event and also include the clip I recorded at the
tavern (in Greek).</p>
<hr />
<p><strong>UPDATE 2025-02-08 13:04 +0200:</strong> <a href=\"https://protesilaos.com/news/2025-02-08-translation-first-philosophical-symposium\">I translated what I said at the symposium</a>.</p>" nil nil "6c8946756c063d4ef2637a25c0aec2a0") (85 (26569 29903 589089 970000) "https://protesilaos.com/codelog/2025-02-04-aporetic-fonts-1-0-0/" "Iosevka Comfy is discontinued; hello =?utf-8?B?4oCYQXBvcmV0aWPigJk=?= fonts" nil "Tue, 04 Feb 2025 00:00:00 +0000" "<p>I am discontinuing the development of the <em>Iosevka Comfy</em> fonts,
effective immediately. My new fonts are called <em>Aporetic</em> and are the
successor to my earlier project.</p>
<p>Aporetic fonts:</p>
<ul>
<li>Git repository: <a href=\"https://github.com/protesilaos/aporetic\">https://github.com/protesilaos/aporetic</a>.</li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/aporetic-fonts-pictures\">https://protesilaos.com/emacs/aporetic-fonts-pictures</a></li>
<li>Backronym: Aporetic’s Predecessor Objects’ Reserved Eponym Truly Included “Comfy”.</li>
</ul>
<p>Iosevka Comfy:</p>
<ul>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/iosevka-comfy\">https://github.com/protesilaos/iosevka-comfy</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/iosevka-comfy\">https://gitlab.com/protesilaos/iosevka-comfy</a></li>
</ul>
</li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/iosevka-comfy-pictures\">https://protesilaos.com/emacs/iosevka-comfy-pictures</a></li>
<li>Backronym: Iosevka … Could Only Modify a Font, Yes.</li>
</ul>
<h2>Legal reason for the change</h2>
<p>“Iosevka” is a reserved name. I had not realised this until I reread
the SIL Open Font License, Version 1.1, specifically:</p>
<blockquote>
<p>3  No Modified Version of the Font Software may use the Reserved
Font Name(s) unless explicit written permission is granted by the
corresponding Copyright Holder. This restriction only applies to
the primary font name as presented to the users.</p>
</blockquote>
<h2>Technical reasons for the change</h2>
<p>I wanted to change the names of the font families to make them more
intuitive. Instead of something like “Iosevka Comfy Motion Duo” I now
have “Aporetic Serif”. The full list is further below.</p>
<p>I also had to reduce the number of variants and font weights to both
(i) streamline what I am offering and (ii) make it possible to build
the fonts on my computer.</p>
<h2>Changes relative to Iosevka Comfy</h2>
<p>The fonts are these:</p>
<table>
<thead>
<tr>
<th>Current name</th>
<th>Old name</th>
</tr>
</thead>
<tbody>
<tr>
<td>Aporetic Sans</td>
<td>Iosevka Comfy Duo</td>
</tr>
<tr>
<td>Aporetic Serif</td>
<td>Iosevka Comfy Motion Duo</td>
</tr>
<tr>
<td>Aporetic Sans Mono</td>
<td>Iosevka Comfy</td>
</tr>
<tr>
<td>Aporetic Serif Mono</td>
<td>Iosevka Comfy Motion</td>
</tr>
</tbody>
</table>
<p>I no longer provide “fixed” and “wide” variants.</p>
<p>All glyphs are the same as before except for the zero (<code class=\"language-plaintext highlighter-rouge\">0</code>), which is
now always rendered with a forward slash and a wider body. The reason
for this change is that the narrow oval shape could be mistaken for a
Greek theta (<code class=\"language-plaintext highlighter-rouge\">θ</code>).</p>
<p>Font weights are also reduced to just <code class=\"language-plaintext highlighter-rouge\">regular</code> and <code class=\"language-plaintext highlighter-rouge\">bold</code>.</p>
<h2>Why “aporetic”</h2>
<p>It is a nice Greek word and no other fonts with this name exist.</p>" nil nil "9291d36c18cf39cadeda8921041dab9f") (84 (26569 29903 588842 460000) "https://protesilaos.com/news/2025-02-02-first-philosophical-symposium/" "Looking ahead to my first philosophical symposium" nil "Sun, 02 Feb 2025 00:00:00 +0000" "<p>This week I will attend my first philosophical symposium. This is a
<em>symposium</em> in the original sense of the word: joint drinking. The
event will be held at a local tavern. All the usual food and drinks
will be on offer.</p>
<p>The owner of the tavern sees this as both a business opportunity to
draw customers on a weekday and as a way to promote culture. From my
side, I appreciate the chance to be close to people and to do
philosophy face-to-face with them. This is how I like it because I
strongly believe that philosophy is not limited to academics or
elitist circles: it belongs to the people and thus the tavern is among
the best places to talk in public.</p>
<p>I will provide a brief introduction and then give the stage to an open
discussion. We do not yet know how this will develop, though the idea
is for people to raise their points and/or ask questions. The rest
will follow from there. I am confident everything will be fine. If
people do not have anything to say, I will happily elaborate further
on my topic.</p>
<p>My talk will be done <em>alla prima</em>, as usual (<a href=\"https://protesilaos.com/books/2024-10-15-alla-prima-method-productivity/\">My ‘alla prima’ method
of creativity</a>),
and shall be in Greek. I expect to record my opening speech, though I
do not know if it will be possible, given that I wish to respect the
privacy of the attendants (plus my phone is not good in low light
environments). At any rate, this will be an introduction to what
philosophy is at the basic level and why the symposium—in its
original sense—is an excellent way to put to practice the notion
that nobody is special.</p>
<p>So what is philosophy? In short, it is to be a friend of wisdom: to
seek it and to cherish it. This is done through deliberate deeds and
attempts at clarifying one’s thoughts. It is about leading a life that
is thoughtful and consistent. The person who wants to be a friend of
wisdom has the courage to think on their own; the courage to proceed
through trial and error; the courage to admit to their mistakes and to
learn from others. This is why the community is essential: other
people help us understand the world and our thoughts, as well as to
identify flaws in our judgement.</p>
<p>The symposium helps people learn from each other. I strongly believe
that courage is contagious as is any virtue that a person embodies
through conduct. People follow the truth of the deed. At the symposium
we all sit next to each other, have access to the same food and
drinks, and enjoy an equal sitting at the table. We can learn from
each other and together muster the strength to push on with our lives,
striving for excellence in every field of endeavour.</p>
<p>At the tavern we get to hear about the life experiences of our peers.
Everybody faces specific challenges and they must all apply practical
reason to achieve their goals. Just as the person who runs the tavern
tries to serve the best possible meal, so must each of us push their
art to its completion, to the best of one’s abilities. By holding such
meetings, we offer ourselves the chance to talk about the general
themes that are common to the multitude of our otherwise diverse
affairs. Though we not only draw inspiration and try to improve on
what we have, but we also come closer as people. There is a stronger
sense of camaraderie between us, which engenders respect, and
cultivates humility.</p>
<p>If I manage to record the event or at least the opening part of it, I
will post the video here. Otherwise, I will give the same talk in
English (well, “the same” is figurative given <em>alla prima</em>).</p>" nil nil "30b3856bf6484e66ca744d31ad57ee1b") (83 (26569 29903 588595 970000) "https://protesilaos.com/news/2025-02-01-hut-moving-soil-philosophy-entitlement/" "Vlog: moving soil at the hut and philosophy about entitlement" nil "Sat, 01 Feb 2025 00:00:00 +0000" "<p>In this 27-minute video I do some work in front of the hut. I am
moving soil, which I will then redistribute to some parts that need to
be reinforced. I am also planting a new walnut tree. While doing this,
I philosophise about the sense of entitlement and the feeling we often
have that we deserve stuff as a reward for our actions. I explain why
I think this is misplaced and how we can be more balanced in our
outlook by taking the world as-is instead of the way we wish it to be.</p>" nil nil "9ae37ea647b171a9b7c762b34e8fbb51") (82 (26569 29903 588498 102000) "https://protesilaos.com/codelog/2025-01-28-emacs-altcaps-1-3-0/" "Emacs: aLtCaPs version 1.3.0" nil "Tue, 28 Jan 2025 00:00:00 +0000" "<p>This version does not include any user-facing changes. I made some
internal refinements and ensured everything works as expected. Just
use the sample configuration to get started:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">altcaps</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:bind</span>
<span class=\"p\">(</span><span class=\"s\">\"C-x C-a\"</span> <span class=\"o\">.</span> <span class=\"nv\">altcaps-dwim</span><span class=\"p\">)</span>
<span class=\"ss\">:config</span>
<span class=\"c1\">;; Optionally force letter casing for certain characters (for legibility).</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">altcaps-force-character-casing</span>
<span class=\"o\">'</span><span class=\"p\">((</span><span class=\"s\">\"i\"</span> <span class=\"o\">.</span> <span class=\"nv\">downcase</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"l\"</span> <span class=\"o\">.</span> <span class=\"nv\">upcase</span><span class=\"p\">))))</span>
</code></pre></div></div>
<h2>About <code class=\"language-plaintext highlighter-rouge\">altcaps</code></h2>
<p>The <code class=\"language-plaintext highlighter-rouge\">altcaps</code> package is a small, focused-in-scope tool that helps
users communicate mockery or sarcasm effectively.  It does this by
alternating the letter casing of characters in the words it affects.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">altcaps</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/altcaps\">https://protesilaos.com/emacs/altcaps</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/altcaps-changelog\">https://protesilaos.com/emacs/altcaps-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/altcaps\">https://github.com/protesilaos/altcaps</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/altcaps\">https://gitlab.com/protesilaos/altcaps</a></li>
</ul>
</li>
<li>Backronyms: Alternating Letters Transform Casual Asides to Playful
Statements.  ALTCAPS Lets Trolls Convert Aphorisms to Proper
Shitposts.</li>
</ul>" nil nil "84448e6846bd65801c681f2d3b9ef684") (81 (26569 29903 588327 147000) "https://protesilaos.com/codelog/2025-01-26-emacs-organise-init/" "Emacs: organise your init file (outline-minor-mode or Org literate config)" nil "Sun, 26 Jan 2025 00:00:00 +0000" "<p>In this 25-minute video I show two ways to organise your Emacs init.el
file. One approach is to keep editing the code in Emacs Lisp and to
leverage the “outline”, while the other is to use a literate Org file
whose code blocks will be “tangled” to the init.el. I explain all the
technicalities and show examples. More resources:</p>
<ul>
<li>Basic and capable Emacs configuration: <a href=\"https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/\">https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/</a></li>
<li>Modern minibuffer (Vertico, Consult, etc.): <a href=\"https://protesilaos.com/codelog/2024-02-17-emacs-modern-minibuffer-packages/\">https://protesilaos.com/codelog/2024-02-17-emacs-modern-minibuffer-packages/</a></li>
<li>Ediff basics: <a href=\"https://protesilaos.com/codelog/2023-11-17-emacs-ediff-basics/\">https://protesilaos.com/codelog/2023-11-17-emacs-ediff-basics/</a></li>
<li>My Emacs configuration:
<ul>
<li>Web page: <a href=\"https://protesilaos.com/emacs/dotemacs\">https://protesilaos.com/emacs/dotemacs</a></li>
<li>Source: <a href=\"https://github.com/protesilaos/dotfiles\">https://github.com/protesilaos/dotfiles</a></li>
<li>Video explanation: <a href=\"https://protesilaos.com/codelog/2023-12-18-emacs-org-advanced-literate-conf/\">https://protesilaos.com/codelog/2023-12-18-emacs-org-advanced-literate-conf/</a></li>
</ul>
</li>
</ul>" nil nil "7a5a9401826eb6456eecd61a5b27e3fe") (80 (26569 29903 588190 646000) "https://protesilaos.com/poems/2025-01-25-mars/" "Mars (my poem)" nil "Sat, 25 Jan 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Some homeland embraced me
To be loved and appreciated
special are those moments
for a simple man to ignore
\"Take this rifle and uniform
We shall plant a flag on Mars\"
I heed the call of duty
This country loves me now
To fight a war for its sake
so that they may colonise Earth
</code></pre></div></div>" nil nil "1d7059ad460e88234d454363b0e53f5c") (79 (26569 29903 588094 402000) "https://protesilaos.com/codelog/2025-01-25-emacs-show-font-0-2-0/" "Emacs: show-font version 0.2.0" nil "Sat, 25 Jan 2025 00:00:00 +0000" "<p>This package lets you preview a font inside of Emacs. It does so in
three ways:</p>
<ul>
<li>Prompt for a font on the system and display it in a buffer.</li>
<li>List all known fonts in a buffer, with a short preview for each.</li>
<li>Provide a major mode to preview a font whose file is among the
installed ones.</li>
</ul>
<p>Sources:</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">show-font</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/show-font\">https://protesilaos.com/emacs/show-font</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/show-font-changelog\">https://protesilaos.com/emacs/show-font-changelog</a></li>
<li>Git repository: <a href=\"https://github.com/protesilaos/show-font\">https://github.com/protesilaos/show-font</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/codelog/2024-09-10-emacs-show-font-0-1-0/\">https://protesilaos.com/codelog/2024-09-10-emacs-show-font-0-1-0/</a></li>
<li>Backronym: Should Highlight Only With the Family Of the Named Typeface.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 0.2.0 on 2025-01-25</h2>
<p>This version includes quality-of-life refinements.</p>
<h3>Show fonts in a tabulated listing</h3>
<p>The command <code class=\"language-plaintext highlighter-rouge\">show-font-tabulated</code> will produce a listing of font
families and their preview that uses the built-in tabulated interface.
This interface is the same as the one used by <code class=\"language-plaintext highlighter-rouge\">M-x list-packages</code>.
Users can sort fonts by font family name (move point to the given
column and type <code class=\"language-plaintext highlighter-rouge\">S</code> or call <code class=\"language-plaintext highlighter-rouge\">M-x tabulated-list-sort</code>).</p>
<p>When <code class=\"language-plaintext highlighter-rouge\">show-font-tabulated</code> is called with a prefix argument (<code class=\"language-plaintext highlighter-rouge\">C-u</code> by
default), it prompts for a string or regular expression. It then shows
only the font families matching the given input.</p>
<h3>Limit font listing using a regular expression</h3>
<p>The command <code class=\"language-plaintext highlighter-rouge\">show-font-list</code> which we already had in version 0.1.0 is
like the <code class=\"language-plaintext highlighter-rouge\">show-font-tabulated</code>, but uses a bespoke buffer where each
font and its preview are shown one after the other. Now it also
accepts an optional prefix argument to limit the list to only the
matching fonts.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">show-font-display-buffer-action-alist</code> controls buffer placement</h3>
<p>The preview buffers we use will now conform with the value of the new
user option <code class=\"language-plaintext highlighter-rouge\">show-font-display-buffer-action-alist</code>. This is a more
advanced feature, due to how <code class=\"language-plaintext highlighter-rouge\">display-buffer</code> works, so you may want
to check the video I did recently about controlling where buffers are
displayed: <a href=\"https://protesilaos.com/codelog/2024-02-08-emacs-window-rules-display-buffer-alist/\">https://protesilaos.com/codelog/2024-02-08-emacs-window-rules-display-buffer-alist/</a>.</p>
<p>The default value of <code class=\"language-plaintext highlighter-rouge\">show-font-display-buffer-action-alist</code> will show
the buffer at the bottom of the frame.</p>" nil nil "31c13f870cd29d60cfef1b54c58bba83") (78 (26569 29903 587868 248000) "https://protesilaos.com/codelog/2025-01-24-emacs-beframe-1-3-0/" "Emacs: beframe version 1.2.0" nil "Fri, 24 Jan 2025 00:00:00 +0000" "<p><code class=\"language-plaintext highlighter-rouge\">beframe</code> enables a frame-oriented Emacs workflow where each frame has
access only to the list of buffers visited therein. In the interest of
brevity, we call buffers that belong to frames “beframed”.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">beframe</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/beframe\">https://protesilaos.com/emacs/beframe</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/beframe-changelog\">https://protesilaos.com/emacs/beframe-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/beframe\">https://github.com/protesilaos/beframe</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/beframe\">https://gitlab.com/protesilaos/beframe</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2023-02-28-emacs-beframe-demo/\">https://protesilaos.com/codelog/2023-02-28-emacs-beframe-demo/</a></li>
<li>Backronym: Buffers Encapsulated in Frames Realise Advanced
Management of Emacs.</li>
</ul>
<p>Below are the release notes</p>
<hr />
<h2>Version 1.3.0 on 2025-01-24</h2>
<p>This version contains quality-of-life refinements to an already stable
package.</p>
<h3>Make frame names unique, if needed</h3>
<p>We provide the user option <code class=\"language-plaintext highlighter-rouge\">beframe-rename-function</code>, which will be
called with the new frame when <code class=\"language-plaintext highlighter-rouge\">beframe-mode</code> is enabled. The idea is
to automatically apply a helpful name to the frame that was created.
The default function we use is <code class=\"language-plaintext highlighter-rouge\">beframe-rename-frame</code>, which will do
the right thing to get a suitable name. To make this even more robust,
we now disambiguate equal frame names by appending a number to their
name. So instead of having two or more frames all named <code class=\"language-plaintext highlighter-rouge\">hello</code>, you
get <code class=\"language-plaintext highlighter-rouge\">hello</code>, <code class=\"language-plaintext highlighter-rouge\">hello<2></code>, and so on.</p>
<p>Thanks to Vedang Manerikar for the original contribution in pull
request 12: <a href=\"https://github.com/protesilaos/beframe/pull/12\">https://github.com/protesilaos/beframe/pull/12</a>. The
change is within the ~15-line limit, meaning that Vedang does not need
to assign copyright to the Free Software Foundation (though I believe
the paperwork is done anyway). I made some further changes on top.</p>
<p>Remember that you can make certain commands automatically generate a
frame and run therein by adding them to the list of <code class=\"language-plaintext highlighter-rouge\">beframe-functions-in-frames</code>.
A common use-case is to do this for switching to a new project, hence:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">beframe-functions-in-frames</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">project-prompt-project-dir</span><span class=\"p\">))</span>
</code></pre></div></div>
<h3>Use the optional <code class=\"language-plaintext highlighter-rouge\">beframe-transient</code> instead of the prefix key map</h3>
<p>We provide a regular prefix key map where Beframe commands are bound
to. Users can access all the commands via a prefix key, such as with:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">define-key</span> <span class=\"nv\">global-map</span> <span class=\"p\">(</span><span class=\"nv\">kbd</span> <span class=\"s\">\"C-c b\"</span><span class=\"p\">)</span> <span class=\"nf\">#'</span><span class=\"nv\">beframe-prefix-map</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>Users who prefer a more graphical interface can instead rely on the
new <code class=\"language-plaintext highlighter-rouge\">beframe-transient</code>. It is the same principle as the prefix key
map:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">define-key</span> <span class=\"nv\">global-map</span> <span class=\"p\">(</span><span class=\"nv\">kbd</span> <span class=\"s\">\"C-c b\"</span><span class=\"p\">)</span> <span class=\"nf\">#'</span><span class=\"nv\">beframe-transient</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>[ The difference between the two interfaces is small when using the
<code class=\"language-plaintext highlighter-rouge\">which-key</code> package. ]</p>
<h3>The buffer prompt clarifies that it is “Beframed”</h3>
<p>While using the <code class=\"language-plaintext highlighter-rouge\">beframe-mode</code>, the standard <code class=\"language-plaintext highlighter-rouge\">read-buffer-function</code> is
set to a Beframe function that prompts for a buffer. The idea is to
filter the list of buffers to only show those that are specific to the
current/given frame. To make this more clear, the text of the prompt
now has <code class=\"language-plaintext highlighter-rouge\">[Beframed]</code> prepended to it.</p>
<p>I do not think we need a user option for this, though I am happy to
reconsider if there is a good reason for it.</p>
<h3>Miscellaneous</h3>
<ul>
<li>
<p>Fixed the function aliases of the “assume” and “unassume” commands
that take a regular expression as input to perform their operation.
The old aliases where written in the wrong way, such that they were
rendering the original function void.</p>
</li>
<li>
<p>Bound a few more commands to the <code class=\"language-plaintext highlighter-rouge\">beframe-prefix-map</code>. Everything
should now be there, to improve discoverability (remember that <code class=\"language-plaintext highlighter-rouge\">C-h</code>
after an incomplete key sequence will produce a Help buffer that
lists all the keys+commands which extend the given key sequence).</p>
</li>
<li>
<p>The name of the <code class=\"language-plaintext highlighter-rouge\">beframe-buffer-menu</code> buffer is more descriptive.
The command <code class=\"language-plaintext highlighter-rouge\">beframe-buffer-menu</code> puts the beframed list of buffers
in a buffer. Its old naming scheme was <code class=\"language-plaintext highlighter-rouge\">*Buffer list for NAME*</code>,
where <code class=\"language-plaintext highlighter-rouge\">NAME</code> is the name of the frame. Whereas now it is <code class=\"language-plaintext highlighter-rouge\">*Buffer
list for ‘NAME’ frame*</code>.</p>
</li>
<li>
<p>Same as above for the frame-specific scratch buffers. Those are
generated for new frames when <code class=\"language-plaintext highlighter-rouge\">beframe-create-frame-scratch-buffer</code>
is non-nil (the default) and <code class=\"language-plaintext highlighter-rouge\">beframe-mode</code> is enabled.</p>
</li>
</ul>" nil nil "1f74884f4d17b31b9518a01102dcf9fa") (77 (26569 29903 586550 76000) "https://protesilaos.com/interpretations/2025-01-23-litaenas-garden-of-eden/" "Interpretation of =?utf-8?Q?=E2=80=9CI?= had the garden of =?utf-8?Q?Eden=E2=80=9D?= by Yiannis Litaenas" nil "Thu, 23 Jan 2025 00:00:00 +0000" "<p>For this entry, I have picked yet another masterpiece from the
collection of Thanasis Papakonstantinou. This songwriter’s work is
defined by the striking instrumentation and thought-provoking lyrics.
<em>I had the garden of Eden</em> is no exception. The original
interpretation of this song is done by Socratis Malamas, whom I adore.
Yet I still prefer this specific cover by Yiannis Litaenas:
<a href=\"https://www.youtube.com/watch?v=coRI92AbLR0\">https://www.youtube.com/watch?v=coRI92AbLR0</a>.</p>
<p>Below I provide the original lyrics, my faithful translation of them,
and some further commentary. As I have covered the aforementioned
artists before, here are the relevant entries:</p>
<ul>
<li><a href=\"https://protesilaos.com/interpretations/2022-06-29-malamas-letter/\">Letter</a> (2022-06-29)</li>
<li><a href=\"https://protesilaos.com/interpretations/2022-08-28-karapataki-mystics/\">The mystics of the desert</a> (2022-08-28)</li>
<li><a href=\"https://protesilaos.com/interpretations/2024-11-04-thanasis-papakonstantinou-talk-about-you/\">Talk about you</a> (2024-11-04)</li>
</ul>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Είχα τον κήπο της Εδέμ
Ερμηνεία:  Γιάννης Λίταινας
Στίχοι:    Θανάσης Παπακωνσταντίνου
Μουσική:   Θανάσης Παπακωνσταντίνου
Θέλετε, δέντρα, ανθίσετε, θέλετε μαραθείτε
Δε σας ποτίζω, δέντρα μου, και μη με αδικείτε
Όσο νερό μ' αναλογεί το ρίχνω σε μια γλάστρα
αχόρταγη που με κοιτά μ' αναίδεια στα μάτια
«Ρίξε δροσιά, ρίξε νερό, το χώμα να νοτίσει
ο σπόρος που 'χω μέσα μου να πιει και να ξυπνήσει
Να βγάλει ρίζες, να γενεί μία περικοκλάδα
ένα αγρίμι της ζωής, μια ξέφρενη Μαινάδα
Που θ' απλωθεί σ' όλη τη γη και, αφού τηνέ σκεπάσει
να κάνει ντου στα σωθικά εκείνων που 'χουν χάσει
φίλους, αδέρφια, και παιδιά κι εκεί ανθούς να βγάλει
Γύρη να πέσει στις καρδιές, να τις γλυκάνει πάλι»
Τέτοια μου λέει η άτιμη η γλάστρα και λυγίζω
Δάκρυ, νερό, δάκρυ, νερό, ο δόλιος, την ποτίζω
Ανάθεμά σε, πήλινο, και συ, παλιοβοτάνι
Είχα τον κήπο της Εδέμ και τώρα δε μου φτάνει
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>I had the garden of Eden
Singer:  Yiannis Litaenas
Lyrics:  Thanasis Papakonstantinou
Music:   Thanasis Papakonstantinou
Trees, blossom if you will, wither if you will
I am not watering you, my trees, and do not misjudge me
Whatever water is allotted to me I pour into a flower pot
insatiable it looks at me with disrespect in the eyes
\"Pour freshness, pour water, to soak the soil
the seed I have within me to drink and awaken
To grow roots, to become Morning Glory
a beast of life, a frenzied Maenad
That will extend across the land and once it covers it
to force itself into the hearts of those who have lost
friends, siblings, and children and there to blossom as well
Pollen to fall on the hearts, to sweeten them again\"
It is what this dishonourable flower pot says and I yield
Tear, water, tear, water, poor me, I water it
Curse you, clay pot, and you, damned herb
I had the garden of Eden and now it is not enough
</code></pre></div></div>
<p>The insatiable flower pot represents all these rationalisations we
make whenever we give up on something we have in pursuit of an
alternative that is ostensibly better. It is a flower because those
tend to look pretty upon first sight, even when they are not benign
for us.</p>
<p>We are easily swayed by first impressions, which then colour our
judgement. We are willing to fill in the blanks and to make belief
about how nice everything shall be. We make sacrifices and go to great
lengths to accommodate the demands of this new fixation of ours. In
the process, we ignore the inherent worth of the world we had while we
valorise a figment of imagination; an unrealistic figure we have made
out some phenomenon.</p>
<p>Such is a propensity we have in our relations with other people,
objects, or fields of endeavour. There is a fear of missing out, but
also an implicit sense of entitlement and desert (as in “deserve”, not
the landscape). We act out of that fear because we fundamentally
believe that we ought to get some better deal in our life.</p>
<p>There are times this is justified, when change is the best course of
action. Though the sense of adventure is suspicious when it happens
systematically, when nothing quite sticks and there is no longer-term
vision to how things are in our life. If we are always in pursuit of
novelty, we are more likely addicted to the immediate dopamine rush we
get out of whatever discovery rather than genuinely trying to improve
our condition.</p>
<p>Rationalisation is but a fig leaf we use to cover matters we have not
thought through. “Oh, once I switch to THAT, I will solve all my
problems…” How many times have we said this, only to repeat it
shortly afterwards? At its core, this is a matter of not coming to
terms with who we are and not trying to work with what is allotted
to us by the fates. We would rather tell ourselves the lie that there
is an easy way out, that there exists a shortcut on the path to
excellence, and that we shall implement this “life hack” because of
how much smarter we are than everybody else.</p>
<p>All such plans are futile. They can only result in failure, for they
do not represent a potential in our life. Excellence is such exactly
because it is hard to achieve. Commitment is difficult and at times
inconvenient, but also uniquely rewarding and stabilising, precisely
because it is a bond that strengthens the more time and sincere effort
is invested into it.</p>
<p>We must then have the decency to reflect on our actions or to ask
others who know us to help accordingly. The goal is to call out
rationalisations for what they are and to make small steps towards
appreciating the little things all around us; those that may no longer
have any “wow” factor, but continue to have value for us.</p>
<p>When we consider everything replaceable, we are doomed to persistent
discontent, for nothing ever fulfills us.</p>" nil nil "4f6bb160bbd834a005e5a46781094d93") (76 (26569 29903 586157 306000) "https://protesilaos.com/books/2025-01-18-philosophy-courage-be-yourself/" "Philosophy: the courage to be yourself" nil "Sat, 18 Jan 2025 00:00:00 +0000" "<p>In this 30-minute video, I talk about the disposition of the
philosopher (“friend of wisdom”), which is about being courageous in
thinking for oneself and in speaking one’s mind. I comment on how this
attitude is what matters instead of how smart or talented one is.</p>" nil nil "5e2e82a8d5bcf8c77a9c0d23a586ac99") (75 (26569 29903 586051 403000) "https://protesilaos.com/codelog/2025-01-16-emacs-org-todo-agenda-basics/" "Emacs: Org todo and agenda basics" nil "Thu, 16 Jan 2025 00:00:00 +0000" "<p>In this ~45-minute video I cover the basics of managing your task list
with Org mode. The idea is to write tasks in a simple file and then
use the Org agenda views to display and filter the tasks you are
interested in. Throughout the video I also comment on relevant points
about the overall workflow. The basic configuration I show in the
video is below:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"c1\">;; These are the defaults we want to change.  We do so in the</span>
<span class=\"c1\">;; following `use-package' declaration.</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-M-RET-may-split-line</span> <span class=\"o\">'</span><span class=\"p\">((</span><span class=\"nv\">default</span> <span class=\"o\">.</span> <span class=\"no\">t</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-insert-heading-respect-content</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-log-done</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-log-into-drawer</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">org</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span> <span class=\"c1\">; do not try to install it as it is built-in</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-M-RET-may-split-line</span> <span class=\"o\">'</span><span class=\"p\">((</span><span class=\"nv\">default</span> <span class=\"o\">.</span> <span class=\"no\">nil</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-insert-heading-respect-content</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-log-done</span> <span class=\"ss\">'time</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-log-into-drawer</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-directory</span> <span class=\"s\">\"/tmp/testing-org/\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-agenda-files</span> <span class=\"p\">(</span><span class=\"nb\">list</span> <span class=\"nv\">org-directory</span><span class=\"p\">))</span>
<span class=\"c1\">;; Learn about the ! and more by reading the relevant section of the</span>
<span class=\"c1\">;; Org manual.  Evaluate: (info \"(org) Tracking TODO state changes\")</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">org-todo-keywords</span>
<span class=\"o\">'</span><span class=\"p\">((</span><span class=\"nc\">sequence</span> <span class=\"s\">\"TODO(t)\"</span> <span class=\"s\">\"WAIT(w!)\"</span> <span class=\"s\">\"|\"</span> <span class=\"s\">\"CANCEL(c!)\"</span> <span class=\"s\">\"DONE(d!)\"</span><span class=\"p\">))))</span>
</code></pre></div></div>" nil nil "f1ed5614fc34a1df2d59d328a00f2f01") (74 (26569 29903 585847 154000) "https://protesilaos.com/news/2025-01-14-hut-manual-labour-philosophy-talk/" "Vlog: manual labour at the hut (and talk about consistency, freedom, fast-paced life, etc.)" nil "Tue, 14 Jan 2025 00:00:00 +0000" "<p>In this ~46-minute video, I show some of the infrastructure work I am
doing at the back side of the hut. I have been working on this part of
the land for almost a year now, having filled large parts of land with
soil to prevent erosion. In the video I also make several
philosophical points about “small wins”, consistency as the key to
reaching long-term goals, freedom and responsibility as two sides of
the same coin, not giving up in the face of difficulty or failure, and
the value of patience.</p>" nil nil "e5f0caae03588ebbe7955e5fcbb7c3f2") (73 (26569 29903 585724 945000) "https://protesilaos.com/codelog/2025-01-11-emacs-denote-alphanumeric-sequences/" "Emacs: denote-sequence.el will also support alphanumeric sequences" nil "Sat, 11 Jan 2025 00:00:00 +0000" "<p>In a video from 2025-01-03 (<a href=\"https://protesilaos.com/codelog/2025-01-03-denote-sequence-demo/\">sequence notes with Denote
(denote-sequence.el)</a>),
I introduced the new optional extension for Denote, which streamlines
the creation of file names with an inherent hierarchical relationship.
This is expressed as a numeric sequence, where each level of depth is
delimited by the equals sign. So <code class=\"language-plaintext highlighter-rouge\">1=1=2</code> refers to the second child of
the first child of the parent note <code class=\"language-plaintext highlighter-rouge\">1</code>.</p>
<p>A popular sequencing scheme is to combine numbers with letters
(Luhmann-style folgezettel). This alphanumeric expression is more
compact, though it might also be a bit harder to reason about. For
example, <code class=\"language-plaintext highlighter-rouge\">1a2</code> is the same as <code class=\"language-plaintext highlighter-rouge\">1=1=2</code>, which looks clean, but it gets
tricky once you reach <code class=\"language-plaintext highlighter-rouge\">1za5zx</code> which is equivalent to <code class=\"language-plaintext highlighter-rouge\">1=27=5=50</code>.</p>
<p>Unlike the numeric scheme where there is an explicit depth delimiter
(the <code class=\"language-plaintext highlighter-rouge\">=</code>), the alphanumeric scheme establishes depth by alternating
between numbers and letters. Thus, <code class=\"language-plaintext highlighter-rouge\">1a2</code> and <code class=\"language-plaintext highlighter-rouge\">1=1=2</code> are both three
levels of depth.</p>
<p>I am in the process of giving users the option. They will be able to
pick their sequencing scheme and then produce notes, re-parent them,
and so on, with Denote taking care to use/generate the correct
sequence each time.  In principle, the two schemes are interoperable
and there will be relevant commands to switch between them.</p>
<p>[ <strong>UPDATE 2025-01-12 11:25 +0200:</strong> Now merged into <code class=\"language-plaintext highlighter-rouge\">main</code> and
deleted the feature branch. ]</p>
<p>Below is the commit I worked on today. For now it lives in the <code class=\"language-plaintext highlighter-rouge\">alphanumeric-sequence-extension</code>
branch: <a href=\"https://github.com/protesilaos/denote/tree/alphanumeric-sequence-extension\">https://github.com/protesilaos/denote/tree/alphanumeric-sequence-extension</a>.
I will merge it into <code class=\"language-plaintext highlighter-rouge\">main</code> as soon as I am done with the user-facing
parts, which I will probably do tomorrow or early next week. If you
are interested to try out what is now available, please check the
source code and let me know your thoughts.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>commit 43bd30e6ebd9e948a390d11bc3ec84cf80e74576
Author: Protesilaos Stavrou <info@protesilaos.com>
Date:   Sat Jan 11 19:37:56 2025 +0200
Make the groundwork for alphanumeric (Luhmann) sequences in denote-sequence.el
The idea is to support both numeric and alphanumeric sequencing
schemes, as documented in the new user option 'denote-sequence-scheme'.
We now have the tools to correctly split, join, increment, and convert
input accordingly, such that we can, for example, accurately produce a
child of sequence \"1a2\" (we could already do that for numeric
sequences).
What is covered herein is just the groundwork. I still need to extend
the helper functions which directly support the creation of new
parent, child, or sibling sequences. While this still is a lot of
work, the hard part is now done.
denote-sequence.el   | 338 +++++++++++++++++++++++++++++++++++++++------------
tests/denote-test.el |  34 +++++-
2 files changed, 291 insertions(+), 81 deletions(-)
</code></pre></div></div>
<h2>About Denote</h2>
<p>Denote is a simple note-taking tool for Emacs.  It is based on the idea
that notes should follow a predictable and descriptive file-naming
scheme.  The file name must offer a clear indication of what the note is
about, without reference to any other metadata.  Denote basically
streamlines the creation of such files while providing facilities to
link between them.</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a consistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "cc9f7aa1f0f1f59ae2c34962c7c18b4d") (72 (26569 29903 585349 71000) "https://protesilaos.com/codelog/2025-01-09-emacs-oxford-calendar-weeks/" "Emacs: custom Oxford University calendar weeks" nil "Thu, 09 Jan 2025 00:00:00 +0000" "<p>Over at Oxford University they use their own calendaring scheme to
label the terms and weeks of their school year. Why? Because they can!
And why would some guy in the mountains of Cyprus care? Because it’s
fun to write Emacs Lisp!</p>
<p>The academic year is divided into three periods of teaching and three
of vacation. The latter have no special names, while the former are
called “Michaelmas”, “Hilary”, and “Trinity”. Each teaching term
consists of a few weeks whose numbering starts from <code class=\"language-plaintext highlighter-rouge\">1</code>.</p>
<p>With some custom code, we can configure the Emacs <code class=\"language-plaintext highlighter-rouge\">M-x calendar</code> to
tell us (i) which term we are in for the current month of the Oxford
academic year, if any, (ii) which term and week number we are in, if
any, and (iii) which is the standard week number.</p>
<h2>The generic ‘M-x calendar’ 😴</h2>
<p>Here is how it looks without any customisations. Serviceable, but not
conducive to the Oxford culture.</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-01-09-emacs-calendar-generic.png\"><img alt=\"Generic Emacs calendar\" src=\"https://protesilaos.com/assets/images/attachments/2025-01-09-emacs-calendar-generic.png\" /></a></p>
<h2>The Oxford-friendly ‘M-x calendar’ 🎓</h2>
<p>It is busier, for sure, though this is what you get for being at
Oxford. Notice that when there is nothing Oxford-related, we just show
the regular calendar information.</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2025-01-09-emacs-calendar-oxford.png\"><img alt=\"Oxford Emacs calendar\" src=\"https://protesilaos.com/assets/images/attachments/2025-01-09-emacs-calendar-oxford.png\" /></a></p>
<h2>The code</h2>
<p><strong>UPDATE 2025-01-09 18:36 +0200:</strong> I revised a few lines of code to
(i) work with either Sunday or Monday as the first day of the week,
(ii) not show any Oxford week beyond the years specified in
<code class=\"language-plaintext highlighter-rouge\">prot-oxford-dates</code>.</p>
<hr />
<p>I wrote this over the course of a few hours. It may be refined here
and there, but I think it is already good enough. The only major
improvement would be to implement the formula that Oxford uses to
derive their dates. As I do not know it, the <code class=\"language-plaintext highlighter-rouge\">prot-oxford-dates</code> have
to be updated manually each year.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"c1\">;; NOTE 2025-01-09: Perhaps there is some formula to always get the</span>
<span class=\"c1\">;; dates, but I am not aware of it.  As such, these dates need to be</span>
<span class=\"c1\">;; updated at the start of each school year.</span>
<span class=\"c1\">;;</span>
<span class=\"c1\">;; Source: <https://www.ox.ac.uk/about/facts-and-figures/dates-of-term>.</span>
<span class=\"p\">(</span><span class=\"nb\">defvar</span> <span class=\"nv\">prot-oxford-dates</span>
<span class=\"o\">'</span><span class=\"p\">((</span><span class=\"nv\">michaelmas</span>  <span class=\"p\">(</span><span class=\"mi\">10</span> <span class=\"mi\">13</span> <span class=\"mi\">2024</span><span class=\"p\">)</span>  <span class=\"p\">(</span><span class=\"mi\">12</span> <span class=\"mi\">7</span> <span class=\"mi\">2024</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">hilary</span>      <span class=\"p\">(</span><span class=\"mi\">1</span>  <span class=\"mi\">19</span> <span class=\"mi\">2025</span><span class=\"p\">)</span>  <span class=\"p\">(</span><span class=\"mi\">3</span> <span class=\"mi\">15</span> <span class=\"mi\">2025</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">trinity</span>     <span class=\"p\">(</span><span class=\"mi\">4</span>  <span class=\"mi\">27</span> <span class=\"mi\">2025</span><span class=\"p\">)</span>  <span class=\"p\">(</span><span class=\"mi\">6</span> <span class=\"mi\">21</span> <span class=\"mi\">2025</span><span class=\"p\">)))</span>
<span class=\"s\">\"Alist of Oxford calendar terms with start and end date.
Each element is of the form (NAME START END), where NAME is the name of
the term, as a symbol, START is the start date and END is the end date.
START and END each are of the form (month day year), where each element
is a number.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford--get-iso-week</span> <span class=\"p\">(</span><span class=\"nv\">date</span><span class=\"p\">)</span>
<span class=\"s\">\"Get the ISO week of DATE.
DATE is a list of the form (month day year).\"</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"p\">(</span><span class=\"nv\">calendar-date-is-valid-p</span> <span class=\"nv\">date</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">error</span> <span class=\"s\">\"The date `%s' does not conform with `calendar-date-is-valid-p'\"</span> <span class=\"nv\">date</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">car</span>
<span class=\"p\">(</span><span class=\"nv\">calendar-iso-from-absolute</span>
<span class=\"p\">(</span><span class=\"nv\">calendar-absolute-from-gregorian</span> <span class=\"nv\">date</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford--get-term-week</span> <span class=\"p\">(</span><span class=\"nv\">term-start-week</span> <span class=\"nv\">term-end-week</span> <span class=\"nv\">iso-week</span> <span class=\"nv\">prefix</span><span class=\"p\">)</span>
<span class=\"s\">\"Return the number of the Oxford term week or nil.
Determine the week given TERM-START-WEEK and TERM-END-WEEK as Gregorian
week numbers.  Compare ISO-WEEK to them.
If `calendar-week-start-day' is a Monday, then start counting weeks from
0, because Oxford weeks start from Sunday (otherwise, Week 1 includes 6
days before the first Sunday).
When returning the number, concatenate it with PREFIX.  PREFIX is a
single letter string.  A longer PREFIX is trimmed accordingly.\"</span>
<span class=\"p\">(</span><span class=\"nb\">when</span> <span class=\"p\">(</span><span class=\"nb\">and</span> <span class=\"nv\">term-start-week</span> <span class=\"nv\">term-end-week</span> <span class=\"nv\">iso-week</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">offset</span> <span class=\"p\">(</span><span class=\"nv\">pcase</span> <span class=\"nv\">calendar-week-start-day</span>
<span class=\"p\">(</span><span class=\"mi\">0</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"mi\">1</span> <span class=\"mi\">0</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nc\">number</span> <span class=\"p\">(</span><span class=\"nb\">cond</span>
<span class=\"p\">((</span><span class=\"nb\">></span> <span class=\"nv\">iso-week</span> <span class=\"nv\">term-end-week</span><span class=\"p\">)</span>
<span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">((</span><span class=\"nb\">=</span> <span class=\"nv\">term-start-week</span> <span class=\"nv\">iso-week</span><span class=\"p\">)</span>
<span class=\"nv\">offset</span><span class=\"p\">)</span>
<span class=\"p\">((</span><span class=\"nb\"><</span> <span class=\"nv\">term-start-week</span> <span class=\"nv\">iso-week</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">+</span> <span class=\"p\">(</span><span class=\"nb\">-</span> <span class=\"nv\">iso-week</span> <span class=\"nv\">term-start-week</span><span class=\"p\">)</span> <span class=\"nv\">offset</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">pre</span> <span class=\"p\">(</span><span class=\"k\">if</span> <span class=\"p\">(</span><span class=\"nb\">></span> <span class=\"p\">(</span><span class=\"nb\">length</span> <span class=\"nv\">prefix</span><span class=\"p\">)</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">substring</span> <span class=\"nv\">prefix</span> <span class=\"mi\">0</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"nv\">prefix</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">concat</span> <span class=\"nv\">pre</span> <span class=\"p\">(</span><span class=\"nv\">number-to-string</span> <span class=\"nc\">number</span><span class=\"p\">)))))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford--get-term-weeks</span> <span class=\"p\">(</span><span class=\"nv\">term</span> <span class=\"nv\">year</span><span class=\"p\">)</span>
<span class=\"s\">\"Return Oxford TERM start and end week numbers as a list.
Check YEAR to determine if the date is out of bonds of the
`prot-oxford-dates'.\"</span>
<span class=\"p\">(</span><span class=\"nv\">pcase-let*</span> <span class=\"p\">((</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">beg-date</span> <span class=\"o\">,</span><span class=\"nv\">end-date</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">alist-get</span> <span class=\"nv\">term</span> <span class=\"nv\">prot-oxford-dates</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">_</span> <span class=\"o\">,</span><span class=\"nv\">_</span> <span class=\"o\">,</span><span class=\"nv\">term-year</span><span class=\"p\">)</span> <span class=\"nv\">beg-date</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">beg-week</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-iso-week</span> <span class=\"nv\">beg-date</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">end-week</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-iso-week</span> <span class=\"nv\">end-date</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">when</span> <span class=\"p\">(</span><span class=\"nb\">=</span> <span class=\"nv\">term-year</span> <span class=\"nv\">year</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">list</span> <span class=\"nv\">beg-week</span> <span class=\"nv\">end-week</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">prot-oxford-term-indicator</span>
<span class=\"o\">'</span><span class=\"p\">((((</span><span class=\"nc\">class</span> <span class=\"nv\">color</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">min-colors</span> <span class=\"mi\">88</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">background</span> <span class=\"nv\">light</span><span class=\"p\">))</span>
<span class=\"ss\">:foreground</span> <span class=\"s\">\"#224499\"</span><span class=\"p\">)</span>
<span class=\"p\">(((</span><span class=\"nc\">class</span> <span class=\"nv\">color</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">min-colors</span> <span class=\"mi\">88</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">background</span> <span class=\"nv\">dark</span><span class=\"p\">))</span>
<span class=\"ss\">:foreground</span> <span class=\"s\">\"#afc9f3\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"no\">t</span> <span class=\"ss\">:inherit</span> <span class=\"nb\">shadow</span><span class=\"p\">))</span>
<span class=\"s\">\"Face to style the Oxford term indicator.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">prot-oxford-regular-week</span>
<span class=\"o\">'</span><span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:inherit</span> <span class=\"nb\">shadow</span><span class=\"p\">))</span>
<span class=\"s\">\"Face to style the regular week.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford-week</span> <span class=\"p\">(</span><span class=\"nv\">month</span> <span class=\"nv\">day</span> <span class=\"nv\">year</span><span class=\"p\">)</span>
<span class=\"s\">\"Use MONTH DAY YEAR to determine current week.
Derive the Oxford term week based on the `prot-oxford-dates'.\"</span>
<span class=\"p\">(</span><span class=\"nv\">pcase-let*</span> <span class=\"p\">((</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">m-w-beg</span> <span class=\"o\">,</span><span class=\"nv\">m-w-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-weeks</span> <span class=\"ss\">'michaelmas</span> <span class=\"nv\">year</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">h-w-beg</span> <span class=\"o\">,</span><span class=\"nv\">h-w-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-weeks</span> <span class=\"ss\">'hilary</span> <span class=\"nv\">year</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">t-w-beg</span> <span class=\"o\">,</span><span class=\"nv\">t-w-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-weeks</span> <span class=\"ss\">'trinity</span> <span class=\"nv\">year</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">gregorian-week</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-iso-week</span> <span class=\"p\">(</span><span class=\"nb\">list</span> <span class=\"nv\">month</span> <span class=\"nv\">day</span> <span class=\"nv\">year</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">oxford-week</span> <span class=\"p\">(</span><span class=\"nb\">or</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-week</span> <span class=\"nv\">m-w-beg</span> <span class=\"nv\">m-w-end</span> <span class=\"nv\">gregorian-week</span> <span class=\"s\">\"M\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-week</span> <span class=\"nv\">h-w-beg</span> <span class=\"nv\">h-w-end</span> <span class=\"nv\">gregorian-week</span> <span class=\"s\">\"H\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-week</span> <span class=\"nv\">t-w-beg</span> <span class=\"nv\">t-w-end</span> <span class=\"nv\">gregorian-week</span> <span class=\"s\">\"T\"</span><span class=\"p\">)</span>
<span class=\"s\">\"\"</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\" %2s  %2s  \"</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"nv\">oxford-week</span> <span class=\"ss\">'face</span> <span class=\"ss\">'prot-oxford-term-indicator</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"%2s\"</span> <span class=\"nv\">gregorian-week</span><span class=\"p\">)</span> <span class=\"ss\">'face</span> <span class=\"ss\">'prot-oxford-regular-week</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford--get-term-month</span> <span class=\"p\">(</span><span class=\"nv\">term-name</span> <span class=\"nv\">term-start-month</span> <span class=\"nv\">term-end-month</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"s\">\"Return the TERM-NAME of the term month or nil.
Determine the name given TERM-START-MONTH and TERM-END-MONTH as month
numbers.  Compare MONTH to them.\"</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nc\">number</span> <span class=\"p\">(</span><span class=\"nb\">cond</span>
<span class=\"p\">((</span><span class=\"nb\">></span> <span class=\"nv\">month</span> <span class=\"nv\">term-end-month</span><span class=\"p\">)</span>
<span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">((</span><span class=\"nb\">=</span> <span class=\"nv\">term-start-month</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">((</span><span class=\"nb\"><</span> <span class=\"nv\">term-start-month</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">+</span> <span class=\"p\">(</span><span class=\"nb\">-</span> <span class=\"nv\">month</span> <span class=\"nv\">term-start-month</span><span class=\"p\">)</span> <span class=\"mi\">1</span><span class=\"p\">)))))</span>
<span class=\"nv\">term-name</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford--get-months</span> <span class=\"p\">(</span><span class=\"nv\">term</span><span class=\"p\">)</span>
<span class=\"s\">\"Get start and end months of `prot-oxford-dates' TERM as a list.\"</span>
<span class=\"p\">(</span><span class=\"nb\">mapcar</span> <span class=\"nf\">#'</span><span class=\"nb\">car</span> <span class=\"p\">(</span><span class=\"nv\">alist-get</span> <span class=\"nv\">term</span> <span class=\"nv\">prot-oxford-dates</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford-month</span> <span class=\"p\">(</span><span class=\"nv\">year</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"s\">\"Return abbreviated name of MONTH for YEAR.
Append the Oxford term name based on the `prot-oxford-dates'.\"</span>
<span class=\"p\">(</span><span class=\"nv\">pcase-let*</span> <span class=\"p\">((</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">m-beg</span> <span class=\"o\">,</span><span class=\"nv\">m-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-months</span> <span class=\"ss\">'michaelmas</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">h-beg</span> <span class=\"o\">,</span><span class=\"nv\">h-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-months</span> <span class=\"ss\">'hilary</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"o\">`</span><span class=\"p\">(</span><span class=\"o\">,</span><span class=\"nv\">t-beg</span> <span class=\"o\">,</span><span class=\"nv\">t-end</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-months</span> <span class=\"ss\">'trinity</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">oxford-term-name</span> <span class=\"p\">(</span><span class=\"nb\">or</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-month</span> <span class=\"s\">\"Michael\"</span> <span class=\"nv\">m-beg</span> <span class=\"nv\">m-end</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-month</span> <span class=\"s\">\"Hilary\"</span> <span class=\"nv\">h-beg</span> <span class=\"nv\">h-end</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-oxford--get-term-month</span> <span class=\"s\">\"Trinity\"</span> <span class=\"nv\">t-beg</span> <span class=\"nv\">t-end</span> <span class=\"nv\">month</span><span class=\"p\">)</span>
<span class=\"s\">\"\"</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"%s %s %s\"</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"p\">(</span><span class=\"nv\">calendar-month-name</span> <span class=\"nv\">month</span> <span class=\"ss\">:abbreviate</span><span class=\"p\">)</span> <span class=\"ss\">'face</span> <span class=\"ss\">'calendar-month-header</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"%s\"</span> <span class=\"nv\">year</span><span class=\"p\">)</span> <span class=\"ss\">'face</span> <span class=\"ss\">'calendar-month-header</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"nv\">oxford-term-name</span> <span class=\"ss\">'face</span> <span class=\"ss\">'prot-oxford-term-indicator</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-oxford-intermonth-header</span> <span class=\"p\">()</span>
<span class=\"s\">\"Return string for `calendar-intermonth-header'.\"</span>
<span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"%s %s\"</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"s\">\"OX\"</span> <span class=\"ss\">'face</span> <span class=\"ss\">'prot-oxford-term-indicator</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">propertize</span> <span class=\"s\">\"Week\"</span> <span class=\"ss\">'face</span> <span class=\"ss\">'shadow</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">setopt</span> <span class=\"nv\">calendar-left-margin</span> <span class=\"mi\">10</span>
<span class=\"c1\">;; Oxford assumes Sunday starts the week, but we want to work</span>
<span class=\"c1\">;; with the ISO commercial dates, so Monday (1) is the first</span>
<span class=\"c1\">;; day of the week.  But Sunday (0) will still work.</span>
<span class=\"nv\">calendar-week-start-day</span> <span class=\"mi\">1</span>
<span class=\"nv\">calendar-intermonth-spacing</span> <span class=\"mi\">12</span>
<span class=\"nv\">calendar-intermonth-header</span> <span class=\"p\">(</span><span class=\"nv\">prot-oxford-intermonth-header</span><span class=\"p\">)</span>
<span class=\"nv\">calendar-intermonth-text</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">prot-oxford-week</span> <span class=\"nv\">month</span> <span class=\"nv\">day</span> <span class=\"nv\">year</span><span class=\"p\">)</span>
<span class=\"nv\">calendar-month-header</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">prot-oxford-month</span> <span class=\"nv\">year</span> <span class=\"nv\">month</span><span class=\"p\">))</span>
</code></pre></div></div>" nil nil "ce3676cc6fedfd66f0338e15f582a230") (71 (26569 29903 584145 165000) "https://protesilaos.com/codelog/2025-01-08-emacs-fontaine-custom-theme/" "Emacs: the next Fontaine version will use a custom theme" nil "Wed, 08 Jan 2025 00:00:00 +0000" "<p>As part of the current development target of my <code class=\"language-plaintext highlighter-rouge\">fontaine</code> package,
the way I implement changes to fonts is done via a custom theme.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>commit 69e80d4a93b28804f3b9d8a0b4328952c2f0d568
Author: Protesilaos Stavrou <info@protesilaos.com>
Date:   Wed Jan 8 10:42:35 2025 +0200
BREAKING use a custom theme instead of 'set-face-attribute' internals
fontaine.el | 179 +++++++++++++++++++++---------------------------------------
1 file changed, 63 insertions(+), 116 deletions(-)
</code></pre></div></div>
<p>Before, I was relying on the internals of <code class=\"language-plaintext highlighter-rouge\">set-face-attribute</code> which
worked decently for the most part but required manual intervention to
persist the face attributes between theme changes. Whereas the custom
theme shall remain in effect no matter what, thus reducing complexity.</p>
<p>Furthermore, the custom theme allows me to declare the display
specification in which the given face attributes (i.e. the font
styles) apply. I can thus specify that these are for a graphical Emacs
frame only.</p>
<p>A potential advantage is the ability to modify any face, even if it is
not initialised, whereas <code class=\"language-plaintext highlighter-rouge\">set-face-attribute</code> requires the face be
defined, else it produces an error. This potential is not realised for
the time being because there is no face of the sort that Fontaine
affects. All the faces it modifies are loaded eagerly by Emacs. If I
need to cover more faces though, it will be straightforward.</p>
<p>For users, the only obvious effect of this transition is the
discontinuation of the option to set a Fontaine preset per frame. All
face attributes are now always applied to all frames. I am doing this
because the old design did not work reliably in all cases and was a
niche feature anyway.</p>
<p>I am not aware of any regressions, though I continue to test the
package. If you do try it before the new version is out, please let me
know of any possible bugs or other improvements we can make.</p>
<h2>About Fontaine</h2>
<p>Fontaine allows the user to define detailed font configurations and set
them on demand.  For example, one can have a <code class=\"language-plaintext highlighter-rouge\">regular-editing</code> preset
and another for <code class=\"language-plaintext highlighter-rouge\">presentation-mode</code> (these are arbitrary, user-defined
symbols): the former uses small fonts which are optimised for writing,
while the latter applies typefaces that are pleasant to read at
comfortable point sizes.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">fontaine</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/fontaine\">https://protesilaos.com/emacs/fontaine</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/fontaine-changelog\">https://protesilaos.com/emacs/fontaine-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/fontaine\">https://github.com/protesilaos/fontaine</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/fontaine\">https://gitlab.com/protesilaos/fontaine</a></li>
</ul>
</li>
<li>Backronym: Fonts, Ornaments, and Neat Typography Are Irrelevant in Non-graphical Emacs.</li>
</ul>" nil nil "3f5b0a6643790648d8fe3a19954e2c14") (70 (26569 29903 583919 78000) "https://protesilaos.com/poems/2025-01-06-admixture/" "Admixture (my poem)" nil "Mon, 06 Jan 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Tell me about this January sunset
with its cold air and pink clouds
As the red fox approaches
one can only wonder in awe how
in every land, at each corner
there is opportunity and danger
separated only by moments
</code></pre></div></div>
<p>I came up with this poem as I was writing the closing thoughts of <a href=\"https://protesilaos.com/interpretations/2025-01-06-dionysiou-those-who-leave-those-who-stay\">Interpretation of “Those who leave and those who stay” by Yiannis Dionysiou</a>.</p>" nil nil "e37ae6c366dc0cb43760795611365900") (69 (26569 29903 582867 958000) "https://protesilaos.com/interpretations/2025-01-06-dionysiou-those-who-leave-those-who-stay/" "Interpretation of =?utf-8?Q?=E2=80=9CThose?= who leave and those who =?utf-8?Q?stay=E2=80=9D?= by Yiannis Dionysiou" nil "Mon, 06 Jan 2025 00:00:00 +0000" "<p>For this entry, I have picked an old masterpiece of a Greek song performed by a contemporary signer, Yiannis Dionysiou: <a href=\"https://www.youtube.com/watch?v=_jdymn5w-fA\">https://www.youtube.com/watch?v=_jdymn5w-fA</a>.</p>
<p><em>Those who leave and those who stay</em> was originally performed by the eminent Yiannis Poulopoulos. Since I recently wrote an interpretation of <a href=\"https://protesilaos.com/interpretations/2024-12-09-poulopoulos-statue/\">“The statue” by Yiannis Poulopoulos</a> (2024-12-09), it is time to showcase another artist; an artist who is a rising star.</p>
<p>Here are the original lyrics, my faithful translation of them, and further philosophical comments.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Αυτοί που φεύγουν κι αυτοί που μένουν
Ερμηνεία:  Γιάννης Διονυσίου
Στίχοι:    Αλέκος Καγιάντας
Μουσική:   Γιώργος Ζαμπέτας
Αυτοί που φεύγουν σφίγγουν τα χείλια
πνίγουν τα δάκρυα να μη φανούν
κι αυτοί που μένουν κουνούν μαντήλια
κι αναστενάζουν γιατί πονούν
Κι αυτούς που φεύγουν
κι αυτούς που μένουν
οι μοίρες μ'απονιά
πάντα τους δέρνουν
Αυτοί που φεύγουν κάποιο λυγμό τους
παίρνουν μαζί τους και μιαν ευχή
κι αυτοί που μένουν στο σπαραγμό τους
κάνουν κουράγιο και προσευχή
Κι αυτούς που φεύγουν
κι αυτούς που μένουν
οι μοίρες μ'απονιά
πάντα τους δέρνουν
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Those who leave and those who stay
Singer:  Yiannis Poulopoulos
Lyrics:  Alekos Kayiantas
Music:   Yioryos Zambetas
Those who leave tighten their lips
drowning their tears to not show
and those who stay wave handkerchiefs
and sigh because they are hurt
And those who leave
and those who stay
the fates remorselessly
always hit them
Those who leave take some sob
with them as well as a wish
and those who stay in their heartbreak
persevere and pray
And those who leave
and those who stay
the fates remorselessly
always hit them
</code></pre></div></div>
<p>Life has no undo action. There is no way for us to play out some eventuality, decide whether we like it or not, and then hit some reset button to try anew with a different set of variables. Life unfolds in vivo through continuous action. There is no way for us to withdraw into a realm of abstraction where every scenario can be tested out thoroughly to derive some objectively optimal result. There is no controlled environment, no in vitro human experience. All we do, we do it based on imperfect information, in response to cases we do not fully understand or control, and no matter how prepared we are.</p>
<p>This starts from the very moment we assume the form of life. There is no choice to be made about that fact, the set of talents and attributes we are endowed with, nor about environmental factors such as the place of birth, the prevailing conditions therein, the immediate experiences to be had, the people to be exposed to, and so on. Before we even develop a rudimentary sense of self, we are determined without or despite our volition. What we eventually get as the inescapable sense of will is the ability to choose within overarching constraints.</p>
<p>Freedom is not boundless, as each choice creates its own constraints. For example, if facing a fork on a road where the path to the right leads you to the seaside while the one on the left goes mountainward, your choice in the moment necessarily conditions whether your future self will be viewing seascapes or mountainscapes, ceteris paribus. More so when other factors are not held constant and our decisions are continuously framed by—or are done in response to—evolving states of affairs. What thus unfolds as the human condition is a series of moments, a continuous presence, in which we sometimes are the participant, at others the observer, and at others still part agent and part patient of actions. Cause and effect are two sides of a singular reality, in a cosmic continuum of incessant transfiguration. What transpires is a cycle of causes leading to effects which in turn provide the impetus qua cause of yet more effects.</p>
<p>The song mentions the fates to remind us of the three-fold expression of fate, namely, choice, chance, and inevitability. These are poetically expressed in Greek culture as three goddesses, which jointly form what we understand as one’s destiny. We control something, but not everything. We act in relative ignorance and can only hope that things go our way. But there is no knowing how the interplay between choice and chance, choice and choices, chance and chances, will unfold. Those who leave may find a conventionally better place to call home, though it will never be devoid of the vicissitudes of this world, the moments of joy followed by times of sorrow. All we ever get is an admixture between analytical extremes. There is no purity to be had therein.</p>
<p>Accepting one’s powerlessness in the face of these greater magnitudes is liberating. Instead of fighting pointlessly against the forces we cannot overpower, the ridiculous situation of ignorant me arguing with the omniscient god as it were, we take what comes our way for what it is: a contribution to a life that will ultimately be neither good nor bad.</p>
<p>The place may change. Material possessions will come and go. Impermanence will continue to define whatever microcosm of subjectivity we are immersed in. Let us then experience yet another moment in the here or the there, in the preparation for more of the same hardship or in the expectation of a hopeful tomorrow. To what end? Nobody knows, although many pretend otherwise.</p>
<p>In conclusion, I have the inspiration to compose the following poem, which I will also publish in the <a href=\"https://protesilaos.com/poems\">Poems</a> section of my website.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Admixture
Tell me about this January sunset
with its cold air and pink clouds
As the red fox approaches
one can only wonder in awe how
in every land, at each corner
there is opportunity and danger
separated only by moments
</code></pre></div></div>" nil nil "e3a4975cbb2f86c96ba64baaf3dc5a4b") (68 (26569 29903 582487 231000) "https://protesilaos.com/codelog/2025-01-06-emacs-spacious-padding-0-6-0/" "Emacs: spacious-padding version 0.6.0" nil "Mon, 06 Jan 2025 00:00:00 +0000" "<p>This package provides a global minor mode to increase the
spacing/padding of Emacs windows and frames.  The idea is to make
editing and reading feel more comfortable.  Enable the mode with <code class=\"language-plaintext highlighter-rouge\">M-x
spacious-padding-mode</code>.  Adjust the exact spacing values by modifying
the user option <code class=\"language-plaintext highlighter-rouge\">spacious-padding-widths</code>.</p>
<p>Inspiration for this package comes from <a href=\"https://github.com/rougier\">Nicolas Rougier’s impressive
designs</a> and <a href=\"https://github.com/minad/org-modern\">Daniel Mendler’s
<code class=\"language-plaintext highlighter-rouge\">org-modern</code> package</a>.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/spacious-padding\">https://protesilaos.com/emacs/spacious-padding</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/spacious-padding\">https://protesilaos.com/emacs/spacious-padding</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/spacious-padding\">https://github.com/protesilaos/spacious-padding</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/spacious-padding\">https://gitlab.com/protesilaos/spacious-padding</a></li>
</ul>
</li>
<li>Sample images:
<ul>
<li><a href=\"https://protesilaos.com/codelog/2023-06-03-emacs-spacious-padding/\">https://protesilaos.com/codelog/2023-06-03-emacs-spacious-padding/</a></li>
<li><a href=\"https://protesilaos.com/codelog/2023-11-15-spacious-padding-extra-ui-dev/\">https://protesilaos.com/codelog/2023-11-15-spacious-padding-extra-ui-dev/</a></li>
</ul>
</li>
<li>Backronyms: Space Perception Adjusted Consistently Impacts Overall
Usability State … padding; Spacious … Precise Adjustments to
Desktop Divider Internals Neatly Generated.</li>
</ul>
<p>Release notes below.</p>
<hr />
<p>This is a small release that makes some minor refinements. The package
is otherwise stable and works as expected.</p>
<h2>We use the <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code> theme instead of <code class=\"language-plaintext highlighter-rouge\">user</code></h2>
<p>This is an internal detail with how we implement the “spacious”
changes to the faces we cover. Before, we would override anything that
the user would explicitly configure with <code class=\"language-plaintext highlighter-rouge\">custom-set-faces</code>, either
via their Elisp code or through the Custom User Interface and the
snippet it automatically generates.</p>
<p>By storing our changes in the bespoke <code class=\"language-plaintext highlighter-rouge\">spacious-padding</code> theme instead
of the special <code class=\"language-plaintext highlighter-rouge\">user</code> theme, we do not override the user’s preference.
This is the right design in principle, though users may no longer get
the same styles as before because faces they had configured before
will now override what <code class=\"language-plaintext highlighter-rouge\">spacious-padding-mode</code> does.</p>
<p>When in doubt, search your configuration for <code class=\"language-plaintext highlighter-rouge\">custom-set-faces</code>,
comment out the whole block, try to re-enable <code class=\"language-plaintext highlighter-rouge\">spacious-padding-mode</code>,
and see if the results are okay.</p>
<p>Thanks to Martin Marshal for making the initial change in pull request
26: <a href=\"https://github.com/protesilaos/spacious-padding/pull/26\">https://github.com/protesilaos/spacious-padding/pull/26</a>. The
change is within the <code class=\"language-plaintext highlighter-rouge\">15-line limit of permitted changes without the
need for copyright assignment to the Free Software Foundation. I then
followed it up with the creation of the ~spacious-padding</code> theme.</p>
<h2>The <code class=\"language-plaintext highlighter-rouge\">tab-line-tab-current</code> face is supported</h2>
<p>This means that <code class=\"language-plaintext highlighter-rouge\">tab-line-mode</code> will look consistent when
<code class=\"language-plaintext highlighter-rouge\">spacious-padding-mode</code> is enabled, instead of some tabs looks
smaller/different.</p>
<h2><code class=\"language-plaintext highlighter-rouge\">spacious-padding-mode</code> works with <code class=\"language-plaintext highlighter-rouge\">window-divider-mode</code></h2>
<p>Thanks to Pierre Baille and Tobias Tschinkowitz for bringing up the
problem in issue 17: <a href=\"https://github.com/protesilaos/spacious-padding/issues/17\">https://github.com/protesilaos/spacious-padding/issues/17</a>.</p>" nil nil "2c6bb0bf0dcb48a970466855e53fbdd5") (67 (26569 29903 582200 25000) "https://protesilaos.com/commentary/2025-01-06-parasocial-relationships-communication-fame/" "Re: parasocial relationships, communication skills, fame, etc." nil "Mon, 06 Jan 2025 00:00:00 +0000" "<p>This is an excerpt from a private exchange. I am sharing it with the
permission of my correspondent, without disclosing their identity.</p>
<hr />
<blockquote>
<p>I admire you Protesilaous, in many ways. I’m not the parasocial
type, and I do not know you personally. What I will say though, is
the presence and identity you have created on the internet is
something I have found myself resonating with. I appreciate the
channel, with the hut project and your talks. Emacs of course is
something I’ve always been interested in too.</p>
</blockquote>
<p>Parasocial relationships have a negative connotation, perhaps because
they typically apply to how we relate to some celebrity like those pop
stars. I can understand why that kind of relationship is not
constructive, though in our case there is a different dynamic. Look,
you can message me and I reply as soon as possible. This is not how it
goes if you try to contact some famous person.</p>
<p>I still think face-to-face interactions are the best because they help
you understand that you are dealing with a normal person instead of
some “personality”. It thus is an exchange among equals.</p>
<p>The kind of publications one makes are also an indication of who they
are. Not all Internet people are the same. In my case, I enjoy
writing/talking about the things I care about. In the process, my self
is expressed through my works because I think that only then do my
publications have value. If I talk about self-love, for example, as I
did on January 1st, I do it because I have lived those experiences and
know how they feel. It is not simply some cool idea I thought I could
do a video about.</p>
<blockquote>
<ul>
<li>What advice would you give someone that struggles to communicate
when they want to create a name for themselves?</li>
</ul>
</blockquote>
<p>Communication skills can be improved. You will get better at
expressing your thoughts the more you keep doing it. Thus, the
prerequisite is to not be afraid of failure (perceived or otherwise).
It is okay to make mistakes. Keep trying and be honest about your
weaknesses. People take kindly to those who try in earnest, even if
they are not the best.</p>
<p>This is how I am treated, for example. People are kind to me although
they understand I am not the foremost expert. I do not have formal
training in any of my current activities, for example, such as
philosophy or programming. I just try to the best of my abilities and
make no pretences about being great. As such, I do not fool anybody
into thinking that I am some faultless authority. I am just a regular
fellow.</p>
<p>Keep that authenticity intact and the rest will follow.</p>
<p>About making a name for yourself, I do not know what you have in mind
so I will remain generic. If it is something based on excellence, then
your focus must be on the skill itself. If you are good at something,
chances are you will be recognised accordingly.</p>
<p>People nowadays become famous by doing whatever the social media
algorithm favours, so they end up acting as someone who is not their
true self. They may make money and have lots of admirers, but in the
process they have bound themselves to a life of role-playing, of
having to keep up their persona the whole time. Is this the life you
want for yourself? And if the answer is yes, then consider whether you
would like to have a true friend by your side or someone who only
values you because you are popular.</p>
<p>We do not appreciate the basics until it is too late. In the process,
we get distracted by the glamour of success. Legend has it that the
ancient sage Solon once had an exchange with Croesus, a king of a
country close to Greece. The king fancied himself as the happiest man
alive. He had money, he had fame, he had all a king could wish for! So
he was happy in the conventional sense. Solon remarked that none can
be considered happy before their story is concluded (<em>μηδένα προ του
τέλους μακάριζε</em> literally means “none before the end consider
happy”). The kingdom of Croesus eventually fell to war and he was
executed.</p>
<p>We all experience suffering equally, just as we all appreciate an
honest hug. For as long as we keep this shared nature in mind, we will
not think of ourselves as anyhow special. Then, no matter where we
are, we will remain mindful of the fact that our place is
fundamentally the same as all other places in this space.</p>
<blockquote>
<ul>
<li>What are your thoughts on doom emacs? 🤣</li>
</ul>
</blockquote>
<p>It is a high quality project that helps a lot of people. I have never
used it myself because I made a conscious effort to learn Emacs from
scratch and to piece together a configuration whose every bit I
understood (or, at least, I was aware of the reasoning behind each
choice).</p>
<p>The best lifestyle quality of Emacs is that it empowers you to be
unapologetically opinionated about your preferences. No matter what
others think is best for an Emacs setup, you do the thing that works
for you and that is all that matters. If Doom works for you or anyone
else, then my opinion is not required for you/them to be productive.</p>
<blockquote>
<ul>
<li>What videos are you most proud of?</li>
</ul>
</blockquote>
<p>I like every video I make because I do it in a way that captures the
moment. I find mistakes in retrospect, such as “sitting on the table”
instead of “sitting at the table”, or I notice that I could have said
something in a more clear way and used a better example. But I have no
regrets. They all show an imperfect person, which is wonderful, and
they all contribute to who I am right now.</p>
<blockquote>
<ul>
<li>What programs are you most proud of making?</li>
</ul>
</blockquote>
<p>Same as with my videos: every piece of code I write is an expression
of my current ability. As all those little moments form the person I
am, I appreciate them all. For the big thing to come about, lots of
smaller things have happened before: nothing occurs in a vacuum.</p>
<blockquote>
<p>None of these questions need to be answered, but I will ask them! I
hope we can have a conversation some day. Thank you, prot.</p>
</blockquote>
<p>Well, it so happens that I always reply to those who contact me, so
here we are!</p>" nil nil "9052524a1ce71fa12dc00a6a799448b3") (66 (26569 29903 581783 967000) "https://protesilaos.com/commentary/2025-01-05-re-free-will-suffering/" "Re: free will and suffering from uncertainty" nil "Sun, 05 Jan 2025 00:00:00 +0000" "<p>This is a continuation of the previous thread about <a href=\"https://protesilaos.com/commentary/2025-01-03-re-loneliness-meaningful-work/\">Loneliness and
meaningful work</a>.
I am publishing it separately because it stands on its own for the
most part.</p>
<hr />
<blockquote>
<blockquote>
<p>To use a metaphor, I have accepted that there are dark corners
around me, which could be a vector of attack by some predator. Even
though I would like to explore them all before going to bed, I am
too tired to do so, as my energy is limited. No matter how much I
try to shed light to every corner, more of them are revealed, but
my body can only stay awake for so long. I eventually fall asleep,
admitting that uncertainty surrounds me and its resulting fear is
an emotion I can only ever accept and live with.</p>
</blockquote>
<p>What I cannot escape about this idea of acceptance, is that it often
feels that I do not have a choice in what thoughts and perspective I
have in a given moment. I do not disagree with the value of
accepting our limitations, and using that acceptance as a means of
being present. But that does not stop myself (and others) from
continuing to worry about said predators. Even though there is an
understanding of the unproductiveness and impracticality of this
state you are in.</p>
</blockquote>
<p>The point of acceptance is not to choose which thoughts will occur
such as, for example, to only think positively, but to take what
happens for what it is, without judging it through the lens of
“should”. If you are feeling a certain way, trying to force yourself
to feel differently in that moment will only make you suffer.</p>
<p>When we set goals, we do them with the recognition that they involve a
process of transformation. There is a change from state A to B,
typically with intermediate steps. This means that moment-by-moment we
are not at the goal and we may be making small steps laterally or even
backwards. Although the momentary experiences are happening despite
the longer-term plan, we still set ourselves up on the given path,
such that we persist on what we are doing. There are times when we can
push forward and others when we lack the resolve to do so. It then is
all about the bigger picture of what is happening, not just the micro
view of each moment in isolation.</p>
<p>Acceptance entails the recognition of our multifacetedness as a
species. We place disproportionate value to rationality, thinking that
it is somehow the superior faculty and the one to which every other
force “should” be subordinated to. Though we know that we have
emotions and needs of the body which cannot be reduced to rationality.
For example, we understand viscerally what an aesthetic experience is,
such as when we witness the awe of a sunset (which may not be with
every sunset): we cannot explain it in purely rational terms, except
by means of reduction. And “reduction” is exactly what the word
suggests: you are taking something away from it. Some aspects of the
world can only be felt.</p>
<p>Acceptance of multifacetedness, then, empowers us to be more lenient
with people and our self. Instead of expecting every action to be
purely rational, we understand that there is more to the human
experience. Our life cannot fit into neat dichotomies of right versus
wrong, except in specialised cases which are not generalisable. You
cannot, for instance, describe a storm in terms of good against evil,
but only as a fact which is. Thus, all the “should” and the “ought to”
are couched in terms of a certain tolerance for indeterminacy, else
nuance; tolerance of the subtleties of grey between the analytical
extremes of black and white, as it were.</p>
<p>Greeks have a saying since antiquity which loosely translates as
“there is no such thing as pure evil, for the world is one of
admixture where bad things still have something good to them”. The
more faithful translation is “nothing bad not intermixed with good”
(«ουδέν κακόν αμιγές καλού»). The inverse is true, namely, there is
nothing purely good in our world. This is what nature teaches us
through all the moments in our life. It sets us up for an outlook that
is attuned to uncertainty.</p>
<p>The fact that you continue to worry about those predators that slither
in the shadows is natural. And this is the point of practicality: you
will think along those lines because such is your actuality. You will
never be in a state of pure thought where everything is resolved prior
to any action, such that no uncertainty remains. You cannot become
“pure thought” because you are a human, with flesh and bone, forced
into a world of action.</p>
<p>In this sense, what I suggest is to not argue against your nature, or
nature in general, but to go with its flow. You will go will the flow,
anyway, so better do it without kicking and screaming. There is a
certain lightness to this approach, for it does not burden you with
what essentially is an arbitrary commitment to be some impossible
non-human human (e.g. homo economicus).</p>
<blockquote>
<p>As an example, I was on a walk this morning simply trying to
observe, and recognize my reaction to those observations. However,
every observation was met with immediate questioning. These
questions were along of the lines of “Do I enjoy this?”, “Why don’t
I know if I enjoy this?”, “What do I think of this plant? I don’t
know.”, etc. I recognize each of these internal questions and
comments as impractical, yet I will still have them because that is
what is happening. That is my experience at the moment.</p>
</blockquote>
<p>These questions will persist and you will continue to recognise that
they will not be resolved. Uncertainty is burdensome only to the
extent that you try to address it as your sole preoccupation, only to
find you are not capable to do it. The burden then, qua burden, is the
flip-side of your powerlessness to this end.</p>
<blockquote>
<p>This leads to further consideration that perhaps this is “who I am”.
Observation may always reveal an active and wandering mind. The mind
will always produce impractical questions and thoughts. And the only
hope for admittance is if the mind produces it any given moment. I
do not mean to present this as some gloomy outlook on life, because
it also means that joy and curiosity can present itself at any
moment. It only means that one cannot feel appreciation or
acceptance on command. If I enjoy playing a game, or feel awe in the
wonder of the universe once, it does not mean I will feel that way
the second time.</p>
</blockquote>
<p>It is neither gloomy nor blissful, but a state of “admixture”, as the
Greeks see it. The “who I am” is dynamic. It is a process, with
recognisable patterns which, nevertheless, remains open-ended. Again,
uncertainty, nuance.</p>
<blockquote>
<p>I have essentially converted all nuances of this conversation into a
single topic of free will. The initial topic of loneliness and
meaningful was just a front ;). I kid of course. However, it does
seem as if one expects to make any progress towards navigating the
human mind and living a life of practicality, they must confront
this concern of free will.</p>
</blockquote>
<p>They will confront it. Those who are lucky enough will quickly realise
the futility of the endeavour and escape without suffering much
damage. The rest will keep digging a hole all the way into the depths
of the abyss where only depression awaits (writing from experience). I
recently published an article where I basically explain how the
further we probe into our own thoughts while disconnecting from the
here-and-now of our experience, the more miserable we are:
<a href=\"https://protesilaos.com/commentary/2024-12-02-exploration-otherworldly-darkness/\">https://protesilaos.com/commentary/2024-12-02-exploration-otherworldly-darkness/</a>.</p>
<p>A note here about free will, which I have not stressed, even if it is
implicit. My view of it is that we have “some control”—or at least
the inescapable impression of some control—but it is never complete
control. The video I did about the three fates (choice, chance,
inevitability) is consistent with this line of thinking:
<a href=\"https://protesilaos.com/books/2024-09-17-three-fates-choice-chance-inevitability/\">https://protesilaos.com/books/2024-09-17-three-fates-choice-chance-inevitability/</a>.</p>
<blockquote>
<blockquote>
<p>We can come up with more questions and clever answers but are
ultimately >tasked with living in the present of this world; a world
of admixture >which for our purposes always is; a world where I
cannot avoid the >impression that I am now choosing to write these
words to you and where >even if I argue otherwise I still feel I made
that choice and you feel >you were the intended recipient of it.</p>
</blockquote>
<p>What you say above initially resonates with me, and addresses that
concern. In particular: “a world where I cannot avoid the impression
that I am now choosing to write these words to you and where even if
I argue otherwise I still feel I made that choice and you feel you
were the intended recipient of it”. I interpret this as it does not
matter if there is actually any control, because you cannot escape
the feeling that there is. And as long as that sense is there, there
is potential to use reason and a practical outlook for progress.
This is a practical perspective that makes sense.</p>
<p>Yet, I still face the same questions despite recognizing the
impracticality of it.</p>
<p>I do apologize simplifying the various matters we were discussing in
to a single one, but I was not able to have a sensitivity to the
nuances of the topic in my current state. I am curious to see what
your perspective , if there is further input at all. And I look
forward to potential conversations we may have in the future!</p>
</blockquote>
<p>This is fine. There is no need to apologise. We are trying to figure
things out as we go. This is yet another indication of how we are
always operating in a state of relative ignorance. I think what I
wrote above provides food for thought to what you are wrestling with
here. I am happy to elaborate on any point I made which you think is
unclear.</p>" nil nil "8da959ccd9b6833a4142e331b7aff261") (65 (26569 29903 581237 917000) "https://protesilaos.com/poems/2025-01-04-borderland/" "Borderland (my poem)" nil "Sat, 04 Jan 2025 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>At the borderland
where the common sage
grows its roots
the hymns of Orpheas
echo through the woods
Broken is the heart
that heeds not its call
</code></pre></div></div>" nil nil "3a10e08c3d8f06981b50ef7072cac83a") (64 (26569 29903 581148 635000) "https://protesilaos.com/codelog/2025-01-03-denote-sequence-demo/" "Emacs: sequence notes with Denote (denote-sequence.el)" nil "Fri, 03 Jan 2025 00:00:00 +0000" "<p>In this ~21-minute video I demonstrate the new optional extension for
Denote that I am developing. The <code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code> is part of the
<code class=\"language-plaintext highlighter-rouge\">denote</code> package. Its purpose is to streamline the creation of
“sequence notes”, i.e. files that have an inherent relationship
between them. The sequence is represented as a number.</p>
<p>Note that the code is in-development and will be released as part of
Denote version 3.2.0. I still plan to make some refinements, though
the core functionality is already done.</p>
<h2>About Denote</h2>
<p>Denote is a simple note-taking tool for Emacs.  It is based on the idea
that notes should follow a predictable and descriptive file-naming
scheme.  The file name must offer a clear indication of what the note is
about, without reference to any other metadata.  Denote basically
streamlines the creation of such files while providing facilities to
link between them.</p>
<p>Denote’s file-naming scheme is not limited to “notes”.  It can be used
for all types of file, including those that are not editable in Emacs,
such as videos.  Naming files in a consistent way makes their
filtering and retrieval considerably easier.  Denote provides relevant
facilities to rename files, regardless of file type.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "9c522658d39807c67689a466467dff7d") (63 (26569 29903 580918 590000) "https://protesilaos.com/commentary/2025-01-03-re-loneliness-meaningful-work/" "Re: loneliness and meaningful work" nil "Fri, 03 Jan 2025 00:00:00 +0000" "<p>The following is an excerpt from a private exchange. I am sharing it
with permission, without disclosing the personal details of my
correspondent. The idea is to share thoughts that others may have as
well. The quoted/indented parts are from my correspondent.</p>
<hr />
<h2>Living in isolation and having sincere moments with people</h2>
<blockquote>
<p>I am particularly interested in your perspective on the matter due
to your seemingly isolated living conditions. I have a general
craving for meaningful work, learning, and adventure, something that
your path seems to provide. I do understand that I only see the
snippets of your life that you share, and make assumptions about
what is possible that may or may not be true. Regardless, this
craving of mine results in a lifestyle of pursuing this work and
adventure. And what I do not have is a propensity to socialize, and
this is a concern to me. In my late teens and early twenties I
experienced a great deal of loneliness (due to a break up). Because
of this, and the pain it caused me, it is now something I constantly
wrestle with. The combination of my preferred lifestyle of work and
adventure, not having a strong desire to go to social events, and my
fear of loneliness is a hard state to navigate. Do you have any
perspective on the matter? Do you worry about the prospect of
loneliness while building up a life in the mountains?</p>
</blockquote>
<p>The way I understand loneliness, it is the feeling of alienation from
those around you. It is felt most strongly when you are around people,
because you are constantly reminded that you are not connected with
them. You may be collocated and have some superficial things in
common, but you otherwise do not feel you belong there. I was lonely
in Brussels while I was working in the field of politics (perhaps the
most people-oriented job is that of politicians and, by extension,
their assistants).</p>
<p>I decided to relocate to the mountains and leave that chapter of my
life behind me in large part as a response to loneliness. Things are
more quiet in the mountains and I am physically alone much of the time
(dogs notwithstanding), though I do not feel lonely. When I do meet
people, I sense that we are on good terms and things are going well.</p>
<p>Part of this change is due to the kind of people I find here. In
politics, you normally do not have any friends. Everything you share
about yourself can and will be used against you. The way I experienced
interpersonal affairs in that milieu is like you meet somebody who
gives you a passionate kiss, which makes you feel great, only to then
stab you in the back. It is an unsettling environment when you
actually care about connecting with people at a personal level (you
are connecting for political ends, which is different).</p>
<p>The people here are generally not caught up in this power dynamic.
They are thus more genuine. When a neighbour would share some
vegetables with me, for example, I knew they were authentic about
their offer and I was eager to do something for them as well. I helped
people train their dog or do some handy work around their house. It
was always a nice experience. I continue operating along those lines.</p>
<p>Another part of this is my own transformation as a person. I changed
my perspective about what I seek in others. I learnt that “meaningful”
is personal. For me, it covers a fairly small and highly specialised
number of topics such as technology, politics, and philosophy. So I
stopped expecting the average person to care about any of the things I
am interested in. I have instead learnt to listen to what they are
dealing with and keep an open mind about learning more along those
lines. There is a whole world out there and I am eager to be surprised
about matters that might eventually resonate with me.</p>
<h2>Finding meaning in everyday affairs</h2>
<blockquote>
<p>Unfortunately, I also have a tendency to often ‘roll my eyes’ at
conversation that seems un-thoughtful, unproductive and whiny. Those
are perhaps not the best words to describe the feeling I have, but I
cannot think of any other. If someone seems to just be rambling
about what’s on their mind without any filter of reflection, I check
out. Or if I sense that they are asking a question, simply so that
they can wait for you to finish and speak about themselves. I of
course recognize that this is human nature, and I myself do the same
probably more than I recognize. Is the fact that I am writing you
this email not a direct result of that? Regardless, that seems to be
how I feel in many social interactions.</p>
</blockquote>
<p>You are describing me from when I was in my early 20s (now I am close
to 37 years old). I used to only expect deep exchanges and had trouble
keeping up with gossip or whatever other superficial issue. Until one
day I reflected on my outlook to conclude that I was being
self-centred, my expectations were misplaced, and my understanding of
casual chatter was one-sided (i.e. “wrong”).</p>
<p>Why should every conversation be about something profound? People talk
about whatever they have on their mind for a number of reasons. One
among them is to be casual around you, which is a way for them to
gauge how comfortable about everyday stuff they can be in your midst.
I used to focus on the means (like gossip) rather than on the function
those were performing (socialising).</p>
<p>Rather than gossip being a boring thing that I personally had no
interest in, I recognised how it was a way for people to build trust
among themselves. I still had control over how I was contributing to
the discussion, such as by reminding the person that they should not
reach hasty conclusions. So I saw the positive side of my
participation in such experiences and now I am perfectly happy to
listen to gossip, even if I still do not care to initiate such an
exchange myself.</p>
<blockquote>
<p>The dominant point of conversation always seems to be whatever the
latest trend on social media is, and as a result, whatever the
dominating opinion on that matter is also directly derived from the
opinion and bias of the trend. There seems to be an unnerving ease
to look past the complexities of problems and just have an opinion
that is great in theory, but avoids many of the practical
considerations. I do recognize the irony of my frustrations here:
becoming frustrated with others while they themselves are just
frustrated with something else. I of course do not want to feel this
way, it only separates me from social circles. But I do not want to
download any social media. I do not want to just forgo discussion
and understanding of individual opinions just for the sake of having
fun with others. However, I often feel it is detrimental to my own
mental health to not just ‘give in’ to the societal norm.</p>
</blockquote>
<p>Much will depend on the people involved, though consider how you can
be the change you want to see. People will parrot whatever the trend
is in part because those who, like you, are interested in the finer
points do not share their perspective with patience and persistence. I
was like that as well. You do not change the world by complaining
about how it does not suit you. No. You do it, little by little,
through your deeds. This was the single most important realisation for
me, which fundamentally transformed me from a man of ideas to a man of
actions.</p>
<p>I think the “ideas” part has greatly benefited as a result. My
thoughts are now rooted in practicality. I do not get lost in thought
experiments and their conundra, thus overthinking and complicating
matters that are, in fact, simple.</p>
<p>When you operate along the lines of the doable, you also have a better
sense of what is likely to happen and what you can achieve under the
prevailing conditions (which makes you complain less to the point of
not complaining at all). Will I ever make everyone around me have the
same sensitivity to nuance that I do? Of course not and that is
probably for the better. Nature makes us all different because we have
highly diverse needs as a species. If everybody is a philosopher, for
example, we will not have engineers, nurses, singers, and so on. It
will be an incredibly harsh world.</p>
<p>Rather than refashion everyone in my imagine, I try to do my part as a
member of society. To put it simply, someone will have to be the
philosopher, so that others can be who they are. We all stand to gain
something if we acknowledge how diverse we are and how this is the
natural order. Instead of arguing with nature and judging its facts,
superimposing our biases to its realities, we learn to understand
phenomena without wishing for them to be something else. Only then can
we free ourselves from false wants and the troubling thoughts they
engender.</p>
<blockquote>
<p>Speaking of ‘societal normal’, it is worth mentioning I live [SOME
WESTERN COUNTRY], and work as a software engineer at a medium sized
company. What comes along with that is what feels like a lot of
fluff work. Handling slack messages, recurring soul sucking
meetings, a dizzing amount of work that should be done, but does not
feel meaningful, and artificial timelines. There are of course
benefits too. I work from home, and am comfortable financially.
However, my days quickly become filled with a sense of overwhelm and
frustration.</p>
</blockquote>
<p>I have done a lot of manual labour, as well as the kind of
administrivia you describe (politics is full of it). I cannot think of
a job that has no “fluff work” at all or, anyhow, moments that are not
as rewarding as others. Even in construction you will have these
artificially important events where some manager wants to do something
for the sake of it in a manner that is arbitrary. I can even imagine
how it would have been had I become a professional footballer (soccer
player), where I would probably not enjoy the constant travelling to
play games or how commodified the sport is, but I would still like
football overall.</p>
<p>Again, there are many reasons why people behave the way they do. The
key is to focus on the essentials and not get disturbed by whatever
superficialities or necessary lower points. If you think those
meetings are a waste of time, try to be less invested in them. Also
challenge your bias against them by coming up with a concrete proposal
of how the work could be organised without them. If you have a
genuinely superior alternative, chances are your bosses will be
interested to learn about it (if it earns them money, anyway).
Similarly, if you think that some task you are doing has no meaning,
remind yourself that any job is a way to earn an income and not to
attain spiritual enlightenment. If you only care about “meaning”, you
leave the industry and head to some monastery or whatnot.</p>
<p>I mentioned “action” earlier, so let me frame this point accordingly.
Your choices will help you in your introspection. If you choose to
work because you like the perks, then consider how this is something
you care about despite the downsides. If, on the other hand, you
cannot tolerate those downsides, then your next course of action must
be to switch careers. Complaining about the downsides will not
suffice. Would that improve your chances of finding meaning though?
Perhaps, though you will likely realise that what you are looking for
is not external: it comes from within. It has to do with your
perspective and expectations.</p>
<h2>Norms and expectations</h2>
<blockquote>
<p>I then recognize that as far as jobs go, I am very fortunate with
mine. That realization just makes me feel worse about feeling bad.
Then there is filling free time. It is easy to become stressed out
if there is a feeling of making the most of that free time. I will
begin to play a video game, or work on a programming side project,
and have a hard time shaking the feeling that I should be doing
something else. Something perhaps more social, coming back to that
fear of loneliness. Yet I do not want to participate in these social
activities. I want to make progress on something, and I want it to
happen quickly so I can feel that reward of work. This urgency just
results in seeking out new activities which offer novelty and the
potential of meaning and the absence of feeling that I should be
doing something else. All this to say, I am curious if these are
thoughts you have battled with. Do you fear loneliness? Do you ever
feel like you have to ‘fake it’ in order to fill your social nature?
How do you handle the urge to complete meaningful things?</p>
</blockquote>
<p>Here is the key part: the feeling that you “should” be doing something
else, which you imagine it to involve that which you fear about
loneliness and lack of sociability. You are, in other words, feeling
guilty.</p>
<p>Guilt can be a powerful impetus for change. If you truly believe that
what you are doing is wrong, then you have to focus your energy on
doing whatever it takes to not be guilty anymore. However, I get the
impression that what you are experiencing is a mismatch between your
lived and expected experiences. You pursue, for example, the
programming side project while telling yourself than you should be
doing something else instead. Is this, then, an expectation that you
can act on or a belief you have internalised and wish it to be true
but actually are not committed to? Try to take a step back and
consider what I wrote about earlier. It may help you figure out what
your next move will be.</p>
<p>To your final questions, no, I do not fear loneliness anymore because
I did what was necessary to escape from that world. I switched careers
and remade myself as a person. I now appreciate people the way they
are. As for faking it, no, I do not feel the need to behave in some
way that is not emanating from within. I am who I am and behave
honestly. People like you when you are authentic. Anything else will
make you look awkward—because you are awkward—which will unnerve
those around you.</p>
<p>This challenge you are facing is your opportunity to broaden your
horizons or, anyhow, to discover what you can do and what you actually
care about. When I went through this phase I became more open-minded
and also more humble in the immediate sense of discovering that nobody
is special (maybe one is special for a given task or in a certain
situation, but not holistically).</p>
<h2>Loss and anxiety</h2>
<blockquote>
<p>This perspective on loneliness makes me re-consider what it is I
actually have a fear for. As I mentioned, what I went through that I
believe has caused this concern of loneliness was a break up. I
remember very vividly during that break up the overwhelm I felt when
thinking that about the massive shift my life path was now on. I
also felt a great sense of loss.</p>
</blockquote>
<p>This is understandable. A breakup or generally a loss leaves a hole in
your heart. Especially if it involves a sense of betrayal, because
then you feel distrust towards others.</p>
<p>Consider though how it is not fair to use broad generalisations
against people. A loss of any sort is no reason to believe that
everybody is the same. If you have ever loved and have received love
(which you must have for you to even grow past the baby stage), you
know it can happen again. It will never be exactly what you already
lived through, because no moment can ever be relived. Be open to new
experiences and the rest will follow.</p>
<blockquote>
<p>I am also wondering how much of this anxiety I feel is due to
societal expectations. There is constant pressure to “make sure you
have a good friend group”, yet I feel more negative emotions from
the guilt of not having the most social life rather than the lack of
social life itself hurting me. I do not think this is an excuse to
hermit myself until I do feel that pain of no human interaction, but
rather an interesting point of consideration.</p>
</blockquote>
<p>Social expectations are indeed at the heart of it. Though consider how
there is an internal dimension to them, namely, the fact that you have
internalised the expectations and are now measuring your
self/performance up to them. In this sense, “social” expectations
resolve to “personal” aspirations.</p>
<p>By framing it this way, you can start to work on them by asking the
simple question of “what happens if I fail to live up to their/my
standard?” In other words, what will society/you do to you if you are
not who they/you expect you to be? You will then find that in most
cases the answer is “nothing” or “nothing terrible”, anyway.</p>
<p>This is especially true for cases such as the one we consider here:
fear of loneliness. Of course, there are cases where some tyranny will
force you to behave a certain way, such as some of the world’s
theocratic regimes that deny women basic rights. You are not in this
position though. Try then to consider how bad can something
realistically be in your case for not living up to the standard.</p>
<p>There will always be those who will judge you a certain way. But there
is no escape from this reality. People talk and say things without
knowing the details of the case. They pass judgement while being
ignorant. You ultimately mind your business and express yourself the
way you like, not because it pleases others but only due to the inner
need it serves.</p>
<p>Social expectations may be social in origin, though we see how it
ultimately is our decision whether we subordinate ourselves to them or
not.</p>
<h2>Discovering that meaning is not static</h2>
<blockquote>
<p>The statement ‘I learnt that “meaningful” is personal’ can be a bit
of a hard one to swallow. If a given person does not feel any
meaning from within, then it implies that is up to them to find
meaning. And if you are attempting to find meaning, it can easily
result in a dark spiral. I suppose this is where religion is nice,
in that a path toward meaning is layed out for you. Similarly to
finding meaning though, you cannot force belief.</p>
<p>I do see how if properly internalized, this mind set can be
invigorating though. You never know where you can derive meaning
from which brings about a genuine sense of curiosity. Especially
towards interaction with others as you mention.</p>
</blockquote>
<p>If you are the inquisitive type, you will search for it yourself
anyway. Religion might help you frame things a certain way, but it
cannot undo your individuality and everything that comes with it. It
is indeed hard to accept that “my meaning” is meaningless to others,
because you care about it and would like to share it with people.</p>
<p>On the flip-side, because meaning comes from within, we know that we
can find new sources for it or outlets for its expression. As we grow
and learn more about the world, we discover our self better. If we
cling on to a specific interpretation of meaning, it is like holding
on to a distant memory hoping that it is recreated as a present
experience. It is thus liberating to internalise the notion that
meaning is not fixed.</p>
<h2>The part of free will</h2>
<blockquote>
<p>However, while processing this I am making an argument to myself
that it doesn’t matter if I can identify that problem is my own
selfishness. There is no free will, so I will I think and act
accordingly in a given moment regardless. Free will, and whether it
does or does not exist, is of course its own thread of discussion. I
do not recall you discussing that any publications of yours, do you
have any links to relevant work if so?</p>
</blockquote>
<p>I have lots of scattered references to the theme of free will. I have
been a free will sceptic myself, though I have recently changed my
approach.</p>
<p>Science and philosophy have always had these tentative hypotheses such
as “probability probably does not exist”, “there is no free will”,
“time is not fundamental”, which, however, they cannot prove. My
thinking is that all these magnitudes exist until proven otherwise.
What such discussions do is put us in overthinking mode, for they are
not actionable, distracting us from the here-and-now which is always
practical, uncertain, and temporal.</p>
<p>The mind can reason about anything in isolation, such that it comes
down to the atom (in the original sense of “non-divisible”, not the
misnomer of physics). In the process, it needs to reconcile how there
is something and what is the milieu it subsists in. If all is traced
back to some atom, then where are the laws of nature written? Does the
atom encode them? Does each atom do this? Alternatively, do the laws
of nature arise in the interplay of atoms? How did this interplay even
get triggered in the absence of prior laws and what where the
parameters of their initial cause?</p>
<p>Note that “God did it” does not answer the question, because you have
now simply decided that God is the initial condition, which then
continues the discussion of what is the state in which God exists,
what even brought about God, and so on.</p>
<p>We can come up with more questions and clever answers but are
ultimately tasked with living in the present of this world; a world of
admixture which for our purposes always is; a world where I cannot
avoid the impression that I am now choosing to write these words to
you and where even if I argue otherwise I still feel I made that
choice and you feel you were the intended recipient of it.</p>
<h2>Accepting uncertainty</h2>
<blockquote>
<p>I am curious how you have gotten to the point of comfortably saying
“My thoughts are now rooted in practicality”? Having your thoughts
rooted in practicality to me seems like a worthy goal to strive for,
but is in itself impractical. This goes back to my mention of free
will, and perhaps implies that one can will themselves to stop
overthinking.</p>
<p>Or perhaps your perspective is that whether free will exists or not,
a human mind can learn through repetition to plant these roots?</p>
</blockquote>
<p>This is my way of saying that I am okay with not answering all the
questions before I proceed. It goes back to your theme of fear. We are
afraid of what we do not know and try to resolve it before we proceed.
Though our temporal/physical reality is such that we cannot withdraw
into a world of theory where we have the luxury to figure everything
out before we make our next move.</p>
<p>To use a metaphor, I have accepted that there are dark corners around
me, which could be a vector of attack by some predator. Even though I
would like to explore them all before going to bed, I am too tired to
do so, as my energy is limited. No matter how much I try to shed light
to every corner, more of them are revealed, but my body can only stay
awake for so long. I eventually fall asleep, admitting that
uncertainty surrounds me and its resulting fear is an emotion I can
only ever accept and live with.</p>" nil nil "6fcab1dbd59497a82f473b59cac9abf0") (62 (26569 29903 579611 342000) "https://protesilaos.com/news/2025-01-01-happy-new-year-love-yourself/" "Vlog: happy new year and love yourself" nil "Wed, 01 Jan 2025 00:00:00 +0000" "<p>In this video I wish everybody a happy new year, provide a quick
status update on the hut’s flood control project, and then I make some
philosophical points about the important of self-love.</p>" nil nil "682b8286b7ebc6003cc62ee864fc4f1d") (61 (26569 29903 579049 490000) "https://protesilaos.com/codelog/2024-12-29-emacs-standard-themes-2-2-0/" "Emacs: =?utf-8?Q?=E2=80=98standard-themes=E2=80=99?= version 2.2.0" nil "Sun, 29 Dec 2024 00:00:00 +0000" "<p>The <code class=\"language-plaintext highlighter-rouge\">standard-themes</code> are a collection of light and dark themes for
GNU Emacs. The <code class=\"language-plaintext highlighter-rouge\">standard-light</code> and <code class=\"language-plaintext highlighter-rouge\">standard-dark</code> emulate the
out-of-the-box looks of Emacs (which technically do NOT constitute a
theme) while bringing to them thematic consistency, customizability,
and extensibility. Other themes are stylistic variations of those.</p>
<p>In practice, the Standard themes take the default style of the
font-lock and Org faces, complement it with a wider and harmonious
colour palette, address many inconsistencies, and apply established
semantic patterns across all interfaces by supporting a large number
of packages.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">standard-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/standard-themes\">https://protesilaos.com/emacs/standard-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/standard-themes-changelog\">https://protesilaos.com/emacs/standard-themes-changelog</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/standard-themes-pictures\">https://protesilaos.com/emacs/standard-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/standard-themes\">https://github.com/protesilaos/standard-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/standard-themes\">https://gitlab.com/protesilaos/standard-themes</a></li>
</ul>
</li>
<li>Backronym: Standard Themes Are Not Derivatives but the
Affectionately Reimagined Default … themes.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<p>This version contains a few refinements to an already stable base.</p>
<h2>Enjoy the new “tinted” themes</h2>
<p>I now provide the <code class=\"language-plaintext highlighter-rouge\">standard-light-tinted</code> and <code class=\"language-plaintext highlighter-rouge\">standard-dark-tinted</code>
themes in addition to <code class=\"language-plaintext highlighter-rouge\">standard-light</code> and <code class=\"language-plaintext highlighter-rouge\">standard-dark</code>. The
announcement I made about these new themes also includes screenshots
of them: <a href=\"https://protesilaos.com/codelog/2024-12-17-emacs-standard-themes-tinted/\">https://protesilaos.com/codelog/2024-12-17-emacs-standard-themes-tinted/</a>.</p>
<p>The <code class=\"language-plaintext highlighter-rouge\">standard-light-tinted</code> theme has an earthly feel to it, with
hints of magenta. It otherwise follows the stylistic patterns of its
<code class=\"language-plaintext highlighter-rouge\">standard-light</code> counterpart.</p>
<p>The <code class=\"language-plaintext highlighter-rouge\">standard-dark-tinted</code> theme has a dark blue background in
combination with appropriate shades of magenta. It, too, is
stylistically consistent with its <code class=\"language-plaintext highlighter-rouge\">standard-dark</code> counterpart.</p>
<h2>Command to rotate themes</h2>
<p>The <code class=\"language-plaintext highlighter-rouge\">standard-themes-rotate</code> goes through the Standard themes defined
in the user option <code class=\"language-plaintext highlighter-rouge\">standard-themes-to-rotate</code>. It does so in order
from left to right, starting from the currently loaded theme. By
default, the value of <code class=\"language-plaintext highlighter-rouge\">standard-themes-to-rotate</code> is:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">standard-light</span> <span class=\"nv\">standard-light-tinted</span> <span class=\"nv\">standard-dark</span> <span class=\"nv\">standard-dark-tinted</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>Users who plan to only use two themes can rely instead on the command
<code class=\"language-plaintext highlighter-rouge\">standard-themes-toggle</code> and its <code class=\"language-plaintext highlighter-rouge\">standard-themes-to-toggle</code> variable.</p>
<h2>Explicit support for the <code class=\"language-plaintext highlighter-rouge\">lin</code> and <code class=\"language-plaintext highlighter-rouge\">pulsar</code> packages</h2>
<p>These packages highlight the current line. By extending support to
their faces, we guarantee that they always look right with the given
Standard theme.</p>
<h2>The palette preview use a tabular view</h2>
<p>The commands <code class=\"language-plaintext highlighter-rouge\">standard-themes-list-colors</code> and
<code class=\"language-plaintext highlighter-rouge\">standard-themes-list-colors-current</code> are redesigned to show colours
in a tabular layout.</p>
<p>The practical advantage for users is that they can now sort the
entries by column: move the cursor to the desired column and type <code class=\"language-plaintext highlighter-rouge\">S</code>
(or <code class=\"language-plaintext highlighter-rouge\">M-x tabulated-list-sort</code>). Do it again to reverse the sorting.</p>
<p>This can be achieved with the mouse as well: move the pointer to the
relevant column heading and use left click (well, <code class=\"language-plaintext highlighter-rouge\"><mouse-1></code> to be
precise) to select and then reverse the sorting.</p>
<p>Remember that the Standard themes provides a comprehensive mechanism
of named colours and semantic mappings, which can be overridden. Thus,
it is possible for one to define a spin-off of these themes by only
changing a few colour values. Refer to the manual for the details, or
contact me.</p>" nil nil "2b3d0975764d44e4374390d888caedf0") (60 (26569 29903 577780 296000) "https://protesilaos.com/interpretations/2024-12-28-kadinelia-birds-fooled-me/" "Interpretation of =?utf-8?Q?=E2=80=9CThe?= birds fooled =?utf-8?Q?me=E2=80=9D?= by Kadinelia" nil "Sat, 28 Dec 2024 00:00:00 +0000" "<p>For this entry, I have picked a traditional Greek song from the region
of Thrace. Many talented artists have performed it. The one I like the
most is this, by the Kadinelia duo: <a href=\"https://www.youtube.com/watch?v=68VkYerWdBM\">https://www.youtube.com/watch?v=68VkYerWdBM</a>.</p>
<p>Part of the appeal for me is the cosy environment of the performance.
It is relatable, humane, authentic. It is the kind of event I have
witnessed many times, when someone at the table will spontaneously
pick up an instrument and start playing. These are my people.</p>
<p>I resonate with this simplicity and immediacy. It makes no pretences.
There is something endearing about seeing a talented person be so
down-to-earth. Unlike what you find in the opulent opera houses of the
world, this show can be held anywhere without an empire bankrolling
it. It is about us together, while at our <em>symposia</em> (Greek word for
“drinking together”), as we make art in a spirit of camaraderie. The
table we share, the experiences we partake in, remind us that we are
all equal.</p>
<p>Below are the original lyrics, followed by my translation, and further
commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Με γέλασαν τα πουλιά
της άνοιξης τ'αηδόνια
Με γέλασαν και μου'πανε
ποτέ δε θα πεθάνω
Φτιάχνω κι εγώ το σπίτι μου
ψηλότερο από τ'άλλα
Σαράντα δυο πατώματα
εξήντα παραθύρια
Στα παραθύρια στέκομαι
τους κάμπους αγναντεύω
Βλέπω τους κάμπους πράσινους
και τα βουνά γαλάζια
Βλέπω το Χάρο που'ρχεται
καβάλα στ'άλογο του
Με γέλασαν τα πουλιά
της άνοιξης τ'αηδόνια
Με γέλασαν τα πουλιά
της άνοιξης τ'αηδόνια
Με γέλασαν και μου είπανε
ο Χάρος δε με παίρνει
Μη με παίρνεις Χάρο
μη με παίρνεις
γιατί δε με ξαναφέρνεις
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>The birds fooled me
the nightingales of springtime
They fooled me and they told me
that I will never die
I thus built my house
taller than the rest
Forty two stories
sixty windows
I stand by the window
staring at the fields
I see the green fields
and the blue mountains
I see Death (Charon) coming
riding his horse
The birds fooled me
the nightingales of springtime
The birds fooled me
the nightingales of springtime
They fooled me and told me
that Death will not take me
Do not take me Death
do not take me
for you will not bring me back
</code></pre></div></div>
<p>The song is about those who lose sense of their actuality as human.
They have a good moment in their life, a period of success, this
poetic spring time when the nightingales are singing, which fools them
into thinking they are somehow special.</p>
<p>The birds are not there to fool anybody. No. They do what birds always
do, namely, live in the present of their presence. It is the human who
misinterprets the phenomena; who searches for signs in the universe to
vindicate whatever self impression they have already assumed as true.</p>
<p>Such a misfortune to accumulate riches you can never enjoy, just so
that you can brag about how much better you are than everybody else!
It is a meaningless number on a scoreboard. Same principle for other
vanity projects, such as how many followers you have online, the
number of likes your latest post received, how much of a “personality”
you are, and so on.</p>
<p>What matters are the little things in life. The moments we share when
we can stare each other in the eyes without any power dynamic between
us. We are honest when we have nothing to prove, nothing to fight for,
nothing to persuade the other side with; when we feel no need
whatsoever to proclaim “hey, look at me!” and to become the centre of
the world. We are content with being a member of the community.</p>
<p>As we drink and sing together, we acknowledge our shared humanity; not
with more of the same inane virtue signalling and vainglorious
competitiveness, but through our participation in the commons. It is
the deed of treating the others as your equals; the deed of setting
aside whatever ephemeral successes you have had to see the inherent
worth in others.</p>
<p>The personification of Death, the god Charon from antiquity, is a
powerful metaphor for our natural equality. It has the obvious
signification of our shared mortality, though it also speaks to the
inevitabilities we are all aware of: happiness, sorrow, gain, loss,
victory, failure, health, disease, and more. Being mindful of Charon
thus is the means by which we keep a sense of perspective. We may
enjoy the fruits of our labour, though we recognise that (i) we are
not special and (ii) nothing we have is inalienable. Time takes it all
away as all patterns in the cosmos transfigure. Let us, then, have
another round as we appreciate the little things.</p>" nil nil "57f2d5b43f5d5660ea91a3c3103fe068") (59 (26569 29903 577383 977000) "https://protesilaos.com/codelog/2024-12-26-emacs-org-hide-citations-mode/" "Emacs: tone down Org citations on demand" nil "Thu, 26 Dec 2024 00:00:00 +0000" "<p>This is a short video demonstration of how I tone down Org citations
using some custom code I wrote. I share the code and its annotated
version. See the following two sections.</p>
<h2>The code without any commentary</h2>
<p><strong>UPDATE 2024-12-26 20:02 +0200:</strong> I updated the code to include the
<code class=\"language-plaintext highlighter-rouge\">save-excursion</code>, which I forgot to cover in my original publication.
The annotated version has the same update.</p>
<p><strong>UPDATE 2024-12-29 10:33 +0200:</strong> Also check the code of JD Smith,
which relies on the Org API to achieve this result:
<a href=\"https://gist.github.com/jdtsmith/d49eaaae852c5496a80e2489014bc41c\">https://gist.github.com/jdtsmith/d49eaaae852c5496a80e2489014bc41c</a>.
In principle, this is a more reliable approach than using regular
expressions. Still, what I provide below is useful in general.</p>
<hr />
<p>The annotated version is in the next section.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">defvar</span> <span class=\"nv\">prot-org-cite-regexp</span>
<span class=\"s\">\"\\\\(?1:cite: ?\\\\)?\\\\(?2:@\\\\)\\\\(?:[a-z]+\\\\)\\\\(?3:.*?\\\\)\\\\(?:[0-9]\\\\{4,\\\\}\\\\)\\\\(?:[a-z]\\\\)?\"</span>
<span class=\"s\">\"Regular expression matching an Org citation.
Groups 1, 2, and 3 are meant to be hidden when the minor mode
`prot-org-cite-mode' is enabled.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-add-overlays</span> <span class=\"p\">()</span>
<span class=\"s\">\"Add invisible overlays to `prot-org-cite-regexp' numbered groups.\"</span>
<span class=\"p\">(</span><span class=\"k\">let</span> <span class=\"p\">((</span><span class=\"nv\">case-fold-search</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">save-excursion</span>
<span class=\"p\">(</span><span class=\"nv\">save-restriction</span>
<span class=\"p\">(</span><span class=\"nv\">widen</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">goto-char</span> <span class=\"p\">(</span><span class=\"nv\">point-min</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">while</span> <span class=\"p\">(</span><span class=\"nv\">re-search-forward</span> <span class=\"nv\">prot-org-cite-regexp</span> <span class=\"no\">nil</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">dotimes</span> <span class=\"p\">(</span><span class=\"nv\">n</span> <span class=\"mi\">4</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"p\">(</span><span class=\"nb\">=</span> <span class=\"nv\">n</span> <span class=\"mi\">0</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">beg</span> <span class=\"p\">(</span><span class=\"nv\">match-beginning</span> <span class=\"nv\">n</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">end</span> <span class=\"p\">(</span><span class=\"nv\">match-end</span> <span class=\"nv\">n</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">overlay</span> <span class=\"p\">(</span><span class=\"nv\">make-overlay</span> <span class=\"nv\">beg</span> <span class=\"nv\">end</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-put</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'invisible</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"c1\">;; NOTE: I am not using the `after-string' in this case,</span>
<span class=\"c1\">;; but am adding here as it is a useful paradigm in</span>
<span class=\"c1\">;; general.</span>
<span class=\"c1\">;;</span>
<span class=\"c1\">;; (overlay-put overlay 'after-string \"\")</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-put</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'prot-org-cite-overlay</span> <span class=\"no\">t</span><span class=\"p\">)))))))))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-remove-overlays</span> <span class=\"p\">()</span>
<span class=\"s\">\"Remove all `prot-org-cite-overlay' overlays from the current buffer.\"</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">overlays</span> <span class=\"p\">(</span><span class=\"nv\">save-restriction</span>
<span class=\"p\">(</span><span class=\"nv\">widen</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">overlays-in</span> <span class=\"p\">(</span><span class=\"nv\">point-min</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">point-max</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">our-overlays</span> <span class=\"p\">(</span><span class=\"nv\">seq-filter</span>
<span class=\"p\">(</span><span class=\"k\">lambda</span> <span class=\"p\">(</span><span class=\"nv\">overlay</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-get</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'prot-org-cite-overlay</span><span class=\"p\">))</span>
<span class=\"nv\">overlays</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">mapc</span> <span class=\"nf\">#'</span><span class=\"nv\">delete-overlay</span> <span class=\"nv\">our-overlays</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">prot-org-cite</span> <span class=\"o\">'</span><span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:inherit</span> <span class=\"nb\">shadow</span><span class=\"p\">))</span>
<span class=\"s\">\"Face for Org citations when `prot-org-cite-mode' is enabled.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">defvar-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span> <span class=\"no\">nil</span>
<span class=\"s\">\"Object of `face-remap-add-relative' for `prot-org-cite'.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-remap-face</span> <span class=\"p\">(</span><span class=\"k\">&optional</span> <span class=\"nv\">unmap</span><span class=\"p\">)</span>
<span class=\"s\">\"Remap the `org-cite-key' face to `prot-org-cite'.
With optional UNMAP, undo the remapping.\"</span>
<span class=\"p\">(</span><span class=\"k\">if</span> <span class=\"nv\">unmap</span>
<span class=\"p\">(</span><span class=\"k\">progn</span>
<span class=\"p\">(</span><span class=\"nv\">face-remap-remove-relative</span> <span class=\"nv\">prot-org-cite-face-remap-object</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">setq-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">setq-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span>
<span class=\"p\">(</span><span class=\"nv\">face-remap-add-relative</span> <span class=\"ss\">'org-cite-key</span> <span class=\"ss\">'prot-org-cite</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">define-minor-mode</span> <span class=\"nv\">prot-org-cite-mode</span>
<span class=\"s\">\"Partially hide Org citations and style them with `prot-org-cite'.
More specifically, hide groups 1, 2, and 3 of `prot-org-cite-regexp'.\"</span>
<span class=\"ss\">:global</span> <span class=\"no\">nil</span>
<span class=\"p\">(</span><span class=\"k\">if</span> <span class=\"nv\">prot-org-cite-mode</span>
<span class=\"p\">(</span><span class=\"k\">progn</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-add-overlays</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remap-face</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remove-overlays</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remap-face</span> <span class=\"ss\">:unmap-the-face</span><span class=\"p\">)))</span>
</code></pre></div></div>
<h2>Annotated version of <code class=\"language-plaintext highlighter-rouge\">prot-org-cite-mode</code></h2>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"c1\">;; This defines the `prot-org-cite-regexp' variable.  Its value is a</span>
<span class=\"c1\">;; regular expression (Emacs Lisp).  The official manual of Emacs</span>
<span class=\"c1\">;; covers the technicalities.  You will notice that we number some the</span>
<span class=\"c1\">;; groups.  They are the ones we care about.  The rest are ignored.</span>
<span class=\"c1\">;;</span>
<span class=\"c1\">;; We can use the command `re-builder' to test our Emacs Lisp regular</span>
<span class=\"c1\">;; expression in the current buffer.</span>
<span class=\"p\">(</span><span class=\"nb\">defvar</span> <span class=\"nv\">prot-org-cite-regexp</span>
<span class=\"s\">\"\\\\(?1:cite: ?\\\\)?\\\\(?2:@\\\\)\\\\(?:[a-z]+\\\\)\\\\(?3:.*?\\\\)\\\\(?:[0-9]\\\\{4,\\\\}\\\\)\\\\(?:[a-z]\\\\)?\"</span>
<span class=\"s\">\"Regular expression matching an Org citation.
Groups 1, 2, and 3 are meant to be hidden when the minor mode
`prot-org-cite-mode' is enabled.\"</span><span class=\"p\">)</span>
<span class=\"c1\">;; Here we define a function that overlays.  An \"overlay\" is an object</span>
<span class=\"c1\">;; that covers a certain region in the buffer.  A \"region\" is the</span>
<span class=\"c1\">;; space between two buffer positions.  Overlays have a number of</span>
<span class=\"c1\">;; uses.  The one we are interested in here is to make their regions</span>
<span class=\"c1\">;; invisible, thus hiding the affected text.</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-add-overlays</span> <span class=\"p\">()</span>
<span class=\"s\">\"Add invisible overlays to `prot-org-cite-regexp' numbered groups.\"</span>
<span class=\"c1\">;; For the purposes of this operation, we want to make sure that our</span>
<span class=\"c1\">;; search is case-sensitive.  We thus `let' bind the `case-fold-search'</span>
<span class=\"c1\">;; variable to a nil value.  Otherwise, our results will depend on the</span>
<span class=\"c1\">;; user's configuration.</span>
<span class=\"p\">(</span><span class=\"k\">let</span> <span class=\"p\">((</span><span class=\"nv\">case-fold-search</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"c1\">;; Our code will have the side effect of changing the position of</span>
<span class=\"c1\">;; the cursor (technically, the \"point\").  This is needed for our</span>
<span class=\"c1\">;; purposes, but the user will ultimately want the changes to</span>
<span class=\"c1\">;; happen without them losing their context.  The `save-excursion'</span>
<span class=\"c1\">;; allows us to move the point and then trust that Emacs will</span>
<span class=\"c1\">;; restore it to where it was before.</span>
<span class=\"p\">(</span><span class=\"nv\">save-excursion</span>
<span class=\"c1\">;; We want to operate in the entire buffer.  But the user may have</span>
<span class=\"c1\">;; already narrowed to a portion thereof.  To respect their choice</span>
<span class=\"c1\">;; while still doing the right thing, we have to wrap our code in</span>
<span class=\"c1\">;; `save-restriction' and then `widen' the view.  This means that</span>
<span class=\"c1\">;; our subsequent calls will run in the unnarrowed buffer and the</span>
<span class=\"c1\">;; narrowing will be restored once we are done.</span>
<span class=\"p\">(</span><span class=\"nv\">save-restriction</span>
<span class=\"p\">(</span><span class=\"nv\">widen</span><span class=\"p\">)</span>
<span class=\"c1\">;; We start from the minimum visible position in the buffer.</span>
<span class=\"c1\">;; Since we widened the view in the previous line of code, this</span>
<span class=\"c1\">;; is the beginning of the buffer.  Otherwise, it would have</span>
<span class=\"c1\">;; been the beginning of the narrowed portion of the buffer.</span>
<span class=\"p\">(</span><span class=\"nv\">goto-char</span> <span class=\"p\">(</span><span class=\"nv\">point-min</span><span class=\"p\">))</span>
<span class=\"c1\">;; Starting from the top, we perform a search forward for the</span>
<span class=\"c1\">;; `prot-org-cite-regexp'.  We do this in a loop.  The loop</span>
<span class=\"c1\">;; works (i.e. is not infinite) because (i) the search has the</span>
<span class=\"c1\">;; side effect of moving the point to the end of the match so</span>
<span class=\"c1\">;; the search does not get stuck in one place, and (ii) we pass</span>
<span class=\"c1\">;; the relevant argument to `re-search-forward' to return nil if</span>
<span class=\"c1\">;; there is no match, instead of throwing an error.  The loop</span>
<span class=\"c1\">;; only runs when its condition is non-nil.</span>
<span class=\"p\">(</span><span class=\"nv\">while</span> <span class=\"p\">(</span><span class=\"nv\">re-search-forward</span> <span class=\"nv\">prot-org-cite-regexp</span> <span class=\"no\">nil</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"c1\">;; Here I had to make a stylistic decision.  We want to add</span>
<span class=\"c1\">;; overlays for the three numbered groups in our regular</span>
<span class=\"c1\">;; expression.  I could have arranged to do this with another</span>
<span class=\"c1\">;; `while', which would have its own local counter, but I</span>
<span class=\"c1\">;; thought it would make the code a bit harder to read for our</span>
<span class=\"c1\">;; purposes here.  So I am using `dotimes' instead, whose</span>
<span class=\"c1\">;; semantics are in line with what we are doing, i.e. run</span>
<span class=\"c1\">;; something N times.  The part about `dotimes' that I do not</span>
<span class=\"c1\">;; like is that it starts from 0 and its maximum number is</span>
<span class=\"c1\">;; exclusive, meaning that we only get up to 3 even though we</span>
<span class=\"c1\">;; have the 4 there.  Someone who is not familiar with this</span>
<span class=\"c1\">;; behaviour will thus find the following perplexing.</span>
<span class=\"p\">(</span><span class=\"nb\">dotimes</span> <span class=\"p\">(</span><span class=\"nv\">n</span> <span class=\"mi\">4</span><span class=\"p\">)</span>
<span class=\"c1\">;; The group 0 in a regular expression is a special number</span>
<span class=\"c1\">;; which refers to the entire match.  We do not want to do</span>
<span class=\"c1\">;; anything with that.  We only care about numbers 1, 2, 3.</span>
<span class=\"c1\">;; Thus, the first run of this `dotimes' does nothing other</span>
<span class=\"c1\">;; than increment 0 to 1 and run again.</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"p\">(</span><span class=\"nb\">=</span> <span class=\"nv\">n</span> <span class=\"mi\">0</span><span class=\"p\">)</span>
<span class=\"c1\">;; Before we start adding our overlays, we need to be sure</span>
<span class=\"c1\">;; that there is a match for the Nth group in our regular</span>
<span class=\"c1\">;; expression.  If there is none, we skip it and move on</span>
<span class=\"c1\">;; with our loop.  If there is a match, then we store its</span>
<span class=\"c1\">;; beginning and end positions and then make an overlay</span>
<span class=\"c1\">;; that stretches between those two.</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">beg</span> <span class=\"p\">(</span><span class=\"nv\">match-beginning</span> <span class=\"nv\">n</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">end</span> <span class=\"p\">(</span><span class=\"nv\">match-end</span> <span class=\"nv\">n</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">overlay</span> <span class=\"p\">(</span><span class=\"nv\">make-overlay</span> <span class=\"nv\">beg</span> <span class=\"nv\">end</span><span class=\"p\">)))</span>
<span class=\"c1\">;; Now that we have created our overlay, we are ready to</span>
<span class=\"c1\">;; associated properties with it.  These are symbols</span>
<span class=\"c1\">;; that may already have an internal meaning, such as</span>
<span class=\"c1\">;; `invisible' or arbitrary symbols that we can use for</span>
<span class=\"c1\">;; our own purposes later.  Each time we set a property,</span>
<span class=\"c1\">;; we specify its value.  In principle, we could have a</span>
<span class=\"c1\">;; fine-grained system with different values, though all</span>
<span class=\"c1\">;; we need here is something that returns non-nil.</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-put</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'invisible</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"c1\">;; I keep the `after-string' overlay property here for</span>
<span class=\"c1\">;; this demonstration.  We do not need it, though it is</span>
<span class=\"c1\">;; how we can add an arbitrary string in the stead of</span>
<span class=\"c1\">;; the text we made invisible (think of how Org folds</span>
<span class=\"c1\">;; its headings, for example).</span>
<span class=\"c1\">;;</span>
<span class=\"c1\">;; (overlay-put overlay 'after-string \"\")</span>
<span class=\"c1\">;; Finally, we want to make our overlays have a unique</span>
<span class=\"c1\">;; property that allows us to identify them later.  I</span>
<span class=\"c1\">;; have called this `prot-org-cite-overlay', though it</span>
<span class=\"c1\">;; has no inherent meaning.  What matters is that it is</span>
<span class=\"c1\">;; unambiguously ours and that it has a non-nil value.</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-put</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'prot-org-cite-overlay</span> <span class=\"no\">t</span><span class=\"p\">)))))))))</span>
<span class=\"c1\">;; This is the function which reverts `prot-org-cite-add-overlays'.</span>
<span class=\"c1\">;; You will notice the same pattern of `save-restriction' for the</span>
<span class=\"c1\">;; aforementioned reasons.</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-remove-overlays</span> <span class=\"p\">()</span>
<span class=\"s\">\"Remove all `prot-org-cite-overlay' overlays from the current buffer.\"</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">overlays</span> <span class=\"p\">(</span><span class=\"nv\">save-restriction</span>
<span class=\"p\">(</span><span class=\"nv\">widen</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">overlays-in</span> <span class=\"p\">(</span><span class=\"nv\">point-min</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">point-max</span><span class=\"p\">))))</span>
<span class=\"c1\">;; Here we go through the whole list of overlays to</span>
<span class=\"c1\">;; identify those which are ours.  Without this</span>
<span class=\"c1\">;; filtering, we could/would cause something to break.</span>
<span class=\"p\">(</span><span class=\"nv\">our-overlays</span> <span class=\"p\">(</span><span class=\"nv\">seq-filter</span>
<span class=\"p\">(</span><span class=\"k\">lambda</span> <span class=\"p\">(</span><span class=\"nv\">overlay</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">overlay-get</span> <span class=\"nv\">overlay</span> <span class=\"ss\">'prot-org-cite-overlay</span><span class=\"p\">))</span>
<span class=\"nv\">overlays</span><span class=\"p\">)))</span>
<span class=\"c1\">;; Now that we have found all our overlays, let us delete them.</span>
<span class=\"p\">(</span><span class=\"nb\">mapc</span> <span class=\"nf\">#'</span><span class=\"nv\">delete-overlay</span> <span class=\"nv\">our-overlays</span><span class=\"p\">)))</span>
<span class=\"c1\">;; The default style for Org citations is like that of links.  In</span>
<span class=\"c1\">;; general, this is fine though our mode is designed to tone down the</span>
<span class=\"c1\">;; citations.  We thus define our custom face, which inherits from the</span>
<span class=\"c1\">;; `shadow' face.  We will apply this in the buffer where `prot-org-cite-mode'</span>
<span class=\"c1\">;; is enabled.</span>
<span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">prot-org-cite</span> <span class=\"o\">'</span><span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:inherit</span> <span class=\"nb\">shadow</span><span class=\"p\">))</span>
<span class=\"s\">\"Face for Org citations when `prot-org-cite-mode' is enabled.\"</span><span class=\"p\">)</span>
<span class=\"c1\">;; The technicalities of how to apply a face instead of another are</span>
<span class=\"c1\">;; covered by the function `face-remap-add-relative'.  Its return</span>
<span class=\"c1\">;; value is a special object that we need to store, such that we can</span>
<span class=\"c1\">;; remove it afterwards.  You will notice how this declaration of the</span>
<span class=\"c1\">;; variable has the \"local\" specifier, meaning that `setq' is</span>
<span class=\"c1\">;; functionally equivalent to `setq-local' (I still write the latter,</span>
<span class=\"c1\">;; because I prefer the code to be more explicit about what it is</span>
<span class=\"c1\">;; doing).</span>
<span class=\"p\">(</span><span class=\"nv\">defvar-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span> <span class=\"no\">nil</span>
<span class=\"s\">\"Object of `face-remap-add-relative' for `prot-org-cite'.\"</span><span class=\"p\">)</span>
<span class=\"c1\">;; This function sets up the `face-remap-add-relative' that I</span>
<span class=\"c1\">;; mentioned in the previous comment.  We could have defined a</span>
<span class=\"c1\">;; separate function for undoing this effect, though I considered it</span>
<span class=\"c1\">;; pertinent to demonstrate the use of optional parameters.  Anything</span>
<span class=\"c1\">;; after the `&optional' defaults to nil if it is not supplied as an</span>
<span class=\"c1\">;; argument.  So we can call the function without it, but we can also</span>
<span class=\"c1\">;; furnish the argument if we need to.</span>
<span class=\"c1\">;;</span>
<span class=\"c1\">;; The UNMAP we define here does not treat its value specially.  Any</span>
<span class=\"c1\">;; non-nil value will suffice.</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-cite-remap-face</span> <span class=\"p\">(</span><span class=\"k\">&optional</span> <span class=\"nv\">unmap</span><span class=\"p\">)</span>
<span class=\"s\">\"Remap the `org-cite-key' face to `prot-org-cite'.
With optional UNMAP, undo the remapping.\"</span>
<span class=\"p\">(</span><span class=\"k\">if</span> <span class=\"nv\">unmap</span>
<span class=\"p\">(</span><span class=\"k\">progn</span>
<span class=\"p\">(</span><span class=\"nv\">face-remap-remove-relative</span> <span class=\"nv\">prot-org-cite-face-remap-object</span><span class=\"p\">)</span>
<span class=\"c1\">;; As I noted before, the `defvar-local' makes it so that we do</span>
<span class=\"c1\">;; not need to write `setq-local', as `setq' will do the same</span>
<span class=\"c1\">;; thing.  I still prefer to be unambiguous.</span>
<span class=\"p\">(</span><span class=\"nv\">setq-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"c1\">;; In this call we see how the value of the variable</span>
<span class=\"c1\">;; `prot-org-cite-face-remap-object' is set to the return value of</span>
<span class=\"c1\">;; the `face-remap-add-relative' function call.  So we get the</span>
<span class=\"c1\">;; side effect of the remap, while we also store the return value.</span>
<span class=\"p\">(</span><span class=\"nv\">setq-local</span> <span class=\"nv\">prot-org-cite-face-remap-object</span>
<span class=\"p\">(</span><span class=\"nv\">face-remap-add-relative</span> <span class=\"ss\">'org-cite-key</span> <span class=\"ss\">'prot-org-cite</span><span class=\"p\">))))</span>
<span class=\"c1\">;; All we need to do now is put everything together.  Our minor mode</span>
<span class=\"c1\">;; is, at its core, a simple toggle to do/undo our stylistic changes.</span>
<span class=\"c1\">;; The :global keyword specifies whether our mode has effect across</span>
<span class=\"c1\">;; all buffers, but ours is buffer-local because of the nil value we</span>
<span class=\"c1\">;; specify.</span>
<span class=\"p\">(</span><span class=\"nv\">define-minor-mode</span> <span class=\"nv\">prot-org-cite-mode</span>
<span class=\"s\">\"Partially hide Org citations and style them with `prot-org-cite'.
More specifically, hide groups 1, 2, and 3 of `prot-org-cite-regexp'.\"</span>
<span class=\"ss\">:global</span> <span class=\"no\">nil</span>
<span class=\"c1\">;; What the `define-minor-mode' does behind the scenes is to define</span>
<span class=\"c1\">;; an interactive function (a \"command\") and a variable that use the</span>
<span class=\"c1\">;; same symbol, `prot-org-cite-mode' in this case.  There is no</span>
<span class=\"c1\">;; clash, as Emacs has separate namespaces for functions and</span>
<span class=\"c1\">;; variables.  Then, when we call the command it sets its</span>
<span class=\"c1\">;; corresponding variable to a non-nil or nil value, so the rest of</span>
<span class=\"c1\">;; our logic runs accordingly.</span>
<span class=\"p\">(</span><span class=\"k\">if</span> <span class=\"nv\">prot-org-cite-mode</span>
<span class=\"c1\">;; The `progn' is our way of saying \"those multiple calls are a</span>
<span class=\"c1\">;; bundle, so treat them as one\".  This is necessary to write an</span>
<span class=\"c1\">;; `if' statement (among others), because the THEN part has to</span>
<span class=\"c1\">;; be one argument.  But the ELSE part does not need the `progn'</span>
<span class=\"c1\">;; because of a special behaviour which automatically treats all</span>
<span class=\"c1\">;; remaining arguments as a single list.  In Emacs Lisp</span>
<span class=\"c1\">;; functions, this is achieved by the `&rest' keyword (well, the</span>
<span class=\"c1\">;; `if' in particular does not use `&rest' because it is written</span>
<span class=\"c1\">;; in C, though you will see that in plenty of places).</span>
<span class=\"p\">(</span><span class=\"k\">progn</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-add-overlays</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remap-face</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remove-overlays</span><span class=\"p\">)</span>
<span class=\"c1\">;; As I wrote in my commentary about the optional parameter of</span>
<span class=\"c1\">;; `prot-org-cite-remap-face', it does not treat its value in any</span>
<span class=\"c1\">;; special way.  What matters is for it to be non-nil.  In cases</span>
<span class=\"c1\">;; like this one, I prefer to use a :KEYWORD, which can be any</span>
<span class=\"c1\">;; arbitrary text: it always evaluates to itself, i.e. it is</span>
<span class=\"c1\">;; non-nil (same for symbols, though a keyword in this context is</span>
<span class=\"c1\">;; generally less ambiguous).</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-cite-remap-face</span> <span class=\"ss\">:unmap-the-face</span><span class=\"p\">)))</span>
</code></pre></div></div>" nil nil "d79a5d0e4d7e5db3ad4f4a8738fde133") (58 (26569 29903 575386 881000) "https://protesilaos.com/codelog/2024-12-25-emacs-denote-sequence-notes/" "Emacs: sequence notes with new =?utf-8?Q?=E2=80=98denote-sequence=2Eel=E2=80=99?=" nil "Wed, 25 Dec 2024 00:00:00 +0000" "<p><strong>UPDATE 2025-01-01 10:02 +0200:</strong> The code is merged into <code class=\"language-plaintext highlighter-rouge\">main</code> and
is expanded with more functionality. I will update the manual accordingly.</p>
<hr />
<p>Today I wrote the initial version of the new optional extension
<code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code>, which is part of the <code class=\"language-plaintext highlighter-rouge\">denote</code> package (current
development version is <code class=\"language-plaintext highlighter-rouge\">3.2.0-dev</code>). It provides commands to create
“sequence notes”, i.e. notes that have an inherent structure of
parent, child, or sibling. A sequence is expressed numerically, such
as <code class=\"language-plaintext highlighter-rouge\">1</code> being a parent, <code class=\"language-plaintext highlighter-rouge\">1=1</code> the first child thereof, <code class=\"language-plaintext highlighter-rouge\">1=2</code> the
sibling of <code class=\"language-plaintext highlighter-rouge\">1=1</code> and child of <code class=\"language-plaintext highlighter-rouge\">1</code>, and so on.</p>
<p>In technical terms, this new extension leverages the optional
<code class=\"language-plaintext highlighter-rouge\">SIGNATURE</code> file name component, per the Denote file-naming scheme
(read the manual, which is the source of truth—I write it for you).
<code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code> streamlines the creation of signatures to conform
with the aforementioned sequencing (in general, the signature file
name component is a free-form field that users can employ in any
workflow they want).</p>
<p>The new code is available on the <code class=\"language-plaintext highlighter-rouge\">sequence-notes-extension</code> branch:
<a href=\"https://github.com/protesilaos/denote/tree/sequence-notes-extension\">https://github.com/protesilaos/denote/tree/sequence-notes-extension</a>.
Depending on when you read this, the branch may no longer exist as the
code is merged into <code class=\"language-plaintext highlighter-rouge\">main</code>.</p>
<p>Those of you who use Denote for your zettelkasten, please give
<code class=\"language-plaintext highlighter-rouge\">denote-sequence.el</code> a try. If it covers your use-case, let me know
what else you want to see as a feature. If it does not conform with
your requirements, please tell me if we can do something to make it
work for you.</p>
<p>The commands we provide as of this writing:</p>
<ul>
<li><code class=\"language-plaintext highlighter-rouge\">denote-sequence</code>, which creates a new sequence note of type parent,
sibling, or child.</li>
<li><code class=\"language-plaintext highlighter-rouge\">denote-sequence-new-parent</code>.</li>
<li><code class=\"language-plaintext highlighter-rouge\">denote-sequence-new-sibling</code>.</li>
<li><code class=\"language-plaintext highlighter-rouge\">denote-sequence-new-child</code>.</li>
</ul>
<h2>What is Denote</h2>
<p>Denote implements an efficient file-naming scheme that makes it easy
to retrieve files by their name. This is done by creating new files
(“notes”), or by renaming existing ones. For new files, Denote
supports any text format, with Org, Markdown, and plain text being
covered out-of-the-box. For renaming files, any file is supported
(e.g. I use Denote for all my videos).</p>
<p>As such, Denote is open-ended in terms of workflow. It is not just a
note-taking package, let alone one that is limited a specific
methodology, such as zettelkasten. Still, Denote can excel in those
use-cases, among others.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">denote</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/denote\">https://protesilaos.com/emacs/denote</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/denote-changelog\">https://protesilaos.com/emacs/denote-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/denote\">https://github.com/protesilaos/denote</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/denote\">https://gitlab.com/protesilaos/denote</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2022-06-18-denote-demo/\">https://protesilaos.com/codelog/2022-06-18-denote-demo/</a></li>
<li>Backronyms: Denote Everything Neatly; Omit The Excesses.  Don’t Ever
Note Only The Epiphenomenal.</li>
</ul>" nil nil "0a952dedb1aa01379f23a7b3e6ca75e3") (57 (26569 29903 533588 805000) "https://protesilaos.com/codelog/2024-12-24-emacs-sxhkdrc-mode-1-1-0/" "Emacs: sxhkdrc-mode version 1.1.0" nil "Tue, 24 Dec 2024 00:00:00 +0000" "<p>This is a major mode for editing <code class=\"language-plaintext highlighter-rouge\">sxhkdrc</code> files. SXHKD is the Simple
X Hot Key Daemon which is commonly used in minimalist desktop sessions
on Xorg (I use it with bspwm, herbstluftwm, and i3wm). The <code class=\"language-plaintext highlighter-rouge\">sxhkdrc</code>
file configures key chords, binding them to commands. For the
technicalities, read the man page <code class=\"language-plaintext highlighter-rouge\">sxhkd(1)</code>.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">sxhkdrc-mode</code></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/sxhkdrc-mode\">https://github.com/protesilaos/sxhkdrc-mode</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/sxhkdrc-mode\">https://gitlab.com/protesilaos/sxhkdrc-mode</a></li>
</ul>
</li>
<li>Backronym: Such Xenotropic Hot Keys Demonstrate Robustness and
Configurability … mode.</li>
</ul>
<hr />
<p>This is a small set of changes to an already stable package.</p>
<h2>The Outline of a file is more refined</h2>
<p>Each file now has an outline which consists of comment pseudo headings
(starting with three or more <code class=\"language-plaintext highlighter-rouge\">#</code> followed by a space) and lines with a
key binding. Before it was just the comment headings.</p>
<p>Additionally, the heading levels are defined such that key bindings
are inside the comment headings when we do the folding. This is what
we have in, for example, <code class=\"language-plaintext highlighter-rouge\">elisp-mode</code>.</p>
<p>The built-in <code class=\"language-plaintext highlighter-rouge\">outline-minor-mode</code> benefits from this change as do
third-party commands like <code class=\"language-plaintext highlighter-rouge\">consult-outline</code> from the <code class=\"language-plaintext highlighter-rouge\">consult</code>
package.</p>
<p>For example, we can get <code class=\"language-plaintext highlighter-rouge\">outline-minor-mode</code> folding of this:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code># Focus in the given direction. With Shift move the client in the
# given direction. With Ctrl resize the frame in the given direction.
mod4 + {_, shift +, ctrl +} {h,j,k,l}
herbstclient {focus,shift,resize} {left,down,up,right} {_,_,0.05}
</code></pre></div></div>
<p>To this:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code># Focus in the given direction. With Shift move the client in the
# given direction. With Ctrl resize the frame in the given direction.
mod4 + {_, shift +, ctrl +} {h,j,k,l}...
</code></pre></div></div>
<p>And the same idea for all heading levels.</p>
<h2>Syntax highlighting includes the dot in command names</h2>
<p>I made it so that when we bind a command to a key, we get its full
name highlighted even if that includes a file name extension. So now
the <code class=\"language-plaintext highlighter-rouge\">herbstluftwm_load_workspace_layout.sh</code> in the following sample
will get colourised instead of the name without <code class=\"language-plaintext highlighter-rouge\">.sh</code>:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>mod4 + w ; {f,t,h,m}
herbstluftwm_load_workspace_layout.sh {full,third,half,middle}
</code></pre></div></div>
<p>Another benefit of this refinement is that something like the built-in
command <code class=\"language-plaintext highlighter-rouge\">mark-sexp</code> will recognise the whole name as a syntactic unit.</p>" nil nil "39d5da4b873a9079bc0245fc3a504ebf") (56 (26569 29903 533322 921000) "https://protesilaos.com/commentary/es/2024-12-22-de-tormenta-a-tormenta-la-sonrisa-prevalece/" "De tormenta a tormenta, la sonrisa prevalece" nil "Sun, 22 Dec 2024 00:00:00 +0000" "<p>[ This is a translation of my article <a href=\"https://protesilaos.com/commentary/2024-12-04-storms-keep-smiling/\">From storm to storm, the smile remains</a>. It was done by a volunteer. ]</p>
<p>Escribí esto ayer por la tarde, pero no he podido publicarlo hasta hoy.</p>
<hr />
<p>Ha llovido mucho durante casi todo el día. La previsión meteorológica es
que va a seguir lloviendo hasta pasada medianoche. Se ha ido la luz porque
los paneles solares no han podido generar suficiente potencia para cargar
las baterías. Esto es lo que ocurre aquí cuando las nubes son densas: no
pasa suficiente luz solar. En el pasado, me habría sentido frustrado por
mi impotencia ante estos retos. Me sentiría decepcionado por mi estado y
consideraría injusto que todo mi duro trabajo se echara a perder. En otras
palabras, interpretaría los fenómenos como si yo estuviera en su
epicentro, haciéndome la pregunta equivocada de «¿por qué a mí?». Pero yo
no soy el centro del mundo, a pesar de lo que mi subjetividad pueda
ofrecer como primera impresión. Lo que yo piense o haga no importa en el
gran esquema de las cosas. Hacer que todo gire en torno a mí no me ayuda a
vivir.</p>
<p>Antes estaba sentado en el bar, es un mueble sencillo que hice con un palé
de madera; lo corté por la mitad y lo uní con algunas tablas para formar
la estructura de soporte. Luego, utilicé una vieja puerta de armario para
la parte superior. Los materiales que he utilizado tienen roturas
visibles. Todos son de segunda mano. El bar no ganaría ningún concurso de
belleza. No es el tipo de objeto que se exhibe para presumir de riqueza.
Cumple su función y por esa misma razón me gusta.</p>
<p>Mientras estaba en el bar, observaba cómo llovía fuera. Es principios de
diciembre. Estamos en el ocaso del otoño, que dura aproximadamente hasta
el próximo solsticio. He contado cinco plátanos junto al río. Hay más río
abajo. Sus hojas tienen estos colores naranja y verde-amarillo brillantes,
que complementan el verde aún vivo de sus robles vecinos. Algunas cañas de
los alrededores siguen siendo doradas, mientras que el suelo es un
degradado de verde oscuro y marrón con manchas ocres. Todo ello bajo un
cielo gris. Es una escena de una belleza sobrecogedora.</p>
<p>En lugar de lamentarme por mi supuesta debilidad y mi aparente incapacidad
para «hacer algo» por no tener electricidad, me detengo un momento e
intento recordar que no lo sé todo. Puede que tenga una idea clara de lo
que quiero, pero no es necesariamente lo que necesito, además, lo que
deseo puede ser producto de un malentendido; de que ignoro aspectos
importantes de la realidad; de que me dejo influir por otra persona sin
comprobar si esas aspiraciones se aplican a mi caso; de que no tengo en
cuenta el panorama general. Así pues, la claridad sobre los propios deseos
no es garantía de la idoneidad de un curso de acción en relación con las
condiciones imperantes.</p>
<p>Cuando ocurre algo, no quiero ser erístico al respecto. No tiene sentido
discutir con los hechos: simplemente son. Lo que hago, en cambio, es
reconocer cómo están las cosas, reflexionar sobre ellas y sobre mi
condición. Puede que tenga algo nuevo que aprender o una nueva oportunidad
de practicar lo que ya sé. Si me encuentro discutiendo con los hechos y
llamándolos por su nombre, agitando el puño hacia el cielo, por así
decirlo, me doy cuenta de que estoy siendo un necio, porque pretendo saber
más de lo que realmente sé y/o asumo que mi capacidad de acción es mayor
de lo que realmente es.</p>
<p>Mientras continuaba observando mi entorno, mi atención se desplazó al
primer plano. Justo delante de mi puerta hay un nogal joven que planté
este verano. A ambos lados crecen dos especies de salvia, la salvia
officinalis (salvia común) y la salvia fruticosa (salvia griega). Las
encontré en el campo y trasplanté algunos ejemplares aquí. Su aroma es
especial y además tienen un aspecto estupendo. Aunque no puedo agitar el
puño contra los dioses de este mundo, sé que mis actos tienen
consecuencias. Por eso asumo la responsabilidad de mi conducta e intento
ser considerado en mis actos. Lo que hago aquí influye en mi entorno
inmediato. El techo sobre mi cabeza es obra mía. No lo habría conseguido
sin trabajar duro. Estas plantas prosperan bajo mi égida. Tengo un plan
claro para todo lo que hago aquí, teniendo en cuenta la trayectoria del
sol y las demás particularidades de mi entorno.</p>
<p>Aceptar el estado actual de las cosas no es lo mismo que rendirse. Hay una
diferencia entre el pragmatismo y el conformismo o el derrotismo. Soy
consciente de que algunos estados de cosas son consecuencia de mi
iniciativa. Otros no. Incluso cuando controlo algunos aspectos de todo el
proceso, por el hecho de ser su iniciador, no tengo necesariamente pleno
poder sobre él. Cuido de las plantas, por ejemplo, pero puede que no
superen un duro invierno o una grave sequía. Mi contribución no es el
único factor determinante en este caso. Hay una interacción de elementos
que se combinan de forma compleja para producir los estados de cosas
perceptibles. El paradigma de mi realidad, por tanto, no me tiene a mí en
su centro. No soy más que un factor de la totalidad, continuamente
implicado en el ajuste dinámico de los fenómenos.</p>
<p>Cuando el resultado se ajusta a lo planeado, me siento bien conmigo mismo.
Es una retroalimentación que confirma mi capacidad para provocar cambios.
Tengo poder. Cuando los resultados no son los que quiero, no me echo toda
la culpa a mí. Quizá no tuve en cuenta algo importante, pero incluso si
fui impecable en mis cálculos, siempre existe la realidad de otros
factores que influyen en lo que ocurre. Si, ante un bajón, afirmo que
«sólo yo tengo la culpa de esto», entonces mi egocentrismo es incorrecto.
Pero no se trata de un mero error analítico. Tiene efectos prácticos, ya
que asumo sobre mis hombros una carga que no es mía, o totalmente mía, en
cualquier caso. Una vez más, cometo la arrogancia de pretender ser más
fuerte de lo que soy y, al exagerar, me impongo una presión que no estoy
hecho para soportar.</p>
<p>Si las cargas que asumimos son más pesadas de lo que podemos soportar, lo
único que hacemos es perjudicarnos a nosotros mismos. Nadie es
inquebrantable, por muy duro que se crea. ¿Qué pasará si me encaro con
Dios? ¿Qué sentido tiene discutir con el cielo? Pierdo, sin preguntas. No
tengo nada que demostrar al mundo. Es un acto de locura. Lo mejor que
puedo esperar es descubrir mis límites. Sin embargo, si no tengo cuidado
con la forma en que hago este descubrimiento, sólo encontraré mi final.
Por lo tanto, es lógico ser previsor, pensar las cosas sin darle
demasiadas vueltas y tener en cuenta las condiciones imperantes a la hora
de elegir el mejor camino a seguir.</p>
<p>Siempre hay una subjetividad de la que no puedo escapar. Observaré y
sentiré el mundo a través de mis propias facultades. No puedo experimentar
la tormenta como un árbol. Puedo intentar pensar en esos términos, pero me
quedaré corto. Se trata, en el mejor de los casos, de una aproximación; en
el peor, de una proyección a una forma de vida totalmente distinta.
Reconociendo lo ineludible de lo subjetivo, quiero mantener una visión
equilibrada de los acontecimientos. En esta perspectiva más amplia, soy un
factor del caso. Hago lo que puedo en pos de mis objetivos. Otras fuerzas
seguirán actuando. Habrá siempre nuevas eventualidades y yo estaré en un
proceso continuo de adaptación a ellas.</p>
<p>Sé que no debo discutir con los dioses. La tormenta pasará. Estoy bien.
Mañana habrá sol y volveré a tener electricidad. Entonces reanudaré mi
trabajo informático. Doy las gracias al mundo por darme esta oportunidad
de aprender algo: a no comportarme como un niño petulante y a ser paciente
en la fase de incertidumbre. Lo que tenga que pasar, pasará. Haré lo que
pueda y me responsabilizaré de lo que me pertenece. El resto seguirá
siendo a pesar de mis actos. Así funciona el mundo. Cuanto antes
aprendamos a no pretender ser omniscientes y omnipotentes, más fácil será
nuestra vida.</p>" nil nil "beb1ff9b875acd56e7a4ec51b966031c") (55 (26569 29903 532818 328000) "https://protesilaos.com/commentary/2024-12-22-small-wins-larger-goal/" "The small wins lead to the larger goal" nil "Sun, 22 Dec 2024 00:00:00 +0000" "<p>There is no rainfall today, though it is cloudy and dark right now: a
reminder of yesterday’s prevailing conditions. The storm was forecast
to hit us early in the day. It poured for several hours, but was not
too bad. The storm arrived in the evening and ran its course through
the early morning hours. I stayed awake until about 3 AM to be
available for any urgent intervention to my flood control project. I
visited the stream several times, the last one being before I went to
bed, judging that the situation was under control.</p>
<p>The intensified water flow had pushed aside a large pile of canes and
rocks I had placed on one side. Though it did not displace some old
doors and other junk I had lined up as reinforcements to the ground.
At the crack of dawn, I revisited the spot to start work anew. My goal
was to resume the effort of redirecting the stream such that it does
not crash againt my land at a perpendicular angle: that causes soil
erosion. It must instead flow by the side. I eventually moved around
large parts of soil, gravel, and stone, as well as broken branches and
anything else I could find. I fortified a section of the ground that I
had already worked on before but which was still susceptible to
erosion. It looks good for the time being.</p>
<p>This flood control project nears a full year of work. There have been
several setbacks in the meantime, though the results are largely in my
favour. I am encouraged to press on with the hard work because every
time I do something I notice progress. My actions affect my
environment. I understand that my fate is partially of my doing. If I
sit idly by, hoping that somehow the world will work in my favour, I
will only bear witness to a catastrophe that has the potential of
threatening my presence in this land. If instead, I assume
responsibility, there is a chance that I will subsist here long-term.</p>
<p>Responsibility is hard. We conventionally expect it from everybody who
is a legal adult, though we know it is not merely a function of
ageing. Everybody wants to be free to do as they see fit, though few
understand that the freedom to act is inseparable from the bondage to
the consequences it engenders. To be free is to accept what your
actions do to you. Thus, you learn to exercise your freedom wisely.</p>
<p>This is why responsibility cannot, in fact, be bestowed upon a person
through edict. It is instilled as state of mind, through education,
everyday experiences, and the pressing necessity of the circumstances.
We are responsible only when we rise up to the occasion, accepting
what the task entails. There is no going back from it. You commit all
the requisite deeds, are thoughtful in your plans, and decisive in
your actions. If you cannot operate along those lines, then
responsibility is but a burden that will crush you; a choice made
freely that you regret shortly thereafter, implicitly lamenting that
very freedom you had.</p>
<p>My responsibility, then, is to do the work no matter what, such that
the hut project is sustainable. I am successful thus far and remain
unflinching in my commitment to the original goal. What empowers me to
keep going, to not feel lazy in the morning, and to not shy away from
the stream’s ice cold waters, are all those small wins I have achieved
and continue to experience. I understand there is a feedback loop
between my capacity for purposeful action and the consequences
thereof.</p>
<p>If every attempt of mine resulted in utter failure, if I would be
losing ground each time despite my best efforts, I would start to
question my ability to realise my ambitions. Because of the experience
of success in the individual tasks that constitute this larger
endeavour, I have forged the mentality of success: I can do this. I am
more courageous, but not reckless; more resilient, albeit not
unbreakable.</p>
<p>This is all due to the longer-term perspective that informs my
judgement. The small wins are contributing to an eventuality I have
envisaged and am meticulously working towards. I have long-now
answered the “why” which underpins all of my actions. It is for this
reason that I am patient and unwavering in the face of evolving states
of affairs.</p>
<p>There is a mental component to what I do, though I cannot see how this
determination of mine would have been embedded in my conscience, let
alone persisted, if all experience hitherto was running counter to it.
The small wins are essential. They are the routines which continuously
affirm that there is potential for success; that my efforts are not in
vain, relative to my stated objectives.</p>
<p>The positive feedback I receive when an action of mine has the desired
effect on my environment, gives me the knowledge I need to believe in
myself. It is what sustains the longer-term goal, rendering it as
realistic, even if it is not easy. The small wins do not make me
delusional though. They do not inflate my confidence about my capacity
to perform excellently in every field of endeavour. No. They merely
remind me that I can cope with this type of work. This is all I need,
anyway, for such was the responsibility I assumed when I freely made
this bold step forward. I will continue to do what I must. What
happens next is for the gods of this world to decide.</p>" nil nil "f4943cc5746134935074b6b8f44b6d84") (54 (26569 29903 532356 796000) "https://protesilaos.com/politics/2024-12-20-realignment-western-values/" "On the realignment of Western values" nil "Fri, 20 Dec 2024 00:00:00 +0000" "<p>Writing for <em>Project Syndicate</em> in an article titled <a href=\"https://www.project-syndicate.org/commentary/west-has-abandoned-western-values-by-yanis-varoufakis-2024-12\">The West Is Not Dying, but It Is Working on It</a>, Yanis Varoufakis provides a commentary on the West’s hypocritical treatment of its own vaunted values.</p>
<blockquote>
<p>Western power is as strong as ever. What has changed is that the combination of socialism for financiers, collapsing prospects for the bottom 50%, and the surrender of our minds to Big Tech has given rise to overweening Western elites with little use for the last century’s value system.</p>
</blockquote>
<p>The gist of Yanis’ position is that the power elite benefited from the liberalism of the previous century. They saw it as the means to the end of perpetuating Western hegemony. As the times are changing, so is this unscrupulous establishment adapting to a new order in which those very values are no longer considered expedient, let alone sacrosanct. The narrative is plausible, especially once we account for the obvious imperialistic initiatives of Western powers over the previous decades as well as the ones currently unfolding on the ever-shifting battlefronts. Still, I think Yanis follows a line of reasoning that undermines his own vision for a better world.</p>
<p>If all the values that find currency in any given social order are but the polite facade of a potentially brutal regime, then must we not also question the leftist worldview Yanis represents? Why would those precepts be any different? Could we not formulate the same narrative of ruling elites pulling the strings about, say, Russian imperialism and how it transmogrified from Tsarism, to Sovietism, to Putinism? Where is this pristine leftist milieu where all people believe exactly in what they preach and do not deviate from it one iota? There is no such place and no such agents of action, because we are always dealing with human beings who labour under imperfect circumstances. Sometimes we fight for our principles, while at others we circumvent them due to how inconvenient they are under the prevailing conditions. This does not mean that nobody believes in anything but their parochial agenda, but only that the institution of any one set of laudable goals as the basis of our politics remains a work-in-progress.</p>
<p>We know from history that societies go through ups and downs. A golden age leaves a dark age in its wake, only for something new to rise again. It keeps happening and will continue to happen for as long as imperfect humans make their own rules. This does not prevent us from trying to work with what we have and to pursue loftier goals.</p>
<p>Being Greek, Yanis is familiar with the age-old adage of our people <em>ουδέν κακόν αμιγές καλού</em> (“no bad not intermixed with good”), which loosely translates as “there is no pure evil in the world, as anything bad is mixed together with some good”. The inverse is true as well. This is what politics is. In our times, there are those among us who are genuine democrats and others who only care about setting up their own dominion, as well as many other persuasions. What we experience as quotidian political affairs is the process of reconciling such competing tendencies within the heteroclite whole that is modern society. Instead of an elite pulling the strings, we have multiple actors operating at different levels with whatever is available at their disposal.</p>
<p>The inchoate point in the article of Yanis is that the West thinks as a singular entity. We know this cannot be the case by a mere cursory view of the main ideas that dominate public discourse. In any given issue, there are multiple perspectives. On the demographic front, our societies are increasingly ethnically and racially diverse. Only a few years ago Americans were upbeat about the totemic issues of LGBT rights and Black Lives Matter, among others. This time around there is a completely different focus. Is it because the underlying issues are resolved one way or another? Or maybe they remain unresolved and there is still much more to witness on these and other fronts? Put differently, we cannot assume that Trumpism is the new normal for the rest of time or that the recrudescent far-right extremism is inexorable.</p>
<p>Let us turn our attention to the European Union, the supranational polity encompassing Yanis and myself. It is in many ways a clumsy attempt at Europe-wide federalism, riddled with inefficient policy-making and supported by incomplete legal-institutional arrangements. Furthermore, it is a project that hardcodes neoliberalism in key areas of economic governance. Still, the EU represents something valuable, as enshrined in Article 2 of the Treaty on European Union:</p>
<blockquote>
<p>The Union is founded on the values of respect for human dignity, freedom, democracy, equality, the rule of law and respect for human rights, including the rights of persons belonging to minorities. These values are common to the Member States in a society in which pluralism, non-discrimination, tolerance, justice, solidarity and equality between women and men prevail.</p>
</blockquote>
<p>This is the principle: the set of beliefs we aspire towards. Does this mean that everybody in the EU is a bona fide tolerant progressive? Of course not! Does it also suggest that there are no imperialistic powers in our midst? We know they exist and are as influential as ever. Yet, the issue is not whether we can establish a blissful angelic world. Let angels deal with that project. The human reality shall remain messy. As such, the pragmatic consideration is whether we already have something which, on the balance, is worth fighting for. It is not pure and it cannot be pure according to the wisdom of the aforementioned Greek adage. What we have in Europe must give us hope. It serves as a guide for action; for the possibility of enacting thoroughgoing reform along the lines it foreshadows.</p>
<p>Consider the popular pro-EU protests in our neighbourhood. Some of those involved may be foreign agents bent on controlling the situation. Though we cannot dismiss every person as a mere pawn in a contest of competing imperialisms. There are many who genuinely believe that the European Union represents something more benign that its alternatives, all things considered. Should we not acknowledge this possibility, we will fail to chart a course of programmatic action. Instead, we will resort to an admittedly clever albeit self-defeating nihilism where, basically, everything remotely idealistic is but the pretext for a rising authoritarianism.</p>
<p>I do not share the outlook of Yanis Varoufakis because, at heart, I remain optimistic about our collective prospects. Though my optimism is of the pragmatic sort, as encapsulated in the saying of my ancestors. We will continue to suffer and to fail miserably when all we expect is purity of outcome. Learn to appreciate what you have and ready yourself to work for its betterment.</p>" nil nil "de11053c974511c8dac18bef85f89163") (53 (26569 29903 531022 428000) "https://protesilaos.com/codelog/2024-12-17-emacs-standard-themes-tinted/" "Emacs: two new Standard themes =?utf-8?Q?=28=E2=80=98standard-light-tinted=E2=80=99?= and =?utf-8?Q?=E2=80=98standard-dark-tinted=E2=80=99=29?=" nil "Tue, 17 Dec 2024 00:00:00 +0000" "<p>The <code class=\"language-plaintext highlighter-rouge\">standard-themes</code> is my third theme-related project. Unlike the
<code class=\"language-plaintext highlighter-rouge\">modus-themes</code> and the <code class=\"language-plaintext highlighter-rouge\">ef-themes</code>, I try to remain in line with the
out-of-the-box looks of Emacs, even though I personally dislike them.
The purpose of the Standard themes is to provide the missing theme
framework of that default aesthetic, so that users can enjoy the
customisability and stylistic consistency it brings.</p>
<p>The themes provide lots of customisation options, including the
ability to override their palette (always check the manual). While
this is a powerful feature, it only yields good results when the
selection of colour values is done methodically. To make it easier for
users to have a style that is like the default, but a bit more
opinionated, I developed the <code class=\"language-plaintext highlighter-rouge\">standard-light-tinted</code> and
<code class=\"language-plaintext highlighter-rouge\">standard-dark-tinted</code> themes. The former has an earthly feel to it.
The latter draws inspiration from the night sky.</p>
<p>Both of those themes are consistent with their <code class=\"language-plaintext highlighter-rouge\">standard-light</code> and
<code class=\"language-plaintext highlighter-rouge\">standard-dark</code> counterparts, though they deviate from them in many
important details.</p>
<p>Below are the samples of all the themes (click to enlarge).</p>
<h2>Standard light</h2>
<p><a href=\"https://protesilaos.com/assets/images/standard/standard-light.png\"><img alt=\"standard-light theme code sample\" src=\"https://protesilaos.com/assets/images/standard/standard-light.png\" /></a></p>
<h2>Standard light tinted</h2>
<p><a href=\"https://protesilaos.com/assets/images/standard/standard-light-tinted.png\"><img alt=\"standard-light-tinted theme code sample\" src=\"https://protesilaos.com/assets/images/standard/standard-light-tinted.png\" /></a></p>
<h2>Standard dark</h2>
<p><a href=\"https://protesilaos.com/assets/images/standard/standard-dark.png\"><img alt=\"standard-dark theme code sample\" src=\"https://protesilaos.com/assets/images/standard/standard-dark.png\" /></a></p>
<h2>Standard dark tinted</h2>
<p><a href=\"https://protesilaos.com/assets/images/standard/standard-dark-tinted.png\"><img alt=\"standard-dark-tinted theme code sample\" src=\"https://protesilaos.com/assets/images/standard/standard-dark-tinted.png\" /></a></p>
<h2>Part of 2.2.0-dev</h2>
<p>I am still refining the package before publishing version <code class=\"language-plaintext highlighter-rouge\">2.2.0</code>.
There are lots of other features included, such as the command that
goes through all the Standard themes in rotation (plus the relevant
user option).</p>
<p>If you do try the development version and notice any issues, please
let me know.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">standard-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/standard-themes\">https://protesilaos.com/emacs/standard-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/standard-themes-changelog\">https://protesilaos.com/emacs/standard-themes-changelog</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/standard-themes-pictures\">https://protesilaos.com/emacs/standard-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/standard-themes\">https://github.com/protesilaos/standard-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/standard-themes\">https://gitlab.com/protesilaos/standard-themes</a></li>
</ul>
</li>
<li>Backronym: Standard Themes Are Not Derivatives but the
Affectionately Reimagined Default … themes.</li>
</ul>" nil nil "aeda95a2ff73d332ee7eeb1f31159473") (52 (26569 29903 530733 617000) "https://protesilaos.com/codelog/2024-12-15-emacs-org-coaching-clock/" "Emacs: custom Org clock report for my coaching" nil "Sun, 15 Dec 2024 00:00:00 +0000" "<p>In this video, I demonstrate the custom code I have to generate Org
clock reports for my coaching sessions. The idea is to use the
<code class=\"language-plaintext highlighter-rouge\">DEADLINE</code> and <code class=\"language-plaintext highlighter-rouge\">CLOSED</code> timestamps of each task to calculate their
elapsed time. This way, I do not need to manually clock in to the task
and then clock out of it. It is easier to not have that overhead and
not to duplicate the data that is already embedded in the
aforementioned timestamps.</p>
<p>The custom command I use will prompt me for the name of a person and
the date since when to collect meetings. It will then put all the
retrieved data in a new buffer and calcucate the results in a neat
time table. This new buffer is not related to the underlying file I
used to gather the data from: it is strictly used for reporting. My
file stays free from all the extra noise.</p>
<p>I thus use this method to do my billing and accounting.</p>
<p>As I show in the video, my <code class=\"language-plaintext highlighter-rouge\">coach.org</code> file is simple. Each meeting is
a top-level heading. The text of the heading includes the name of the
person and a description on what the meeting is about. It looks like
this:</p>
<pre><code class=\"language-org\">#+todo: COACH(k) | DONE(d!) CANCEL(c@)
* DONE Protesilaos Emacs deep dive
CLOSED: [2024-12-10 Tue 14:45] DEADLINE: <2024-12-10 Tue 13:00>
* COACH Protesilaos Org custom clock report
DEADLINE: <2024-12-15 Sun 17:00>
</code></pre>
<p>My actual file has some more data, such as a link to the email I
received for scheduling the given meeting, as well as relevant quotes,
and the like. All that is irrelevant for the purposes of the clock
reporting though. What I show in the above code block is enough.</p>
<h2>My custom code (part of my dotfiles)</h2>
<p>Below is the code I am using as of this writing (2024-12-15 16:38
+0200). It is an excerpt from my Emacs configuration. Note that if I
make any changes to it, I will not put them back here. Check my
dotemacs for the up-to-date setup (it also includes links to the Git
sources): <a href=\"https://protesilaos.com/emacs/dotemacs\">https://protesilaos.com/emacs/dotemacs</a>.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">defvar</span> <span class=\"nv\">prot-org-clock--template-no-effort</span>
<span class=\"s\">\"#+BEGIN: clocktable :formula % :timestamp t :sort (1 . ?a) :link nil :scope nil :hidefiles t :maxlevel 8 :stepskip0 t
#+END:\"</span>
<span class=\"s\">\"Clock table to use for custom clock reports.\"</span><span class=\"p\">)</span>
<span class=\"c1\">;; TODO 2024-12-15: This sort of thing must exist in Org, but I did</span>
<span class=\"c1\">;; not find it.</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org--timestamp-to-time</span> <span class=\"p\">(</span><span class=\"nb\">string</span><span class=\"p\">)</span>
<span class=\"s\">\"Return time object of STRING timestamp.\"</span>
<span class=\"p\">(</span><span class=\"nv\">org-timestamp-to-time</span> <span class=\"p\">(</span><span class=\"nv\">org-timestamp-from-string</span> <span class=\"nb\">string</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-coach--get-entries</span> <span class=\"p\">(</span><span class=\"nv\">todo-keyword</span> <span class=\"nb\">string</span> <span class=\"nv\">since</span><span class=\"p\">)</span>
<span class=\"s\">\"Get Org entries matching TODO-KEYWORD followed by STRING in the heading.
Limit entries to those whole deadline/scheduled is equal or greater to
SINCE date.
Each entry is a plist of :heading, :contents, :started, :closed.\"</span>
<span class=\"p\">(</span><span class=\"nb\">or</span> <span class=\"p\">(</span><span class=\"nv\">delq</span> <span class=\"no\">nil</span>
<span class=\"p\">(</span><span class=\"nv\">org-map-entries</span>
<span class=\"p\">(</span><span class=\"k\">lambda</span> <span class=\"p\">()</span>
<span class=\"p\">(</span><span class=\"nv\">when-let*</span> <span class=\"p\">((</span><span class=\"nv\">case-fold-search</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">started</span> <span class=\"p\">(</span><span class=\"nv\">prot-org--timestamp-to-time</span> <span class=\"p\">(</span><span class=\"nb\">or</span> <span class=\"p\">(</span><span class=\"nv\">org-entry-get</span> <span class=\"no\">nil</span> <span class=\"s\">\"DEADLINE\"</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">org-entry-get</span> <span class=\"no\">nil</span> <span class=\"s\">\"SCHEDULED\"</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">closed</span> <span class=\"p\">(</span><span class=\"nv\">prot-org--timestamp-to-time</span> <span class=\"p\">(</span><span class=\"nv\">org-entry-get</span> <span class=\"no\">nil</span> <span class=\"s\">\"CLOSED\"</span><span class=\"p\">)))</span>
<span class=\"p\">((</span><span class=\"nv\">re-search-forward</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"\\\\<%s\\\\>.*\\\\<%s\\\\>\"</span> <span class=\"nv\">todo-keyword</span> <span class=\"nb\">string</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">line-end-position</span><span class=\"p\">)</span> <span class=\"no\">t</span> <span class=\"mi\">1</span><span class=\"p\">))</span>
<span class=\"p\">((</span><span class=\"nv\">org-time-less-p</span> <span class=\"nv\">since</span> <span class=\"nv\">started</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">list</span>
<span class=\"ss\">:heading</span> <span class=\"p\">(</span><span class=\"nv\">org-get-heading</span> <span class=\"ss\">:no-tags</span> <span class=\"ss\">:no-todo</span> <span class=\"ss\">:no-priority</span> <span class=\"ss\">:no-comment</span><span class=\"p\">)</span>
<span class=\"ss\">:contents</span> <span class=\"p\">(</span><span class=\"nv\">org-get-entry</span><span class=\"p\">)</span>
<span class=\"ss\">:started</span> <span class=\"nv\">started</span>
<span class=\"ss\">:closed</span> <span class=\"nv\">closed</span><span class=\"p\">)))))</span>
<span class=\"p\">(</span><span class=\"nv\">user-error</span> <span class=\"s\">\"No entries with heading matching `\\\\<%s\\\\>.*\\\\<%s\\\\>'\"</span> <span class=\"nv\">todo-keyword</span> <span class=\"nb\">string</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nb\">defvar</span> <span class=\"nv\">prot-org-coach--name-history</span> <span class=\"no\">nil</span>
<span class=\"s\">\"Minibuffer history of `prot-org-coach--name-prompt'.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-coach--name-prompt</span> <span class=\"p\">()</span>
<span class=\"s\">\"Prompt for name of person.\"</span>
<span class=\"p\">(</span><span class=\"k\">let</span> <span class=\"p\">((</span><span class=\"nv\">default</span> <span class=\"p\">(</span><span class=\"nb\">car</span> <span class=\"nv\">prot-org-coach--name-history</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">read-string</span>
<span class=\"p\">(</span><span class=\"nv\">format-prompt</span> <span class=\"s\">\"Name of person\"</span> <span class=\"nv\">default</span><span class=\"p\">)</span>
<span class=\"no\">nil</span> <span class=\"ss\">'prot-org-coach--name-history</span> <span class=\"nv\">default</span><span class=\"p\">)))</span>
<span class=\"c1\">;;;###autoload</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot-org-coach-report</span> <span class=\"p\">(</span><span class=\"nv\">name</span> <span class=\"nv\">since</span><span class=\"p\">)</span>
<span class=\"s\">\"Produce clock report for coaching with person of NAME.
SINCE is the date (of time 00:00) to count from until now.\"</span>
<span class=\"p\">(</span><span class=\"nv\">interactive</span>
<span class=\"p\">(</span><span class=\"nb\">list</span>
<span class=\"p\">(</span><span class=\"nv\">prot-org-coach--name-prompt</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"[%s]\"</span> <span class=\"p\">(</span><span class=\"nv\">org-read-date</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">if-let*</span> <span class=\"p\">((</span><span class=\"nv\">since-object</span> <span class=\"p\">(</span><span class=\"nv\">prot-org--timestamp-to-time</span> <span class=\"nv\">since</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">entries</span> <span class=\"p\">(</span><span class=\"nv\">prot-org-coach--get-entries</span> <span class=\"s\">\"done\"</span> <span class=\"nv\">name</span> <span class=\"nv\">since-object</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">buffer</span> <span class=\"p\">(</span><span class=\"nv\">get-buffer-create</span> <span class=\"s\">\"*prot-org-coach-entries*\"</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">with-current-buffer</span> <span class=\"p\">(</span><span class=\"nv\">pop-to-buffer</span> <span class=\"nv\">buffer</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">erase-buffer</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">org-mode</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">dolist</span> <span class=\"p\">(</span><span class=\"nv\">entry</span> <span class=\"nv\">entries</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">insert</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"* %s\\n%s\\n\\n\"</span> <span class=\"p\">(</span><span class=\"nv\">plist-get</span> <span class=\"nv\">entry</span> <span class=\"ss\">:heading</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">plist-get</span> <span class=\"nv\">entry</span> <span class=\"ss\">:contents</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">org-clock-in</span> <span class=\"no\">nil</span> <span class=\"p\">(</span><span class=\"nv\">plist-get</span> <span class=\"nv\">entry</span> <span class=\"ss\">:started</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">org-clock-out</span> <span class=\"no\">nil</span> <span class=\"no\">t</span> <span class=\"p\">(</span><span class=\"nv\">plist-get</span> <span class=\"nv\">entry</span> <span class=\"ss\">:closed</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">goto-char</span> <span class=\"p\">(</span><span class=\"nv\">point-min</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">save-excursion</span>
<span class=\"p\">(</span><span class=\"nv\">insert</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\"%s\\n\\n\"</span> <span class=\"nv\">prot-org-clock--template-no-effort</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">save-excursion</span>
<span class=\"p\">(</span><span class=\"nv\">goto-char</span> <span class=\"p\">(</span><span class=\"nv\">line-end-position</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">insert</span> <span class=\"p\">(</span><span class=\"nb\">format</span> <span class=\"s\">\" :tstart %S\"</span> <span class=\"nv\">since</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">org-dblock-update</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">user-error</span> <span class=\"s\">\"No entries for name `%s'\"</span> <span class=\"nv\">name</span><span class=\"p\">)))</span>
</code></pre></div></div>" nil nil "0004509dd5d3178c9f81cf1b2158c6ad") (51 (26569 29903 530194 806000) "https://protesilaos.com/codelog/2024-12-12-emacs-pulsar-1-2-0/" "Emacs: pulsar version 1.2.0" nil "Thu, 12 Dec 2024 00:00:00 +0000" "<p>This is a small package that temporarily highlights the current line
or region after a given function is invoked. Several user options
control the exact behaviour. <a href=\"https://protesilaos.com/codelog/2022-03-14-emacs-pulsar-demo/\">Watch the original demo</a>.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">pulsar</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/pulsar\">https://protesilaos.com/emacs/pulsar</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/pulsar-changelog\">https://protesilaos.com/emacs/pulsar-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/pulsar\">https://github.com/protesilaos/pulsar</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/pulsar\">https://gitlab.com/protesilaos/pulsar</a></li>
</ul>
</li>
<li>Backronym: Pulsar Unquestionably Luminates, Strictly Absent the Radiation.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<p>This version refines an already stable base. Users do not need to make
any changes to their setup, unless they wish to try the new features.</p>
<h2>Automatically pulse the affected region</h2>
<p>With the out-of-the-box settings, Pulsar temporarily highlights the
current line after any of the <code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-functions</code> is invoked and
<code class=\"language-plaintext highlighter-rouge\">pulsar-mode</code> (or <code class=\"language-plaintext highlighter-rouge\">pulsar-global-mode</code>) is enabled.</p>
<p>The new user option <code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-region-functions</code> makes Pulsar
temporarily highlight the affected region as well. For example, when
pasting some text into the buffer, it will highlight the portion of
text that was added.</p>
<p>The default value of <code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-region-functions</code> is nil, meaning
that no region pulsing is in effect (what we had before). Otherwise,
it is a list of functions. A typical use-case is the following:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">pulsar-pulse-region-functions</span> <span class=\"nv\">pulsar-pulse-region-common-functions</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>This covers common commands, such as for copying and pasting a region
of text (restart <code class=\"language-plaintext highlighter-rouge\">pulsar-mode</code> or <code class=\"language-plaintext highlighter-rouge\">pulsar-global-mode</code> if needed).</p>
<p>Thanks to shipmints and Abdelhak Bougouffa for contributing the core
of this functionality. It was done in pull request 25:
<a href=\"https://github.com/protesilaos/pulsar/pull/25\">https://github.com/protesilaos/pulsar/pull/25</a>. Abdelhak’s
contribution is within the ~15 line limit, meaning that no copyright
assignment to the Free Software Foundation is necessary, while
shipmints has already done the paperwork.</p>
<p>Relevant discussions took place in issues 10, 18, 21, and 22, as well
as pull request 24:</p>
<ul>
<li><a href=\"https://github.com/protesilaos/pulsar/issues/10\">https://github.com/protesilaos/pulsar/issues/10</a></li>
<li><a href=\"https://github.com/protesilaos/pulsar/issues/18\">https://github.com/protesilaos/pulsar/issues/18</a></li>
<li><a href=\"https://github.com/protesilaos/pulsar/issues/21\">https://github.com/protesilaos/pulsar/issues/21</a></li>
<li><a href=\"https://github.com/protesilaos/pulsar/issues/22\">https://github.com/protesilaos/pulsar/issues/22</a></li>
<li><a href=\"https://github.com/protesilaos/pulsar/pull/24\">https://github.com/protesilaos/pulsar/pull/24</a></li>
</ul>
<p>Thanks to Anwesh Gangula, Alex Kreisher, Diego Alvarez, and Ronny
Randen for their participation.</p>
<p>The region pulsing is inspired by Daniel Mendler’s <code class=\"language-plaintext highlighter-rouge\">goggles</code> package,
which itself is a take on a common theme covered by many other such
packages.</p>
<h2>Style region highlights differently</h2>
<p>The following user options control the face of the <code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-region-functions</code>.</p>
<ul>
<li><strong><code class=\"language-plaintext highlighter-rouge\">pulsar-region-face</code>:</strong> Face to pulse a region that has not changed.</li>
<li><strong><code class=\"language-plaintext highlighter-rouge\">pulsar-region-change-face</code>:</strong> Face to pulse a region that has changed (added or removed).</li>
</ul>
<p>Pulsar defines several faces to get a nice style. Here is an example:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">pulsar-region-face</span> <span class=\"ss\">'pulsar-green</span><span class=\"p\">)</span> <span class=\"c1\">; unchanged regions are green</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">pulsar-region-change-face</span> <span class=\"ss\">'pulsar-red</span><span class=\"p\">)</span> <span class=\"c1\">; changed regions are red</span>
</code></pre></div></div>
<h2>Pulse on window state change</h2>
<p>An alternative to how Pulsar works out-of-the-box by reacting to the
<code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-functions</code> is to check for changes to the window layout.
Users who wish to have this behaviour can set the new user option
<code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-on-window-change</code> to a non-nil value.</p>
<p>As there may be overlap between the <code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-functions</code> and the
<code class=\"language-plaintext highlighter-rouge\">pulsar-pulse-on-window-change</code>, users are advised to pick only one.
This is not a hard rule though: Pulsar will blithely highlight
everything if configured accordingly.</p>
<p>Thanks again to shipmints and Abdelhak Bougouffa for this
contribution. It is part of the aforementioned pull request 25.</p>" nil nil "aedbcf9200dfdd9787d05529730d320c") (50 (26569 29903 529378 504000) "https://protesilaos.com/codelog/2024-12-11-emacs-diff-save-some-buffers/" "Emacs: make =?utf-8?Q?=E2=80=98save-some-buffers=E2=80=99?= show diff on demand" nil "Wed, 11 Dec 2024 00:00:00 +0000" "<p><strong>UPDATE 2024-12-14 08:06 +0200:</strong> I was told that this functionality
has already been avaialble for more than a decade. I simply did not
see it in the source code of <code class=\"language-plaintext highlighter-rouge\">save-some-buffers-action-alist</code>. Sorry!</p>
<hr />
<p>The command <code class=\"language-plaintext highlighter-rouge\">save-some-buffers</code>, which is bound to <code class=\"language-plaintext highlighter-rouge\">C-x s</code> by default
is helpful when you need to save lots of buffers efficiently. Instead
of figuring out which ones are modified and visiting each of them to
decide what to do, you invoke <code class=\"language-plaintext highlighter-rouge\">save-some-buffers</code>. It prompts for an
action, one buffer at a time. Actions include to save or not as well
as a “yes to all” directive. Each action is bound to a key and all of
them can be customised by modifying the variable <code class=\"language-plaintext highlighter-rouge\">save-some-buffers-action-alist</code>.
When there are no more modified buffers to act on, the command
concludes its operation. Nice and simple.</p>
<p>While the default experience is fine, there are times when I
completely forgot what kind of changes I made to a file. This is
especially true when files have similar names. Do I really need to
save it, or there is more work to be done? As such, I need access to a
diff command, which I access via the <code class=\"language-plaintext highlighter-rouge\">d</code> key binding.</p>
<p>Emacs has built-in the ability to calculate the difference between the
buffer’s contents and that of its underlying file. This is done by the
function <code class=\"language-plaintext highlighter-rouge\">diff-buffer-with-file</code>.</p>
<p>We may then leverage this function to add a new association between a
key, a function, and a brief explanatory statement. The latter is
available upon typing <code class=\"language-plaintext highlighter-rouge\">C-h</code> at the <code class=\"language-plaintext highlighter-rouge\">save-some-buffers</code> prompt.</p>
<p>Here is the idea:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'save-some-buffers-action-alist</span>
<span class=\"p\">(</span><span class=\"nb\">list</span> <span class=\"s\">\"d\"</span>
<span class=\"p\">(</span><span class=\"k\">lambda</span> <span class=\"p\">(</span><span class=\"nv\">buffer</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">diff-buffer-with-file</span> <span class=\"p\">(</span><span class=\"nv\">buffer-file-name</span> <span class=\"nv\">buffer</span><span class=\"p\">)))</span>
<span class=\"s\">\"show diff between the buffer and its file\"</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>Now I can type <code class=\"language-plaintext highlighter-rouge\">d</code> at the prompt whenever I am not sure about what I
need to do with a given buffer and its file. When I am done reviewing
the diff buffer, I type <code class=\"language-plaintext highlighter-rouge\">q</code> to dismiss it and get back to the prompt. It works!</p>" nil nil "4c515d522151f0dcda3f1007d9a97641") (49 (26569 29903 528672 521000) "https://protesilaos.com/interpretations/2024-12-09-poulopoulos-statue/" "Interpretation of =?utf-8?B?4oCcVGhlIHN0YXR1ZeKAnQ==?= by Yiannis Poulopoulos" nil "Mon, 09 Dec 2024 00:00:00 +0000" "<p>In this article, I interpet one of the most recognisable Greek songs of
all time. <em>The statue</em> is among the many masterpieces performed by
Yiannis Poulopolos: <a href=\"https://www.youtube.com/watch?v=KYVA0ztUlpw\">https://www.youtube.com/watch?v=KYVA0ztUlpw</a>.
Others include <em>Tonight I will drink the moon</em> (Θα πιω απόψε το
φεγγάρι), <em>My dear neighbour</em> (Γειτονάκι μου), <em>Beloved room</em>
(Καμαρούλα), and many others.</p>
<p>These songs occupy a central place in contemporary Greek culture, as
people of all ages have at one point or another listened to them. The
first time I remember paying attention to <em>The statue</em> was in my
pre-teen years. At the time, I thought it was a nice song, but could
not appreciate its profoundity. This only happens with experience.
Here I am now, then, to expound on the meaning of this work of art.</p>
<p>Below are the original lyrics, followed by my translation and
commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Το άγαλμα
Ερμηνεία:  Γιάννης Πουλόπουλος
Στίχοι:    Λευτέρης Παπαδόπουλος
Μουσική:   Μίμης Πλέσσας
Χθες μεσάνυχτα και κάτι κατηφόρισα
στην μικρή την πλατεΐτσα που σε γνώρισα
Κάποιο άγαλμα που μ'είδε με θυμήθηκε
και τον πόνο μου να ακούσει δεν αρνήθηκε
Και του μίλησα για σένα και για μένανε
και τα μάτια του βουρκώναν και όλο κλαίγανε
Του'πα για το φέρσιμο σου και για τα άλλα σου
τα ασυγχώρητα τα λάθη τα μεγάλα σου
Κι ύστερα με πιάσαν θεέ μου κάτι κλάματα
που με βρήκανε κουρέλι τα χαράματα
Με το άγαλμα ως το δρόμο προχωρήσαμε
μου εσκούπισε τα μάτια και χωρίσαμε
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>The statue
Singer:  Yiannis Poulopoulos
Lyrics:  Lefteris Papadopoulos
Music:   Memes Plessas
Yesterday past midnight I headed towards
the tiny cosy square where I made your acquaintance
A statue that saw me remember me
and did not refuse to listen to my pain
And I talked to it about you and me
and its eyes were tearful and would keep crying
I told it about your behaviour and the others
the unforgivable big mistakes of yours
And afterwards my god I cried heavily
that they found me in taters at dawn
With the statue we walked up to the street
it dried my eyes and we parted ways
</code></pre></div></div>
<p>The song is about those moments in a person’s life when all they need
is to be heard. The statue is not a talkative figure. They are not
there to argue with the poetic “I”, nor to pass judgement. Statues of
this sort provide an outlet for a deep seated feeling that needs to be
expressed without the fear of reprisal. The one who opens up to the
statue must feel safe in order to let it all out.</p>
<p>Unlike a therapist, the statue does not condition the person into the
role of a patient. Those who cry at tiny squares are not expecting to
be treated or to get some prescription on the immediate next steps.
No. The song’s first person view presents us with a case of complex
emotions, encompassing frustration and disappointment, but also
determination and courage to keep going. Those who go through such a
moment are not in need of treatment per se. What they benefit from is
a reminder that the world does not end at the point of any given
hardship.</p>
<p>Statues are cold and distant, yet there is a certain depth, stability,
and authenticity to not exhibiting apparent compassion; to not being
over the top in reacting to someone’s emotional state. These are the
kind of unassuming and trustworthy fellows who seemingly do not care
about the vicissitudes of life and who take it easy even in the face
of extraordinary circumstances. They are readily available for those
who need them. Their compassion is one that is felt, although not
necessarily advertised.</p>
<p>Consistent with the theme of not offering therapy, all statues do is
set the protagonist back on track. They will stop there though,
because it is up to the individual to proceed on their path. One’s
burdens do not belong to another and it is a mistake to make such an
attempt. Statues may be robust, but they are not unbreakable.</p>
<p>Our protagonist shows fortitude and fearlessness in opening up to a
statue: to a form that may look fundamentally different from a human.
It is not though. There are some among us who are more statue-like in
their disposition. The song recognises as much, in that it has the
statue cry. Those people are no less human. They simply have a
different way of expressing our shared humanity. The poetic “I” has
learnt this lesson in the best possible way: by feeling it. Others may
understand as much through artistic representations. And—who
knows?—they too may encounter a statue when they need it, provided
they are open to such an experience.</p>" nil nil "55baf12c126b3e9941029965f16c303a") (48 (26569 29903 528335 443000) "https://protesilaos.com/news/2024-12-08-view-inside-hut/" "Vlog: a look inside the hut" nil "Sun, 08 Dec 2024 00:00:00 +0000" "<p>In this video I show my room and talk about related issues. The
project remains a work-in-progress. My plan is to stay at this place
indefinitely. I will continue refining it, whenever possible.</p>" nil nil "96e1be3ce9f5f0d3c8c3643f4c03952a") (47 (26569 29903 528233 20000) "https://protesilaos.com/commentary/2024-12-04-storms-keep-smiling/" "From storm to storm, the smile remains" nil "Wed, 04 Dec 2024 00:00:00 +0000" "<p>I wrote this yesterday afternoon, but can only publish it today.</p>
<hr />
<p>It has been raining heavily for most of the day already. The forecast is for continuous precipitation until past midnight. The electricity is out because the solar panels could not generate enough output to charge the batteries. This is what happens here when the clouds are dense: not enough sunlight passes through. In ages past, I would have been frustrated at my powerlessness in the face of these challenges. I would be disappointed at my condition and would consider it unfair how all my hard work would go to waste. I would, in other words, interpret the phenomena as if I was at their epicentre, asking the wrong question of “why me?” But I am not the centre of the world, despite what my subjectivity might offer as a first impression. What I think or do does not matter in the grand scheme of things. Making it all about me is not helpful for how I go about living.</p>
<p>I was sitting at the bar earlier. This is a simple piece of furniture I made out of a wooden pallet. I cut the pallet in half and then pieced it together with some planks to form the support structure. Then I used an old wardrobe door for the top. There is visible tear to the materials I used. They are all second hand. The bar does not win any beauty contest. It is not the sort of item you show off when you brag about your riches. It gets the job done though and I like it for this very reason.</p>
<p>While at the bar, I was observing the rainfall outside. It is early December. We are the tail end of autumn, which roughly lasts until the coming solstice. I counted five plane trees by the river. There are more of them downstream. Their leaves have these bright orange and green-yellow colours, which complement the still vivid green of their neighbouring oaks. Some canes in their vicinity remain golden, while the soil is a gradient of dark green and brown with patches of ochre. All against a grey sky. It is a breathtakingly beautiful scene.</p>
<p>Instead of bemoaning my supposed weakness and apparent inability to “do something” about not having electricity, I take a step back to remind myself that I do not know everything. I may have a clear idea of what I want, but this is not what I necessarily need. Furthermore, what I wish may be the product of a misunderstanding, of me ignoring important aspects of reality, of being influenced by someone else without checking if those aspirations apply to my case, of not considering the bigger picture. Thus, clarity about one’s desires is no guarantee for the propriety of a course of action relative to the prevailing conditions.</p>
<p>When something happens, I do not want to be eristic towards it. There is no point in arguing with facts: they simply are. What I do instead is recognise how things stand, to reflect on them and my condition. There may be something new for me to learn or another opportunity to practice what I already know. If I find myself arguing with facts and calling them names, waving my fist towards the heavens, so to speak, I notice that I am being foolish, for I pretend to know more than what I actually do and/or assume that my power is greater than it really is.</p>
<p>As I continued to observe my surroundings, my attention shifted to the foreground. Right in front of my door is a young walnut tree I planted this summer. On either side of it grow two species of sage, <em>salvia officinalis</em> (common sage) and <em>salvia fruticosa</em> (Greek sage). I found those in the wilderness and transplanted some specimens here. Their scent is special and they look great too! Although I cannot wave my fist against the gods of this world, I know that my actions do have consequences. I thus assume responsibility for my conduct and try to be considerate in my actions. What I am doing here influences my immediate environment. The roof over my head is my doing. It would not have happened without hard work. These plants prosper under my aegis. I have a clear plan for everything I do here, accounting for the trajectory of the sun and the other particularities of my milieu.</p>
<p>Accepting how things stand is not the same as giving up. There is a difference between pragmatism and conformism or defeatism. I am aware that some states of affairs are the consequence of my initiative. Others are not. Even when I control some aspects of the whole process, by virtue of being its originator, I do not necessarily have full power over it. I am taking care of the plants, for example, but they may still fail to make it through a harsh winter or a severe drought. My contribution is not the sole factor in this case. There is an interplay of factors, combining in complex ways to produce the discernible states of affairs. The constitution of the case, then, does not have me at its centre. I am but a factor in the totality, continuously involved in dynamically adjusting phenomena.</p>
<p>When the outcome is according to my plans, I feel good about myself. It is feedback that confirms my ability to cause change. I have power. When the results are not what I want, I do not blame it all on me. Maybe I failed to consider something important, but even if I was impeccable in my calculations, there is always the reality of other factors influencing what happens. If, in the face of a downturn, I claim that “only I am to blame for this”, then I am factually incorrect in my egocentrism. This is not some mere analytical mistake though. It has practical effects, as I take on my shoulders a burden that is not mine, or entirely mine, anyway. Again, I commit the hubris of purporting to be stronger than I am and, in overdoing it, I put on myself the kind of pressure that I am not made to withstand.</p>
<p>If the burdens we assume are heavier than what we can handle, all we do is harm ourselves. Nobody is unbreakable, no matter how tough they think they are. What will happen if I pick a fight with god? What is the point of arguing with the heavens? I lose, no questions asked. There is nothing for me to prove to the world. It is an act of folly. The best I can hope for is to discover my limits. If I am not careful though with how I go about making this discovery, I will only meet my end. It thus comes to reason to have foresight, to think things through without overthinking them, and to take stock of the prevailing conditions as you opt for the best available course of action.</p>
<p>There is always a subjectivity that I cannot escape from. I will observe and feel the world through my own faculties. I cannot experience the storm as a tree. I might try to think in those terms, but I will fall short. This is, at best, an approximation, at worst, a projection unto an altogether different form of life. Recognising the inescapability from the subjective, I want to maintain a balanced view of events. In this bigger picture perspective, I am a factor of the case. I do what I can in pursuit of my objectives. Other forces will remain in effect. There will be ever-new eventualities and I will be in a continuous process of adapting to them.</p>
<p>I know not to argue with the gods. The storm shall pass. I am fine. Tomorrow there will be sunshine and my electricity will be back online. I shall then resume my computer work. I thank the world for giving me this opportunity to learn something; to not act like a petulant child and to be patient in the phase of uncertainty. What is to happen shall happen. I will do what I can and take responsibility for what belongs to me. The rest will continue to be despite my deeds. It is how the world works. The earlier we learn not to pretend to be omniscient and omnipotent, the easier our life will be.</p>
<p>As I saw flashes of light and heard the following sound of thunder, I smiled in awe. The dogs are sleeping peacefully. What a beautiful world!</p>" nil nil "02597457f3761ddd057edc045170b865") (46 (26569 29903 527774 612000) "https://protesilaos.com/news/2024-12-04-breaking-bedrock-hut/" "Vlog: breaking the bedrock by the hut (flood control project)" nil "Wed, 04 Dec 2024 00:00:00 +0000" "<p>There was a storm yesterday, which means that I had to do more flood
control work this morning. In this video, I show a part where I am
breaking the stream’s bedrock to make sure that the water flows where
I need it to be. Otherwise, it can cause serious damage, like what I
showed in my previous video:
<a href=\"https://protesilaos.com/news/2024-11-22-hut-flood-damage-water-redirect/\">https://protesilaos.com/news/2024-11-22-hut-flood-damage-water-redirect/</a>.</p>" nil nil "685ca1f4b4d9d9f04b4186cc1176d9c4") (45 (26569 29903 527674 360000) "https://protesilaos.com/news/2024-12-03-email-okay-also-got-telegram/" "Email should be okay, but I also joined Telegram" nil "Tue, 03 Dec 2024 00:00:00 +0000" "<p>In the past few days I had technical issues with my email service
provider. I will eventually write a summary of what happened.
Everything should now be in order. I can send and receive messages
reliably, without them mysteriously disappearing into the aether.</p>
<p>Since I already got the Signal app as a plan B for my communications,
I am adding Telegram to the mix: <a href=\"https://t.me/protesilaos\">https://t.me/protesilaos</a>. I have
updated my contact page accordingly.</p>
<p>Note that I am checking those messaging apps on occasion, but email
remains my preferred medium of communication because of its interoperability.</p>" nil nil "60d81445627088b637b79bb30416f252") (44 (26569 29903 527555 467000) "https://protesilaos.com/commentary/2024-12-02-exploration-otherworldly-darkness/" "On exploration and the otherworldly darkness" nil "Mon, 02 Dec 2024 00:00:00 +0000" "<p>The other day I was reading a theological passage that I had read in the past. After thinking about it again, I concluded once more that I disagreed with it. As I was about to expound on my thoughts, I paused and reflected on my behaviour. I was reacting to a proposition from a religion I am already not a believer of. What was I trying to achieve in voicing my disagreement? Perhaps to persuade people away from their religion? I do not care. Maybe to start a new religion? I have no such interest. To announce to the world that I simply am different in this regard? Nobody asked. There was no good enough “why” driving my actions. So I stopped.</p>
<p>I then realised how being too involved in your own head is correlated with misery. If I were to argue my case, I would then be potentially exposing myself to an open-ended discussion with those on the opposite camp. It would be a meaningless contest for me, as there was no “why” worth fighting for: my heart was not in it. In the process, I would begin to regret what I did and, should I persist in arguing, this feeling would turn into despair. Not because my argument would not be clever enough or because I would have second thoughts about myself. No. I would regret how mindlessly I behaved while overthinking something that is of no significance to me.</p>
<p>If you are deep enough in your thoughts, you grow distant from the world around you. At that stage, it is easy to become antagonistic towards others, to be hyperfocused on patterns they are oblivious to or do not care about, to judge them for not being the way they ought to, to argue with them at length about trivial issues, and simply, to not appreciate the funny—indeed, the pointless and comically absurd—side of things. In introspection/contemplation/exploration we can find riches, as we understand certain phenomena at a greater depth. What I have already covered is the product of such an introspective endeavour. Yet we also probe deeper into the depths, where there only is darkness.</p>
<p>The Greeks have an alternative name for Hades, the god governing the realm of the souls, else the underworld. This name is “Plouton”, which relates to wealth (ploutos (πλούτος) is the Greek word, which we know in English from “plutocracy”). I had thought about this moniker and considered it a euphemism. Kind of how the vastest ocean on the planet is the “pacific”, despite how dangerous those waters are. People are actually afraid of Hades and will use nice-sounding words to alleviate their fear. I also considered the literal interpretation, whereby the “under world” is rich in minerals and the like. Now I understand there is a profound allegorical meaning to such “wealth”, which is nevertheless consistent with the notion of a fearsome eventuality.</p>
<p>Hades, in this case, represents the otherworldly, the altogether alien to us. As humans, we occupy this realm of existence. We are not disembodied souls. What souls do is none of our business because in the here-and-now of our presence, we can only ever be present as human. We have needs of the body, such as to go to sleep and to feed ourselves. When we would rather think something intensely for an indefinite amount of time, the very reality of our physical constitution forces us out of the mental state into the practicalities of action. There is no escape from human nature while being human, no matter how intellectual or spiritual one is.</p>
<p>When we meditate (in the sense of “thinking intensely”), when we probe deeper into the depths of our being, we take a step closer to the otherworldly. Yes, this other world is very close to us, inside and all around. Just how the prevailing conditions at the depth of the ocean are far different than what we are accustomed to above sea level: they are really close, yet remain alien. Through meditation and the study involved we develop a greater sense of awareness about our subject and its surroundings. Aspects of reality become more acute and conspicuous. There is a great power therein. We use it to make better sense of the world and improve our material conditions. Such is the wealth we discover in the depths of the obscure and unknown.</p>
<p>Yet Hades—now the Hades within, the Hades around—remains the ruler of the otherworldly. The gates to that world are sealed shut. No human is allowed to enter and retain their humanity. Why? Because of the embodiedness of our experience. No matter how strong the meditative practice is, the fact of the body remains unchanged. It will continue to engender the familiar states of affairs, of need, of pleasure, of pain, of fatigue, regardless of how insightful the person is. Such is the anchoring in the reality of the human condition, that the otherworldly is decisively alien and shall not become one with the familiar.</p>
<p>Hades, Hades within, Hades at-large is not malevolent. We will not get harmed or be tricked by some agent of evil operating inside of or around us. Never. Rather, we will be harming ourselves if we insist on digging deeper into the depths, knocking on the gates of the underworld, while not recognising how it is untenable to only tend to the soul/sprituality/intellectuality while being embodied. Therein lies a fate of misery and suffering, for it is a condition of mismatching magnitudes: the mismatch between our actuality as human in the here-and-now of our humanity and the escapist mind that cannot come to terms with that is available in its milieu. This push and pull that unfolds across every fibre of our being is tearing us apart, figuratively speaking, which manifests as discontent.</p>
<p>In more prosaic terms, someone who pursues riches for their own sake is in fact miserable. Money can buy comforts which are a proxy for a good life, but only up to a certain point. Once it turns into an obsession, into an exercise of money-making for the goal of becoming more rich, it twists and inwardly corrupts the person. They can never enjoy all of that wealth. They become more distant from the everyday affairs, from all those little things that are fun and easygoing. This single-minded agent of money-making is not taking the time to appreciate what is all around them: the potential for genuine—non-transactional and without ulterior motives—connections with others and the experiences derived therefrom.</p>
<p>Such is the self-destructive fate of the inconsiderate theologian or philosopher or intellectual. It is fine to seek meaning and to delve deeper into the depths of <em>ploutos</em> within and around us. The key is to remember that we cannot go too far; that there is a life to be lived here and now. As such, we will conduct ourselves in moderation, to think but not to overthink, to explore but not to go missing, to argue but not to be pedantic. In the absence of such a moderate disposition, we will continue to go deeper where we shall only find the darkness of a world we do not belong to.</p>" nil nil "23163f01f87bc181850132e826c85c25") (43 (26569 29903 527001 978000) "https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/" "Emacs: a basic and capable configuration" nil "Thu, 28 Nov 2024 00:00:00 +0000" "<p>I have helped several people set up a basic Emacs configuration. In the process, I have learnt about some of the problems they have with the out-of-the-box experience.</p>
<p>What follows is a rather simple, yet fully capable, setup to get started with Emacs. At the end of the file is the code block with the complete configuration (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). The other sections explain the rationale for each component.</p>
<p>Use this as a starting point. If you are curious about my own setup, check this: <a href=\"https://protesilaos.com/emacs/dotemacs\">https://protesilaos.com/emacs/dotemacs</a>.</p>
<h2>Table of Contents</h2>
<ol>
<li><a href=\"#h:1e4fde73-a2a2-4dc5-82ad-02cf3884ece6\">Where to store the configurations</a></li>
<li><a href=\"#h:7db72beb-b8ac-4c6d-a6f4-a52661208e23\">Put all auto-generated configurations in a separate file</a></li>
<li><a href=\"#h:eafd6e24-e4eb-4963-92a5-c61b0c877b7f\">Set up the package manager</a></li>
<li><a href=\"#h:c12c3baa-49bc-4fc8-8eb5-cf3fb53903ef\">Set up <code class=\"language-plaintext highlighter-rouge\">use-package</code></a></li>
<li><a href=\"#h:5a631dfa-a8db-43f4-bd7a-92ce49c54226\">Do not show those confusing warnings when installing packages</a></li>
<li><a href=\"#h:83c8afc4-2359-4ebe-8b5c-f2e5257bdda3\">Delete the selected text upon text insertion</a></li>
<li><a href=\"#h:1e468b2a-9bee-4571-8454-e3f5462d9321\">Make <code class=\"language-plaintext highlighter-rouge\">C-g</code> a bit more helpful</a></li>
<li><a href=\"#h:287e0c77-5b7d-4b0e-954d-47bb5c0f933d\">Decide what to do with the graphical bars</a></li>
<li><a href=\"#h:c7528f3d-9fc8-49e5-9468-6868fb5c07b5\">Use the preferred fonts</a></li>
<li><a href=\"#h:ba68d1bb-eb07-402a-96b6-2ec612a12b3a\">Choose a theme and tweak the looks of Emacs</a></li>
<li><a href=\"#h:e5e7b781-4b04-4c53-bf23-5e81789549ce\">Use icon fonts in various places</a></li>
<li><a href=\"#h:126ab89f-a6a5-47af-b0ea-28375299183b\">Configure the minibuffer and related</a></li>
<li><a href=\"#h:8179afea-2830-4225-8dab-ddb2daf0f822\">Tweak the <code class=\"language-plaintext highlighter-rouge\">dired</code> Emacs file manager</a></li>
<li><a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a></li>
</ol>
<p><a id=\"h:1e4fde73-a2a2-4dc5-82ad-02cf3884ece6\"></a></p>
<h2>Where to store the configurations</h2>
<p>Emacs provides lots of possibilities, starting with where to put the main configuration file. In the interest of not overwhelming the user, I am being opinionated with certain choices:</p>
<ul>
<li>Use <code class=\"language-plaintext highlighter-rouge\">~/.emacs.d/init.el</code> for your configurations.</li>
<li>If there is an <code class=\"language-plaintext highlighter-rouge\">~/.emacs</code> file on your system, make sure to delete it (or rename it if you care about its contents). Otherwise, Emacs will prioritise that over your <code class=\"language-plaintext highlighter-rouge\">~/.emacs.d/init.el</code>.</li>
</ul>
<p><a id=\"h:7db72beb-b8ac-4c6d-a6f4-a52661208e23\"></a></p>
<h2>Put all auto-generated configurations in a separate file</h2>
<p>Emacs has a graphical interface for modifying the variables that are intended for user configuration. Instead of writing Emacs Lisp code, the user clicks on buttons and fills in forms. This interface is accessed in a variety of ways, such as from the menu bar or with the command <code class=\"language-plaintext highlighter-rouge\">M-x customize</code>.</p>
<p>When the user makes a modification in this way and requests to save it, Emacs will append a code block to the user’s configuration file. Putting this code in a separate file makes it easier to reason about what is written by the user and what is generated by the running session. We thus add the following to the configuration file (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>):</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">custom-file</span> <span class=\"p\">(</span><span class=\"nv\">locate-user-emacs-file</span> <span class=\"s\">\"custom.el\"</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">load</span> <span class=\"nv\">custom-file</span> <span class=\"ss\">:no-error-if-file-is-missing</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>Here we defined the value of the variable <code class=\"language-plaintext highlighter-rouge\">custom-file</code> to be what the function call <code class=\"language-plaintext highlighter-rouge\">(locate-user-emacs-file \"custom.el\")</code> returns. That function finds where the <code class=\"language-plaintext highlighter-rouge\">init.el</code> is, gets the directory path, and then returns a new path consisting of that directory plus the name we give it. So it will return <code class=\"language-plaintext highlighter-rouge\">~/.emacs.d/custom.el</code> because of <code class=\"language-plaintext highlighter-rouge\">~/.emacs.d/init.el</code> (<a href=\"#h:1e4fde73-a2a2-4dc5-82ad-02cf3884ece6\">Where to store the configurations</a>).</p>
<p><a id=\"h:eafd6e24-e4eb-4963-92a5-c61b0c877b7f\"></a></p>
<h2>Set up the package manager</h2>
<p>Emacs has a basic, yet sufficiently capable, package manager. We use it to extend Emacs with functionality that is provided by the community. There are a lot of useful features built into Emacs, but without the external packages we would be worse off. Also, bear in mind that a package being built into Emacs does not necessarily make it better than third-party alternatives. I do prefer some of the latter even though Emacs has similar functionality built-in.</p>
<p>Start by adding the following to the configuration file (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>):</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">require</span> <span class=\"ss\">'package</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">package-initialize</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'package-archives</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"melpa\"</span> <span class=\"o\">.</span> <span class=\"s\">\"https://melpa.org/packages/\"</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>Those three lines do the following:</p>
<ul>
<li>Load the package manager.</li>
<li>Initialise the installed packages.</li>
<li>Add the MELPA repository to list of known package archives. MELPA is a community-driven project that contains lots of useful packages that are not available elsewhere. The core Emacs maintainers do not want to talk about it for political reasons. I disagree with them: we are already understaffed and underfunded. I will not throw away the excellent work of hundreds of developers.</li>
</ul>
<p>The function call <code class=\"language-plaintext highlighter-rouge\">(package-initialize)</code> is technically not necessary, as Emacs can handle this requirement in a different way. In the interest of simplicity, I am leaving it here.</p>
<p><a id=\"h:c12c3baa-49bc-4fc8-8eb5-cf3fb53903ef\"></a></p>
<h2>Set up <code class=\"language-plaintext highlighter-rouge\">use-package</code></h2>
<p>With <code class=\"language-plaintext highlighter-rouge\">use-package</code>, users have a powerful tool for configuring packages in a streamlined way (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). Concretely, the user does not need to write a lot of repetitive code, figure out how to load packages when they are needed, installed missing dependencies, and the like. Emacs version 29 has <code class=\"language-plaintext highlighter-rouge\">use-package</code> built-in, but earlier versions need to install it manually.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">when</span> <span class=\"p\">(</span><span class=\"nb\"><</span> <span class=\"nv\">emacs-major-version</span> <span class=\"mi\">29</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"p\">(</span><span class=\"nv\">package-installed-p</span> <span class=\"ss\">'use-package</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"nv\">package-archive-contents</span>
<span class=\"p\">(</span><span class=\"nv\">package-refresh-contents</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">package-install</span> <span class=\"ss\">'use-package</span><span class=\"p\">)))</span>
</code></pre></div></div>
<p>I explain <code class=\"language-plaintext highlighter-rouge\">use-package</code> at greater length in this video: <a href=\"https://protesilaos.com/codelog/2024-07-23-emacs-use-package-essentials/\">https://protesilaos.com/codelog/2024-07-23-emacs-use-package-essentials/</a>.</p>
<p><a id=\"h:5a631dfa-a8db-43f4-bd7a-92ce49c54226\"></a></p>
<h2>Do not show those confusing warnings when installing packages</h2>
<p>When installing a new package, Emacs will show a buffer that contains any warnings produced by the byte compiler (<a href=\"#h:eafd6e24-e4eb-4963-92a5-c61b0c877b7f\">Set up the package manager</a>). While this information is useful for developers, it is highly confusing for users. Many times I have received messages along the lines of “my Emacs just broke”, when in truth the warnings are about issues that are of no concern to the user.</p>
<p>The following snippet will prevent those buffers from popping up (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). They are still available in the buffer list, if they are needed.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'display-buffer-alist</span>
<span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"\\\\`\\\\*\\\\(Warnings\\\\|Compile-Log\\\\)\\\\*\\\\'\"</span>
<span class=\"p\">(</span><span class=\"nv\">display-buffer-no-window</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">allow-no-window</span> <span class=\"o\">.</span> <span class=\"no\">t</span><span class=\"p\">)))</span>
</code></pre></div></div>
<p><a id=\"h:83c8afc4-2359-4ebe-8b5c-f2e5257bdda3\"></a></p>
<h2>Delete the selected text upon text insertion</h2>
<p>Virtually every program out there will delete the selected/highlighted text as soon as the user types something. Emacs does not do this by default, even though it has the functionality available. Let us then enable it (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>):</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">delsel</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span> <span class=\"c1\">; no need to install it as it is built-in</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">delete-selection-mode</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>Here we are activating the <code class=\"language-plaintext highlighter-rouge\">delete-selection-mode</code> as soon as Emacs is initialised. In other words, it is available when Emacs starts.</p>
<p><a id=\"h:1e468b2a-9bee-4571-8454-e3f5462d9321\"></a></p>
<h2>Make <code class=\"language-plaintext highlighter-rouge\">C-g</code> a bit more helpful</h2>
<p>Having observed beginners struggle with <code class=\"language-plaintext highlighter-rouge\">C-g</code> not closing the open minibuffer, I know that the following is a quality-of-life refinement:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot/keyboard-quit-dwim</span> <span class=\"p\">()</span>
<span class=\"s\">\"Do-What-I-Mean behaviour for a general `keyboard-quit'.
The generic `keyboard-quit' does not do the expected thing when
the minibuffer is open.  Whereas we want it to close the
minibuffer, even without explicitly focusing it.
The DWIM behaviour of this command is as follows:
- When the region is active, disable it.
- When a minibuffer is open, but not focused, close the minibuffer.
- When the Completions buffer is selected, close it.
- In every other case use the regular `keyboard-quit'.\"</span>
<span class=\"p\">(</span><span class=\"nv\">interactive</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">cond</span>
<span class=\"p\">((</span><span class=\"nv\">region-active-p</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">keyboard-quit</span><span class=\"p\">))</span>
<span class=\"p\">((</span><span class=\"nv\">derived-mode-p</span> <span class=\"ss\">'completion-list-mode</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">delete-completion-window</span><span class=\"p\">))</span>
<span class=\"p\">((</span><span class=\"nb\">></span> <span class=\"p\">(</span><span class=\"nv\">minibuffer-depth</span><span class=\"p\">)</span> <span class=\"mi\">0</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">abort-recursive-edit</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"no\">t</span>
<span class=\"p\">(</span><span class=\"nv\">keyboard-quit</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">define-key</span> <span class=\"nv\">global-map</span> <span class=\"p\">(</span><span class=\"nv\">kbd</span> <span class=\"s\">\"C-g\"</span><span class=\"p\">)</span> <span class=\"nf\">#'</span><span class=\"nv\">prot/keyboard-quit-dwim</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>This defines a new command (i.e. an interactive function that we can call with <code class=\"language-plaintext highlighter-rouge\">M-x</code> or a key binding). This command provides a superset of the functionality provided by the generic <code class=\"language-plaintext highlighter-rouge\">keyboard-quit</code> command, which is bound to <code class=\"language-plaintext highlighter-rouge\">C-g</code> by default.</p>
<p><a id=\"h:287e0c77-5b7d-4b0e-954d-47bb5c0f933d\"></a></p>
<h2>Decide what to do with the graphical bars</h2>
<p>Emacs has a menu bar and tool bar by default. The menu bar is helpful to discover more functionality and access some commonly used commands. The tool bar is less useful, as it contains commands that are already in the menu bar. The following snippet contains the code for those two bars as well as the scroll bar. A value of <code class=\"language-plaintext highlighter-rouge\">1</code> enables the functionality, while <code class=\"language-plaintext highlighter-rouge\">-1</code> disables it. Tweak those accordingly (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>):</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">menu-bar-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">scroll-bar-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">tool-bar-mode</span> <span class=\"mi\">-1</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>I personally disable all three of them.</p>
<p>If you are interested in a technically more correct setup for those three, then know that Emacs will read an <code class=\"language-plaintext highlighter-rouge\">~/.emacs.d/early-init.el</code> file (<a href=\"#h:1e4fde73-a2a2-4dc5-82ad-02cf3884ece6\">Where to store the configurations</a>). This file is evaluated before the initial Emacs frame is drawn, so you might prefer to disable all those graphical elements at the outset. Still, in the interest of simplicity, I suggest you keep everything in the <code class=\"language-plaintext highlighter-rouge\">init.el</code> until you are a bit more experienced.</p>
<p><a id=\"h:c7528f3d-9fc8-49e5-9468-6868fb5c07b5\"></a></p>
<h2>Use the preferred fonts</h2>
<p>Fonts are an integral part of the text-centric Emacs experience (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). With the following snippet, we configure the three “faces” that are used to specify font families. Emacs has the concept of a “face” for a bundle of text properties that include typographic properties (font family, font height, font weight, …) and colours (text/foreground colour, background colour).</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">let</span> <span class=\"p\">((</span><span class=\"nv\">mono-spaced-font</span> <span class=\"s\">\"Monospace\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">proportionately-spaced-font</span> <span class=\"s\">\"Sans\"</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'default</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">mono-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mi\">100</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'fixed-pitch</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">mono-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mf\">1.0</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'variable-pitch</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">proportionately-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mf\">1.0</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The <code class=\"language-plaintext highlighter-rouge\">default</code> face is the only one that must have an absolute <code class=\"language-plaintext highlighter-rouge\">:height</code> value. Everything else uses a floating point, which is understood as a multiple of the <code class=\"language-plaintext highlighter-rouge\">default</code>.</p>
<p>Change the above snippet to use the preferred font family names. Also adjust the <code class=\"language-plaintext highlighter-rouge\">default</code> height to a larger/smaller number.</p>
<p><a id=\"h:ba68d1bb-eb07-402a-96b6-2ec612a12b3a\"></a></p>
<h2>Choose a theme and tweak the looks of Emacs</h2>
<p>I am the author of tens of themes for Emacs. Among them is the <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> package, which is also available built-in to the core Emacs distribution. Themes are a personal choice, however, so please do not consider the following as a strong opinion (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). I simply pick the theme that most people I have interacted with have chosen as their preferred one (a close second is the <code class=\"language-plaintext highlighter-rouge\">ef-dream</code> theme from my <code class=\"language-plaintext highlighter-rouge\">ef-themes</code> package). Use this as a template to eventually set up another theme.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">modus-themes</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">load-theme</span> <span class=\"ss\">'modus-vivendi-tinted</span> <span class=\"ss\">:no-confirm-loading</span><span class=\"p\">))</span>
</code></pre></div></div>
<p><a id=\"h:e5e7b781-4b04-4c53-bf23-5e81789549ce\"></a></p>
<h2>Use icon fonts in various places</h2>
<p>Continuing with the stylistic refinements to Emacs, the following snippet will show complementary icons in the minibuffer (<a href=\"#h:126ab89f-a6a5-47af-b0ea-28375299183b\">Configure the minibuffer and related</a>) and in Dired (<a href=\"#h:8179afea-2830-4225-8dab-ddb2daf0f822\">Tweak the <code class=\"language-plaintext highlighter-rouge\">dired</code> Emacs file manager</a>). To make this setup work, the user must type <code class=\"language-plaintext highlighter-rouge\">M-x</code> and then call the command <code class=\"language-plaintext highlighter-rouge\">nerd-icons-install-fonts</code>. This will store the icon font files in a local directory (on Linux this is <code class=\"language-plaintext highlighter-rouge\">~/.local/share/fonts</code>). To be sure everything is working, a restart to Emacs will guarantee that the new font files are read.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-completion</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">marginalia</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'marginalia-mode-hook</span> <span class=\"nf\">#'</span><span class=\"nv\">nerd-icons-completion-marginalia-setup</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-corfu</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">corfu</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'corfu-margin-formatters</span> <span class=\"nf\">#'</span><span class=\"nv\">nerd-icons-corfu-formatter</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-dired</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span>
<span class=\"p\">(</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">nerd-icons-dired-mode</span><span class=\"p\">))</span>
</code></pre></div></div>
<p><a id=\"h:126ab89f-a6a5-47af-b0ea-28375299183b\"></a></p>
<h2>Configure the minibuffer and related</h2>
<p>[ Also watch my video about the modern minibuffer packages, some of which I do not include here because they are a bit more advanced: <a href=\"https://protesilaos.com/codelog/2024-02-17-emacs-modern-minibuffer-packages/\">https://protesilaos.com/codelog/2024-02-17-emacs-modern-minibuffer-packages/</a>. ]</p>
<p>The minibuffer is a central part of the Emacs experience. It is where the user interacts with Emacs to respond to prompts, switch to another buffer, open a new file, run a command by its full name, and so on. The default minibuffer is minimal, which might be good for experienced users, but does not help with discoverability. Instead of that, we use the <code class=\"language-plaintext highlighter-rouge\">vertico</code> package to produce a vertical layout. This makes it easier to see what the available options are.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">vertico</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">vertico-mode</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The <code class=\"language-plaintext highlighter-rouge\">marginalia</code> package is a nice complement to the vertical layout, as it uses the free space to show helpful information about the options shown there. For example, when the user types <code class=\"language-plaintext highlighter-rouge\">M-x</code> to see a list of command names, Marginalia will add a brief description of each command. Depending on the specifics of the minibuffer interaction (opening a file, selecting a buffer, …), there will be the relevant information on display.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">marginalia</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">marginalia-mode</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The <code class=\"language-plaintext highlighter-rouge\">orderless</code> package offers a life-saver for all those cases where we do not remember the exact order of words. For example, to toggle the display of line numbers in the current buffer, we use the command <code class=\"language-plaintext highlighter-rouge\">M-x display-line-numbers-mode</code>. With <code class=\"language-plaintext highlighter-rouge\">orderless</code> set up, we may type something like <code class=\"language-plaintext highlighter-rouge\">li num dis</code> at the <code class=\"language-plaintext highlighter-rouge\">M-x</code> prompt and still get the desired result. This is because Orderless matches the space-separated characters we provide in any order. Emacs has other pattern matching styles built-in, but <code class=\"language-plaintext highlighter-rouge\">orderless</code> is a good place to start. We thus make sure the other relevant variables are set to a <code class=\"language-plaintext highlighter-rouge\">nil</code> value, so that we get Orderless everywhere.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">orderless</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-styles</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">orderless</span> <span class=\"nv\">basic</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-category-defaults</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-category-overrides</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The built-in <code class=\"language-plaintext highlighter-rouge\">savehist</code> package keeps a record of user inputs and stores them across sessions. Thus, the user will always see their latest choices closer to the top (such as with <code class=\"language-plaintext highlighter-rouge\">M-x</code>).</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">savehist</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span> <span class=\"c1\">; it is built-in</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">savehist-mode</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The <code class=\"language-plaintext highlighter-rouge\">corfu</code> package provides a popup interface for in-buffer completion. Conceptually, this is similar to what we do in the minibuffer, though it is meant for text expansion inside of a regular file. This is typically used for programming. There is more that can be done to make this useful for programming modes (namely, to set up the Language Server Protocol configuration), but because that will be too specific to each person’s requirements, I am providing only the core functionality here.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">corfu</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">global-corfu-mode</span><span class=\"p\">)</span>
<span class=\"ss\">:bind</span> <span class=\"p\">(</span><span class=\"ss\">:map</span> <span class=\"nv\">corfu-map</span> <span class=\"p\">(</span><span class=\"s\">\"<tab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">corfu-complete</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">tab-always-indent</span> <span class=\"ss\">'complete</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-preview-current</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-min-width</span> <span class=\"mi\">20</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-popupinfo-delay</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"mf\">1.25</span> <span class=\"o\">.</span> <span class=\"mf\">0.5</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">corfu-popupinfo-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span> <span class=\"c1\">; shows documentation after `corfu-popupinfo-delay'</span>
<span class=\"c1\">;; Sort by input history (no need to modify `corfu-sort-function').</span>
<span class=\"p\">(</span><span class=\"nv\">with-eval-after-load</span> <span class=\"ss\">'savehist</span>
<span class=\"p\">(</span><span class=\"nv\">corfu-history-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'savehist-additional-variables</span> <span class=\"ss\">'corfu-history</span><span class=\"p\">)))</span>
</code></pre></div></div>
<p>The minibuffer and the <code class=\"language-plaintext highlighter-rouge\">corfu</code> popup will benefit from the font icons we set up (<a href=\"#h:e5e7b781-4b04-4c53-bf23-5e81789549ce\">Use icon fonts in various places</a>).</p>
<p><a id=\"h:8179afea-2830-4225-8dab-ddb2daf0f822\"></a></p>
<h2>Tweak the <code class=\"language-plaintext highlighter-rouge\">dired</code> Emacs file manager</h2>
<p>Emacs comes with a powerful file manager built-in. I have talked about it at length in this video: <a href=\"https://protesilaos.com/codelog/2023-06-26-emacs-file-dired-basics/\">https://protesilaos.com/codelog/2023-06-26-emacs-file-dired-basics/</a>. The following settings define some basic refinements to the behaviour of common operations for copying, renaming, and deleting files.</p>
<p>The default presentation of Dired contains lots of details (<a href=\"#h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\">The complete configuration</a>). We use <code class=\"language-plaintext highlighter-rouge\">dired-hide-details-mode</code> to hide those. They can be toggled on/off at any time with <code class=\"language-plaintext highlighter-rouge\">M-x dired-hide-details-mode</code>, which is bound to the <code class=\"language-plaintext highlighter-rouge\">(</code> key in Dired buffers.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">dired</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span>
<span class=\"ss\">:commands</span> <span class=\"p\">(</span><span class=\"nv\">dired</span><span class=\"p\">)</span>
<span class=\"ss\">:hook</span>
<span class=\"p\">((</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">dired-hide-details-mode</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">hl-line-mode</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-recursive-copies</span> <span class=\"ss\">'always</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-recursive-deletes</span> <span class=\"ss\">'always</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">delete-by-moving-to-trash</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-dwim-target</span> <span class=\"no\">t</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>The <code class=\"language-plaintext highlighter-rouge\">dired-subtree</code> package provides commands to quickly view the contents of a folder with the <code class=\"language-plaintext highlighter-rouge\">TAB</code> key.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">dired-subtree</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">dired</span>
<span class=\"ss\">:bind</span>
<span class=\"p\">(</span> <span class=\"ss\">:map</span> <span class=\"nv\">dired-mode-map</span>
<span class=\"p\">(</span><span class=\"s\">\"<tab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-toggle</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"TAB\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-toggle</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"<backtab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-remove</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"S-TAB\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-remove</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-subtree-use-backgrounds</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
</code></pre></div></div>
<p>Earlier we set up Dired to move deleted files to the system trash. The <code class=\"language-plaintext highlighter-rouge\">trashed</code> package is then useful to provide a Dired-like interface for that compartment (it works the same way as Dired, so check the video I share above).</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">trashed</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:commands</span> <span class=\"p\">(</span><span class=\"nv\">trashed</span><span class=\"p\">)</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-action-confirmer</span> <span class=\"ss\">'y-or-n-p</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-use-header-line</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-sort-key</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"Date deleted\"</span> <span class=\"o\">.</span> <span class=\"no\">t</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-date-format</span> <span class=\"s\">\"%Y-%m-%d %H:%M:%S\"</span><span class=\"p\">))</span>
</code></pre></div></div>
<p><a id=\"h:8d8c57cc-04c9-408f-aca1-6493bc5d8f0d\"></a></p>
<h2>The complete configuration</h2>
<p>Remember to put this in the right file (<a href=\"#h:1e4fde73-a2a2-4dc5-82ad-02cf3884ece6\">Where to store the configurations</a>).</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">custom-file</span> <span class=\"p\">(</span><span class=\"nv\">locate-user-emacs-file</span> <span class=\"s\">\"custom.el\"</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">load</span> <span class=\"nv\">custom-file</span> <span class=\"ss\">:no-error-if-file-is-missing</span><span class=\"p\">)</span>
<span class=\"c1\">;;; Set up the package manager</span>
<span class=\"p\">(</span><span class=\"nb\">require</span> <span class=\"ss\">'package</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">package-initialize</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'package-archives</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"melpa\"</span> <span class=\"o\">.</span> <span class=\"s\">\"https://melpa.org/packages/\"</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">when</span> <span class=\"p\">(</span><span class=\"nb\"><</span> <span class=\"nv\">emacs-major-version</span> <span class=\"mi\">29</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"p\">(</span><span class=\"nv\">package-installed-p</span> <span class=\"ss\">'use-package</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">unless</span> <span class=\"nv\">package-archive-contents</span>
<span class=\"p\">(</span><span class=\"nv\">package-refresh-contents</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">package-install</span> <span class=\"ss\">'use-package</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'display-buffer-alist</span>
<span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"\\\\`\\\\*\\\\(Warnings\\\\|Compile-Log\\\\)\\\\*\\\\'\"</span>
<span class=\"p\">(</span><span class=\"nv\">display-buffer-no-window</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">allow-no-window</span> <span class=\"o\">.</span> <span class=\"no\">t</span><span class=\"p\">)))</span>
<span class=\"c1\">;;; Basic behaviour</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">delsel</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">delete-selection-mode</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">prot/keyboard-quit-dwim</span> <span class=\"p\">()</span>
<span class=\"s\">\"Do-What-I-Mean behaviour for a general `keyboard-quit'.
The generic `keyboard-quit' does not do the expected thing when
the minibuffer is open.  Whereas we want it to close the
minibuffer, even without explicitly focusing it.
The DWIM behaviour of this command is as follows:
- When the region is active, disable it.
- When a minibuffer is open, but not focused, close the minibuffer.
- When the Completions buffer is selected, close it.
- In every other case use the regular `keyboard-quit'.\"</span>
<span class=\"p\">(</span><span class=\"nv\">interactive</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">cond</span>
<span class=\"p\">((</span><span class=\"nv\">region-active-p</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">keyboard-quit</span><span class=\"p\">))</span>
<span class=\"p\">((</span><span class=\"nv\">derived-mode-p</span> <span class=\"ss\">'completion-list-mode</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">delete-completion-window</span><span class=\"p\">))</span>
<span class=\"p\">((</span><span class=\"nb\">></span> <span class=\"p\">(</span><span class=\"nv\">minibuffer-depth</span><span class=\"p\">)</span> <span class=\"mi\">0</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">abort-recursive-edit</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"no\">t</span>
<span class=\"p\">(</span><span class=\"nv\">keyboard-quit</span><span class=\"p\">))))</span>
<span class=\"p\">(</span><span class=\"nv\">define-key</span> <span class=\"nv\">global-map</span> <span class=\"p\">(</span><span class=\"nv\">kbd</span> <span class=\"s\">\"C-g\"</span><span class=\"p\">)</span> <span class=\"nf\">#'</span><span class=\"nv\">prot/keyboard-quit-dwim</span><span class=\"p\">)</span>
<span class=\"c1\">;;; Tweak the looks of Emacs</span>
<span class=\"c1\">;; Those three belong in the early-init.el, but I am putting them here</span>
<span class=\"c1\">;; for convenience.  If the early-init.el exists in the same directory</span>
<span class=\"c1\">;; as the init.el, then Emacs will read+evaluate it before moving to</span>
<span class=\"c1\">;; the init.el.</span>
<span class=\"p\">(</span><span class=\"nv\">menu-bar-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">scroll-bar-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">tool-bar-mode</span> <span class=\"mi\">-1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">let</span> <span class=\"p\">((</span><span class=\"nv\">mono-spaced-font</span> <span class=\"s\">\"Monospace\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">proportionately-spaced-font</span> <span class=\"s\">\"Sans\"</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'default</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">mono-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mi\">100</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'fixed-pitch</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">mono-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mf\">1.0</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">set-face-attribute</span> <span class=\"ss\">'variable-pitch</span> <span class=\"no\">nil</span> <span class=\"ss\">:family</span> <span class=\"nv\">proportionately-spaced-font</span> <span class=\"ss\">:height</span> <span class=\"mf\">1.0</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">modus-themes</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">load-theme</span> <span class=\"ss\">'modus-vivendi-tinted</span> <span class=\"ss\">:no-confirm-loading</span><span class=\"p\">))</span>
<span class=\"c1\">;; Remember to do M-x and run `nerd-icons-install-fonts' to get the</span>
<span class=\"c1\">;; font files.  Then restart Emacs to see the effect.</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-completion</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">marginalia</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'marginalia-mode-hook</span> <span class=\"nf\">#'</span><span class=\"nv\">nerd-icons-completion-marginalia-setup</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-corfu</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">corfu</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'corfu-margin-formatters</span> <span class=\"nf\">#'</span><span class=\"nv\">nerd-icons-corfu-formatter</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">nerd-icons-dired</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span>
<span class=\"p\">(</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">nerd-icons-dired-mode</span><span class=\"p\">))</span>
<span class=\"c1\">;;; Configure the minibuffer and completions</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">vertico</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">vertico-mode</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">marginalia</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">marginalia-mode</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">orderless</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-styles</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"nv\">orderless</span> <span class=\"nv\">basic</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-category-defaults</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">completion-category-overrides</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">savehist</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span> <span class=\"c1\">; it is built-in</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">savehist-mode</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">corfu</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:hook</span> <span class=\"p\">(</span><span class=\"nv\">after-init</span> <span class=\"o\">.</span> <span class=\"nv\">global-corfu-mode</span><span class=\"p\">)</span>
<span class=\"ss\">:bind</span> <span class=\"p\">(</span><span class=\"ss\">:map</span> <span class=\"nv\">corfu-map</span> <span class=\"p\">(</span><span class=\"s\">\"<tab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">corfu-complete</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">tab-always-indent</span> <span class=\"ss\">'complete</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-preview-current</span> <span class=\"no\">nil</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-min-width</span> <span class=\"mi\">20</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">corfu-popupinfo-delay</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"mf\">1.25</span> <span class=\"o\">.</span> <span class=\"mf\">0.5</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nv\">corfu-popupinfo-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span> <span class=\"c1\">; shows documentation after `corfu-popupinfo-delay'</span>
<span class=\"c1\">;; Sort by input history (no need to modify `corfu-sort-function').</span>
<span class=\"p\">(</span><span class=\"nv\">with-eval-after-load</span> <span class=\"ss\">'savehist</span>
<span class=\"p\">(</span><span class=\"nv\">corfu-history-mode</span> <span class=\"mi\">1</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">add-to-list</span> <span class=\"ss\">'savehist-additional-variables</span> <span class=\"ss\">'corfu-history</span><span class=\"p\">)))</span>
<span class=\"c1\">;;; The file manager (Dired)</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">dired</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">nil</span>
<span class=\"ss\">:commands</span> <span class=\"p\">(</span><span class=\"nv\">dired</span><span class=\"p\">)</span>
<span class=\"ss\">:hook</span>
<span class=\"p\">((</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">dired-hide-details-mode</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">dired-mode</span> <span class=\"o\">.</span> <span class=\"nv\">hl-line-mode</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-recursive-copies</span> <span class=\"ss\">'always</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-recursive-deletes</span> <span class=\"ss\">'always</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">delete-by-moving-to-trash</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-dwim-target</span> <span class=\"no\">t</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">dired-subtree</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:after</span> <span class=\"nv\">dired</span>
<span class=\"ss\">:bind</span>
<span class=\"p\">(</span> <span class=\"ss\">:map</span> <span class=\"nv\">dired-mode-map</span>
<span class=\"p\">(</span><span class=\"s\">\"<tab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-toggle</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"TAB\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-toggle</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"<backtab>\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-remove</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"s\">\"S-TAB\"</span> <span class=\"o\">.</span> <span class=\"nv\">dired-subtree-remove</span><span class=\"p\">))</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">dired-subtree-use-backgrounds</span> <span class=\"no\">nil</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"nb\">use-package</span> <span class=\"nv\">trashed</span>
<span class=\"ss\">:ensure</span> <span class=\"no\">t</span>
<span class=\"ss\">:commands</span> <span class=\"p\">(</span><span class=\"nv\">trashed</span><span class=\"p\">)</span>
<span class=\"ss\">:config</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-action-confirmer</span> <span class=\"ss\">'y-or-n-p</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-use-header-line</span> <span class=\"no\">t</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-sort-key</span> <span class=\"o\">'</span><span class=\"p\">(</span><span class=\"s\">\"Date deleted\"</span> <span class=\"o\">.</span> <span class=\"no\">t</span><span class=\"p\">))</span>
<span class=\"p\">(</span><span class=\"k\">setq</span> <span class=\"nv\">trashed-date-format</span> <span class=\"s\">\"%Y-%m-%d %H:%M:%S\"</span><span class=\"p\">))</span>
</code></pre></div></div>" nil nil "3014ad52b186d9bc502d3cec699b8713") (42 (26569 29903 524430 511000) "https://protesilaos.com/news/2024-11-27-now-on-signal-app/" "I now have a Signal account" nil "Wed, 27 Nov 2024 00:00:00 +0000" "<p>The <a href=\"https://protesilaos.com/news/2024-11-24-technical-email-problems/\">recent trouble I had with my email setup</a> has forced me to reconsider my communication strategy. I must have a Plan B. Even though I still do not like using my phone for productivity, I have to make this concession. You can thus find me on the Signal app: <a href=\"https://signal.me/#eu/AKio-VMi3643Lv6iuEAgrteICHl-cj14BPjVXKGhuSd7WewEnb1OA7BQx6-4Dsnv\">https://signal.me/#eu/AKio-VMi3643Lv6iuEAgrteICHl-cj14BPjVXKGhuSd7WewEnb1OA7BQx6-4Dsnv</a>.</p>
<p>Note that email is still my preferred method of communication. I would hate to type on the phone. I will do it, if necessary, but will not provide the kind of lengthy/complete answer I do via email.</p>" nil nil "6c8781d9c566ed137fad6632ba623e7f") (41 (26569 29903 524327 433000) "https://protesilaos.com/news/2024-11-24-technical-email-problems/" "I had some technical email problems" nil "Sun, 24 Nov 2024 00:00:00 +0000" "<p>I recently changed my email service provider. Overall, I am happy with
the results. There was, however, one major area that I underestimated:
the server-side spam policy. Their default settings are quite
aggressive in rejecting messages.</p>
<p>I am aware of four cases where this has happened: two were GitHub
notifications related to my Emacs packages and the other two were from
people I frequently correspond with.</p>
<p>I have now revised all the relevant settings and am, hopefully, able
to receive every legitimate email. If you sent me a message in the
past week or so and I did not reply to it, then I most probably never
got it. Please send it again.</p>" nil nil "fc8711bfaab24281274cdcfc4fa1af43") (40 (26569 29903 524217 561000) "https://protesilaos.com/news/2024-11-22-hut-flood-damage-water-redirect/" "Vlog: flood damage at the hut and water redirection work" nil "Fri, 22 Nov 2024 00:00:00 +0000" "<p>In this video I show the damage caused by the heavy rainfall. My
network of pipers is broken and I need to rebuild the dam I had, which
was collecting water and channeling it to my place. Part of the land
was eroded by the flood and I show the work I am doing to redirect the
stream so that it does not cause further damage. At the end of the
video I make some comments of a more general nature about letting your
deeds do the talking.</p>" nil nil "1b74709ec68c2e68eac719e992bd11b0") (39 (26569 29903 524088 990000) "https://protesilaos.com/keeb/2024-11-21-lessons-preferences-mech-keyboards/" "What I have learnt about my mechanical keyboard preferences" nil "Thu, 21 Nov 2024 00:00:00 +0000" "<p>Anyone who has put some time in learning about mechanical keyboards
understands how deep the rabbit hole is. While all the relevant
magnitudes are measurable, the complexity of their interactions is
such that one person’s optimal setup is another’s bane. Against this
backdrop, I think it is futile to search for the one keyboard to rule
them all. This quest only guarantees a considerable financial
investment in endeavours which, at best, constitute lateral steps on
the path towards optimality.</p>
<p>My approach is thus that of the pragmatist: if I can get something
that is “good enough”, I can forget about the keyboard and focus on
other tasks. I have been doing as much for a long time, having
recovered almost completely from Repetitive Strain Injury (RSI).
Though I have had my fair share of relatively small experiments along
the way.</p>
<p>I am sharing what I have learnt to (i) keep a record of my progress
hitherto and (ii) provide a resource for others who are interested in
another user’s perspective on the matter.</p>
<h2>One-shot keys are my favourite feature</h2>
<p>Perhaps the biggest improvement to my setup is the firmware level
(QMK) feature known as “one-shot keys”. I use this for the modifiers
and some layer activation keys and, as such, call them “one-shot
modifiers”, else OSM. With OSM configured, I type a modifier and then
within a configurable time window any key press is registered as
<code class=\"language-plaintext highlighter-rouge\">Mod+Key</code>. I no longer put any pressure on thumbs or pinkies by
forcing them to hold down keys for too long over the course of an
extended typing session.</p>
<p>Another neat feature is the “modifier lock”. I double tap a modifier
(the exact number of taps is configurable) to make it sticky. This
means that a double tap on <code class=\"language-plaintext highlighter-rouge\">Shift</code> followed by <code class=\"language-plaintext highlighter-rouge\">1</code>, <code class=\"language-plaintext highlighter-rouge\">2</code>, and <code class=\"language-plaintext highlighter-rouge\">3</code> will
produce <code class=\"language-plaintext highlighter-rouge\">!@#</code>. A single tap on the locked modifier undoes the effect.
This makes it extra nice to input all capital letters or those long
key combinations in Emacs like <code class=\"language-plaintext highlighter-rouge\">C-x C-k C-p</code> (bonus points if you know
what this does without looking it up).</p>
<p>I tried the popular “home-row modifiers” option of QMK but could not
make it work in a manner that is consistent with my typing. Whether my
technique is not compatible with it or the setup is inherently limited
is beside the point. What matters is that I cannot consistently type
prose when some key combinations mistrigger a modifier. And I do not
like to write prose by going back and forth in editing it—I prefer
the continuous writing approach, followed by a final spell check (also
why I activate the spell checker on demand).</p>
<p>The keyboard I am using is the Iris by Keebio (thanks to “Andreas” for
the gift! (not affiliated with that company, by the way)). It has a
thumb cluster where I place the modifiers I use the most. Check the
implementation details here:
<a href=\"https://github.com/protesilaos/qmk/tree/master/keyboards/keebio/iris/keymaps/prot\">https://github.com/protesilaos/qmk/tree/master/keyboards/keebio/iris/keymaps/prot</a>.
I think that with OSM I would be content to even use a traditional
keyboard for a while without fear of suffering a relapse in my RSI.
This is because I would not need to twist my wrists to press and hold
any modifier. Make no mistake though: an ergonomic keyboard is the
superior option, ceteris paribus.</p>
<h2>Linear switches are my favourites</h2>
<p>Taken in a vacuum, I find tactile switches very fun to type on. The
feedback they provide is unmistakable: it does not fail to capture my
attention. In a real-world scenario though, this quality is a major
weakness. When I am typing out a wall of text such as this one, I do
not need any extra indication that characters are printed on the
screen. I see them and can still hear the keyboard (no mechanical
keyboard is completely silent). Furthermore, the tactile bump is
considerably higher than the actuation point of the switch, meaning
that over the course of a prolonged typing session I will be exerting
more effort than necessary for a feature that has no added value to
me.</p>
<p>The Iris keyboard I got shipped with the Durock Shrimp switches
(Durock Shrimp Silent T1). I picked them because I thought I liked
this type of switch more than their linear or clicky counterparts. It
turns out that I do not appreciate the added weight to each key press.
Consider this: if you are comfortable typing on keys that actuate at
50gf, with tactiles you will be applying force that is closer to 60g.
You need to look at the peak tactile point to get a better sense of
how heavy the switches are: the actuation point will mislead you. (And
if the tactile point is too close to the actuation point you might as
well go directly for linears as the bump will be too small.)</p>
<p>When I started out with linear switches, I felt like typing against a
pillow. I could not tell by touch alone if my key presses were being
registered. There was no feedback other than an abrupt bottom out
event. It was disorienting. I did give them a fair chance though,
which helped me improve my technique as well become more familiar with
the linear feedback in general. It also made me realise how the in
vitro perception of a switch is distinct from its in vivo performance.
When I was trying the linear feedback without actually doing any work,
I was paying too close attention to where exactly the actuation point
is. In practice, this is not how it unfolds: I am writing something,
the fingers move around fairly quickly, and I am not focused on the
feel of each key press.</p>
<h2>Not all linears are the same</h2>
<p>There is the obvious metric of weight as well as other qualities like
sound profile and smoothness, but <a href=\"https://protesilaos.com/keeb/2024-11-14-gateron-yellow-mechanical-key-switches/\">what I realised
recently</a>
is that the real deal for me is the delta between the actuation point
and the bottom out force. It has a noticeable effect on typing feel
while writing. A fairly “horizontal” force curve like that of the
Keychron K Pro Silver switches slows me down while writing at speed
because the keys do not have anything to prevent me from bottoming out
hard and losing momentum. By contrast, a more “diagonal” force curve
provides extra resistance at the bottom of the spring. It makes it
easier to notice you are past the actuation point and it also results
in both a cushioned bottoming out as well as a stronger rebound event.</p>
<p>As such, when buying mechanical key switches, always pay close
attention to the data. You want to get an accurate force curve or, at
least, to understand how flat or steep that would look like. For my
use-case, the flatter profile of the Keychron Silvers was appropriate
when my RSI was at its worst state. Now I am all for a more pronounced
slope to the force curve, like that of the Gateron G Pro 3.0 Yellow
switches. There is no one-size-fits-all. What matters is to understand
what your needs are.</p>
<h2>Cherry keycaps are peerless</h2>
<p>I tried low profile keys, the MT3 keycap set, OEM, and the MOA profile
(check my <a href=\"https://protesilaos.com/keeb/2024-10-13-final-thoughts-moa-spherical-tops/\">Final thoughts on MOA keycaps and spherical tops in
general</a>).
What practice has shown me is that Cherry are the best for me:</p>
<ul>
<li>The cylindrical tops are forgiving to off-centre key presses.</li>
<li>The surface area of the cap tops is not too large, which balances
out the above point when it comes to getting a feel of where you are
on the keyboard.</li>
<li>The cylindrical tops do not cradle the fingers and thus let them
slide around easier.</li>
<li>The sculptured or stepped heights between the rows further improve
the sense of orientation through touch. For my Iris keyboard in
particular, they also allow me to place taller keys at the furthest
and closest point in the thumb cluster, thus reducing the amount of
stretching or curling involved.</li>
</ul>
<p>I admit that I was sceptical about the popularity of the Cherry
profile. I was thinking that maybe the reason they are ubiquitous is
because of market hype or some trendy fashion statement in picking the
premium designs manufactured by GMK (the company that has the original
Cherry company moulds). While I still have no interest in paying a
small fortune for keycaps, I do recognise that the Cherry profile as
such (which you can find for cheap everywhere), is the real deal and a
testament to engineering excellence.</p>
<p>Looking at Keychron’s wide range of options to get a sense of some
market dynamics, they seem to favour spherical tops (whenever they are
not selling a board with Cherry caps). Their OSA and KSA sets are
proof of that, with the latter looking very similar to MT3. If I was
buying a keyboard from them right now, I would be opting for the
barebones option and then picking up one of their Cherry sets.</p>
<p>For another comparison from a well-known manufacturer, Tai-Hao offers
two types of sculptured profiles: OEM, which is basically Cherry with
minor tweaks (I guess historically done to avoid patent issues?), and
Cubic which have the OEM height but a bigger surface area at the top.
If I had to make a choice between those two, it would be in favour of
OEM: the smaller surface area must be understood holistically with the
way cylindrical tops do not cradle the fingers, as I noted above.</p>
<p>Between Cherry and OEM, I cannot really tell the difference while
typing. It all depends on the build quality of the specific set. What
I am using right now is the Keychron Cherry Dolch Red set that a
keyboard enthusiast who prefers to remain anonymous gave me as a gift.
It is produced from PBT and is done using the double-shot technique.
On this note, I do not care about PBT versus ABS materials. The MT3
set I have is made out of ABS and is very nice to work with, my
dislike for the profile itself notwithstanding.</p>
<h2>Determine what you are working towards</h2>
<p>All my experiments with the keyboard are done to bring me closer to a
comfortable typing experience. I write a lot and thus need a setup
that empowers me accordingly. Understanding the “why” we are doing
something is a precondition for refining it with intent. Otherwise, it
is easy to get lost in the sea of options and end up paying exorbitant
fees on gimmicks.</p>
<p>Market prices are a good indicator in this regard: a 30 EUR Cherry
profile keycap set will deliver almost the same experience as those
extra costly GMK designs. (More than 100 EUR for a base set!? Come on
mate!) While you are still learning about your peculiar requirements,
refrain from all those products that promise to deliver top-class
quality: you might not like it and it is questionable how much you
need it, anyway.</p>
<p>Unless you are specifically keen on tinkering with mechanical
keyboards for the sake of exploration, consider this a trap: some
experimentation is necessary to figure out what you need, but when it
becomes a distraction from your duties you know you are overdoing it.
Same principle if you are hoarding keyboards with the rationalisation
that you are keeping them in your daily rotation. As such, try to
maintain a pragmatic outlook in settling for a build that is “good
enough” and, perhaps, committing to make incremental refinements to it
over the longer-term.</p>" nil nil "2c7f244febd8eb1e15078a9874f21f27") (38 (26569 29903 523485 571000) "https://protesilaos.com/poems/2024-11-20-tempests/" "Tempests (my poem)" nil "Wed, 20 Nov 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Worry not of tempests to be
Moments cannot be embottled
Rain might wash you away
Yet time already does
</code></pre></div></div>
<p>I was inspired to compose this poem while interpreting the song of
Miltos Paschalidis <a href=\"https://protesilaos.com/interpretations/2024-11-20-paschalidis-tale-with-sad-ending/\">Tale with sad ending</a>.</p>" nil nil "4fd0ef730d35495f1f23f3160770d989") (37 (26569 29903 522427 834000) "https://protesilaos.com/interpretations/2024-11-20-paschalidis-tale-with-sad-ending/" "Interpretation of =?utf-8?Q?=E2=80=9CTale?= with sad =?utf-8?Q?ending=E2=80=9D?= by Miltos Paschalidis" nil "Wed, 20 Nov 2024 00:00:00 +0000" "<p>For this entry I have picked a beautiful song by Miltos
Paschalidis: <a href=\"https://www.youtube.com/watch?v=Zj2g5N7geSg\">https://www.youtube.com/watch?v=Zj2g5N7geSg</a>.</p>
<p>Below are the original lyrics, my faithful translation of them, and
further philosophical commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Παραμύθι με λυπημένο τέλος
Εμρηνεία:  Μίλτος Πασχαλίδης
Στίχοι:    Μίλτος Πασχαλίδης
Μουσική:   Μίλτος Πασχαλίδης
Κάποτε γνώρισα μια λίμνη
μάτια μου, μάτια μου
Κάποτε γνώρισα μια λίμνη
που 'θελε να 'ναι θάλασσα

Και κάθε που χαράζει
την τρώει το μαράζι
Και κάθε που χαράζει
την τρώει το μαράζι

Κάποτε αντάμωσα μια πέτρα
μάτια μου, αχ μάτια μου
Κάποτε αντάμωσα μια πέτρα
που 'θελε βράχος να γενεί

Και κάθε που χαράζει
την τρώει το μαράζι
Και κάθε που χαράζει
την τρώει το μαράζι

Κάποτε αγάπησα μια κόρη
μάτια μου, μαύρα μάτια μου
που ρωτούσε κάθε αγόρι
πότε γυναίκα θα γενεί
Και κάθε που χαράζει
την τρώει το μαράζι
Και κάθε που χαράζει
την τρώει το μαράζι
Έχουν περάσει χρόνοι δέκα
μάτια μου, αχ μάτια μου
η κόρη γίνηκε γυναίκα
μα εγώ απόμεινα παιδί
Και κάθε που χαράζει
με τρώει το μαράζι
Και κάθε που χαράζει
με τρώει το μαράζι
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Tale with sad ending
Singer:  Miltos Paschalidis
Lyrics:  Miltos Paschalidis
Music:   Miltos Paschalidis
I once met a lake
my eyes, my eyes
I once met a lake
that wanted to be a sea
And whenever it dawns
it suffers in grief
And whenever it dawns
it suffers in grief
I once encountered a stone
my eyes, oh my eyes
I once encountered a stone
that wanted to be a rock
And whenever it dawns
it suffers in grief
And whenever it dawns
it suffers in grief
I once loved a girl
my eyes, my black eyes
who was asking every boy
when she would become a woman
And whenever it dawns
it suffers in grief
And whenever it dawns
it suffers in grief
Ten years have gone by
my eyes, oh my eyes
the girl became a woman
but I remained a boy
And whenever it dawns
I suffer in grief
And whenever it dawns
I suffer in grief
</code></pre></div></div>
<p>The titular tale is about the tension between our wishes and
actuality. There are times when we do not live in the present of our
presence: we do not appreciate what we have, longing for something
entirely different instead. In the process, we do not enjoy our life;
we declare indefinite absence from it, opting to find solace in an
imaginary world that cannot fulfil us no matter how comfortable it may
be.</p>
<p>Some wishes are realistic, like the girl wanting to become a woman.
This is the natural course of events. Other aspirations cannot be made
manifest though. We may then assume that the realistic ones are
appropriate and that only the unrealistic hopes are detrimental to our
being. The tale, however, correctly suggests that this is not how it
is: being disconnected from our prevailing reality begets sorrow and
suffering.</p>
<p>Fundamentally, there is a mismatch between what we can achieve in the
here-and-now and what we believe we ought to be experiencing instead.
It comes down to expectations, which themselves are shaped by mistaken
views. If all we expect is something beyond the given milieu’s scope,
we are setting ourselves up for persistent disappointment.</p>
<p>Being content presupposes acceptance. Admit to who you are right now
in the specifics of your environment. This does not preclude who you
might become in cases yet to be constituted. Accepting how things
stand is not a prerequisite for them to be: it only is a precondition
for you to not be labouring against forces superior to yours.</p>
<p>There will still be sad endings, though there may be something
worthwhile to be had in them too, provided we are attuned to them.
Besides, the cosmos is not about pure bliss. It is one of admixture; a
blend of diverse events and the feelings they produce.</p>
<p>I am inspired to close this commentary with a poem of my own that just
sprung to mind (I will also post it in the <a href=\"https://protesilaos.com/poems\">Poems</a> section):</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Tempests
Worry not of tempests to be
Moments cannot be embottled
Rain might wash you away
Yet time already does
</code></pre></div></div>" nil nil "0da50ad07c71b851791554c9ccfe1393") (36 (26569 29903 521168 891000) "https://protesilaos.com/politics/2024-11-18-sovereign-europe-is-not-good-idea/" "A =?utf-8?Q?=E2=80=98sovereign?= European =?utf-8?Q?Union=E2=80=99?= is not a good idea" nil "Mon, 18 Nov 2024 00:00:00 +0000" "<p>In <a href=\"https://jacobin.com/2024/11/die-linke-schwerdtner-wagenknecht-workers/\">an insightful interview for <em>Jacobin</em> magazine</a>,
Ines Schwerdtner, newly elected co-chair of Germany’s left-wing party
<em>Die Linke</em>, says this about European policy orientations (the
parenthetic explanation is mine):</p>
<blockquote>
<p>So, I think that this snap-election campaign [in Germany following
the collapse of the ruling coalition], which will be short and
hard-fought, will be all about defending Europe, defending Germany,
and security policy, discussed in military terms. That’s
frightening. When the political center invokes a “sovereign Europe,”
they only mean it in Emmanuel Macron’s sense of building up a
European army. This summer, during the EU election campaign, we
said, yes, we need a sovereign Europe and European Union, but in a
sense of social and economic policies, in the sense of not being
dependent on either the United States or China.</p>
</blockquote>
<p>I agree with the sentiment of focusing on socio-economic matters, but
think the notion of sovereignty is intrinsically linked to military
might. This is not a matter of ideology but a consequence of
sovereignist governance. If a polity wants to be sovereign, else
independent, on, say, the economic front, it has to impose
protectionist policies. This means that trade partners on the
receiving end will be forced to find new markets for their exports
and, generally, devise ways to cope with the economic headwinds. Among
such reactions will be their closer collaboration with states that
antagonise the country that implemented the protectionist policies. In
the case of the EU versus China, for example, China is incentivised to
collaborate with Russia and Iran, among others. Those international
actors will seek ever closer ties which will inevitably include
military affairs as there will be a global race for the control of
valuable resources. What then starts out as seemingly innocuous
economic protectionism in the name of “the people” will have to
transmogrify into a more aggressive mode of governance that involves
assertive foreign policy, with the necessary side-effect of
reinforcing the domestic industrial-military-financial complex.</p>
<p>We need not look far back in our history to understand how trade, with
the interdependence it establishes, is a powerful guarantee for peace.
The history of the European integration process is, in essence, the
history of dismantling trade barriers between the member states of the
European Communities (European Coal and Steel Community, European
Economic Community, European Union). There has not been war or the
chance of one between member states, despite the long history of
conflict on the continent. For example, Germany and France were
enemies in two World Wars, as well as similarly disstrous conflicts in
previous centuries, but now the Franco-German tandem is an integral
part of European politics. The idea of European integration, despite
flaws in specific implementation details, is wonderful because it
understands the link between economic liberty and peace and,
conversely, the connection between economic hostility and warfare.</p>
<p>Countries with close economic ties are less likely to go to war with
each other because of the immediate consequences of the ensuing
economic downfall. Trade will collapse overnight and with it there
will be cascading effects that harm the livelihood of civilians,
notwithstanding the horrors of war. A government that declares war on
a close trade partner is thus consigning its citizens to radical
uncertainty and impoverishment. By contrast, the sovereignist outlook
potentially benefits from conflict because it is already operating
along the lines of a zero-sum game where the winner takes the spoils
and the loser suffers permanent losses.</p>
<p>The Left’s commitment to internationalism was an expression of this
notion that collaboration brings peace while sovereignism begets
conflict. We understand this dynamic in interpersonal affairs as well.
People who are exposed to groups outside of their own, and who are
made to rely on others, are more likely to be tolerant towards them,
while those who live in their little bubble express intolerance
towards anyone alien to them (and this can happen even in the name of
cultural progress, where self-styled “social justice warriors” will
say how bad are the men, the white people, or whichever bugaboo is in
vogue).</p>
<p>Instead of the age-old “beggar thy neighbour” mistakes that plunged
Europe in perpetual conflict, we need to review our history, recent
and ancient, and think in terms of the general good. We have to
recognise that we are not alone in this world, be it as countries or
individuals. We give something and get something back. In the process,
we have peace through openness and get the chance to broaden our horizons.</p>
<p>Seeing though how virtually everybody in Europe is obsessing about
their own flavour of sovereignty, I am afraid that we will continue to
go down the path of paranoia that only sees enemies beyond our
borders. We already hear strong voices in the public opinion that are,
for example, outright Sinophobic. I expect this to remain the norm
exactly because Europe’s foreign policy outlook vis-à-vis much of the
world is increasingly hostile (same for the Americans, by the way).</p>
<p>Finally, there is another point of concern for people on the broader
political left. If you are peddling what effectively is sovereignism
lite, then why would voters opt for you en masse when they can instead
go for the real deal in the form of the far-right?</p>" nil nil "333e8e30b0639b484b3e4a355c6a04d7") (35 (26569 29903 520837 532000) "https://protesilaos.com/codelog/2024-11-17-modus-preview-palette-tabulated/" "Emacs: the Modus themes palette previews are tabulated" nil "Sun, 17 Nov 2024 00:00:00 +0000" "<p>I just pushed a massive change to the Modus themes Git repository
which makes the “preview palette” commands use <code class=\"language-plaintext highlighter-rouge\">tabulated-list-mode</code>.
This means that the output consists of actual rows and columns and,
more importantly, the user can sort by the given column (click on the
column name or do <code class=\"language-plaintext highlighter-rouge\">M-x describe-mode</code> to learn about the relevant key
bindings).</p>
<p>As part of the redesign, I also included an indicator about which
entries in the palette constitute “semantic colour mappings”, as
opposed to “named colours”. Named colours are those which correspond
to a hexadecimal RGB value, like <code class=\"language-plaintext highlighter-rouge\">(blue-warmer \"#3548cf\")</code>, while the
mappings will point to such named colours like <code class=\"language-plaintext highlighter-rouge\">(fg-link blue-warmer)</code>.</p>
<p>But enough of this! Here is a picture showing two buffers. In the left
window we have the output of <code class=\"language-plaintext highlighter-rouge\">M-x modus-themes-list-colors</code>. In the
right window it is the same command with a <code class=\"language-plaintext highlighter-rouge\">C-u</code> prefix argument to
show only the semantic color mappings. Notice that the buffers are
named after the theme they are previewing and the scope of the
preview.</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2024-11-17-modus-themes-preview-palette.png\"><img alt=\"Modus themes palette preview in a tabulated list\" src=\"https://protesilaos.com/assets/images/attachments/2024-11-17-modus-themes-preview-palette.png\" /></a></p>
<p>The command <code class=\"language-plaintext highlighter-rouge\">modus-themes-list-colors</code> prompts for a Modus theme to
preview. Whereas <code class=\"language-plaintext highlighter-rouge\">modus-themes-list-colors-current</code> acts directly
using the current Modus theme.</p>
<p>Use these to design your own palette overrides (check the manual for
details) or simply to copy the colour values you are interested in.</p>
<h2>Sources</h2>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">modus-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/modus-themes\">https://protesilaos.com/emacs/modus-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/modus-themes-changelog\">https://protesilaos.com/emacs/modus-themes-changelog</a></li>
<li>Colour palette: <a href=\"https://protesilaos.com/emacs/modus-themes-colors\">https://protesilaos.com/emacs/modus-themes-colors</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/modus-themes-pictures\">https://protesilaos.com/emacs/modus-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/modus-themes\">https://github.com/protesilaos/modus-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/modus-themes\">https://gitlab.com/protesilaos/modus-themes</a></li>
</ul>
</li>
<li>Backronym: My Old Display Unexpectedly Sharpened … themes.</li>
</ul>" nil nil "b94912c82e56ba09f0561d6f0756fe38") (34 (26569 29903 520611 276000) "https://protesilaos.com/codelog/2024-11-16-ef-themes-1-9-0/" "Emacs: ef-themes version 1.9.0" nil "Sat, 16 Nov 2024 00:00:00 +0000" "<p>The <code class=\"language-plaintext highlighter-rouge\">ef-themes</code> are a collection of light and dark themes for GNU
Emacs that provide colourful (“pretty”) yet legible options for users
who want something with a bit more flair than the <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> (also
designed by me).</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">ef-themes</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/ef-themes\">https://protesilaos.com/emacs/ef-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/ef-themes-changelog\">https://protesilaos.com/emacs/ef-themes-changelog</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/ef-themes-pictures\">https://protesilaos.com/emacs/ef-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/ef-themes\">https://github.com/protesilaos/ef-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/ef-themes\">https://gitlab.com/protesilaos/ef-themes</a></li>
</ul>
</li>
<li>Backronym: Eclectic Fashion in Themes Hides Exaggerated Markings,
Embellishments, and Sparkles.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Version 1.9.0 on 2024-11-16</h2>
<p>This version introduces several small refinements to an already
comprehensive basis.</p>
<h3>No interference with <code class=\"language-plaintext highlighter-rouge\">org-modern</code></h3>
<p>The <code class=\"language-plaintext highlighter-rouge\">org-modern</code> package is not meant to be touched by a theme. This
is what I am doing with the <code class=\"language-plaintext highlighter-rouge\">modus-themes</code>, but I forgot to remove the
changes made by the <code class=\"language-plaintext highlighter-rouge\">ef-themes</code>.</p>
<p>Thanks to Daniel Mendler, author of <code class=\"language-plaintext highlighter-rouge\">org-modern</code>, for bringing this
matter to my attention. This was done in issue 48:
<a href=\"https://github.com/protesilaos/ef-themes/issues/48\">https://github.com/protesilaos/ef-themes/issues/48</a>.</p>
<h3>Colour refinements for several themes</h3>
<p>I document those, though most of them will not be noticeable, unless
on a side-by-side comparison.</p>
<ul>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">ef-day</code> palette value for <code class=\"language-plaintext highlighter-rouge\">green-warmer</code> has a marginally
greater contribution from the red channel of light, making it a tiny
bit “warmer”. The <code class=\"language-plaintext highlighter-rouge\">green-faint</code> is made less warm. In context, these
tweaks make certain elements easier to tell apart, while retaining
the character of the theme.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">ef-reverie</code> value for <code class=\"language-plaintext highlighter-rouge\">blue-faint</code> is less saturated, so its
blue impression is diminished. It still performs its role in all the
relevant contexts, only now it does it better by not competing with
other shades of blue.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">ef-light</code> value for <code class=\"language-plaintext highlighter-rouge\">fg-dim</code> is much less intense, though still
within the desired contrast range. This way, it works better in
context. The “added” background colours (used in <code class=\"language-plaintext highlighter-rouge\">diff-mode</code>, Ediff,
Magit, etc.) are a little bit more intense to be more harmonious
with other elements in a diff output. The <code class=\"language-plaintext highlighter-rouge\">blue-faint</code> has lower
contribution from the blue channel of light in the interest of not
interfering with other blue hues, while still looking alright
itself. The semantic palette mapping for links now uses the
<code class=\"language-plaintext highlighter-rouge\">blue-warmer</code> colour instead of <code class=\"language-plaintext highlighter-rouge\">blue</code>, as the former is less
ambiguous in context. The <code class=\"language-plaintext highlighter-rouge\">fg-alt</code> is recalibrated to be closer to a
grey value, improving its use in several places. The <code class=\"language-plaintext highlighter-rouge\">red-cooler</code>
value is redone to not be conflated with magenta: it now delivers a
rosy red impression. Lastly, the <code class=\"language-plaintext highlighter-rouge\">rainbow-2</code> mapping uses <code class=\"language-plaintext highlighter-rouge\">magenta</code>
instead of <code class=\"language-plaintext highlighter-rouge\">magenta-warmer</code> for consistency in all relevant
situations.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">ef-night</code> semantic colour mapping of <code class=\"language-plaintext highlighter-rouge\">preprocessor</code> is toned
down in intensity to remove what was a stylistic exaggeration. The
<code class=\"language-plaintext highlighter-rouge\">variable</code> mapping is tweaked to use <code class=\"language-plaintext highlighter-rouge\">cyan-warmer</code> instead of the
<code class=\"language-plaintext highlighter-rouge\">cyan</code> colour, as the former is slightly more suited to the role due
to how it combines with other colours. The <code class=\"language-plaintext highlighter-rouge\">type</code> semantic mapping
is bound to a less intense shade of magenta, making it not overpower
other constructs in a competition for attention. Finally, the value
of the <code class=\"language-plaintext highlighter-rouge\">magenta-faint</code> colour has a greater contribution from the
blue channel of light to shift its hue slightly closer to purple.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">ef-deuteranopia-light</code> palette entry for <code class=\"language-plaintext highlighter-rouge\">red-faint</code> is more
yellow to be discernible where needed. Similarly, the <code class=\"language-plaintext highlighter-rouge\">cyan-cooler</code>
has a reduced contribution from the red channel of light.</p>
<p>[ Note that the “deuteranopia” and “tritanopia” themes define all
colours in the palette to be consistent with the overall project,
but only use hues that are appropriate for red-green and blue-yellow
colour deficiency, respectively. ]</p>
</li>
<li>
<p>The “subtle” backgrounds of all themes (e.g. <code class=\"language-plaintext highlighter-rouge\">bg-red-subtle</code>) are
redone to feel more natural in the context of their respective
theme. Before, some values were a bit exaggerated and/or not aligned
with the overall aesthetic. Still, the changes are small: do not
expect your preferred theme to be refashioned.</p>
</li>
</ul>
<h3>More accurate faces for Org agenda dates</h3>
<p>The faces used by Org agenda to style events with a scheduled date or
deadline are redesigned to better complement the semantics of what is
on display. Pressing tasks stand out more, while those that do not
require immediate attention are rendered in a more subtle style.</p>
<p>Thanks to Adam Porter (aka GitHub alphapapa) for suggesting this
revision and discussing the technicalities with me. This was done in
issue 102 of the Modus themes repository (but the principles apply to
the Ef themes as well): <a href=\"https://github.com/protesilaos/modus-themes/issues/102\">https://github.com/protesilaos/modus-themes/issues/102</a>.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">forge</code> package is fully supported</h3>
<p>All of its faces will now look consistent in context as they get the
appropriate colours of the active Ef theme.</p>
<p>Thanks to Len Trigg for reporting that some attributes were not
suitable for the intended purpose of certain Forge faces. I fixed
those accordingly. This was done in issue 47:
<a href=\"https://github.com/protesilaos/ef-themes/issues/47\">https://github.com/protesilaos/ef-themes/issues/47</a>.</p>
<h3>Support for the <code class=\"language-plaintext highlighter-rouge\">tldr</code> package</h3>
<p>This makes it look consistent with the rest of the theme.</p>
<h3>Support for the built-in <code class=\"language-plaintext highlighter-rouge\">window-tool-bar-mode</code></h3>
<p>This is a mode available in Emacs 30. Its faces will look right at all
times.</p>
<h3>Support for the built-in <code class=\"language-plaintext highlighter-rouge\">hexl-mode</code></h3>
<p>Instead of using shades of grey backgrounds, the themes use carefully
chosen foreground values that are easier to spot.</p>
<h3>The <code class=\"language-plaintext highlighter-rouge\">embark</code> faces are brought up-to-date</h3>
<p>Old symbols are removed and the current ones are added in their stead.</p>
<h3>Miscellaneous</h3>
<ul>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">:background-mode</code> property of the <code class=\"language-plaintext highlighter-rouge\">ef-melissa-dark</code> theme is
set to the correct symbol. Thanks to Pedro Cunha for making the
change in pull request 46: <a href=\"https://github.com/protesilaos/ef-themes/pull/46\">https://github.com/protesilaos/ef-themes/pull/46</a>.
The change is small, so Pedro does not need to assign copyright to
the Free Software Foundation.</p>
</li>
<li>
<p>Graphical buttons inherit the <code class=\"language-plaintext highlighter-rouge\">ef-themes-button</code> face, which makes
it easier to ensure theme-wide consistency for all relevant faces.</p>
</li>
<li>
<p>The <code class=\"language-plaintext highlighter-rouge\">all-the-icons</code> faces for Ibuffer use different colours that
refine how everything looks in context.</p>
</li>
<li>
<p>The popup produced by the <code class=\"language-plaintext highlighter-rouge\">corfu</code> and <code class=\"language-plaintext highlighter-rouge\">company</code> packages will use a
monospaced font (inherit from <code class=\"language-plaintext highlighter-rouge\">fixed-pitch</code>) if the user option
<code class=\"language-plaintext highlighter-rouge\">ef-themes-mixed-fonts</code> is set to a non-nil value.</p>
</li>
<li>
<p>The annotation function used by the command <code class=\"language-plaintext highlighter-rouge\">ef-themes-select</code> or
related now uses the <code class=\"language-plaintext highlighter-rouge\">completions-annotations</code> face, as it should.</p>
</li>
</ul>" nil nil "6fc1ce427f518b7ce153d038b85ff80e") (33 (26569 29903 520076 468000) "https://protesilaos.com/keeb/2024-11-14-gateron-yellow-mechanical-key-switches/" "Thoughts on the Gateron Yellow mechanical key switches" nil "Thu, 14 Nov 2024 00:00:00 +0000" "<p>In almost one year of using mechanical keyboards, I have spent about
half my time with tactile switches and the remainder with linear ones.
The switch I have used the most is the Keychron K Pro Silver
(<a href=\"https://protesilaos.com/keeb/2024-07-02-keychron-banana-silver-switches/\">Thoughts on the Keychron Banana and Silver mechanical key switches</a>).</p>
<p>Overall, linears are easier for me because they do not tire me out
when I am writing prose and are perfectly fine for coding. Expository
writing and programming feel very different to me. I write prose in
one go, meaning that I produce a wall of text without going back and
forth, and then follow it up with a quick review for typos. As such, I
spend many minutes typing non-stop. Tactile switches create this at
least tiny pulsating effect, which becomes especially noticeable after
~20 minutes of continuous writing. It leads to fatigue and breaks my
flow. Tactiles are fine while programming, due to the fact that the
pace is varied: part of the time is spent moving around in a text
buffer with the intent of performing a surgical edit. But because most
of my time involves email correspondence, journal entries, and essays,
I default to linear switches.</p>
<p>As I am recovering from RSI, the Silvers are starting to feel too
light and restrictive. I cannot avoid bottoming out hard and end up
losing momentum as I type. I thus decided to make a quality-of-life
refinement to my setup, in the form of the Gateron G Pro 3.0 Yellow
switches. After a couple of weeks of full-time usage, I am happy with
my decision.</p>
<h2>How the Yellows compare to the Silvers</h2>
<table>
<thead>
<tr>
<th>Switch name</th>
<th>Feedback</th>
<th>Operating force</th>
<th>Pre-travel</th>
<th>Total travel</th>
</tr>
</thead>
<tbody>
<tr>
<td>Keychron K Pro Silver</td>
<td>Linear</td>
<td>45±8gf</td>
<td>1.3±0.3mm</td>
<td>3.3mm±0.2mm</td>
</tr>
<tr>
<td>Gateron G Pro 3.0 Yellow</td>
<td>Linear</td>
<td>50±15gf</td>
<td>2.0±0.6mm</td>
<td>4.0mm Max</td>
</tr>
</tbody>
</table>
<p>I got those numbers from the websites of Keychron and Gateron,
respectively, but I am not providing any links because I am not
affiliated with anyone and do not want this to be interpreted
otherwise.</p>
<p>What these metrics mean in practice is that the Yellows feel more
substantive than the Silvers. They are less likely to be activated by
mistake due to the combination of their longer pre-travel and heavier
weight. But they are not heavy by any means. Each switch still feels
light to the touch, especially in the real world scenario of typing
words at speed.</p>
<p>A measurement I have not been able to find on Keychron’s website is
the bottom out force for the Silvers. That of the Yellows is 67gf. The
Silvers feel considerably lighter in this regard, so I am inclined to
put the value at ~50gf. This, in combination with the aforementioned
mean that I do not bottom out hard with the Yellows even when I am
writing at my maximum speed (which is not too high, by the way). The
added resistance at the bottom offers a cushion and gives a small
boost to my fingers as they move around the keyboard.</p>
<p>Based on this exposure, I can tell how the slope of the force curve
contributes to the overall experience. In linear switches, when the
delta between the operating and bottom-out forces is small, the key
press feels like there is nothing there to prevent you from bottoming
out at maximum speed and thus losing momentum. Whereas the greater
delta results in an increasingly more resistant press that eases the
bottoming out and propels the fingers back to the top, thus keeping
the momentum going. This is my understanding based on real-world
typing (e.g. writing this article), not some test involving isolated
key presses.</p>
<p>In terms of build quality, both switches have about the same stem
wobble in all directions. It is moderate, though my Cherry profile
keycaps help minimise it. I assume that taller caps, such as the SA
profile, would emphasise the wobbliness and thus highlight it as a
weakness of both models.</p>
<p>The Silvers have a stem with the familiar MX cross shape, plus walls
on the side. Those are touted as “dust-proof”, though I cannot tell
how much of that is empty marketing palaver or a genuine improvement
to the de facto standard shape. The Yellows have no such walls.
Perhaps, this reinforced stem does make a difference, but I would need
to compare, say, a Yellow with and without it (ceteris paribus) to
form a better opinion. All I can point out now is that the two
switches are both moderately wobbly.</p>
<p>Where the Yellows are the clear winner is on the smoothness front. I
cannot sense any scratch while typing. Same for when I try to press
down on keys off-centre. Furthermore, all switches are consistent
across the entire batch. The Silvers have always been scratchy and
they are inconsistent as well. However, I do not want to make this
seem like a major issue because it never poses a problem while typing:
I probably wrote tens of thousand of words in the past months with the
Silvers and have no complaints about them. The scratch has an effect
on the acoustics but, again, it is minor and I would never consider it
a deal-breaker either way.</p>
<h2>A small change to match my needs</h2>
<p>When my RSI was at its peak, the Silvers felt like a blessing: their
light weight and early actuation point required minimal effort from my
side. Though I was always relatively slow with them. Now that I am
stronger and faster, their relative strengths have turned into
considerable hindrances.</p>
<p>By discovering how the slope of a linear switch contributes to its
performance, I have learnt a valuable lesson for the future and will
be able to make more informed decisions that match my needs. The gist
is that there is no such thing as a perfect switch: it all depends on
the use-case and particular needs.</p>
<p>The Yellows are a fine product that meets my expectations, especially
given their budget-friendly cost. They are clearly not a top-tier
offering, but have many merits. If I were to iterate on this platform,
I would like to have the same metrics for the force curve as well as
equally good smoothness, combined with little to no stem wobble, and,
if possible, a slightly more subdued sound.</p>
<p>This is where we get into the dangerous zone with mechanical keyboards
and my instinct is to hold myself back. We can spend inordinate
amounts of money in pursuit of the unicorn of flawless performance,
only to end up with something that is, at best, marginally better than
the average offering. The Gateron G Pro 3.0 Yellow switches check all
the boxes for me and comfortably pass the test of being “good enough”.</p>" nil nil "83ce71ad27f652e2dadb10218bd658e5") (32 (26569 29903 519664 483000) "https://protesilaos.com/politics/2024-11-12-individual-responsibility-beside-politics/" "Individual responsibility beside politics" nil "Tue, 12 Nov 2024 00:00:00 +0000" "<p>In an episode for the <em>Team Human</em> podcast titled <a href=\"https://www.teamhuman.fm/episodes/303-rushkoff-post-election-monologue-this-game-is-not-reality\">Post-Election
Monologue: This Game is Not Reality</a>,
host Douglas Rushkoff provides a thoughtful commentary on the bigger
picture of contemporary social and political trends in light of the
presidential elections in the United States of America. Douglas’
salient point is to not rely too much on state institutions or,
rather, to understand that we have a role to play beyond the formal
workings of government. This is encapsulated nicely in the closing words:</p>
<blockquote>
<p>I encourage you all to breath, to speak with loved ones, to meet
your neighbours, to engage as fruitfully and charitably as you can,
to do favours for people, to ask for favours from people; put the
social back into socialism and stop worrying about the politics for
the moment.</p>
</blockquote>
<p>What Douglas describes is the workings of a community. I have long now
been convinced that this is the way forward for a more peaceful
society. What the average person experiences now is alienation,
disenfranchisement, and loneliness. They spend most of their day in
closed spaces, within an urban setting, lacking a strong social
network around them, deprived of sufficient sunlight, and perennially
stressed.</p>
<p>I spent years living in large cities where I did not know my
neighbours at a human level. The few times I tried to be friendly, I
was met with a cautious “hello” and a polite, albeit distant,
“goodbye”. After a while, I stopped greeting people on the street,
despite my friendly demeanour. It was soul-crashing to not say
anything when I would rather wish somebody a good morning and, should
they need, help them with whatever I could.</p>
<p>This is the norm in cities: to not trust those around you and to try
to rely on your own devices or those of a select few individuals you
know. You cannot trust those around you because they come and go. Your
neighbour today will not be there long-term for a number of reasons.
They have no roots in the given milieu. You do not know who their
parents are, what their grandparents are doing, and who they are
friends with. As such, social relations are limited to a smaller
circle of like-minded individuals which, in turn, creates a real-world
filter bubble that is then turbo-charged by social media into levels
of extremism and paranoia.</p>
<p>I made the difficult choice to abandon the comforts of the megalopolis
in pursuit of a more humane—a communitarian—way of living. Here in
the mountains I greet and am greeted by virtually everybody. For
example, I have a safety vest that I got as a gift from a person who
had noticed me walking the dog during twilight. The man called me to
his garage, where we got to know each other, and gifted me this vest.
I did not even know his name (or he mine) before that encounter, yet
we were aware we were living in this remote place where cooperation is
a prerequisite to harmonious social experiences. In return, I helped
him over the years with lots of chores.</p>
<p>There are many such stories, including those that involve the hut I
built. I will not forget the day when a local from the nearby village
drove by when I was doing a video call, reached to my room’s window,
and told me he had brought that some materials I could use to improve
my building. I never asked for anything and did not know this person
before but, again, we develop mutual trust through our deeds. At the
time, I wrote <a href=\"https://protesilaos.com/commentary/2023-09-19-anonymity-community/\">Anonymity and community</a>,
which is a commentary on the fact that too much privacy is not
conducive to a communitarian life: you need to put yourself out there,
to be available for others, to come to terms with the fact that others
will talk about you, and to recognise that people trust what they can
measure. From that article I posted:</p>
<blockquote>
<p>Eponymity engenders a sense of trust as the person is a known
quantity and their actions are traceable. Each member’s identity is
common knowledge. It thus forms part of the community’s shared
narratives and collective notion of selfhood. Narratives are about
who is who, who does what, what happens where, and so on. They
concern the people in the place, drawing linkages between the two
magnitudes of community and locality.</p>
</blockquote>
<p>This is all against the backdrop of my experience in institutionalised
politics par excellence. When I was working at the European
Parliament, I felt that I was operating at a level of abstraction that
was decoupled from the quotidian life of those people in communities.
Citizens are almost understood as mere numbers, disembodied agents of
aggregate patterns. I would spend my energy analysing what the
European Commission is doing, how the European Central Bank is
conducting its policies, what the various political groups are
concerned with and, generally, how an impersonal apparatus of power,
the legal-institutional order of the European Union and its Member
States, was concerned with its own survival and proliferation.</p>
<p>As I understood the disconnect between the world of politics and that
of everyday affairs, I also realised that the thinking, philosophical
or otherwise, that appealed to me the most was the one that applied to
day-to-day issues. I dismissed grand theories of social reform, from
Platon’s utopia to the fantasy world of Marxists, all the way to the
imaginary collective of the nation as a secular deity that embodies
statehood. In 2019 (five years ago!?) I wrote <a href=\"https://protesilaos.com/politics/2019-06-14-secularised-theology-statecraft/\">Against the secularised
theology of statecraft</a>,
but did not revisit this essay to see how I have evolved intellectually.</p>
<p>The point is that I remain of the view that what we need is to not
neglect personal qualities. Virtue matters today as much as it
mattered in the small colonies and city-states of the ancient Greeks.
To be honest, to conduct yourself with kindness, to have honour in how
you treat others and yourself, to be close to nature such that you
understand your place as part of a cosmos that does not revolve around
you. This is the world where people are not divided along partisan
lines; where matters of identity, of claiming to be someone or doing
something, are secondary as deeds speak for themselves.</p>
<p>There is still a need for politics at a level of authority above that
of the local communities. What matters though, is to remain committed
to a bottom-up understanding of social organisation where the
individual, their family, their neighbour, and clan at-large (“clan”
literally or figuratively) assume responsibility for their actions,
contribute to the preservation of their shared spaces, and act in
solidarity towards those whom they can trust all around them. We do
not need to remake the world for this to happen. What is of import is
that we each do our part and not render ourselves helpless by hoping
that some state actor will perform our duties in our stead.</p>" nil nil "a75cf6f0b39a44f6257a4ab33d5b55cb") (31 (26569 29903 519273 152000) "https://protesilaos.com/poems/2024-11-08-candle-light/" "Candle light (my poem)" nil "Fri, 08 Nov 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>My worldview
man's night vision
lit by a candle
</code></pre></div></div>" nil nil "f2268a02b96b6e0352fe30deee719ea7") (30 (26569 29903 519180 801000) "https://protesilaos.com/politics/2024-11-07-rhetoric-negation-losing-strategy/" "The rhetoric of negation is a losing strategy" nil "Thu, 07 Nov 2024 00:00:00 +0000" "<p>Writing for <em>Jacobin</em> magazine in a piece titled <a href=\"https://jacobin.com/2024/11/its-happening-again-trump-election-win/\">It’s Happening
Again</a>,
Matt Karp comments on Trump’s reelection:</p>
<blockquote>
<p>Between the global hex of inflation, the slow creep of dealignment,
and the Biden fiasco, the prospects for a Republican victory in 2024
were always large. Trump himself seemed to recognize this better
than the pundit class, running a cavalier campaign that junked much
of his rhetorical “populism” for an embrace of billionaire budget
cutters like Elon Musk.</p>
</blockquote>
<p><em>Jacobin</em> has long maintained a clear position about the shortcomings
of the Democrat party, which we can summarise as not appealing to the
average person and working-class people. The Democrats are not
leftists per se, though they do have such forces among their ranks.
Still, their leadership has been committed to the neoliberal
consensus, while their most obvious form of progressivism is perhaps
the least substantive one: the tandem of identity politics and virtue
signalling.</p>
<p>Harris ran on a platform of negation and empty words. Instead of
talking about policies, her campaign was a mixture of tokenistic
inclusiveness (basically, “vote for me because of how I look”) and
name-calling of Trump. This cannot be a winning strategy. Telling
voters how morally dubious the other person is does not convince them
that you are necessarily better, let alone competent. There needs to
be a decisive positive message that engenders hope in the hearts of
people; a narrative that also highlights the skills of the candidate
and not whether they check all the boxes on the political correctness
list.</p>
<p>I watched lots of Harris’ clips and never heard anything remotely
decisive from her. Every piece of footage was of her covering safe
talking points, with no strong commitments, and no vision on a reform
agenda. She presented herself as the bland, pro-establishment, Biden
2.0 candidate.</p>
<p>Trump has obvious authoritarian traits, which nobody should dismiss as
a mere expression of his flamboyant persona, though he does get one
thing right: he speaks to the average person and has a no-nonsense
attitude that engenders trust. It is not about the content of his
speech, but the manner in which he is communicating.</p>
<p>The class dealignment mentioned in Matt Karp’s article is no mere
coincidence. This election, recent history, as well as what was
evident in the 20th century, tell us that the far-right can and does
appeal to the working class. This is because of how clear and
relatable its messaging is compared to the typically smug
intellectualism we find on the political left: it addresses everyday
issues and has a message of hope. Sure, we can discuss the substantive
parts, but the populist characteristics (“populist” in the sense of
“pro-people”, broad-based talk as opposed to “elitist”, technocratic
palaver) are always present.</p>
<p>Countering the juggernaut of fascism is not easy because it involves
self-criticism from everyone among the opposition parties. I am
concerned that the Democrats will not be introspective in this regard
and will put the blame for their own failures on whatever the
equivalent of “class unconscious” is to them.</p>
<p>What is of immediate interest to me is what is happening in Europe.
The rise of the far-right is a secular trend, powered by demographic
and economic pressures. It will not go away anytime soon. Financial
crises do transmogrify into crises of core values and fundamental
rights. We have been on this trajectory post 2008. I am afraid that
left-of-centre parties have lost touch with their traditional
electoral bases and that their contemporary headline issue of positive
discrimination in the name of inclusiveness is not a sustainable
position long-term due to the fact that it is inherently
discriminatory.</p>
<p>The European Union is not a single country, so we will not have the
same dynamics we witness in the United States of America. The
intricate nature of the EU’s legal-institutional arrangements make it
hard—nay, virtually impossible—for any government to unilaterally
upset the status quo (e.g. a “Frexit”, else a French exit from the
euro area, would lead to an immediate economic calamity for France due
to the self-fulfilling cycle of currency devaluation), though we have
to prepare for the inevitable rightward concerted action at the
intergovernmental level.</p>
<p>Given how the new European Commission is so keen on Europeanising
defence policy, we might end up in a scenario where we are called to
defend a Europe of autocracy, not of basic liberties. It thus is of
paramount importance to not be complacent and to have a healthy dose
of self-criticism. Hopefully, the politicians involved will learn from
the failures of the Democrats to not adopt a rhetoric of negation but
to instead formulate a compelling agenda of thoroughgoing reforms that
are of immediate interest to the average person.</p>" nil nil "124be2e85fbd8a731d75dd1aff9326e7") (29 (26569 29903 518861 709000) "https://protesilaos.com/commentary/2024-11-06-purpose-changing-seasons/" "Searching for purpose in the changing seasons" nil "Wed, 06 Nov 2024 00:00:00 +0000" "<p>This is an entry from my journal.</p>
<hr />
<p>It is a cloudy day. The past weekend was rainy. My country went
through several months of draught. Some of my plants—strawberries,
grapevines, and a few trees—did not survive, despite my best
efforts. Conditions are more favourable now. I will continue trying in
full knowledge that my power is limited. The world will continue to go
through its cycles despite my intentions and regardless of my will.
All I can do is conform with what this state of affairs renders
unavoidable: live the moment, the sequence of moments that is
impressed upon my conscience as my life.</p>
<p>It is tempting to ask whether there is any point to all this. Why
should I bother with the plants, when it makes no difference in the
grand scheme of things? More generally, why express any preference
when all that is perishable shall perish and thus whatever I made will
disappear accordingly? I have no way of knowing whether the cosmos has
an end, let alone what the specifics of that may be. Religiosity is,
in a way, human’s attempt at filling in these gaps: to provide an
answer or, at least, a satisfactory narrative about the cause of being
and the reason for being.</p>
<p>I do not need such a justification to carry on living. Grounding my
moment-by-moment experience in some theology adds nothing to what is
already inherent. When I observe the changing colours in those oak
trees, I feel wonder and amazement. It is not because some priest told
me this is the right thing to do. Each time I am in awe, I react
spontaneously. There is a sense of connecting with something greater,
which eludes rationalisation, yet which nevertheless is unmistakably
distinct from other experiences. Any given narrative is bound to
appeal to my reason, in an attempt to convince me of its merits and
truth. But my immediate environment does not have to persuade me in
any way: it just is and I, guided by what is built into me, find
resonance in what is immanent throughout.</p>
<p>I think we are miserable when we cannot appreciate moments unless they
fit into a neat analytical framework. Theology is, in this sense, a
product of rationality like science (yes, I know…), which finds its
terminus in the constraints of human language. One may not capture the
beauty of a sunset or a close-up encounter with eagles through words:
they may only experience it. Yet words is all we have to convey in
written form; useful, for sure, though imperfect. Instead of
recognising that what is written is subject to interpretation and thus
not a priori true, we expend our energy trying to find some deeper
meaning in our works and from it arrive at the grand purpose behind
everything. We thus make things complicated.</p>
<p>The world cannot care about every one of us and treat us all as
special. This sense of self-importance is at odds with the
indifference of the natural magnitudes to the prevailing conditions
that inform one’s subjectivity. When there is no rainfall, it is not
that the gods specifically want us to learn a lesson—not least
because teaching a lesson in a manner that is subject to many
interpretations is ineffective—but that we happen to be present in a
state of affairs that causes rain to happen. This does not mean that
there is no immanent mind in the cosmos, but that it is not
anthropocentic the way we would like it to be.</p>
<p>What I find around me is a living universe. This is a continuum of
life everlasting, with forms of life coming and going. Process,
pattern, ratio, cause are all expressions of the mindful matter we are
made of, immersed in, conditioned by, and in interaction with. I
cannot tell why this is the case and what the goal is. All I know,
based on my intuitions, is that I have a certain presence in this
present. Should the presence change, it would be, at best, be a
different presence in another subjectively understood present.</p>
<p>I freed myself from the angst of justifying my being, of basing it in
some higher authority. I have let go of all the narratives we have
about who we are. I am not anymore special than the birds around me.
If I can continue to survive is because I am in some ways more potent
than them. But this does not make me special: other forces are more
powerful still.</p>
<p>Life forms around me inspire me to not worry about matters that are
none of my business. If there is an almighty God, then it already is
omnipotent so me providing a helping hand makes a mockery of said
omnipotence. If there is an omniscient God, nothing I will ever do
will teach it anything, as that would run counter to the notion of
omniscience. An omnipotent and omniscient God does not need to run any
experiment and does not require any assistance whatsoever. This alone
makes all the religious preoccupations pointless, despite their claims
to the contrary.</p>
<p>What I do is trivial and this is okay. I shall plant more trees not
out of a conviction that the world depends on my actions and I must
thus do the right thing, but only based on the fact that this presence
of mine, in its particular constitution, is disposed to behave in
certain ways. Whether there is a purpose is not for me to decide. I
will continue to act, as I cannot afford otherwise, and I will
continue to age in the process.</p>
<p>These changing seasons, the inevitability of it all, do not disempower
me. No! They have liberated me from the aspiration to live in a
perfectly comfortable world where every question has its complete
answer. Instead, I tolerate discomfort and uncertainty. When I
experience a certain moment, I experience it for what it is and not
based on whether I will be around again to live it one more time.</p>
<p>In the here-and-now of my presence, I will continue to do what I can.
It is neither good nor bad. It simply is. Matters of propriety are
relevant for our own affairs as people and how we perceive of our
relationship to the rest of the planet, though those too are
significant in a limited sense. The world still does not depend on
them.</p>
<p>To live simply. How difficult can this be?</p>" nil nil "c5475e7187a2bdfc98bcfbdaa3d55594") (28 (26569 29903 517583 10000) "https://protesilaos.com/interpretations/2024-11-04-thanasis-papakonstantinou-talk-about-you/" "Interpretation of =?utf-8?Q?=E2=80=9CI?= talk about =?utf-8?Q?you=E2=80=9D?= by Thanasis Papakonstantinou" nil "Mon, 04 Nov 2024 00:00:00 +0000" "<p>In this entry, I translate and then comment on a wonderful Greek song
produced by Thanasis Papakonstantinou. The original performance is by
Melina Kana: <a href=\"https://www.youtube.com/watch?v=6Mx3siDKz-I\">https://www.youtube.com/watch?v=6Mx3siDKz-I</a>. Though for
the love of all that is musical, listen from start to end to this
sensational live performance with Matoula Zamani:
<a href=\"https://www.youtube.com/watch?v=qHLqVSk5tzk\">https://www.youtube.com/watch?v=qHLqVSk5tzk</a>.</p>
<p>Below is the original version, followed by my faithful translation,
and subsequent commentary.</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Μιλώ για σένα
Εμρηνεία:  Μελίνα Κανά
Στίχοι:    Θανάσης Παπακωνσταντίνου
Μουσική:   Θανάσης Παπακωνσταντίνου
Μιλώ με τα ψηλά τ'απάτητα βουνά
και τους μιλώ για σένα
πως έχεις ομορφιά και φρύδια τοξωτά
σαν πέτρινα γεφύρια
Και μ'απάντησαν:
Τα γεφύρια χορταριάζουν
Άμοιρη ψυχή μην ξεγελαστείς
Μιλώ με τ'ουρανού τα μαύρα σύννεφα
και τους μιλώ για σένα
πως όταν περπατάς, γλυκά όπου πατάς
η στέρφα γη ανθίζει
Και μ'απάντησαν:
Η γη ανθίζει εκεί που θέλει
Άμοιρη ψυχή μην ξεγελαστείς
Μιλώ με τις πηγές που ζούνε μοναχές
και τους μιλώ για σένα
πως όταν με κοιτάς, σαν λες πως μ'αγαπάς
αγγέλοι φτερουγίζουν
Και μ'απάντησαν:
Είναι χάρτινοι οι αγγέλοι
Άμοιρη ψυχή μην ξεγελαστείς
</code></pre></div></div>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>I talk about you
Singer:  Melina Kana
Lyrics:  Thanasis Papakonstantinou
Music:   Thanasis Papakonstantinou
I talk with the tall untrodden mountains
and I tell them about you
that you have beauty and arched eyebrows
like stone bridges
And they replied to me:
Bridges become grassy
Hapless soul do not be deceived
I talk with the sky's black clouds
and I tell them about you
that when you walk, sweetly where you step
the arid land blossoms
And they replied to me:
The land blossoms where it wants
Hapless soul do not be deceived
I talk with the springs that live alone
and I tell them about you
that when you stare at me, while saying you love me
angels flutter their wings
And they replied to me:
The angels are made out of paper
Hapless soul do not be deceived
</code></pre></div></div>
<p>What these natural magnitudes are warning the poetic “I” about is to
not put anyone on a pedestal. It is easy to be thoroughly impressed by
someone, especially when you do not know them well. In your
imagination you are filling in the blanks: they simply are dreamy;
faultless even. What life teaches us though, often the hard way, is
that people are imperfect. We cannot expect anyone to live up to a
godly standard. Doing so sets us up for disappointment and suffering.</p>
<p>Imperfection is neither bad nor undesirable. It is another way of
acknowledging that an individual excels in some areas over others.
This is how we get someone who is at once an outstanding musician and
incompetent accountant. Nature has made it such that we are diverse.
All forms are subject to differentiation, with no two being identical.
We find our role in society, through the division of labour, and make
strong bonds with those we resonate more with. We are picky because we
are thus disposed.</p>
<p>Expecting someone to be immaculate means to deny them the chance to
express their individuality, with all its peculiarities. It is to
assume that they are not a person with strengths and weaknesses; with
a talent for some things but not all of them. It also is a
misunderstanding of love as a purely blissful experience. The world is
one of admixture, where there is no pure instantiation of the ideals
we infer out of the patterns we discern, such as beauty, harmony, love,
and so on.</p>
<p>What we experience is an amalgamation of diverse phenomena, such as
instances of joy followed by times of grief. Life is about the
concatenation of those moments and their distillation into a nuanced
impression of what has transpired. It is balanced, once considered
holistically.</p>
<p>It is against this backdrop that I find unconvincing any precept that
applies a godly criterion to the person. When Lao Zi tells us how
“sages” should behave, or when the New Testament expects us to follow
the example of Jesus, ostensibly the absolute God incarnate, we are
presented with a moral code that we can never fully apply day-by-day
while being human. We might be inspired to act in certain ways, but we
cannot be either the personification of Dao or the almighty God.</p>
<p>To be human is to be imperfect. Rather than feel guilty about this
natural constant, we may find solace in the application of principles
that are consistent with our actuality. With common sense and
practical reasonableness, we can be conscious of our limitations,
moderate in our actions, excited about our love affairs, intolerant of
tyrants, and mindful of the fleeting reality of all we cherish.</p>" nil nil "2316efcc246f7742848adf7e585446fa") (27 (26569 29903 517247 470000) "https://protesilaos.com/politics/2024-11-02-live-excerpt-imperialism-free-software-marx/" "Live excerpt: comments on imperialism, AI, Linux VS Russia, Marxists, etc." nil "Sat, 02 Nov 2024 00:00:00 +0000" "<p>These are the political comments I made in my recent “Ask me anything”
live stream. The complete recording is here:
<a href=\"https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/\">https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/</a>.</p>" nil nil "7f2a24471cf6188e0821d7b4974c90a9") (26 (26569 29903 517156 378000) "https://protesilaos.com/commentary/2024-11-02-live-excerpt-dogs-responsibility/" "Live excerpt: comments on dogs and responsibility" nil "Sat, 02 Nov 2024 00:00:00 +0000" "<p>These are the dog-related comments I made in my recent “Ask me anything”
live stream. The complete recording is here:
<a href=\"https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/\">https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/</a>.</p>" nil nil "2f54b68e4c35ee4d65ff23916b8f917d") (25 (26569 29903 517049 749000) "https://protesilaos.com/commentary/2024-11-02-live-excerpt-christian-bible-community-spirituality/" "Live excerpt: comments on the Christian Bible, community, nature, spirituality" nil "Sat, 02 Nov 2024 00:00:00 +0000" "<p>These are the theological comments I made in my recent “Ask me anything”
live stream. The complete recording is here:
<a href=\"https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/\">https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/</a>.</p>" nil nil "e3028f800c9651b2c2a94fc6c54193d8") (24 (26569 29903 515986 52000) "https://protesilaos.com/codelog/2024-10-29-live-stream-emacs-or-anything/" "=?utf-8?Q?=E2=80=98Ask?= me =?utf-8?Q?anything=E2=80=99?= live stream on 2024-10-31 at 14:00 Europe/Athens about Emacs or life in general" nil "Tue, 29 Oct 2024 00:00:00 +0000" "<p>I did a live stream where I answered all questions I got about Emacs,
free software, politics, philosophy, my dating life, and more. I had a
good time and will go it again sometime.</p>
<p>Below is the old description.</p>
<hr />
<p>I will do a live stream this Thursday. The idea is to answer any
question from those who join the stream. The topics can be about
anything, from Emacs to philosophy, to life in general.</p>
<p>If there are no questions, then I will do some maintenance of my Emacs
packages (not sure which ones, but there is always something).</p>
<p>Depending on how things go, the event will be around two hours long. I
am happy to run it for longer (four hours maximum because then the sun
sets and I have to switch off the computer).</p>
<p>The event will be recorded. No worries if you cannot make it.</p>" nil nil "33f79efa09ea939763ec812363f91fb0") (23 (26569 29903 515842 695000) "https://protesilaos.com/codelog/2024-10-27-modus-themes-4.6.0/" "Emacs: modus-themes version 4.6.0" nil "Sun, 27 Oct 2024 00:00:00 +0000" "<p>I just published the latest stable release of <a href=\"https://protesilaos.com/emacs/modus-themes\">the Modus
themes</a>.  The change log
entry is reproduced further below.  For any questions, feel welcome to
<a href=\"https://protesilaos.com/contact/\">contact me</a>.</p>
<p>I will soon install the changes in emacs.git so please wait a little
longer for the updates to trickle down to you.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">modus-themes</code> (also built into Emacs 28+)</li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/modus-themes\">https://protesilaos.com/emacs/modus-themes</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/modus-themes-changelog\">https://protesilaos.com/emacs/modus-themes-changelog</a></li>
<li>Colour palette: <a href=\"https://protesilaos.com/emacs/modus-themes-colors\">https://protesilaos.com/emacs/modus-themes-colors</a></li>
<li>Sample pictures: <a href=\"https://protesilaos.com/emacs/modus-themes-pictures\">https://protesilaos.com/emacs/modus-themes-pictures</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/modus-themes\">https://github.com/protesilaos/modus-themes</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/modus-themes\">https://gitlab.com/protesilaos/modus-themes</a></li>
</ul>
</li>
<li>Backronym: My Old Display Unexpectedly Sharpened … themes.</li>
</ul>
<hr />
<h2>4.6.0 on 2024-10-27</h2>
<p>This is a small release that makes minor refinements to an already
stable base.</p>
<h3>Command to rotate between selected Modus themes</h3>
<p>The command <code class=\"language-plaintext highlighter-rouge\">modus-themes-rotate</code> switches from one theme to the next
in the list defined in the user option <code class=\"language-plaintext highlighter-rouge\">modus-themes-to-rotate</code>. The
default value of the user option covers all the Modus themes, though
users may prefer to set it to a small subset thereof.</p>
<p>Rotation works in such a way that (i) if the theme-to-be-loaded is
already the current one, the next in line is loaded instead, and (ii)
the next candidate is always to the right of the currently loaded
theme.</p>
<p>The rotation is done from left to right. When at the end of the list,
“right” points to the beginning.</p>
<p>The command <code class=\"language-plaintext highlighter-rouge\">modus-themes-rotate</code> complements the existing commands
<code class=\"language-plaintext highlighter-rouge\">modus-themes-toggle</code> (which reads the user option <code class=\"language-plaintext highlighter-rouge\">modus-themes-to-toggle</code>
to switch between two themes) and <code class=\"language-plaintext highlighter-rouge\">modus-themes-select</code> to select one
among all the Modus themes using minibuffer completion.</p>
<h3>More accurate faces for Org agenda dates</h3>
<p>We now adopt a more semantically consistent approach to the use of
font weights and colour intensity when styling all the permutations of
scheduled date and deadline faces. Pressing tasks stand out more,
while those that do not require immediate attention are rendered in a
more subtle style.</p>
<p>Thanks to Adam Porter (aka GitHub alphapapa) for suggesting this
revision and discussing the technicalities with me. This was done in
issue 102: <a href=\"https://github.com/protesilaos/modus-themes/issues/102\">https://github.com/protesilaos/modus-themes/issues/102</a>.</p>
<h3>A slightly revised <code class=\"language-plaintext highlighter-rouge\">red-cooler</code> palette entry</h3>
<p>The value of this named colour now has a lower contribution from the
blue channel of light, meaning that it looks less pink and more rosy
red. The change is small, though it contributes to a more harmonious
distribution of colour in certain major modes that have preprocessor
constructs (e.g. for the C language).</p>
<p><code class=\"language-plaintext highlighter-rouge\">red-cooler</code> is also used in some contexts in Org and Org agenda
buffers.</p>
<h3>Completion popups are monospaced if <code class=\"language-plaintext highlighter-rouge\">modus-themes-mixed-fonts</code> is non-nil</h3>
<p>The user option <code class=\"language-plaintext highlighter-rouge\">modus-themes-mixed-fonts</code> ensures that
spacing-sensitive constructs are always rendered in a monospaced font
(technically, they inherit the <code class=\"language-plaintext highlighter-rouge\">fixed-pitch</code> face). This is especially
useful when enabling <code class=\"language-plaintext highlighter-rouge\">variable-pitch-mode</code> in, say, an Org buffer that
has tables and code blocks.</p>
<p>The popup produced by the <code class=\"language-plaintext highlighter-rouge\">corfu</code> and <code class=\"language-plaintext highlighter-rouge\">company</code> packages will also be
rendered in a monospaced font if the necessary conditions are met,
ensuring proper alignment of all the elements.</p>
<h3>Directory icon colours are in line with each theme’s palette</h3>
<p>The directory icon presented by the <code class=\"language-plaintext highlighter-rouge\">all-the-icons</code> and <code class=\"language-plaintext highlighter-rouge\">nerd-icons</code>
packages is now rendered in the style of a semantic palette mapping
from the active theme, instead of using a hardcoded faint cyan colour.
This is to ensure that styles are consistent and that users with
deuteranopia or tritanopia get the desired colours while using the
relevant Modus themes.</p>
<p>For those who define palette overrides to refashion the themes, the
mapping is called <code class=\"language-plaintext highlighter-rouge\">accent-0</code>: it is used in places where one or more
colours are needed for variation, such as what <code class=\"language-plaintext highlighter-rouge\">orderless</code> does in the
minibuffer or <code class=\"language-plaintext highlighter-rouge\">magit</code> in its status buffer.</p>
<h3>Refined support for <code class=\"language-plaintext highlighter-rouge\">embark</code> and <code class=\"language-plaintext highlighter-rouge\">forge</code> packages</h3>
<p>We now cover more of their faces, have updated the relevant symbols of
those faces, and have made stylistic tweaks in the interest of
theme-wide consistency (i.e. the kind of quality you only appreciate
over time).</p>
<h3>Support for the built-in <code class=\"language-plaintext highlighter-rouge\">hexl-mode</code></h3>
<p>It was using some background colour values that were somewhat hard to
read. Those are replaced with appropriate foreground colours.</p>
<h3>Documentation on how to support some packages</h3>
<p>These are:</p>
<ul>
<li><code class=\"language-plaintext highlighter-rouge\">combobulate</code>. Thanks to Damien Cassou in issue 108: <a href=\"https://github.com/protesilaos/modus-themes/issues/108\">https://github.com/protesilaos/modus-themes/issues/108</a>.</li>
<li><code class=\"language-plaintext highlighter-rouge\">engrave-faces</code>.</li>
<li><code class=\"language-plaintext highlighter-rouge\">howm</code>. Thanks to Jabir Ali Ouassou for the discussion in issue 117: <a href=\"https://github.com/protesilaos/modus-themes/issues/117\">https://github.com/protesilaos/modus-themes/issues/117</a>.</li>
<li><code class=\"language-plaintext highlighter-rouge\">meow</code>. Thanks to ZharMeny in issue 116: <a href=\"https://github.com/protesilaos/modus-themes/issues/116\">https://github.com/protesilaos/modus-themes/issues/116</a>.</li>
</ul>
<p>Those are not covered by the themes for a variety of reasons, but that
may change in the future.</p>
<h3>Updated a colour value about the <code class=\"language-plaintext highlighter-rouge\">solaire</code> package</h3>
<p>This is another package whose support we only document. The manual was
referring to a colour that has long been removed from the themes.</p>
<p>Thanks to Edgar Vincent for bringing this matter to my attention. This
was done on the GitLab mirror, issue 316:
<a href=\"https://gitlab.com/protesilaos/modus-themes/-/issues/316\">https://gitlab.com/protesilaos/modus-themes/-/issues/316</a>.</p>
<h3>Removed some needless <code class=\"language-plaintext highlighter-rouge\">:set</code> values from <code class=\"language-plaintext highlighter-rouge\">defcustom</code> forms</h3>
<p>We did this after reviewing the state of the code following a
discussion with shipmints and Adam Porter about the behaviour of the
<code class=\"language-plaintext highlighter-rouge\">setopt</code> macro when setting user options from the Modus themes. There
should be no visible change for users, though the edit is still useful
for the maintainability of the code. This was done in issue 118:
<a href=\"https://github.com/protesilaos/modus-themes/issues/118\">https://github.com/protesilaos/modus-themes/issues/118</a>.</p>
<h3>Switched to <code class=\"language-plaintext highlighter-rouge\">if-let*</code> and its variants everywhere</h3>
<p>Emacs 31 deprecates the forms of these macros that lack the asterisk.
We can comply right away since the functionality is the same.</p>" nil nil "e1634f44ca8292ca22bfe37af4309206") (22 (26569 29903 515273 616000) "https://protesilaos.com/commentary/2024-10-26-thoughts-personality-test/" "Thoughts on a personality test I did" nil "Sat, 26 Oct 2024 00:00:00 +0000" "<p>I recently took a personality test. It applies the “Big Five”
methodology. This is a premium service, but I will not provide details
in the interest of privacy. The results are broadly in line with what
I already knew, namely:</p>
<ol>
<li><strong>Predominantly rational:</strong> exceptionally low agreeableness, which
is the trait that covers aspects of compassion and politeness.</li>
<li><strong>Moderately introverted:</strong> slightly below average extraversion,
which is the trait that covers aspects of enthusiasm and
assertiveness.</li>
<li><strong>Industrious but not perfectionist:</strong> high conscientiousness,
which is the trait that covers aspects of industriousness and
orderliness.</li>
<li><strong>Open-minded but not too unconventional:</strong> high openness, which is
the trait that covers aspects of intellect and aesthetics.</li>
<li><strong>Emotionally stable and predictable:</strong> exceptionally low
neuroticism, which is the trait that covers aspects of withdrawal
and volatility.</li>
</ol>
<p>Still, there is plenty of room for interpretation and scepticism.</p>
<h2>The character of a working-line dog breed</h2>
<p>One score that is surprising if left unexplained is that of
agreeableness. This is the trait that encompasses characteristics of
compassion and politeness. While I am on the lower end on both, I
think the test does not—and perhaps cannot—capture nuanced points.
My disposition is akin to that of a guard dog: I am hostile to
offenders and will stand my ground, cautious in the face of radical
uncertainty, not too quick to make the first move, and unequivocally
loyal towards those I care about. Like a dog, I am not particularly
shy, though I do know when to remain silent and when to speak my mind.</p>
<p>As with all of these traits, they have to be understood in relation to
each other. For instance, my low agreeableness must be framed in light
of my moderate extraversion. Because I am perfectly content with being
alone, I meed more time to connect with people and thus appear more
distant/cold to those who do not know me. Though I do eventually
connect with them deeply. I am not stern, as I enjoy joking and making
others laugh (I am open with those I know, as you would expect from
the aforementioned).</p>
<p>My conscientiousness is a mixture of super high industriousness and
very low orderliness. This means that I am not judgemental despite my
work ethic. I tolerate practically everything and do not get upset if
things are not the way I want. Adding the super low neuroticism into
the mix (thick-skinned and emotionally predictable), I am as easygoing
as it gets which, I think, does not make me “cold” but rather “aloof”.</p>
<h2>Enthusiastic only for what I care about</h2>
<p>The extraversion trait is a curious case. My enthusiasm score is on
the lower end which, again, is like how a dog takes time to warm up to
strangers. But my assertiveness is high. I am not especially
argumentative in one-to-one exchanges because of my dubitative and
inquisitive philosophical outlook. I am content to change my mind when
faced with cogent counter arguments, though I will not do it just to
please someone (also reflected as low agreeableness). Perhaps this is
why the assertiveness is high: one will have to make a compelling case
to persuade me.</p>
<p>Enthusiasm is a nuanced concept. I consider myself highly enthusiastic
about the things I care about. For example, I have been publishing
consistently on my website since 2011—I enjoy it! Though I do indeed
have a hard time getting excited about something I find dull or which
is forced upon me. This is why I was not good at school: I was
daydreaming about football and other adventures, which I did excel at,
but could not be bothered to parrot whatever boring nonsense they gave
us for homework. When I got into college, which I did on my own
accord, working and paying for it, I became passionate about my
studies and got excellent grades. This is a clear pattern of being
eclectic with my enthusiasm: it is not for every thing/one, but once
it is there, it is unflinching.</p>
<p>In light of my high assertiveness and low orderliness (more on that
below), this selective enthusiasm helps explain why I do not care
about a glittering career, a person’s social standing, or authority in
general. I respect those who earn it with their deeds and value honour
in a person above everything else.</p>
<p>Since I mentioned school, I am reminded of an instance that shows my
assertive side which, combined with low agreeableness, makes me
independent albeit not contrarian. In my mother tongue, modern Greek,
it is common to use archaic forms of words. There is no ambiguity:
everyone understands exactly what you are saying (an example for Greek
speakers: <em>η πόλη, της πόλεως</em> instead of <em>η πόλη, της πόλης</em>). I once
used such a form without thinking about it in the literature class,
which the ever-pedantic teacher marked as a mistake. I defended my
choice, explaining that I was justified because we employ those forms
in the vernacular, providing examples in the process. The teacher
dismissed my argument on the parochial premise that those are still
not “modern Greek”. They then appealed to their authority and chose
not to revise my score. I was not convinced…</p>
<h2>When you mix an ant with a grasshopper</h2>
<p>The conscientiousness part is as expected, though I think the low
orderliness score is misleading if seen in isolation. I am not a messy
person in any sense: not physically, nor in terms of my work. I
actually am a minimalist and prefer to remove clutter where possible.
I am generally careful and consistent in my methods. Though I do not
worry if things are not the way I want them and am not obsessive about
minimalism: a messy desk does not bother me. I would thus describe
myself as “orderly in general” but also “nonchalant”. These sound
mutually exclusive, though they are not: I take good care about the
things I control but do not get upset if the prevailing conditions do
not go my way or, generally, if I have to adapt to evolving states of
affairs. Perhaps, then, a better description is “stable basis, varied
ways”. This is consistent with my exceptionally low neuroticism, i.e.
I am not prone to negative emotions.</p>
<p>I think the high work ethic is perhaps the single most noticeable
feature I have. Just do a cursory search on this website to notice how
frequently and how much I publish, for example. And then consider that
this is something I do on the side, usually after a long day of
work… However, I am not a workaholic. Greeks never miss an
opportunity to enjoy their <em>tavli</em> with <em>café frappé</em> in hand, after
all. 🙃 Well, not exactly what I do though I am taking breaks and have
plenty of time for relaxation.</p>
<p>Continuing with the theme of being easygoing, I do not expect anyone
to keep apace with me: I neither judge them, nor demand from them to
raise their standard. I am industrious simply because it is fun for me
(there is practical value as well, but I would not do it if it was not
exciting). Again, this nuanced point about enthusiasm… I am highly
competitive with myself: I try to push the boundaries and strongly
prefer action to the alternative of “just chill”. I would rather go
for a long walk than watch a movie, for example, not out of some
ideological opposition to cinema but simply because it does not appeal
to me. We return to the analogy of the working-line dog breed once
more: a police canine will become depressed if it is forced into a
sedentary lifestyle, but let it in on the action and it thrives.</p>
<h2>Ideas and actions are good</h2>
<p>My openness score shows that I am a person of ideas but I am not going
too far with them. This is evident in my intellectual side which,
nonetheless, is not too abstract. I consider my philosophy largely
practical and I try to explain concepts in a way that is relatable. I
also program for leisure (lots of packages for Emacs, for instance),
which is a continuation of this “yes to ideas; yes to applications”
theme. I still am not the true engineer type, as I find fulfilment in
the openendedness of philosophical contemplation.</p>
<p>The trait of openness covers the intellect and aesthetics. The former
is not to be confused with intelligence: it is about whether a person
is drawn to concepts rather than things. My intellect score is very
high but my aesthetics are average. This may explain why I am
conventional in many ways. For example, my clothes tend to be simple
(those which are fancier are gifts), I have never had a piercing, do
not have tattoos, never dyed my hair, did not try smoking, and,
generally did not do anything that looks unconventional or remotely
edgy. (I am totally okay with all of these, by the way, but do not see
any reason to try them myself—again, the easygoing, non-judgemental
part).</p>
<p>My average score on aesthetics does seem odd though if seen in
isolation. I think of myself as sensitive to art and natural beauty in
general. I even write poetry, though I admit it is not of the overtly
emotional sort. What is clear, however, is that I do not feel the need
to show an artistic flair, especially not to draw attention to myself
through it (which makes sense once we factor in the below average
extraversion). Though I agree that it cannot be too high because if I
was given the choice to, say, play the guitar or participate in a
football match I would pick the latter 100% of the time. Same for
everything I like, actually, hence why I never tried to learn music,
do painting, become an actor, join a dancing club…</p>
<p>Perhaps my score on aesthetics would be much higher if they were
asking about natural scenes: my heart skips a beat when I catch the
sunset, encounter an eagle, and the like. To me, these belong to the
category of aesthetic experiences (with awe being spiritual), although
they are not “art”. Limiting aesthetics to what humans produce is
bound to completely miss the kind of subtlety I care about, while it
will overestimate my dislike for kitsch.</p>
<h2>What you see is what you get</h2>
<p>Neuroticism as a concept was the one I was not sure about. It sounded
vague to me. This is the way a person reacts to negative emotions
and/or stressful situations. It thus covers aspects of withdrawal and
volatility. I am exceptionally low on these metrics, meaning that I do
not withdraw into my own shell and I am emotionally stable (not angry,
upset, agitated). Additionally, I am patient, do not hold grudges,
take no offence, and do not worry even about things that can be
dangerous.</p>
<p>A few days ago, I was in a video call when a viper moved along the
floor in my room (there are both venomous and non-venomous snakes
around my hut). I learnt after the fact that there was a small opening
below my door, which must be where the snake got in. Atlas, one of my
two dogs, immediately attacked and ultimately neutralised the snake. I
got up right away and calmly contained the serpent with a piece of
cloth while it was still moving. I took it outside and then I went
back to my call as if nothing had happened.</p>
<p>This has been the norm in my activities (first time I got up so close
to a venomous snake though). I have faced difficult situations but
coped with them while keeping my cool. A common case is with
emergencies, like when I saved a neighbour’s dog from poisoning by
first making it vomit and then administering a vaccine I had in store
for my own dog. I recently did something similar when I patched the
bleeding ear of a stray dog, while others were crying about whether it
would survive the night (it is doing well). I cannot tell how much of
this is down to personality, experience, or philosophical training,
though I remember having this trait to some degree from a young age.</p>
<p>I did, nonetheless, go through a period of depression during the
previous decade. This is something I have thought about before: why
would it happen to me, given my stable temperament? My best guess is
that I went through that phase of doubt, disappointment,
powerlessness, and self-loathing because I was in an environment that
ran counter to my nature, combined with my extremely precarious
financial situation at the time that was bringing into question my
basic sense of safety. Basically, I was a wild animal that had to act
like a house cat, desperate for food but with no outlet for its
hunting drive. This was all gone once I moved to the mountains. I
rediscovered myself and even gained insights into aspects of selfhood
that were once obscure to me.</p>
<h2>Informative but easy to mislead</h2>
<p>I expect every self-respecting scientist to admit that these tests
are, at best, a thumbnail sketch of what a person is. They do not
capture the finer points and leave plenty of room for interpretation.
If I were to proclaim “hay, I rank low in terms of compassion” that
would make me sound like some kind of a robot when in reality I am
friendly. Similarly, if I remark that I am super industrious this can
give a sense of being toxic with how I expect others to behave when in
actuality I never think in terms of one-size-fits-all and do not feel
the need to prove anything to anyone. The way I see it, I am playing
around out of sheer enthusiasm.</p>
<p>Furthermore, I am concerned that a report like this may make someone
think of their self as not malleable. Especially if they are
introduced to it early in life. I would rather have people develop
organically than think of themselves in terms of stereotypes like “I
am an introvert” and try to explain everything in those terms. Even
the most accurate findings will give us about a statistical figment
that is decoupled from the particularities of a person’s experience.
Every data point needs to be contextualised to better explain the
“why” or “how” of phenomena, as well as to hint at the known unknowns
involved.</p>
<p>There is a more abstract hesitation I have with this test, which is
that we cannot conduct experiments about humans in vitro. The people
we study are always culturally informed and determined in vivo. I
cannot know, for example, whether my unruliness is due to my peculiar
nature or the fact that Greeks have a long history of being suspicious
of authority (I would argue it goes back to ancient Greece, before the
advent of democracy, but I will not digress)? How much, then, is my
nature’s contribution despite the environing cultural milieu and how
much is because of it? I cannot run the tests again with me outside of
the specifics of my case, so there is no point in arguing the
counterfactual. All I can note is that I have my reservations. Adding
factors such as upbringing, education, and social expectations will
only further reinforce my scepticism.</p>
<p>Overall, I am happy to have taken this test. It did not tell me
something new about myself, although it gave me new concepts to think
about.</p>" nil nil "8ca0fe2c52ab67035cc8b52384f92270") (21 (26569 29903 514385 711000) "https://protesilaos.com/politics/2024-10-24-no-future-hopeless-europeans/" "No future for hopeless Europeans" nil "Thu, 24 Oct 2024 00:00:00 +0000" "<p>Writing for <em>Social Europe</em> in an article titled <a href=\"https://www.socialeurope.eu/no-europe-for-young-men\">No Europe for young
men</a>, professor
Jan Zielonka comments on the shortcomings of democratic regimes in
planning for the interests of the youth. Referring to policies that
benefit future generations, the professor remarks:</p>
<blockquote>
<p>Unfortunately, most of these promises and pledges have been broken
repeatedly, even by seemingly responsible democratic leaders. This
is because politicians cannot ignore the electoral arithmetic. When
faced with difficult choices, those who have votes prevail. This is
how democracy works; it gives the majority of the day what they want
– and those are likely not-so-young people.</p>
</blockquote>
<p>The salient point is that in an increasingly ageing population, there
are fewer young people to stand up for their own interests. Combined
with the workings of democratic decision-making, the argument goes,
young people are basically marginalised and end up being exploited by
the older folk.</p>
<p>I think such framing is problematic because it assumes that these
vaunted new generations are somehow not related to the older ones. To
me, it is a bizarre premise. I have never met a parent or grandparent
who votes to ruin the future of their descendants. Those seemingly
age-based interests must be more nuanced than what they seem.</p>
<p>Furthermore, we have to entertain the inverse scenario of a
predominantly young population. Would those people not be interested
in the wellness of their parents and grandparents? Again, I find it
hard to believe they would not.</p>
<p>The notion that democracy is ill suited to cope with challenges that
require longer-term commitments is also suspect. A totalitarian system
would still have to consider the costs and benefits of every decision
on the time axis because failure could spell the end of its reign.
There are economic crises, natural disasters, and foreign countries
eager to exploit any obvious weakness in an attempt to create a fait
accompli on the international stage. Without tending to immediate
issues, the authorities will no longer enjoy the support or
acquiescence of the people and will ultimately be ousted. Hence the
age-old mode of governance for “bread and circuses”, which is
necessarily done for those present.</p>
<p>Intergenerational justice is a laudable end. Though it is hard to
express in terms of tangible policy proposals and even harder to
assess the effectiveness thereof. How can we know that any given
programme will guarantee a decent life for the people who will be born
in 2050, for example? And what does a “decent life” even entail? Most
Europeans nowadays would find it extremely difficult to live without a
smartphone and the occasional flight/vacation abroad. But are those
necessary components of a decent life? I doubt it.</p>
<p>The more I think about this, I can only conclude that politicians who
bring up the ageist problématique are either naive or are actively
distracting people from more fundamental issues that plague our
countries. Let us talk about how democracy is rapidly degenerating
into plutocracy. When environmental protection laws are weakened, for
example, we have to wonder how much of that is due to an ageing
population and how much is because of vested corporate interests
lobbying policy-makers to do their bidding. In this light, media
ownership has to be brought under scrutiny, both the traditional
outlets (TV, newspapers, radio, …) and social media. When a handful
of economic elites or deranged billionaires exerts control over most
communication channels, we cannot pretend that citizens are voting
freely and that their age group is the predominant factor in their
putative short-term thinking.</p>
<p>Those granted, I know from personal experience that there is a path to
sustainability and it can happen now without revolutionary reforms. It
requires personal courage to live with less and to endure some
discomfort. If the people of today and tomorrow care so much about
their future, then maybe they should stop waiting for a magical grand
bargain to come out of government bureaus or be formulated in the
ivory towers of academia. Instead, individuals or small groups of
like-minded people can abandon the megacities, move to the
countryside, and work with what is available there, pooling resources
and expertise as the needs arise.</p>
<p>This is not a turn to the Stone Age, as one can still benefit from
technological advances, such as the Internet for remote work. It is a
new power impulse of decisiveness; a turn to a lifestyle of initiative
and localised solidarity. The youth, or anyone else for that matter,
are not hopeless: they have developed tunnel vision and are thus
conditioned to expect everything from their rulers. We can theorise
about the evils of global capitalism, the constraints in the existing
legal-institutional arrangements of the world, or whatnot, but the
gist of the matter is that we can act virtuously despite those
magnitudes.</p>" nil nil "f160890526b22780febc2116f0f244f4") (20 (26569 29903 514069 799000) "https://protesilaos.com/codelog/2024-10-23-emacs-beframe-1-2-0/" "Emacs: beframe version 1.2.0" nil "Wed, 23 Oct 2024 00:00:00 +0000" "<p><code class=\"language-plaintext highlighter-rouge\">beframe</code> enables a frame-oriented Emacs workflow where each frame has
access only to the list of buffers visited therein.  In the interest of
brevity, we call buffers that belong to frames “beframed”.</p>
<ul>
<li>Package name (GNU ELPA): <code class=\"language-plaintext highlighter-rouge\">beframe</code></li>
<li>Official manual: <a href=\"https://protesilaos.com/emacs/beframe\">https://protesilaos.com/emacs/beframe</a></li>
<li>Change log: <a href=\"https://protesilaos.com/emacs/beframe-changelog\">https://protesilaos.com/emacs/beframe-changelog</a></li>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/beframe\">https://github.com/protesilaos/beframe</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/beframe\">https://gitlab.com/protesilaos/beframe</a></li>
</ul>
</li>
<li>Video demo: <a href=\"https://protesilaos.com/codelog/2023-02-28-emacs-beframe-demo/\">https://protesilaos.com/codelog/2023-02-28-emacs-beframe-demo/</a></li>
<li>Backronym: Buffers Encapsulated in Frames Realise Advanced
Management of Emacs.</li>
</ul>
<p>Below are the release notes</p>
<hr />
<h2>Version 1.2.0 on 2024-10-23</h2>
<p>Beframe is in a stable state. This version includes three new commands
as well as quality-of-life improvements.</p>
<h3>Assume or unassume buffers using a regular expression</h3>
<p>There two more commands to assume/unassume buffers from/to the current
frame:</p>
<ul>
<li><code class=\"language-plaintext highlighter-rouge\">beframe-assume-buffers-matching-regexp</code></li>
<li><code class=\"language-plaintext highlighter-rouge\">beframe-unassume-buffers-matching-regexp</code></li>
</ul>
<p>They both work by matching a regular expression against the global
list of buffer names. When called with a prefix argument, the regular
expression is matched against the buffer name or the name of the
buffer’s major mode.</p>
<p>This is a convenient way to, for example, collect all email or IRC
buffers in a single frame and work with them as you will.</p>
<h3>Delete buffers matching a regular expression</h3>
<p>Following the same principle as above, we have the command
<code class=\"language-plaintext highlighter-rouge\">beframe-kill-buffers-matching-regexp</code>. The regular expression is
matched against the buffer name or the name of the major mode when
called with a prefix argument.</p>
<p>Since this is a destructive operation, the command prompts for
confirmation to operate on the buffers it has found. Users who do not
like this check can set the new user option <code class=\"language-plaintext highlighter-rouge\">beframe-kill-buffers-no-confirm</code>
to a non-nil value.</p>
<p>Note that Emacs may still prompt for further confirmation if the given
buffer is unsaved, has a running process, and the like. Also note that
this operation applies to all frames because buffers are shared by the
Emacs session even though Beframe only exposes those that pertain to a
particular frame (when <code class=\"language-plaintext highlighter-rouge\">beframe-mode</code> is enabled).</p>
<h3>Commands that assume/unassume buffers report on their status</h3>
<p>All relevant commands will now log a message about what they did. If,
for example, <code class=\"language-plaintext highlighter-rouge\">beframe-assume-buffers-matching-regexp</code> assumes two new
buffers into the current frame, the message will be something like:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Assumed into current frame 2 buffers: (name-of-buffer-one name-of-buffer-two)
</code></pre></div></div>
<p>Similarly:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Unassumed from current frame 2 buffers: (name-of-buffer-one name-of-buffer-two)
</code></pre></div></div>
<p>If the command does not change the frame’s buffer list, it will report
as much:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Did not modify the frame's buffer list
</code></pre></div></div>
<h3>Several internal refinements</h3>
<ul>
<li>
<p>The way we derive the “global buffers” (buffers that are available
in all frames, per the user option <code class=\"language-plaintext highlighter-rouge\">beframe-global-buffers</code>) is more
efficient. Thanks to Bruno Boal for the contribution in pull request
7: <a href=\"https://github.com/protesilaos/beframe/pull/7\">https://github.com/protesilaos/beframe/pull/7</a>. Bruno has
assigned copyright to the Free Software Foundation.</p>
</li>
<li>
<p>We now have a single function to get a list of buffers, given
certain parameters. Part of this work is by Bruno Boal, from the
aforementioned pull request. The rest is from me, which includes the
addition of the functionality about matching buffers with a regular
expression (as seen in the new commands described herein).</p>
</li>
<li>
<p>Inferring the name of a project among those known to <code class=\"language-plaintext highlighter-rouge\">project.el</code> no
longer fails when the path is abbreviated (like <code class=\"language-plaintext highlighter-rouge\">~/path/to/repo</code>).
Thanks to Fritz Grabo for the contribution and for Bruno Boal for
double-checking it. This was done in pull request 6:
<a href=\"https://github.com/protesilaos/beframe/pull/6\">https://github.com/protesilaos/beframe/pull/6</a>. The change is
small, meaning that Fritz does not need to assign copyright to the
Free Software Foundation.</p>
</li>
<li>
<p>The subroutines to assume/unassume buffers are consolidated into one
function. It not only provides a single point of entry, but also
takes care to carry out its operation only when it will yield a
change to the current frame’s buffer list.</p>
</li>
</ul>" nil nil "7ade9b962dca947d80122f8e1b7aafee") (19 (26569 29903 513259 871000) "https://protesilaos.com/codelog/2024-10-20-emacs-modus-themes-rotate/" "Emacs: the Modus themes have a new =?utf-8?B?4oCYcm90YXRl4oCZ?= command" nil "Sun, 20 Oct 2024 00:00:00 +0000" "<p>I just added a new command to rotate across a list of Modus themes:
<code class=\"language-plaintext highlighter-rouge\">modus-themes-rotate</code>. In interactive use, it uses the value of the
new user option <code class=\"language-plaintext highlighter-rouge\">modus-themes-to-rotate</code>. When called from Lisp, it
accepts any list that consists of Modus themes.</p>
<p>The way I implemented this feature, we get the following behaviour:</p>
<ul>
<li>Check which is the current Modus theme and find its position in the
list of the themes that are in rotation.</li>
<li>Move to the next item on the list, reading from left to right.</li>
<li>If the next item is the current theme, move to the one after.</li>
</ul>
<p>This is a nice little command that complements the existing
<code class=\"language-plaintext highlighter-rouge\">modus-themes-toggle</code> (switch between two themes, per
<code class=\"language-plaintext highlighter-rouge\">modus-themes-to-toggle</code>) and <code class=\"language-plaintext highlighter-rouge\">modus-themes-select</code> (choose a theme
from the entire family using minibuffer completion).</p>
<p>The new functionality will be available to all users as part of Modus
themes <code class=\"language-plaintext highlighter-rouge\">4.6.0</code>. If you do try it before then, let me know if something
is amiss.</p>" nil nil "258eea35f0fae5ba97718947314291a5") (18 (26569 29903 513115 126000) "https://protesilaos.com/codelog/2024-10-19-iosevka-comfy-2-1-0/" "Iosevka Comfy version 2.1.0" nil "Sat, 19 Oct 2024 00:00:00 +0000" "<p><em>Iosevka Comfy</em> is a customised build of the Iosevka typeface, with a
consistent rounded style and overrides for almost all individual
glyphs in both roman (upright) and italic (slanted) variants.  Many
font families are available, covering a broad range of typographic
weights.  The README file in the git repository covers all the
technicalities.</p>
<ul>
<li>Git repositories:
<ul>
<li>GitHub: <a href=\"https://github.com/protesilaos/iosevka-comfy\">https://github.com/protesilaos/iosevka-comfy</a></li>
<li>GitLab: <a href=\"https://gitlab.com/protesilaos/iosevka-comfy\">https://gitlab.com/protesilaos/iosevka-comfy</a></li>
</ul>
</li>
<li>Backronym: Iosevka … Could Only Modify a Font, Yes.</li>
</ul>
<p>Below are the release notes.</p>
<hr />
<h2>Update to Iosevka Comfy version 2.1.0 (on top of Iosevka 31.9.1)</h2>
<p>This is a small release that fixes a detail in the <code class=\"language-plaintext highlighter-rouge\">m</code> character of
all the “motion” variants. It now has a tail at the bottom right
corner in addition to the top left serif. This is the same design used
wherever relevant, such as in the <code class=\"language-plaintext highlighter-rouge\">n</code> and <code class=\"language-plaintext highlighter-rouge\">u</code> glyphs.</p>
<p>Other than that, the rebuild is an attempt to fix the broken files
that appear on NixOS, as reported by Damien Cassou in issue 17:
<a href=\"https://github.com/protesilaos/iosevka-comfy/issues/17\">https://github.com/protesilaos/iosevka-comfy/issues/17</a>. I do not
know if this fixes the problem, but I cannot think of a better
approach. This is not reproducible on my end (Debian stable).</p>
<h2>All the variants</h2>
<p>A quick reminder of all the Iosevka Comfy variants:</p>
<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>| Family                          | Shapes | Spacing | Style      | Ligatures |
|---------------------------------+--------+---------+------------+-----------|
| Iosevka Comfy                   | Sans   | Compact | Monospaced | Yes       |
| Iosevka Comfy Duo               | Sans   | Compact | Duospaced  | Yes       |
| Iosevka Comfy Fixed             | Sans   | Compact | Monospaced | No        |
|---------------------------------+--------+---------+------------+-----------|
| Iosevka Comfy Motion            | Slab   | Compact | Monospaced | Yes       |
| Iosevka Comfy Motion Duo        | Slab   | Compact | Duospaced  | Yes       |
| Iosevka Comfy Motion Fixed      | Slab   | Compact | Monospaced | No        |
|---------------------------------+--------+---------+------------+-----------|
| Iosevka Comfy Wide              | Sans   | Wide    | Monospaced | Yes       |
| Iosevka Comfy Wide Duo          | Sans   | Wide    | Duospaced  | Yes       |
| Iosevka Comfy Wide Fixed        | Sans   | Wide    | Monospaced | No        |
|---------------------------------+--------+---------+------------+-----------|
| Iosevka Comfy Wide Motion       | Slab   | Wide    | Monospaced | Yes       |
| Iosevka Comfy Wide Motion Duo   | Slab   | Wide    | Duospaced  | Yes       |
| Iosevka Comfy Wide Motion Fixed | Slab   | Wide    | Monospaced | No        |
</code></pre></div></div>
<p>Below are the updated screenshots (click to enlarge).</p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy.png\"><img alt=\"iosevka-comfy\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-duo.png\"><img alt=\"iosevka-comfy duo\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-duo.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-fixed.png\"><img alt=\"iosevka-comfy fixed\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-fixed.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-motion.png\"><img alt=\"iosevka-comfy-motion\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-motion.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-motion-duo.png\"><img alt=\"iosevka-comfy-motion-duo\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-motion-duo.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide.png\"><img alt=\"iosevka-comfy-wide\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-duo.png\"><img alt=\"iosevka-comfy-wide duo\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-duo.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-fixed.png\"><img alt=\"iosevka-comfy-wide fixed\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-fixed.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion.png\"><img alt=\"iosevka-comfy-wide-motion\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion-duo.png\"><img alt=\"iosevka-comfy-wide-motion-duo\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion-duo.png\" /></a></p>
<p><a href=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion-fixed.png\"><img alt=\"iosevka-comfy-wide-motion-fixed\" src=\"https://protesilaos.com/assets/images/iosevka-comfy/iosevka-comfy-wide-motion-fixed.png\" /></a></p>" nil nil "d46a160a10b8df38576b651bee555515") (17 (26569 29903 512798 207000) "https://protesilaos.com/poems/2024-10-18-eternity/" "An eternity (my poem)" nil "Fri, 18 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>It has only been an eternity
of waters not flowing
What the will makes aeons undo
I shall no longer compare
golden eagle to grey dove
Let this be my sole expectation
</code></pre></div></div>" nil nil "4a6c70267cd72b7cca5fcc0c63185b92") (16 (26569 29903 512698 378000) "https://protesilaos.com/codelog/2024-10-17-emacs-remap-minibuffer-face/" "Emacs: remap font size in the minibuffer" nil "Thu, 17 Oct 2024 00:00:00 +0000" "<p>Over at the <code class=\"language-plaintext highlighter-rouge\">fontaine</code> repository, <a href=\"https://github.com/protesilaos/fontaine/issues/9\">I was asked by
akartha</a> if we could
have a font preset for the minibuffer that is smaller than the others.
The minibuffer does not have its own face, so we cannot affect it with
Fontaine. We can, however, use the face remapping mechanism to change
the attributes of the <code class=\"language-plaintext highlighter-rouge\">default</code> face locally in the minibuffer. Here
is the code for it.</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">defvar-local</span> <span class=\"nv\">my-minibuffer-font-remap-cookie</span> <span class=\"no\">nil</span>
<span class=\"s\">\"The current face remap of `my-minibuffer-set-font'.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">my-minibuffer-default</span>
<span class=\"o\">'</span><span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:height</span> <span class=\"mf\">0.8</span><span class=\"p\">))</span>
<span class=\"s\">\"Face for the minibuffer and the Completions.\"</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">my-minibuffer-set-font</span> <span class=\"p\">()</span>
<span class=\"p\">(</span><span class=\"nv\">setq-local</span> <span class=\"nv\">my-minibuffer-font-remap-cookie</span>
<span class=\"p\">(</span><span class=\"nv\">face-remap-add-relative</span> <span class=\"ss\">'default</span> <span class=\"ss\">'my-minibuffer-default</span><span class=\"p\">)))</span>
<span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'minibuffer-mode-hook</span> <span class=\"nf\">#'</span><span class=\"nv\">my-minibuffer-set-font</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>[ Yes, I know <code class=\"language-plaintext highlighter-rouge\">setq-local</code> is redundant for a <code class=\"language-plaintext highlighter-rouge\">defvar-local</code>, but I
prefer to be explicit. ]</p>
<p>In this example, the <code class=\"language-plaintext highlighter-rouge\">my-minibuffer-default</code> is set to a height that
is 0.8 times the height of the <code class=\"language-plaintext highlighter-rouge\">default</code> face. As such, if we increase
the height of the latter, the former will adapt gracefully. Only the
<code class=\"language-plaintext highlighter-rouge\">default</code> needs an absolute <code class=\"language-plaintext highlighter-rouge\">:height</code> value.</p>
<p>If you are using the generic completion user interface with the
<code class=\"language-plaintext highlighter-rouge\">*Completions*</code> buffer, then you also need this:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'completion-list-mode-hook</span> <span class=\"nf\">#'</span><span class=\"nv\">my-minibuffer-set-font</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>Of course, we are not limited to changing the font height. Here is how
we can apply some different colours:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nv\">defface</span> <span class=\"nv\">my-minibuffer-default</span>
<span class=\"o\">'</span><span class=\"p\">((((</span><span class=\"nc\">class</span> <span class=\"nv\">color</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">min-colors</span> <span class=\"mi\">88</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">background</span> <span class=\"nv\">dark</span><span class=\"p\">))</span>
<span class=\"ss\">:background</span> <span class=\"s\">\"#181032\"</span> <span class=\"ss\">:foreground</span> <span class=\"s\">\"#a0d0ff\"</span><span class=\"p\">)</span>
<span class=\"p\">(((</span><span class=\"nc\">class</span> <span class=\"nv\">color</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">min-colors</span> <span class=\"mi\">88</span><span class=\"p\">)</span> <span class=\"p\">(</span><span class=\"nv\">background</span> <span class=\"nv\">light</span><span class=\"p\">))</span>
<span class=\"ss\">:background</span> <span class=\"s\">\"#f2ede0\"</span> <span class=\"ss\">:foreground</span> <span class=\"s\">\"#6f2000\"</span><span class=\"p\">)</span>
<span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:height</span> <span class=\"mf\">0.8</span><span class=\"p\">)))</span>
<span class=\"s\">\"Face for the minibuffer and the Completions.\"</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>If you are using any of my <code class=\"language-plaintext highlighter-rouge\">modus-themes</code>, <code class=\"language-plaintext highlighter-rouge\">ef-themes</code>, or
<code class=\"language-plaintext highlighter-rouge\">standard-themes</code>, then you can also benefit from the macro that
exposes the palette of the effective theme. With Modus as an example:</p>
<div class=\"language-elisp highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code><span class=\"p\">(</span><span class=\"nb\">defun</span> <span class=\"nv\">my-modus-themes-custom-faces</span> <span class=\"p\">(</span><span class=\"k\">&rest</span> <span class=\"nv\">_</span><span class=\"p\">)</span>
<span class=\"p\">(</span><span class=\"nv\">modus-themes-with-colors</span>
<span class=\"p\">(</span><span class=\"nv\">custom-set-faces</span>
<span class=\"o\">`</span><span class=\"p\">(</span><span class=\"nv\">my-minibuffer-default</span> <span class=\"p\">((</span><span class=\"no\">t</span> <span class=\"ss\">:background</span> <span class=\"o\">,</span><span class=\"nv\">bg-magenta-nuanced</span> <span class=\"ss\">:foreground</span> <span class=\"o\">,</span><span class=\"nv\">magenta-cooler</span><span class=\"p\">))))))</span>
<span class=\"p\">(</span><span class=\"nv\">add-hook</span> <span class=\"ss\">'enable-theme-functions</span> <span class=\"nf\">#'</span><span class=\"nv\">my-modus-themes-custom-faces</span><span class=\"p\">)</span>
</code></pre></div></div>
<p>[ The palette can be previewed with <code class=\"language-plaintext highlighter-rouge\">M-x modus-themes-preview-colors</code>.
Check the manual of each of my packages for further details. ]</p>
<p>I can probably patch <code class=\"language-plaintext highlighter-rouge\">minibuffer.el</code> to set its own face, but I have
not had the chance to look into the details. This “just works”, anyway.
Enjoy!</p>" nil nil "0e5bddb3253c8d0498e688f5778e5570") (15 (26569 29903 512368 757000) "https://protesilaos.com/poems/2024-10-16-vipers/" "Vipers (my poem)" nil "Wed, 16 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Vipers bite those who wait for perfection
Your fear and discontent is their prey
Find acceptance in the cold waters
It can only ever be with what is available
The number of acquaintances matters not
but only who walks beside you as an equal
</code></pre></div></div>" nil nil "14dc110c6d2c9f5b2dae5ee1b62f4d95") (14 (26569 29903 512282 650000) "https://protesilaos.com/poems/2024-10-16-our-finest-flowers/" "Our finest flowers (my poem)" nil "Wed, 16 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Our finest flowers
dreams of yesteryear
food for horses
In this world
ready or not
Time finds you
</code></pre></div></div>" nil nil "6227307b008d6440cc78606a8747c087") (13 (26569 29903 511678 711000) "https://protesilaos.com/books/2024-10-15-alla-prima-method-productivity/" "Philosophy: my =?utf-8?B?4oCYYWxsYSBwcmltYeKAmQ==?= method of creativity" nil "Tue, 15 Oct 2024 00:00:00 +0000" "<p>In this 35-minute video, I talk about my method of creativity. Its
name comes from the history of painting. I explain how I reached the
conclusion that this method is good for me by discussing my experience
at an office job where I was trying to plan ahead of time for
everything. Then I discuss how “alla prima” works with painting but
also with any creative process that involves being “in the flow”.
Finally, I describe the merits of this method and how it makes me be
highly productive but also relaxed and happy with myself.</p>" nil nil "25668094d5051481aae378436fc5734c") (12 (26569 29903 511559 325000) "https://protesilaos.com/keeb/2024-10-13-final-thoughts-moa-spherical-tops/" "Final thoughts on MOA keycaps and spherical tops in general" nil "Sun, 13 Oct 2024 00:00:00 +0000" "<p>In the previous entry, I shared my <a href=\"https://protesilaos.com/keeb/2024-10-03-moa-keycaps-first-impressions/\">first impressions of the cute MOA
profile keycaps</a>.
MOA is a profile with a uniform height and spherical tops. It also
sports a typically playful aesthetic, though I will not cover this
point here as I am indifferent to it. After spending some time with
this profile on my Iris split ergonomic keyboard (thanks to “Andreas”
for it), I have reached the conclusion that MOA is not suitable for
me. I have also realised that spherical tops are an inhibiting factor
due to my typing technique. I am thus reverting to the Cherry profile
set I have (Keychron Dolch Red, gifted by a fellow mechanical keyboard
user who prefers to remain anonymous). Here it is:</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2024-10-13-cherry-profile-keycaps.jpg\"><img alt=\"Keebio Iris keyboard with Cherry profile keycaps\" src=\"https://protesilaos.com/assets/images/attachments/2024-10-13-cherry-profile-keycaps.jpg\" /></a></p>
<h2>Uniform height is worse for my typing</h2>
<p>One of the potential advantages of uniformly shaped caps is that you
can position them anywhere you want on the board. This is especially
useful for alternative layouts like Dvorak and Colemak. Sure, there
are some kits that include extra keys for those cases, but (i) they
add a considerable amount to the total cost of an already expensive
set and (ii) the additional caps still are not as flexible in covering
any kind of layout. Uniformly shaped caps can be shuffled around at
any time, without affecting the typing feel. This is not relevant to
me though, as I am using US Qwerty. What I care about is the
experience while writing.</p>
<p>For the thumb cluster of the Iris, a uniform height is vastly inferior
to a sculptured one. If you notice in the picture I share above, I use
three different heights for maximum comfort. The two outermost keys
for which the thumb needs to stretch or curl (those with the
PlayStation-style legends) have the tallest height and are oriented to
best meet the thumb from where it accesses them. The corner keys (<code class=\"language-plaintext highlighter-rouge\">2</code>
and <code class=\"language-plaintext highlighter-rouge\">3</code>) have the lowest height, which is angled inward to make it
easier to hit the largest possible surface area, be it at the centre
or the edge. Finally, the keys <code class=\"language-plaintext highlighter-rouge\">8</code> and <code class=\"language-plaintext highlighter-rouge\">9</code> where my thumbs rest use a
medium height which also has the least amount of angle: the contact is
smooth across the top of the cap. This arrangement is particular to my
hand shape and is further enhanced by the one-shot modifier setup I
maintain (check <a href=\"https://github.com/protesilaos/qmk\">my QMK configuration</a>
for the technicalities). The gist is that it works brilliantly for me.</p>
<p>With the MOA set I lose these crucial advantages. All keys being the
same height means that the thumb must stretch and twist a lot more.
The one-shot keys make this less of a problem, though it is an
ergonomics penalty regardless. Furthermore, the spherical tops with
the pronounced walls on all sides make all keys harder to hit, as the
thumb is angled sideways and cannot easily aim for the centre.</p>
<p>As for the alphanumeric keys, I did not notice any improvement going
from Cherry to MOA. I did get used to the latter’s uniformity quickly,
which suggests that the sculpt is a minor factor here, though I never
felt it was better than what I had before. As I am writing this on my
Cherry set, I now realise that the numbers are a bit easier to access
by stretching my fingers without lifting them as much. This is, in
part, due to the varying heights, but also the subtle cylindrical
tops. The cylinder shape allows the finger to move freely up and down
from the centre of the cap beyond its bounds without encountering any
obstacles: this is of paramount importance for my thumbs but it also
is nice for the other fingers.</p>
<h2>No more spherical tops for me</h2>
<p>Compared to the MT3 set I have (I got an Ortho kit at a generous
discount and still feel I paid too much), MOA’s tops are less
aggressive because they are not very deep and thus have a fairly large
surface area. MT3 has those deep, exaggerated dishes that cradle the
fingertips if hit at the centre, but otherwise offend them with their
acute edges. It is then not just the shape of the tops that matters,
but also how deep they are. Between the two styles, MOA is a clear
winner in my books. MT3 was uncomfortable even after a few weeks of
full-time use.</p>
<p>Still, MOA’s spherical tops have a noticeable wall around them, which
trap the finger and forces it to be raised a lot more than on Cherry
in order to reach another key. In practice, this results in doing
extra work for the same amount of typing. Cherry’s tops are
cylindrical, though only barely so: instead of a wall, there is a
small ramp on the left and right sides. With Cherry, I find that I can
slide the finger sideways without any impediments, such as to go from
<code class=\"language-plaintext highlighter-rouge\">j</code> to <code class=\"language-plaintext highlighter-rouge\">h</code>. Downward motions, like <code class=\"language-plaintext highlighter-rouge\">a</code> to <code class=\"language-plaintext highlighter-rouge\">z</code> are equally easy. But
upward motions do require the finger to be lifted. With MOA—or MT3
for that matter—it is not possible to slide around the keyboard at
all.</p>
<p>This granted, MOA’s edges are smooth, which makes off-centre presses
quite forgiving. If there was a variant with a sculptured height, I
would strongly consider it. I hypothesise that the best profile for my
preferences would feature cylindrical tops like Cherry’s (or
marginally flatter), but with a sculpt that allows upward sliding
motions (so the whole profile would look like an open <code class=\"language-plaintext highlighter-rouge\">U</code> when seen
from the side). Until I find that, Cherry remains my top pick together
with OEM.</p>" nil nil "5069537a822e9d94670670d877e542b1") (11 (26569 29903 511214 966000) "https://protesilaos.com/books/2024-10-10-hestia-community-spirituality/" "Philosophy: Hestia, community, and spirituality" nil "Thu, 10 Oct 2024 00:00:00 +0000" "<p>In this 28-minute video I analyse the archetype of community, both in
respect to its social expression as well as the spiritual one. I
explain what the spirit is and how it relates to the idea of community
with the cosmos. In the process, I discuss the significance in the
symbolism of Greek mythology, with a focus on the goddess Hestia.</p>" nil nil "1a0858b74e55f194ab6649dd6495cbd6") (10 (26569 29903 511109 479000) "https://protesilaos.com/commentary/2024-10-09-spirit-moonlight/" "The spirit under the moonlight" nil "Wed, 09 Oct 2024 00:00:00 +0000" "<p>The following is an entry from my journal.</p>
<hr />
<p>I just got back from a long walk with the dogs. Local time is a few
minutes past 9 PM. The temperature is low, though I am feeling warm
right now. We are at a phase in the month where the mooning is
growing. There is only a sliver of it that is visible in the sky. It
will keep growing until it appears full. At least in my area, I can
tell when the moon is full even without paying close attention to its
shape, based solely on its position during sunset. The moon is full
when it rises from the east while the sun sets in the west. You get to
experience the moonrise in close succession to the sunset. It is early
in the night, yet the moon is already close to where the sun is
setting. This alone tells me that we need several nights before we get
to the full moon.</p>
<p>Living in the mountains imposes some practical constraints, though it
has the upside of experiencing the beauty of the world, potentially
without filters and distractions. Just as I observe the moon, I notice
the patterns in the behaviour of plants and birds. Each has its
particularities yet there also is a unity to all of them. There is
something there that underpins everything, such that a human is more
than an amalgamation of flesh and bone, a plant is greater than wood
and leaves combined, and so on.</p>
<p>I have said many times that I am not a religious person. Some mistake
this to mean that I am an atheist or, at least, that I have no
interest in spiritual matters. I think those are not the same thing. I
know many religious people who I would not consider spiritual and the
inverse. What I think of as the spirit is the facet of our being which
is distinct from rationality, emotions, aesthetic faculties, and
bodily functions or desires. It is not greater than them, as they all
are part of the same system and can only be understood through it (to
have a spiritual experience, I do it in my embodied version as a human
and I cannot know for sure if there is anything else and how that is).
Describing the spirit through this entry can only be done with words,
which will have to be reasonable and must thus reduce the spiritual
facet into a rational proposition. I will then limit myself to what a
rationalist will find unsatisfying: “you know it when you feel it”.</p>
<p>To me, awe is such a case. I walk up the mountain, it is cold and
mostly dark, until I reach the top. From there I observe the open
vistas. There is moonlight all around me and I can hear the crickets,
the night birds, and the frogs singing in concert. All I can sense in
those moments is that I am being touched by something greater than me.
The fundamental tension in our life is, I think, between our natural
egocentism or subjectivity and the fact of our contextualised
presence. As a conscious person, I see the world through my
perspective, yet I know all too well that the world precedes me,
environs me, and will outlast me. As such, I believe that
“enlightenment” is when we reach a point of alignment and harmony
between the ego and its environment, the part and the whole. This is
equanimity to me, the capacity to not be disturbed by thoughts or
phenomena which would otherwise blind you to your place in the cosmos.</p>
<p>I am aware that I do not have all the answers and am fine with not
having them. What I can do is work with what is available to me, as
faculties of sense, intellect, aesthetics, and as this spiritual
dimension. There is a present here in which I have presence. I am yet
another form of life like all others and there is no obvious ranking
among us. I am but a tiny spec in an infinite universe and I am
limited in my capacity to provide definitive proof about anything
(perhaps beyond the everyday matters).</p>
<p>Still, these walks are fulfilling me. Through awesome events, I am
being brought down to earth to be made more humble in realising how
all of us, forms of life in a cosmic continuum of life, have something
in common. If anybody cares to know, I am happy to tell them about
these moments. I do not do it because I think I have the answers, but
because of another basic capacity of our species: the joy of sharing,
which is the essence of every community we can ever have.</p>
<p>Our joy while dealing with other people is when we experience
something of a shared interest together. We may play a game, sing a
song, hike in the mountains, do some pair programming, and so on. It
does not matter what it is so long as we are jointly and honestly
participating in the experience. Here, again, I discern this same
dynamic of the part and whole, now in a social setting of the
individual and its social milieu. Just how we find a balance with the
world at-large, participation in a community presupposes a diminution
of each ego. When we sing together, for example, we do not try to
out-compete each other. Otherwise, we are not really singing, but
doing a performance to ultimately overpower the others. Even if it is
superficially the same, we can tell it is not really about the joy of
sharing. It is the same with the cosmos, if I am acknowledging that I
am part of the whole, I am necessarily admitting that I am not
outstanding or special in any way.</p>
<p>Sometimes, I have people ask me about the specific school of thought I
subscribe to. To my knowledge, the most correct answer is “none”. This
is because I am not interested in debating for the sake of winning any
argument. I do not do philosophy to be perceived as smart, thoughtful,
and erudite. The notion of “being up to date with the literature” does
not appeal to me. I do not care about attending conferences, being
famous, becoming rich, etc. Those will likely distract me from finding
peace. All I care about is to develop the tools that let me cut
through all the noise of our civilisation to find the subtle qualities
of the world: they are always there, but we are too busy to pay
attention to them; perhaps too noisy and too full of ourselves to
listen to the crickets.</p>
<p>When I experience the moonlight in the mountains, I know that it is
not some “spectacular show”, like what we are all used to. I will not
read about it in the gossip column of some magazine, it will not be
reported in the news, nor will it be debated among the leading
intellectuals of our era. It is, nonetheless, a moment that inspires
awe and contemplation, and thus reminds me to be simple. If I share
this, it is because there may be others who feel the same way and who
do not have a need to engage in ideological arguments about whose
“-ism” is the best. They all are a distraction, as far as I am
concerned, because they all put rationality above the spirit. When you
can connect with your environment, you feel content.</p>" nil nil "68702f826447859ccebc38bfe4bd3d58") (9 (26569 29903 510729 382000) "https://protesilaos.com/poems/2024-10-08-a-word/" "The A-word (my poem)" nil "Tue, 08 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>Ignore the conflagration
We shall ban the A-word
None will hate us then
</code></pre></div></div>" nil nil "f5f395586466eccf6fb6d3042613aab5") (8 (26569 29903 510644 181000) "https://protesilaos.com/politics/2024-10-07-no-trust-warnongers/" "Do not trust the warmongers" nil "Mon, 07 Oct 2024 00:00:00 +0000" "<p>Writing for <em>Jacobin</em> magazine in an article titled <a href=\"https://jacobin.com/2024/10/chicken-hawks-iran-israel-war/\">The Chicken Hawks
Want War With Iran</a>,
Liza Featherstone makes a trenchant critique of the warmongering class
in the United States:</p>
<blockquote>
<p>We could be on the brink of World War III. Israel assassinated a
Hezbollah leader, Iran bombed Israel, Israel launched a ground
invasion of Lebanon, and the United States deployed more troops and
fighter jets to the Middle East. Israel won’t back down on Lebanon
or Gaza, and both Israel and Iran have nuclear weapons.</p>
<p>It’s scary — and a bipartisan chorus of nerds who probably couldn’t
win a bar fight is eager to make it even scarier.</p>
</blockquote>
<p>The final sentence is the key issue here. Forget about geopolitics and
ideological battle lines for a moment. War is simply not costly for
many of its proponents. They are part of an elite that is insulated
from the suffering and will in one way or another benefit from the
situation. They are shameless and unscrupulous in making a political
career out of jingoism while helping their corporate cronies earn a
profit from all the destruction they cause. The ones who will be
tasked to do the fighting typically are physically fit, working class
males.</p>
<p>The USA’s decades-long policy of continuous warfare must be understood
as part of the symbiotic relationship between the state apparatus, the
military industry, and the financial establishment. War generates
debt, which entails a need for borrowing money that is done via the
issuance of yet more debt (government bonds), which is then marked as
a triple-A rated asset that works as collateral for other financial
derivatives. It is a lucrative business for those at the top and a
bottomless source of discomfort, pain, PTSD, or death for the rest.</p>
<p>In this light, the elites have a perverse incentive to always discover
a bugaboo somewhere that supposedly poses an existential threat to
Americans and their allies. Such is the twisted conduct of
imperialism: to continuously interfere in the affairs of countries
around the world and, when they unsurprisingly retaliate, to play the
victim and call for more war against such “terror”.</p>
<p>The establishment will rump up the patriotic rhetoric to brainwash the
average lad into thinking that he has to fight for his country. Men
are hardwired or conditioned to protect those they love (whether this
is nature or nurture is beside the point) and the regime seeks to
exploit that disposition by turning it into a duty to forward the
agenda of imperialism.</p>
<p>When demagoguery fails, the authorities will resort to enlisting
people by force. Those who have the luxury to relocate to another
jurisdiction will flee, while the poorer folk will stay behind to be
integrated into the war machine. This is yet another expression of the
class divide that frames these phenomena.</p>
<p>The way of the gun is not the solution. Mental gymnastics such as
“deescalation through escalation” will simply engender more distaste
for the perpetrators, which will, in turn, all but guarantee future
armed conflicts.</p>
<p>Unless those loud warmongers are willing to lead by example in
fighting from the front lines, they cannot be trusted to have the
general good in mind.</p>" nil nil "697302eddaefa0a55a6a4a3858b94380") (7 (26569 29903 510386 656000) "https://protesilaos.com/books/2024-10-06-last-party/" "The last party" nil "Sun, 06 Oct 2024 00:00:00 +0000" "<p>This is a story I just made up to describe only the truth.</p>
<hr />
<p>There is the alarm. A new day begins. It is half past five. The city
is coming alive once again. I better get going. Someone might report
me if they spot me sleeping here. I slept for about an hour. Not much
but enough to give me the requisite energy to walk to the bus station.
My ride is leaving in an hour. I must head back to my town and then
prepare for the long one-way journey abroad. Well, “abroad” is a
figure of speech: I have no permanent residence here either. A migrant
is all I am. I have not lived in Western Europe before, though I have
worked and cohabited with many individuals from different parts of the
continent. We are so much alike.</p>
<p>My bones are ice cold. I cannot think of something more real in this
moment. If they ever ask me to swear an oath to the highest being I
believe in, it will have to be this. Nobody said the park would be a
comfortable place to stay. I had no such false impression. I came here
because it was the only option. We never learn the stories of those
who end up on the streets. They are just there, withering away at the
margins of civilisation. Most do not even pay attention to them, as if
they blend into the backdrop, perhaps as some quirky piece of the
decor. Some may think these homeless fellows did it to themselves and
deserve to live in misery. I have my doubts, even if the brunt of the
blame on certain cases falls on the given person. Choice cannot be the
sole determinant in a human experience that is contingent on
happenstance. There are wars, economic recessions, structural poverty
and crime, drugs, epidemics, and ignorance. Personal agency as such is
too simplistic of a metric.</p>
<p>I am not homeless, though I have been close to it already. It
disheartens me to live like this. There is a part of me that feels
ashamed for my financial predicament. “You should be doing better”, I
often tell myself. Then I cry, as I have no answer as to how to
reverse the downward spiral. I am pushing against the boundaries. What
else is there other than to go down the slippery slope of illicit
conduct? On the other hand, I understand that issues are systemic and
that attributing everything to negligence, or idleness, or lack of
creativity, or whatnot, is to blame the victim, at least partially.
Apart from disappointment, I am also angry with myself. This is not
made manifest as resentment. It is not of a destructive sort. Rather,
it is the fuel that drives me forward, to hustle as hard as possible,
to persevere with my head held high and to be as resilient as I can.</p>
<p>Visiting the capital was a tough choice. I wanted to join my friends
for a last reunion and this was the only way to afford it. I do not
own a car. I must rely on public transportation. There is no intercity
connection after 9 PM. Nor can I pay for a hotel room. So here I am…
I wondered around all night until I could not stay awake anymore. My
friends organised the party for me. Everyone is happy about my future
prospects and they have all helped me prepare for what is to come.
Nicole paid for the plane ticket with her credit card. Bless her. I am
bankless and could thus not carry out the online transaction myself. I
gave her the money back in cash. Leo gifted me this warm jacket he got
a couple of years ago. It looks nice and effective. In exchange, I
helped his parents with some renovations they were doing at their
house. I do what I can to be helpful, even if it is not much.</p>
<p>The financial meltdown hits the hardest those at the lowest parts of
the income distribution. People like me who perform manual labour for
a living. Many employers turn the crisis into a business opportunity,
by using the economic headwinds as a pretext to erode labour rights
with impunity. The government is complicit in this offensive. It is
rolling back its expenditure, which leads to a cascade of effects
including fewer opportunities for work and a weaker or non-existent
social safety net. Meanwhile, prices for basic goods and accommodation
remain sky high. Job security is absent, landlords may force tenants
out in short notice, and savings are depleted.</p>
<p>In the news they talk about the economy as if it is a realm of reality
that is distinct from what happens to people every day. The recession
is, in fact, a reconstitution of personal lives. Most are forced to
change their routines and to suffer in silence. For me, it has
amounted to a crisis of identity. I have realised how the notion of a
homeland is not necessarily innocent and how governments will resort
to the use of inane patriotic palaver once the age-old policy of bread
and circuses becomes untenable. Shameless politicians intensify the
jingoistic rhetoric as they rave about some ahistorical glorious past.
In their self-righteous, yet utterly pretentious and fabricated,
world-view “we” hold the moral high ground that other ostensibly
lesser peoples want to take for themselves. Then they start blaming
immigrants, refugees, or those mysterious “external actors” for their
own policy failures. It happens every time like clockwork.</p>
<p>That is what is unfolding at the macroscopic level. The micro side of
this reality takes the form of shallow conventional wisdom in
interpersonal matters. Many times I tried to explain the phenomena I
am intimately aware of, I got told to “be a man”. There was no thought
put into the systemic magnitudes as if those do not exist at all and
each of us operates in a vacuum where only their manliness, or
whatever, matters. When I asked them politely what exactly did they
mean with such an exhortation, they told me to be responsible and
tough. I already am responsible. I have been earning my keep since my
early teenage years: they simply do not know what they are talking
about. Besides, I expect everyone to be mindful of their deeds and to
take care of their affairs, to the extent possible. At any rate, the
salient point of accountability is not bad, even if it is
insufficient. Though the advice to “be tough” is at best naive and at
worst disingenuous because it does not find any fault in the
perpetrators of injustice. If I say that it is not right for my
employer to keep me every day at work for two more hours without extra
compensation and to threaten me with dismissal if I dare raise an
objection, they reply with the moralistic trope about “real men”.</p>
<p>Patriotism for the masses, machismo for the individuals… A toxic
cocktail throughout. Then, when all that shadow play and bellicose
language leads to the inevitable armed conflicts, people like me who
are physically fit and cannot afford to relocate to some haven will
receive a formal letter calling them to the front lines. The
authorities will be appealing to each person’s sense of duty: “the
nation needs you” becomes the prevailing narrative. I would be willing
to fight tooth and nail for a country that is there for us when we
need it. That is an honourable cause. But not for this. To be
marginalised, ridiculed, and then converted into cannon fodder. A
nation that does not value us and only treats us as expendable matter
is not one I will ever defend. No.</p>
<p>The economic downturn has been enlightening in this regard. I have
learnt more about the world and understood subtle yet crucial points
that formal education blithely ignores. Still, I cannot avoid the fact
that these are the prevailing conditions and my power to affect them
ranges from limited to none. Even joining a mass protest with some
trade union is a luxury when I cannot afford to not get paid for that
day. It thus becomes a personal matter. Precarity is a condition that
extends far beyond household economics. I feel unsafe every moment of
the day. It engenders in me a visceral fear of imminent catastrophe.
One tiny misstep or some everyday event like a small accident that
sidelines me for a couple of weeks and I am on the streets or in
prison. This is life on the precipice; a life where my availability is
the only force that guarantees my continued presence. Even if I were
the toughest person physically and mentally, I know that I would still
not be robust to the slightest shock. What disempowers me the most
though is the feeling that I am trying as hard as I can. When I work
two jobs, when I do not respond to my abusive employer because I
absolutely need the paycheck, when I count the pennies at the end of
the week to buy a loaf of bread… when I do all this while living in
a basement, I know that I am being honest with myself regarding the
effort I put in. This is not a rationalisation to explain away my
laziness or whatever. I am trying as best I can, but it is not enough.
It breaks my heart.</p>
<p>I would normally not have joined my friends at the party last night. I
could have saved the money I spent to get here and then at the
restaurant. Those meals make me uncomfortable with how much they cost.
30 euro may not be a lot in absolute terms, though it is a sum well
above the rates I am used to. Whenever I buy groceries, I check the
price of everything and only pick the essentials. It makes it hard for
me to enjoy the food when I know that the cost of one serving would
cover the needs of an entire week, if spent more diligently. Still, I
could not let this mental block deny me the chance to see my friends
for the last time. I have not been as close to them as I would have
liked, though they matter to me. There were many instances when I
turned down their offer to join them on a trip to the countryside or a
night out. Such a lifestyle has not been financially viable for me,
but I still feel guilty about not doing as much as I should. Maybe I
am wrong in this outlook, as it is burdensome on my conscience, though
I know that it is one thing to consider something rationally and
another to embed it in my habits.</p>
<p>The people who are close to me remind me that it is not all doom and
gloom. We can still help each other out in overcoming the challenges.
I want to reach a point where I never prioritise another task over
spending time with friends and family. It is not about being wealthy,
but having a modicum of stability. I would then make room in my daily
agenda for ample sociability, to tend to the needs of those I care
about and to meet others that can enrich my life. I may then figure
out what sort of activities are within my budget, but I will not
suffer through this agony of radical uncertainty. Community is the
antidote for the emotional impact of precarity. It is the closest
thing to a panacea that I know of, however imperfect it may be. The
connections between people combined with their proximity and
availability form the milieu that lets each of them operate with a
greater sense of safety. When I am in that environment, I trust that
there will be others around to join me at the kitchen table, spend
time with me without having any ulterior motives, hold me accountable
if I say something inconsiderate or act recklessly…</p>
<p>Community is all about having faith in people. This is a quality I
often lacked, as I was too absorbed in my own troubles. Even though I
was in a social setting, I had no community because I did not have the
right mindset and accompanying disposition to be part of a group.
Faith and trust come about organically through continuous exposure to
each other and with shared activities. I think back to my days as a
child when all of us in the neighbourhood would play football until
nighttime. Most of us did not own a ball. We would instead visit the
doctor’s house and ask if our friend there could come play with us. If
he was studying and could not attend right away, his mother would
offer us the ball. There was an ethos of sharing resources and
expressing solidarity towards each other. I cannot recall a single
case where the response was “go get your own ball”. That would have
ran counter to the very worldview of our society. There is an implicit
commitment to personal responsibility even in such a communal context,
which is that each member of the group does not abuse the commons and
that every one lives in accordance with the same norms. It is all
about fair play.</p>
<p>Migrants who are uprooted in one way or another cannot easily recreate
this social reality, though it still happens in multicultural
countries: individuals tend to cluster in places where more of their
kin is located. I think this is the side of tribalism that is benign.
The key is to not treat it as a closed club. Exclusivity combined with
a sense of superiority is what inwardly corrupts the propensity of
humans to congregate. I can tell that I am missing this from my life
and I know that it is not a yearning to pick sides in some grand “us
versus them” confrontation. The need for others is not in
contradiction with the capacity of an individual to improve their
self. Only if I am a better version of myself can I be of service to
others. It means that I try to reach a position of relative peace
where I can provide for those I care about. If I am struggling to
survive, then I cannot satisfy anybody’s needs as I will be putting my
survival in jeopardy. Nobody is better off in such a scenario. It also
implies that I learn more about the differences between people,
tolerate diversity, show compassion, be wise in what I say and how I
communicate, and remain open-minded.</p>
<p>Communities are unlike clubs. The latter form around some common
belief or activity. They are more homogeneous in that regard. In a
wider social setting, there are individuals with different traits and
trajectories. I do not need everybody to be a replica of me in
appreciating the same things I do. Each is their own person and I have
the attitude to learn more about them and be amazed by the bottomless
potential of this world. The mind requires minds to discover the
cosmos. The more varied those are, the richer the experience will be.
We all have inherent to us a need to make connections, be it with
other humans or life at-large. Being too inward looking and selfish is
thus a recipe for loneliness or sociopathy. It will either be ruinous
long-term for the person that experiences loneliness or disastrous for
everyone else who has the misfortune to be in the sociopath’s way.</p>
<p>The bus is here. Not much else remains for me to do here. I had a good
time at the party, despite struggling against those money-related
inhibitions. I know I will probably not meet my friends in the
foreseeable future, even though I saluted them with a “see you soon”.
This is a déjà vu of what happened all those years ago when I had to
leave my place of birth. I have always wanted to rejoin my mates, but
I could not. How are they doing? Did any of them make a family? How is
it to have kids? I do not know anything about them and it saddens me
how things turned out. There is no fixing the past though. All I can
do is learn from what has transpired and apply those lessons to the
present at the earliest opportunity.</p>
<p>Julie asked me why I was not especially enthusiastic last night. “You
are going to a better place”, she exclaimed. There is some truth to
that, in the sense that I will be earning more than the minimum wage
for the first time in my life. Though it also means that I am once
again making a sacrifice out of necessity. The people I care about
will not be with me. I am yet again starting from scratch as a
stranger. It is as if I enjoy being a riddle, an unknown quantity, a
mystery figure that remains disengaged from the fray of the action.
This is not who I am. Will I ever see Julie’s pale face and grey eyes?
Will we have the opportunity to sit together again at the cafeteria
and talk for hours on end about the topics of our mutual interest?
There is the written word, yes, and I can text them. It is not the
same though. I do not feel anything special when I read a message. I
cannot sense my correspondent’s intent, I cannot feel their warmth.
There is no human connection there.</p>
<p>I have learnt to go with the flow and adapt to evolving circumstances.
I will likely benefit from what is to come. All I can do now is hope
that the conditions will one day be favourable to set my base
somewhere. All this toil is pointless if there is none out there to
share its fruits with. Like when I was a child, I want the people and
the ball to play some football. My aspiration is for a day when I will
not be building on shifting sands. I shall then do my best to nurture
a community that I am a part of. I am ready to put my faith in others.
I do not know how or with whom, but I will try in earnest.</p>
<p>May everybody here fare well. They know I love them even though I
never told them.</p>" nil nil "7b5b17917d08f66acd1702bfd1d090e5") (6 (26569 29903 509547 391000) "https://protesilaos.com/keeb/2024-10-03-moa-keycaps-first-impressions/" "First impressions of the cute MOA profile keycaps" nil "Thu, 03 Oct 2024 00:00:00 +0000" "<p>[ I am not affiliated with any of the companies mentioned herein and
am not posting any links just to be sure. ]</p>
<p>For a long time now, I have been meaning to try a uniform shaped
profile keycap set. The most popular options for MX type switches seem
to be the DSA and XDA profiles. The former is produced by Signature
Plastics. They are the shorter, uniform shaped counterpart of
Signature Plastics’ acclaimed SA profile. Given the pedigree of their
manufacturer, I shall assume that DSA is top-tier in terms of build
quality—and this is reflected in its lofty price. Whereas XDA is
produced by many manufacturers and I cannot tell if its quality is up
to par. The price it commands on various marketplaces, combined with
some opinions I have read, suggests that it is at least mid-tier.</p>
<p>Because I did not want to spend more than 30 EUR on a purchase that I
could regret, I decided to opt for an alternative: the MOA profile
that some Chinese vendors are peddling. If you check around for those,
you will quickly realise that they are mostly cutesy and whimsical. I
am surprised the marketing departments have not yet targeted the
mountain-dwelling, hut-building, Emacs-using philosopher demographic
out there. This is clearly a missed opportunity. 🙃 Still, I have no
problem whatsoever with the available options. I do like pink, anyway.
Below is a picture of my Iris keyboard by Keebio (thanks to “Andreas”
for it!), showing the MOA <em>Cherry Pudding</em> set by Womier on the left
half and the Cherry <em>Dolch Red</em> set on the right, by Keychron.</p>
<p><a href=\"https://protesilaos.com/assets/images/attachments/2024-10-03-moa-profile-keycaps.jpg\"><img alt=\"Keebio Iris keyboard with one half using MOA keycaps and the other Cherry profile\" src=\"https://protesilaos.com/assets/images/attachments/2024-10-03-moa-profile-keycaps.jpg\" /></a></p>
<p>The Dolch Red is what I have been using for the past couple of months.
These are a gift from a fellow mechanical keyboard user who prefers to
remain anonymous (you know who you are, so thanks again!). I actually
stopped using the red-coloured caps that give it its moniker, because
I prefer the monotone aesthetic. The Cherry profile in general (also
known as GMK CYL) is the de facto industry standard because it gets a
lot of things right: its low-to-medium height makes it easy to adapt
to, its cylindrically shaped tops provide a sufficiently spacious
surface area to type accurately, and its sculptured shapes contribute
to a comfortable experience. The particular set I was using is made
out of thick PBT material and the legends are produced using the
double-shot technique. In short, this is a top notch product.</p>
<p>But part of the appeal of mechanical keyboards is the ability to swap
out different parts and try a variety of configurations. My primary
goal is always ergonomics, with a secondary target of decent acoustics
(basically, not too loud and exaggerated). I have thus been using the
MOA keycaps for a full day now and am already prepared to share some
first impressions.</p>
<h2>The feel and acoustics are wonderful</h2>
<p>Womier’s MOA set is made out of thick PBT plastic. I do not have an
instrument to measure its exact width, though the eye test suggests
that it is a bit thicker than the Dolch Red. Those are specified as
1.5mm on Keychron’s website, so I will go with ~1.6mm for Womier’s
caps.</p>
<p>Unlike its unapologetically flamboyant looks, this MOA set’s acoustics
are subdued and noticeably deeper than what I was using before. I am
impressed by how I am not drawn to the sound while I am typing. It is
perfectly balanced: enough to generate audible feedback but not to
call for my immediate attention.</p>
<p>The top of an MOA cap is slightly spherical. When I rest my fingers on
the home row, I can tell that there is a concave there, though it is
not deep. Though I barely notice the dishes as I type. This, too, is
an understated quality that I appreciate. Comparing it to the MT3
profile that I tried some months ago, I never have the feeling that
MOA is trying to remind me of its properties. Whereas I could not
avoid the feeling of intrusiveness coming from MT3, as if it would
keep shouting at me “look at my deep dishes and, by the way, check out
the rest of my shape!!!”.</p>
<p>I prefer designs that blend with the background and come to the
foreground only when I shift my attention to them. MT3 never did that
for me, whereas the two sets pictured above both pass the test with
flying colours.</p>
<h2>A uniform shape is mostly okay</h2>
<p>I have already gotten used to the lack of a sculptured height. As I
write this, I do not feel that I am missing the Cherry profile. This
suggests that whatever benefits those varying heights have are
marginal. My fingers are long enough to access all the rows and
columns, including the outer one (where <code class=\"language-plaintext highlighter-rouge\">Insert</code> and <code class=\"language-plaintext highlighter-rouge\">M5</code> are).</p>
<p>However, the case of the thumb cluster is different. While my thumb
can easily actuate all four keys, my policy in the interest of
ergonomics is to avoid scenaria where I either stretch or curl my
thumb to reach the outermost keys (the <code class=\"language-plaintext highlighter-rouge\">Delete</code> and triangle in this
picture). With a uniform profile, the equivalent of the <code class=\"language-plaintext highlighter-rouge\">Delete</code> key
is a bit trickier to access because I have to either come from higher
above or hit it from the side. If the key switches have a very low
actuation force, this is a recipe for frequent mistyping and the
resulting frustration. I do not like how the caps can thus dictate
what kind of switch I opt for, though I will not overstate this point
as it is not a problem per se—just a concern.</p>
<p>You will notice in the picture how I had laid out my Cherry profile
caps on the thumb cluster. The outermost keys were the tallest, making
it practically impossible for me to accidentally hit the wrong key. I
am not making mistakes with the MOA set right now, though I consider
this a weak point of a uniformly shaped design. I expect this to not
be inherent to MOA: any uniform set would impose such constraints,
mutatis mutandis.</p>
<p>The thumb cluster is where I put the <code class=\"language-plaintext highlighter-rouge\">Ctrl</code>, <code class=\"language-plaintext highlighter-rouge\">Alt</code>, and <code class=\"language-plaintext highlighter-rouge\">Shift</code> keys.
I configure those (and others) to function as one-shot keys. This
means that I tap the modifier and then quickly follow it up with
another key to register a Mod+Key event. As such, the shape of the
caps is not a deal breaker because I never press and hold, potentially
keeping my thumb in an awkward angle and tiring it out over the course
of a typing session. If I was doing that, I would consider MOA (and
probably every uniformly shaped set) unsuitable for my thumb cluster.</p>
<h2>The experiment continues</h2>
<p>As always, I will keep the current setup for a few weeks. The idea is
to give it a fair chance, though I can already tell that it gets a lot
of things right. I do suspect, though, that I will revert to the
Cherry profile at least for the thumb cluster: it is clearly superior
to an all-MOA arrangement there.</p>
<p>Assuming I like MOA as a long-term option, does this mean that I will
then try DSA or XDA sets? The answer is most likely negative. I think
that the considerably higher cost of those will not correspond to a
proportionate increase in quality. This is further reinforced by my
experience with Keychron’s Dolch Red, which is very nicely done while
costing ~30 EUR. In my experience, “premium” products seldom live up
to their price tag and I am not that picky, anyway.</p>" nil nil "fe539080dda8cac4b9a0614353ff46e0") (5 (26569 29903 509119 146000) "https://protesilaos.com/poems/2024-10-03-holding-hands/" "Holding hands (my poem)" nil "Thu, 03 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>There is a world, beloved,
where we stand together
holding hands
overlooking the Mediterranean
The scent coming from
orange orchards and cedar forests
reminds us of our shared humanity
It is not diversity that divides us
but the misbegotten notion that
bodies must always fall
</code></pre></div></div>" nil nil "987ec27fe40ba67b5b658c0d8a1ea53d") (4 (26569 29903 509029 320000) "https://protesilaos.com/poems/2024-10-02-warmth/" "Warmth (my poem)" nil "Wed, 02 Oct 2024 00:00:00 +0000" "<div class=\"language-plaintext highlighter-rouge\"><div class=\"highlight\"><pre class=\"highlight\"><code>A season ends, another begins
The days are shorter now
Crows and magpies reappear
The grapes are left behind
to turn into raisins
A bad vintage by all accounts
Let the birds feast on them
There will be a tomorrow regardless
Befriend the oak trees
They are there for all of us
And heed their wisdom
that tolerance of cold winds
does not constitute warmth within
With or without comforts
only in community you find
what you truly need
</code></pre></div></div>" nil nil "94cd98ce39557bdb101bc6312279bd6a") (3 (26569 29903 508920 524000) "https://protesilaos.com/commentary/2024-09-30-controlled-discomfort/" "Controlled discomfort" nil "Mon, 30 Sep 2024 00:00:00 +0000" "<p>The following is an excerpt from my journal.</p>
<hr />
<p>I just arrived home from my evening walk through the mountains. The
sky is clouded. Combined with the fact that there is no moon at this
stage, the night is as dark as it gets. Darkness in the wild engenders
in me a mixture of peace and alertness. It is meditative, in the sense
that I can more easily identify—and expound upon—concepts that are
of immediate interest to me. My creativity benefits greatly, as I
discover themes worth elucidating. Combined with the heightened sense
of focus that remains active for a few hours, I am able to write at
length and with regularity. I do it for myself. There never is a
target audience. It is an expression of enthusiasm for something I
enjoy.</p>
<p>Tomorrow is the 1st of October. Days get shorter with each passing
day. Temperature levels are dropping too. They reach 25 degrees
Celsius during the day and fall to around 12 degrees at night. I have
for a few weeks now been experimenting with taking shirtless walks at
this hour. The idea is to expose myself to the cold in order to test
how I cope with it and to assess if this increased vulnerability has
an impact on the aforementioned heightened focus I experience.</p>
<p>Topless nighttime hiking sounds insane, so I have to provide more
context. First off, I do them at night because it is colder and I do
not want to offend any potential passers by (even though it is quiet
in the mountains). Secondly, this new practice is an extension of my
long-established habit of bathing exclusively with cold water. I have
been taking cold showers for more than five years now. The rationale
is three-fold:</p>
<ol>
<li><strong>A proxy for my overall health.</strong> Tolerance to cold seems to me
like a decent quick check that I can carry out at home to figure
out if some of my body’s subsystems are functioning properly. I
remember when I would have a fever and would not tolerate even
lukewarm water, so I assume that tolerance to cold is, ceteris
paribus, a suggestion that I am okay (of course, this is but a
single point of data).</li>
<li><strong>A real test of living with less.</strong> Hot water is the byproduct of
some fairly advanced infrastructure. By learning to live without
it, I make myself more economically resilient. This is not some
theoretical advantage. I have been benefiting from this during the
entirety of my project to live at the hut. Because I have not
needed the setup of a boiler, with all its accompanying pipework, I
have avoided a significant cost that would have otherwise imposed
robust constraints on my plans. Whereas now I am living without it
and can use my limited resources on more pressing issues (having
hot water is nice, in case I ever have guests). Furthermore, this
is a tangible sacrifice or, if we phrase it differently, a type of
minimalism/austerity that you cannot treat lightly.</li>
<li><strong>An accountability structure.</strong> Cold showers are always mildly
uncomfortable. Doing them is not for the faint of heart. This means
that I make it harder for myself to not debase the standard I set
for me. It gives me the motivation to try hard and it denies me of
an convenient excuse/rationalisation where I allow myself the easy
way out on the premise that I “will try harder tomorrow”. There is
no “tomorrow” in such issues. Either I have the honesty towards
myself to admit that I could not do it, or I try harder. The goal
is to remain authentic. If I do it, it is because I can. If I do
not do it, it is because I cannot. There never is an “I do not
want” in this case.</li>
</ol>
<p>Back to the night walks… I started taking off my shirt during August
to ease myself into the process. I know from cold showers that I need
to build the requisite capacity for this kind of exposure. Assuming
all goes well, I will become even more tolerant to the cold outdoors
as time goes by. But I will not write more before I do it first for,
say, a full year: there is a high chance I cannot take it anymore and
am forced to revert to my old ways.</p>
<p>The tricky part is the wind, which lowers the apparent temperature and
increases the bite of the cold. Showers are easy and less intimidating
by comparison because they take place in a room that is sheltered from
the elements. This is why I cannot be confident and am experimenting
with caution.</p>
<p>Not to imply that cold showers are easy. When I first bathed in cold
water, I had a shocking initial experience: as soon as the water
touched the most sensitive parts of the body (scalp, chest, and back)
I instinctively took a deep breath and momentarily felt like time had
paused at the point where innumerable tiny crystals were piercing
through my skin. The locus was the upper body, as the limbs are more
tolerant to cold. I found the courage to persevere by staying under
the flowing water for a few more seconds. It was enough to overcome
that pressure. I then felt in complete control. The whole experience
was still intense in how it was vitalising every fibre of my being,
but it would no longer trigger in me any sense of fear. As soon as I
was done, I had an experience of confidence that is unlike those we
normally get. It was visceral, rooted in the realisation that I could
power through such an ordeal. Subsequent showers became easier, though
remain relatively uncomfortable and have not lost their original
sharpness.</p>
<p>The key is consistency. If I quit, say, for a month I will have
trouble resuming the practice. The body has a propensity to find the
easiest option, which is optimal when conserving energy, but can lead
to laziness, with its longer-term downsides, if left unchecked.</p>
<p>What cold showers and this latest experiment of mine have in common is
the creation of controlled discomfort. I am very careful with how I
expose myself to danger. I do it in a way that does not put me at risk
and am not dogmatic about it. If I sense that I am approaching the
breaking point, I will quit. Furthermore, I am not doing any of this
on a whimsy, nor to prove a point. It is part of a balanced lifestyle.
I am careful with my diet and remain physically active throughout the
day. This has been the norm for decades.</p>
<p>By bringing controlled discomfort upon myself, I try to remain sharp
and capable. There is an obvious physical aspect to it, though its
mental dimension is equally important. I must show the resolve to
carry out the deed and I must maintain the discipline to stick to it
for the long-term. The capacity for such fortitude is then available
to me for all my other endeavours.</p>
<p>Comfort is wonderful, of course. What I value the most is peace, which
is in large part why I live in the mountains. Though I understand that
too much of it can make me more fragile, physically and mentally: I
might take too many things for granted, may forget how difficult
everything actually is, and not realise how dependant I have become on
the pampers provided by my social milieu. This is my way of telling
myself “remember your nature; remember who you are”, which allows me
to contribute to civilisation what I think is essential and to not
reinforce trends that take us too far in the direction of
recklessness.</p>" nil nil "fc663184536fdccc647e5bb266c041c1") (2 (26569 29903 508436 740000) "https://protesilaos.com/books/2024-09-29-night-harbour-bar/" "A night at the harbour bar" nil "Sun, 29 Sep 2024 00:00:00 +0000" "<p>This is a work of fiction. Everything is made up except the parts that
matter. Have fun!</p>
<hr />
<p>“Veronica! Go to your home, dear. It is already twenty minutes past
your shift.” I see her smiling, as if to remind me of her previous
answer. She already said that she will stay a bit longer to help me
wrap up the party. What she does not realise is that this will go on
for at least another hour. I hope she is up for it. At any rate, I
appreciate her camaraderie. Let her do as she wishes.</p>
<p>My colleagues are a hard-working bunch. I would run through a brick
wall to defend them. Our bonds are strong and we show solidarity
towards each other. Though this is not how they were introduced to me
by the director. His words were unflattering. “They put in the minimum
amount of effort and never waste an opportunity to fool around. Their
heart is not into it”, he remarked. I could sense a racist undertone,
as he did not say the same thing for the locals who are employed in
the other departments of the hotel. How likely is it that all the lazy
ones ended up working in the same place and are all of different
nationalities?</p>
<p>People will change their behaviour based on their social milieu. I
have noticed this phenomenon everywhere I have been, from school, to
extracurricular activities, and the various jobs I have done. It is up
to the leading figures to instil a culture of excellence which, to me,
goes hand-in-hand with being generous and a team player: be fair to
everyone, remember that you are not above the rules, and let your
deeds set the standard. I never tell anyone what the desired level of
performance is. Instead, I am the living embodiment of it. When I am
working, I do not try to cheat or pretend that I am trying. I do
everything properly, to the best of my abilities. And when it is time
for a break, I relax, satisfied with the effort I am putting in.</p>
<p>I am the head bartender. This is a seaside hotel by the harbour. It
hosts thousands of tourists throughout the season. It has three pools,
two restaurants, a beach bar, a pool bar, and a terrace bar, which is
this place I manage and where most of the alcohol is sold. I have
worked at this establishment in years prior, though I used to do only
morning shifts. I was thus eased into the role, learning all the
requisite skills without assuming too much responsibility too quickly.</p>
<p>I am held accountable for everything that happens to the terrace bar.
It only operates in the evenings. We do not prepare milkshakes here,
nor do we have the brassware to brew traditional style coffee the way
they do down at the pool. Guests are expected to be well dressed and
to enjoy their night as they listen to our live music. The animators
who put up the show are a wonderful group of talented people from
around the world. French, Brazilian, Angolan, Bulgarian… They
consist of many nationalities and I have learnt many things from them.
Capoeira looks cool, for example, but I will need a community around
it to appreciate its profundity. Doing it on my own will only be a
simulacrum of the real thing.</p>
<p>My duty is to make sure that everything is in order here. I am
entrusted with the keys, control the cashier and report to the
accounting department, fill in the forms for the requisition of
supplies, and make sure everybody fulfils their duties while also
enjoying equal rights. I coordinate with my colleagues to keep the
fridges full, ensure that we have clean glasses at all times, maintain
tidiness behind the bar, and serve drinks. Because of all these, I am
the first to come, last to go. And I take my role seriously.</p>
<p>This has been an extra long day. There was a wedding with over two
thousand guests. Now we are at the tail end of the wedding party. On
paper, they should have left an hour ago. But here we are, ready to
prepare more drinks. My experience tells me that we will stay open at
least until 3 AM, two hours more than our usual shift. Papers only
matter when you are in a position of strength. Ordinary workers either
accept the working conditions as those arise or risk being dismissed
at the earliest opportunity. We are expendable. There is always
someone ready to take the job. Maybe the more competent labourers are
harder to replace, though the dynamic is the same for everybody.</p>
<p>My shift normally starts at 4 PM and ends at 1 AM, though today I am
on a double shift. I arrived at nine in the morning to set up the
tables with the champagne and then to serve the drinks. The wedding
ceremony was at noon. Time flies when you are having a good time. It
is not busy right now. I have prepared only a couple of cocktails in
the past hour and Veronica served one table. The guests are tired and
worn down by the countless beverages they have had. I know I can
handle it on my own from now on. It was half past eight when I left my
apartment. I do not feel tired because of all the adrenaline. Though I
know I am not unbreakable. All this work does take a toll on me. I
will need to rest as much as possible until my next shift which,
thankfully, is back to my usual afternoon schedule.</p>
<p>Here is this girl again… Now she has brought the groom along with
her. These people do not know when to quit. “The lady asked you for a
drink and you refused to serve her. Why’s that, son?” Such are his
words as he struggles to maintain his balance. “Your friend is clearly
pissed, my man, and I will not poison her with any more piña colada.
She should go to bed now. Just look at her and show responsibility!” I
appeal to his common sense. That girl has had about half a bottle of
rum, plus the extras, and she clearly cannot tolerate any more of it.</p>
<p>I get these encounters from time to time. People may be aware of what
they ask, but they do not necessarily have the clarity to discern what
they need. This is one of those cases where the person’s desire runs
counter to their immediate wellness. I have witnessed a man die from
liver failure and I will not let that happen on my watch. This woman
is at risk of serious damage if she continues with such unbridled
habits.</p>
<p>Alcohol consumption is deeply ingrained in our culture as a form of
socialisation. A couple of drinks can loosen you up and make you enjoy
the company better. This is probably because it lowers your self
awareness and thus focuses your mind on the relatively fewer functions
you can still do well. The less we think about our self in a social
setting, the more easygoing we tend to be. But there is a fine line
between relaxing a person’s social reflexes and giving them the tools
to forgo control of themselves. The latter is usually what happens in
these situations as people do not know when to stop. If your friends
are still drinking, you do it too. The cycle invigorates itself. Some
will be more talkative while intoxicated but otherwise will not become
an immediate threat to anyone but themselves. Whereas those who are
more assertive may get dangerous. It is such a tricky situation to be
in. Thankfully, we have had no instance of violence at the party. They
are just too drunk to string together more than a few coherent
thoughts.</p>
<p>It seems Veronica is not the only one around. I guess my stubbornness
is contagious… “Hey, Andy! You are still around, big guy? I told you
to go home already. I can tell you are knackered.” This is a special
event. My colleagues have all shown extraordinary commitment even
though it was not asked of them to do more than usual. I appreciate
it. “Come here, mate”, I urge him. “Is there anyone you fancy at the
party? I will call them here.” I gently turn his attention towards the
animation crew. He smiles and is blushing. Here is this strong man
with an innocent heart. Such an endearing moment! “Fine, I am teasing
you”, I reassure him as I pat his back. “You can leave now. I will
take care of the rest. Remember to take it easy. No problem; no
stress!” I take out a bottle of water from the fridge and pass it to
him. “Be careful and leave some for the rest of us, okay?”</p>
<p>The animators are packing up. They will be gone in ten minutes or so.
I see Veronica just standing there, waiting to take an order. I think
it is over now. I wave at her. She notices me and walks towards me.
“Since you are not leaving on your own, I will have to figure out an
alternative. We will shut down everything together. What do you
think?” She is quick to respond with a reassuring “okay”. We count the
number of guests and take out as many water bottles from the fringe.
Then I make the announcement. “We are closing shop folks. There is a
bottle of water for each of you. All numbers win!”</p>
<p>Veronica helps me tidy up the place and pull down the shutters. “Thank
you! I respect your ethos. Good night and see you tomorrow”, I tell
her. “Bye”, she says and leaves. Her room is ten minutes on foot from
here. My relationship with all my colleagues is friendly yet clearly
professional. I never ask anything about their private affairs and
know very little about them in general. In return, they know nothing
about my background and life outside of the current setting. This is
how I prefer it. Having done seasonal jobs before, I am aware that we
all come and go. The ones here are immigrants like myself. I will
probably not see them again once the season is over. I thus prefer not
to grow attached to anyone because it will hurt me when our paths
diverge.</p>
<p>I recall how I befriended a tourist girl when I was twelve. Tania was
her name. Our friendship lasted a grand total of four days, though it
felt like we had known each other for an eternity. We were just
playing around and talking. “I don’t speak England very best”, was
among the first things I told her, and then laughed out loud. She
smiled back, so I guess she found it charming. Formulaic pickup lines
are either a recipe for disaster or the conduit to a superficial
affair. You have to be your true self and behave casually. It also
helps you not to stereotype people and think they must respond in this
or that standard way. Let yourself be surprised. These are insights I
have developed over time. Back then I was just a kid with a childish
demeanour—which was fantastic!</p>
<p>There was this coin-op machine with a Pacman game installed. Tania
would consistently beat my high score. My excuse was that the game is
punishing me for giving it smaller coins. “This Pacman dude has taken
all my money”, I exclaimed. “And I suspect he likes you more!” Again,
I was being facetious. Only one type of coin could operate the
machine. The day she left with her parents we both cried. It taught me
how we can be close to someone when we are authentic. We do not need
to know them for years. This is why I am reluctant to have a repeat
scenario with any of the people I meet here. They will leave in a few
weeks. I am sure they are fine and we would have a good time together,
but I am not willing to suffer again. Maybe one day I will realise my
folly and internalise the notion that nothing lasts forever, anyway.
It is not about the duration, but the quality. I might grow to
appreciate things while they are, for as long as they occur. But I am
not there yet. I still labour under the illusion that I will build
connections that last a lifetime and must thus avoid the ephemeral
ones.</p>
<p>There is a part of me that knows this is a mistake. I do not regret
the time I spent with Tania. The fact it was a brief encounter is
irrelevant. Perhaps it was even better this way. Though I cannot make
a case for the counterfactual. It does not matter if we know something
at the rational level. I can recite all the sound advice I have heard,
but it has no consequence in my life if I do not implement it. It is
not our claims that matter, but our actions. This is how you
understand a person: check their behaviour. There is a hard-to-bridge
chasm between theory and practice. We have to apply whatever precepts
continuously to eventually embed them in our conduct. I can, for
example, have a friendly chat with Veronica. It is easy to do and
there are plenty of opportunities each day. Though I prefer to keep it
professional, perhaps as an excuse to cling to my old ways. Undoing
established routines takes time and requires courage; courage you must
muster to step out of your comfort zone. Only then will you render
yourself available to new opportunities. This might be the default
outlook of my self in his thirties if I start putting in the effort.
But I am not there yet.</p>
<p>Most of the guests are heading to their rooms. Everything went
smoothly today. It is a major achievement, though we are not going to
see any extra money at the end of the month. The tips are too few to
matter. They are about the same as usual. The executives will receive
a handsome bonus for the wedding. It is always the same and I know it
is not fair. Sure, they did their part but everything here would
easily fall apart if all of us were indeed fooling around. It is well
past my shift yet I am not done here. I do it because this is how
things should be done. Nobody will reward me though. Integrity is
about your quality, not your performance in light of certain
incentives. I still have to compile the receipts for the accountants.
Then I must write the requisition and file it at the storehouse. It is
mind-boggling how much booze we sold. Tomorrow will be more of the
same.</p>
<p>I do this job to save money for my studies. I pay all the tuition and
living expenses out of my pocket. My parents cannot afford to help me.
When the school year starts in October, I will be doing other jobs.
The specifics vary, though the everyday interactions with people are
broadly similar. I am in good terms with everyone. There have been
cases where some middle manager with an inflated ego thought too
highly of their role, though I have learnt to mind my business. I do
not want to fix anyone and am committed to my goal. I wish to get my
degree and then move on to the next phase in my life. I have no clear
plan of what that eventuality will look like, though I imagine it will
be unlike the current one.</p>
<p>There are people who have their aspirations sorted out from an early
age and do not deviate from them. Good for them, I guess. I remember
many of my classmates in secondary education already knowing what they
wanted to become as adults. How could they have figured it all out?
Was it by their own volition or were they conforming with their
parents’ wishes? Maybe my parents did try to nudge me towards a
certain direction, but I was too unruly to pay attention. I had to do
things my own way, learn from my mistakes, and mature accordingly.
What matters is the kind of person you become, not how you started. If
you are honest with yourself, are a dependable teammate, and remain
down to earth, then you are fine in my view. But if you are some
obnoxious egoist who thinks that an academic title or a high social
standing makes you special, then I have no respect for you. Sod off!</p>
<p>I do not feel sleepy. I will take a walk by the coast and then head to
my friend George’s place to salute him. He runs a family business by
the seaside. It is a small club that plays music until the early
morning hours. I expect to find him there. But I will savour this
moment first. I always take off my shoes when I walk along the beach.
The sense of the waves touching my feet engenders in me a uniquely
relaxing feeling. It puts me in a contemplative mode. The sea holds
the potential for a wide range of experiences. When it is calm, you
feel safe. When it is stormy, it reminds you of its latent dangers and
of your powerlessness in the face of cosmic processes. At all times,
it triggers in you a sense of wonder. How can this all be? Can we
learn anything by shifting our attention away from the trivialities of
our quotidian affairs towards the nature all around and within us?
What will happen to our attitude if we manage to live in accordance
with our natural rhythms? I have no answers. All I can do is try and
figure something out after decades of commitment.</p>
<p>Humans have sailed the high seas for millennia. Some did it out of
necessity. Others out of greed or in pursuit of glory. And others
still with an inkling of hope that they would finally discover that
which eluded their conscience. There is something that compels us all
into action. Such is the constant of our experience. How we
rationalise it or explain it as part of our larger lifeworld is
another matter altogether. We do have a narrative about it or, at
least, a rudimentary way of framing it. Sometimes, we do not change it
and let it condition our future decisions. But there are moments when
we see through the veil to recognise that there is scope for your
remaking, at which point you venture off on the adventure of becoming
what effectively is another person. Like the waves that come in
contact with my feet, each expression will be different, each case
will have a unique constitution in how its factors are arranged, and
every one can mean something special. Thinking back to Tania and the
potential of liking or loving someone, moments are all we ever get.
The sooner we learn to have presence in our present, the lighter our
life will be.</p>
<p><em>Buffalo soldier</em> is playing in the distance. George is a force to be
reckoned with. “Hey, big bad wolf! I love the moustache you are
rocking.” I say loudly as I approach him by the DJ set. I have known
George for a couple of years. We call each other “the mafia lord”.
This is a joke that came about as we were remarking that we could be
specialising in another profession instead of tourism. “For an
intelligent guy like you to be working here, it means you are hiding
some lucrative business you do at the docks”, he told me once while
smiling through that thick facial hair of his. “I shall funnel the
proceeds through this morally unimpeachable establishment of yours”, I
added.</p>
<p>With George you have to always assume he is high on some of that good
lettuce. Otherwise, he must have fell in the pot with the magic sauce
when he was a baby, like <em>Obelix</em>. I never saw him with a frown on his
face. Nor have I ever met another person with such a seemingly
bottomless enthusiasm for what he enjoys. “You are still awake, you
little bastard? Did some mermaid pull you out of your slumber?” I
laugh without giving him an answer. I then explain how I am just
passing by, but will not be staying for a drink. He inquires in a more
serious voice about my day. I give him a thumbnail sketch of it. “Now
the real work starts at the docks”, I say in jest and wave him
goodbye.</p>
<p>There is no substitute for the experiences you gather through everyday
interactions with people. You become acquainted with a diversity of
personalities, tastes, and perspectives. This is what makes somebody
street smart as opposed to book smart. Ideally, we need both to have a
rounded appreciation of the finer points. I believe that I would not
pay as much attention to the plurality of our condition if I was to
only read about it. When I now think of the differences between us as
well as our shared nature, I bring to mind the image of George, Tania,
Andy, and Veronica. These are instantiations of a common thread that
runs through all of us. I can identify what is constant in the
multitude of our interactions, without discounting the elements of
individuation therein. I cannot connect emotionally with a book and
make jokes with it. There is no hugging or kissing it and feeling your
emotions reciprocated. Will I ever stand up for it the way I would for
my colleagues? Books will provide you with knowledge that is decoupled
from any given person or, at best, introduce you to an idol that you
piece together in a controlled fashion.</p>
<p>People here do not believe that I am a “real introvert” because they
witness how eloquent and relaxed I am when around people. I do not
seek to be with others: I enjoy my time alone, though I also have no
problem in the company of someone. What they do not realise is that an
introverted person is not necessarily shy. Nor is this personality
trait a prerequisite for social anxiety. We feel awkward when we are
forced to do something we do not like. We also are uncomfortable when
we keep pretending to be someone we are not. I have met many an
extrovert who are shy and who struggle to keep a conversation going.
Their mistake is to play a script in their head that consists of
certain rehearsed steps and which must meet concrete performance
targets to qualify as a success. The notion of it being a performance
is what undermines their efforts. You do not have to impress the
person you fancy with some spectacular demonstration of your skills.
Imagine bumping into someone and within the first few sentences you
flex about the long articles you write. It feels overdone and
insecure. Moreover, it shows you are not focused on the moment and the
person in front of you but are too obsessed with yourself.</p>
<p>The understated qualities you have are reserved for those who are
interested enough to discover them. Advertising them on your forehead
will only make you look silly. The kind of person who is invested in
learning more about you is the one you ultimately want to be with
long-term. Show the same towards them and go with the flow. If you are
uncertain that your truthfulness is not yielding results, then ask
whether you will be better off in an alternative scenario. I can only
imagine that drunken girl from earlier, who was asking for something
that she would deeply regret afterwards. Show faith in the world by
not making certain wants unconditional. There are opportunities for
fulfilment outside such boundaries. Developing tunnel vision will only
make you oblivious to them.</p>
<p>There is something to learn from the little things. I notice
Veronica’s patience and kindness. Nothing seems to upset her. I want
to be like that myself. Andy’s sheer strength inspires me to stay fit.
He never misses a day of training. I wish to do the same. While
George’s charisma tells me to not take myself too seriously. Being
street smart makes you less prone to project your biases unto others.
You will have a fairly accurate frame of reference to assess when
something is too far-fetched. Whereas a virtual view of people can
skew your expectations accordingly. You might think in terms of
stereotypes, like the tired old meme “all men/women are the same”.
They are not and this kind of mindset is not helping you deal with the
peculiarities of real people. Spend some time out there. Suspend
judgement and give others a fair chance. Then you will believe in the
results.</p>
<p>Assuming a persona is the worst thing you can do to yourself. Imagine
someone falls in love with what you are showing. What do you do next?
Do you keep the charade indefinitely? You will probably be exposed
sooner or later. Or do you reveal your true colours, which will most
probably make the other person feel deceived and ensnared? There is
this inane concept among some of the more insecure guys I have met,
which prescribes how they should be a “real man” who is strong above
all else, keeps his girlfriend/wife at bay by being dominant, and
stuff like that. They may include some common sense points, like being
responsible, but there is nothing inherently gendered about
those—are there no responsible women, for instance? I then think of
George and his family of six to quickly realise how preposterous all
this role-playing is. George is neither strong nor domineering. He is
as sweet as it gets. What I think his wife Yolanda likes about him is
the same quality a friend is drawn to: his authenticity and all that
is predicated on it.</p>
<p>A friend and a romantic partner are fundamentally the same in this
regard. You do not befriend others through conquest. Using brute force
will only yield servants or accomplices to some unscrupulous cause,
but none of those will care about you as a person. You as a conqueror
will remain deeply isolated while being in the midst of your flunkies.
This shall be your punishment. Why would you then get a partner that
way? And why would you ever want to be a tyrant towards someone you
should be loving and receiving love from? It is fine to be indomitable
and have the stamina to operate as a one-man-army, though what matters
the most is the person you are. Show respect and you will have it
reciprocated in spades. Be a bully and you shall always suffer
profoundly as a victim of the deep-seated insecurity you never chose
to confront. Make no mistake: these are gender-agnostic magnitudes.
Let not the appearance of success deceive you. Money or fame are no
substitute for peace and the stability it brings.</p>
<p>I guess I am on a roll now. Maybe they should be doing more of those
weddings! I am not far from my apartment. This introspection has been
benign. I think it paves the way for encounters that require such
preparatory work. It all boils down to the “no problem; no stress”
outlook I told Andy. There may not be literal mermaids out there,
though those mythical creatures are our way of recognising the
mysteries this world has in store for us. We cannot pretend to know
everything and, above all, we must not assume that our desires, the
way we can formulate them in present time, are necessarily the only
ones that can yield us what we need. These are my thoughts as I feel
the breeze on this peaceful night. The sea is never the same. Even if
you have visited every shore, there is always something new to be
learnt; something awesome to be experienced; something special to be
acquired and something, still, to be left to its own fate. There may
come a day, friend, when you meet someone your dreams have not
anticipated.</p>" nil nil "55ca4ca4fe595fbecc2794bf9a1f1c1f") (1 (26569 29903 447867 178000) "https://protesilaos.com/books/2024-09-27-amber-hope/" "=?utf-8?Q?Amber=E2=80=99s?= hope" nil "Fri, 27 Sep 2024 00:00:00 +0000" "<p>What follows is a work of fiction. It has no facts, yet it speaks the
truth. Enjoy!</p>
<hr />
<p>“Amber will arrive soon. Her job is to paint the furniture you have
been polishing.” This is how I first learnt of Amber. An expat with a
care-free personality who chose to work for fun. Amber’s family were
well-off and she grew up having everything she had ever asked for. She
was not spoilt though, much to my surprise. Her relaxed demeanour was
profound, although I was initially sceptical of it. I suspect she had
the kind of experiences that show you how absurd your entitlement is.
Or, perhaps, having all your wishes granted teaches you how to be more
selective with what you are voicing as a desire… I cannot tell.</p>
<p>I had always had a negative view of rich kids. The ones I met in my
formative years were obnoxious and maladjusted. They would ruin our
games and make it all about themselves. What Amber taught me through
her deeds and outlook is that my impression was wrong: correlation is
not causation. Those kids were indeed rich, though it is not
necessarily their materially comfortable upbringing that turned them
into bullies. It could be that they were neglected by their parents,
who were too busy raising the company’s stock instead of spending
quality time with their children. Or they had been overly protected as
little kids and did not socialise with us common folk, making it hard
for them to eventually fit in. It is so easy to pass judgement on
someone. It saves us from the hard work of giving them the benefit of
the doubt while acknowledging that our information about them is
incomplete.</p>
<p>My first encounter with Amber gave me mixed feelings. She appeared
friendly though I did not think particularly highly of her. My bias
was strong at the time. I mistook her attitude for the kind of
ne’er-do-well that is glorified in American TV series. You know, those
where the protagonists are only good at spending papa’s money on
vanity projects. She seemed arrogant to me, as if she was saying “I
work for my entertainment, while you work to survive, losers!” Those
were just my thoughts. Amber never behaved with smugness nor
mistreated anyone. Yet all I could imagine was how she would reveal
her deep-seated contempt for us bread-winners.</p>
<p>One’s prejudices say a lot about their own person. In my case, I was
fundamentally ashamed of my financial predicament. Here I was, a metic
with no place to go and with no end goal in life. My friend, Craig,
took me in at his place, guaranteeing shelter and food over the
short-term. I could stay for three or four months, while building up
the skills necessary to go my own way in this country. I did start
learning the local tongue and was confident that I could make the next
step. I proved as much when I did several weekend-long gigs for Peter,
the guy who ran a restaurant that served soup to hikers. I made myself
useful by doing a lot of the donkey work around the establishment and
then as a waiter. Same for my attitude towards Craig. On weekdays I
was working for free to renovate some of the rooms at the house. This
was my way of paying for the food and accommodation I was receiving.</p>
<p>This was an old building. The walls were badly discoloured, the
wallpapers had to be replaced, and the floor needed to be broken and
redone. My experience in construction work proved to be a valuable
asset. Instead of just doing some minor tasks here and there I ended
up assuming most of the workload. I was labouring non-stop from early
in the morning until late in the evening. And because I only eat a
meal a day, I did not pause for lunch. I did it with alacrity out of a
sense of duty towards Craig; duty that was ultimately not
reciprocated.</p>
<p>Early on, my friend showed signs of hostility towards me. One day I
worked extra hard, wielding heavy machinery for many hours. Holding
those power tools exerts a lot of pressure on the body. You almost
feel paralysed afterwards. The one I was using was especially tough
for the forearms. I did it without complaint, as usual. The added toll
on my body meant that I needed plenty of food to recover. Craig told
me there is some pasta ready for me upstairs. “You can have it all”,
he reassured me. And so I did, devouring what probably was a generous
serving for two people. I ended up regretting it, when my friend
became passive aggressive about it: “wow, how am I supposed to feed
you!”, he exclaimed while insisting it was a joke. It was not meant to
trigger laughter though: I noticed more of these kinds of remarks as
time went on, but I fainted ignorance. I knew our dynamic was no
longer the same. I would leave peacefully.</p>
<p>It is why I had decided to abort this plan and start anew in a place
that would allow me to begin from scratch. I had had enough with my
pathetic attitude of tacitly seeking the validation of others. Instead
of them recognising my hard work, they would routinely underappreciate
it and ultimately abuse my strong sense of loyalty towards them. Not
anymore! If one person mistreats you, they probably are a bully, but
if everybody does it, then you are the problem. Such was the
conclusion I had arrived at. This time, I was poised to make things
work my own way.</p>
<p>With great sadness I had learnt that circumstances change and people
are not who they used to be. The Craig I once knew and spent long
hours with was no more. It had been years since we had last met and a
lot had happened in the meantime. He got married to a woman he did not
fancy, yielding to pressure from his family. I could tell that he was
not happy. The natural enthusiasm he had was snuffed out. He had
become a husband and father, whose sole concern was to make money;
money which they did not really need as they already had plenty, with
no outstanding debts whatsoever. I never blamed Craig, though I knew
it was over for our friendship. It had reached a natural terminus and
an amicable one at that.</p>
<p>This may also be why I did not want to give Amber a fair chance. I
needed to withdraw, to not be vulnerable to anyone anymore, to make an
exit before I would grow to love someone again. Those who are
traumatised develop a sense of ownership towards their wounds. They
identify strongly with them and cling on to them without realising it.
This was my situation. I was not prepared to let go of who I had
become and was thus choosing to remain a victim. Change takes time;
time which I did not have back then to share it with those in my
midst..</p>
<p>The tickets were booked: I was flying on a Tuesday. I paid for them
with money I earned while working for Peter. The restaurant was a busy
place. It attracted locals from the surrounding regions as well as
tourists from other countries. The hill it was located on was
picturesque. There was a river flowing at its base, crossing a dense
forest. In the distance, there were taller mountain peaks, which were
covered in snow while I was there.</p>
<p>Peter would venture into the forest frequently to collect mushrooms or
hunt big game, depending on the season. He was a man of action and
seemed to know lots of survival skills. I used to have a negative
opinion about hunters, thinking that all they did was recklessly kill
wild animals. Peter was conscientious though. He never bragged about
his exploits. “I do it because I have to”, he told me once, “nature
made it such that we have no choice but to consume life for
sustenance.” I was about to interrupt him, to point out that we do
have a choice about the types of food we eat, but I let him complete
his train of thought: “plant or animal, both are life, and all we do
is decide where to draw the lines of what is acceptable.” I remained
silent in the face of his wisdom. It is those real-life scenaria you
do not learn about in academic circles. Would I be right to
pontificate that his rationale was misguided, given that I had never
eaten anything non-living myself? What even is non-life? I could not
tell. I recognised that plants are living organisms as well. The more
we experience in this world, the better we understand that our
simplistic model of good versus evil distorts what the reality is.
Things are nuanced. Those who are quick to judge are consistently
proven to be ignorant.</p>
<p>Peter was a man of discipline and hard work. He expected excellence
from his peers, which I admired about him. There was no idle moment at
the restaurant. We would start work at six in the morning, when it was
still dark outside. Peter had shown me how to wield an axe. I would
use it to cut wood for the fireplace. He would prepare the kitchen and
then we would both set up the tables. The first guests would arrive at
around eleven o’clock. Other than soup, we served cheese, sausage, and
fruit, as well as a wide range of beverages. At noon is when it would
get really busy. People were hungry and we were running up and down to
serve everybody as fast as we could. Peter was a one-man-army: he
would prepare the soup and then serve the tables. The work was over
once the supplies ran out. Peter was thus confirming he was not
greedy. He did not want to toil all day just to earn a little bit
extra. The goal was to earn enough to make ends meet, yet still
preserve a reasonable work-life balance. This is a rare quality in
people. Most will rationalise their obsession with money and overwork
themselves to death or chronic illness. Or, if it is not out of
obstinacy and inertia, they are forced to do it because of their
indebtedness towards some banking institution. At any rate, it is not
nice.</p>
<p>I could not put my communication skills to good use at the restaurant.
I did not know the language yet, though I had picked up a few words.
Some basic expressions and plenty of gesticulating will often suffice.
I could make sense of what was being conveyed and was aided by the
fact that our menu was straightforward. People are alike regardless of
cultural and individual differences. Our evident diversity does not
run counter to our shared nature. We value peace, love those close to
us, feel connected to some place, and wish to have a good time doing
leisurely activities while expressing our self in earnest. If we do
not have those, we seek them. Else we suffer in uneasiness. Each of us
needs a place to call “home”: a safe space for authentic expression.</p>
<p>I told Peter I was leaving the country. He seemed bewildered, given
how nicely I had adapted in such a short time. The locals were kind to
me and I was helpful to them, always smiling and eager to improve. “If
you stay here, I am sure there will be plenty of opportunities for
you. Someone with your work ethic cannot get lost. My door is always
open if you ever return.” Those were his words. Perhaps he was right,
though I had already made up my mind. “Sometimes we have to take a
step back in order to move forward”, I pointed out while thanking him
for the trust he had put in me and for the good moments we shared
together, busily feeding the mountaineers. We shacked hands and I
left, never to see him again.</p>
<p>Life moves on. All we can do is be in the present. There was a week
left. I learnt about Amber shortly after I had bought the plane
tickets. She arrived at the place the next morning. We had until
Monday to finish the renovations. It was an ambitious deadline, though
we were confident we would meet it. I introduced myself to Amber
without revealing much about my background. I was just the labourer
who would handle the heavy duty tasks. She told me about herself and
her family. It was then when I learnt that she was not working to earn
a living. “Was she fooling around? Is this some peculiar form of
irresponsibility?” I wondered in confusion. The model of reality I had
was proving to be defective. But I needed to learn more before I could
figure out what was amiss.</p>
<p>“Which colour do you prefer? I fancy the pink one. Just imagine it
with a touch of gold on the sides. So pretty!” I was not sure why the
painter would ask an amateur like myself about such a technical issue.
Back then I was of the opinion that only specialists are entitled to
an opinion on their subject matter and everyone else should remain
silent. I now consider this inaccurate, incorrect, or outright
dangerous, depending on the subject. “Pink feels too opinionated to
me. I would opt for this faint green instead. It blends nicely with
the white colour of the walls. Add that dark blue if you need an
accent. They give a more neutral vibe, like the nearby woods.” I had
never painted anything, but spoke my mind fearlessly without hedging
my statements. She seemed to appreciate it, contrary to my expectation
that she would take offence at someone challenging her expertise. In
truth, it was not a challenge at all, but a different perspective.
Amber was asking the question exactly because of her profound
knowledge of the craft: colour is subjective, which makes its truth
more complex, though not less truthful.</p>
<p>She ended up implementing my preference, adding her own spin to it.
She had brought with her a comprehensive collection of pigments, from
reds to magentas, blues, and greens. There was a bit of everything. I
saw her match olive green with teal, yellow with turquoise, and some
variations on the combination I had suggested. I was impressed when I
discovered that she did not use pink at all. She seemed so excited
about that colour scheme! It takes courage to change your opinion.
Amber showed she had that intellectual capacity. I was expecting her
to act like a spoilt child, due to my bias against rich kids, but
there she was proving how magnanimous one can be.</p>
<p>The first day of our collaboration, if I may call it such, was largely
uneventful. I was handling some power tool and barely uttered a word
all day. She was in the other room, painting a piece of furniture. At
noon, she interrupted me briefly to ask if I would join her for lunch.
I explained my one meal policy and thanked her for the offer. In
truth, I was just hiding, protecting those traumas like a prised
possession. A couple of hours later, she called me again to ask if I
wanted to take a coffee break. I kindly declined it, citing that I was
in the process of an extremely demanding task. Again, this was but an
excuse: I could put the tool down for thirty minutes and resume what I
was doing later. But no, that would make me vulnerable by potentially
getting to like this person.</p>
<p>The next day was basically the same. I started work before she had
even gotten out of bed and was done long after she had left for
dinner. I told her again that I am okay without lunch and how those
coffee breaks come at inopportune moments. In hindsight, I have a
clear idea of what I was doing, though in the moment I was believing
those words. Though there were some cracks in that hardened carapace I
had developed and I could begin to sense that something was not right.</p>
<p>The third day went largely the same way, as did the fourth one except
for its night. A friend of Amber had ordered pizza dough and all the
accompanying ingredients. We were to make our own pizza for dinner.
Although I would rather not join in the fun, I was starving and really
needed a full meal. Pizza is not healthy, when prepared the usual way,
though I could salvage it in this case. The portions were enough to
provide for one large pizza per person. I was confident I would eat
mine without issues. As I was preparing my serving, Amber asked me if
I was willing to share my meal with her. Why would she pose such a
question, given there was plenty of food for everyone? I agreed to her
offer, mixed in the ingredients she preferred, baked it, and then sat
down with her for the duration of our meal.</p>
<p>At the table we got to know each other. It started with her telling me
how she was not hungry and wanted to not waste any food. I found that
laudable and silently admitted to myself that I was wrong about her. I
knew how poor people tend not to be eclectic about what they eat, as
they are well aware that beggars cannot be choosers. But for this
well-off woman to treat resources the same way I would was unexpected.
My prejudice had conditioned me to think that she would rather make a
lavish dish only to realise she did not want to eat it, after all, and
then throw it away without hesitation. Perhaps we judge others because
we do not want to pay attention to our condition. By pointing a finger
at them, we take it away from our person. In the process, we assume to
be faultless as arbiters of morality and appease our conscience
accordingly. Such is our dissonance.</p>
<p>I could not tolerate the injustice I was bringing upon her. “I have to
make a confession”, I said. Her eyes sparkled in curiosity, as if to
acknowledge that there was more to me than a silent worker. “I
misjudged you. When you said you are not working to make a living, I
thought you were being childish. Such was my narrow-mindedness. Now I
have learnt that you are pursuing your passion.” With a grin on her
face, she noted how she was understood: “yeah, I do this because I
love it. Plus, I get to meet interesting people and visit new places.”
She did not comment on my initial value judgement. I guess this was
her way of passing it off as part of the process towards understanding
others. We will err many times before we eventually figure out how to
interpret phenomena and deal with the actuality of the case.</p>
<p>“I have travelled around the world. Everywhere I go, I discover
something new about myself. Recently, I developed a keen interest in
old artefacts. There are many at the cemetery nearby. I even found
this rusty shield in the fields. Farmers unearth them every now and
then. It must be several centuries old, probably from a skirmish that
took place here.” She kept revealing more about her personality and
interests, as I listened attentively. “Do you want to join me one of
these days? I will show you how many cool things we can find!” I was
taken aback, as I had never expressed any desire to learn more about
her penchant for archaeology. “Let us finish what we are here for and
then we will see”, I remarked as we carried on with our dinner. “It
sounds intriguing”, I added.</p>
<p>I did not disclose the fact that I had booked a one-way flight and was
about to leave. Amber was turning out to be a fine person, though I
was still afraid that I might actually change my mind about my
departure. I had to leave to become who I needed to be. Feeling a
connection to Amber, to Peter, or anyone else would upset my plans,
possibly condemning me to many more years of non-self-actualisation. I
could no longer afford this state of victimhood. I was ready to
sacrifice any potentially fulfilling relationships to remake myself.</p>
<p>The half pizza was not sufficient to sate me, but I did not complain
about it. I was happy to meet this multifaceted person and to be
proven wrong about my assumptions. I did not want to waste food
either. As soon as we were done, I wished everybody a pleasant night
and retreated to my room. I went to bed uncertain and troubled about
my immediate future. I was about to perform a huge leap of faith. All
I could do is trust that I had made the right choice and would not
come down crashing. Knowing that everything was set in motion, I did
not think it further. What is to happen, shall happen. I readied
myself for another day of intense work. And so it was.</p>
<p>Amber tried to approach me many times after our shared meal, but I
kept avoiding her, giving her just enough attention to not appear
rude. Maybe I was impolite despite my best intentions, but I had to
maintain some distance. Were I to befriend her or, worse, fall in love
with her, I would regret it for the rest of my life. Perhaps I was
just too pessimistic about the potential of others to be instrumental
in my process of self-discovery. However, I knew that counterfactual
reasoning was not going to be helpful. I could only pick a course and
commit to it unequivocally, learning whatever secrets it had in store
for me. Whatever regrets I could have had, I did not let them grow and
take hold. I would not be led astray.</p>
<p>The morning of my flight, Amber had woken up earlier than usual, as if
she knew the end was near. Could Craig have told her? She was already
having her breakfast while brewing a cup of coffee. I could not avoid
her this time. It was the one and only case we had a drink together,
despite the numerous opportunities on each day. “Where are you
going?”, she asked as soon as she noticed my suitcase. Typical of my
behaviour towards her, I responded in a cryptic fashion: “I have
important business to tend to”. Then I smiled and changed subject:
“wow, this coffee has such a rich aroma!” There are many reasons why
people smile. One of them is to hide their suffering and obfuscate
their inner conflict. Amber must have known this all along. She never
took my behaviour as a personal insult and remained friendly towards
me. “Indeed, it is a nice blend”, she said as she smiled back at me.
We can be self-absorbed at times, oblivious to the woes of others. I
would no longer think that I am the only one who is struggling. Each
person has their own troubles. That smile may have been a facade, like
the one I was displaying. I will never know.</p>
<p>“We cannot force things to happen. You will only be available when you
are ready. Until then, all you can do is wish for the best and try
what you can. I had hoped for a different outcome.” These were her
words. I could sense she was disappointed, either in me or in the
prevailing conditions that compelled me into action. But I could not
understand why she would care about a vagabond like myself. I had not
given her the attention she deserved, did not treat her as a friend
even though I could, and did not tell her where I was heading to.
Nobody knew that important detail and I would not trust her with it
either. So why would she even bother? I did not have the courage to
verbalise that question. I knew then that all would be over in an
hour. Our paths would diverge and I would find a new beginning away
from everything I had grown accustomed to.</p>
<p>“I forgot to tell you that pink and gold is a pretty combination. I
would actually experiment with some deep magenta as a third hue. Or a
shade of red to produce a striking impression!” I uttered those words
out of an appreciation for her commitment to the activity that
fulfilled her. “I will remember this for my next project”, she noted.
“Good. There will be more of them”, is all I could add.</p>
<p>Perhaps Amber could tell by the way I stared into her eyes that I was
holding something back. In a different world, I would have expressed
my feelings in earnest. Yet there is only this world to be lived, this
trail to be traversed, and these moments to be experienced, with or
without others. The people and situations we like the most may not be
available when we are. Such is our predicament. There is no rewind
button for us to replay events. Nor is there a script editor, where we
can modify some parameters to have everything arranged the way that
best suits our whimsy. We learn from our choices and, if we are lucky,
we will get to choose again. Pain is benign and formative in this
regard. It helps us reach clarity about what our needs and wants are.
By pushing against our limitations, we might discover that it often is
our mindset that holds us hostage, partly or fully, to states of
affairs that are unfavourable to our being. We may then trust in our
devices to start anew. Sometimes, this means begrudgingly boarding
that plane in order not to lose sight of the goal we have set for
ourselves.</p>
<p>Ever the professional, I extended my hand, ready to bid her farewell.
She extended hers, without saying anything. We shacked hands and,
after we let go, we spontaneously hugged each other. I did not
establish eye contact afterwards, out of fear that I would jeopardise
everything I was committed to. My plane was waiting for me. I had to
write my own destiny. I turned my back to her and headed for the door.
Craig was waiting for me at the threshold. He would drive me to the
train station, which was five minutes away. The rest was up to me.
“Take care”, I said out loud, “keep adding colour to your life and
that of others.” At the train station, I hugged Craig for the last
time. I forgave him, even though I knew we could not be friends
anymore. Just as I had to act a certain way, so was he restrained by
the prevailing conditions.</p>
<p>I wish to believe that Amber hoped for the same thing I do: that we
experience each other unencumbered by grand schemes and peremptory
rules. Will this ever happen?</p>" nil nil "284643e650d3a57ccd2f86cc605b067e")))