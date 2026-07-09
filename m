Return-Path: <devicetree+bounces-323574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X6jLHvx1T2qxhAIAu9opvQ
	(envelope-from <devicetree+bounces-323574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:20:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 141F672F854
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:20:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ge9pmZYC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323574-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323574-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 636AD30AFBE4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F9B3E3142;
	Thu,  9 Jul 2026 10:11:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A7D375F7B;
	Thu,  9 Jul 2026 10:11:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591892; cv=none; b=oTWbMjXEshQHoGHte6onGI4e/mkO6ZCe8Lng0R5ekOLyIyz0I0obVI7m6Le8FrMCdrmEcHdZHSIia4OU5cVHIoGlGO4LdMewP2PF2GvJy+jw68HGrKWsl1K4FFB8mgg2m63Q95Xt8HXInHXC+Vx/rUFB/SfbhIvsu7NdCbTec7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591892; c=relaxed/simple;
	bh=pRhxwqWOfP7ccaJZFua4lYcw97ERlbtyggpPE/mOZLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TWDkMMOwRh4bmxDeizp0/PivsrwDeGQP5JZR97EwqkFAMm1g41FcvGfptXuB534pP8/s5BRjLRl0bUcY0OyIQf9PX+y2JSYERbuTQcbn1keYeawVQRFcyOIKTtrpyLqV07csTrAj4kW3NHJiJTEKKu8onAsFJbZkt6JcPlJ8Qq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge9pmZYC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041B71F00A3A;
	Thu,  9 Jul 2026 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783591890;
	bh=B2OZqhPNbHPz2NNiIEyBu8B9EXpp87800ccaAr1cLSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ge9pmZYCCrMDIafhqKOcMhWdfl0kOvTMKId4wiFTsyTZSrwq9g9guaBtzXnuHnz/G
	 mCEIGpIfD5Nk6gpDjeCFFBRiFyxn6Kk15wkUECf7SgKVhaqk9oHaqpoP++yt5zkpcA
	 Z6qgZ4iwSfp1Ra36lEkRn2aRGsmusnj4s+aP6Vmx+gp8GjQ9kP3zZjT4wpTNgq6iJd
	 I0JZ8ZWn/yiPxfpAnJedRVQ+twXQ0o8BIxcr+D36tD/k32CC7B9gPFfxnIH3VAN1uw
	 EvvF/2tZCcXh5MBwGbf7loNoB9dfaeUXB6o6Qu/E03m1RWFNqXFMJg91FxCN/yu+0J
	 1yTs5l56Z2CfA==
Date: Thu, 9 Jul 2026 11:11:25 +0100
From: Lee Jones <lee@kernel.org>
To: Lakshay Piplani <lakshay.piplani@nxp.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
	"alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"broonie@kernel.org" <broonie@kernel.org>,
	Frank Li <frank.li@nxp.com>,
	"lgirdwood@gmail.com" <lgirdwood@gmail.com>,
	Vikash Bansal <vikash.bansal@nxp.com>,
	Priyanka Jain <priyanka.jain@nxp.com>,
	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Subject: Re: [EXT] Re: [PATCH v13 3/7] mfd: p3h2x4x: Add driver for NXP
 P3H2x4x i3c hub and on-die regulator
Message-ID: <20260709101125.GE2045740@google.com>
References: <20260701065755.2067793-1-lakshay.piplani@nxp.com>
 <20260701065755.2067793-4-lakshay.piplani@nxp.com>
 <20260708192034.GA1727174@google.com>
 <PAXPR04MB935077516683DD73CADC0FC6FBFE2@PAXPR04MB9350.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB935077516683DD73CADC0FC6FBFE2@PAXPR04MB9350.eurprd04.prod.outlook.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323574-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:linux-kernel@vger.kernel.org,m:linux-i3c@lists.infradead.org,m:alexandre.belloni@bootlin.com,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:broonie@kernel.org,m:frank.li@nxp.com,m:lgirdwood@gmail.com,m:vikash.bansal@nxp.com,m:priyanka.jain@nxp.com,m:aman.kumarpandey@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 141F672F854

On Thu, 09 Jul 2026, Lakshay Piplani wrote:

> > > --- /dev/null
> > > +++ b/drivers/mfd/p3h2840.c
> > > @@ -0,0 +1,126 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright 2025-2026 NXP
> > 
> > Nit: '\n' here.
> > 
> 
> Sure, will remove the extra blank line.

In future, you only need to reply to review comments that you don't
agree with or require more information.  Snip the rest please.

> > > +static const struct regmap_config p3h2x4x_regmap_config = {
> > > +     .reg_bits = P3H2X4X_REG_BITS,
> > > +     .val_bits = P3H2X4X_VAL_BITS,
> > > +     .max_register = 0xFF,
> > > +};
> > > +
> > > +static int p3h2x4x_device_probe_i3c(struct i3c_device *i3cdev)
> > 
> > How many of these are comming down the pipe?
> > 
> > Might be worth expanding drivers/mfd/simple-mfd-i2c.c instead?
> 
> The P3H2x4x MFD supports both I2C and I3C transports. While the I2C path is conceptually similar to simple-mfd-i2c.c,
> the I3C path additionally requires device matching/probing, devm_regmap_init_i3c(), PID/manufacturer validation, and 
> retaining the parent struct i3c_device * for use by the hub child driver. As these requirements are specific to I3C 
> and not handled by the existing simple-MFD helpers, I believe a dedicated MFD driver is the more suitable approach.

Sure.  What I'm saying is; taking into consideration that this device
doesn't do anything useful (beyond generic device registration that
'simple' provides), if there are lots of I3C based devices coming, it
may be more prudent to create an I3C version.

However, it's probably too early to make that call.

> > >  enum i3c_dcr {
> > >       I3C_DCR_GENERIC_DEVICE = 0,
> > > +     I3C_DCR_HUB = 194,
> > 
> > What is this value?
> 
> 194 is the Device Characteristics Register (DCR) value assigned to I3C Hub devices by the MIPI I3C specification.

Is it described in base-10?  Registers are usually described in hex.

-- 
Lee Jones

