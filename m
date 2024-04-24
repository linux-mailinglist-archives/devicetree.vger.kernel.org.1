Return-Path: <devicetree+bounces-62333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C870B8B0CE7
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DD4B1F28935
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137FF15ECE4;
	Wed, 24 Apr 2024 14:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="L71uEKY1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502FB15ECCB
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713969868; cv=none; b=DyBUGfc8KMtZyR9EQl6YFW7RuWxTfB7IzR4RpMjlE3ZlECzxr7GXZPhlyjIq4zwNCNH96h3a8aBHel46x9P+jBIisDEG1HN4/TwfIRaTYnSUrChXDcfL0NwHpIFFMOkE9A19oc8FxuusGnPDnlJ0U7K9FWq71JUa7k2Iif7JUN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713969868; c=relaxed/simple;
	bh=uWg8+ZtPG/ZLFFpZhnCvLb3hEOIhDlfyUNRqDJX575U=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eZ0CKyjjjP4Y6iVTadBT6cPZEhK5PrwCOwqS98fdsvaQgXDnxDQj/536oUIt8iGwcYFuVF5eF+YsgnkM4vDKnUchJY257FBOLvKEh1nDdcvFuITca13b2nDaSqmrdv1k5qBlWxoNAROsN5QtR2EPinT1y+TItWRWaTjV4xw+W/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=L71uEKY1; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BDECB3FB6C
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713969858;
	bh=cDX/Ta7sZiIBn1XBmkDtAtlryH2vK9PZZdp/V3uN0rM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=L71uEKY1PYxrzqFHLPJpKullI8cf/v6xYlugw8vkM0XZRb/u3zDAK9bzNPXOzx18W
	 N3OCngNDCbzpA5GWI2pC1NdNKrX56kk3CXGCR0XOjEJdCatrbGlQKuWjEyk73LcgdF
	 6RkrTO4g9ZqxGK48SeiiRGleJ4Su4FOZR6yZ3EV5XLuduSiGkQ9kO5efkwdvkBN4fI
	 U+HJ2gXwo/9loC3kgziscJJjU0FR/Y+ssmfa7F5e5/lH/KeL8EyHjIV+gGoJlml4Si
	 ZVjj9/ranb8WsNzOMDCSGthbyBIHtlOhHSKdL0XGkHWqS74Dghe80l2recxltny87s
	 WtOZyU6muSqIw==
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-618891b439eso111638007b3.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:44:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713969858; x=1714574658;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cDX/Ta7sZiIBn1XBmkDtAtlryH2vK9PZZdp/V3uN0rM=;
        b=ldfTCRsY3hkf39E2u/v8h+TIhz9QD6iIFVJRARK8UMOxrf/SdveOMaPEKP07xaqEEM
         t6oblYQQojY5f9uNgCowxZAFucKx8dkOc8Qvs4H+2pjsIbf7KAc+o0Dd2O/EfsPaNYIa
         H/6o//7d/cI2sa2UNwZ358ShdWffNATAWMGFSUgGuRkgBb3jpPmoIAjfe+oYKyKc6wC1
         zRQpQlRgOn9LPsneBDxqgHMROK7wmzporaObZr6ALNv/+DbcreWoNJRpMIgpiODvGIj0
         iBs+Po5pt+eBtjfiljs4gF7bsfJa11JDbfgEG41/AJHnv43lt1aMYq7RApETQFcMM+gE
         Crrg==
X-Gm-Message-State: AOJu0YwreVlvBZHULK1Iay6T2h0zj0gehlRJN3HMhIFBbZ6qRF0QVB+C
	UDcMixveuUazSu1jyUYUNNoAfI+WH4sinzpSVDzyyIWQw1ThVGHYUtukdXRQM2gROzrXn3a0PZc
	+ncSoRsAwa1JkkFSpAjCWVHdObRQo+DCkC0sK1nSXs5sZI8lVhfILjoSx9BkeOjXEUX+pG/wHBC
	Mjg0lbV+bByky+h22UpLLqE7l7ETsHTVXstgyvaqrqIa3YNbXfZw==
X-Received: by 2002:a05:690c:7484:b0:61a:ae0a:1f4d with SMTP id jv4-20020a05690c748400b0061aae0a1f4dmr2670991ywb.17.1713969857838;
        Wed, 24 Apr 2024 07:44:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAnkvq38wN8yqT3TvahJf1BBokL9ppAftSGKph8yTZ41xJ8L68lNa9+ahDLaDOVmyJ5hmuy3djep2ZQx+2DTg=
X-Received: by 2002:a05:690c:7484:b0:61a:ae0a:1f4d with SMTP id
 jv4-20020a05690c748400b0061aae0a1f4dmr2670968ywb.17.1713969857512; Wed, 24
 Apr 2024 07:44:17 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Apr 2024 07:44:16 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <SH0PR01MB08415B9CDDFB1A4FAB0FC4A9F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
References: <20240424075856.145850-1-joshua.yeong@starfivetech.com>
 <20240424075856.145850-2-joshua.yeong@starfivetech.com> <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
 <SH0PR01MB0841F8C45091E4A08020ADF2F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9NAeRb_3ZBJksXt+4fJMdcYw55bfAs0EpSnM8VWBKQag@mail.gmail.com> <SH0PR01MB08415B9CDDFB1A4FAB0FC4A9F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 24 Apr 2024 07:44:16 -0700
Message-ID: <CAJM55Z_G5EKSjHztCQ+gXDGwfpziZTE=HsHmwydJWB-uorMOqA@mail.gmail.com>
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
>
>
> Emil Renner Berthing wrote:
> > Joshua Yeong wrote:
> > > Emil Renner Berthing wrote:
> > > > Joshua Yeong wrote:
> > > > > Add StarFive Starlink cache management driver for
> > > > > JH8100 SoC. This driver enables RISC-V non-standard cache
> > > > > operation on
> > > > > JH8100 that does not support Zicbom extension instructions.
> > > > >
> > > > > Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> > > > > ---
> > > > >  drivers/cache/Kconfig                   |   9 ++
> > > > >  drivers/cache/Makefile                  |   5 +-
> > > > >  drivers/cache/starfive_starlink_cache.c | 135
> > > > > ++++++++++++++++++++++++
> > > > >  3 files changed, 147 insertions(+), 2 deletions(-)  create mode
> > > > > 100644 drivers/cache/starfive_starlink_cache.c
> > > > >
> > > > > diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig index
> > > > > 9345ce4976d7..9181cd391f53 100644
> > > > > --- a/drivers/cache/Kconfig
> > > > > +++ b/drivers/cache/Kconfig
> > > > > @@ -14,4 +14,13 @@ config SIFIVE_CCACHE
> > > > >  	help
> > > > >  	  Support for the composable cache controller on SiFive platfor=
ms.
> > > > >
> > > > > +config STARFIVE_STARLINK_CACHE
> > > > > +	bool "StarFive StarLink Cache controller"
> > > > > +	depends on RISCV
> > > > > +	depends on ARCH_STARFIVE
> > > > > +	select RISCV_DMA_NONCOHERENT
> > > > > +	select RISCV_NONSTANDARD_CACHE_OPS
> > > > > +	help
> > > > > +	  Support for the StarLink cache controller on StarFive platfor=
ms.
> > > >
> > > > This is a bit misleading. The JH71x0s don't have this. It's only on
> > > > the JH8100 so far, and hopefully later SoCs will just implement RIS=
C-V
> > standards for this.
> > > > So maybe something like
> > > >
> > > > "Support for the StarLink cache controller on the StarFive JH8100 S=
oC."
> > > >
> > >
> > > Hi Emil,
> > >
> > > The StarLink-500 cache controller is not designed exclusively for JH8=
100 SoC.
> > > While it is true that it currently exists on the StarFive platform,
> > > CPU/SoC that does not come with Zicbom extensions supported would nee=
d
> > > to rely on this cache drive to do cache management operations. I thin=
k
> > > we don=E2=80=99t need to mentioned 'JH8100 SoC' here.
> >
> > Wait, in the previous mail you said that future designs will implement =
Zicbom
> > and not need this work-around, but here you're talking about other SoCs=
 that
> > do need it. So which is it?
>
> If you visit the company website and look for StarLink-500, you will find=
 that
> it is a standalone IP that the company is selling as an interconnect. Any=
one
> who integrates StarLink without Zicbom extensions may utilize the cache
> management operation from this IP.

So then the "on StarFive platforms" part is wrong? Or will this always go
together with the Dubhe cores?

>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

