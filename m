Return-Path: <devicetree+bounces-116375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4914F9B2B1C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 10:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07C6A2814B7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 759CC181CE1;
	Mon, 28 Oct 2024 09:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dbWt5/vc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0824291E
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730106949; cv=none; b=UMYK+2icPkFIk8HMgs0tdgrQbVcM8bs3PNfUoeVRLg6N2RWFoz92uoS88PdvDoPZgJgD53+318cLiF+xHR9MiX2QfKaRzllyztIeuL2E9I8nFvoyKaP8GT6QN8XUAjPo0Ty6Cneye8qL8DH6bmDuOxylZjO8el3gHbHTgfwcfUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730106949; c=relaxed/simple;
	bh=oZyLRnaQSadJQweLa9GSaQLcuK9wRKBQ+f0KBLvZ3Q8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTDLnBnjT80JzrHfaIBUen77/7DowH+SqiWn0TARfhnSj6HGpe9+h9RbGvqXQbrb0k21l54/53cPeZBUXRCKGMQ2Jz5zd5zpBxq94CzwWaVpE1lVT5+sroM5xZRyFDHyT9gB6OXJ9x29E7pIEZY4EnT01Zmz3cEORSYKzawpkFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dbWt5/vc; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43152b79d25so38092135e9.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 02:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730106945; x=1730711745; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aFl7hG9APtv3+aifN3HCuVVr9QjPzn9re0x6vzwqTPw=;
        b=dbWt5/vc7DSRMBLNOjB19esujSFl62vS41nxE0xFxna04mIq+t7aeEzgX3zAPEwvCt
         g54cqkV0SknwtFitv1GYhq9YFilKu2qKRZyxXeeRkNty9u9dz2MT8bPRuP9yqxiVNvZf
         lxKXjBbgAuCHNZFhMl329f7kmvLGEhHYfzhytYDJq11usEf9yb3L7SpzFYVPIFemU5e5
         PCW85YZdbFy9S4+ANYfJ7nouiftRjzkCNZeeNkxEzOOg9Rera9JGrfDXn5ZNa4dOSVlA
         wn1i3ygQkrzZcTVhGZxkfsvrPiSVXAPwFQRZTZyU7zfa7pncBzUsKWmssGNjVc+3Mx7E
         K8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730106945; x=1730711745;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFl7hG9APtv3+aifN3HCuVVr9QjPzn9re0x6vzwqTPw=;
        b=Lo1/gbO79p7ksOdeGLnv6uVLidjdN3M1tJqJaB4QDt5Zou3R5Lq+/G3et9fQsJCH09
         u8IwObXFoPzjsKTPJ/9RBbCWcMqTLIlCK3olYYS3WlUfEatxex3Hj7oQuWTMmsj3xF1p
         2wSYNqt36xij8S7rTPPerK0j9a/bjlGjYosgXGVraA7rfY4FIGTMyD7wye/4Tbt7Fm1M
         vTspHTeLj8/ip9YMt1uYN6E3Eszah/T3+ijzV/tCsyPl4SeooWf51HCGdZ8d1IXS9Dfq
         kauT43S3XouGS6K17TSPR15c3Ms8/qZ1HYJW0w6vFphYAlSsHXH3Tb0iVjR8WrOt+b4M
         gXDg==
X-Forwarded-Encrypted: i=1; AJvYcCVUfx71rpqpK1+72uIUIs4Tn7aV9378MzRdPRVcibsYcje3Iz1voDOSWSmCVc0LQnlCq/1i7hwBSBz6@vger.kernel.org
X-Gm-Message-State: AOJu0YxHW4Zjszj7GCz9fBUqds3XV+nasCcUoS2+5T56HpbMeUTfhjOE
	4nIggh9RkrBV5sLqnNMNrdyJ3BEQ7wNwWe6JkJAIYsvAQJb4wOe7pX8nQ5fmlo51O8yMYuWq6IV
	Iynxktg==
X-Google-Smtp-Source: AGHT+IFdLvrC+MErOR++5DexXxcgqyL1Q7tYBy5PcHkbh3y1oxzE1IWhdO6YoyYcmx448jkYqA49lg==
X-Received: by 2002:a7b:cd8e:0:b0:42c:bd27:4c12 with SMTP id 5b1f17b1804b1-431a0c394b6mr48163875e9.10.1730106944878;
        Mon, 28 Oct 2024 02:15:44 -0700 (PDT)
Received: from dfj (host-95-245-34-85.retail.telecomitalia.it. [95.245.34.85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43193595c51sm101439625e9.20.2024.10.28.02.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 02:15:43 -0700 (PDT)
Date: Mon, 28 Oct 2024 10:14:25 +0100
From: Angelo Dureghello <adureghello@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, dlechner@baylibre.com
Subject: Re: [PATCH v8 7/8] iio: dac: ad3552r: add high-speed platform driver
Message-ID: <3boluky2zvz6n4u3gjgxuzlo2cm3a4xcbfq5sjmzoz3i5lfsml@j3wikyf74xyj>
References: <20241025-wip-bl-ad3552r-axi-v0-iio-testing-v8-0-74ca7dd60567@baylibre.com>
 <20241025-wip-bl-ad3552r-axi-v0-iio-testing-v8-7-74ca7dd60567@baylibre.com>
 <20241026185740.4144f6c8@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026185740.4144f6c8@jic23-huawei>

Hi Jonathan,

On 26.10.2024 18:57, Jonathan Cameron wrote:
> On Fri, 25 Oct 2024 11:49:40 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
> 
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Add High Speed ad3552r platform driver.
> > 
> > The ad3552r DAC is controlled by a custom (fpga-based) DAC IP
> > through the current AXI backend, or similar alternative IIO backend.
> > 
> > Compared to the existing driver (ad3552r.c), that is a simple SPI
> > driver, this driver is coupled with a DAC IIO backend that finally
> > controls the ad3552r by a fpga-based "QSPI+DDR" interface, to reach
> > maximum transfer rate of 33MUPS using dma stream capabilities.
> > 
> > All commands involving QSPI bus read/write are delegated to the backend
> > through the provided APIs for bus read/write.
> > 
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> Hi Angelo,
> 
> I'd missed a build issue in previous reviews. :(
> 
> >  drivers/iio/dac/Kconfig      |  14 ++
> >  drivers/iio/dac/Makefile     |   1 +
> >  drivers/iio/dac/ad3552r-hs.c | 530 +++++++++++++++++++++++++++++++++++++++++++
> >  drivers/iio/dac/ad3552r-hs.h |  19 ++
> >  drivers/iio/dac/ad3552r.h    |   4 +
> >  5 files changed, 568 insertions(+)
> > 
> > diff --git a/drivers/iio/dac/Kconfig b/drivers/iio/dac/Kconfig
> > index 26f9de55b79f..f76eaba140d8 100644
> > --- a/drivers/iio/dac/Kconfig
> > +++ b/drivers/iio/dac/Kconfig
> > @@ -6,6 +6,20 @@
> >  
> >  menu "Digital to analog converters"
> >  
> > +config AD3552R_HS
> > +	tristate "Analog Devices AD3552R DAC High Speed driver"
> > +	select ADI_AXI_DAC
> > +	help
> > +	  Say yes here to build support for Analog Devices AD3552R
> > +	  Digital to Analog Converter High Speed driver.
> > +
> > +          The driver requires the assistance of an IP core to operate,
> > +          since data is streamed into target device via DMA, sent over a
> > +	  QSPI + DDR (Double Data Rate) bus.
> 
> Tabs and space mix that needs fixing.
> 
> > +
> > +	  To compile this driver as a module, choose M here: the
> > +	  module will be called ad3552r-hs.
> > +
> >  config AD3552R
> >  	tristate "Analog Devices AD3552R DAC driver"
> >  	depends on SPI_MASTER
> > diff --git a/drivers/iio/dac/Makefile b/drivers/iio/dac/Makefile
> > index c92de0366238..d92e08ca93ca 100644
> > --- a/drivers/iio/dac/Makefile
> > +++ b/drivers/iio/dac/Makefile
> > @@ -4,6 +4,7 @@
> >  #
> >  
> >  # When adding new entries keep the list in alphabetical order
> > +obj-$(CONFIG_AD3552R_HS) += ad3552r-hs.o ad3552r-common.o
> >  obj-$(CONFIG_AD3552R) += ad3552r.o ad3552r-common.o
> 
> This causes all sorts of issues. The same code should not be linked into two
> separate drivers.  Try building one as a module and one built in.
> 
right now, seems i cannot catch any issue, nor building or in runtime:

ad3552r     [M]
ad3552r-hs  [*]
(ad3552r-common stays built in), ad3552r visible in lsmod, ad3552r-hs works

ad3552r     [*]
ad3552r-hs  [M]
(ad3552r-common stays built in), ad3552r-hs visible in lsmod, ad3552r-hs works

ad3552r     [M]
ad3552r-hs  [M]
(ad3552r-common.ko), ad3552r, ad3552r-hs and ad3552r-common are visible in lsmod,
ad3552r-hs works, probe and removal, and also link/unlink tested).

Please let me know, i can proceed modifying as you require, if it's the case.


> The trick is a hidden symbol in Kconfig and an extra line in here
> obj-$(CONFIG_AD3352R_LIB) += ad3552-common.o
> 
> and 
> //note no text as we don't want this to be user selectable
> 
> config AD3352R_LIB
> 	tristate
> 
> config AD3552R_HS
> 	tristate "Analog Devices AD3552R DAC High Speed driver"
> 	select ADI_AXI_DAC
> 	select AD3352R_LIB
> 	help
> 	  Say yes here to build support for Analog Devices AD3552R
> 	  Digital to Analog Converter High Speed driver.
> 
> 	  The driver requires the assistance of an IP core to operate,
> 	  since data is streamed into target device via DMA, sent over a
> 	  QSPI + DDR (Double Data Rate) bus.
> 
> 	  To compile this driver as a module, choose M here: the
> 	  module will be called ad3552r-hs.
> 
> 
> config AD3552R
>  	tristate "Analog Devices AD3552R DAC driver"
>  	depends on SPI_MASTER
> 	select AD3352R_LIB
> 	help
> 	  ...
> 
> The pressure/mpl115 is done like this.
> 
> 
> >  obj-$(CONFIG_AD5360) += ad5360.o
> >  obj-$(CONFIG_AD5380) += ad5380.o
> 
> Anyhow, to me the code looks ready to go subject to this.
> 
> If nothing else comes up I'm almost confident enough of the fix to just
> do it (and the few trivial things in previous review), but probably quicker
> and less prone to error if you have time to spin a v9, perhaps after letting others
> have a day or two to review v8 next week.
> 
> rc5 is tomorrow, so we have a little time left this cycle.
> 
> Jonathan

Regards,
  angelo

