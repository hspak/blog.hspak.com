---
title: "Hugo"
date: 2018-08-18T15:36:46-07:00
description: New blog introduction, written in Hugo
---

Welcome to my third blog rewrite. The stack consists of:

- Hugo
- GitHub Pages
- Cloudflare

[Hugo](https://gohugo.io/) is a static site generator written in Go. It's a
singly binary (thanks Go!) that includes an easy-to-use CLI, an HTTP server with
live-reloading, a lot of functionality out-of-the-box. For those already using
Jekyll, I don't think there's any feature compelling to move unless you're
looking to re-write your blog stack (especially considering GitHub has first
class support for Jekyll).

Since I've last deployed my blog to Github Pages, they [support
HTTPS](https://help.github.com/articles/securing-your-github-pages-site-with-https/)!
This is great news and there's really no reason to not have TLS enabled for any
static site hosted off of GitHub pages. My only wish is SAN support so I could
support both *www.hspak.com* and *[hspak.com](https://hspak.com)* for example. I
can't enable full TLS without it (more on that below).

With native support for HTTPS in pages, some may be wondering why bother pulling
in Cloudflare. To start, it's free. They provide some high level analytics,
lower latency around the world (probably?), and auto minified content/size
optimized images. As an added bonus, I can enable **Full (strict) mode** for TLS
which means Cloudflare expects the origin to be serving TLS with a valid
certificate, unlike the **Flexible mode** that mode people used back in the day
when GitHub pages with HTTP only.

I've setup my [GitHub repo](https://github.com/hspak/blog.hspak.com) so that the
**master** branch hosts my Hugo workspace and the **gh-pages** branch hosts the
Hugo generated content. GitHub supports several different options for
where you want GitHub to serve your files (master branch, gh-pages, docs/
folder) and I find that this setup works best for me. YMMV.

All this means that with a single Git commit, I get an infinitely\* scalable
end-to-end encrypted static blog. What a time we live in, right?

\* :)
