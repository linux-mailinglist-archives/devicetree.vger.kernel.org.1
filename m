Return-Path: <devicetree+bounces-312203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LAWqJDN5MGrATQUAu9opvQ
	(envelope-from <devicetree+bounces-312203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:14:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 376D568A4E0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:14:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KB9O1qR9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312203-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312203-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 86E52300E14B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 22:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 938BB3B71D3;
	Mon, 15 Jun 2026 22:14:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2783B6C00
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 22:14:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781561646; cv=none; b=Nqu0DfOZi4n8tCItesjihtYymNDi+TUDI631JNFEuNyFDa18D2j4JLO2dh5WVgn8c4WvZ4kCLgrfdIdWK0gDSkiFjufRfNfy8ZF5hawSIkHN6J4LZcs7GxHuhHG+HwNgqP99zjCaB7DW+NB1fogf28LSPXtimAlPoiW7D7CHBVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781561646; c=relaxed/simple;
	bh=tDSMG3QbHQoWEaY3gYIJhc3kSLpbD0nQMfDopU6rusM=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oDfiuogH2e6OQlTZS8IIAGclhdY0/j2ZsnOGEbc2ibery84c02QUumxqEipBetjZUDbAjqheL34QDw/xZIj/7ATqGUqScX9ihy4bQkFp7HbqRR33uKgPXycsTHThN6f0zZOriBZvN3fAzuXbqPQbjMZgMH59E5SbFjUgzg4KobQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KB9O1qR9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47FE11F00A3A;
	Mon, 15 Jun 2026 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781561645;
	bh=K/3ijxRtuedSV0omp1laLkZpIWToda+9mhBszgX1Ylk=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=KB9O1qR9kNseoBTpl26TxGGHfny+CdfzdfzzDUFxcgJ3yU63Pxuy4KYEG8m/Ydraw
	 FyjkE9uBlYTrJDzMjJ7a1OFvvYdhA2uu2j41EFOAmNs0XtLc4Hx83kIsGuLu5rpNjc
	 mhG+sMXLd5bapkmfwYs3cEPRwG7X3tHwDmWkWunS2G3tB4e5xoWtPTdbLBmPUZ3VoJ
	 lcuf45O+BrxtSNBaDFdCKJybeh3JoUo0FHBlev7BvtqxF+zgKmCrMrREWJjUPMdwKT
	 VP/FOMhNi9T3yPF79HT+2/UsJZRiRD4qg79LNnMHhlqXJZzKcj+Cb1bb02OHX8lP4g
	 NV34mr83C8SKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] iio: adc: ti-ads112c14: implement gain on internal
 short SYS_MON channel
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615-iio-adc-ti-ads122c14-v1-3-e6bdadf7cb2b@baylibre.com>
References: <20260615-iio-adc-ti-ads122c14-v1-3-e6bdadf7cb2b@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 22:14:04 +0000
Message-Id: <20260615221405.47FE11F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312203-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 376D568A4E0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `write_raw` and `read_avail` IIO callbacks completely ignore t=
he `long mask` argument.
- [Medium] Data race when reading `sys_mon_chan_short_gain_val` without loc=
king or READ_ONCE().
--

commit 7a8163396f906f80891d134c7fb8faa25cc0a10a
Author: David Lechner (TI) <dlechner@baylibre.com>

iio: adc: ti-ads112c14: implement gain on internal short SYS_MON channel
   =20
Implement support for the programmable gain amplifier on the internal
short SYS_MON channel. This channel is used for calibration, so it is
useful to be able to set the PGA to the same gain as the external
channels. The gain setting is implemented via the _scale attribute.

> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c1=
4.c
> index 97097ae2a4872..202a449b4234f 100644
> --- a/drivers/iio/adc/ti-ads112c14.c
> +++ b/drivers/iio/adc/ti-ads112c14.c
[ ... ]
> @@ -366,6 +395,17 @@ static int ads112c14_read_raw(struct iio_dev *indio_=
dev,
>  			return IIO_VAL_FRACTIONAL_LOG2;
>  		}
> =20
> +		if (chan->channel =3D=3D ADS112C14_SYS_MON_CHANNEL_SHORT) {
> +			int *scale_avail =3D data->sys_mon_chan_short_scale_available[
> +				data->sys_mon_chan_short_gain_val
> +			];

[Severity: Medium]
Is there a potential data race when reading data->sys_mon_chan_short_gain_v=
al
here?

This value is modified in ads112c14_write_raw() while holding the direct mo=
de
lock, but it appears to be read here without locking or READ_ONCE(). Could a
concurrent sysfs write cause an issue while looking up the scale available
array?

> +
> +			*val =3D scale_avail[0];
> +			*val2 =3D scale_avail[1];
> +
> +			return IIO_VAL_INT_PLUS_NANO;
> +		}
> +
>  		*val =3D vref_uV / (MICRO / MILLI);
>  		/*
>  		 * Last 3 SYS_MON channels (ext ref, AVDD, DVDD) need to be
> @@ -387,6 +427,61 @@ static int ads112c14_read_raw(struct iio_dev *indio_=
dev,
>  	}
>  }
> =20
> +static int ads112c14_read_avail(struct iio_dev *indio_dev,
> +				const struct iio_chan_spec *chan, const int **vals,
> +				int *type, int *length, long mask)
> +{
> +	struct ads112c14_data *data =3D iio_priv(indio_dev);
> +
> +	switch (chan->channel) {
> +	case ADS112C14_SYS_MON_CHANNEL_SHORT:
> +		*vals =3D (const int *)data->sys_mon_chan_short_scale_available;
> +		*length =3D 2 * ARRAY_SIZE(data->sys_mon_chan_short_scale_available);
> +		*type =3D IIO_VAL_INT_PLUS_NANO;
> +		return IIO_AVAIL_LIST;

[Severity: High]
Does this function need to check the mask parameter?

Currently, it returns the scale availability array unconditionally. If other
_available attributes are queried, this might incorrectly return scale data
for those non-scale queries.

> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int ads112c14_write_raw(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan, int val,
> +			       int val2, long mask)
> +{
> +	struct ads112c14_data *data =3D iio_priv(indio_dev);
> +
> +	switch (chan->channel) {
> +	case ADS112C14_SYS_MON_CHANNEL_SHORT: {
> +		IIO_DEV_ACQUIRE_DIRECT_MODE(indio_dev, claim);
> +		if (IIO_DEV_ACQUIRE_FAILED(claim))
> +			return -EBUSY;

[Severity: High]
Should this function also verify that mask =3D=3D IIO_CHAN_INFO_SCALE?

Since there is no mask check, if the IIO core creates a writable _raw
attribute, any writes to it might be incorrectly interpreted as scale updat=
es.

> +
> +		for (u32 i =3D 0; i < ARRAY_SIZE(data->sys_mon_chan_short_scale_availa=
ble); i++) {
> +			if (val =3D=3D data->sys_mon_chan_short_scale_available[i][0] &&
> +			    val2 =3D=3D data->sys_mon_chan_short_scale_available[i][1]) {
> +				data->sys_mon_chan_short_gain_val =3D i;
> +				return 0;
> +			}
> +		}
> +		return -EINVAL;
> +	}
> +	default:
> +		return -EINVAL;
> +	}
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-iio-adc-ti=
-ads122c14-v1-0-e6bdadf7cb2b@baylibre.com?part=3D3

