Return-Path: <devicetree+bounces-243814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B804EC9D2EC
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 43882349EC3
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D70652FBE1B;
	Tue,  2 Dec 2025 22:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hcoJLv6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49A82FB0A1
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713525; cv=none; b=kOMP580zZgHy+ApgmbcaHSVq7YsfqztGgwsXEKLee12I+1EZAbt/chF3flpJhdRY9571bFSMgLVkvuvsBR0VAGu6ev9v1voEa3OdCXG+Jfb4aMEdqOD8j/sn4/tD8Z5fRIi6T+Sx2nB61d3DXL8Va2+NrROo0eYyTCm3cn0Ndl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713525; c=relaxed/simple;
	bh=B1OPPhN9pGtfta9FcvJcfo3kyGpxYUpQDm3/3tNP1OA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=duggz7gjxBHV4CM0wk4BgcRqr29N9thWFljrT6kXT2lUCKO5QfRmQzTYApG12AIGmlKL+KO4gHHVyEXIzfs3F7bVRosaiTVj33sCyFy4uUL6agSzo//dV89MxaMend2jLk6igI/ArS9z2cZi7pYa0D1GaXOHIMRisD1+mea8iCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hcoJLv6F; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-37bbb36c990so2732031fa.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764713521; x=1765318321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ZsKacXlk1x/USH5v76Y2P+5QZvrnKBumSM1Y249Jhk=;
        b=hcoJLv6FMEyFCcOUTmwauta1+l92+kre3bdspIG9EGVHcqsoa5S2e/lDPwUYzDleVX
         w+NVYmlneRUCNTzmEbwLmy3LUpHnuY3iYc1LC6jc+IJq17WT56eGW/QqRrGH1yoLRWJ/
         9MX1Yla4JCIB3jVdzbIyOTSjmlYI7p6B3dK3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713521; x=1765318321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0ZsKacXlk1x/USH5v76Y2P+5QZvrnKBumSM1Y249Jhk=;
        b=f6EkKWFFJDtwBWfKSM8Aw6DNMqTYScehr70Y3P/+IVDWOMsABopC15/omO+Nxzy/y4
         Y1Nuamk2HMVOalC4c6ZEkLumiyoUpiq/a6dEAs4FFRvG4w9URmbRQr0erUO1YyJ5Suo+
         PGNFe9UrTqWNSdEducHjp5++sUmYnjYD8GK3SAtbV3AGzyIKpNEu5GIw0ThcSm/LAqgU
         aFHOUQHzZWUveWZ6sN5Y4xMbvWozeHy7fjujiBiTIwgvCMl9HsDJvPN5HKL32DIi7TjL
         XmJXV6+6PHN4ZY0MB5sh4eIZKzrO0Mzq1t7B/HKCIdCl40alU8ekFqg13skv9Ezasr24
         nbNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXl3y2ns++obcA+X+l6oSlA6pxYhSRhl/mLK/nk5j855TLumNieUdCr1X7v7+8H4g7KybIpvgYqxU5R@vger.kernel.org
X-Gm-Message-State: AOJu0YxmRMjCxxLlVA4oEfAwR6Kv6N5UoYy6zF0QJVFe6HC7j4hbEYEA
	zFvedTKeaS1ZoR+qCrZ63pXytZbZ2pMX6cGdOmucn0YkUCf1amhHoENmpg54BDoNqspK5gobW4t
	rFhulqDwG
X-Gm-Gg: ASbGncuC4kL6iGTmO3JO1Il9RYuMfxQRR2hyQUSaVwBUtU6E8+JjfuVBWnlpsl04gbe
	yDyd5k9kYjY4IUY3IX8v4tu4Ex4CZh60s21WOsUXUswvWU3iRk8k1qvWFeTFmAKTXZOLycxaBJA
	sy0ZgxCHh/woOkrV3TnfWGUm0dMI10pJIZxvTr2ibN0RwByAdK7c7McXU+xs5pgXigQZpWrw/t2
	ueUjNVevJhcxXSpzcR0ua7QXkxQ5ff93OjdqK78N2iVStTcEsBJNAuYDEAnURUlB20cOVGhpMjM
	kFzHi307/+J6EvE0rZeTcFpJbKzD62u5h5j1jIXWMAG0teyhr3REWsbzvyYjElVWtVWcbdU+5QU
	WpEpF5e7YN3nWDS7xJKuC13lDc0cjbfzs2MPPcWFlrXCYJKf3/HmGiRAehA0lqWzXK2pxual0RB
	+Sbwj5qn/WdlqPi9/7ISYuxEZDUrRrXUGxPNVd2s/LrBkaJ3YtPb60kWi8/tDh
X-Google-Smtp-Source: AGHT+IFLJch0zQMsNx5fYRPHKS9ebpSIQ+mj6rEKuBRZsywp3hwA4sn/eogwN1FUaCGxfnS9kHxTRA==
X-Received: by 2002:a2e:6e10:0:b0:37b:9695:331f with SMTP id 38308e7fff4ca-37e6412c20fmr449891fa.11.1764713521180;
        Tue, 02 Dec 2025 14:12:01 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d2409900asm36783221fa.29.2025.12.02.14.12.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:12:01 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59577c4c7c1so292951e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:12:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX6S4P+1W/a8NFZ6scdF7Bwz8bJeO8cHhOAKU9BU3QdnRXbj5PaZwtg9goK+/rjFA/UR1QxOcDJJthj@vger.kernel.org
X-Received: by 2002:a05:6000:1ac5:b0:429:8bb2:d0ce with SMTP id
 ffacd0b85a97d-42f6d5a0bb0mr5508346f8f.18.1764713102630; Tue, 02 Dec 2025
 14:05:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <aS66WcLPm6e5rdyk@shell.armlinux.org.uk>
In-Reply-To: <aS66WcLPm6e5rdyk@shell.armlinux.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 14:04:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VxArGov6jB8jTTnPmM9XKAya_nc4wCDQS+uZf72hgmzA@mail.gmail.com>
X-Gm-Features: AWmQ_bnodrqkOULQQki0m69B7q1cCVAE8F8yOrV4gjyka70td8p-eK-StEz6mVE
Message-ID: <CAD=FV=VxArGov6jB8jTTnPmM9XKAya_nc4wCDQS+uZf72hgmzA@mail.gmail.com>
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

On Tue, Dec 2, 2025 at 2:07=E2=80=AFAM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> Having worked on the SolidRun i.MX6 platforms, I agree with this.
> Within these platforms there are:
>
> SoC     SOM             Platform
> imx6dl  pre-v1.5        cubox
> imx6q   v1.5            hummingboard
>         v1.5 + emmc     hummingboard2
>
> On top of these, I have specific "user" extensions for hardware that
> I've connected - e.g.
> - the NoIR RPi camera needs DT modification.
> - for monitoring a mechanical church clock, a "gps" variant that
>   allowed PPS to be used with a GPIO pin, and a "capture" variant
>   that configured the hardware to allow precise event stamping.
> - 1-wire, for ds18b20 temperature sensors.
>
> Without the user extensions, this adds up to 18 DTB files:
> arch/arm/boot/dts/nxp/imx/imx6dl-cubox-i-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-cubox-i-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-cubox-i.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard2-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard2-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6dl-hummingboard2.dts
> arch/arm/boot/dts/nxp/imx/imx6q-cubox-i-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-cubox-i-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-cubox-i.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard2-emmc-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard2-som-v15.dts
> arch/arm/boot/dts/nxp/imx/imx6q-hummingboard2.dts
>
> basically, every combination needs to be enumerated. So, having two SoC
> dt files, three for the SOM, and three for the platform that the boot
> loader combines would significantly cut this down - to 8.
>
> However, it isn't that simple. For example, when the Hummingboard2 is
> used with the iMX6Q SoC, there's a SATA device present in the SoC level
> that needs Hummingboard2 specific properties to tune the signal
> waveform. However, iMX6DL doesn't have this SATA device in silicon, so
> the node doesn't exist in the base SoC DT file. The situation is the
> same for Hummingboard, but the tuning parameters, being board specific,
> are different.
>
> This means is that there are DT properties that are dependent on the
> SoC DT component and the platform DT component which do not fit with
> splitting the DT files into their individual "component" levels.

Wow, it sounds complicated! Yeah, in your specific case where you need
specific tuning parameters for each combination of SoC and SoM the
easiest might be to just keep things separate as you have it. If
you're looking to optimize the total size of the distributed device
trees instead of the total number of files, overlays still could
possibly help you out, though. I could imagine a case where you first
apply the "coarse" overlays (SoC, SoM, board) and then you look for
finer-grained overlays that are applied atop that. You'd still need a
bunch of these "finer grained" overlays (one for each unique
combination) but each one would be tiny.

To make it concrete, I'd imagine:
- imx6q - base dtb
- som1.5 - overlay
- hummingboard2 - overlay
- hummingboard2-with-imx6q - overlay

...and the "hummingboard2-with-imx6q" could _just_ have the SATA
tunings in it. I think that would be possible, right?


> The other issue would be the /model property - for example:
>
>         model =3D "SolidRun HummingBoard2 Solo/DualLite";
>         model =3D "SolidRun HummingBoard2 Solo/DualLite (1.5som+emmc)";
>         model =3D "SolidRun HummingBoard2 Solo/DualLite (1.5som)";
>         model =3D "SolidRun HummingBoard Solo/DualLite";
>         model =3D "SolidRun HummingBoard2 Dual/Quad";
>         model =3D "SolidRun Cubox-i Solo/DualLite";
>
> as a set of examples. I don't see a clear way to generate these from
> a fragmented scheme. There's a similar problem with the board-level
> compatible:
>
>         compatible =3D "solidrun,cubox-i/dl", "fsl,imx6dl";
>         compatible =3D "solidrun,hummingboard2/dl", "fsl,imx6dl";
>         compatible =3D "solidrun,hummingboard/dl", "fsl,imx6dl";
>         compatible =3D "solidrun,hummingboard2/q", "fsl,imx6q";
>
> These don't include the SoM information.

Right. This is the question many of the messages in this thread have
been struggling with.

Things become a bit easier if you simply don't expect the top-level
"compatible" to describe everything. ...but in your case it sounds
like things are _very_ dynamic (everything can be combined with
everything), so if we want to solve your problem it seems like we
truly do need a way to "combine" compatible strings.

As per one of my earlier replies, it's possible we'll postpone this
and start with simpler cases where we don't need to do any top-level
compatible/model munging, but it's good to know that there's a use
case that really needs it.


> Maybe what would work would be a high-level DT file that contains
> paths to the lower levels that need to be combined, along with
> properties that need to be merged. E.g.
>
> / {
>         model =3D "SolidRun HummingBoard2 Dual/Quad";
>         compatible =3D "solidrun,hummingboard2/q", "fsl,imx6q";
>
>         dts-components {
>                 compatible =3D "boot/dt";
>
>                 component@1 {
>                         compatible =3D "dt";
>                         path =3D "imx6q.dtbo";
>                 };
>
>                 component@2 {
>                         compatible =3D "dt";
>                         path =3D "imx6qdl-sr-som-v1.5.dtbo";
>                 };
>
>                 component@3 {
>                         compatible =3D "dt";
>                         path =3D "imx6qdl-hummingboard2.dtbo";
>                 };
>
>                 component@4 {
>                         compatible =3D "dt";
>                         path =3D "imx6ql-hummingboard2-emmc.dtbo";
>                 };
>         };
>
>         soc {
>                 sata@2200000 {
>                         .. sata tuning properties ..
>                 };
>         };
> };
>
> Or something similar.

Yeah, the question of how to know which files to combine is an
important and related point, but I've been trying to keep it separate
so we don't have to solve every complex problem at once. This is, I
believe, also the subject of one of Chen-Yu's talks at Plumbers.


> However, this would mean we would still need the
> 18 or so top level DT files, but also each component as well, which
> will increase the number of files we're having to manage on a target
> platform - so I'm wondering whether it's worth it.
>
> I don't think we'll be able to get away from this problem: it's likely
> that there will continue to be properties that are specific across
> several "levels" of a split DT setup, and apart from something like the
> above, I don't really see a way to handle them.
>
> I also don't see a sensible way without something like the above for a
> boot loader to know the filenames of each of the components for a
> platform - and it would need to be told the order to glue those
> components together.

Right, this kind of thing would be a judgement call. How you'd want to
organize things / use overlays would be up to you.


> I would have liked to use overlays for these platforms, but ISTR they
> either weren't supported at the time, or frowned upon, and even so I
> can only see them working for the simplest of cases due to the issue
> I mention above.

The fact that you have similar needs at least makes me continue to be
confident that this is an important problem to try to solve.


-Doug

