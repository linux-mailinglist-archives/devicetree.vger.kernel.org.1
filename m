Return-Path: <devicetree+bounces-243548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 726D1C99B48
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 02:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3342D4E1AD0
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 01:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8A71A238F;
	Tue,  2 Dec 2025 01:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su022/L7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672B019CC0C
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 01:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764637670; cv=none; b=UZha4y8voxACnHOWYmAFVtebCuqitkiFRrtNrlUmgcQxSoiMHpk5OddaE8jXki1q+lNOl80grnKi2z5ajNEVCYVroXInt10oa05qiIFSF2aWUUqJv7dFRqNwvc3wAyBcZa5xZAPd54rMJ1K4sJO1Imyz5pI2PqKD1O19W5a+pJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764637670; c=relaxed/simple;
	bh=tLX8L30/H/RW/b5Jo76iTlzBQ3x+FyzwMEPIhPpDDf4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gSfz238HXe5mBLQPSGySPm5LegZmZ7d/cwMEnnatUzAV882nPjS/OhdFttUzrx11EVVUZyDWiVa+MVWLjatQ9D15DeYTWEa3lMHonKX70ASGHmQKf81q7d718+jfVHb+holaYCJn7ubwsWGuKBZmfWGEk0bzyOSnujSBnnTRCzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su022/L7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2226FC2BC9E
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 01:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764637670;
	bh=tLX8L30/H/RW/b5Jo76iTlzBQ3x+FyzwMEPIhPpDDf4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Su022/L7J6imvvSJ7ys74H2C77UOVP+olFmaq6ubFjMMqUFDOJ4uVkFWH+uYhNSvO
	 h2u6xgGhAk5vBc0xm3MLJSgC/ytpUpav8eJdnSMTwXqE7AZ0lZ4KJ5xtBo1p8/2NzU
	 zruDkLi1/XXsBRRM+QmjpjFId98uqLXKusRYw5A6XQ+B49qwJAT69Dplm1jQOyiigI
	 BfpQKN51YiiFLGToiEVmULv9MfPuU5z3afvfysIeOLJXum32XK/CuFD+qoAVtkutVs
	 9DB0CMFEqKqQ8VOnhRLJCM+QpD6DWa0wyXGcaYMc0xU48VLj4fNQwnjMHMFVg4OMzm
	 Dj+cpGVLzrkwQ==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b736ffc531fso766465566b.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 17:07:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXMRNWf32ByX9XlDoHD0OBwdIz3BQpA+gFfqEpSi3sQerzauUumoaI/W2LY6W7UGTwp2STviO8vehdd@vger.kernel.org
X-Gm-Message-State: AOJu0YzY3Bf5xER+/nkpV29jCzaDypQMS404XE/PrDPxL6E/fwoI1tMx
	JEXXm3jC+mftix4k/Huvu9eyfN9js/vPUeLPPXQY6kSDLZZQEKL8nksdB0U1REdfTf1Kiap9oew
	9tYi89XzV3JeF/186eW1dHtJt9ghCHw==
X-Google-Smtp-Source: AGHT+IG24kOLQrooV5P/dTOV1njerVx5u2VvRzUNTRGyVTJqw+vn+5CH2B1C2g1XMMHOKjQDT93Reizt+g9VLmCx8hw=
X-Received: by 2002:a17:907:94cd:b0:b74:983b:4056 with SMTP id
 a640c23a62f3a-b767150b98dmr4056291766b.8.1764637668554; Mon, 01 Dec 2025
 17:07:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAD++jLkuRQKoiEN928GtAj7wUts5PxH905bLp6ZhKsJ3NnenEA@mail.gmail.com>
In-Reply-To: <CAD++jLkuRQKoiEN928GtAj7wUts5PxH905bLp6ZhKsJ3NnenEA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 1 Dec 2025 19:07:37 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+uVyGzi+TniwJQEOFDm=L9=S-aLWfvyDmY-GQD5iAEOA@mail.gmail.com>
X-Gm-Features: AWmQ_bmX9Fos9zbCrPwgYj2JeynPw5bUqga0FxcdmGI--S1l0PNxtHPqOyMqag0
Message-ID: <CAL_Jsq+uVyGzi+TniwJQEOFDm=L9=S-aLWfvyDmY-GQD5iAEOA@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Linus Walleij <linusw@kernel.org>
Cc: Doug Anderson <dianders@chromium.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 1, 2025 at 5:52=E2=80=AFPM Linus Walleij <linusw@kernel.org> wr=
ote:
>
> Hi Dough,
>
> thanks for your mail!
>
> Let me just see if I understand correctly what you're trying to
> do  (and apparently actively doing in production):
>
> On Tue, Nov 18, 2025 at 11:43=E2=80=AFPM Doug Anderson <dianders@chromium=
.org> wrote:
>
> > We would like an officially accepted scheme that lets us more
> > efficiently ship compiled device trees for a handful of related
> > products by breaking the device trees up into a common "base" device
> > tree and then applying "overlay" device trees atop the base to make a
> > full and complete device tree.
> (...)
> > In Android, we do a pretty good job of solving the stated problem
> > using device tree overlays. We describe the SoCs in "dts" files and
> > compile them into "dtb"s. We describe boards in "dtso" files and
> > compile them into "dtbo" files. A bootloader can handle identifying
> > the correct base and overlay (the scheme for doing this is a separate
> > but related topic) and applying the overlay atop the base "dtb". This
> > solution is fully implemented downstream for Android phones and is
> > well documented [2].
>
> So in the kernel we have several arch/*/boot/dts/vendor/ folders
> where they have:
>
> soc.dtsi included by board.dtsi included by system.dts
> and the top system.dts is all that get compiled.
>
> So what you say is that you do the same thing but at runtime?
>
> Can you just describe why this is done like this with
> overlays?
>
> I can only guess that you have one bootloader that needs
> to compose device trees to many systems and the bootloader
> only discovers the system it is running on and its constraints
> at runtime, so shipping the static system.dtb as many people
> do is not an option for you?
>
> And the reason the bootloader doesn't already know what
> it is running on and doesn't just pass that one device tree
> or is just prepared with that one device tree has something
> to do with manufacturing or so?
>
> Sorry it just evades me.
>
> Probably becayse even U-Boot these days use the provided
> device tree dtb, for the system targeted, to initialize itself. I
> suppose your bootloader is generic enough to avoid that
> chicken-and-egg problem, right?
>
> I guess if I had this problem:
>
> soc.dtsi
> board-a.dtsi
> board-b.dtsi
> system-board-a-v1.dts
> system-board-a-v2.dts
> system-board-b-v1.dts

This is the easy case. The harder one is you have soc-rev1.dtsi and
soc-rev2.dtsi and you just doubled the combinations.

> etc having to be combined at runtime, in a bootloader, I would
> consider shipping exactly these files in a memory-based
> filesystem in my bootloader, and bake a DTS compiler into
> my bootloader so it can just build a device tree for what
> it detects.

We don't want to do that for the same reasons we don't pass a dts to
the kernel...


> But I guess you didn't want to hear that :D
>
> Anyway, please describe how you ended up in this situation,
> I'm trying to understand this.
>
> It is quite clear that device tree overlays were intended for
> say plug-n-play additions and minor fragments to be added
> to a basically complete device tree, what you are doing was
> probably not how it was intended. (Or let's see if someone
> proves me wrong on that.)

Board DTs are relatively minor compared to the SoC DT.

I would be interested in some experiments around making this change
with existing DTs. Take a board DT and add the overlay boilerplate
(that may be nothing more than add '/plugin/') and remove the SoC
include. Does that apply to a compiled SoC DTB and is the result the
same as before?

Think of it as moving from building C code using a #include of every
.c file to build a single .o to linking multiple individual .o files.
No one would argue the former is better.

Rob

