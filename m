Return-Path: <devicetree+bounces-258863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPAuJPNIc2mHuQAAu9opvQ
	(envelope-from <devicetree+bounces-258863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:09:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B78F73F81
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:09:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3EDA43014A28
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C321736607A;
	Fri, 23 Jan 2026 10:04:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB8366547
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 10:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769162641; cv=none; b=c43u4J1Pq7aFyY+bNHEJcUsJ5i3aUn2VfYieiJsyhKWgNhCUAN5g3mfzUvrH/w6lqZcY1bFqZRH2bdX7J3s0/GUI/2p6Kuni8mGTGIDRO8sTEBxfkqCP/qTazpq/VEgXJfSdZbtUvHOhODHZMMcRrqXWwOFQcVqxBcF6u7qw6M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769162641; c=relaxed/simple;
	bh=9d3cVU+Sh2WWeMGTwT1O9VmL80KThVzljYfG9O63cQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HBTQnsPs4yWupqCIXTkJTXys6cNjxbHBFcwRfDVmNysNtyR3nqXqNR1SLOkbqsyWWeZbQCczuq66V4qtNEER6ILolhTDjFHX69W3sWZ9DTKGaowFiKqgrdxnZg/DYQRIkXxV80pVBi88ciJIZxnCOVv91NhpLXRkuap8PVh8DAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vjE0x-0003Pg-3s; Fri, 23 Jan 2026 11:03:39 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vjE0w-0024R8-33;
	Fri, 23 Jan 2026 11:03:38 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vjE0w-00Atlx-0Y;
	Fri, 23 Jan 2026 11:03:38 +0100
Date: Fri, 23 Jan 2026 11:03:38 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v1 2/8] dt-bindings: iio: dac: maxim,ds4424: add
 maxim,rfs-ohms property
Message-ID: <aXNHeq9Fi1Ldf-oE@pengutronix.de>
References: <20260119182424.1660601-1-o.rempel@pengutronix.de>
 <20260119182424.1660601-3-o.rempel@pengutronix.de>
 <20260119-turbine-feminize-9dcd5c86feec@spud>
 <20260123092819.6ae81211@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260123092819.6ae81211@jic23-huawei>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-258863-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:url,pengutronix.de:mid]
X-Rspamd-Queue-Id: 1B78F73F81
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 09:28:19AM +0000, Jonathan Cameron wrote:
> On Mon, 19 Jan 2026 18:27:52 +0000
> Conor Dooley <conor@kernel.org> wrote:
> 
> > On Mon, Jan 19, 2026 at 07:24:18PM +0100, Oleksij Rempel wrote:
> > > Introduce the 'maxim,rfs-ohms' property. The full-scale output current
> > > of these DACs is determined by external resistors (Rfs) connected to
> > > the FS pins. The driver requires the physical resistance values to
> > > calculate the correct current scale (Amps per step) for the IIO
> > > subsystem.
> > > 
> > > Keep it optional to avoid forcing updates of existing DTs; without it
> > > the driver cannot derive a correct IIO scale.  
> > 
> > I don't really follow the logic here, if the driver doesn't work
> > properly without it, shouldn't it be a required property even if that
> > means existing devicetrees get new warnings? Warnings are preferable to
> > the drivers malfunctioning on those devices, after all!
> 
> Agreed. The driver can paper over holes or I guess we could provide a default
> if the datasheet has some reference value or similar?  

No, this DAC controls the current. The current range is application specific and
defined by the load resistors. Is it better to not provide scale if this
information not available, guessing it will make things worse and
potentially damage some HW.

> DT binding should require it.

ACK
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

