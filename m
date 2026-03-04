Return-Path: <devicetree+bounces-270902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEb7LOTop2mDlgAAu9opvQ
	(envelope-from <devicetree+bounces-270902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:10:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC3F1FC40F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0EF1E3063829
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3351F390CBE;
	Wed,  4 Mar 2026 08:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KgMJc9/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D26390CA8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611720; cv=none; b=uuRNIU/mm8yF5v9rqQXnf0+CveCUgVEqlPpH1b3hie3CQDBG9N4MYO9SKIjDDZZqUDtmBO73joXGLbGnVBpZMdmx/6IhX6si2sJqbwV/mSN+SB78HeRviUWK5i1KqYLYaQLWlzm7RnsUwCDf51wCTcHcFHUrutpDgwoK9yPmzHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611720; c=relaxed/simple;
	bh=SCl11TbcKKgrDpz8AOKo3E9AzwfTwHh0/Z5vfzDPinw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D/ObAUCX8ECFr+zKXqicOF6eF/Jl9ur51odrWY3n+a2wpChP8NHXA04vetmlqLGGLLayTvz1lp1Se4GlHepA4WQKEXQvHUts8OG9d3owAVLlCtlyQqPVWaaU4ReaD792pWgJOpmIGpHZ/fxgIUzvP4ZWJBDHC+yXPGCl2E7ArA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KgMJc9/v; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3598e7155bbso2002804a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772611715; x=1773216515; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6V4ZABAoBYAEDoOVQvmIQ76oRldfMwh5wzfjWSFa+/U=;
        b=KgMJc9/v7e8TyF0l45KxWaYpiGQiHHdHaHh99F+sQOVf7pnj0jMqVkxoryAXv4vup4
         XQJheuqy6Bxicnv+xPE75cY/aZ5VIUGTBYLsN1yQwwimsf0Pa6A4bFkAy5bPdTvpUoMo
         qssc5eEPe6UlxisuAkkqhdbFA5RRP11tMk5dw6pFiyS+mOg4Dqxsaq9t7SXFgio+jYmX
         qGbcWQ+qNAicdFeo9FE6D3S97FcwyfH2x2VRTAa+F/Kxooe3FWp4A9cp47WLmDPdoGLl
         oPOxqY98YA42YhCUFlG6EDYiJBQTpHuwVjCs2A9vjNo9BeakWAoQ75r/m4a1BovurIJf
         jDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611715; x=1773216515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6V4ZABAoBYAEDoOVQvmIQ76oRldfMwh5wzfjWSFa+/U=;
        b=bdUSe8txxaDQHuI3CvlnnVg3rOv5pR0lyI0fbnNeZxqPdAOsyijKd9ryY156mq4XQC
         qByjVFJ5OYC/+Wjiv+7dEaIq2C12AbsTvW+opqhvUxaL2cTG5o15p51WnwMH/ZOiDA9d
         uZoGkrffRejfXgrRx+Znjp0NZIZEHTKxnwlPrghsbIt36ZBEHrSTs941tLyCzWq5nIg0
         6i3DEfnQzJp3EhDqcmmhfKcHi/XyLVH/uSpyY/3cdTDhbQ/PlMhc5lxLvCFU1tLmJLRE
         tvFgsJQJUt5u3eF+6JwCr07qINwJeHY/z+KkpFluqYlQ7Vq1qmeWk6u+agVFVOVu/in3
         vUQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWYkFIVLu9OscHrcRNOLCYDG/T5J/V3bk8swYTTu6rrCZ4tpK+RbFtZal/bkFRWMRrpFu0HQxwyte5@vger.kernel.org
X-Gm-Message-State: AOJu0YzNUQN0Rco9P7rrp9Y3soKFTUVHQnBorYLfPKcg1ZgbAjMfLAa7
	RkjHIbyco/Kz37UldYL7d6ft3ruT18v6MQnJfveNt6QVI+OWvh8GXDc3
X-Gm-Gg: ATEYQzyEs9oaO9R/ZpZJYArOeXKz7M4a6WvwAU16IFuB/reTdQY5P4qSJqiAoN2WirM
	trZuRoSJ8+7ZYmkCJBf1vE1b6fzODOF5xzxnB7GtfodxOalPgHAkftwxqfB7wPkZlaLgL5gi4qU
	1Yu6PGUqFvUB6VWzAWN3mg3o5JKxiDCC0wIOxHxL4Bnmw3D2HhZP49rdiSyASnkUZJvzzGQ60z/
	UkD9wp/v1l24LXGCTWnqDvO5hqGa+kxtNEwUnSt4yokKrDM03bv+GiC01M1ImRm2zrF0sdeGwxs
	g3m4/LG1V8VPOnwbQ4lz6kvc4S8Zvd5LmH1466sCYv+fjQ7Q8cYUymJLNL5ZV8Q7DJAo719g7s/
	YXfmOEjrOWR6gcgjNSnbF5HGYJ8jqaJNrthsP0HfqtynniSLPvuUI9LA0CbRBkrrhH2mHhIBlSz
	MP9hz+LjmaCelbhnd9qQpAlXXp46iprxlFosjTPqc=
X-Received: by 2002:a17:90b:2fc8:b0:359:8e1c:542 with SMTP id 98e67ed59e1d1-359a6a3c1ddmr1261053a91.18.1772611715477;
        Wed, 04 Mar 2026 00:08:35 -0800 (PST)
Received: from DESKTOP-TIT0J8O.localdomain ([49.47.198.15])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c3acea3sm4504552a91.16.2026.03.04.00.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:08:35 -0800 (PST)
Date: Wed, 4 Mar 2026 12:08:25 +0400
From: Ahmed Naseef <naseefkm@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Caleb James DeLisle <cjd@cjdns.fr>, linux-mips@vger.kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, tsbogend@alpha.franken.de,
	ryder.lee@mediatek.com, jianjun.wang@mediatek.com,
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	bhelgaas@google.com, vkoul@kernel.org, neil.armstrong@linaro.org,
	p.zabel@pengutronix.de, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, nbd@nbd.name,
	ansuelsmth@gmail.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/8] PCI: Skip bridge window reads when window is not
 supported
Message-ID: <aafoedMHhKNuEwFE@DESKTOP-TIT0J8O.localdomain>
References: <20260303190948.694783-8-cjd@cjdns.fr>
 <20260303213723.GA4075286@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260303213723.GA4075286@bhelgaas>
X-Rspamd-Queue-Id: 9CC3F1FC40F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270902-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[cjdns.fr,vger.kernel.org,baylibre.com,kernel.org,alpha.franken.de,mediatek.com,google.com,linaro.org,pengutronix.de,gmail.com,collabora.com,nbd.name,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naseefkm@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,DESKTOP-TIT0J8O.localdomain:mid]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 03:37:23PM -0600, Bjorn Helgaas wrote:
> On Tue, Mar 03, 2026 at 07:09:47PM +0000, Caleb James DeLisle wrote:
> > pci_read_bridge_io() and pci_read_bridge_mmio_pref() read bridge window
> > registers unconditionally. If the registers are hardwired to zero
> > (not implemented), both base and limit will be 0. Since (0 <= 0) is
> > true, a bogus window [mem 0x00000000-0x000fffff] or [io 0x0000-0x0fff]
> > gets created.
> > 
> > pci_read_bridge_windows() already detects unsupported windows by
> > testing register writability and sets io_window/pref_window flags
> > accordingly. Check these flags at the start of pci_read_bridge_io()
> > and pci_read_bridge_mmio_pref() to skip reading registers when the
> > window is not supported.
> 
> BTW, I'm still interested in the details of how we got here.  It
> shouldn't be too unusual to have a bridge without an I/O window or
> maybe even without a prefetchable (64-bit) memory window.
> 
Hi Bjorn,

I'm fairly new to the PCI subsystem, so please correct me if
any of my understanding below is wrong.

Regarding the I/O window check: I only hit the issue with the
prefetchable window. The I/O window check was added per your
suggestion in our earlier discussion, since the same logic
applies. Neither downstream device (MT7603, MT7663) has I/O
BARs, so I haven't been able to test that path.

The EN7528 SoC's PCIe bridge does not implement the optional
prefetchable memory window , the registers are hardwired to
zero. The downstream device (MT7663 WiFi) has 64-bit
prefetchable BARs.

The problem is that pci_read_bridge_bases() reads these
registers without checking pref_window. With both base and
limit hardwired to zero, base(0) <= limit(0) evaluates true,
creating a bogus [mem 0x00000000-0x000fffff pref] window.
This makes the allocator believe the bridge has a prefetch
window and route the prefetchable BARs through it. But since
the hardware can't actually forward through this non-existent
window, the device becomes unreachable.

This patch skips the register read when pref_window is not
set, so no bogus resource is created, and the allocator
correctly falls back to the non-prefetchable MMIO window.

As to why this hasn't surfaced before , I'm not sure. It may
depend on whether pci_read_bridge_bases() gets called on a
given platform and whether the downstream devices have
prefetchable BARs. But I don't have enough experience with
other platforms to say for certain.

Reagrds,
Ahmed Naseef

> > Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
> > Signed-off-by: Ahmed Naseef <naseefkm@gmail.com>
> > Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
> > ---
> >  drivers/pci/probe.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> > index bccc7a4bdd79..4eacb741b4ec 100644
> > --- a/drivers/pci/probe.c
> > +++ b/drivers/pci/probe.c
> > @@ -395,6 +395,9 @@ static void pci_read_bridge_io(struct pci_dev *dev, struct resource *res,
> >  	unsigned long io_mask, io_granularity, base, limit;
> >  	struct pci_bus_region region;
> >  
> > +	if (!dev->io_window)
> > +		return;
> > +
> >  	io_mask = PCI_IO_RANGE_MASK;
> >  	io_granularity = 0x1000;
> >  	if (dev->io_window_1k) {
> > @@ -465,6 +468,9 @@ static void pci_read_bridge_mmio_pref(struct pci_dev *dev, struct resource *res,
> >  	pci_bus_addr_t base, limit;
> >  	struct pci_bus_region region;
> >  
> > +	if (!dev->pref_window)
> > +		return;
> > +
> >  	pci_read_config_word(dev, PCI_PREF_MEMORY_BASE, &mem_base_lo);
> >  	pci_read_config_word(dev, PCI_PREF_MEMORY_LIMIT, &mem_limit_lo);
> >  	base64 = (mem_base_lo & PCI_PREF_RANGE_MASK) << 16;
> > -- 
> > 2.39.5
> > 

