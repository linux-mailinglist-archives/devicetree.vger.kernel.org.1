Return-Path: <devicetree+bounces-246755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5718CBF993
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6030230194F2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B725341072;
	Mon, 15 Dec 2025 19:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Cmum+Jfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8759E34107C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828157; cv=none; b=rvQgi4biSpNPA8fcj2TrQwG547Nwv1RoQusuwH4DDWG6TKqtbut+sNPZXqqyvbid8jQ6BDUO+n61uVwKTHbPItxDQr3ClfxbbFCRcQvMV5FQPA9PlG/lMBHHfQD1Jjm6pYSLBkv0b4aZNihgYMwV4oK3owuzeKeIr4kmpxsBFkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828157; c=relaxed/simple;
	bh=4hq/Qif67Izf/S2CJQRpKKi6rHAYMwACghl2B2+jc+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mnSybsN13+/NVIr1Tkzr62AbN/mVtDXGn06woLcoVC0/g+qB71meGdKKYh6I1mRgSs3wp46PNELziTOgejx5kwZ4AQiuewPhpGXSb+C1x5kiDSefzFd4JjPhCNCyJfv+eWYc6JDWj6Y+MsVgqjAWCM2jqwfnrGyNnvPmsoAGzI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Cmum+Jfp; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-598f59996aaso4651613e87.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765828151; x=1766432951; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLm7COcCiblKuLUJKigqDfdOT5HeVLs8BmBjxUUIm9Q=;
        b=Cmum+JfpJriXea0QYL51eEXWo3a+s7ZaDzmL6Tp38im5S6YiMCKZdz2ssKEdBL3esf
         HEcy0fa0WeTcXJkjbYWqngZErSquIC17pN9fq5KhOqUdW9Hv2ZW87vW+BTuk9yl+EPa5
         eaDSGuYEoCSdHWGPnjSBJxTcfFiF71fIndu+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765828151; x=1766432951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KLm7COcCiblKuLUJKigqDfdOT5HeVLs8BmBjxUUIm9Q=;
        b=bpAxIZquXJOwDnSlIuPzMSoyJG5ZOunexmkoo2TG972qrciJrkrb24R3GFOEP+Fs/6
         P9GGDAN3f1+mQ1bAnWEhG7eXwhF9zQZfBIC2c46NxZ4oPXsHQy3uDrdZCASQG7BR01QM
         hZ3LXi+E19n+wvuCfxUJVV+kjiN0P87reAtDstRfpxKIs8uvYOTrOstOP7M5CK/Og895
         zbU5Iv1wt/4Ae7iWWF4Kdp6CL8mNxMF7rugWUTBi73WF9TXEP4x5vt4W6GZA/YyC92ik
         3xd1UJAm8Ls78p35OG9JSfcktzkAqguldc/SC2nfPrvclRgrz4U9S9by2wBYag0HDwbA
         r4sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWiCzok1saxje5E7/AbL1rhfqKa89A12Lr3WoY5cXXJv+uUQLW++k/qw87REa71btfSL7vZs9U/wTmc@vger.kernel.org
X-Gm-Message-State: AOJu0YxMK2DLiF9W5GRAKDIfVIjZpq3WjsGCx+PN44V2m0HSk+1Vyj12
	wePYhMpGvQf1TWMNoAipaj2o1I8Cxf6Fzld5OPt1gkuj9d6h6N5H099iUPWd1WegXpuiI+HWyem
	GsVd5PBFi
X-Gm-Gg: AY/fxX7CqFX7geQ0gkJW9/jddusrPKYECpf+vOmI/eXlVvcqjIPGNpxqNqUsv4b9X4S
	swgK4BN7fdDLA06Mlb7FLzXnYom9rwdrVVTnIm9i5uSZ2PfuzBkPpqvZ5fUWHcuMxnK0JWoBC79
	atbBkcsVGjOo5hs+NDL0YhmLbhPGeaxtg9gXf60Xto3CwuOMT1QcRd6Rq+Xg1iKhJhTEMZwTdGS
	lxfn8y6GbilrNF1gbGfAvzOHiOZTRvu1+Mym9a1UZ6CiegKjtVoL4QA0xe096gnC4zqQP4as1sK
	6oTwRFM+OCIQLRSj9OsDb5Sk7//G/zFl1iXiu3bU3LGHEiT+uZIzkh4MHGViQ8M/iV0CuKUD1gK
	4/4fID0JRhyFGafKNhCt3eP3eX4O0SXpfm+v1lMSzIeLNvadDsNWRgWrkgFnIDv5GrjQYjCZq8+
	8qcaoX9a4TLihJcs6mqXHgypn60J4Ch/8LCTxkl13l3ouPlAnF+k84dQ==
X-Google-Smtp-Source: AGHT+IHvNZzNBSktiyT4/OxqOhPSGKP3ELRZwxroG5dPfGk2NM84fL8Z2I1z/XW72X1NtiIyUyF5VA==
X-Received: by 2002:a05:6512:3c95:b0:598:eed6:48d5 with SMTP id 2adb3069b0e04-598faa231a9mr3546151e87.18.1765828151006;
        Mon, 15 Dec 2025 11:49:11 -0800 (PST)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5990da5dd0dsm82056e87.78.2025.12.15.11.49.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 11:49:10 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37ba5af5951so33222691fa.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:49:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUqlug7ysKRh7wBFOKzsKKn2Shjr0/l3r/h9BuvgTQ2PA72Ds2sdlJAnr8983gUFXVSaHA7I8/xi3z/@vger.kernel.org
X-Received: by 2002:a5d:5d83:0:b0:42b:3c25:cd06 with SMTP id
 ffacd0b85a97d-42fb44bae23mr12085378f8f.22.1765827694267; Mon, 15 Dec 2025
 11:41:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <aS66WcLPm6e5rdyk@shell.armlinux.org.uk> <CAL_JsqLxLakt94ACgv8z5A-O4WGZPfiZ-7UFaBPaOa7W8L3Cxw@mail.gmail.com>
 <CAD=FV=Wfu4ddQdTeupN+Md5Tv+5P1Up+Zo5U2AjGpqayTuqFhw@mail.gmail.com>
In-Reply-To: <CAD=FV=Wfu4ddQdTeupN+Md5Tv+5P1Up+Zo5U2AjGpqayTuqFhw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 15 Dec 2025 11:41:22 -0800
X-Gmail-Original-Message-ID: <CAD=FV=USdk6FAcdHqXBqOu1EGZF4-7ywag--PneCNMxjbZDpAg@mail.gmail.com>
X-Gm-Features: AQt7F2ova1coKUO3JzHNYWIXPtlkaz8Tgj2UoipyS5VCLloZfi3N41HW8w-QIDY
Message-ID: <CAD=FV=USdk6FAcdHqXBqOu1EGZF4-7ywag--PneCNMxjbZDpAg@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Rob Herring <robh@kernel.org>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Bjorn Andersson <andersson@kernel.org>, 
	Simon Glass <sjg@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 3, 2025 at 2:37=E2=80=AFPM Doug Anderson <dianders@chromium.org=
> wrote:
>
> Hi,
>
> On Tue, Dec 2, 2025 at 3:16=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
> >
> > > as a set of examples. I don't see a clear way to generate these from
> > > a fragmented scheme. There's a similar problem with the board-level
> > > compatible:
> > >
> > >         compatible =3D "solidrun,cubox-i/dl", "fsl,imx6dl";
> > >         compatible =3D "solidrun,hummingboard2/dl", "fsl,imx6dl";
> > >         compatible =3D "solidrun,hummingboard/dl", "fsl,imx6dl";
> > >         compatible =3D "solidrun,hummingboard2/q", "fsl,imx6q";
> > >
> > > These don't include the SoM information.
> >
> > So we're back to needing to merge compatible even though Doug was
> > willing to drop it. Or to put it another way, there's usecases for the
> > base to be different SoC revisions and variants. So I don't think we
> > should give up on solving that.
>
> I'm willing to take a crack at it. Before doing so, though, I think we
> need to agree upon a definition of what the top-level "compatible" is
> supposed to be. Otherwise, what exactly is our goal in trying to merge
> "compatible" strings? We should have a goal of updating the official
> documentation with whatever we decide.
>
>
> I guess first, we should see what the spec says. The Devicetree
> Specification v0.4 says this about the top-level compatible (which, it
> should be noted, is documented _separtely_ from section 2.3.1 since
> all of section 2.3 is only about device nodes):
>
> > Specifies a list of platform architectures with which this platform is =
compatible. This property can be used by operating systems in selecting pla=
tform specific code. The recommended form of the property value is: "manufa=
cturer,model" For example: compatible =3D "fsl,mpc8572ds"
>
> That's not very detailed, but I guess we can start out looking at what
> it _doesn't_ say.
>
> a) The spec doesn't say anything about the top-level compatible
> uniquely identifying a specific hardware configuration. Nothing there
> says "look at one of the strings in the list and you can tell exactly
> what product you have in front of you".
>
> b) The spec doesn't specifically mention that one should include any
> strings for a SoC / SoM / reference board. Indeed, the example given
> shows an example "compatible" with just one string: "fsl,mpc8572ds".
> Searching the interwebs, I find that this example "compatible"
> probably refers to a Freescale "MPC8572 Development System", which is
> a dev board with a "MPC8572" chip. Notably, the example "compatible"
> didn't include the "MPC8572" chip.
>
> c) The spec doesn't seem to include a firm definition of what they
> mean by the word "platform". In my mind, one could interpret the SoC
> as a "platform". One could also interpret a SoM or a reference board
> as a "platform". It's not necessarily clear. Since AI is the answer to
> all things these days, I asked Gemini. I asked what "platform" meant
> in the context of the DT spec and it (confidently) told me that "the
> platform is the physical machine." ...but when I asked if one could
> also consider the SoC the "platform", it told me that was "an
> excellent clarifying question" and went on to say the SoC "is often
> referred to as the base platform or the SoC-level platform." :-P
>
>
> How does that help us? I guess I'd summarize that, from reading the
> spec and more loosely interpreting the word "platform":
>
> a) The compatible string doesn't _need_ to include strings
> representing the SoC, SoM, or baseboard, but it can.
>
> b) The compatible string is primarily there for use by the operating
> system to select platform (board, reference board, SoM, or SoC)
> specific code.
>
>
> That still doesn't really tell us when we should / shouldn't include a
> SoC / SoM / baseboard in the top-level "compatible". It also doesn't
> tell us if we should include even more detailed levels. ...and by
> "more detailed levels", I would perhaps say that each of these could
> also be considered a "platform":
> * google,trogdor-lazor-rev6-sku6 - An exact model of board.
> * google,trogdor-lazor-rev6 - A platform that has several SKUs.
> * google,trogdor-lazor - A platform that has several revisions and SKUs.
> * google,trogdor - A reference platform that has several boards.
>
>
> Perhaps we should lean into the statement "This property can be used
> by operating systems in selecting platform specific code" to give us
> guidance? The problem is that we somehow need to not just look at
> current operating systems but, if we want to strive towards the goal
> of shipping binary device trees, we need to consider future operating
> system code that hasn't yet been written. That sounds impossible and
> makes one think you should cram as much info into the compatible
> string as possible, but...
>
> ...actually, we only need to put information into the compatible
> string if there's not an easy way for the operating system to get the
> information elsewhere, right? If the information is found elsewhere in
> the device tree or if the operating system can probe the information
> itself, then there's really no _need_ to put it in the top-level
> "compatible" and we'll never end up painting ourselves into a corner.
> We could still put the information there just to make it convenient,
> but it's not really needed. Does this make sense?
>
> I would further argue that, in order to be useful, any given
> "platform" should document its expectations and we need to be
> consistent across anyone using that platform. To make it concrete, if
> the Qualcomm SC7180 platform documents that "qcom,sc7180" belongs in
> the top-level compatible string then all device trees including sc7180
> should have that string. This _doesn't_ mean that on some future
> platform (like qcom,sc9999) we couldn't make a different decision.
> Maybe on "qcom,sc9999" we've decided to put SoC details as some
> properties under the "soc@0" node. Now the operating system can find
> the details about which SoC is present from the "soc@0" node and
> therefore we don't need to represent it in the top-level compatible
> string.
>
>
> Assuming that all makes sense, maybe the way to document the top-level
> compatible string:
>
> --
>
> Specifies a list of "platform architectures" with which this platform
> is compatible. A "platform architecture" can be at any level, from the
> specific board to the class of board to the reference platform to the
> SoM to the SoC. A given "platform architecture" should always be
> consistently included or not-included by all final device trees using
> it. If the "qcom,sc7180" SoC platform is defined to be included, it
> should be consistently included by any device trees with this SoC. The
> criteria for whether to represent a "platform architecture" in the
> top-level compatible string is the difficulty of the operating system
> obtaining the information in some other way (including from other DT
> properties or from probing). In general, the top-level "compatible"
> used by operating systems in selecting platform specific code. The
> recommended form of the property value is: "manufacturer,model"
>
> Examples:
>
> compatible =3D "fsl,mpc8572ds";
> - Select code related to the Freescale MPC8572 Development System
>
> No platform is included for the CPU since ("fsl,mpc8572") isn't
> consistently listed as a platform.
>
> compatible =3D "google,snow-rev4", "google,snow", "samsung,exynos5250",
> "samsung,exynos5"
> - Select code related to google,snow-rev4.
> - Select code related to google,snow.
> - Select code related to samsung,exynos5250.
> - Select code related to samsung,exynos5.
>
> In this example, the idea is that all exynos5 boards would have
> "samsung,exynos5" so code that needed to run on "exynos5" could
> consistently test for that "compatible" string. Similarly, all
> exynos5250 boards would have "samsung,exynos5250" and all snow boards
> would have "google,snow"
>
> --
>
> What do folks think?
>
> Note that the current Chromebook stuff [1] we used on sc7180-trogdor
> boards doesn't fit amazingly well into that definition, but it can
> kinda squeeze in there. Essentially the sc7180-trogdor stuff is
> designed around making it easy for the bootloader to find the right
> device tree but doesn't provide anything terribly useful to the OS in
> the top-level "compatible" string. At this point, I don't think I
> would encourage others to adopt something similar.
>
>
> If folks agree with the above interpretation, I think I'd end up back
> to arguing _against_ the need to merge compatible strings. If we don't
> need to put detailed SoC information into the top-level compatible
> string then we don't need to merge. I think the most
> flexible/futureproof would be to just define that for the SoC inside
> Pixel 10 (and presumably all future Google Silicon) we'll put SoC
> information under the "soc@0" node and thus there's no need to include
> it in the top-level "compatible". That leaves us without a
> "compatible" to put in the base "dtb", but maybe we can just put
> compatible =3D "incomplete" or something like that?
>
> I suspect that even for Russell's purposes the information can either
> be probed by the OS or put in places other than the top-level
> compatible string. We might not want to change his existing
> devicetrees in case some OS is relying on the existing compatible
> strings, but for work going forward it feels like it would be a
> solution...
>
>
> [1] https://docs.kernel.org/arch/arm/google/chromebook-boot-flow.html

It's me again. The pest.

Adding a few people who piped up when I mentioned this at Plumbers
(namely Bjorn and Geert)...


Bjorn mentioned that, in general, it's hard to know what device /
devicetree people are using when they report bugs. Presumably if we
made the top-level compatible less representative of the overall
system, this problem would be made worse?

While this is true, to me it isn't necessarily a blocker (though feel
free to object). Specifically:

* The device tree doesn't fully describe all hardware anyway. While we
might use a "SKU" variant to choose between one MIPI panel or another,
Chromebooks _don't_ use SKU variants to choose between one eDP panel
or another because eDP panels can be probed. We also might use a "SKU"
variant to choose between two MIPI webcams but not two USB webcams for
the same reason.

* We've already accepted the idea of "hardware probers" that can run
at boot anyway and those don't adjust SKU numbers. grep the source for
"fail-needs-probe".

Someone pointed out that if you really need the device tree it could
be captured in bug reports. This seems reasonable to me. I also really
liked the idea of keeping some sort of log somewhere in the device
tree every time an overlay is applied, though I tend to agree with
others that filenames of device tree files shouldn't be ABI.


Geert talked about the top-level compatible as being the "last resort"
to fix any issue. That matches my understanding above from reading the
docs and seeing how it was used. Geert: I would be curious what you
thought about my arguments above.


In general, I'm still hoping to figure out next steps. I believe this
problem is important enough that we shouldn't just drop it due to
silence, so I'll continue being my usual noisy self and keep
pestering.

-Doug

