Return-Path: <devicetree+bounces-62338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E818B0D5E
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65BD71C233F4
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD9715F413;
	Wed, 24 Apr 2024 14:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="DA021eMb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58E815F3E9
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713970670; cv=none; b=jLL/mF+Avr0pbubhOM6+ik1k9+sfjzHCifg64EFxAtTWE8Wh7w1zuf5NIpOws6A8AIfc7SlMmmxGxu4eYHZNZiFY4J0RHoc63cU/hIL5DUX5yKK/8c9nsweMqpxZna5A66LqblxiU9w1tmQOvgUYLv0y74Zuo+25Fz/1rKtWnnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713970670; c=relaxed/simple;
	bh=QMslz113vv9u8rbbuaQqQeBM4KeubIHYp+3TNEFioH4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GglNOcDVi8W1Btcy4PDH40yEYqmzxMvzYeJ2Q9mvxxEDdzLT9aVauHS+bF9rgsMSh8Hk1AvhIc3gO5GtFOyauxsgoTzAHcwm3lm2pRixtOGV7Su3DVc82z8fxtjtLRrhmEOzHo/urJo+hio9sGD7muib40f9YNDuuiuK6Oel3dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=DA021eMb; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DC19E3FE10
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713970664;
	bh=5esocC9ZFW0Dfcow+sGknBU1wI/0vCj6NFX+zWkQdjU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=DA021eMbB/XsGVtLKMIMG1mKtATTf63AUeW8Lt7+LvgkjAHISZm3JwefjHtBM0H/i
	 qSqXIZdulN2d2BUMAaxs8t7v4xqrKHa3Y8R/Ip/+qfN9otkde3ASQZz/WuUtz3FRkK
	 nGsWCwKXm5bybhYdQsmbsp6SjRONllK815yO0yGLODAgp/FNunveRRRttpzMLf1Kt1
	 ofhkg+UJAa2TYjZmLyFfGJTSw+360rGIGvmL8unD0q9lzqewXSe2JIN8Jcm8iCyugq
	 n6bJ+5afDhLXHDjSDSjc6DQQAd7y2qfyfXbYwEBaIIj9u7DD4Sk+zWur+W0SpX7INQ
	 +Dl6pccMipFcQ==
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-6150e36ca0dso114861097b3.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:57:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713970663; x=1714575463;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5esocC9ZFW0Dfcow+sGknBU1wI/0vCj6NFX+zWkQdjU=;
        b=irPU175levjR0Z5DgKcFaW5r61DBDRpPIcYFagN+0f6ebd5acRQrRTfUsN/kMI3Qoe
         IBN7z8685WVF83F+yh7cz7O083WFyj8NFqtAomL+93do8fWlwubl2DYJUIzkhfybG33K
         MbrWzmRYJjhuEmBi3QH1i7A0Lvw5lXFtJo1S3nbbzEXxFJkojGmUZjXUri6OwiRcKVO+
         1KYFKcYQVeKp7I3B8rzVG6SaVP3pmmJfQvmbWBOp8F80YLOCW+dG4hGbwZ7bBBit+5+Y
         veiFuk6EelTGGsvRnCIwZK1tFjCxcYaYPbeFzHaY+BZ0XBx5HhDcskNsy3bj2t8rpuBh
         70Nw==
X-Gm-Message-State: AOJu0YykD2eLGJRCg6ulOosHPqSmAbTOFun2KuW3rNTwmRrCHPBvgnLg
	60FTcDjqkNE4MD8f+DnMID0uPYnCLAWirNKPDow9QmHhx2GzasL1tjcD+yqm8LouYnqgdnVq3OI
	vTuvg90T05NhSyuE5aHU1xzA3pxEuX5bGf78J6FtxZwdT3GD/f3W7XldNCTXX5ce5xTm0prD5GP
	y2uXluY1qmmiIGrk0YRJt5WCTmU7Rg8CuXk5ugfecQihd1LaFq/g==
X-Received: by 2002:a05:690c:3612:b0:609:ff22:1a88 with SMTP id ft18-20020a05690c361200b00609ff221a88mr3109055ywb.44.1713970663313;
        Wed, 24 Apr 2024 07:57:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLj6vN82/lNMO93VtWofH8pTU6lK+eyGAXCYtefLHp0CWoW2WPTI12S+Ss5a+rfru0ns+AgDrPBoEFC+mLT9w=
X-Received: by 2002:a05:690c:3612:b0:609:ff22:1a88 with SMTP id
 ft18-20020a05690c361200b00609ff221a88mr3109036ywb.44.1713970662973; Wed, 24
 Apr 2024 07:57:42 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Apr 2024 07:57:42 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <SH0PR01MB08410B2FCAE1D9AA754865BFF910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
References: <20240424075856.145850-1-joshua.yeong@starfivetech.com>
 <20240424075856.145850-2-joshua.yeong@starfivetech.com> <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
 <SH0PR01MB0841F8C45091E4A08020ADF2F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9NAeRb_3ZBJksXt+4fJMdcYw55bfAs0EpSnM8VWBKQag@mail.gmail.com>
 <SH0PR01MB08415B9CDDFB1A4FAB0FC4A9F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z_G5EKSjHztCQ+gXDGwfpziZTE=HsHmwydJWB-uorMOqA@mail.gmail.com> <SH0PR01MB08410B2FCAE1D9AA754865BFF910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 24 Apr 2024 07:57:42 -0700
Message-ID: <CAJM55Z-6vqSjL3GPT7GqC1k01zH8+zexSpcOFFUpuZELAQxARw@mail.gmail.com>
Subject: RE: [PATCH v3 1/2] cache: Add StarFive StarLink cache management for
 StarFive JH8100
To: Joshua Yeong <joshua.yeong@starfivetech.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"conor@kernel.org" <conor@kernel.org>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>, JeeHeng Sia <jeeheng.sia@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Joshua Yeong wrote:
> Emil Renner Berthing wrote:
> > Joshua Yeong wrote:
> > >
> > >
> > > Emil Renner Berthing wrote:
> > > > Joshua Yeong wrote:
> > > > > Emil Renner Berthing wrote:
> > > > > > Joshua Yeong wrote:
> > > > > > > Add StarFive Starlink cache management driver for
> > > > > > > JH8100 SoC. This driver enables RISC-V non-standard cache
> > > > > > > operation on
> > > > > > > JH8100 that does not support Zicbom extension instructions.
> > > > > > >
> > > > > > > Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> > > > > > > ---
> > > > > > >  drivers/cache/Kconfig                   |   9 ++
> > > > > > >  drivers/cache/Makefile                  |   5 +-
> > > > > > >  drivers/cache/starfive_starlink_cache.c | 135
> > > > > > > ++++++++++++++++++++++++
> > > > > > >  3 files changed, 147 insertions(+), 2 deletions(-)  create
> > > > > > > mode
> > > > > > > 100644 drivers/cache/starfive_starlink_cache.c
> > > > > > >
> > > > > > > diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig
> > > > > > > index
> > > > > > > 9345ce4976d7..9181cd391f53 100644
> > > > > > > --- a/drivers/cache/Kconfig
> > > > > > > +++ b/drivers/cache/Kconfig
> > > > > > > @@ -14,4 +14,13 @@ config SIFIVE_CCACHE
> > > > > > >  	help
> > > > > > >  	  Support for the composable cache controller on SiFive
> > platforms.
> > > > > > >
> > > > > > > +config STARFIVE_STARLINK_CACHE
> > > > > > > +	bool "StarFive StarLink Cache controller"
> > > > > > > +	depends on RISCV
> > > > > > > +	depends on ARCH_STARFIVE
> > > > > > > +	select RISCV_DMA_NONCOHERENT
> > > > > > > +	select RISCV_NONSTANDARD_CACHE_OPS
> > > > > > > +	help
> > > > > > > +	  Support for the StarLink cache controller on StarFive
> > platforms.
> > > > > >
> > > > > > This is a bit misleading. The JH71x0s don't have this. It's onl=
y
> > > > > > on the JH8100 so far, and hopefully later SoCs will just
> > > > > > implement RISC-V
> > > > standards for this.
> > > > > > So maybe something like
> > > > > >
> > > > > > "Support for the StarLink cache controller on the StarFive JH81=
00 SoC."
> > > > > >
> > > > >
> > > > > Hi Emil,
> > > > >
> > > > > The StarLink-500 cache controller is not designed exclusively for=
 JH8100
> > SoC.
> > > > > While it is true that it currently exists on the StarFive
> > > > > platform, CPU/SoC that does not come with Zicbom extensions
> > > > > supported would need to rely on this cache drive to do cache
> > > > > management operations. I think we don=E2=80=99t need to mentioned=
 'JH8100
> > SoC' here.
> > > >
> > > > Wait, in the previous mail you said that future designs will
> > > > implement Zicbom and not need this work-around, but here you're
> > > > talking about other SoCs that do need it. So which is it?
> > >
> > > If you visit the company website and look for StarLink-500, you will
> > > find that it is a standalone IP that the company is selling as an
> > > interconnect. Anyone who integrates StarLink without Zicbom extension=
s
> > > may utilize the cache management operation from this IP.
> >
> > So then the "on StarFive platforms" part is wrong? Or will this always =
go
> > together with the Dubhe cores?
>
> It would be 'on StarFive platform' without 'JH8100 SoC' that you suggeste=
d.
> StarFive's newer cores that will have Zicbom extensions supported. Those
> CPU core will not need to have this cache controller enabled.

No, what I meant was that if you're selling the "StarLink-500" IP to other =
SoC
manufacturors then it will not be restricted to StarFive platforms. So then
"Support for the StarLink cache controller _on StarFive platforms_" is no l=
onger
true, right?

/Emil

