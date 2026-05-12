Return-Path: <devicetree+bounces-296535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFf7Myi4A2rj9QEAu9opvQ
	(envelope-from <devicetree+bounces-296535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:30:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8852B4D0
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:30:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D08BA3044A02
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FF32E1EE0;
	Tue, 12 May 2026 23:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeIE1ZCG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F83325B0BE
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 23:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778628645; cv=none; b=rgcp5jxbU6juBa2h0dpO7ynBzC9f6HgkTRDwA15Su2lgvTD6QMNHg1xaMQFpmC1zkzwzBSx1u+PVosxOqulUQkQIX7+Iu3L1re5ANiF5GtpKix3vErE5cfdTB4rYJke9j+6l/TT9TFTkVrT+gAuML5c1eIpZT77Z8AOX/w5Wa/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778628645; c=relaxed/simple;
	bh=V4pNiiLLaFTxy8DuJntqaQJCwNSZXDqQP/EamFmWXws=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=i3Zwd20iiBPGOnyo9KiuGxwokeDdjTIvV9a5HlNe25tOqBz3hEvbrFJU6aIHa9evWWrEQ7CgDuiyLkW88wNBqzuw0zcfXttwBLYo/pR3LbnKReSqoPFUjT+uiO9e0MoVHYGhpcHG3iIrEvkgPbCNcbhmoIOv5KwnqH6rTRY1r5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeIE1ZCG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A41DC2BCB0;
	Tue, 12 May 2026 23:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628644;
	bh=V4pNiiLLaFTxy8DuJntqaQJCwNSZXDqQP/EamFmWXws=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=oeIE1ZCGtQHGvtMYJgEzOjQdp63/qzUFSvtsAmOHS22OVQMvxb0jiMknvzZBBv1N9
	 reL1qLEPEM2o18jpx5VkEhsMUXVR0z2w4lRfsPWWt0lX5S0yu7v2IS/tIq0eHVCG/N
	 WQGz0hVd43mi0IS7NluzUW/med3yBFkqjWPazg+bR8F0Hpa9U+vjiErziE1CWU3U12
	 0+dA82Rt3TRiLHetIsObaCNssgSA6CP5VZXKPl5skEFzvhySHWBysxkNBlDHExZZpZ
	 fpcArS9xlHOXyYeJS9WaGA3J+vWDlTdw+RrOsr7dt0uXEjrKbxsfE4v8qS8uYTgHn9
	 NyB3dEkOVhlUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 v8 06/11] iio: adc: hx711: introduce hx711_chip_info
 structure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511174342.123820-7-piyushpatle228@gmail.com>
References: <20260511174342.123820-7-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 23:30:44 +0000
Message-Id: <20260512233044.8A41DC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7CA8852B4D0
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-296535-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The probe function unconditionally fails if `device_get_match_data=
()` returns NULL, breaking legacy non-DT platform instantiations.
- [Low] The `__counted_by_ptr` macro is undefined in the Linux kernel heade=
rs, causing a build failure.
--

commit c0e541cc80817071cecb490c0510348025ebed7a
Author: Piyush Patle <piyushpatle228@gmail.com>

iio: adc: hx711: introduce hx711_chip_info structure

This commit adds a per-variant static configuration structure and populates
the IIO device fields from it at probe time to prepare for more hardware
variants.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 823fd74f9cf95..062d6860da7d6 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c

[ ... ]

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

Will this cause a build failure?

It looks like __counted_by_ptr is undefined in the kernel headers. The
compiler might treat this as an undeclared identifier.

[ ... ]

> @@ -473,6 +498,12 @@ static int hx711_probe(struct platform_device *pdev)
> =20
>  	mutex_init(&hx711_data->lock);
> =20
> +	chip_info =3D device_get_match_data(dev);
> +	if (!chip_info)
> +		return dev_err_probe(dev, -ENODEV, "missing driver data\n");

Does this introduce a regression for legacy platform instantiations?

For platform devices instantiated by name without a firmware node,
device_get_match_data() returns NULL. Prior to this patch, these devices
probed successfully using hardcoded defaults.

Since this driver does not provide a platform_device_id table, is it
possible we need a fallback to a default configuration, such as &hx711_chip,
to avoid breaking backwards compatibility for non-DT users?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511174342.1238=
20-1-piyushpatle228@gmail.com?part=3D6

