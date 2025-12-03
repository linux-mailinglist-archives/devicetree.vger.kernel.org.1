Return-Path: <devicetree+bounces-244154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3B6CA1D72
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 23:37:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B2B9300986E
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 22:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3923A2E2DF2;
	Wed,  3 Dec 2025 22:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zsfk/FOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112782DF6F5
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 22:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764801455; cv=none; b=pRmHEVJNN5z2LnKfJa1ma76X3QlyxwmtFg+7aL893JNmPg/EQMfmSzb9aub+A8bkwhr2EPrXxnli/mzR68Zqm/5LGOFVww2ZdQ98wlm3v8pkbMpPgkeEkJUzjEcFYPIJLptx5L09gS4bBTspGCf8td1oYI6qqccDL+Pe8Ht3ntU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764801455; c=relaxed/simple;
	bh=CmMeP3Wgb7F2JXCWfuilcNHjgdfnyf8V79u+ji27AA8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uBMDS+CbO2pM02U6Frle6n4I7rNOP0ZV/udMq6xXCYJhOCUmoGro0eg68t3DlB16f7kGmVvkr79375qU9wXVAGG6A8clkJnQ3msot2JaDeKMXlHKCyB64K6haorUZ43GNN5810guy+ZfSe8mfPRfo6o6fY9BlGAROHQ4gQwMrrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zsfk/FOo; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64180bd67b7so349285a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 14:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764801450; x=1765406250; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ux8aZbZPgW4tpB1Y7z88VhDcAOYzDYj/EAgU+NDKuyE=;
        b=Zsfk/FOomHQzySx8q/ERGZt5WkOKvPAC0mH7R7oma9genCcfvmoF0swcUho8LxN4Wo
         uyhd3ZAKH/cKmfb689NXeUz2YO67fx/vzTZllDp5KAGAfLKK+lvk+j5tMEfiHIu0PNVW
         9iOhUrVhrCiYva7LiCzCxYDjrZPNRsxPDdmoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764801450; x=1765406250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ux8aZbZPgW4tpB1Y7z88VhDcAOYzDYj/EAgU+NDKuyE=;
        b=M0kg9RHYTl1QLFyXEtUg84P4xUjitjv2iJwSu/eDl3BYmt/4G9+nPW7DtAPRcpC0RE
         LhLKM/t5+CzONUTJ2TOwYPw6KVfYaNugcru4OnYkdvsynBUKxgEFYTeYtUAJeUPgDfOo
         jbTibDwCgPCzi1GGe/1UD/3z0aXkKPpqNVfELJdPVrmY0wIDonCaIQFP/Tqht1iYP3Ze
         tzi7opJfMDPF05icnkq/snqqGtOGXscUW9PohaF+w9w1FZm1Ds8POgIL5YGwXvoC5k9B
         ukz7iAtUMJT6JBvAKHlUKkM6lU/S9R2MhlcgIv461Rbx/u8drdPR165G/jjJbeiZbv6Y
         /DBw==
X-Forwarded-Encrypted: i=1; AJvYcCUYaN9iAN67fv4YTJwUQJ8/RbfZ83R1kADq2PfN4MHYSbLlFIyXrLFdaNygwF33gppNPWQhoksKPxSo@vger.kernel.org
X-Gm-Message-State: AOJu0YxfllwojPQ33PNpvZlLyFAm5RX1L6gNAoE/5msUT1FxMiwyNSfL
	QU58sFprre19aDE3cwahdLgZMKD8d4INGVTjz0qTYcsDJLQQ4or9cnmDm37huxbFsncRVzaZagD
	n/X/NeBVB
X-Gm-Gg: ASbGnctWFEC29XGL7RhHfrxHNu4BWnL2fickX3m3ppLR+/s/hQtTvkaANrweD48XUxD
	ir+OYrDzCeZ+aq2gwttshkodC2xqzyGitb6X8rCGGzBKSIDGuJGVMccSYkI5IOrhLwVPnSTov0+
	AI5KDy7ReuHbSQNJYiebn8avR3a1yqp8SQZjjV/hQZ9Q2xWaJzSx7JZN5DmsX3sAtEpTtLDac16
	LOrZbAqUEPEXdmRanKbJujVW73bIIz38uyhw5V8Mds52JoWTiH/KNgYfYr7z5PkH2Y2oyj6r0aL
	to3XnFO4Zk7jVydvMeZJ7dQXy6hzBwgb2IAbfA13DITy1CvDkrXwVilJNXaXuIYWApdTvmaPuK9
	aqVZNNL6yuRvnDCAm1/126weUwMfnP0hONJmzIvWbLtyAl4aMzAyRkvkbluU6WUwrxytYLfBPRx
	SRi1NzKjM=
X-Google-Smtp-Source: AGHT+IG7t/1i1O8LZLwkuWe48EYuYwj1A34JO2LStjyc+K6zCiqfWLQvmVt2eGYMFEZn7Jpd4b/3WQ==
X-Received: by 2002:a05:6402:13ce:b0:640:c454:e9 with SMTP id 4fb4d7f45d1cf-6479c3ed67cmr3323936a12.4.1764801449455;
        Wed, 03 Dec 2025 14:37:29 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647a1278038sm1764494a12.14.2025.12.03.14.37.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 14:37:27 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2e239ec0so212561f8f.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 14:37:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWPntNAzkcUGL12MO2xRV6ZqJ8Yw43czNERbila2LeZDz4myvm9RN84rPJBSy+AGgU04MyoRzC3E/Ou@vger.kernel.org
X-Received: by 2002:a05:6000:1a8f:b0:42b:3e0a:649e with SMTP id
 ffacd0b85a97d-42f73172837mr4272908f8f.13.1764801447104; Wed, 03 Dec 2025
 14:37:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <aS66WcLPm6e5rdyk@shell.armlinux.org.uk> <CAL_JsqLxLakt94ACgv8z5A-O4WGZPfiZ-7UFaBPaOa7W8L3Cxw@mail.gmail.com>
In-Reply-To: <CAL_JsqLxLakt94ACgv8z5A-O4WGZPfiZ-7UFaBPaOa7W8L3Cxw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 3 Dec 2025 14:37:15 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wfu4ddQdTeupN+Md5Tv+5P1Up+Zo5U2AjGpqayTuqFhw@mail.gmail.com>
X-Gm-Features: AWmQ_bnIblbkwj1cLEC5h0WcUWlJmSIhOZHgYB3U9v0vApinUDHFAU4YsyhmX8k
Message-ID: <CAD=FV=Wfu4ddQdTeupN+Md5Tv+5P1Up+Zo5U2AjGpqayTuqFhw@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Rob Herring <robh@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Dec 2, 2025 at 3:16=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> > as a set of examples. I don't see a clear way to generate these from
> > a fragmented scheme. There's a similar problem with the board-level
> > compatible:
> >
> >         compatible =3D "solidrun,cubox-i/dl", "fsl,imx6dl";
> >         compatible =3D "solidrun,hummingboard2/dl", "fsl,imx6dl";
> >         compatible =3D "solidrun,hummingboard/dl", "fsl,imx6dl";
> >         compatible =3D "solidrun,hummingboard2/q", "fsl,imx6q";
> >
> > These don't include the SoM information.
>
> So we're back to needing to merge compatible even though Doug was
> willing to drop it. Or to put it another way, there's usecases for the
> base to be different SoC revisions and variants. So I don't think we
> should give up on solving that.

I'm willing to take a crack at it. Before doing so, though, I think we
need to agree upon a definition of what the top-level "compatible" is
supposed to be. Otherwise, what exactly is our goal in trying to merge
"compatible" strings? We should have a goal of updating the official
documentation with whatever we decide.


I guess first, we should see what the spec says. The Devicetree
Specification v0.4 says this about the top-level compatible (which, it
should be noted, is documented _separtely_ from section 2.3.1 since
all of section 2.3 is only about device nodes):

> Specifies a list of platform architectures with which this platform is co=
mpatible. This property can be used by operating systems in selecting platf=
orm specific code. The recommended form of the property value is: "manufact=
urer,model" For example: compatible =3D "fsl,mpc8572ds"

That's not very detailed, but I guess we can start out looking at what
it _doesn't_ say.

a) The spec doesn't say anything about the top-level compatible
uniquely identifying a specific hardware configuration. Nothing there
says "look at one of the strings in the list and you can tell exactly
what product you have in front of you".

b) The spec doesn't specifically mention that one should include any
strings for a SoC / SoM / reference board. Indeed, the example given
shows an example "compatible" with just one string: "fsl,mpc8572ds".
Searching the interwebs, I find that this example "compatible"
probably refers to a Freescale "MPC8572 Development System", which is
a dev board with a "MPC8572" chip. Notably, the example "compatible"
didn't include the "MPC8572" chip.

c) The spec doesn't seem to include a firm definition of what they
mean by the word "platform". In my mind, one could interpret the SoC
as a "platform". One could also interpret a SoM or a reference board
as a "platform". It's not necessarily clear. Since AI is the answer to
all things these days, I asked Gemini. I asked what "platform" meant
in the context of the DT spec and it (confidently) told me that "the
platform is the physical machine." ...but when I asked if one could
also consider the SoC the "platform", it told me that was "an
excellent clarifying question" and went on to say the SoC "is often
referred to as the base platform or the SoC-level platform." :-P


How does that help us? I guess I'd summarize that, from reading the
spec and more loosely interpreting the word "platform":

a) The compatible string doesn't _need_ to include strings
representing the SoC, SoM, or baseboard, but it can.

b) The compatible string is primarily there for use by the operating
system to select platform (board, reference board, SoM, or SoC)
specific code.


That still doesn't really tell us when we should / shouldn't include a
SoC / SoM / baseboard in the top-level "compatible". It also doesn't
tell us if we should include even more detailed levels. ...and by
"more detailed levels", I would perhaps say that each of these could
also be considered a "platform":
* google,trogdor-lazor-rev6-sku6 - An exact model of board.
* google,trogdor-lazor-rev6 - A platform that has several SKUs.
* google,trogdor-lazor - A platform that has several revisions and SKUs.
* google,trogdor - A reference platform that has several boards.


Perhaps we should lean into the statement "This property can be used
by operating systems in selecting platform specific code" to give us
guidance? The problem is that we somehow need to not just look at
current operating systems but, if we want to strive towards the goal
of shipping binary device trees, we need to consider future operating
system code that hasn't yet been written. That sounds impossible and
makes one think you should cram as much info into the compatible
string as possible, but...

...actually, we only need to put information into the compatible
string if there's not an easy way for the operating system to get the
information elsewhere, right? If the information is found elsewhere in
the device tree or if the operating system can probe the information
itself, then there's really no _need_ to put it in the top-level
"compatible" and we'll never end up painting ourselves into a corner.
We could still put the information there just to make it convenient,
but it's not really needed. Does this make sense?

I would further argue that, in order to be useful, any given
"platform" should document its expectations and we need to be
consistent across anyone using that platform. To make it concrete, if
the Qualcomm SC7180 platform documents that "qcom,sc7180" belongs in
the top-level compatible string then all device trees including sc7180
should have that string. This _doesn't_ mean that on some future
platform (like qcom,sc9999) we couldn't make a different decision.
Maybe on "qcom,sc9999" we've decided to put SoC details as some
properties under the "soc@0" node. Now the operating system can find
the details about which SoC is present from the "soc@0" node and
therefore we don't need to represent it in the top-level compatible
string.


Assuming that all makes sense, maybe the way to document the top-level
compatible string:

--

Specifies a list of "platform architectures" with which this platform
is compatible. A "platform architecture" can be at any level, from the
specific board to the class of board to the reference platform to the
SoM to the SoC. A given "platform architecture" should always be
consistently included or not-included by all final device trees using
it. If the "qcom,sc7180" SoC platform is defined to be included, it
should be consistently included by any device trees with this SoC. The
criteria for whether to represent a "platform architecture" in the
top-level compatible string is the difficulty of the operating system
obtaining the information in some other way (including from other DT
properties or from probing). In general, the top-level "compatible"
used by operating systems in selecting platform specific code. The
recommended form of the property value is: "manufacturer,model"

Examples:

compatible =3D "fsl,mpc8572ds";
- Select code related to the Freescale MPC8572 Development System

No platform is included for the CPU since ("fsl,mpc8572") isn't
consistently listed as a platform.

compatible =3D "google,snow-rev4", "google,snow", "samsung,exynos5250",
"samsung,exynos5"
- Select code related to google,snow-rev4.
- Select code related to google,snow.
- Select code related to samsung,exynos5250.
- Select code related to samsung,exynos5.

In this example, the idea is that all exynos5 boards would have
"samsung,exynos5" so code that needed to run on "exynos5" could
consistently test for that "compatible" string. Similarly, all
exynos5250 boards would have "samsung,exynos5250" and all snow boards
would have "google,snow"

--

What do folks think?

Note that the current Chromebook stuff [1] we used on sc7180-trogdor
boards doesn't fit amazingly well into that definition, but it can
kinda squeeze in there. Essentially the sc7180-trogdor stuff is
designed around making it easy for the bootloader to find the right
device tree but doesn't provide anything terribly useful to the OS in
the top-level "compatible" string. At this point, I don't think I
would encourage others to adopt something similar.


If folks agree with the above interpretation, I think I'd end up back
to arguing _against_ the need to merge compatible strings. If we don't
need to put detailed SoC information into the top-level compatible
string then we don't need to merge. I think the most
flexible/futureproof would be to just define that for the SoC inside
Pixel 10 (and presumably all future Google Silicon) we'll put SoC
information under the "soc@0" node and thus there's no need to include
it in the top-level "compatible". That leaves us without a
"compatible" to put in the base "dtb", but maybe we can just put
compatible =3D "incomplete" or something like that?

I suspect that even for Russell's purposes the information can either
be probed by the OS or put in places other than the top-level
compatible string. We might not want to change his existing
devicetrees in case some OS is relying on the existing compatible
strings, but for work going forward it feels like it would be a
solution...


[1] https://docs.kernel.org/arch/arm/google/chromebook-boot-flow.html


-Doug

