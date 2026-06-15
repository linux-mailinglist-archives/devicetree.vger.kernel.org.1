Return-Path: <devicetree+bounces-312159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dspcIIE+MGpvQQUAu9opvQ
	(envelope-from <devicetree+bounces-312159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 20:03:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA7F689099
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 20:03:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cExNXiGT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312159-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312159-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A4A93010393
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4743E19F11B;
	Mon, 15 Jun 2026 18:03:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B2171CD
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 18:03:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781546622; cv=none; b=KSf4IFu+yxQJ1YeO8uAnivL4F/N8E119HgqRfZbiR9ZnvwRAXDEtpYQvcnNX1wHSlLtuL8MphdPbC5XOk971eQjZ8zeWDmmDXavzw4EBEer6CRf3eX7wcakPqmi8bQmQwLGBLy9TAlq82zZ6A/S9aNkb30vz/blHZezIUfL0Zr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781546622; c=relaxed/simple;
	bh=bISlzmMlOzxkjlStoCAkdxQ3hVhVIp/OJ64du6O2lqQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Pa2w9vQteDiTme0TpWf8hJSoAxNbbUAdh5XWVl3uO9vL/ezx+aF2qu6nWm0bL+HIWQYdutlIYF/JuIbNbRHjITsHPxCzANHMIPNHhaCRDFwLn1EWFmhJVqCPjPMVIeg+ZfEGaaY4S2PAEsidP0BOROzmjGPHpDsjjMijou0yISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cExNXiGT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 939F81F000E9;
	Mon, 15 Jun 2026 18:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781546620;
	bh=41gWiUfa5VNOqCDyX2NbQKDSbkFOM8rBen+FAIweBX8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cExNXiGTLh4kSXjRsCJkKTiOavHt+ETH+4PInIYOoQD7THo1w2X2ulqwPx+5wyuOu
	 cSx+Ewl1DCJEEUUY3xtmcaGax9lamkS5z/PrDGO9Nf1RCXYd/bICFZ3Tw2UzfoveIU
	 9MYBFzjAGz3OD80rLaJjzAZkZ04YYXBxhVHtlrrDarBxFIGAmFYy0ifaLSt4e5zW6T
	 trLzsqeP4ks6iBgMTnuXz50GvETTmhrDQOFxXrW0bi6SDa2YwwRkVwJoAGG6HjWFes
	 yrA3qZobYqZxsROUqV1aHX5a2IzcjhlbDdgGepaq5BAIOU+0hrCrFExANRa546WLMX
	 1HfqTOIH5zPag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V13 8/9] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260615172554.160910-9-macroalpha82@gmail.com>
References: <20260615172554.160910-9-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 18:03:40 +0000
Message-Id: <20260615180340.939F81F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312159-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDA7F689099

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The gyro sensor state is not reverted after a raw read, causing =
it to remain permanently enabled during all future active PM states.
--

commit 608315b9e755ed3de8730d6f1fc3e2dc0c68b7a5
Author: Chris Morgan <macromorgan@hotmail.com>

iio: imu: inv_icm42607: Add Gyroscope to icm42607

This commit adds gyroscope functions and IIO device registration to the
icm42607 driver.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c b/drivers/i=
io/imu/inv_icm42607/inv_icm42607_gyro.c
> new file mode 100644
> index 0000000000000..ef73560b39d73
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c

[ ... ]

> +static int inv_icm42607_gyro_read_sensor(struct iio_dev *indio_dev,
> +					 struct iio_chan_spec const *chan,
> +					 s16 *val)
> +{
> +	struct inv_icm42607_sensor_conf conf =3D INV_ICM42607_SENSOR_CONF_INIT;
> +	struct inv_icm42607_state *st =3D iio_device_get_drvdata(indio_dev);
> +	struct inv_icm42607_sensor_state *gyro_st =3D iio_priv(indio_dev);
> +	struct device *dev =3D regmap_get_device(st->map);
> +	unsigned int reg;
> +	u8 data[2];
> +	int ret;

[ ... ]

> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	ret =3D PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	/* enable gyro sensor */
> +	conf.mode =3D gyro_st->power_mode;
> +	conf.filter =3D gyro_st->filter;
> +	ret =3D inv_icm42607_set_gyro_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	/* read gyro register data */
> +	ret =3D regmap_bulk_read(st->map, reg, data, sizeof(data));
> +	if (ret)
> +		return ret;
> +
> +	*val =3D get_unaligned_be16(data);
> +	if (*val =3D=3D INV_ICM42607_DATA_INVALID)
> +		return -EINVAL;
> +
> +	return 0;
> +}

[Severity: Medium]
Does this leave the gyroscope permanently enabled after a raw read?

The function enables the gyro by setting conf.mode =3D gyro_st->power_mode
and calling inv_icm42607_set_gyro_conf(), but does not appear to revert it
to an off state before returning.=20

When the device later autosuspends, inv_icm42607_runtime_suspend() saves th=
is
active state into st->suspended.gyro. On every subsequent PM resume,
inv_icm42607_runtime_resume() will restore the gyro to ON.

Could this cause an unnecessary 45ms startup delay and waste power during a=
ll
future active PM states?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615172554.1609=
10-1-macroalpha82@gmail.com?part=3D8

