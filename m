Return-Path: <devicetree+bounces-261583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEmiC5l8f2nMrwIAu9opvQ
	(envelope-from <devicetree+bounces-261583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 17:17:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BFDC667A
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 17:17:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61FD3300B9D1
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 16:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4979422154B;
	Sun,  1 Feb 2026 16:17:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613AC1BD9C9
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 16:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769962624; cv=none; b=q6LXw2LBNMU5edvxVNniGPEqoYC7Iyar6iMrYPZCPlB7c6+mm/Xo0a4UiFmgfvyvCayc0Ufag4CAJbwvKNgF5aKXfKCJf6UI5iBgLnhMlEkcbEVBufTXNUJ7XewN1D91837LtG+J78GagN6wDgONoznptK0ud6cnNi4BFzkJfFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769962624; c=relaxed/simple;
	bh=BKa8SBN4plHpTsV/Y4RchZt4nx8QkRJkjA0ba5l6Klk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JvoLb+UJcfLPvgJs/LDaT6iwwEnkBz1u83vCNeB9Jq/bJZfq2ZMIQEglhCYtDUZdWxbezHDEgBOwweGrTgWQnY1s8g7bovO6Gg8itkgeRk7LteA7zqNMmP2I4yQG2rAMS9QEMtwCuK7yXTyxYANn67Tj2245x0IBjtFJ+/sSQxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vma86-0003Gr-EC; Sun, 01 Feb 2026 17:16:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vma85-003axm-36;
	Sun, 01 Feb 2026 17:16:53 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vma85-00AMMI-0S;
	Sun, 01 Feb 2026 17:16:53 +0100
Date: Sun, 1 Feb 2026 17:16:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sander Vanheule <sander@svanheule.net>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v2 5/8] iio: dac: ds4424: convert to regmap
Message-ID: <aX98dbnCcFnFY3ks@pengutronix.de>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
 <20260127060939.3914006-6-o.rempel@pengutronix.de>
 <2cfd142fbaad3ddd3b3fb632c77a4e9f58d50f66.camel@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2cfd142fbaad3ddd3b3fb632c77a4e9f58d50f66.camel@svanheule.net>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-261583-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:url,pengutronix.de:mid]
X-Rspamd-Queue-Id: C3BFDC667A
X-Rspamd-Action: no action

Hi Sander,

On Sun, Feb 01, 2026 at 03:42:28PM +0100, Sander Vanheule wrote:
> Hi Oleksij,
> 
> On Tue, 2026-01-27 at 07:09 +0100, Oleksij Rempel wrote:
> > Refactor the driver to use the regmap API.
> > 
> > Replace the driver-specific mutex and manual shadow buffers with the
> > standard regmap infrastructure for locking and caching.
> > 
> > This ensures the cache is populated from hardware at probe, preventing
> > state desynchronization (e.g. across suspend/resume).
> 
> 
> [...]
> 
> > +static const struct regmap_access_table ds44x4_table = {
> > +	.yes_ranges = ds44x4_ranges,
> > +	.n_yes_ranges = ARRAY_SIZE(ds44x4_ranges),
> > +};
> >  
> > -static int ds4424_set_value(struct iio_dev *indio_dev,
> > -			     int val, struct iio_chan_spec const *chan)
> > +static const struct regmap_config ds44x2_regmap_config = {
> > +	.reg_bits = 8,
> > +	.val_bits = 8,
> > +	.cache_type = REGCACHE_FLAT,
> > +	.max_register = DS4424_DAC_ADDR(1),
> > +	.rd_table = &ds44x2_table,
> > +	.wr_table = &ds44x2_table,
> > +};
> 
> Note that REGCACHE_FLAT will allocate 0xF8 unsigned longs you will never use.
> REGCACHE_MAPLE will probably be much closer to the size of the original value
> cache, for a small look-up performance penalty (but always fast compared to the
> I2C bus).

ACK, already migrated to REGCACHE_MAPLE in the v3:
https://lore.kernel.org/all/20260128153824.3679187-8-o.rempel@pengutronix.de/

Which works mostly fine except of the cache initialisation. If I use
num_reg_defaults_raw with REGCACHE_MAPLE as proposed by Andy
Shevchenko, first access to regmap values over debugfs will explode with
NULL pointer etc...
If I remove num_reg_defaults_raw, I need to read register manually
to init defaul values as implemented in v3.

The REGCACHE_FLAT has one more problem, the cache will be inited with
i2c NACKs (0xFF) if used with num_reg_defaults_raw.

> [...]
> 
> > @@ -163,49 +184,52 @@ static int ds4424_write_raw(struct iio_dev *indio_dev,
> >  
> >  static int ds4424_verify_chip(struct iio_dev *indio_dev)
> >  {
> > -	int ret, val;
> > +	struct ds4424_data *data = iio_priv(indio_dev);
> > +	u8 raw_values[DS4424_MAX_DAC_CHANNELS];
> > +	int ret;
> >  
> > -	ret = ds4424_get_value(indio_dev, &val, 0);
> > -	if (ret < 0)
> > -		dev_err(&indio_dev->dev,
> > -				"%s failed. ret: %d\n", __func__, ret);
> > +	/* Bulk read all channels starting at 0xf8.
> > +	 * This populates the regmap cache with current HW values.
> > +	 */
> > +	ret = regmap_bulk_read(data->regmap, DS4424_DAC_ADDR(0),
> > +			       raw_values, indio_dev->num_channels);
> 
> Are you forcing a HW-to-cache sync for performance?

See response above.

> Previously this function would just read a single value to verify a reply was
> sent, instead of seeding the cache in data->raw, so that's a change in behavior
> (and purpose) of this function, meaning you may want to change the name if you
> keep this.
> 
> You could (should IMHO) use a sparse cache, which is actually aware of its
> content's validity and will transparently access the device on the first access
> to initialize itself. I would recommend REGCACHE_MAPLE as above, but
> REGCACHE_FLAT_S also works. REGCACHE_FLAT is tricky to properly initialize [1],
> and I would not recommend using it in new code.

Ok, thx!

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

