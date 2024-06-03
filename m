Return-Path: <devicetree+bounces-71871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E828D8489
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 16:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C31C281614
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 14:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9236D12DDBA;
	Mon,  3 Jun 2024 14:01:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50773C0D
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 14:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717423279; cv=none; b=Wm09D9kIQqGhnC5qDSGpqfdXuX85J6s0Hi/f9nAi8oGBSitDrvpKabhdxmTsCSxSvWrFa0jEhPabc5cqxD5ajmCQv75dj3WwIyVDlA6bTDGiz4ZL2lCOWjaZq0RwmYDDR02E/+oFHET+XyAPoF/fOLx4AjoC6EB/uBaU7Gk+UZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717423279; c=relaxed/simple;
	bh=iskwCpfWmOmjj8LQMd+9brU+S6GG6OCs2yHrtsRv04M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pUnr4DsSsGGy3O0YEPOX5JJflmUW1yySAi6FoIlJnWZ6hVumJmwr3QPuBUSIaiENMRY+OzrmI3m6JeCEGT0lM5A73fQpn9v8xf4G8JeJKthSlNl6RWSM6yr0lyHNLF1e/WSk3NOhx8xdSc3WEUbFCIPY+foxLw2gXpXTwoU6u3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52965199234so4946921e87.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 07:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717423275; x=1718028075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FJymqROTHCE9BbbBBDBpPSnWxcEXeSBn32d2JSU7lQs=;
        b=pgH7irZRN8wbx5y0MDC71p3M6iQwGBMZPnawjp6/tDd9Sk8OH/XGzRb/zQiuJEU3in
         rTU2tLWDIWjCWG2xdGl4qr6FRL6gVvywZ/sIQvLmfeAA/t57HXWCufbeDxp80EiYta1M
         BxiE2sTC7y2vHXiHp5KhT7XkM23PkdHSJxAZnEuIGqCEidd4rOAsPuizCE8ynlOhK2mM
         ThhjoAzREqW+SzNbWTyWVuUyaJ1imKLJYUS6brTtUOa6VrMSaHswWK2HnPHol5OC1Fuv
         3u0M/Wy7U/MXF9KyGTs55xL/XF6mWWCYWu4vSEWGCPhcjsO+uTDATFuqVPc7UrD2kep9
         Rw/Q==
X-Forwarded-Encrypted: i=1; AJvYcCX02+MYcQSSBLw6y+2FYfDYYpzB/S547dlK/NsSKDzqhKlnd6J9dwoa0jKRDdn8oB+zLoSRfnua0iGcgxrI+/fosZ9LDFiNFlLXLw==
X-Gm-Message-State: AOJu0YxdiEx0dHeA+lk1wIs3zFWqZE5zCwe+kIB+1Hsy9KJhZPYDYClN
	v2V0ORETbJSpCyF5NbT6TtzCg+nNK1uZgahYnWY/BOn1f7OQkP3byAkIXpyP
X-Google-Smtp-Source: AGHT+IEhFUYpFSwe+LbHAlc9m+IW2+41AKLb95i1nppdJ72dym0Lhsu8MGA8tW2ZFupTCbMu/IFfxA==
X-Received: by 2002:a05:6512:4898:b0:52b:4f30:9cac with SMTP id 2adb3069b0e04-52b896cd347mr5878768e87.56.1717423274221;
        Mon, 03 Jun 2024 07:01:14 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d34ce5sm1235410e87.36.2024.06.03.07.01.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 07:01:14 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2e95a883101so57677131fa.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 07:01:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVj5gpQkYMcKNYUYxOlfL5I5Q3BI/fucCzzAIV1YKbRnM13v1pyFzeFohZyOWZG/Kq6pBlZsotnYaQ4utwPcvCckPsL5yjZUgzHxg==
X-Received: by 2002:a2e:a787:0:b0:2e9:5380:615c with SMTP id
 38308e7fff4ca-2ea950ea481mr71944491fa.12.1717423273822; Mon, 03 Jun 2024
 07:01:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240603095133.1792688-1-cnnblike@gmail.com> <20240603143508.0b8ce772@donnerap.manchester.arm.com>
In-Reply-To: <20240603143508.0b8ce772@donnerap.manchester.arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 3 Jun 2024 22:01:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v67JSH-Ew==WacuFQUmc69Lx3woULKsknRkAURGUJW0Maw@mail.gmail.com>
Message-ID: <CAGb2v67JSH-Ew==WacuFQUmc69Lx3woULKsknRkAURGUJW0Maw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sunxi: Removed redundant sun8i entry
To: Andre Przywara <andre.przywara@arm.com>
Cc: Ke Li <cnnblike@gmail.com>, Samuel Holland <samuel@sholland.org>, jernej.skrabec@gmail.com, 
	linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 3, 2024 at 9:35=E2=80=AFPM Andre Przywara <andre.przywara@arm.c=
om> wrote:
>
> On Mon,  3 Jun 2024 17:51:34 +0800
> Ke Li <cnnblike@gmail.com> wrote:
>
> Hi KL,
>
> > Hi, Jernej.skrabec@ and linux-sunxi@lists.linux.dev,
>
> please use scripts/get_maintainer.pl on the patch file to generate a list
> of emails that patches should be send to. You do not need to include
> everyone mentioned in that output, but at least the maintainers and the
> lists.
>
> > I'm looking into the dts Makefile of Allwinner. It seems like in 724ba6=
751532055db75992fc6ae21c3e322e94a7 "ARM: dts: Move .dts files to vendor sub=
-directories", we made a mistake and duplicate the "dtb-$(CONFIG_MACH_SUN8I=
)" entry on line 202 and line 265.
> > A patched is generated for this.
>
> Pavel sent the same patch already two months ago:
> https://lore.kernel.org/linux-sunxi/20240320061027.4078852-1-pavel@loebl.=
cz/
>
> Having said this, I wonder what happened to that patch. I think we agreed
> on this, but I don't see it any tree?

Looks like there were some comments on the last patch and the whole
series ended up not getting merged.

ChenYu

> Cheers,
> Andre
>
> >
> > KL
> >
> > Signed-off-by: Ke Li <cnnblike@gmail.com>
> > ---
> >  arch/arm/boot/dts/allwinner/Makefile | 65 +---------------------------
> >  1 file changed, 2 insertions(+), 63 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/a=
llwinner/Makefile
> > index 4247f19b1..f9484f8d4 100644
> > --- a/arch/arm/boot/dts/allwinner/Makefile
> > +++ b/arch/arm/boot/dts/allwinner/Makefile
> > @@ -260,69 +260,8 @@ dtb-$(CONFIG_MACH_SUN8I) +=3D \
> >       sun8i-v3s-anbernic-rg-nano.dtb \
> >       sun8i-v3s-licheepi-zero.dtb \
> >       sun8i-v3s-licheepi-zero-dock.dtb \
> > -     sun8i-v40-bananapi-m2-berry.dtb
> > -dtb-$(CONFIG_MACH_SUN8I) +=3D \
> > -     sun8i-a23-evb.dtb \
> > -     sun8i-a23-gt90h-v4.dtb \
> > -     sun8i-a23-inet86dz.dtb \
> > -     sun8i-a23-ippo-q8h-v5.dtb \
> > -     sun8i-a23-ippo-q8h-v1.2.dtb \
> > -     sun8i-a23-polaroid-mid2407pxe03.dtb \
> > -     sun8i-a23-polaroid-mid2809pxe04.dtb \
> > -     sun8i-a23-q8-tablet.dtb \
> > -     sun8i-a33-et-q8-v1.6.dtb \
> > -     sun8i-a33-ga10h-v1.1.dtb \
> > -     sun8i-a33-inet-d978-rev2.dtb \
> > -     sun8i-a33-ippo-q8h-v1.2.dtb \
> > -     sun8i-a33-olinuxino.dtb \
> > -     sun8i-a33-q8-tablet.dtb \
> > -     sun8i-a33-sinlinx-sina33.dtb \
> > -     sun8i-a83t-allwinner-h8homlet-v2.dtb \
> > -     sun8i-a83t-bananapi-m3.dtb \
> > -     sun8i-a83t-cubietruck-plus.dtb \
> > -     sun8i-a83t-tbs-a711.dtb \
> > -     sun8i-h2-plus-bananapi-m2-zero.dtb \
> > -     sun8i-h2-plus-libretech-all-h3-cc.dtb \
> > -     sun8i-h2-plus-orangepi-r1.dtb \
> > -     sun8i-h2-plus-orangepi-zero.dtb \
> > -     sun8i-h3-bananapi-m2-plus.dtb \
> > -     sun8i-h3-bananapi-m2-plus-v1.2.dtb \
> > -     sun8i-h3-beelink-x2.dtb \
> > -     sun8i-h3-libretech-all-h3-cc.dtb \
> > -     sun8i-h3-mapleboard-mp130.dtb \
> > -     sun8i-h3-nanopi-duo2.dtb \
> > -     sun8i-h3-nanopi-m1.dtb\
> > -     \
> > -     sun8i-h3-nanopi-m1-plus.dtb \
> > -     sun8i-h3-nanopi-neo.dtb \
> > -     sun8i-h3-nanopi-neo-air.dtb \
> > -     sun8i-h3-nanopi-r1.dtb \
> > -     sun8i-h3-orangepi-2.dtb \
> > -     sun8i-h3-orangepi-lite.dtb \
> > -     sun8i-h3-orangepi-one.dtb \
> > -     sun8i-h3-orangepi-pc.dtb \
> > -     sun8i-h3-orangepi-pc-plus.dtb \
> > -     sun8i-h3-orangepi-plus.dtb \
> > -     sun8i-h3-orangepi-plus2e.dtb \
> > -     sun8i-h3-orangepi-zero-plus2.dtb \
> > -     sun8i-h3-rervision-dvk.dtb \
> > -     sun8i-h3-zeropi.dtb \
> > -     sun8i-h3-emlid-neutis-n5h3-devboard.dtb \
> > -     sun8i-r16-bananapi-m2m.dtb \
> > -     sun8i-r16-nintendo-nes-classic.dtb \
> > -     sun8i-r16-nintendo-super-nes-classic.dtb \
> > -     sun8i-r16-parrot.dtb \
> > -     sun8i-r40-bananapi-m2-ultra.dtb \
> > -     sun8i-r40-oka40i-c.dtb \
> > -     sun8i-s3-elimo-initium.dtb \
> > -     sun8i-s3-lichee-zero-plus.dtb \
> > -     sun8i-s3-pinecube.dtb \
> > -     sun8i-t113s-mangopi-mq-r-t113.dtb \
> > -     sun8i-t3-cqa3t-bv3.dtb \
> > -     sun8i-v3-sl631-imx179.dtb \
> > -     sun8i-v3s-licheepi-zero.dtb \
> > -     sun8i-v3s-licheepi-zero-dock.dtb \
> > -     sun8i-v40-bananapi-m2-berry.dtb
> > +     sun8i-v40-bananapi-m2-berry.dtb \
> > +     sun8i-h3-nanopi-m1.dtb
> >  dtb-$(CONFIG_MACH_SUN9I) +=3D \
> >       sun9i-a80-optimus.dtb \
> >       sun9i-a80-cubieboard4.dtb
>

