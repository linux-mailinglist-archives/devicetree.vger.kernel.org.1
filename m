Return-Path: <devicetree+bounces-323117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id plWhKIWfTmq8QwIAu9opvQ
	(envelope-from <devicetree+bounces-323117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 21:05:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D3A729C7A
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 21:05:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=tPpm5cJQ;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323117-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323117-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3D023033727
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 19:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8033D16FB;
	Wed,  8 Jul 2026 19:05:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1CA379C3E
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 19:05:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783537535; cv=none; b=AJdTTcwOJspf6g/E4SYtrjz211K+i+l8qgDx7KEq08ZJh+NEN4WhVukyf7TqcpbGGOxOdLw1F+GX84oB2VFGomX8X2Dwt/04enHdg2FGHjZy2wvP5sEiG48FD0xr+vpTLoQwkmCwik3hQnsDtQYsY+mHl9aMHuWEh6Np697qWX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783537535; c=relaxed/simple;
	bh=Z8Yz9PKa7uFBWQo8Ur5SwLO33rz2LIemEl2lFmYjXMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NPxmFMXRRVBx12eEVpnSGdgkzHIe7mATvxDLu48WDomjQZw8IAE7ToJp05UbzPrTA16xJPkDd0Mhz1zKbZC5hJmp0olWesOdcaHabfuJDXjZ3khF+HALY41Te4zFzY2hRGMupSXV1xXcdDl0VMtWKoMrK6EiZwFaYnzfH5hEChk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=tPpm5cJQ; arc=none smtp.client-ip=91.218.175.181
Date: Thu, 9 Jul 2026 01:04:41 +0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1783537521;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=56W/VFUwknXNliD4iRNfvqsZnF1lfz6PNsFALT4S+Ss=;
	b=tPpm5cJQ9fSbbSzx4HMJOU0eijyxCSlk687BAxtBKlGrFXPNYns4ZlHAAaM/nOK4fEuKRo
	c98R/OR4MpJM4WJkfyJwE3mGMviZyiMGfh8y0G26rr8obr6xNm5A6ErLBcfKQZENYnRpFO
	iKKkTjQpU4o35PMm9FAdGhbdLGii0oM=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Siratul Islam <siratul.islam@linux.dev>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lukas Metz <lukas.metz@gmx.net>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: dac: dac8163: Add driver for DAC8163
Message-ID: <ak6eihbwmVyd6JBu@fedora>
References: <20260708-dac8163-work-v2-0-3acd1bf20182@gmx.net>
 <20260708-dac8163-work-v2-2-3acd1bf20182@gmx.net>
 <e84c4e047e104cca9b88dda791997ceecba1204c.camel@linux.dev>
 <20260708183359.495c4b65@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260708183359.495c4b65@jic23-huawei>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323117-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:lukas.metz@gmx.net,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmx.net,baylibre.com,analog.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1D3A729C7A

On 26/07/08 06:33PM, Jonathan Cameron wrote:
> 
> > > +
> > > +#include <linux/array_size.h>
> > > +#include <linux/bitfield.h>
> > > +#include <linux/bits.h>
> > > +#include <linux/err.h>
> > > +#include <linux/errno.h>
> > > +#include <linux/gpio/consumer.h>
> > > +#include <linux/mod_devicetable.h>  
> > I asked you to add this "mod_devicetable.h" header previously. But I noticed some reviews by Uwe 
> > to use more specific headers. 
> > In your case these should be 
> > 
> > 
> > #include <linux/device-id/spi.h>
> > #include <linux/device-id/of.h>
> > 
> Not necessary given they are guaranteed to be include by the bus headers.
> 
> Take a look at what Uwe did in his series.  The actual device-id headers
> are added to very few drivers - mostly the bus ones are enough.
> 
> Jonathan

Thanks for the clarification. I should have investigated more instead of
following half the story.

--
Best regards,
Sirat

