;; -*- coding: utf-8-emacs; -*-
(setq nnrss-group-data '((11 (26590 50398 975867 335000) "https://eli.thegreenplace.net/2025/understanding-numpys-einsum/" "Understanding Numpy's einsum" nil "Sat, 22 Mar 2025 06:01:00 -0700" "<p>This is a brief explanation and a cookbook for using <a class=\"reference external\" href=\"https://numpy.org/doc/stable/reference/generated/numpy.einsum.html\">numpy.einsum</a>,
which lets us use <a class=\"reference external\" href=\"https://en.wikipedia.org/wiki/Einstein_notation\">Einstein notation</a> to evaluate operations on
multi-dimensional arrays. The focus here is mostly on einsum's <em>explicit</em> mode
(with <tt class=\"docutils literal\"><span class=\"pre\">-></span></tt> and output dimensions explicitly specified in the subscript string)
and use cases common in ML papers …</p> (...)" nil nil "b5305ca91de6be5f97d8c43484310ee3") (10 (26588 11778 832167 784000) "https://eli.thegreenplace.net/2025/making-any-integer-with-four-2s/" "Making any integer with four 2s" nil "Sat, 22 Feb 2025 14:53:00 -0800" "<p>There's a cute math puzzle that can be interesting to folks on very
different levels:</p>
<blockquote>
Given exactly four instances of the digit 2 and some target natural number,
use any mathematical operations to generate the target number with these 2s,
using no other digits.</blockquote>
<p>Some examples can be done by …</p> (...)" nil nil "60cc6e83e113a0b906609c81a79a4701") (9 (26588 11778 831978 266000) "https://eli.thegreenplace.net/2025/benchmarking-utility-for-python/" "Benchmarking utility for Python" nil "Tue, 18 Feb 2025 15:50:00 -0800" "<p>Go programmers have it pretty good with the benchmarking capabilities provided
by the standard library. Say we want to benchmark a dot product
implementation:</p>
<div class=\"highlight\"><pre><span></span><span class=\"kd\">func</span><span class=\"w\"> </span><span class=\"nx\">dotProduct</span><span class=\"p\">(</span><span class=\"nx\">a</span><span class=\"p\">,</span><span class=\"w\"> </span><span class=\"nx\">b</span><span class=\"w\"> </span><span class=\"p\">[]</span><span class=\"kt\">float32</span><span class=\"p\">)</span><span class=\"w\"> </span><span class=\"kt\">float32</span><span class=\"w\"> </span><span class=\"p\">{</span><span class=\"w\"></span>
<span class=\"w\">  </span><span class=\"kd\">var</span><span class=\"w\"> </span><span class=\"nx\">dot</span><span class=\"w\"> </span><span class=\"kt\">float32</span><span class=\"w\"></span>
<span class=\"w\">  </span><span class=\"k\">for</span><span class=\"w\"> </span><span class=\"nx\">i</span><span class=\"w\"> </span><span class=\"o\">:=</span><span class=\"w\"> </span><span class=\"k\">range</span><span class=\"w\"> </span><span class=\"nx\">a</span><span class=\"w\"> </span><span class=\"p\">{</span><span class=\"w\"></span>
<span class=\"w\">    </span><span class=\"nx\">dot</span><span class=\"w\"> </span><span class=\"o\">+=</span><span class=\"w\"> </span><span class=\"nx\">a</span><span class=\"p\">[</span><span class=\"nx\">i</span><span class=\"p\">]</span><span class=\"w\"> </span><span class=\"o\">*</span><span class=\"w\"> </span><span class=\"nx\">b</span><span class=\"p\">[</span><span class=\"nx\">i</span><span class=\"p\">]</span><span class=\"w\"></span>
<span class=\"w\">  </span><span class=\"p\">}</span><span class=\"w\"></span>
<span class=\"w\">  </span><span class=\"k\">return</span><span class=\"w\"> </span><span class=\"nx\">dot</span><span class=\"w\"></span>
<span class=\"p\">}</span><span class=\"w\"></span>
</pre></div>
<p>All we need to do is …</p> (...)" nil nil "1eeab1d794cb72d28978cd12b1f9dcea") (8 (26588 11778 831684 137000) "https://eli.thegreenplace.net/2025/decorator-jits-python-as-a-dsl/" "Decorator JITs - Python as a DSL" nil "Mon, 03 Feb 2025 06:22:00 -0800" "<p>Spend enough time looking at Python programs and packages for machine learning,
and you'll notice that the \"JIT decorator\" pattern is pretty popular. For
example, this JAX snippet:</p>
<div class=\"highlight\"><pre><span></span><span class=\"kn\">import</span> <span class=\"nn\">jax.numpy</span> <span class=\"k\">as</span> <span class=\"nn\">jnp</span>
<span class=\"kn\">import</span> <span class=\"nn\">jax</span>
<span class=\"nd\">@jax</span><span class=\"o\">.</span><span class=\"n\">jit</span>
<span class=\"k\">def</span> <span class=\"nf\">add</span><span class=\"p\">(</span><span class=\"n\">a</span><span class=\"p\">,</span> <span class=\"n\">b</span><span class=\"p\">):</span>
<span class=\"k\">return</span> <span class=\"n\">jnp</span><span class=\"o\">.</span><span class=\"n\">add</span><span class=\"p\">(</span><span class=\"n\">a</span><span class=\"p\">,</span> <span class=\"n\">b</span><span class=\"p\">)</span>
<span class=\"c1\"># Use \"add\" as a …</span></pre></div> (...)" nil nil "bf6ff8d3a72f387f709aa27b81fae2c4") (7 (26588 11778 831422 286000) "https://eli.thegreenplace.net/2025/reverse-mode-automatic-differentiation/" "Reverse mode Automatic Differentiation" nil "Mon, 13 Jan 2025 19:02:00 -0800" "<p>Automatic Differentiation (AD) is an important algorithm for calculating the
derivatives of arbitrary functions that can be expressed by a computer program.
One of my favorite CS papers is
<a class=\"reference external\" href=\"https://arxiv.org/abs/1502.05767\">\"Automatic differentiation in machine learning: a survey\"</a> by
Baydin, Perlmutter, Radul and Siskind (ADIMLAS from here on).
While this post attempts …</p> (...)" nil nil "70b864300d4b9eea8c43838be45651ad") (6 (26588 11778 831211 371000) "https://eli.thegreenplace.net/2024/summary-of-reading-october-december-2024/" "Summary of reading: October - December 2024" nil "Tue, 31 Dec 2024 20:05:00 -0800" "<ul class=\"simple\">
<li>\"Dr. Euler's Fabulous Formula\" by Paul J. Nahin - a kind of sequel to the
previous book I read by this author (\"An imaginary tale\"). Here he collected
all the interesting mathematical explorations that didn't make the cut for
that book. I found this one to be much closer to a …</li></ul> (...)" nil nil "89f9dce0913c7f12abdcd8814f478ab3") (5 (26588 11778 831019 141000) "https://eli.thegreenplace.net/2024/implementing-raft-part-5-exactly-once-delivery/" "Implementing Raft: Part 5 - Exactly-once delivery" nil "Wed, 18 Dec 2024 06:01:00 -0800" "<p>This is Part 5 in a series of posts describing the Raft distributed consensus
algorithm and its complete implementation in Go. Here is a list of posts in the
series:</p>
<ul class=\"simple\">
<li><a class=\"reference external\" href=\"https://eli.thegreenplace.net/2020/implementing-raft-part-0-introduction/\">Part 0: Introduction</a></li>
<li><a class=\"reference external\" href=\"https://eli.thegreenplace.net/2020/implementing-raft-part-1-elections/\">Part 1: Elections</a></li>
<li><a class=\"reference external\" href=\"https://eli.thegreenplace.net/2020/implementing-raft-part-2-commands-and-log-replication/\">Part 2: Commands and log replication</a></li>
<li><a class=\"reference external\" href=\"https://eli.thegreenplace.net/2020/implementing-raft-part-3-persistence-and-optimizations/\">Part 3: Persistence and optimizations</a></li>
<li><a class=\"reference external\" href=\"https://eli.thegreenplace.net/2024/implementing-raft-part-4-keyvalue-database/\">Part 4: Key …</a></li></ul> (...)" nil nil "97ae1dcf78307776665ac39bb17f4775") (4 (26588 11778 830741 726000) "https://eli.thegreenplace.net/2024/gomlx-ml-in-go-without-python/" "GoMLX: ML in Go without Python" nil "Fri, 22 Nov 2024 07:00:00 -0800" "<p>In the <a class=\"reference external\" href=\"https://eli.thegreenplace.net/2024/ml-in-go-with-a-python-sidecar/\">previous post</a>
I talked about running ML inference in Go through a Python sidecar process. In
this post, let's see how we can accomplish the same tasks without using Python
at all.</p>
<div class=\"section\" id=\"how-ml-models-are-implemented\">
<h2>How ML models are implemented</h2>
<p>Let's start with a brief overview of how ML models are …</p></div> (...)" nil nil "88a0ad9caa34bc291260d0eba18a7aba") (3 (26588 11778 830462 454000) "https://eli.thegreenplace.net/2024/ml-in-go-with-a-python-sidecar/" "ML in Go with a Python sidecar" nil "Mon, 11 Nov 2024 06:13:00 -0800" "<p>Machine learning models are rapidly becoming more capable; how can we make
use of these powerful new tools in our Go applications?</p>
<p>For top-of-the-line commercial LLMs like ChatGPT, Gemini or Claude, the models
are exposed as language agnostic REST APIs. We can hand-craft
HTTP requests or use client libraries (SDKs …</p> (...)" nil nil "97ac8ee9898fcd841bf3d58fd542d9e2") (2 (26588 11778 830252 0) "https://eli.thegreenplace.net/2024/ranging-over-functions-in-go-123/" "Ranging over functions in Go 1.23" nil "Sat, 02 Nov 2024 06:35:00 -0700" "<p>Go 1.23 shipped with a new major feature: ranging over functions (also known
as \"iterators\"), per <a class=\"reference external\" href=\"https://github.com/golang/go/issues/61405\">this proposal</a>.
This feature is nicely covered in the official <a class=\"reference external\" href=\"https://go.dev/blog/range-functions\">Go blog post from August</a>.</p>
<p>This article is a rewrite of <a class=\"reference external\" href=\"https://eli.thegreenplace.net/2023/preview-ranging-over-functions-in-go/\">my older post</a>
that described this feature when it was still in …</p> (...)" nil nil "83ecbd5df7ca44b550ab52ac57f6fd56") (1 (26588 11778 830016 793000) "https://eli.thegreenplace.net/2024/bloch-sphere/" "Bloch sphere" nil "Tue, 29 Oct 2024 16:10:00 -0700" "<p>When learning the basics of quantum computing, the <a class=\"reference external\" href=\"https://en.wikipedia.org/wiki/Bloch_sphere\">Bloch sphere</a>
comes early on as a visualization technique of quantum states. It shows the
state of a single qubit as a point on this sphere:</p>
<img alt=\"Bloch sphere showing kets 0 and 1 in the usual places\" class=\"align-center\" src=\"https://eli.thegreenplace.net/images/2024/bloch-with-kets-01.png\" />
<p>This post explains how the Bloch sphere works and also <em>why</em> it works.</p>
<div class=\"section\" id=\"mapping-4-dimensions-onto-a-sphere\">
<h2>Mapping 4 dimensions …</h2></div> (...)" nil nil "4b8c36c7545174683129335da0697f39")))