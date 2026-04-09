Return-Path: <devicetree+bounces-286013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBq3NEpf12kCNAgAu9opvQ
	(envelope-from <devicetree+bounces-286013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:11:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6633C78DD
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0933E30AF59C
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 08:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157AC38F94C;
	Thu,  9 Apr 2026 08:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="dsi6d1qf";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="m/6xsiiY"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99ACE38E5D6;
	Thu,  9 Apr 2026 08:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775721968; cv=none; b=btFqH0vCI7LPlFym1iFOxJcMaAbrbfkT5KA6brmD1pmSb3QCEsvL2nI9IvuGsCpuro/SGkEY1gE3KiclTxYeYHS5g92IgolIQ5FTY/6zoOXMjcrD0CYOxc8IRkcEJ05iW2ctVeO4szTHAhoQyhLn6ZNvtHUsKTjyoIN0Nhr/moM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775721968; c=relaxed/simple;
	bh=9OUa89mUCwGVqfnyjGyg9jN7ew2A5qAnyw9r5Y6Niv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IA4GI0avoyTbKQpQinTf+iG9z63CJRa37qPDYYhQMW9E7+h81osZ4UEfzySKWCHjoS6GhGK7YNAYv4m8LLS2c5WJoC3lrgg/7Og0sgCFt430LVr8hQyjncCl85Q0FLfQje3F1MIITZ1fcNKqlwBM8Lpsjc/jVVMWcTW6UCoQ8A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=dsi6d1qf; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=m/6xsiiY; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Thu, 9 Apr 2026 10:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1775721958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IPSiwVuVCP9ir6ejj9LHt4ETPGa3LGlzkf6ixpxGZ98=;
	b=dsi6d1qfpOVKliDwS50vMZnH0jbegdSuHzyydezr+emC+cLPe8t5ixEI/5pZC2AyyZjWZ0
	Vh2F13TfOOcb2W9sAeaE7/uKU7ShXpSOhHWTbZqAcjtJC9LBKkwgodUiq4Hyb0XvVdpEfD
	YOWINl01U6Nv3OCOGYgBocoJtc7gr9PMjWjFjF289LQI5ICYC+qFwhVOpRu4tk3xPPt8Z2
	nuRczOH5ASeIEuyUHWyyNkjDMszVqpwB542AJr1MgzkGfTrewSvbLBr2loE585Ucbc6FtS
	f3ybhfilU8jIBzWxVLTM0x8bCHf7/vbgTz3U2blDK8iMCwMyFMRc6wuGPiT5Yg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1775721958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IPSiwVuVCP9ir6ejj9LHt4ETPGa3LGlzkf6ixpxGZ98=;
	b=m/6xsiiY2sy5BQM3VnWr4suVEXfvMtjeM9n7diD8yakbjKqfzHsm9zV1iIFNBj7A+v463a
	nkVrgNu9fvetSoCQ==
From: Gregor Herburger <gregor.herburger@linutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Srinivas Kandagatla <srini@kernel.org>, devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] nvmem: Add the Raspberry Pi OTP driver
Message-ID: <addd5ZpuUdKBV7Bn@gregor-framework>
References: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
 <20260408-rpi-otp-driver-v1-2-e02d1dbe6008@linutronix.de>
 <251100fe-db96-4d83-899a-cd764582d698@gmx.net>
 <adaw1rr3WlDjvyQp@gregor-framework>
 <90f54202-6eb6-4c44-b029-a4e0dafad861@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90f54202-6eb6-4c44-b029-a4e0dafad861@gmx.net>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmx.net];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-286013-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linutronix.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linutronix.de:dkim]
X-Rspamd-Queue-Id: 4F6633C78DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:03:47PM +0200, Stefan Wahren wrote:
> Am 08.04.26 um 21:47 schrieb Gregor Herburger:
> > Hi Stefan,
> > 
> > thanks for the review.
> > > Is there any reason, why we cannot register this driver in
> > > rpi_firmware_probe() like hwmon and clk driver?
> > > 
> > > I like to avoid the complete dt-binding from patch 1.
> > The private OTP registers are not available on all Raspberries. Afaik
> > only on 4 and 5. So I think these registers must be described through
> > the device tree. Therefore the bindings are needed.
> This binding doesn't represent some kind of hardware, it's just some
> firmware interface. A proper DT binding would describe the MMIO address
> range for OTP access.

I think it does represent real hardware. Although it is hidden through the
firmware. Not all hardware must be MMIO addresses. 

The only driver that does not have a DT node is the hwmon driver. All
other drivers (clock, gpio, touchscreeen, reset, pwm) do have a DT
binding. Looking at the comment in rpi_register_clk_driver this
seems to be some legacy behaviour for older DTs for the clock driver. 

> If you need some distinction between the Raspberry Pi generations there are
> firmware tags to do this.

So what is your suggestion? What tags do you mean?

I don't understand why you want to avoid the dt-binding. What is the
problem with dt-bindings?
What is the benefit of registering the driver in rpi_firmware_probe?

Imho describing this in the DT is the more natural way to do this. E.g.
if in the future there is a raspberry pi with a 64Byte otp it could easily
be supported by adding a devicetree property and add it to the driver.

Regards
Gregor

