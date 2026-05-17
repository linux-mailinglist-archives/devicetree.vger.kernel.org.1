Return-Path: <devicetree+bounces-299054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMGOHjk8CmrtxwQAu9opvQ
	(envelope-from <devicetree+bounces-299054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 00:07:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D192C564224
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 00:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3360302ED4B
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 22:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFBCE3382DE;
	Sun, 17 May 2026 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIVba/MY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC162FF675;
	Sun, 17 May 2026 22:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779055552; cv=none; b=VcKwWn30WEDUqX80Rw5p2h+qyiO1Uhb0ug3y3DGUZRzJ1xY4QxlU6qHTSinwLwjWoCXETvyKWyd7pQuB2uQT3C6ZPSlWKzw8FTSyTv1npTbP2ZoLgIZgavmchJYd5ycQe1ptV2hSpy6G3poMRW77mQsQMsoVPaLGOvAddMT9Wl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779055552; c=relaxed/simple;
	bh=BRILVZpS9VkFAB2xnW44fWifhW6ccgoJK3y1/WpFY+s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GeidZDR8x+WxjhRha88is8+D2SB8ux/yaGsF67IzhTRk1WXvj5RTKvLbBNcc0lnOg8phnYlIbQWEbzpx3xIMM6CiOLmXiEqYM/zjvvfq1GShfmzVS6MiQtNlWdZ+H3ARo85c8Zox/3VoHDhAwOLx3u6J6nn4VV8wGTY+1q+R4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIVba/MY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26FF6C2BCB0;
	Sun, 17 May 2026 22:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779055552;
	bh=BRILVZpS9VkFAB2xnW44fWifhW6ccgoJK3y1/WpFY+s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eIVba/MY+/bgU5fKwzJFqAx6deDUmD5MkjqY7YEfkVOIYjA/OSnpp59Kj+2AWzrOM
	 Oef/3YpCn25M8zYWlA6VPcMY+FdHj4JIphRaY2dbVHihDu5JtSHLNIPyqE5afWcmle
	 5h3xDSD11mXkRcyNqqcwUJ3hrj4YgQNOibiopbmVqge7/puvioYE8mRd1KCBgb1bba
	 kzyDZAQIxBcdqwNEy4XYCfoAb9jWTWi96/k/328LaKPF7KKbTGNGSiKPtXx+c+LbHX
	 mxv2Umd4D3B/6R04oD52cKPKPrgI2zGYj3v4z2H9e5SWeFFejgnvTkbAlApDqXccdR
	 HYCnwvfHUYv5w==
Date: Mon, 18 May 2026 00:05:45 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Theodore Tso <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, debarbos@redhat.com, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Konstantin Ryabitsev
 <mricon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev,
 sashiko@lists.linux.dev, Linux Kernel Workflows
 <workflows@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
 kfree@google.com
Subject: Re: Stop false review statements
Message-ID: <20260518000545.778932fe@foz.lan>
In-Reply-To: <4ECB5626-01E2-4AEB-AD11-524AB224CAA0@linux.dev>
References: <4ECB5626-01E2-4AEB-AD11-524AB224CAA0@linux.dev>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: D192C564224
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299054-lists,devicetree=lfdr.de,huawei];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:email,reddit.com:url]
X-Rspamd-Action: no action

On Sun, 17 May 2026 12:42:12 -0700
Roman Gushchin <roman.gushchin@linux.dev> wrote:

> =EF=BB=BF
> > On May 17, 2026, at 11:57=E2=80=AFAM, Theodore Tso <tytso@mit.edu> wrot=
e:
> > =EF=BB=BFOn Sun, May 17, 2026 at 11:17:06AM -0700, Roman Gushchin wrote=
: =20
> >>=20
> >> I actually tried to run it with ollama on my
> >> personal framework 13. Adding nominal support is trivial, but the
> >> whole thing is not really useful: I can get maybe few hundreds
> >> tokens per second using a quantified model with reduced quality; an
> >> average sashiko review is consuming 3.5 millions tokens (with Gemini
> >> 3.1 pro, it=E2=80=99s also model-dependent). =20
> >=20
> > I'm curious.  What hardware and LLM model were you using?  A few
> > hundred tokens per second seems surprising high.  My initial
> > research[1] showes that an M5 Max Macbook Pro costing 5 or 6 kilobucks
> > can do 31.6 tokens/second on a 27B 4-bit Quanitized model (Qwen 3.5). =
=20
>=20
> I=E2=80=99ve framework 13 with amd 7840u. I=E2=80=99ve tried several mode=
ls both on cpu and gpu.=20
> Sorry, it was a couple of months ago and I don=E2=80=99t remember all the=
 details, so I won=E2=80=99t=20
> claim any specific numbers, but as I remember the best numbers were aroun=
d=20
> a hundred tokens per second. In any case it=E2=80=99s few orders of magni=
tude slower than
>  what is realistically required.
>=20
> If someone has a powerful hardware and is willing to benchmark sashiko wi=
th open-source
> models, I=E2=80=99m very interested in results.

If you add the patch you used with ollama somewhere, I can try
running here and do some benchmarks - that is assuming that=20
it won't try to run 3.5 millions of tokens.


>=20
> > [1] https://www.reddit.com/r/LocalLLaMA/comments/1rzkw4x/m5_max_128g_pe=
rformance_tests_i_just_got_my_new/
> >=20
> > The model matters of course.  With Gemma 3 27B and a 6-bit
> > quantization, it's 21 tokens/s, and with Deepseek R1 8B Q6_K, it's
> > 72.8 tokens/second.  But unless you're using a really low-end model,
> > or a really expensive, splufty hardware platform, I haven't seen
> > reports of hundreds of tokens per second on hardware costing a
> > reasonable amount of memory.  (I'll set aside the question of whether
> > spending $6k for a fully spec'ed out M5 Max Macbook Pro, or $15k for a
> > fully spec'ed out M3 Ultra Mac Studio is "reasonable".)
> >=20
> > As a result I'm not entirely sure how realistic it is to do reviews
> > using "free" (you still have to pay $$$ for the hardware) local,
> > open-weight LLM's if an average review requires around 3.5 million
> > tokens. =20
>=20
> Fully agree. But it might change in few years, things are moving quickly.


Thanks,
Mauro

