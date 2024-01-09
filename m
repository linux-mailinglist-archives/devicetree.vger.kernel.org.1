Return-Path: <devicetree+bounces-30606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA558285AD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 13:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D88471C23A2F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 12:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09566374C4;
	Tue,  9 Jan 2024 12:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="bd+ciOEX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630E4381A2
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 12:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9AD873F373
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 12:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704801723;
	bh=L1elb+jQDH8Ds4j0H9TwFb8qhYJOMk8842XOLWCtnwk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=bd+ciOEX3IPwfxFJXjKV2I/Wv0gx06Q0MgSrKjmYirIHn77p623UrjLpSVLPXRE1I
	 rANAJOicubM2wq/Qq2+rrQ0uiCxQHE0eDP56OECPD45MJb5s+i2kH66rCt5Ec4sSqV
	 ehvzHdqPp2eVtdTuTYk/k1QO5RDH87k75qnI69VXIEplLzxMDQs9Zr0TNhWfsdzLNt
	 mawJEVix2+AfIJsnEK4Kkm0K76nBCZaYK3SWFrR4oreI1EbPgIHS4CIADuQqDYGjdV
	 5uIz15/gX6M4Ez7DTP00UO2XN8hV9VK21vEn+0D+82QFu2itT3qkI6/sr9BQ4kOiU5
	 6/LiI2KwYqA5A==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-427cf4a843cso24527641cf.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 04:02:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704801722; x=1705406522;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L1elb+jQDH8Ds4j0H9TwFb8qhYJOMk8842XOLWCtnwk=;
        b=hJ/UEHzt7gqAC07CSXi6hAPDckomvARPr0MMVDe2eaHwp4CX1tJ+HENGSIXCuWMMeF
         ic5MOU4P9ISlB7bvlxrzLrr7ZE9/Dls2unvAGVO21Aq4yuuScmEsrhE0FQarVApCGi1R
         /EPj2yB2y7wODj9xjZKmw2zqkzv3Dp+1y60v6tFnvzuz8+rpkCSpcsR05k3yAGiYG3Mj
         np/wWfCEv8DMUi8bzh41iJbBvzMrKnIhCGPogAcL7MlIGtnKSNQ3r1rOwUj14llX5K+4
         hKTd5i1CkcR/1/ukjQp93AHqJ5Mj2hIi2xGrlhC4J8tI2NEpAZGAflDjk7e7BLPGKW8j
         x2Vg==
X-Gm-Message-State: AOJu0YynvDFpW0mk9W9YK0WzZIZc4zlGcJ63/5MTLBG4TDqjVkP6N3dT
	BlYoqzfD1B3wVBvJ//Y2Mn5Ew3KFKHYny4dTsCLmu70878FDDhmdAFrDywEDQiQsTb9butshJgW
	6FvDgFMvvoRT2ss/RJcUX73jA5eU24yk1u37YvCUo/WxertViURY9lsswm+dHpA==
X-Received: by 2002:a05:622a:296:b0:429:8c55:4a47 with SMTP id z22-20020a05622a029600b004298c554a47mr3134582qtw.49.1704801722311;
        Tue, 09 Jan 2024 04:02:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMPXlm4YerbG4iFFrjePx491jhh9/Le2ba+OtVW+O9m5xRSQ0+oOgEThByi2GFboNj49o1lT5y0Tt5RnHjosQ=
X-Received: by 2002:a05:622a:296:b0:429:8c55:4a47 with SMTP id
 z22-20020a05622a029600b004298c554a47mr3134568qtw.49.1704801722008; Tue, 09
 Jan 2024 04:02:02 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 9 Jan 2024 04:02:01 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240108-majorette-overtly-4ec65d0a15e9@spud>
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
 <20240103132852.298964-4-emil.renner.berthing@canonical.com> <20240108-majorette-overtly-4ec65d0a15e9@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 9 Jan 2024 04:02:01 -0800
Message-ID: <CAJM55Z_2zhELW3E7p94J05We17xTC2Rejs5AigNJOHCGHVr_zg@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] riscv: dts: thead: Add TH1520 pin control nodes
To: Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Drew Fustini <dfustini@baylibre.com>
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Wed, Jan 03, 2024 at 02:28:40PM +0100, Emil Renner Berthing wrote:
> > Add nodes for pin controllers on the T-Head TH1520 RISC-V SoC.
> >
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > ---
> >  .../boot/dts/thead/th1520-beaglev-ahead.dts   |  4 ++++
> >  .../dts/thead/th1520-lichee-module-4a.dtsi    |  4 ++++
> >  arch/riscv/boot/dts/thead/th1520.dtsi         | 24 +++++++++++++++++++
> >  3 files changed, 32 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > index 70e8042c8304..6c56318a8705 100644
> > --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > @@ -44,6 +44,10 @@ &osc_32k {
> >  	clock-frequency = <32768>;
> >  };
> >
> > +&aonsys_clk {
> > +	clock-frequency = <73728000>;
> > +};
> > +
> >  &apb_clk {
> >  	clock-frequency = <62500000>;
> >  };
> > diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> > index a802ab110429..9865925be372 100644
> > --- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> > +++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> > @@ -25,6 +25,10 @@ &osc_32k {
> >  	clock-frequency = <32768>;
> >  };
> >
> > +&aonsys_clk {
> > +	clock-frequency = <73728000>;
> > +};
> > +
> >  &apb_clk {
> >  	clock-frequency = <62500000>;
> >  };
> > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> > index ba4d2c673ac8..e65a306ff575 100644
> > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > @@ -134,6 +134,12 @@ osc_32k: 32k-oscillator {
> >  		#clock-cells = <0>;
> >  	};
> >
> > +	aonsys_clk: aonsys-clk {
> > +		compatible = "fixed-clock";
> > +		clock-output-names = "aonsys_clk";
> > +		#clock-cells = <0>;
> > +	};
>
> Did this stuff sneak into this commit accidentally?

Not really by accident no. It turns out the clock tree has gates for the bus
clock of each pinctrl block and I think it's better to add this clock
dependency to the bindings and driver up front.

Since there is not yet any clock driver the initial device tree for the TH1520
included the dummy apb_clk that two of the pinctrl blocks derive their clock
from, but not the "aonsys" clock needed by the "always-on" pinctrl. I thought
it was better to add this dummy clock with the only (so far) user of it, but if
you have a better idea, let me know.

/Emil

