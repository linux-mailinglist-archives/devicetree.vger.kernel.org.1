Return-Path: <devicetree+bounces-250596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A69CEA5D8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B1002301BE96
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F82A31A556;
	Tue, 30 Dec 2025 17:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="jftbdM7N";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="oY3ZQkiB"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F412E888C;
	Tue, 30 Dec 2025 17:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767117092; cv=pass; b=p5cacfARz0WbkoAeiL90s6AnXtUjNP6c08sfnLJqVn3zeyb/w4XD7vCEY/j4srWmYkqbn3zph18t9Kl4hR5FfhbDnpb5d07yE9J1K5Zmuj+/P8aL4kntnwSZRm/X6zMk8m4mJoZboV6/9p9f8jivKIJtplI89HoqpD409sFq7Bw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767117092; c=relaxed/simple;
	bh=rbAp8Me5ipLrzK0s4yeINnwWURv6z0zvULOwHoV3Zjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kUs5cQflY+wXccOLzj0Ml9LeDww9Bmf7x19OtWmvFXAG7LGCvKkjOtJ1LQnn99XvSrIBgmO3q++X8rkoYBpd0VfML4iZJbfgLN3NXrP4Dx4MPQXoLXA4C80EClPrWLIeXmEosk88Cn22duSv/Vm+xw3pY1l7UFYfJ0Ur0Z0rSaw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=jftbdM7N; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=oY3ZQkiB; arc=pass smtp.client-ip=185.56.87.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-7g44.prod.antispam.mailspamprotection.com; s=arckey; t=1767117090;
	 b=LP1Pbultoewwbi7PU91WrFw4iQ50T0KGQYZ6UIzT1gRXlDm5G3uZjTcxrojjt/JqZilA5NdvtC
	  zH2DJrUUJsQ5V6VxH+ROyNBvjtYCnSbK1TN2dQ24lqYF9kVW9dhDAXPqcMYIf1sBF28D0tfYVl
	  d1I2M3cSmLi4vzP89MdOVU8QatxXsUN1E1lx49seOLwDkFhToffPDYNQ/jSl7o4aVrQJrb2mLb
	  AIzvqZs3FQROIO0qypllq2Mzmr2L5lYQ4iNs7wkXcfSCzc7MS84sN7fJ/WR8h4Dd6060wJj112
	  5x3YHbXVsESM6x8taT6zIR/dpSXqcjLe01CUNMxkjVZA3A==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-7g44.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-7g44.prod.antispam.mailspamprotection.com; s=arckey; t=1767117090;
	bh=rbAp8Me5ipLrzK0s4yeINnwWURv6z0zvULOwHoV3Zjo=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:
	  From:Date:DKIM-Signature:DKIM-Signature;
	b=tf0UC62Xwlhi5PPTK2T+g6ilH+qegvSqtY5Tou0lhUXi4xNh/g85ndDrxwSYTzsINmVN7g481n
	  yD9iQFCQSq8Zu9WliNLWBETIfqaILG6ndvebHQmIR0Q8B2YAA6q7JOzOVS63UEYqT7W4YtJWhv
	  iN8BnCZk40Jh3uVrLpFWeQEpO4YmVu/UkLZOIMLhJhqc/3Z2qvfTHt+rfUC82jHhz8mJgUuNfV
	  bPCsCayB4jMUg4uKwU+HZ9KqZ8hi+sr/VtDwtHYEkCCmuXTL9lW1eGvIrO9y6+1Mib05DTy5fK
	  y9TZ8hR2xD7TPGcsMpXWfIFOu0NxCDYQxLTj29unT79ZJA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=m9PaIKfx0ypaAUCu3woRJo/bm3GevWJW36NU/5SDa5Q=; b=jftbdM7NeC9nuCvnGtP+tCS2uM
	8GMe2mwVfGLPUVu0GvYkSgL58PujC20AhmUd9HR2Xfoy3hX3iHWCJBbvrQ0GOttVHuN9o9Lxti3hd
	qgZ5SWGIUliqdETJJHtT77vQIAy2N8w7DtWEslDXQXcuW7SSpsJh01/vr0lQniTszflI=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-7g44.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vadsS-00000001IkR-340i;
	Tue, 30 Dec 2025 17:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=m9PaIKfx0ypaAUCu3woRJo/bm3GevWJW36NU/5SDa5Q=; b=oY3ZQkiBNW6lgBspY/QM72BsYg
	eCV8rd9gLD4Wk3GCYQz2DQLCPcLmXEFq6ndzIluocwLsEl2gYCqjuYAWaegvIjTO/vSTrLctGAWNG
	HQnt5d8N5eoKnbjuGWjMIEuEuwdSUF3zxRSxF2RNTmdaqnX+gu0HWHGUUzNAVjRGfOXM=;
Received: from [95.248.141.113] (port=63913 helo=bywater)
	by esm19.siteground.biz with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vadsD-000000007p2-0fef;
	Tue, 30 Dec 2025 17:51:09 +0000
Date: Tue, 30 Dec 2025 18:51:07 +0100
From: Francesco Valla <francesco@valla.it>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Haidong Zheng <haidong.zheng@nxp.com>,
	Danwei Luo <danwei.luo@nxp.com>, Lei Xu <lei.xu@nxp.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: freescale: add support for NXP i.MX93
 FRDM
Message-ID: <aVQRCzq8-Q5FguTN@bywater>
References: <20251218-fpg-nxp-imx93-frdm-v4-0-cd3a9f6ac89a@pengutronix.de>
 <20251218-fpg-nxp-imx93-frdm-v4-2-cd3a9f6ac89a@pengutronix.de>
 <20251230171548.67289601@windsurf>
 <20251230172427.4f22ac7c@windsurf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230172427.4f22ac7c@windsurf>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 8b55a54d1503179c2bfdf1e40b001bcf
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vadsS-00000001IkR-340i-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-7g44.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

Hello Thomas,

On Tue, Dec 30, 2025 at 05:24:27PM +0100, Thomas Petazzoni wrote:
> Hello (again),
> 
> On Tue, 30 Dec 2025 17:15:48 +0100
> Thomas Petazzoni <thomas.petazzoni@bootlin.com> wrote:
> 
> > I see the PMIC interrupt and the RTC interrupts are routed to the I2C
> > GPIO expander at 1-0022, so I imagine either the PMIC or the RTC are
> > triggering an interrupt (left enabled by U-Boot), and the kernel isn't
> > compiled with the driver for either the PMIC or the RTC, and therefore
> > there's no IRQ handler?
> > 
> > (I confess I didn't investigate more than that at this point.)
> 
> Upon closer inspection, I in fact get thousands over IRQ #100 per
> seconds right after boot, until the point where it reaches 100000 IRQ
> events, and the splat appears, with the IRQ being subsequently
> disabled. So it's not just one interrupt, but a storm of it.
> 

This recalls the behaviour seen on i.MX91 FRDM [0], and the hardware is
indeed very similar: the GPIO expander and the TypeC port controller
(PTN5110) share the same IRQ line, and if the first gets enabled before
the second an interrupt storm will happen (because the PTN5110 is
triggering interrupts that nobody services).

I did not see this during my testing - but maybe the probe sequence is 
different. Any chance you are not loading the driver for the PTN5110?
I see from your defconfig it should be compiled as module, but maybe
you are not including it into the image or not loading it?

The NXP downstream BSP is masking interrupts for the TypeC port
controller as part of the U-Boot initialization, as they are enabled by
default at reset. While it somewhat breaks the required isolation
between the bootloader and the system it loads, I fear this is the only
sensible option here, given this hardware limitation; this was the path
that was chosen for the i.MX91 FRDM (which has been applied today [1]).

> Thomas
> -- 
> Thomas Petazzoni, co-owner and CEO, Bootlin
> Embedded Linux and Kernel engineering and training
> https://bootlin.com
> 

[0] https://lore.kernel.org/all/aTBFCc-8NzeS4MzT@bywater/
[1] https://lore.kernel.org/u-boot/CAOMZO5DsCi6GHrkvLEZTjsLy1D02A2e83YgMO36b3EMt8B6c5Q@mail.gmail.com/

Reagrds,
Francesco


