Return-Path: <devicetree+bounces-259417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LeODfI6d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:59:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB1586504
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D73973001CCA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64DF832D7F3;
	Mon, 26 Jan 2026 09:54:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA07303A1D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421271; cv=none; b=nN1PkzBmOBJRpXIeMraMc7BT8Z6zV52TATPhwnA6TJBOrczFyDkefJPs45MdTUCDMpWwbhsaEJKUidvDtJNOr0hdBL2EcGrlMM80dghI7NTM2cNY0Bvlsm18Rvx3hVbIkrvrRPH0sdt+Gn1yw/eZaMTK5anKxWvzFzBmucGBplw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421271; c=relaxed/simple;
	bh=XJgEyDrt9RXr9PCSjP5T5g9s+edYYN1rV7UfyY57nRU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H329Tm5VT+3J2bp6Puj5YsemZRr1aPwc1WfZ3GBseV+dnoWfIRsNKoW58kvUGJdTwKTIoVm8ZEQXFrcipuC0voN1iyksXJIPM9syM5ka7NJCjBcYjE02BC5lHhGB6+ePvhgbXN/xaoeo8UJ3jGlLNCm1IHHqsdnp/Rrk8zyySEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vkJIi-0003xn-8v; Mon, 26 Jan 2026 10:54:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vkJIi-002Yjr-0r;
	Mon, 26 Jan 2026 10:54:27 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vkJIh-00GVqU-1a;
	Mon, 26 Jan 2026 10:54:27 +0100
Date: Mon, 26 Jan 2026 10:54:27 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, kernel@pengutronix.de,
	David Jander <david@protonic.nl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>
Subject: Re: [PATCH v1 2/8] dt-bindings: iio: dac: maxim,ds4424: add
 maxim,rfs-ohms property
Message-ID: <aXc50xgca4-BDYVq@pengutronix.de>
References: <20260119182424.1660601-1-o.rempel@pengutronix.de>
 <20260119182424.1660601-3-o.rempel@pengutronix.de>
 <20260119-turbine-feminize-9dcd5c86feec@spud>
 <20260123092819.6ae81211@jic23-huawei>
 <aXNHeq9Fi1Ldf-oE@pengutronix.de>
 <20260125102207.37ce3501@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260125102207.37ce3501@jic23-huawei>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-259417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,pengutronix.de:url,pengutronix.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ECB1586504
X-Rspamd-Action: no action

On Sun, Jan 25, 2026 at 10:22:07AM +0000, Jonathan Cameron wrote:
> On Fri, 23 Jan 2026 11:03:38 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> > On Fri, Jan 23, 2026 at 09:28:19AM +0000, Jonathan Cameron wrote:
> > > On Mon, 19 Jan 2026 18:27:52 +0000
> > > Conor Dooley <conor@kernel.org> wrote:
> > >   
> > > > On Mon, Jan 19, 2026 at 07:24:18PM +0100, Oleksij Rempel wrote:  
> > > > > Introduce the 'maxim,rfs-ohms' property. The full-scale output current
> > > > > of these DACs is determined by external resistors (Rfs) connected to
> > > > > the FS pins. The driver requires the physical resistance values to
> > > > > calculate the correct current scale (Amps per step) for the IIO
> > > > > subsystem.
> > > > > 
> > > > > Keep it optional to avoid forcing updates of existing DTs; without it
> > > > > the driver cannot derive a correct IIO scale.    
> > > > 
> > > > I don't really follow the logic here, if the driver doesn't work
> > > > properly without it, shouldn't it be a required property even if that
> > > > means existing devicetrees get new warnings? Warnings are preferable to
> > > > the drivers malfunctioning on those devices, after all!  
> > > 
> > > Agreed. The driver can paper over holes or I guess we could provide a default
> > > if the datasheet has some reference value or similar?    
> > 
> > No, this DAC controls the current. The current range is application specific and
> > defined by the load resistors. Is it better to not provide scale if this
> > information not available, guessing it will make things worse and
> > potentially damage some HW.
> > 
> Then does this need to be a fix on the driver side?
> Or are you just suggesting not proving the scale if we don't have enough info?
> That's fine if so.

I suggest to not provide scale if we don't have enough info. It will be
disabled in the driver if maxim,rfs-ohms is not provided in the DT.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

