Return-Path: <devicetree+bounces-116104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0218D9B1D54
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 12:15:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D6CB1F21772
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 11:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F31701465B8;
	Sun, 27 Oct 2024 11:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="dAwRgyZa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D71014C5BA
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 11:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730027709; cv=none; b=JP7cpyPZzaeA7LPntvZgvfsON+vc9gvhU5QbPfFKPop7Tox4vfdCZkJH7RbVBwKliSbxbj3fcnFXX4bUMkJnyLqcuDYrbClPh4/jeDN0+GxdJGK2gauWjYrPzcCXKDfwB3/ptaAUopCZNG+9y4+GUU02Qqfb94yPGDZYrJNcyoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730027709; c=relaxed/simple;
	bh=xDDeU6p25FtrTyo3f2uKG58qzH1nBHIOOMUYrGXVBAs=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OD4GHaRl6gGXE/VH2+bKYxCo5nocgtJZ4m3lN8LPDxXfW7dBuoxohC7lLGBO2EUWqtZucYCvqrXJYKhEcBmDdR/qZossvKOMJFKGfpZ/mwawY1Hlnme8kVoiEZrpLFqwv9L0hiNvL3tuqIxRVsIbjEUTWxof6ArNHtTClHghYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=dAwRgyZa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d58377339so2980219f8f.1
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 04:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1730027706; x=1730632506; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3yR+elAtNrZb0dYqaY4oOlXhVHYbUSfEfohSukSkC5o=;
        b=dAwRgyZaIAOhWfLAdYHlMNRIi+agvqIW7TC9InsP8G6P9TAamwmaBckNxt9e5fTcF7
         F5JhPmu3IvVVPJCyF1oT3m6vfz3GPXHvuDvm2dKs9S48V/I71udfUa2xpf4gRu9N9vE5
         VH0NoYrcqSM/83tMFB9nkQsXJAidjgs3Wvs7fdXExhzQR57fRx+VoACnr0p+SZFprFk8
         wCR59CRXaGqRQNbQT9XQ6WA/d/dN/+Yy0BTV072iPUjvfEUxGCr4h72iwxYvnne4uj8U
         N4oHpa5KXZcIBniguH6JszII8kYkmkPFPdOZ1wvxgicsdORmOAQpiuOBJy0D7Vs7+u3q
         eeig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730027706; x=1730632506;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3yR+elAtNrZb0dYqaY4oOlXhVHYbUSfEfohSukSkC5o=;
        b=cXseL916sdWwn9rHhzarN7TL+Bm5eRjJkGer8bz6eRlkZLG5GwhxpOHqhYTdDYvKGR
         ID10p3PsK7KTsKcSWmE9HyuKTPCzyMpfq751Md3pkGkmvbR7ayH6G8liFACuyKuRhDGL
         9BbYqVOLH7GzQnK2bnEnk7m1eVOzHxL+pZPTxQXYCQS3/sjitpQUEAUf1r7EoTwMmTPj
         iPhdfwOH5ZMxGivR3JP8DW6EuBRapwC6aacKRID2tU+4iRzDsJ3EmzNXc5sbCwoGiSuh
         dcZIsEhSP10MdeyXg1ppLqa4mkj9jc2Jwm4AsSE1k3MBopkB00X4LV0sF/WHawCsJqdk
         FzEg==
X-Forwarded-Encrypted: i=1; AJvYcCXYDeS2wIYy6uZUceKfkd7/iIB0tHn/3uC6bARDiIf/T/tgqOTDcGIC/nw4in+rL0Pjg4D9iX0bREoG@vger.kernel.org
X-Gm-Message-State: AOJu0YyrSUEdtWQmuVZpx2u1pgMsfzOKS0+WSyr0zxUSTY1EyxVu7xrv
	0gb9UedygV9jzgwR67cqTr41ku6Cv4lpfhpAVbOjwR89IIQx4/Jag5SnDSz1Ejw=
X-Google-Smtp-Source: AGHT+IFOjK3SXwMnrJ05PYWHAYrOeHgTV8mQIzdbz7LLP2yDbdJwRnYmcIkVqvkxVFzW4DkqcW0Zzw==
X-Received: by 2002:adf:f884:0:b0:37c:d1ea:f1ce with SMTP id ffacd0b85a97d-380611a46famr4631904f8f.25.1730027705624;
        Sun, 27 Oct 2024 04:15:05 -0700 (PDT)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f0697easm270520366b.94.2024.10.27.04.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 04:15:05 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Sun, 27 Oct 2024 12:15:28 +0100
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Stephen Boyd <sboyd@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	St efan Wahren <wahrenst@gmx.net>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	phil@raspberrypi.com, jonathan@raspberrypi.com
Subject: Re: [PATCH v2 08/14] clk: rp1: Add support for clocks provided by RP1
Message-ID: <Zx4g0H5nib7asHxc@apocalypse>
References: <cover.1728300189.git.andrea.porta@suse.com>
 <022cf4920f8147cc720eaf02fd52c0fa56f565c5.1728300189.git.andrea.porta@suse.com>
 <611de50b5f083ea4c260f920ccc0e300.sboyd@kernel.org>
 <ZxkX5gnDkWrTynRv@apocalypse>
 <20241023183240.0dffae03@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241023183240.0dffae03@bootlin.com>

Hi Herve,

On 18:32 Wed 23 Oct     , Herve Codina wrote:
> Hi Andrea,
> 
> 
> On Wed, 23 Oct 2024 17:36:06 +0200
> Andrea della Porta <andrea.porta@suse.com> wrote:
> 
> > Hi Stephen,
> > 
> > On 15:08 Wed 09 Oct     , Stephen Boyd wrote:
> > > Quoting Andrea della Porta (2024-10-07 05:39:51)  
> > > > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > > > index 299bc678ed1b..537019987f0c 100644
> > > > --- a/drivers/clk/Kconfig
> > > > +++ b/drivers/clk/Kconfig
> > > > @@ -88,6 +88,15 @@ config COMMON_CLK_RK808
> > > >           These multi-function devices have two fixed-rate oscillators, clocked at 32KHz each.
> > > >           Clkout1 is always on, Clkout2 can off by control register.
> > > >  
> > > > +config COMMON_CLK_RP1
> > > > +       tristate "Raspberry Pi RP1-based clock support"
> > > > +       depends on PCI || COMPILE_TEST  
> > > 
> > > A better limit would be some ARCH_* config.  
> > 
> > I've avoided ARCH_BCM2835 since the original intention is for this driver
> > to work (in the future) also for custom PCI cards with RP1 on-board, and not
> > only for Rpi5.
> 
> Maybe depends on CONFIG_MISC_RP1 ?
> CONFIG_MISC_RP1 enables the RP1 PCI driver

Yep, seems the most logical one, thanks.

Regards,
Andrea

> 
> Best regards,
> Herv�

