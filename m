Return-Path: <devicetree+bounces-125617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE6F9DEC03
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 19:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95703281E82
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 18:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328F41A00FA;
	Fri, 29 Nov 2024 18:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="SnQRzeNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECCD14F11E
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 18:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732904263; cv=none; b=MixTpim2v5ZXy/S1vg9ghFOxmKhFqQGWsktk3aSUcgwuh152Gu5fKL9eadfrtMTysdMazzfx08p6FnE6uM4IUIW7LDGHz+OrYMVkw+rVK8pU8PbJ3uJ+0zYMvNHjFDXC4vLK0ybcir98BKs1lakg0mSxQLZF0T+jNTagLvSQmj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732904263; c=relaxed/simple;
	bh=fN0bLk90ZCqU7t/VgLksSaWfjvLd7tuev8IlpU2KjsE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dhmuw7HDcHACtRPjdBQpzO9grFRDRdM/jnIh8/MSyEDoG2V+hpky4YWQyLxLtzwYC1FyQ+/vx7++SzFJJSueBhzeRDmF2GPwc7r+0XlmsmDItY6kZ65CV+VC3ALW9XW1nHPmpvRwjuhsAvMv81jCdhdZTpCYxSm9XZYPJWM75iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=SnQRzeNL; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa5366d3b47so310903966b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 10:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732904259; x=1733509059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/K5xGcTYHJ/8xAu9IkRPPHbt4WWLkz+NlJpLlbPrtJ8=;
        b=SnQRzeNLk5c7PEqfpHhgVBsmwKuQCsuV1f/0oERNlyJqz/K2rylASeCEgXxa60Pgcc
         ingVz5XZcah5FZXSfGj1/zDe/yy1YB/q+eZStOeMvUeG0eVNyTZVuacz1SbBxShKBhrB
         6da0qBDYWpnWYwfk6kmc20th2IXKiXfhqDQnunlU2tcq/XxRy7KIPxQ730SudN+mAYJz
         ioIIzug23+X977rvz2y7R+JMJ96tozihtkpI6BBY2UW7Zq3JiJmcQn8nI+aR+7WYH9Uk
         nS3FBAogQJm0+f1tLMAyVOPtcImOrptr1UUfa82JCWIN8qoHQvMzbso32yD89Xlj4dta
         yg+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732904259; x=1733509059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/K5xGcTYHJ/8xAu9IkRPPHbt4WWLkz+NlJpLlbPrtJ8=;
        b=Al0Sw5Zr+Yal292lznSIhHmFWxoYfy6ueOZfIYSrb8D5McSb0Izztny7rLrThooLWv
         BcPI4OslKH7pRSpNSPlJhiXvY30Icjqpo7flr6DQyWqEIddq2Qg1zaGKqYnMO6GqGGkB
         ZVNeWYq2k4+HMCRtbTO+Ven+Sto2RuKL8JrWAvIVuzEEhj2hXytXTpyHxdC7kidQFu7u
         uwsd52xgVhMWi7Ud9+wz26wXHMlVvt4B9ewfNRHBovfA5rRxOqAFR8RWypuHgPrzl1v2
         Z2+fnOhs7clDIu9bPz8AJkk7pQG+oYdGMJ3yEKvdrb1y9FbL7bnGObAn8eQeiMQnZzoI
         lgRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjbjJfpUm4hkyREeJfMZTyjfA5sb6ZC8IjFz7kQN7afKFS3zvA1aB4TOio6MVWUvIB1b56F8MdvYRH@vger.kernel.org
X-Gm-Message-State: AOJu0YxLDeWyjNw71K30Vhk+aXhT97wIbFNNvurcrZp9OwNrCTZJn6QD
	Yd+52nDGpVFZjhbcvpiurA7jjJpfG5j2UEbbumJfdhZQ0TQ1Kedmobt3IY+LoE4=
X-Gm-Gg: ASbGncvKBUnskKCSvcdz2ahigaAa7H8Ue0rQbZazZ8QR6KggCH29r5/3xo62hMy1aqL
	bSvT22CqxZ1XhR2bY2DLw5uGCFDj7tze+UNXhVeZAK53XWoZX+osJq1mBecz2B9s1o0NJgVP1Lq
	MEfJQlG/C2o//wn/7ong9shHAKT+Bcn1+/4lLNHLSKRZnu6QP923TTwI8b1cLBcMpQbHqFLiWsD
	YyvcUb32heAAKhZRDyF8nMDkBQO5y7sO8K31qZKrYM5AZFcNgo1eAsEuanjTxHA//3D8fUvvwlk
	oIpivhZ6eeuKZkU0WL4D
X-Google-Smtp-Source: AGHT+IFoJJFPtLBuSMIqJyGFIVwrCuTOeFzAqiPp8piO0gnCMrA5ajUljudZL/pGS/GtLks+6yCgNQ==
X-Received: by 2002:a17:906:2189:b0:aa5:391e:cadf with SMTP id a640c23a62f3a-aa58103cca7mr869419266b.42.1732904258959;
        Fri, 29 Nov 2024 10:17:38 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e64dcsm197279866b.95.2024.11.29.10.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 10:17:38 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 29 Nov 2024 19:18:12 +0100
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v4 08/10] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z0oFZGM72FDQX55N@apocalypse>
References: <cover.1732444746.git.andrea.porta@suse.com>
 <c48e6b9b178cdaa01b92ae82e8fd24c2ba5f170c.1732444746.git.andrea.porta@suse.com>
 <2024112535-viper-uncivil-3054@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024112535-viper-uncivil-3054@gregkh>

Hi Greg,

On 14:46 Mon 25 Nov     , Greg Kroah-Hartman wrote:
> On Sun, Nov 24, 2024 at 11:51:45AM +0100, Andrea della Porta wrote:
> > --- a/include/linux/pci_ids.h
> > +++ b/include/linux/pci_ids.h
> > @@ -2611,6 +2611,9 @@
> >  #define PCI_VENDOR_ID_TEKRAM		0x1de1
> >  #define PCI_DEVICE_ID_TEKRAM_DC290	0xdc29
> >  
> > +#define PCI_VENDOR_ID_RPI		0x1de4
> > +#define PCI_DEVICE_ID_RPI_RP1_C0	0x0001
> 
> As you only use these in one file, please read the top of this file for
> why this isn't needed here, but rather should be back in that one
> driver.

The reason I've defined them in pci_ids.h is due to the fact that they are
indeed used both by the driver (drivers/misc/rp1/rp1_pci.c) and in 
drivers/pci/quirks.c.

Many thanks,
Andrea 

> 
> thanks,
> 
> greg k-h

