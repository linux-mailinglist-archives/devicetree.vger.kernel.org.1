Return-Path: <devicetree+bounces-299662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PKjECiTC2p+JgUAu9opvQ
	(envelope-from <devicetree+bounces-299662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:31:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C0D5747A8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:31:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6D6AA3013840
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 22:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DCB3921E4;
	Mon, 18 May 2026 22:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXn1/l/+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA2B352C5B
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 22:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779143447; cv=none; b=cH+Af5VKfObHgamIMbu1LZ80Ps8L7bWxxC2HLb3LcH20dEdJ2pLNeWXIkr4bzb+A9po46Uo38rRlz1kTffQe/dR7ONxiLUBlKImw14F38ZMySefkG/3WQouzUCgIgpABDOBXZKls++8c1wbu/2bWi3kg/qL1aUP4QkV7Psr/t/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779143447; c=relaxed/simple;
	bh=HbG0Vxnr76jtrx4jEHpG5u/0jkfZfIYfwbLFzpzmgls=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JoMRiWdu+81gzc6G4zwji74XOs7gyM4LnTaMvIQZcabfIT/cdwGDRbc4nHCR8lei/4fk758AcMpr3odHOX5wxawa2H5AOnBXeK1D5X59hC+I97I2pVvnHmQD8YbFe+5gM4oFcJOdwfo7s+r0PGAutZ0nhQ4XVZVQ58seJQpr3KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXn1/l/+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A83FC2BCFC;
	Mon, 18 May 2026 22:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779143447;
	bh=HbG0Vxnr76jtrx4jEHpG5u/0jkfZfIYfwbLFzpzmgls=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=SXn1/l/+CgvL9acKETw+PDt82sxkGOJTBvMa7whVFBz4EBwKpzIU/NSXNQwmWi6y5
	 wdQVt12JRu9utgtzshr1RqG2sT5XfgMtKUP7o9z6cDk58sNkMx7ovo86hiEWENMnKJ
	 SYuwh1wWp3QJ92fc7Gqbws1iZEPUFWuTbZHesZd/RCYIgZr5yl9kaqhU7an4wo9hgK
	 bLGoa69KNgMy4wRkPi2o2gQ2Pt0ImsYBH0NpT+sVqCboqsjH+CeBoLNpKB0aAaK6X3
	 rvhOvCmpQYBgO8xeWRf/Yj60pljpm80F1c3Ph7NUROjMECSSc485y4AdEwFHqXu1Cu
	 PYl2PxZDryrPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 06/11] iio: adc: hx711: introduce hx711_chip_info
 structure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260518220228.63322-7-piyushpatle228@gmail.com>
References: <20260518220228.63322-7-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 22:30:46 +0000
Message-Id: <20260518223047.1A83FC2BCFC@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299662-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 08C0D5747A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Driver probe unconditionally fails for legacy non-DT platform devi=
ces.
- [Low] Use of undeclared macro `__counted_by_ptr` causes a build failure.
--

commit e7a943897aef3be5de1d3c4561e37e20e131b7c5
Author: Piyush Patle <piyushpatle228@gmail.com>

iio: adc: hx711: introduce hx711_chip_info structure

Add a per-variant static configuration structure and populate the IIO
device fields from it at probe time.

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

Does this cause a build failure? The __counted_by_ptr macro does not appear=
=20
to be defined in the kernel headers, which will result in a syntax error=20
during compilation.

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

Does this cause a regression for legacy non-DT platform devices?

The device_get_match_data function relies on a firmware node being present.=
=20
If a platform device is registered by name without a device tree or ACPI=20
node, this will return NULL.

Since there is no fallback behavior or id_table provided for name-based=20
matching, this now unconditionally fails the probe with -ENODEV, whereas=20
previously the driver fell back to the default configuration.

> +
> +	hx711_data->chip_info =3D chip_info;
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518220228.6332=
2-1-piyushpatle228@gmail.com?part=3D6

