Return-Path: <devicetree+bounces-276938-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKR+FJtFumlTTgIAu9opvQ
	(envelope-from <devicetree+bounces-276938-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:26:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEE62B6521
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C863A3024975
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F5C3537C0;
	Wed, 18 Mar 2026 06:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fL1TFZbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE7036493A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773815190; cv=none; b=KeK5KnjdTWoEXl6c960lADJyejFtjffl4azIxW7fdhKXyiD+rSN8KS0lOnmqFdl4R9nNs+BHer1s3ST/Qf4mUsHRFbRa6KD6SauXpVw90IGDSiPOZJeuZk1zgiGjjug4bEKOwz7q34wbWBx8H9/Qc8stg7YmKj34wy3PpQNnuYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773815190; c=relaxed/simple;
	bh=V4TiM2oQbQvMxOOzG5GrS/DX9Cy+c9AJCjl2pkunZKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SC8/rPAX6DIjQ29E3V0lgPCsxiQz/Z1S8I6vKj1Sxx1VMnHcst3xiln3l/Jc4cfEH8LKNUhnIUe1YvfnO9iTNAdcSzWvN5B3m96eNjZ1m/8HaNZc6MveGIlfnaZ9QCrad+d8d8MccoRiuN0vbD5XAQpZ1/3KA+yAbTrSfH7t/qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fL1TFZbI; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-35b905a05a8so2249320a91.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 23:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773815189; x=1774419989; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HpBW0wGm/rB3CXB45eRbxyqg2mwTYhAbVyKw2N1pJiY=;
        b=fL1TFZbIFtHG/nOvjZTiTJ6CnnVZsfl/hPnzvJIuKJE1Lspo1asmVSMkPh4WK2Wq6h
         Oo5/6/pZxjdqxEJ5r3Qjc8QOwq1E1ZknyncESJ4QcU5tMATg8T8734bf3n1Moj8Q4Swg
         dLuHiMz4x9whdHzEYwbeyTzhaMAiqwcvQ41G4xAvSpZ0ZuoOUFZ9V7+WCiCrGfq1avwb
         3Y2iTnYk/XVt+DPmTWrByWdfd7hjmikBRMDdt7N/++1xb4T5S4oZTu3d5n9Fkz2Ok0qp
         Pn6zBAlvUk54bkyDjBE6hkyN9k5Iz1AN6W5IVBjQma7XppmA1VbO7qEoT9kWBo1xNwKK
         SK0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773815189; x=1774419989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HpBW0wGm/rB3CXB45eRbxyqg2mwTYhAbVyKw2N1pJiY=;
        b=LaUAolVuBTgOxoZfPINN84ngCCxistDMbVjq1jclIwAq3+v/9zj2UWMVUftYtUOte9
         pisU2KoF55HB0MySHySzawy0mj7wuVnM+a1reinLHSibXUQ5wxF5v6sfXd+0yDM03Ymk
         gRqUMVfY7OsoYjPyW2iFh6tQmwrglwoG0rP48DyGssEqJh0Zo2ZoP5a8JApNfq0M9A8l
         qNEAwjTDsILT4vg29/rdORFCwfFiPp49cAcYnAh3dG8aiNAX2EdyLUXPa7pSaxi4siKM
         8f+Bb7QyLJfpRquCyeRqVFCyYlGL+0BCJdzo/59dzfcO6aiSknhtUEiT+Vf+gnBuU6K2
         wSZA==
X-Forwarded-Encrypted: i=1; AJvYcCX2Ez8WsZHPte7jxexLbbS60rLLcoMznYeC2G2wFdEQGPoi3AAnHITOPASoHQakP+fAnOwSJ+zVUfIc@vger.kernel.org
X-Gm-Message-State: AOJu0YxaFhuo6awB+YcBsY8uMiNgNWXqKTaU5kYupFjNphqe/1Ge+lU+
	Deg/ZNBFLUV+HbwlYP8UTX32HG4WUMxweotXCv8pqkCuA4EmiyoNPWoJ
X-Gm-Gg: ATEYQzxic3H0j3DrEYdS3jx/eym3BUhLnK1JkgQVCDhHtbAWW5CoMQyu7NBv+3IzfRk
	q7Bd0hsCy/EXwXtXSyu2isPILot5yfTlbd10hmLVbZeghksLQB+rm5ihC+bM5146sHRPP0ig2+I
	uD3c7BtCJ/byPKWdjagS5StKo0IjYFIE9GeQnz0hkoOTBjyeAXe7Stqgb+ZhtaK2GMF/8d8+QtW
	y7ZJWw4Fbh7mCpeTJ6oCQfbp7EmLK6Stj3Hk/5Gb/Llqfuc281nvVVxrQMcU5jW0OfIjAEuFNWE
	GrfnnyIzIC2fkLKPOyk2I3O+XdYx3wjY55d2/0HQgeE/w8HcwVGvFXLe1pEnNsNWvm5kQpwHOEC
	MbzFcYbGD1zoJTJ2R5//oTcHzheuh+n7+TS/Nf7ijpc5WASl5nAm2CdMcTAea+wmVH+a5x1RtSa
	a9P2YXKKXpjBHnIh47rKGkeNQPPBlwizMoaqAGwhE=
X-Received: by 2002:a17:90b:2d10:b0:359:ff8a:ee3c with SMTP id 98e67ed59e1d1-35bb9f11dcbmr1891248a91.23.1773815188966;
        Tue, 17 Mar 2026 23:26:28 -0700 (PDT)
Received: from DESKTOP-TIT0J8O.localdomain ([49.47.198.15])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bada2bc3esm6193566a91.1.2026.03.17.23.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 23:26:28 -0700 (PDT)
Date: Wed, 18 Mar 2026 10:26:21 +0400
From: Ahmed Naseef <naseefkm@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Caleb James DeLisle <cjd@cjdns.fr>, linux-pci@vger.kernel.org,
	linux-mips@vger.kernel.org, ryder.lee@mediatek.com,
	bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, ansuelsmth@gmail.com,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] PCI: Skip bridge window reads when window is not
 supported
Message-ID: <abpFjQJ5RNcbzbmz@DESKTOP-TIT0J8O.localdomain>
References: <20260316155157.679533-4-cjd@cjdns.fr>
 <20260317212908.GA109023@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260317212908.GA109023@bhelgaas>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276938-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[cjdns.fr,vger.kernel.org,mediatek.com,google.com,kernel.org,gmail.com,collabora.com,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naseefkm@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,DESKTOP-TIT0J8O.localdomain:mid]
X-Rspamd-Queue-Id: EBEE62B6521
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 04:29:08PM -0500, Bjorn Helgaas wrote:
> On Mon, Mar 16, 2026 at 03:51:57PM +0000, Caleb James DeLisle wrote:
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
> The fundamental problem here is that assigned space to a bridge window
> that isn't implemented.  I wish we understood the connection between
> this "read window" path and the assignment path.
> 
> Maybe this patch fixes it because we enter pci_read_bridge_mmio_pref()
> with res->flags being NULL, and we set IORESOURCE_MEM |
> IORESOURCE_PREFETCH again, which makes it look like we can assign
> space for it?

Yes, that's exactly right.

> 
> If that's the case, I think it would improve the commit log to mention
> the actual mechanism by which we avoid assigning space.
> 

How about this:

  pci_read_bridge_io() and pci_read_bridge_mmio_pref() read
  bridge window registers unconditionally. If the registers
  are hardwired to zero (not implemented), both base and limit
  will be 0. Since (0 <= 0) is true, these functions set
  IORESOURCE_IO or IORESOURCE_MEM | IORESOURCE_PREFETCH on
  the bridge resource. This causes the allocator to assign
  space for the window even though the hardware can't
  implement it.

  pci_read_bridge_windows() already detects unsupported windows
  by testing register writability and sets io_window/pref_window
  flags accordingly. Check these flags at the start of
  pci_read_bridge_io() and pci_read_bridge_mmio_pref() to skip
  reading registers when the window is not supported, so the
  resource flags remain clear and the allocator does not assign
  space for non-existent windows.


Ahmed Naseef

> > Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
> > Link: https://lore.kernel.org/all/20260113210259.GA715789@bhelgaas/
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

