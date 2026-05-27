Return-Path: <devicetree+bounces-303556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Kr4FFQ3F2os9gcAu9opvQ
	(envelope-from <devicetree+bounces-303556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 20:26:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ABE5E8F7E
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 20:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9771130E044E
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EABEF47277E;
	Wed, 27 May 2026 18:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDnJYjh5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD18147DD45
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 18:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779905987; cv=none; b=kqkjd5Kt9pXpRM7LZPKWomlqDUCE/6KlGCzW9qRvf3cjPBP0Y8VlCm5to4vTxZ0g2n2NTzjNWVix6I15D+pps9sbWk1dssf9o1C4PJOMksyARs9q823MuSM5NCt/MSZGEFupSfz4vgDpF+LAjwPe8E6J2eaCPo+VENcyR7ZPb88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779905987; c=relaxed/simple;
	bh=g8nxRtBva3kBrpgvkFBPd2n8+4qHQQCXAFLbivxEKzA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K4b1TCTfCeT3eIt4FMrJELab4G5nsPzUDomx1c/ob73uXlI+DpqLzehyaD2oh4gIYIuaUtIQwmrgoMZC4bu2zIVSeRCh8qIH5ESNK2I8IazPn7WR77uzkREwHqo5BJwRUBycnFIiEwDcybDzTSDpPGbXDFzUS9MjZqMOMM3dfbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDnJYjh5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EE811F000E9;
	Wed, 27 May 2026 18:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779905986;
	bh=kZ/9j61kkwzW4nLmed1GE6aKLEh2WYVA7xx+dqhYf2M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bDnJYjh5SPoyJICSYyi6UFIGAG4sts1jNd5taQZiAZZJ6aYv1iTJhf+70Ux09uXqo
	 fnzwYOW0WPp9Q09Vubedh9yVhDFVC48pVYgvkCWip5k8jZ2DVm1E3OQBxvSh1lg7WO
	 iGManxd7us8o5fE1nisVUHo1Kijj9tqUIgsssa6Gjl6+tWQCVE0pZtDznArlcr31BU
	 nEJhjO3Yg1pONVh0hmPNy5VJ+hauN8lUuv2TIGAhTbqmyYHXP1s3TF+Gupe3sNK2u1
	 hYeZjbH3leCShwJ4z2uthJOKxbBUtWV7+CANT5HWujAnTe99Yl4K2Kb/EBLLAOpZz/
	 l63KnPPpBXFZg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 03/13] spi: parse two-element spi-max-frequency
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260527175527.2247679-4-s-k6@ti.com>
References: <20260527175527.2247679-4-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 18:19:45 +0000
Message-Id: <20260527181946.6EE811F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303556-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 96ABE5E8F7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Backwards compatibility breakage for unmodified drivers on updated=
 device trees.
- [Low] Inconsistent fallback for malformed device trees with more than two=
 elements in `spi-max-frequency`.
- [Low] The `base_speed_hz` field is missing from `struct spi_board_info` a=
nd is not propagated in `spi_new_device()`.
--

commit 60222d0f7864f9f6bf9e85bd6b2a082b000222bb
Author: Santhosh Kumar K <s-k6@ti.com>

spi: parse two-element spi-max-frequency property

Some SPI controllers support high-speed operating modes that require
controller-side configuration before the device can be driven at its
rated maximum. Extend struct spi_device with a base_speed_hz field and upda=
te
of_spi_parse_dt() to parse a two-element spi-max-frequency property.

> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 104279858f567..cdd864a5c136b 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c

[ ... ]

> @@ -2598,9 +2598,20 @@ static int of_spi_parse_dt(struct spi_controller *=
ctlr, struct spi_device *spi,
>  	 */
>  	spi->cs_index_mask =3D BIT(0);
> =20
> -	/* Device speed */
> -	if (!of_property_read_u32(nc, "spi-max-frequency", &value))
> +	/*
> +	 * Device speed: a single value sets max_speed_hz; two values set
> +	 * base_speed_hz (conservative) and max_speed_hz (maximum after
> +	 * controller-side configuration).
> +	 */
> +	nfreq =3D of_property_count_u32_elems(nc, "spi-max-frequency");
> +	if (nfreq =3D=3D 2) {
> +		of_property_read_u32_index(nc, "spi-max-frequency", 0,
> +					   &spi->base_speed_hz);
> +		of_property_read_u32_index(nc, "spi-max-frequency", 1,
> +					   &spi->max_speed_hz);

[Severity: High]
Will this break backward compatibility for unmodified drivers on updated de=
vice
trees?

If a two-element property is provided, spi->max_speed_hz receives the higher
speed from the second element. Unmodified drivers often leave xfer->speed_hz
as 0 for default transfers, which the SPI core __spi_validate() defaults to
spi->max_speed_hz.

Would this cause the default transfer to be attempted at the high speed bef=
ore
the device is actually configured via PHY tuning, breaking communication?

> +	} else if (!of_property_read_u32(nc, "spi-max-frequency", &value)) {

[Severity: Low]
Does this create an inconsistent fallback for malformed device trees?

If spi-max-frequency has 3 or more elements, the check for nfreq =3D=3D 2 f=
ails
and the code falls through to of_property_read_u32(). This reads the first
element (index 0) into the value variable, which then gets assigned to
spi->max_speed_hz.

This means if nfreq =3D=3D 2, max_speed_hz gets index 1, but if nfreq > 2, =
it gets
index 0 instead.

>  		spi->max_speed_hz =3D value;
> +	}
> =20
>  	/* Device CS delays */
>  	of_spi_parse_dt_cs_delay(nc, &spi->cs_setup, "spi-cs-setup-delay-ns");

> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index 79513f5941cca..14a0b4c9b2281 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h

[ ... ]

> @@ -191,6 +192,7 @@ struct spi_device {
>  	struct device		dev;
>  	struct spi_controller	*controller;
>  	u32			max_speed_hz;
> +	u32			base_speed_hz;

[Severity: Low]
Should base_speed_hz also be added to struct spi_board_info and propagated =
in
spi_new_device()?

Currently, board files and other programmatic (non-Device Tree) instantiati=
on
methods cannot configure or utilize this new PHY tuning baseline feature
because the template structure was not updated to include this field.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527175527.2247=
679-1-s-k6@ti.com?part=3D3

