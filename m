Return-Path: <devicetree+bounces-320485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6zvcGgI2SWohzQAAu9opvQ
	(envelope-from <devicetree+bounces-320485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 18:34:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD46707F3A
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 18:34:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=I4CFr7Ew;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320485-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320485-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50F8C302A6B8
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 16:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88ED357CF4;
	Sat,  4 Jul 2026 16:33:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36783218592
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 16:33:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783182788; cv=none; b=roHb47pDz60p0BvM+iRzYdor/2YIoJJws59Nfs8Ype7fvcQZocY/BRKTV6bEp4Bk7xnOTG4USaAyaFLuiCsECu5bBuWSWGRcYv8yLlBSfW0+jX/v/K3LlUToBemoytVDRxYThI9Obl76RMh8iSzxaneJCbLzU8YfUbDi28xg414=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783182788; c=relaxed/simple;
	bh=4tmr1O353vSNTqg3JPl1/o9SzWS9KghYr4cMOTijy90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PMVL/f6eoi6kmEBbWH5KzBCMXf7NLLOWvFBWfv1ISgnvEfp9JrXIGWFU0r1pzXFSY+XZBfC3dkDJ+Tq1rgSI6nFDxIGfM43aSKHv1vxkxJ2CuklNq/RsNqhsx1oblhi+dsv3jY5xiqlQwzi9WxZalewAPpZwElndPWZLI2qRkks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=I4CFr7Ew; arc=none smtp.client-ip=95.215.58.171
Date: Sat, 4 Jul 2026 22:32:32 +0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1783182774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tXhR3huF5EFvclvlq2E1gNCb4oDZJeczjrBzv4+4Oa0=;
	b=I4CFr7Ew2dSTEL+GMRtSg0KZvvXQQpsjUf/GNX0N4rrOVnA7K6YDbeOfg8IhlBJGG6fjRu
	jtmav8I3McK7rM0APitD37vqCNKgrNCjrHmGJygbTxkWJ2GCwe5qGKiojGfr83pv6B0+v9
	urIs4hJ+yDN6D0K5q1iCZVS/ShJBAic=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Siratul Islam <siratul.islam@linux.dev>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Stefan Popa <stefan.popa@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ciprian Hegbeli <ciprian.hegbeli@analog.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
Message-ID: <akkwWxCf10rfThMk@fedora>
References: <20260703102941.1141341-1-stefan.popa@analog.com>
 <20260703102941.1141341-3-stefan.popa@analog.com>
 <9878f042f424bfbd7fab24175298224b58e87779.camel@linux.dev>
 <akj3Ay8mwemRj-9U@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <akj3Ay8mwemRj-9U@ashevche-desk.local>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:stefan.popa@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320485-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linux.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,fedora:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:from_mime,linux.dev:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCD46707F3A

On 26/07/04 03:05PM, Andy Shevchenko wrote:
> On Sat, Jul 04, 2026 at 01:42:39AM +0600, Siratul Islam wrote:
> > On Fri, 2026-07-03 at 13:29 +0300, Stefan Popa wrote:
> 
> ...
> 
> > > +#define MAX40080_REG_CFG		0x00
> > > +#define  MAX40080_MODE_MSK		GENMASK(2, 0)
> > > +#define  MAX40080_PEC_EN_MSK		BIT(5)
> > > +#define  MAX40080_RANGE_MSK		BIT(6)
> > > +#define  MAX40080_FILTER_MSK		GENMASK(14, 12)
> > Should be one space after #define, like the first one.
> 
> I saw this but left uncommented as sometimes people use this style to
> distinguish bit field definitions from the register offsets. When one space is
> in use it might be not so easy to put the borders. I.o.w. I have no
> strong opinion on this style, but if you think we should be all the same for
> all IIO drivers here, I'm fine.
I looked at existing drivers and most of them had one space so I thought
it would be better to keep them consistent. But apparently, as David
also noted, this style is acceptable. So no problem for me.
> 
> 
...
> > > +/* CFG.mode field */
> > > +#define MAX40080_STDBY_MODE		0x00
> > > +#define MAX40080_SINGLE_MODE		0x02	/* one conversion per Quick Command */
> 
> ...
> 
> > This can fit in 1 line.
> > static int max40080_update_bits(struct max40080_state *st, u8 reg, u16 mask, u16 val)
> 
> 
> Here...
Keeping this function single line results in 86 cols, which is just a
little more than 80. So I thought splitting here was avoidable. But if
you think it's an acceptable split then so be it.
> 
> ...
> 
> > > +	ret = i2c_smbus_read_i2c_block_data(st->client, MAX40080_REG_IV,
> > > +					    sizeof(buf), buf);
> > This also fits in 1 line but it would go 92 cols, so not sure which one is preferred.
> 
> ...and here the wrap is done on logical border, so I think it's fine and reads
> well.
This one might be pushing too far so I had my doubts.
> 
> ...
> 
> > > +static int max40080_get_range(struct max40080_state *st, unsigned int *range)
> > > +{
> > > +	int tmp;
> > > +
> > > +	tmp = i2c_smbus_read_word_data(st->client, MAX40080_REG_CFG);
> > I think tmp can be initialized, since it is only assigned once.
> 
> I don't get this comment. You mean switching to ret?
> 
I meant tmp is assigned only once so the indirection here, i.e.
declaring and assigning in two steps doesn't buy us anything. Instead,
it could be initialized like "int tmp = i2c_smbus_read_word_data()."
> > > +	if (tmp < 0)
> > > +		return tmp;
> > > +
> > > +	*range = FIELD_GET(MAX40080_RANGE_MSK, tmp);
> > > +
> > > +	return 0;
> > > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

