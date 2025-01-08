Return-Path: <devicetree+bounces-136470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BACA054FC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0BC91887A16
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8641AF0D3;
	Wed,  8 Jan 2025 08:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Kb8Yy2vQ"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FF01AA781;
	Wed,  8 Jan 2025 08:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736323684; cv=none; b=hC4oSsvNYgOvsIaqUnbIy/L+mEWV5FrN0+A829syflVJSsCLgKD9OGylxzgbrHlfn+GEP292dDNfkb5cukSjEGfNCmJH0ghHoi+YckrCi1kxbTEu2P49pFKQbd+aJWMQ34KeLs02giXlYdepnQ9XsH1R7DRKc+sMvkNjW6Ykg8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736323684; c=relaxed/simple;
	bh=cS00LgUOu2Z5QhCXVrIrNtJAasd9sOgSnJcN5cOp/oA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uPP+IfAFKGPsLvAZZ42zNP+Zn8OkkIY3Jeb3iqJ83AtI77Djo/EBtRRwrJ3pAu8A0jst4GjPnb7z8gqWtF6c5k1H5iR49DFvugkxk2Gl9/TWw4kMqp5HfD0+Q88R2alJpsSmmyfjNASZ7HNDcGD/ImLahXmsAorzqfUQTjzaiGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Kb8Yy2vQ; arc=none smtp.client-ip=217.70.183.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id A57DCE0008;
	Wed,  8 Jan 2025 08:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736323673;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Np9RdKPXtA8KC+7f2wBYcY4VVynSc7LSEPPjbrjEtZ4=;
	b=Kb8Yy2vQ3JranCDXV7PLQ5wRjVuvRXrjZBaCKdQmEXs+JxcDT3+BUSmrfg5QkHrD0r7ECf
	OTvjmWqxCh9LdDbf+LffllwrlQzZElJqIiH4d5BoMjXys7tDu8kwd0CEyDhcz8aPhFaEtX
	JwI0BnkDjqybg5FFx4EI/z9FMe76xvY1ydI8zORaNdb1e1yrRXtZ5tMUS6VpKAfA6K/YPY
	XGz/UlTLDTzJm4QT/SxP0d9u3Y9bkEdZR0cu18SfvscvXg6CewtAC+b2/xN+nZmXs7/4QS
	jfYreUsMZ352MVwnHFMylZ/zjuq+0MEbyHYVrWKBn8nQLldKIUgOjLcHokEWwQ==
Date: Wed, 8 Jan 2025 09:07:50 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Ayush Singh <ayush@beagleboard.org>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan
 <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, David Gibson
 <david@gibson.dropbear.id.au>
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
Message-ID: <20250108090750.45685a50@bootlin.com>
In-Reply-To: <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
	<33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
	<20241210104141.39acffb1@bootlin.com>
	<bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
	<20241210115515.1886f73f@bootlin.com>
	<6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Ayush,

On Wed, 8 Jan 2025 13:06:03 +0530
Ayush Singh <ayush@beagleboard.org> wrote:

> On 10/12/24 16:25, Herve Codina wrote:
> > Hi Ayush,
> > 
> > On Tue, 10 Dec 2024 15:26:44 +0530
> > Ayush Singh <ayush@beagleboard.org> wrote:
> >   
> >> On 10/12/24 15:11, Herve Codina wrote:  
> >>> Hi Ayush,
> >>>
> >>> On Tue, 10 Dec 2024 14:52:22 +0530
> >>> Ayush Singh <ayush@beagleboard.org> wrote:
> >>>
> >>> ...  
> >>>>
> >>>> What is the reason for not using symbols directly as described here [3]?
> >>>>
> >>>> I do like this approach since it does not pollute the global symbols.
> >>>> Just want to know if there are any other reasons for it.
> >>>>     
> >>>
> >>> Modifying the __symbols__ node at runtime (adding / removing properties in
> >>> it) exposes memory leaks if __symbols__ already exist in the live DT.
> >>> This __symbols__ node exist if the dtb was compiled with '-@' or if you
> >>> chain the overlay (i.e. __symbols__ node created by the first overlay).  
> >>
> >> Yeah, that is a problem, specially in a setup which might involve
> >> hot-plugging.
> >>  
> >>>
> >>> I think also that some conflicts can appears. What happens if you want to
> >>> add a new label but this label is already present for some other purpose?  
> >>
> >> I do not think that actually is a problem. As described in the original
> >> patch [0], the symbol and connector overlay is supposed to be applied as
> >> a group (overwriting any conflicting symbols in the process).
> >>
> >> The reason why this is not a problem is that `__symbols__` are only used
> >> to resolve the phandles (overlays do not support path references yet),
> >> but do not really have a purpose in the livetree (at least far as I
> >> know, but I can be wrong).
> >>  
> >>>
> >>> Best regards,
> >>> Hervé  
> >>
> >> [0]: https://lore.kernel.org/lkml/20240702164403.29067-1-afd@ti.com/  
> > 
> > 
> > Also, in your first overlay (adding symbols in __sympbols__ node), you have
> > something like:
> >     GROVE_PIN1_MUX_I2C_SCL = "/bus@f0000/pinctrl@f4000/grove-i2c-pins";
> > 
> > If I understood correctly, other overlays will have GROVE_PIN1_MUX_I2C_SCL
> > as unresolved symbols and will use GROVE_PIN1_MUX_I2C_SCL to reference the
> > grove-i2c-pins node.
> > This unresolved symbol from the overlay is resolved thanks to the __symbols__
> > table where you added GROVE_PIN1_MUX_I2C_SCL (first overlay operation).
> > 
> > In order to work, you need to have a phandle property set in the
> > grove-i2c-pins node.
> > 
> > This is done by dtc when you compile the dtb containing the grove-i2c-pins
> > node (i.e. k3-am625-beagleplay.dts)
> > 
> > The phandle property will be set only if:
> > - a label for grove-i2c-pins already exist and -@ option is used
> > or
> > - a label for grove-i2c-pins already exist and it is referenced as a phandle
> >    in the dts (k3-am625-beagleplay.dts).
> > 
> > Otherwise, dtc will not create the phandle property and without this
> > property, the symbol resolution will not be correct.
> > 
> > Best regards,
> > Hervé
> >   
> 
> Hello Hervé
> 
> Thanks for the clarification. things have changed a bit since the last 
> message and it seems like trying to add path reference support to 
> overlays is not the best way forward [0]. So I would love to help move 
> this approach forward.
> 
> I do have a question regarding this approach, so here I go:
> 
> Can the `export-symbols` node be added to devicetree spec and be 
> resolved by the devicetree compiler (and fdtoverlay) instead of being 
> runtime resolution.

Of course, a solution with fdtoverlay is welcome but it should not fully
replace the runtime resolution. In our case, we need runtime resolution
because the overlay is loaded by a driver.

Both resolutions (fdtoverlay and runtime) should work.

> 
> To get some context, I would like to share the addon-board overlays 
> between ZephyrRTOS and Linux kernel. I would be happy to try adding 
> support to dtc compiler for it. I am also tagging David Gibson (dtc 
> maintainer) in this discussion since he also had some ideas regarding 
> the feasibility and pitfalls of adding it to devicetree compiler (and spec).
> 
> 
> [0]: 
> https://lore.kernel.org/devicetree-compiler/6b2dba90-3c52-4933-88f3-b47f96dc7710@beagleboard.org/T/#m900b5ca13cfc28396d4d46d9c3130a7070fa8c90
> 
> Best regards,
> Ayush Singh
> 

Thanks for your help proposal!

Best regards,
Hervé

