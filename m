Return-Path: <devicetree+bounces-93870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E393952C95
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 12:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F5C0285D86
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 10:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5FE1D54E8;
	Thu, 15 Aug 2024 10:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuxpNeYy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63071D174F
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 10:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723716961; cv=none; b=euoU2KgcSsGMxI3tXke5eBQNaA0w6EOufDUyciVZj25YNtVcCRhw9Uyntlvn3KnqcGPO44w3ZxyQ0ovvz9EXzU+8CnRo6RtjbkRqJXeTdQa5GYLK1eNelfnsUQnJYNxginqfQqhqjlD2EQHkuZoUgPgRkXe87+ig8fwAQK7PVvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723716961; c=relaxed/simple;
	bh=EWHAvpJ0fJ47ch2U4sjdTdcRLUJ3eXL8YpEgS2qGZJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DqCu1MnohHZyVLyauMbmMb6mH2KKEvDJ9AYZ+GyUKif9y2VuDQJATAWOJspzg2QYEGWUjOQ0wFJNsBmX5LUuPDIiUm2jrW2h9fVRyNUnSGyR5a+LVrEEsNvjCpuXzTvm6LXBBjb/HEnNoxGu6fi/2teWAWLkns9wKakCh5Gh3DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuxpNeYy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B51C4AF0D;
	Thu, 15 Aug 2024 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723716959;
	bh=EWHAvpJ0fJ47ch2U4sjdTdcRLUJ3eXL8YpEgS2qGZJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YuxpNeYywl1HZ0h1sExQPHKalXsDGoS+pGIPHQdkWq/ewBw2nL60O6E8JeyTzSjtK
	 fl0tWrN3an6TJdd9Za+msvpR+L+Jsy4bqis7edBy0auDpeX2trEnwZ8961XziGGfjX
	 zZernZELsjpy/lEQp6g0iQvYmPAFgfKiUn01s1bwUasCkNMPEhwVgCX95Ad+7ut8LM
	 bASIOux+DEQ1GbeGQdjjh6AVSuO0W7L2YAx6Y+Fu7xFFokhBg75kfnEPmGauUS0V9p
	 En1djvu2Oo0gqBzibpiU11vr5Z/vzFWiIODgnEUEmxj7wTCjzCkV1JwISOBuUDpjvc
	 +57bGulN0yKgA==
Date: Thu, 15 Aug 2024 12:15:53 +0200
From: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
To: Conor Dooley <conor@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, 
	Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, linux-arm-kernel@lists.infradead.org, arm@kernel.org, 
	Andy Shevchenko <andy@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] irqchip/armada-370-xp: Implement SoC Error interrupts
Message-ID: <bhd7l2b5lltcmz2bvwpp2wn7kpj37bbr4vxyd2aeoz6ve67wqv@xjb5penkoubd>
References: <20240814124537.29847-1-kabel@kernel.org>
 <87mslfnlve.ffs@tglx>
 <20240814-faceted-fiddling-cda119e3f483@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240814-faceted-fiddling-cda119e3f483@spud>

On Wed, Aug 14, 2024 at 05:43:19PM +0100, Conor Dooley wrote:
> On Wed, Aug 14, 2024 at 05:51:33PM +0200, Thomas Gleixner wrote:
> > On Wed, Aug 14 2024 at 14:45, Marek Behún wrote:
> > 
> > Cc+ device tree people.
> > 
> > > + The code binds this new interrupt domain to the same device-tree node as
> > > + the main interrupt domain. The main interrupt controller has its
> > > + interrupts described by one argument in device-tree
> > > + (#interrupt-cells = <1>), i.e.:
> > > + 
> > > +   interrupts-extended = <&mpic 8>;
> > > + 
> > > + Because of backwards compatibility we cannot change this number of
> > > + arguments, and so the SoC Error interrupts must also be described by
> > > + this one number.
> > > + 
> > > + Thus, to describe a SoC Error interrupt, one has to add the an offset
> > > + to the SoC Error interrupt number. Offset 0x400 was chosen because the
> > > + main controller supports at most 1024 interrupts (in theory; in practice
> > > + it seems to be 116 interrupts on all supported platforms). An example of
> > > + describing a SoC Error interrupt is
> > > + 
> > > +   interrupts-extended = <&mpic 0x404>;
> > 
> > This looks like a horrible hack and I don't understand why this can't be
> > a separate interrupt controller, which it is in the hardware. That
> > controller utilizes interrupt 4 from the MPIC.
> > 
> > But then my DT foo is limited, so I let the DT folks comment on that.
> 
> I'm guessing, not being author and all that, that since the registers
> for this SOC_ERR business are intermingled with those of the existing
> interrupt controller it is not possible to create a standalone node for
> the new controller with it's own reg entry, without having to redo
> the binding etc for the existing controller, ending up with some sort of
> syscon.
> Alternatively, I suppose a child node could work, but it wouldn't be much
> less of a hack than deciding that numbers > 400 are the SOC_ERR ones.
> I see arguments for doing it either way and Marek must have an opinion
> on doing it without a new node, given the comment suggesting that a
> previous revision did have a dedicated node and that approach was
> dropped.

This is exactly the reason.

Pali's original code required creating another interrupt-controller node
(soc_err) within the mpic node:

   mpic: interrupt-controller@20a00 {
        compatible = "marvell,mpic";
	reg = <0x20a00 0x2d0>, <0x21070 0x58>;
	#interrupt-cells = <1>;
	interrupt-controller;
	msi-controller;
	interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;

	soc_err: interrupt-controller@20 {
	    interrupt-controller;
	    #interrupt-cells = <1>;
	};
   };

I decided against it, because to do this correctly in device-tree
bindings, it gets unnecessarily complicated:
- it requires #address-cells and #size-cells within the mpic node
- the `interrupt-controller` property of mpic node can in some
  interpretations clash with the `interrupt-controller@20` name of the
  child node
- the registers of soc_err and mpic overlap
- the child note should have a compatible string if we want to be proper

I also did consider syscon, but IMO it just adds unnecessary burden to
backwards compatibility of device-trees.

The solution with the 0x400 offset solves the backwards compatiblity
issue.

Marek

