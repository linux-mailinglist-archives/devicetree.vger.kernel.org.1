Return-Path: <devicetree+bounces-62318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA98B0C47
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19D88284C56
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52C115D5C0;
	Wed, 24 Apr 2024 14:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="TuxPvtIO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A05E15CD6E
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713968217; cv=none; b=QkkD+VDTYFT5V4XSoV2NXYr6u2IJOtE43iN4Yer0QTErheR4YvRuAsw7YU3q1TITAuqcm2sD1l0CynQLCO2jHAekIJN7BJIf8b2VLheO/hVA9xkr9+7BKVN+Zuu+reWt5PXPY0j/WsjEMNufTevpn+AZ8sWWceW74HMRYcBUgTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713968217; c=relaxed/simple;
	bh=PTc6F7MA3fpvjx7TJrZQuQdnDqnC/L8l324q+un2Hyg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qtchowXOJJVK/aj4rIMC6O5Ah0uYZh+KnWlj0z88QFkOcJmC4DDypcHcktpTRgpDe/hJKij+NZ3zeFgExdPfs+RuhLj/v1h6cVxtEkVMvGWHi1KWeFBmY9E1DlPIlRbnDiBzaai29tYtSs6atERqmpGQZBVDo9K5dneByOa/ks8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=TuxPvtIO; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 774B5424A0
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713968213;
	bh=kJNCU9zhbbaFpDd41XCS9Fc/M34kxsFFT1gbausG2gE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=TuxPvtIO0brHqwHupenTuDMEAdt6TDbxxeVM6bIKFTvd5cyxesUJysSSL64RP/TuC
	 DU5O7fMV5kwplidw7FwUzwo7k9JGlBQU8ojizqr/+y9A87XWq+aNZEZMftLNRurNI/
	 sKxaeTB9xS8B7783lhxvwg2kSC3/8De3srtJVWBTsXqq+910F1/aniu95W17xKMEx/
	 t/BdlFYF0OrkjpHaJzCYErrfYKuZYiDjQEUA0/uRzTL9ZOuogpF7Tm9Xw+uoqi03vG
	 q55EIzK2MDAgeUt8SFMCUCwRamVQke19RbGf6aKIDE01GcYSn+hpdRoeh4iU14saHu
	 6MlvvKQpiTvvA==
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3c700dc69a9so8402331b6e.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:16:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713968212; x=1714573012;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kJNCU9zhbbaFpDd41XCS9Fc/M34kxsFFT1gbausG2gE=;
        b=LYaT/9EcQ6hMjk1Xbaj+X4E7x+njcpMz/m0dKcD4GzSiAz5QP/AGomiwg2niHiF5EV
         R16pNTqiboHqM+BMOKuHb2T/0HRMYOU/VbOjISEw/qRG91p4NN3Aq/vYgJ7eA+4WTYuf
         hTMpmVL7qUEPMz+n4HiM0lv7WMU/924ksro0nPTwWm/sJG3f+EMrjj/ZNZ7VfdAQKdfg
         o3H7NkSxylsIpihhqpQT6Ggk3FhDyVqhjPp+EZZkpInbstC2JsFmdw8Ux6JKihQdgtur
         H433XjylKAqbZYqubFFpfLxJppbWc9+1wk+Zf97Nrqdx2MNoxIzKv/ZABfIu/X5k7e7X
         iKkQ==
X-Gm-Message-State: AOJu0YyVey5i5g+e+F/xdH6VL/unoUmEf0KMHBN4iId5E3p4rhD8vjZm
	0JAjLTyU9XiFjQomQ36i7QbFTkjIDEmINFxtOA7HQS/cE5b+M9cJg6UIPAqncCBf/+Ek3bfE36T
	Dd7uzQ8jia8Jzio3kQypRw3pm51S36LI06zCtPe1x57CkxIQEEsscS9xbWONYr9q1efXVBmoez8
	gOt2eIcY0YwOjQsZQT/bE8PUssoYYQ/mQikhnkNhz9IGzTBd+4xg==
X-Received: by 2002:a05:6808:1710:b0:3c3:ddef:cbfb with SMTP id bc16-20020a056808171000b003c3ddefcbfbmr2761527oib.44.1713968211994;
        Wed, 24 Apr 2024 07:16:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmMI1QSebm1GMJUjaFXp6rpbt/+pc9Dt550W0+5oifIVAEgjReyIZIP4B46bcuH+K6tI2YRKNhPnJnltpk6+0=
X-Received: by 2002:a05:6808:1710:b0:3c3:ddef:cbfb with SMTP id
 bc16-20020a056808171000b003c3ddefcbfbmr2761500oib.44.1713968211677; Wed, 24
 Apr 2024 07:16:51 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Apr 2024 07:16:51 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <SH0PR01MB0841F8C45091E4A08020ADF2F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
References: <20240424075856.145850-1-joshua.yeong@starfivetech.com>
 <20240424075856.145850-2-joshua.yeong@starfivetech.com> <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
 <SH0PR01MB0841F8C45091E4A08020ADF2F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 24 Apr 2024 07:16:51 -0700
Message-ID: <CAJM55Z9NAeRb_3ZBJksXt+4fJMdcYw55bfAs0EpSnM8VWBKQag@mail.gmail.com>
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
> > > Add StarFive Starlink cache management driver for
> > > JH8100 SoC. This driver enables RISC-V non-standard cache operation o=
n
> > > JH8100 that does not support Zicbom extension instructions.
> > >
> > > Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> > > ---
> > >  drivers/cache/Kconfig                   |   9 ++
> > >  drivers/cache/Makefile                  |   5 +-
> > >  drivers/cache/starfive_starlink_cache.c | 135
> > > ++++++++++++++++++++++++
> > >  3 files changed, 147 insertions(+), 2 deletions(-)  create mode
> > > 100644 drivers/cache/starfive_starlink_cache.c
> > >
> > > diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig index
> > > 9345ce4976d7..9181cd391f53 100644
> > > --- a/drivers/cache/Kconfig
> > > +++ b/drivers/cache/Kconfig
> > > @@ -14,4 +14,13 @@ config SIFIVE_CCACHE
> > >  	help
> > >  	  Support for the composable cache controller on SiFive platforms.
> > >
> > > +config STARFIVE_STARLINK_CACHE
> > > +	bool "StarFive StarLink Cache controller"
> > > +	depends on RISCV
> > > +	depends on ARCH_STARFIVE
> > > +	select RISCV_DMA_NONCOHERENT
> > > +	select RISCV_NONSTANDARD_CACHE_OPS
> > > +	help
> > > +	  Support for the StarLink cache controller on StarFive platforms.
> >
> > This is a bit misleading. The JH71x0s don't have this. It's only on the=
 JH8100 so
> > far, and hopefully later SoCs will just implement RISC-V standards for =
this.
> > So maybe something like
> >
> > "Support for the StarLink cache controller on the StarFive JH8100 SoC."
> >
>
> Hi Emil,
>
> The StarLink-500 cache controller is not designed exclusively for JH8100 =
SoC.
> While it is true that it currently exists on the StarFive platform, CPU/S=
oC
> that does not come with Zicbom extensions supported would need to rely
> on this cache drive to do cache management operations. I think we don=E2=
=80=99t need
> to mentioned 'JH8100 SoC' here.

Wait, in the previous mail you said that future designs will implement Zicb=
om
and not need this work-around, but here you're talking about other SoCs tha=
t
do need it. So which is it?

