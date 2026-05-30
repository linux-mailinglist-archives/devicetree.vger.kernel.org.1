Return-Path: <devicetree+bounces-304495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NZcNl0zGmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:46:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F72360A496
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:46:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9F987302E303
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAAC42C11E6;
	Sat, 30 May 2026 00:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIb4aMeD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC0B2D8393;
	Sat, 30 May 2026 00:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780101945; cv=none; b=Bk9VXh6T0u57OpCh/dRzRBANSEztKSfPXZ6LFI3IgFwbcvfyyC4HyoNrr0XJ/pVfiM76PY0550iksFo7PdogbqLTkH+HEKv/KrbZOhLbRiFB4DnJvNVnEGvPKzAO96cMUEQtezC4urofOqjdsPqF6c7Lq+h+6sUNraEUsnz8FCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780101945; c=relaxed/simple;
	bh=TVbWKH6HDHPLF51C+Oquo2XPlUJqouwABgOKe9d6kzQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UbQJWsfJPrxTMJuSrtzrca3r2HxJcN23sArjLUQP+gWOSxleg3oLSQMehjwG2hP0UBXL7H4SuJijWsgVPF9kThken4D/JSKmdTuLgTwjW6Cn1JnoSzkll3U2PuuwYArI3Sbp/zyWF+KXtdkr8X08kn4zTeQVTapr8R4iRe+uaFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIb4aMeD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC9231F00898;
	Sat, 30 May 2026 00:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780101944;
	bh=Lekv4kynLv9w+tbgMKbKzlE4dGKTYoORQnbCUCD8iQ4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AIb4aMeDdIDtSXvNuJJJrPAWYoM7zafobiM4dkbMfahO6nnXpSBoKSUI/5QQcC9PH
	 C0awtmmNCvdBUXUITdWkN1hNfaZfwpUOP2OecByHEvH9Ho6UUrEhpB3n+ugsdoiNfC
	 80oc6aoacl5/xRxhXF7/hjNM2CbCxVo6viaZNHBAwijNRhQoOVvZcWSPLlI5VVFKFI
	 sOnU3MjaFwOKrmt18l+az4M0y63olFHOgIJCS/UH3AqZ4JWExRtetBkqQINFxFjyXM
	 /aH+D+b3hzgCjlGzVRIFjiKxy8lcNhh86FS6ZvatbeVMbhBX7VOvQrITX7ov/1OSTn
	 KzUGNY8ucyKlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 15/23] mfd: tps6586: use platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260521-pdev-fwnode-ref-v1-15-88c324a1b8d2@oss.qualcomm.com>
References: <20260521-pdev-fwnode-ref-v1-15-88c324a1b8d2@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:45:43 +0000
Message-Id: <20260530004543.DC9231F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 7F72360A496
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing cleanup of platform sub-devices on the probe error path le=
ads to a resource leak and potential Use-After-Free.
- [High] Missing irq_domain_remove() and irq_free_descs() on error paths an=
d module removal.
--

commit 77ea296910871ac50ea42e73a55af867803293eb
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

mfd: tps6586: use platform_device_set_of_node()

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node for dynamically allocated
platform devices with the provided helper.

> diff --git a/drivers/mfd/tps6586x.c b/drivers/mfd/tps6586x.c
> index f5f8054466033..3cfd2f02b62f3 100644
> --- a/drivers/mfd/tps6586x.c
> +++ b/drivers/mfd/tps6586x.c
> @@ -397,7 +397,7 @@ static int tps6586x_add_subdevs(struct tps6586x *tps6=
586x,
> =20
>  		pdev->dev.parent =3D tps6586x->dev;
>  		pdev->dev.platform_data =3D subdev->platform_data;
> -		pdev->dev.of_node =3D of_node_get(subdev->of_node);
> +		platform_device_set_of_node(pdev, subdev->of_node);
> =20
>  		ret =3D platform_device_add(pdev);
>  		if (ret) {
>  			platform_device_put(pdev);
>  			goto failed;
>  		}

[Severity: High]
This isn't a bug introduced by this patch, but does the probe error path
leak the platform sub-devices?

In tps6586x_i2c_probe(), sub-devices are registered via
tps6586x_add_subdevs(). If a subsequent operation like
devm_register_power_off_handler() fails, the code jumps to err_add_devs and
cleans up MFD devices via mfd_remove_devices():

drivers/mfd/tps6586x.c:tps6586x_i2c_probe() {
    ...
err_add_devs:
	mfd_remove_devices(tps6586x->dev);
err_mfd_add:
	if (client->irq)
		free_irq(client->irq, tps6586x);
	return ret;
}

However, it fails to call tps6586x_remove_subdevs(). The registered
platform sub-devices remain attached, while the parent driver's private
data (tps6586x) is freed.

If any of the leaked sub-devices are subsequently probed or accessed, would
they attempt to access the freed parent driver data, triggering a
use-after-free?

[Severity: High]
This is a pre-existing issue, but does tps6586x_irq_init() leak the IRQ
domain on error paths and module removal?

In tps6586x_irq_init(), an IRQ domain is created using
irq_domain_create_simple(), with the driver's private data (tps6586x) set
as host_data:

drivers/mfd/tps6586x.c:tps6586x_irq_init() {
    ...
	tps6586x->irq_domain =3D irq_domain_create_simple(dev_fwnode(tps6586x->dev=
), irq_num,
							new_irq_base, &tps6586x_domain_ops,
							tps6586x);
    ...
}

However, there are no corresponding calls to irq_domain_remove() or
irq_free_descs() on the probe error paths or in tps6586x_i2c_remove().

On unbind or probe failure, the IRQ domain is leaked while the devm_kzalloc
allocated tps6586x structure is freed. If the device is rebound or its
interrupts are looked up, the system may match the leaked IRQ domain on the
device's fwnode.

Would subsequent IRQ mappings invoke tps6586x_irq_map(), dereferencing the
dangling host_data pointer and causing a use-after-free?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-pdev-fwnod=
e-ref-v1-0-88c324a1b8d2@oss.qualcomm.com?part=3D15

