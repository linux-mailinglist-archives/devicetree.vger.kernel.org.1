Return-Path: <devicetree+bounces-140047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4017A17F43
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 14:58:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A16C63A5B4B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6131A1F37A6;
	Tue, 21 Jan 2025 13:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="T9e5cQEv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5951494D9
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 13:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737467912; cv=none; b=QFfe8CKfk1nQtsWqjHR8UBv3s4mM/L8HCvmEHZurA83kKUle6soO3qT7ki6S0ZjfMuGHDMzA33Y65HuUZq2uO9rsXkDPzLlpXSzFEM4K5c9LDVUcZDOOcwHYx9dSlp4JDUtyNN+VxTleZtA3hbK33LHgjLz5giqb+ho9tMmf/EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737467912; c=relaxed/simple;
	bh=jQzXuU3BlH5a1zJ/BamQoNSatZlIbAHnl77mcwz9/Dk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PBctOkAcMQ7PftF2Cqt1/d6w9GRpoKF1OHFrtXrp/3wHsPY54iCaiqKPsMHHLV2QoQDBRjl3R3RZwZEbR3HpNhKxLNvK4BJYwOyV7MvVaGK1JnhoUOez4iA6BcvtxqX4Az7WEfoxxBsJqxF1oJ4NzwjExLCQmWbuSbw9Gv4SOgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=T9e5cQEv; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-aaf57c2e0beso1124734766b.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 05:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1737467908; x=1738072708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ndX+bS7mfcHIUz3eSPCBChEUR/+D/+QHPhUMGbWKkjw=;
        b=T9e5cQEvREUvXyqRhhD5eAV2nfjPCGzjN++Tz2ucCQ7EEwC+FBjJPzHZ2XSKNI/9Fd
         iFRIiYzEsSkQWN7ddx4YGD0EsgQPsKEHrkMz8Wz8CcBkdPIX+NIlzY+7GQnKoL9kzQV2
         Ycc9fAejae0ZDTsB7rcWWGW++ZG9onozPvd924M9ZVE7shwggIYiivqwxknXTqrHK6hA
         FSEGZ2jePN/9lImkKVkkW7dGqvjfM9zm58YEzyynNrIZSVM2NewPm+cW/U14SxGKHeMu
         JBSaUewH1tQV3karBYsBn9sKMnGevJBdkS4XzSxNLlhVYTd3peAER5VwYOVAVt3Iajnf
         0QCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737467908; x=1738072708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ndX+bS7mfcHIUz3eSPCBChEUR/+D/+QHPhUMGbWKkjw=;
        b=BouinWpUAg8OVmJkvQznYYxmwMgblDeDYOZfzAfwzE10aw8ARjBWN8idSRVgJVqcEQ
         J78do/Uhjg6yLJZkryZwMKUNZrUUb0M1C5H7aABpib9d5qiiqW5UPESWhFEfl+D7O2mr
         JlJbdKAtNi2HIjeqwGI4huFfGnw7aBWn2d0jfu2QPna7GaVWo000gLq8ivTcs9V1puz0
         bleK6QZRok+1LSzCJAhRwE5TH/ISJ+uC86qnoRz+fFnArgFjvCZ/1Pv9Hc6sSKWnokRa
         97wsLaxAsi2UB2l5hRV6bLWSF+H7VQzEJsRCm60YCiVUhx8XG3F3yHWFe3gyIW09Imho
         F9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWH1sukpimHM1HsAOTsFg/GgToKiIAadNYDVPSgjOTNJJEqg87KhyafiUYVx/oZI7rGEVzaXZ0QXUFb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4hhI+TlxDIoRmUitl7mZME9rc+VCc1F9nTokUandSPf1CnuCt
	UwMM6LNJH6EHUI2rC+OWDnW+/oGTX0BfJN2aAKAOo0L1ijmA+h8Ej2ZT09Zmkzc=
X-Gm-Gg: ASbGncv4sc6IAqVtAdqWLrNK8b9PqF+sdS0+OGkcRsHOBgPwPBLWO07sO1I152dYQwU
	GZrd4K+IeEi3Clm3JlTA/UCNFOFeHqNBDTp4dXoi/A8i4YSqXQ4/aUtZ0aD7gacgkkX1T0B78Od
	Zh0dqWzA+6RTSttDB6Q76XTtqsMqqWkLqSd+Oa/OJz+BEV6ghpzXtWJLsIxwu7MQNrE9IbRkwiK
	VrSBEvaWh2Wr3aBbS4v2LPemeQ3xLQr8hGVz3TmWP5TSQqoUtiq7Jl6J6/LW4uhqiay5l3z6HM5
	y1S6nEJYLoxb/s+pr6oGj8RNb+LwayPzMiTJJOX5
X-Google-Smtp-Source: AGHT+IGUuk+xvGmbiQD3bRfCbckgBF2RVH3B6tetIFWqVCQnsVutS7iL+mu2n84MUq9YEhicZgprHw==
X-Received: by 2002:a17:906:f58e:b0:ab2:f816:c5e0 with SMTP id a640c23a62f3a-ab38b1e569cmr1477479066b.12.1737467908253;
        Tue, 21 Jan 2025 05:58:28 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384c5ad98sm753624766b.28.2025.01.21.05.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 05:58:27 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 21 Jan 2025 14:59:21 +0100
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
Subject: Re: [PATCH v6 08/10] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z4-oORWO4BgOqibB@apocalypse>
References: <cover.1736776658.git.andrea.porta@suse.com>
 <550590a5a0b80dd8a0c655921ec0aa41a67c8148.1736776658.git.andrea.porta@suse.com>
 <2025011722-motocross-finally-e664@gregkh>
 <Z49eOdVvwknOoD3E@apocalypse>
 <2025012143-rippling-rehydrate-581b@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025012143-rippling-rehydrate-581b@gregkh>

Hi Greg,

On 09:48 Tue 21 Jan     , Greg Kroah-Hartman wrote:
> On Tue, Jan 21, 2025 at 09:43:37AM +0100, Andrea della Porta wrote:
> > Hi Greg,
> > 
> > On 12:47 Fri 17 Jan     , Greg Kroah-Hartman wrote:
> > > On Mon, Jan 13, 2025 at 03:58:07PM +0100, Andrea della Porta wrote:
> > > > The RaspberryPi RP1 is a PCI multi function device containing
> > > > peripherals ranging from Ethernet to USB controller, I2C, SPI
> > > > and others.
> > > > 
> > > > Implement a bare minimum driver to operate the RP1, leveraging
> > > > actual OF based driver implementations for the on-board peripherals
> > > > by loading a devicetree overlay during driver probe.
> > > > 
> > > > The peripherals are accessed by mapping MMIO registers starting
> > > > from PCI BAR1 region.
> > > > 
> > > > With the overlay approach we can achieve more generic and agnostic
> > > > approach to managing this chipset, being that it is a PCI endpoint
> > > > and could possibly be reused in other hw implementations. The
> > > > presented approach is also used by Bootlin's Microchip LAN966x
> > > > patchset (see link) as well, for a similar chipset.
> > > > 
> > > > For reasons why this driver is contained in drivers/misc, please
> > > > check the links.
> > > 
> > > Links aren't always around all the time, please document it here why
> > > this is needed, and then links can "add to" that summary.
> > 
> > Ack.
> > 
> > > 
> > > > This driver is heavily based on downstream code from RaspberryPi
> > > > Foundation, and the original author is Phil Elwell.
> > > > 
> > > > Link: https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf
> > 
> > ...
> > 
> > > > diff --git a/drivers/misc/rp1/rp1_pci.c b/drivers/misc/rp1/rp1_pci.c
> > > > new file mode 100644
> > > > index 000000000000..3e8ba3fa7fd5
> > > > --- /dev/null
> > > > +++ b/drivers/misc/rp1/rp1_pci.c
> > > > @@ -0,0 +1,305 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (c) 2018-24 Raspberry Pi Ltd.
> > > > + * All rights reserved.
> > > > + */
> > > > +
> > > > +#include <linux/err.h>
> > > > +#include <linux/interrupt.h>
> > > > +#include <linux/irq.h>
> > > > +#include <linux/irqchip/chained_irq.h>
> > > > +#include <linux/irqdomain.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/msi.h>
> > > > +#include <linux/of_platform.h>
> > > > +#include <linux/pci.h>
> > > > +#include <linux/platform_device.h>
> > > > +
> > > > +#include "rp1_pci.h"
> > > 
> > > Why does a self-contained .c file need a .h file?  Please put it all in
> > > here.
> > 
> > I agree with you. Indeed, the very first version of this patch had the header
> > file placed inside the .c, but I received concerns about it and some advice to
> > do it differently, as you can see here:
> > https://lore.kernel.org/all/ZtWDpaqUG9d9yPPf@apocalypse/
> > so I've changed it accordingly in V2. So right now I'm not sure what the
> > acceptable behaviour should be ...
> 
> It's a pretty simple rule:
> 	Only use a .h file if multiple .c files need to see the symbol.
> 
> So no .h file is needed here.

Perfect, I'll revert back that two lines to V1 then. Please be aware
though that this will trigger the following checkpatch warning:

WARNING: externs should be avoided in .c files

> 
> > > > +struct rp1_dev {
> > > > +	struct pci_dev *pdev;
> > > > +	struct irq_domain *domain;
> > > > +	struct irq_data *pcie_irqds[64];
> > > > +	void __iomem *bar1;
> > > > +	int ovcs_id;	/* overlay changeset id */
> > > > +	bool level_triggered_irq[RP1_INT_END];
> > > > +};
> > > > +
> > > > +static void msix_cfg_set(struct rp1_dev *rp1, unsigned int hwirq, u32 value)
> > > > +{
> > > > +	iowrite32(value, rp1->bar1 + RP1_PCIE_APBS_BASE + REG_SET + MSIX_CFG(hwirq));
> > > 
> > > Do your writes need a read to flush them properly?  Or can they handle
> > > this automatically?
> > >
> > 
> > I had some thoughts with RaspberryPi foundation folks to double check it, and it
> > seems that there should be no need to readback the value (unless we want to go
> > really paranoid), so I would avoid that since in case of level handled interrupt
> > we would end up reading the register on every triggering interrupts.
> 
> Ok, if it passes testing, that's fine, hopefully it works properly, but
> if not, you now have a trail to go and fix it in the future :)

Sure :)

Many thanks,
Andrea

> 
> thanks,
> 
> greg k-h

