Return-Path: <devicetree+bounces-243532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 241D4C991DE
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 22:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 323F94E3101
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 20:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957B2278753;
	Mon,  1 Dec 2025 20:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="J8BE8kfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843D210F1
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 20:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764622757; cv=none; b=rPc09L5HMXHtN2JrFRjqQ+On/5yTn94OsDS6ix6OGrwqmUcO34QIvChQ2Mq+x88JJYuEdIDByp/dAV1zLKLQY4riqf8Dk+z+plV9phk7viiFa9jd8b/TLDHnMDdsrOJ6nFJ28cTcEvsZdKJ/ckeHK7McTLihgFex56p88lwwGuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764622757; c=relaxed/simple;
	bh=0bhHfw++5pSOrL1hyiPHtXVUoiR0H8FhFS8GHD/WRn0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cogq/n34bpP5I6YgdV/Ti30hfOI7vSUZv17zrxw79xegpm53VQM3ZMDeZc3cfGEKJ546OtVLpQcxCkl6Axc0U7Lf48dqFuiVzUhJFwfmOoR9IT2gW6P7xrUZnNAT3ms/qRwD61WvuMyNbpyUK1Cc6BwE/wJPruE4zh4O3UNkDIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=J8BE8kfL; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b7636c96b9aso649818466b.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764622750; x=1765227550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0bhHfw++5pSOrL1hyiPHtXVUoiR0H8FhFS8GHD/WRn0=;
        b=J8BE8kfLXq+htYnPobiMp1MJV9FwhyXquZHcJgHyPF3uvF/d+9J3VFaTkvYDQS2Yt2
         V13Vn4wgwIJQZXi23zCql/zdsuAs6WZSwfgfpcG9FtuC3fPQ/u/+n/aUs59PMKRCFUkb
         DBAUnWgeMYdsHjGoQ9+U74yj2bM0QY1uJH2v8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764622750; x=1765227550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0bhHfw++5pSOrL1hyiPHtXVUoiR0H8FhFS8GHD/WRn0=;
        b=pl3UecrkkIn+ploGZP5nTqXkZcu2Wl8VSxwOt3t4h5KCYK9HpItZrpZH1373DFUmhd
         Xrb8yH4jv07NxdGPidOQUWuR69sFAmJZ+2f64mk769SWL5E9atdxDc+uXZyJuwDjztQb
         g81B5A5CsNBZeZ8zEeHqNzhSYygyrtvZTHbTJgn8Bq8kBERcppp7ATkJtNa2I8n9IQuE
         x+kLYq+yCag8AP/c0oSAXmdpGu8rxsE5V2RmBWR/F95jqsCQ8JNw1ZP9BGHI7zUYngue
         y9VqfZj7yHoueMZaFAPO1u777UaZPycRhK2dY1KorT8D3Unqoihduc5td9tXw03cS7vr
         NgaQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8mDKNmh+5dUvCRHiwqFhsFqbrREkNkqtxCPQZv72HlPubPPoAuyT4SbeLPlE7uieJPxmEct7B9f9H@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk6R1Pj2EedXO0GrgDbTrvpeZf8dJeeRzdtJM9PS9KiowluTdG
	k9XWVIp9oe/TPFMCFU+zWzSbnNYxrT8RE7UkhVD/dgxsoT14rttGvHBW27iAmIIDR7DAmnPY2x5
	H5reBFi0A
X-Gm-Gg: ASbGnctxw99KZzIOqfsI6NJ/AtqfXAZvn8cNoteQBViVfbARIsZctWhMkzKfqrbvKI8
	P2urhMmvpDdl11yOYSiVSFhhnLG7DOsGfnehja0pguIU1Ym4qpGF8sktnPgbEUZi/QdkNPYAD/K
	xPhkDJOY34QCBbKMOFYHmRzG3Jf4C+Tx686P9XYFTHwqtD+gCYIZiUdpst8cfPaWfuB6wR3vIcm
	Za7irgvZpkD1nVJ7bO1BMyUzqJrih5rjIhn4i98KnOlgVt2V5ZGmjK7YGBB6/F8mOA5oC83o/CL
	9w7by1MJbxpH4yEipT+Y6HahNZz0TI8LGvRci4fR8MDn5uuGs6/pugiOLFNHt5PZ6QZQEb9ESmG
	2b+urH5a45JAGD/q312ktYP9OeVhrwRCjk9iHxZ8pAbKx+Hqz4YXNqlsAVdZmW1Ko6Ie/9J+uVq
	3ZGoIz7Qb+F+4jUnzu8rfLueQ9Q0Z1baiAc37hUQG+ecGM+ygjWpnVm+XuDs49
X-Google-Smtp-Source: AGHT+IHq/sn2dnm5qsu3KCqMPDyR4IySvvG3TSeDXOiKzW8TvgqcrGJw7IlDKZckgWONYx1PoJO3/w==
X-Received: by 2002:a17:907:26c2:b0:b73:8639:cd88 with SMTP id a640c23a62f3a-b76715ab98amr4194505666b.22.1764622750036;
        Mon, 01 Dec 2025 12:59:10 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aea6bsm1290213766b.35.2025.12.01.12.59.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 12:59:08 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42e2cf93f7dso1450669f8f.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:59:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWlhliW2/7Ygu5dN99e0oc/4PNdzzaMPqopgjvH7fBqZXkWAU0uLGzs113l0r2Th61aiOFNl1aRJWKJ@vger.kernel.org
X-Received: by 2002:a05:6000:2282:b0:42b:40df:2336 with SMTP id
 ffacd0b85a97d-42cc1d19a9bmr43036897f8f.39.1764622748258; Mon, 01 Dec 2025
 12:59:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAD=FV=UbejKdD2q2Z3RuYH0Ooc6XRb0oynchDsqnq7GzM6ah0w@mail.gmail.com> <aS3eXBDtaoNLfxZy@shell.armlinux.org.uk>
In-Reply-To: <aS3eXBDtaoNLfxZy@shell.armlinux.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 1 Dec 2025 12:58:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WBbqSDghm+o2ZVa4-AbL4aggFQO0xdtmZNrYOQRjF5Vw@mail.gmail.com>
X-Gm-Features: AWmQ_bnKBMj_4BZSGQ_zt34CE203-diDNxdOfHh2BJz5uCaYVKDBch65v2RkB6o
Message-ID: <CAD=FV=WBbqSDghm+o2ZVa4-AbL4aggFQO0xdtmZNrYOQRjF5Vw@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: devicetree-spec@vger.kernel.org, boot-architecture@lists.linaro.org, 
	Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 1, 2025 at 10:28=E2=80=AFAM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Dec 01, 2025 at 09:42:40AM -0800, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Nov 18, 2025 at 2:43=E2=80=AFPM Doug Anderson <dianders@chromiu=
m.org> wrote:
> > >
> > > This is a continuation of the discussion that started in reply to my
> > > patch adding basic device trees for Pixel 10 phones [1].
> > >
> > >
> > > Problem statement:
> > > ------------------
> > >
> > > We would like an officially accepted scheme that lets us more
> > > efficiently ship compiled device trees for a handful of related
> > > products by breaking the device trees up into a common "base" device
> > > tree and then applying "overlay" device trees atop the base to make a
> > > full and complete device tree.
> > >
> > > To make it more concrete, we'd like to build a "base" device tree tha=
t
> > > describes a SoC and then have the overlays be enough to make a full
> > > description of a board. In theory, one could also imagine wanting to
> > > expand this to 3 or more levels (perhaps SoC, baseboard, derived
> > > boards), though this is not planned at this time.
> > >
> > > The primary reason for wanting to break device trees like this is
> > > efficiency of the shipped binary device trees. A large portion of a
> > > final device tree just describes the SoC. We save space in the final
> > > compiled device trees if they don't need to contain as much duplicate=
d
> > > information.
> > >
> > > A secondary reason for wanting to break device trees like this is to
> > > more nicely handle when a board has a socketed SoC that can be
> > > replaced with a finite (and small) number of different SoCs (usually
> > > revisions of the same SoC). Even if this secondary reason is
> > > considered invalid or too difficult, the primary reason still
> > > describes a compelling need.
> > >
> > > In order to make this proposal work, it's expected that a bootloader
> > > will understand the scheme and will know how to combine the overlay
> > > atop the base before passing a complete device tree to the main OS.
> >
> > It's been roughly two weeks since I sent out this proposal. Do DT
> > folks have any comments? Are the goals I have stated understood? Do
> > people agree that these goals are reasonable? Is there any question
> > that there is a need to solve these problems not just for Google, but
> > for the community as a whole? I'm happy to reach out to people and
> > have them reply "yes, I have this problem too" if it would somehow
> > help. I don't doubt that there are still people at Qualcomm who would
> > like a solution even if I think Elliot isn't driving it there
> > anymore...
> >
> > How do we make forward progress? Does anyone have any comments on
> > Julius's reply? At the moment, I think there are some conflicts with
> > what Julius would like to see (no changes to the rules for how
> > overlays are applied) and what Rob said previously (we need to find
> > some way to combine the compatible strings). Did I misunderstand? Can
> > we find a common ground?
>
> My feeling on this (and I don't have much time to consider it tonight)
> is that this isn't going to get a quick answer.
>
> This answer is based on my authorship of various device trees, and is
> solely my own opinion, and in no way represents any position by my
> employer.
>
> While the DT files are dual-licensed, the license that applies to the
> copy in the kernel is GPL v2, because the kernel as a whole is GPL v2
> licensed. The dual-licensing of the DT files is to permit them to be
> taken from the kernel and used in e.g. boot loaders etc.
>
> However, as the license that applies to the kernel copy is GPL v2, and
> GPL v2 requires distribution in source code form, or an offer valid
> for two years of the corresponding source code etc (check the GPL v2
> for the exact terms) it could be inappropriate for the kernel tree
> to distribute binary DT blobs without their corresponding source.
>
> It seems to me that this is a problem for lawyers, and you're probably
> not going to get a quick answer on it.
>
> So, I'd suggest patience, and don't expect this topic to move quickly.

It seems like perhaps I wasn't clear enough in my description of the
problem I'm trying to solve. I'm not trying to change anything about
the licensing or where the device tree source is stored / distributed.
This is all about packaging. As you can see further in the original
patch series I pointed at [1] that I include both the base and the
overlay source code [2]. I just want to organize things such that
SoC-related nodes and properties are in the base device tree (whether
"dts" or "dtb") and then we use an overlay ("dtso" or "dtbo") to end
up with a combined device tree that represents a complete board.

Today, there are no technical reasons stopping people from doing this
and many phones (including Google Pixel phones) ship their device
trees like this.

That being said, we can't land device trees like this upstream because
the base device tree for the SoC is not "complete" and can't pass yaml
validation.

According to Krzysztof, this is simply policy. As he says: "SoC does
not meet this criteria, therefore it is not suitable for DTS" [3]

If I read his response properly, Rob wasn't dead-set on this being
against policy. He said "I think it is worth having the discussion"
[4]. He was concerned that the final compatible string needed to be a
combination of the base and the overlay.

My goal is to find a solution where upstream would accept device trees
that are split into a base for the SoC and an overlay to "complete"
the board..

There are no legal questions here. I don't even believe that there is
any true technical complexity, really. There are a few small
differences in the way we can slice a solution and how we do it will
certainly have impacts, but I don't believe that some magic solution
is going to come up and make everyone happy (someone should feel free
to prove me wrong, though!). This means we have to either decide this
isn't a problem worth solving or we have to pick some compromise about
how this works. At this point, I'm fine with any answer (even a
definitive statement that this isn't a problem that upstream wants to
solve). I'm not terribly happy with just ignoring it for another year
or three.

[1] https://lore.kernel.org/r/20251111112158.1.I72a0b72562b85d02fee424fed93=
9fea9049ddda9@changeid
[2] https://lore.kernel.org/r/20251111112158.4.I5032910018cdd7d6be7aea78870=
d04c0dc381d6e@changeid/
[3] https://lore.kernel.org/all/20251114-elite-refined-yak-bf9e64@kuoka/
[4] https://lore.kernel.org/all/20251113022719.GA2281498-robh@kernel.org/

-Doug

