Return-Path: <devicetree+bounces-9756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 754317CE5B9
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:00:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D4C281BF8
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4753FE38;
	Wed, 18 Oct 2023 18:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IVi8JOrR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65946154AC
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:00:07 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D35A9B8
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:59:47 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1ca215cc713so29886305ad.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 10:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697651987; x=1698256787; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KIX8roHs6Y2xfB0yyrc9fz1uKsUCw1ugcleeV2Jgmg8=;
        b=IVi8JOrRGInH9OWBomhXtdus3PvgOWYQZG9XrtiREWZ+AsTsBl0ZFFeK4dtI33x31s
         TPKTPi8OFCH7pOlVs+y0yjGxf7rDb6NQrqY5lnrSZXXLc+f4mb7LYT8rz5bHliVwcgXk
         TFAQZ/DMvyqpgj8oTx/wDe9fteQvWEBoHoG3oZMUf1EtnnegfZht2URaHDW4D4HgEboE
         UAiUV+55vMim6OGef1x/lK1JGam0eCoxnSjZw7r4hm0QTbYnGsIcSQg7zEqW5foF930C
         sf9Yb8Rkr1P+/NALj7XrZnkdRZv0V+kD5NzW6IAMlYed0tA1x4fNVIj/fCNfcIXm3sRw
         +HVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697651987; x=1698256787;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KIX8roHs6Y2xfB0yyrc9fz1uKsUCw1ugcleeV2Jgmg8=;
        b=u3x4LLVnACuXAYKRoyLwXPkIQD5Cfb+uUR+ENNfe6a+lBvrM7JMVzOhTTldwcureCx
         DnWEYkxPKpErOrRqNlPZ/m1uPEem5KFiQtYq5LJZ6BDojkh/yNE21t/Kmy/AzECVLpJ6
         5FcvtG3Zv8sKMZ/4vkXannqEBPy76YvG9KZABb4ykqXETL6BlUQT6xP6gUKxS28nSFaR
         02xBF4TqpG9LmDKBY7qHyyBfDvlWP8AjhKMtCi7jIb0gK8PDbmSnsE9PypMc90+G7jqH
         BKQbX9+V/W2fpDbixuuZ9p/BZK2FpCMyBjeQfv8wIEK5HhNG88a7VrOC2kUTmnltrdtM
         AsJw==
X-Gm-Message-State: AOJu0YzZsXJ0MRr9o6eMR3vp51uzWR9USQNPJ29EUMr+mBZNQbSTIXXE
	2qO1oRPZtdNreh7fEAEEALP/Bg==
X-Google-Smtp-Source: AGHT+IFuRZYdlOYu8jcYT7a+dm4yo2n/AMX0UeXuajz4t3w2UbaA9ylak4iJyUvNX3BWgaHQgHTx6Q==
X-Received: by 2002:a17:903:1110:b0:1c8:9832:827f with SMTP id n16-20020a170903111000b001c89832827fmr102594plh.20.1697651986953;
        Wed, 18 Oct 2023 10:59:46 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:3b92:d9c:239b:cd56])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902cec900b001c5f7e06256sm214183plg.152.2023.10.18.10.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:59:46 -0700 (PDT)
Date: Wed, 18 Oct 2023 10:59:43 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC
 controller
Message-ID: <ZTAdD/28PTNCWvWp@x1>
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
 <20231017-th1520-mmc-v2-6-4678c8cc4048@baylibre.com>
 <20231018-dating-yogurt-d7f3a65a873e@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018-dating-yogurt-d7f3a65a873e@spud>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 18, 2023 at 02:57:50PM +0100, Conor Dooley wrote:
> On Tue, Oct 17, 2023 at 01:43:52PM -0700, Drew Fustini wrote:
> > Add properties to the emmc node and enable it and set the frequency for
> > the sdhci clock.
> > 
> > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> > ---
> >  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > index 70e8042c8304..bf55319ba950 100644
> > --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> > @@ -52,6 +52,10 @@ &uart_sclk {
> >  	clock-frequency = <100000000>;
> >  };
> >  
> > +&sdhci_clk {
> > +	clock-frequency = <198000000>;
> > +};
> > +
> >  &dmac0 {
> >  	status = "okay";
> >  };
> > @@ -59,3 +63,13 @@ &dmac0 {
> >  &uart0 {
> >  	status = "okay";
> >  };
> > +
> > +&mmc0 {
> > +	bus-width = <8>;
> > +	max-frequency = <198000000>;
> > +	mmc-hs400-1_8v;
> > +	non-removable;
> > +	no-sdio;
> > +	no-sd;
> > +	status = "okay";
> > +};
> 
> Is this file meant to be in alphanumerical order?
> 

Good point, I should add the new nodes in alphabetical order.

Thanks,
Drew

