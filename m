Return-Path: <devicetree+bounces-256021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1238D2FFCC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9339E3117958
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E41362142;
	Fri, 16 Jan 2026 10:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GsmvZMw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45C835FF54
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560978; cv=none; b=GNyU1vgakVdj6PPk6k9O4zh7kL6xaDX0Pu0H9mpbB0bBVhF5YpYxmB9ES7sHz38x9Z6QNLAc4PUrs2qf0BF6in7aYX48DHUfpdY04AhEnZOvcOPOFwmuGzxPJPJ4f+BNb25lu/Cs6WjpRpaHAEG+E4J1YthOtT/Hot42ZSWcS78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560978; c=relaxed/simple;
	bh=Mdk5HRP3de0x+BKG3LYkbvVhU7oqXquj25xEVLYtLPc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=skypcUSoS76knSddoW4w4+mEbisF/7hrjxOJx2WWzSO8tVxn2bP/RQ4E8844dX6HG2HCXHsMBbkDvS7pAh4mAwbAKagtcGAfHr+rGRZLLQpS4SQ/koyoCE1g2q4dfACl6Lq/SNLCRttCQyy7HnjxhksxR2k/wtlzRRxASlnKsyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GsmvZMw/; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-655af782859so911024a12.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768560975; x=1769165775; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s7DoksDpFPnlJ6YY9IWEVIqBsN/FrhlIGvYVSfP8/oE=;
        b=GsmvZMw/NyJTwPZAhUDvM+VcarjJ7tZrcJiSOYsh6ZDGhG22e3XCz7TrTHjcuMcyGu
         Sa3CEkc1P45YBRvah9IFyWf2sgIk3GOfJSJivOl1A0FycyXFtCeBhPgMWtCNRSaR84ej
         S+dBq/tXG7uDT1bu2Qo8gxkhTqZYgOy+FEsNKURaJBeCufBBYOMvUovdmlXgwmhXySRd
         f80oyJXVDV/LUPKdmMAS2tGRdzAnQl0pyVOdvTjFaTN/FWo+/LbwNRYVSuL8P7/imC/x
         PBqVa/Hu0/VymR/bPAc/QntQ1WAJXrpO/ocPxEZBAdMVCXL29IvWpdgvAzU9VKOLRYW3
         QUmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768560975; x=1769165775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s7DoksDpFPnlJ6YY9IWEVIqBsN/FrhlIGvYVSfP8/oE=;
        b=hzMLjov/uwfaUF7V8tp0AAOY7Wlh5TOpyc7ESR0xZquiHeX8u4CyhLKgKeEdh8BCPM
         G/c24BfLmLJN+97XhdKweUJdqtezZRluzEMYDywO/jh3RW5/v87EYrbtb3z6qCvwwGDY
         8C7G7zDCe4evKlSoBdvNzpSjWgvqfLsyILsIavuCUmiXCc3tAWgTMB4pFLNsvIhYeSlI
         NJU83HmaD7uPb3z9dChVDIi0tJJa/ll+uK66JIW6YarZ6+k6ZdeKYdD3of09elFVBijo
         wRiQh0VO/voSEHUpPiBY/uwjOA91xtcC1bYKLkXp53bxltDACaV99gVpQ1uGNnfOdLo0
         v/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCU6Qga75OAzf6Y2BR8pKx0GZt9ee6u0LAKVoSYsxtY51nPPRtdzsp1Wo6d2qaPQhW/W/G5n3fIw3Zpn@vger.kernel.org
X-Gm-Message-State: AOJu0YydvuasQtAFmYw51B3ZYgTraZpaXloUEs0+QgO22cJ9C1U4oAK+
	gG/x7b46iUWkZyadxDCIPGNxi7Za1R7y9t5SLj/5kOfT7PtarabU2Ha9isRyNscZHvDaUTt/+b+
	Bqa6rLq/K2CDJ4+BDJ7zf0RnllYT7LfY=
X-Gm-Gg: AY/fxX6rKLqzV5pV9zq+gZNBo+/ARZiIJ47XBOofHALZAKaR+Vg/5agvoNJRAfiwLtX
	v686o1IK+IMS3yZKuh+raO8Gr0KN4HuJJcP71+Wpye85Hh3ctRMPvrBgkR2pWhzu/P9UjgxCbIe
	uKyodUz/6SjrV25vw0DfccqHdsMYV/IISp7RDhdvquWIXGsFEBWfi60kqvAk9UV6IYBjzE4zHyw
	jB/O9gH/9iVLp1eoa98zprmfG+buJ2VYe3Pz/k/Bn8LNT9mYkDwwtL+i3jr/MWMBgpVd6phoWb1
	iEUjvuMoYQ9pQ+NsE1Sfj/WvuzC1VBTN2ZLTmYaOmvacWnf4sYEnjsdjGT4SyyDJE1IHvDW/vrJ
	pU69Zi/2RR8k+/S9x6AXCX2A2ac5vp8wHLkpW
X-Received: by 2002:a17:907:724d:b0:b87:124c:5f54 with SMTP id
 a640c23a62f3a-b87932b6908mr228135666b.59.1768560974807; Fri, 16 Jan 2026
 02:56:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114120610.82531-1-mcanal@igalia.com> <121ede67-dbfc-4b79-8076-04693e9d3d53@gmail.com>
 <59cdede3-7757-4fe1-bb94-e7a93eea7611@igalia.com>
In-Reply-To: <59cdede3-7757-4fe1-bb94-e7a93eea7611@igalia.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Fri, 16 Jan 2026 10:56:03 +0000
X-Gm-Features: AZwV_Qh3vURpqiUWdDMv2MS1A-8fDyVxPzhEs3rm4JOXQLN-4xJ2oEQjFFmdjQk
Message-ID: <CALeDE9PGzTe4LXnDJcyhh_ietWkrf8Sp7xX=X6pZvdCWLx2huw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
To: =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Stefan Wahren <wahrenst@gmx.net>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 16 Jan 2026 at 10:15, Ma=C3=ADra Canal <mcanal@igalia.com> wrote:
>
> Hi Peter,
>
> On 16/01/26 00:53, Peter Robinson wrote:
> > Hi Maira,
> >
> > On 14/01/2026 12:04, Ma=C3=ADra Canal wrote:
> >> Commits 0ad5bc1ce463 ("drm/v3d: fix up register addresses for V3D 7.x"=
)
> >> and 6fd9487147c4 ("drm/v3d: add brcm,2712-v3d as a compatible V3D
> >> device")
> >> added driver support for V3D on BCM2712, but the corresponding device
> >> tree node is still missing.
> >>
> >> Add the V3D device tree node to the BCM2712 DTS.
> >>
> >> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> >>
> >> ---
> >> v1 -> v2:
> >>
> >> - Rebased on top of linux-next (Stefan Wahren)
> >> - Fixed node's address (2000000 -> 1002000000) (Stefan Wahren)
> >> - Link to v1: https://lore.kernel.org/linux-
> >> devicetree/20260113192902.48046-2-mcanal@igalia.com/
> >> ---
> >>   .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  4 ++++
> >>   arch/arm64/boot/dts/broadcom/bcm2712.dtsi          | 14 ++++++++++++=
++
> >>   2 files changed, 18 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/
> >> arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> >> index 7d4742ebe247..97522c6803c5 100644
> >> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> >> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> >> @@ -247,3 +247,7 @@ &pcie1 {
> >>   &pcie2 {
> >>       status =3D "okay";
> >>   };
> >> +
> >> +&v3d {
> >> +    clocks =3D <&firmware_clocks 5>;
> >
> > Looking at the upstream DT [1] I think this also needs a clock-names en=
try.
>
> Differently from the `hvs` node [1] you sent (which specifies clock-
> names), the `v3d` binding [2] doesn't have a clock-names property.
> Therefore, it is not needed.

There's a name in the clk driver [1] so maybe the bindings should be update=
d?

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/clk/bcm/clk-raspberrypi.c#n26

> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> [2]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
>
> Best regards,
> - Ma=C3=ADra
>
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/
> > tree/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi#n233
> >
> >> +};
> >> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/
> >> boot/dts/broadcom/bcm2712.dtsi
> >> index 330a121ebfcb..661668ef7419 100644
> >> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> >> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> >> @@ -1,5 +1,6 @@
> >>   // SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >>   #include <dt-bindings/interrupt-controller/arm-gic.h>
> >> +#include <dt-bindings/soc/bcm2835-pm.h>
> >>   / {
> >>       compatible =3D "brcm,bcm2712";
> >> @@ -642,6 +643,19 @@ mip1: msi-controller@1000131000 {
> >>               msi-ranges =3D <&gicv2 GIC_SPI 247 IRQ_TYPE_EDGE_RISING =
8>;
> >>               brcm,msi-offset =3D <8>;
> >>           };
> >> +
> >> +        v3d: gpu@1002000000 {
> >> +            compatible =3D "brcm,2712-v3d";
> >> +            reg =3D <0x10 0x02000000 0x00 0x4000>,
> >> +                  <0x10 0x02008000 0x00 0x6000>,
> >> +                  <0x10 0x02030800 0x00 0x0700>;
> >> +            reg-names =3D "hub", "core0", "sms";
> >> +
> >> +            power-domains =3D <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> >> +            resets =3D <&pm BCM2835_RESET_V3D>;
> >> +            interrupts =3D <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> >> +                     <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
> >> +        };
> >>       };
> >>       vc4: gpu {
>

