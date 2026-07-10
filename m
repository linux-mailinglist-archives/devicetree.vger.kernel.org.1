Return-Path: <devicetree+bounces-324708-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dHCmFnd6UWq0FQMAu9opvQ
	(envelope-from <devicetree+bounces-324708-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:04:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A373C73FB34
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:04:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bxhEhxxj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324708-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324708-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7389C300E714
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B463B3CC313;
	Fri, 10 Jul 2026 23:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F8A2C3257
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 23:04:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783724660; cv=none; b=DSQcpkQgLdZdA0gfGZIctT+PF1BGKFaRuBZgeGHvRV7sAz+1CcTg4J7/AC92knVDK8IwYFXEHm75DaYFBlUKJgpyifxF8GZ9qTeijHXytONDFYpAi6rzhEqrCWGblgFLZ/h2N5b5RWQAVpZvKkgsrl4UtErkMTHuJ5u1WMkd/Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783724660; c=relaxed/simple;
	bh=CinSyIaGV5EaSPqXG6OkjA6YQin24ox/ppVZAJ0PvpI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WYHChxnKjBVdlRHacO+Odlh8i5J2c9XSh4PQvlgJAypOFh9hkvteYdO/6bm58LYFKiUWl9GxJHRRrH6o/x3ZcB2v27lN7eJx2y5WJNNiAy3Adzgw5Uz4EjxyEa9gwMBNl6U8+swxaGoDU/ZS7MYiposE57s13Su7auN82LA8dpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxhEhxxj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12E3B1F000E9;
	Fri, 10 Jul 2026 23:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783724659;
	bh=JKcG9Z9tLmRz+JzofZOuSpNYNEc8AzQBQXQBRZvxc7I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bxhEhxxj0IH4uy9FMCdCpYvv2fgsBGylw1S0FTGdnaMlZjbapg+Q1efxhoH6QP408
	 QVrQ8YeL0GNROZtRXp+dH74Psj5QCbabNqvJfqRAKDmeimv2Zq13l8FLzcxYThAcjk
	 bYC56h6PggxPNycGRkqZoIBRuCbOhMrcKij3rM18pJzT45XeW8WIxjc3oL6gDAEv70
	 mHvjJEN0rnAPT0AXIW5ZIxKR0ayAtMZAWo90qHC+GJ8IlHp89qhJ7TH7YFvDwUMvBr
	 8cBrJe8rwbqqr6QlwJDLAq+8qWRvSgSbaw4nftOMBSF4R6wpqdFW7vLmPc+k3K4feA
	 tcWgQ4I/8YNyw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/8] iio: adc: ti-ads112c14: implement gain on
 internal short SYS_MON channel
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?RGF2aWQgTGVjaG5lciAoVEkp?= <dlechner@baylibre.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-7-746d52cbf1d0@baylibre.com>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-7-746d52cbf1d0@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 23:04:18 +0000
Message-Id: <20260710230419.12E3B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324708-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A373C73FB34

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `read_avail` callback incorrectly casts a native `s64` array=
 to `const int *` for the IIO core, which corrupts scale values on big-endi=
an architectures.
--

--- Patch [7]: [PATCH v3 7/8] iio: adc: ti-ads112c14: implement gain on int=
ernal short SYS_MON channel ---
commit 6c0e6ddc837dab31f5440831baff3fcb1a43f658
Author: David Lechner (TI) <dlechner@baylibre.com>

iio: adc: ti-ads112c14: implement gain on internal short SYS_MON channel

This commit implements support for the programmable gain amplifier on the
internal short SYS_MON channel. The scale_available table is populated
during probe to allow the PGA to be set to the same gain as external
channels.

> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c1=
4.c
> index 4d2e7d37be829..2ce4411a0d86f 100644
> --- a/drivers/iio/adc/ti-ads112c14.c
> +++ b/drivers/iio/adc/ti-ads112c14.c
[ ... ]
> @@ -402,6 +430,69 @@ static int ads112c14_read_raw(struct iio_dev *indio_=
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
> +	if (chan->channel =3D=3D ADS112C14_SYS_MON_CHANNEL_SHORT) {
> +		*vals =3D (const int *)data->sys_mon_chan_short_scale_available;
> +		*length =3D 2 * ARRAY_SIZE(data->sys_mon_chan_short_scale_available);
> +		*type =3D IIO_VAL_DECIMAL64_PICO;

[Severity: Medium]
Does casting a native s64 array to a const int pointer corrupt the scale
values on big-endian architectures?

When the IIO core processes these values as 32-bit pairs, vals[0] becomes
the most significant 32 bits and vals[1] the least significant on big-endian
systems. If the core later composes this via iio_val_s64_compose(vals[0],
vals[1]), the halves will be swapped, resulting in a mangled 64-bit scale
value.

Should the driver explicitly decompose the 64-bit values into an integer
array before handing them to the IIO core to avoid endianness issues?

> +		return IIO_AVAIL_LIST;
> +	}
> +
> +	return -EINVAL;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-iio-adc-ti=
-ads122c14-v3-0-746d52cbf1d0@baylibre.com?part=3D7

