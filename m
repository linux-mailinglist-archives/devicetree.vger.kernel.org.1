Return-Path: <devicetree+bounces-140067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFC4A180FA
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 16:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A84A93A1FD2
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 15:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6C591F4713;
	Tue, 21 Jan 2025 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="EZaxkrJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD91F4297
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 15:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737472714; cv=none; b=jujxv4KcuvtJkWbLw5+iYO888G/CLqFiEJvARO+UEbUxYQ1a66R25nxt9th3jReSVYG7nTpQAoGzucnSuy2C3xPa6/Cq9g6xxFhKUv2vOTYq9RQdnfE1cGWPXef53pTpYK8stAesm6wbZtRye/J9+NlgHggoJ6tRx3l1goLFEZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737472714; c=relaxed/simple;
	bh=kEgVkExfH/1SS4cPY3NYxa6EUyTc9fTeRJF/YTL0CNk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iH40G/0NTULz9NIqFG+woOKYyOxDAoP2Pt3pXBWN6qRhV7/TK20xNBNsd+0wVJT2+lt446hZszJZ9egfZ7dDcGw/yqaVEIfA8kt27yxfTJHjx385kUzA9RCCPivz93zJyGYvjBVHO7PN3u9E5vEdV8UqzeqC831bI9m2FLdb+EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=EZaxkrJa; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-aaec111762bso1082195766b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 07:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1737472709; x=1738077509; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1vDXJK4KbYxcZJlt3fw7FKxfRAL1QGGnOoRjEgA9o2w=;
        b=EZaxkrJaZheDjlj1/uQJdqnVaV8xxd3tLZYIF8Wxk0cdtCfyuv8c+yWmKQFR2ek3M9
         VmDjeCxApNgs26wSUHadjB+tKpeJmhHeDimZGwYPN3OpcwF+HFjraF4Al6gqIX1PTd0U
         wG8rMowK5bb5EZqAvyow547Q/uNbvognoCbL7o9zVOmRbqkviWXT8lQLsYlTBbh4DcC+
         BPtnRdtrjwrlMdmq9AgruiOxzbgm9DhSX2sf1d2KyqgbbA0dDYH5NMzMvvLK9o0KdbvE
         ymermP0IHsCNBDJv2BkUmQDmK1oZ3Kg4whKLqWhl3ovC+ruH0vEb4T3iqvP/o7ST6VlB
         wpAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737472709; x=1738077509;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1vDXJK4KbYxcZJlt3fw7FKxfRAL1QGGnOoRjEgA9o2w=;
        b=O1uuPI2W7L0u+Nb4qvHnDJHmf1GPeMvCAqaJltwjw1cSgm4ysQm0MzV2pxjnBL8zTX
         MY6vJSdqX5ORkZFdVeSwOkeopkm9IBl7fp+PoPkIe25vw18LrwydqMXaqv/+/U3lTIGq
         d95Nrt7/nxlbDrJkL3TPqXHWB5CMLc1csDPV++Rr5HB5rRlG4FdqsfKT33Bp9eGuU+9p
         09CMTLYNmGX2G/nOoZ5v/t7rPFKmWti7MshkN2IqlGeUr4+o9NuOi4vS1mhlb8h4BZDv
         6OqxyhcGgrG24Cz35mrkUAfsboVzeRTz/WHUgs/HD3W76yMIz0fg0Cn+rrWo2FfWYYdo
         SWig==
X-Forwarded-Encrypted: i=1; AJvYcCUV5l3LGr9YGcWOfx3A7actHFbu0tsXhtLPeA9VfIU9ztkH7iwbo8sg40Gq+FpZxS4Vf9KuegCx8er3@vger.kernel.org
X-Gm-Message-State: AOJu0YzpRfQAaY1PmuL/vOb4W6x4h6eqYtAsMETzItbXsOP7nG+9mZ63
	JcOnOSdxlskKlg+2cES5kLzs4f3RO2zWIZYGf77pT24TQ53grCqoQUWgXIVYv8E=
X-Gm-Gg: ASbGncvv4Kwan8PlJKABXj62vnrkfSSzsbwRQ2k79Sl1jpeRHtqpAXtMbuw/2f74ZGS
	81SVe4rTbEM+V5sRa9Z9j2WFzpqu5Vacu+Mj9mDJ7J4rUoqaD55ygLwyjRuHV8dYU5n4chitdOk
	TrXywE4L2B1eEsm/Iq7h/pdYYDvGkegjjFJoaOFc4WRq2e1oPpm/fe3AYwmemm4cyhAA/xDJmRn
	WrpwZiILjpAosn8MGYdfGyZ4UyQf+JAYD1+cKFBYBPE/mmwhThcqOcT6rcoPbk48BGWtbAL1l7m
	Sf2e9a4VNIdA5v8KjMrRL8rJxJrf0y/2ctjte9V4
X-Google-Smtp-Source: AGHT+IEAYrB4ZnhRxgxUfTTRbx252YKxI33JmIyfaSG0E9U1Xt61QWphw76hL6w5A49qZMtALYAPDg==
X-Received: by 2002:a17:907:1b1c:b0:ab2:c0ba:519e with SMTP id a640c23a62f3a-ab38b3701d1mr1506057866b.35.1737472709292;
        Tue, 21 Jan 2025 07:18:29 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcb5desm755070666b.165.2025.01.21.07.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 07:18:28 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 21 Jan 2025 16:19:22 +0100
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v6 08/10] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z4-6-ifsuuKMHimq@apocalypse>
References: <cover.1736776658.git.andrea.porta@suse.com>
 <550590a5a0b80dd8a0c655921ec0aa41a67c8148.1736776658.git.andrea.porta@suse.com>
 <2025011722-motocross-finally-e664@gregkh>
 <Z49eOdVvwknOoD3E@apocalypse>
 <2025012143-rippling-rehydrate-581b@gregkh>
 <Z4-oORWO4BgOqibB@apocalypse>
 <2025012157-bonsai-caddie-19b2@gregkh>
 <Z4-xcjov0HLivfVX@apocalypse>
 <2025012148-unused-winking-7d51@gregkh>
 <20250121161512.2a3ac703@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250121161512.2a3ac703@bootlin.com>

Hi Herve,

On 16:15 Tue 21 Jan     , Herve Codina wrote:
> Hi Andrea,
> 
> On Tue, 21 Jan 2025 15:49:04 +0100
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> 
> > On Tue, Jan 21, 2025 at 03:38:42PM +0100, Andrea della Porta wrote:
> > > Hi Greg,
> > > 
> > > On 15:18 Tue 21 Jan     , Greg Kroah-Hartman wrote:  
> > > > On Tue, Jan 21, 2025 at 02:59:21PM +0100, Andrea della Porta wrote:  
> > > > > Hi Greg,
> > > > > 
> > > > > On 09:48 Tue 21 Jan     , Greg Kroah-Hartman wrote:  
> > > > > > On Tue, Jan 21, 2025 at 09:43:37AM +0100, Andrea della Porta wrote:  
> > > > > > > Hi Greg,
> > > > > > > 
> > > > > > > On 12:47 Fri 17 Jan     , Greg Kroah-Hartman wrote:  
> > > > > > > > On Mon, Jan 13, 2025 at 03:58:07PM +0100, Andrea della Porta wrote:  
> > > > > > > > > The RaspberryPi RP1 is a PCI multi function device containing
> > > > > > > > > peripherals ranging from Ethernet to USB controller, I2C, SPI
> > > > > > > > > and others.
> > > > > > > > > 
> > > > > > > > > Implement a bare minimum driver to operate the RP1, leveraging
> > > > > > > > > actual OF based driver implementations for the on-board peripherals
> > > > > > > > > by loading a devicetree overlay during driver probe.
> > > > > > > > > 
> > > > > > > > > The peripherals are accessed by mapping MMIO registers starting
> > > > > > > > > from PCI BAR1 region.
> > > > > > > > > 
> > > > > > > > > With the overlay approach we can achieve more generic and agnostic
> > > > > > > > > approach to managing this chipset, being that it is a PCI endpoint
> > > > > > > > > and could possibly be reused in other hw implementations. The
> > > > > > > > > presented approach is also used by Bootlin's Microchip LAN966x
> > > > > > > > > patchset (see link) as well, for a similar chipset.
> > > > > > > > > 
> > > > > > > > > For reasons why this driver is contained in drivers/misc, please
> > > > > > > > > check the links.  
> > > > > > > > 
> > > > > > > > Links aren't always around all the time, please document it here why
> > > > > > > > this is needed, and then links can "add to" that summary.  
> > > > > > > 
> > > > > > > Ack.
> > > > > > >   
> > > > > > > >   
> > > > > > > > > This driver is heavily based on downstream code from RaspberryPi
> > > > > > > > > Foundation, and the original author is Phil Elwell.
> > > > > > > > > 
> > > > > > > > > Link: https://datasheets.raspberrypi.com/rp1/rp1-peripherals.pdf  
> > > > > > > 
> > > > > > > ...
> > > > > > >   
> > > > > > > > > diff --git a/drivers/misc/rp1/rp1_pci.c b/drivers/misc/rp1/rp1_pci.c
> > > > > > > > > new file mode 100644
> > > > > > > > > index 000000000000..3e8ba3fa7fd5
> > > > > > > > > --- /dev/null
> > > > > > > > > +++ b/drivers/misc/rp1/rp1_pci.c
> > > > > > > > > @@ -0,0 +1,305 @@
> > > > > > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > > > > > +/*
> > > > > > > > > + * Copyright (c) 2018-24 Raspberry Pi Ltd.
> > > > > > > > > + * All rights reserved.
> > > > > > > > > + */
> > > > > > > > > +
> > > > > > > > > +#include <linux/err.h>
> > > > > > > > > +#include <linux/interrupt.h>
> > > > > > > > > +#include <linux/irq.h>
> > > > > > > > > +#include <linux/irqchip/chained_irq.h>
> > > > > > > > > +#include <linux/irqdomain.h>
> > > > > > > > > +#include <linux/module.h>
> > > > > > > > > +#include <linux/msi.h>
> > > > > > > > > +#include <linux/of_platform.h>
> > > > > > > > > +#include <linux/pci.h>
> > > > > > > > > +#include <linux/platform_device.h>
> > > > > > > > > +
> > > > > > > > > +#include "rp1_pci.h"  
> > > > > > > > 
> > > > > > > > Why does a self-contained .c file need a .h file?  Please put it all in
> > > > > > > > here.  
> > > > > > > 
> > > > > > > I agree with you. Indeed, the very first version of this patch had the header
> > > > > > > file placed inside the .c, but I received concerns about it and some advice to
> > > > > > > do it differently, as you can see here:
> > > > > > > https://lore.kernel.org/all/ZtWDpaqUG9d9yPPf@apocalypse/
> > > > > > > so I've changed it accordingly in V2. So right now I'm not sure what the
> > > > > > > acceptable behaviour should be ...  
> > > > > > 
> > > > > > It's a pretty simple rule:
> > > > > > 	Only use a .h file if multiple .c files need to see the symbol.
> > > > > > 
> > > > > > So no .h file is needed here.  
> > > > > 
> > > > > Perfect, I'll revert back that two lines to V1 then. Please be aware
> > > > > though that this will trigger the following checkpatch warning:
> > > > > 
> > > > > WARNING: externs should be avoided in .c files  
> > > > 
> > > > Well where are those externs defined at?  Shouldn't there be a .h file
> > > > for them somewhere in the tree if they really are global?  
> > > 
> > > Those symbols are deined in drivers/misc/rp1/rp1-pci.dtbo.S (added by
> > > this patchset) and created by cmd_wrap_S_dtb in scripts/Makefile.lib.
> > > They are just placeholders that contains rp1-pci.dtbo as
> > > a binary blob, in order for the driver (rp1_pci.c) to be able to use
> > > the binary buffer representing the overlay and address it from the
> > > driver probe function.
> > > So there's no other reference from outside rp1_pci.c to those two symbols.
> > > In comparison, this is the very same approach used by a recently accepted
> > > patch involving drivers/misc/lan966x_pci.c, which also has the two externs
> > > in it and triggers the same checkpatch warning.  
> > 
> > Ok, that's fine, checkpatch is just a hint, not a hard-and-fast-rule.
> > 
> 
> Maybe just to avoid confusion for future readers, you can add a comment as I
> did for the lan966x:
>   https://elixir.bootlin.com/linux/v6.13-rc3/source/drivers/misc/lan966x_pci.c#L21
> 
> This will not avoid the warning but will give an explanation to people
> looking closer at this checkpatch warning.

Good advice, thanks Herve! Added...

Regards,
Andrea

> 
> Best regards,
> Herv�

