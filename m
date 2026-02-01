Return-Path: <devicetree+bounces-261580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UG2EHapof2nTpwIAu9opvQ
	(envelope-from <devicetree+bounces-261580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 15:52:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAADC63D3
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 15:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BBDBD30015B2
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 14:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E24F217F2E;
	Sun,  1 Feb 2026 14:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="mZzd0JJj"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F7A1EDA0F
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 14:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769957540; cv=none; b=dnVkYtD3EwysIUzmDA1kAgQSDs3vPXDy2lC8ffPGjGEqhEPD3ky8AqAoUEmLuDk0wqM2pAJOQi+uf/fz6/ARJIjw0ID5C9/m3BJKjFEnGJx1//BTUQBGPltILcHayH49TJF0hwZl0uD7usDXcMnytZTeDTi0gT1l+kwaSBfMNjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769957540; c=relaxed/simple;
	bh=oxZg1pCcxd+5X+IhHM7uPFL3qYMyKQzLgWrOukUixYw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=p+OpFi11aqw69kKv4iv81D+g1bwYCciFWYPjKk6lqGo6gKOIThtiLD3+cuseqzblbeMAL785C0TWJIFm6OBfwTV/nkGm163ddAEdFuSJ9O5Gh63AqBzLECZw51EPheeNo/mxKqp799tEPxphI+AhLWEmt7cYh0IfeKS8dUpg/Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=mZzd0JJj; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from [IPv6:2a02:1812:162c:8f00:1e2d:b404:3319:eba8] (2a02-1812-162c-8f00-1e2d-b404-3319-eba8.ip6.access.telenet.be [IPv6:2a02:1812:162c:8f00:1e2d:b404:3319:eba8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 3EA676D6984;
	Sun,  1 Feb 2026 15:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1769956949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07mpGmarH9AZtrI++Xc1c5vyLFX65eBtexnCy0Nx5Bg=;
	b=mZzd0JJjjcPYVP7ewvCS4UOZnzOnQ7j1bl65Ovii2CO3zuXllaATnGVcyso4TU3yD5RH1u
	g+mvSgT0Ty2KzDqmwrdQJdhEKDz7u0SvOPmoOhktBdQz/04LphNbVd9XEFxpQ30O6xS/v9
	PdPw8ogLaAsUoWGvOl74IPN4ExF2c56fp+JGUwUPPv5h9+A7wFzVEkTUB6Q0EbJwSS9EQS
	ljiKo4t52NyABs6/0ZJTDea73wKrKIt4FB3tSHLvYjKsGX2xdEgz1JzlaKBuL23P2iMg1s
	MzsebOz7ioFrw6s4/kbSbKUxNenFJGNhslLWS2Ww+RUWH8oabEndvuShVxnsCA==
Message-ID: <2cfd142fbaad3ddd3b3fb632c77a4e9f58d50f66.camel@svanheule.net>
Subject: Re: [PATCH v2 5/8] iio: dac: ds4424: convert to regmap
From: Sander Vanheule <sander@svanheule.net>
To: Oleksij Rempel <o.rempel@pengutronix.de>, Jonathan Cameron
	 <jic23@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Andy Shevchenko
	 <andy@kernel.org>, David Lechner <dlechner@baylibre.com>, Nuno
 =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>, David Jander <david@protonic.nl>
Date: Sun, 01 Feb 2026 15:42:28 +0100
In-Reply-To: <20260127060939.3914006-6-o.rempel@pengutronix.de>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
	 <20260127060939.3914006-6-o.rempel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[svanheule.net,none];
	R_DKIM_ALLOW(-0.20)[svanheule.net:s=mail1707];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261580-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sander@svanheule.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[svanheule.net:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EEAADC63D3
X-Rspamd-Action: no action

Hi Oleksij,

On Tue, 2026-01-27 at 07:09 +0100, Oleksij Rempel wrote:
> Refactor the driver to use the regmap API.
>=20
> Replace the driver-specific mutex and manual shadow buffers with the
> standard regmap infrastructure for locking and caching.
>=20
> This ensures the cache is populated from hardware at probe, preventing
> state desynchronization (e.g. across suspend/resume).


[...]

> +static const struct regmap_access_table ds44x4_table =3D {
> +	.yes_ranges =3D ds44x4_ranges,
> +	.n_yes_ranges =3D ARRAY_SIZE(ds44x4_ranges),
> +};
> =C2=A0
> -static int ds4424_set_value(struct iio_dev *indio_dev,
> -			=C2=A0=C2=A0=C2=A0=C2=A0 int val, struct iio_chan_spec const *chan)
> +static const struct regmap_config ds44x2_regmap_config =3D {
> +	.reg_bits =3D 8,
> +	.val_bits =3D 8,
> +	.cache_type =3D REGCACHE_FLAT,
> +	.max_register =3D DS4424_DAC_ADDR(1),
> +	.rd_table =3D &ds44x2_table,
> +	.wr_table =3D &ds44x2_table,
> +};

Note that REGCACHE_FLAT will allocate 0xF8 unsigned longs you will never us=
e.
REGCACHE_MAPLE will probably be much closer to the size of the original val=
ue
cache, for a small look-up performance penalty (but always fast compared to=
 the
I2C bus).

[...]

> @@ -163,49 +184,52 @@ static int ds4424_write_raw(struct iio_dev *indio_d=
ev,
> =C2=A0
> =C2=A0static int ds4424_verify_chip(struct iio_dev *indio_dev)
> =C2=A0{
> -	int ret, val;
> +	struct ds4424_data *data =3D iio_priv(indio_dev);
> +	u8 raw_values[DS4424_MAX_DAC_CHANNELS];
> +	int ret;
> =C2=A0
> -	ret =3D ds4424_get_value(indio_dev, &val, 0);
> -	if (ret < 0)
> -		dev_err(&indio_dev->dev,
> -				"%s failed. ret: %d\n", __func__, ret);
> +	/* Bulk read all channels starting at 0xf8.
> +	 * This populates the regmap cache with current HW values.
> +	 */
> +	ret =3D regmap_bulk_read(data->regmap, DS4424_DAC_ADDR(0),
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raw_values, indio_dev->num_chann=
els);

Are you forcing a HW-to-cache sync for performance?

Previously this function would just read a single value to verify a reply w=
as
sent, instead of seeding the cache in data->raw, so that's a change in beha=
vior
(and purpose) of this function, meaning you may want to change the name if =
you
keep this.

You could (should IMHO) use a sparse cache, which is actually aware of its
content's validity and will transparently access the device on the first ac=
cess
to initialize itself. I would recommend REGCACHE_MAPLE as above, but
REGCACHE_FLAT_S also works. REGCACHE_FLAT is tricky to properly initialize =
[1],
and I would not recommend using it in new code.

Using a single regmap_read() here (as ds4424_get_value() before) with a spa=
rse
cache would result in an error if there was a bus error, giving you the
verification behavior again.

[1] https://patch.msgid.link/20251023135032.229511-1-sander@svanheule.net/

Best,
Sander

