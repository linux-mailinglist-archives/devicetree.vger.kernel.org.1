Return-Path: <devicetree+bounces-239729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFF3C68CFF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:25:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B6D9E3812C5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80842342527;
	Tue, 18 Nov 2025 10:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lj98iVvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487BD33BBC2
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763461062; cv=none; b=KK5rcwdKL0621s9ySayVoYaB4ybmAyAtBYe9L/FDLqiW+B1XMZjidMGM4TLaxuX4Nhje7jitpAoR7aFp2iam1nbNdljBGfeNWfqjurMmmm/3VOCao1tL2+wQiZuJIlHcPV3GEhKDGpuGxbG3VP7qNQsymfDD/fkPEGPIna2YXXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763461062; c=relaxed/simple;
	bh=OHsKSydon+27U6Om7xHy30w+D0xC4tQ3aCe/wXCx3io=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OLWcFyWPb8jCI/NKemW5hYNapZb2fXaXoeWQ6eUVYLAHPaE3iCraIlCaXdWIuGqL+hleWz75F9RoljgKS/KF/9dx88BQxJXhIPKO5ZmIFzHymimKie7N2DXXGN02ZStB/wfqdT3WDSZKf38BmTpdF3QFCwVgVxxSFFhcrMBX+DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lj98iVvC; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5943b62c47dso5267999e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763461057; x=1764065857; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bMz2ZE23L8pkKEvAtibV91PPmqodgqp/GEg4FP1KnLM=;
        b=lj98iVvCxmXyGZv8PvT4AJoYfRfEKCvPFQrewslRlNlxJIDIELjc7vPMg+YypCWQ1P
         g867RC4fu2rujssux0ENEO/iOFlF3oDFlQlSG4n4cLEHVOhoi4CRGUaw/wQDgfTZQcJV
         JXfZQsW4LMAua+xmnlwxUq/n3x+sBiOY+7aoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763461057; x=1764065857;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bMz2ZE23L8pkKEvAtibV91PPmqodgqp/GEg4FP1KnLM=;
        b=DHCsK/jjpTsAew9X41SdHA0VpnCbR7nKKFwsFGMLwwgh6WqZ44WCBWkiy0kYRQG1zc
         LTFZIvUDW9gyQdRk3eV5J7DssUeqxlsKiY95a2JB7J1YEWRCiyviCrJpR8kGt6r+z/3d
         YV+2NvQPdroOL381ZVJBuXq5e+PfCvy8Z4qQfhwLzM9DbPB0lYqc4ni9Bfj07LhwASVw
         axbrsSK98NTMHy5muVWmKai7CEnVa4+ZGRP/IVz4Ft5iGO8FilvS7Fy7CthNG6y+OROO
         TvgQ7FZz+ntk9g1q38R4J2Q17ylaftxsa5c9U0r52FXLmVf+TANupJTZt/fHYeB6G4BJ
         pKfw==
X-Forwarded-Encrypted: i=1; AJvYcCU7kPWJ/dyil/ER61UIfhh1wnpKuayoN95zJNvAQnEnJY7RqnlwYViCqk2+AptDiu6YDw/BRzLi9lW3@vger.kernel.org
X-Gm-Message-State: AOJu0YxNvY07NQ2OzcTRXOTkrWpE8TkGBzF64e2Wqh04P2BI8SirBZxF
	cRlcyB/hTyCZR4Qx1xmhtSIV9aggI4AdcEW9Uay3aYArtS4gKohJr4YW6FB+4Kny57cPK5h6M8j
	H4QySIiu0Z2KttD47nTLjD0ki4VkCmeKFxKW397pa
X-Gm-Gg: ASbGncvIfm5WAeQKuXsQXt1s0UDbEBFusCGPP5mjk30VhBoq/OpOn4vnv+irc91jcNE
	GjcZFP4QscJ/Dp3kKKmiZ2eyji4l29maVorRdiwMZlQcuWVM0oauYsbIRbq2cv7mH48pDdGmj4L
	qqEypBdgzo+X96dLjACs/epUyo6sXeq+WDnfnq7Q7saheKIahSiB7P0ikZtTpa7c82T3VnFPcLB
	azJxg/3GX/m3+7oHqg8U6exeL1An88n9w/RAvM5TH0d6oe51ubVfwzGxKhBH/M+w3XG+TuhbzSM
	yxKH1vEO9TEu1jI=
X-Google-Smtp-Source: AGHT+IEDIyDccAsQNaQoiJeQUTT4vBLg4RzkD7VakIIbkSB2sGZK1r6Tx5nUDzSggQyhw/8/mBQdIa7MJoa+YejWBHs=
X-Received: by 2002:a05:6512:3b0d:b0:594:2f72:2f7b with SMTP id
 2adb3069b0e04-595841a2ce6mr4735606e87.6.1763461056862; Tue, 18 Nov 2025
 02:17:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117211306.725678-1-robh@kernel.org> <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
In-Reply-To: <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 18 Nov 2025 18:17:25 +0800
X-Gm-Features: AWmQ_bm304gtjUmEwlNuwAwUF0aqnogWCU3ugaXK9WBY_7txsNFFaEsy0o7zYa0
Message-ID: <CAGXv+5H23oc_Zj3tR4uCwKpXi074ujmF7WB9g_NV-OmXnAWmmQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at build time
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 5:36=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 17/11/25 22:13, Rob Herring (Arm) ha scritto:
> > It's a requirement that DT overlays be applied at build time in order t=
o
> > validate them as overlays are not validated on their own.
> >
> > Add targets for all the Mediatek overlays.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> > This will soon be a warning[1].
> >
> > Note that if it is desired that the combined .dtb is not installed, the=
n
> > the combined .dtb should be added to 'dtb-' variable instead.
> >
>
> Uhm, sorry, can't we do something such that we don't generate a DTB with =
a
> preapplied overlay?
>
> Even something like generating those and deleting before build finalizati=
on
> could work, I guess, though that'd be hacky maybe.
>
> I don't know if this is the case, but I'm worried that various people hav=
e
> scripts to copy DTBs somewhere (in some partition) or embed those in imag=
es,
> and if they get the preapplied overlay dtbs in the same place, havoc coul=
d
> happen as the bootloaders might be selecting wrong dtbs (as a plus, there=
 is
> no dtbo that varies machine compatible strings, rightfully).

The in-tree scripts/make_fit.py can take a list of DTBs to pack, so
it's conceivable that someone would just use a wildcard path.

We do something similar downstream in ChromeOS, but we probably won't
get this change anytime soon.

OOTH the "make fit" target uses arch/arm64/boot/dts/dtbs-list , which
it seems is also used for DTB install?


ChenYu

> Cheers,
> Angelo
>
> > [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.or=
g/
> > ---
> >   arch/arm64/boot/dts/mediatek/Makefile | 16 ++++++++++++++++
> >   1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dt=
s/mediatek/Makefile
> > index a4df4c21399e..4e92bd9f0e53 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
> > +++ b/arch/arm64/boot/dts/mediatek/Makefile
> > @@ -15,16 +15,30 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-acelink-ew=
-7886cax.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-mini.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-emmc.dtbo
> > +mt7986a-bananapi-bpi-r3-emmc-dtbs :=3D mt7986a-bananapi-bpi-r3.dtb mt7=
986a-bananapi-bpi-r3-emmc.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-emmc.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-nand.dtbo
> > +mt7986a-bananapi-bpi-r3-nand-dtbs :=3D mt7986a-bananapi-bpi-r3.dtb mt7=
986a-bananapi-bpi-r3-nand.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-nand.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-nor.dtbo
> > +mt7986a-bananapi-bpi-r3-nor-dtbs :=3D mt7986a-bananapi-bpi-r3.dtb mt79=
86a-bananapi-bpi-r3-nor.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-nor.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-sata.dtbo
> > +mt7986a-bananapi-bpi-r3-sata-dtbs :=3D mt7986a-bananapi-bpi-r3.dtb mt7=
986a-bananapi-bpi-r3-sata.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-sata.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-sd.dtbo
> > +mt7986a-bananapi-bpi-r3-sd-dtbs :=3D mt7986a-bananapi-bpi-r3.dtb mt798=
6a-bananapi-bpi-r3-sd.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-bananapi-bpi-r3-sd.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986a-rfb.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7986b-rfb.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4-2g5.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4-emmc.dtbo
> > +mt7988a-bananapi-bpi-r4-emmc-dtbs :=3D mt7988a-bananapi-bpi-r4.dtb mt7=
988a-bananapi-bpi-r4-emmc.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4-emmc.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4-sd.dtbo
> > +mt7988a-bananapi-bpi-r4-sd-dtbs :=3D mt7988a-bananapi-bpi-r4.dtb mt798=
8a-bananapi-bpi-r4-sd.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt7988a-bananapi-bpi-r4-sd.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8167-pumpkin.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8173-elm.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8173-elm-hana.dtb
> > @@ -104,6 +118,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8390-genio-700-e=
vk.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8395-kontron-3-5-sbc-i1200.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8395-radxa-nio-12l.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8395-radxa-nio-12l-8-hd-panel.dtbo
> > +mt8395-radxa-nio-12l-8-hd-panel-dtbs :=3D mt8395-radxa-nio-12l.dtb mt8=
395-radxa-nio-12l-8-hd-panel.dtbo
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8395-radxa-nio-12l-8-hd-panel.dtb
> >   dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8516-pumpkin.dtb
> >
> >   # Device tree overlays support
>
>
>

