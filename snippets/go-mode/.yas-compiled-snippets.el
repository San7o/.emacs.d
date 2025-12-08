;;; "Compiled" snippets and support files for `go-mode'  -*- lexical-binding:t -*-
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("p" "fmt.Println(\"$0\");" "println" nil nil nil "/home/santo/.emacs.d/snippets/go-mode/println" nil nil)
                       ("mit" "// SPDX-License-Identifier: MIT\n// Author:  Giovanni Santini\n// Mail:    giovanni.santini@proton.me\n// Github:  @San7o\n$0" "mit-spdx" nil nil nil "/home/santo/.emacs.d/snippets/go-mode/mit-spdx" nil nil)
                       ("MIT" "//\n// MIT License\n//\n// Copyright (c) 2025 Giovanni Santini\n//\n// Permission is hereby granted, free of charge, to any person obtaining a copy\n// of this software and associated documentation files (the \"Software\"), to deal\n// in the Software without restriction, including without limitation the rights\n// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n// copies of the Software, and to permit persons to whom the Software is\n// furnished to do so, subject to the following conditions:\n//\n// The above copyright notice and this permission notice shall be included in\n// all copies or substantial portions of the Software.\n//\n// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n// SOFTWARE.\n//\n\n$0" "mit" nil nil nil "/home/santo/.emacs.d/snippets/go-mode/mit" nil nil)
                       ("hello" "package main\n\nimport (\n	\"fmt\"\n)\n\nfunc main() {\n	fmt.Println(\"Hello, World!\")\n}" "hello" nil nil nil "/home/santo/.emacs.d/snippets/go-mode/hello" nil nil)))


;;; Do not edit! File generated at Mon Dec  8 17:04:53 2025
