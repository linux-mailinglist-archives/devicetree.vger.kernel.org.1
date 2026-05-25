Return-Path: <devicetree+bounces-302660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DZsKsQzFGo/KwcAu9opvQ
	(envelope-from <devicetree+bounces-302660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:34:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDCE5C9F8E
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA875300DA66
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E8C35E1BF;
	Mon, 25 May 2026 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVadT4NP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7B5335555
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779708865; cv=none; b=RSUmKRMAsHUynNkbKK2Ed6BB00WkGWid8GvZnTYBc6dY3em01nYZKUhWWAt/x/VdLxvQ7buW2RKMGn0Akp+hthqHuqUKQcegyJ7R8WH5QUXsUUq7C8wN0G/hRBRnDF1/Hvn1zkGkydypK1Zy1jKdVpVJyocC9ReiJVbS0mMuF8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779708865; c=relaxed/simple;
	bh=0uV/xlFQ3ELaCy8NvwhVKsYJkihCJOjrrbXB07qf37Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CLZ/amH/M3iVeULgRK1MAWJ5468ctmFYkF6fvuUUEfehyQ0XqM7ThLb9YuDFotE/Z9LzTuJifmlaQRPiDgsC5tT7D1cF/YOxmAnNsoP7Rj2pnv6D3GPiE292qVsrXJZWFImdirDRb3iNix1iLZr6t9PVhaURIC2uugxaL4qrLRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVadT4NP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48C321F000E9;
	Mon, 25 May 2026 11:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779708864;
	bh=9wM66xIKiy9sIRGs0USzjiz818DI4nZ2JG1x8Hvty6M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SVadT4NPY58paz9kpGi1UGQe5D0YCiZU42b9Ptn3V4MtrI8RrazmEvvBhFGF3FtlU
	 ZrKNTBr9A8XeAA/JXavR0GpotTMAG48aEzO/T/hShtYBTKnJBDcCHLuc+wHRMXmhez
	 C+qJusBgo82Dwm14hrP5W7YHlJRi9zxtmyL9pF4W8qlp3WZwVaRVzblNRj0+U8CN6H
	 R868S/d5zaULjT1QPgGMreNuVSD7LVUYUImmbTZ8oetJ4/BWKlVQLHFGMKp+gdByjt
	 jxzjtOSu3+wRD5Iq4IYtP6brMNjtPVFYJD2bI7tqEmV36csDbg3X5ysjKO4J4gGNr3
	 +/ID+yv28EMBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 06/11] iio: adc: hx711: introduce hx711_chip_info
 structure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260525105127.180156-7-piyushpatle228@gmail.com>
References: <20260525105127.180156-7-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:34:23 +0000
Message-Id: <20260525113424.48C321F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302660-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 1DDCE5C9F8E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Probing fails unconditionally with `-ENODEV` for devices bound b=
y platform name instead of Device Tree or ACPI.
- [Low] Use of undeclared macro `__counted_by_ptr` causes an immediate comp=
ilation error.
--

commit 2560eb8cf3b905048ac157fc1d9dd7c2068b2f2d
Author: Piyush Patle <piyushpatle228@gmail.com>

iio: adc: hx711: introduce hx711_chip_info structure

This patch introduces a per-variant static configuration structure for the=
=20
hx711 driver. It populates IIO device fields from this structure at probe t=
ime
to prepare for supporting additional hardware variants.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 823fd74f9cf95..062d6860da7d6 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c
[ ... ]
> @@ -74,6 +76,20 @@ static int hx711_get_scale_to_gain(const int *gain_sca=
le, int scale)
>  	return -EINVAL;
>  }
> =20
> +/**
> + * struct hx711_chip_info - per-variant static configuration
> + * @name: IIO device name
> + * @channels: channel specification array
> + * @num_channels: number of entries in @channels
> + * @iio_info: IIO info ops for this variant
> + */
> +struct hx711_chip_info {
> +	const char			*name;
> +	const struct iio_chan_spec	*channels __counted_by_ptr(num_channels);

[Severity: Low]
Does __counted_by_ptr exist in the kernel headers?

The kernel supports __counted_by for flexible array members, but it looks
like __counted_by_ptr is undefined. Using an undeclared macro here might
cause an immediate compilation error.

> +	unsigned int			num_channels;
> +	const struct iio_info		*iio_info;
> +};
> +
[ ... ]
> @@ -473,6 +498,12 @@ static int hx711_probe(struct platform_device *pdev)
> =20
>  	mutex_init(&hx711_data->lock);
> =20
> +	chip_info =3D device_get_match_data(dev);
> +	if (!chip_info)
> +		return dev_err_probe(dev, -ENODEV, "missing driver data\n");

[Severity: Medium]
Will this unconditionally fail for devices bound by platform name instead
of Device Tree or ACPI?

For traditional platform devices instantiated manually,
device_get_match_data() returns NULL because the device lacks a firmware
node and the driver lacks an id_table. platform_match() will fall back to
name matching, but this new probe check will now reject the bind with
-ENODEV.

Would it be better to fall back to the default hx711_chip configuration
or provide an id_table to prevent breaking backward compatibility for
non-DT/ACPI users?

> +
> +	hx711_data->chip_info =3D chip_info;
> +
>  	/*
>  	 * PD_SCK stands for power down and serial clock input of HX711
>  	 * in the driver it is an output

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525105127.1801=
56-1-piyushpatle228@gmail.com?part=3D6

