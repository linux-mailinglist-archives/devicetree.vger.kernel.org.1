Return-Path: <devicetree+bounces-312851-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pkr7MQJYMmpwywUAu9opvQ
	(envelope-from <devicetree+bounces-312851-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:17:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 250D46977A6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:17:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B9KwxgCq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312851-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312851-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 070B1301E585
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17003812EF;
	Wed, 17 Jun 2026 08:16:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A10D366822
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 08:16:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684206; cv=none; b=kp8jYUe7RA3Zg7l0cTDmpsC4raHsTFjqU80OnXeLm6wE124VZeBOC6F4IKcyBS9FnGwngQJqxENnv2ot/KXTJ/iUkH8Vudlf2YQLBx3Z01upmVYUTudICuv2iy3oSqE/TtYb4HCJ8lYxEESESBI1pm1lsFANISiV3nQSDYpjT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684206; c=relaxed/simple;
	bh=JuDaAL23n6c3bCTXLdyN4vO9W2ZL8ahwXNOdg1KXQac=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XL1swNeSmUqyKRJuZPtOVs4me7ZhUGpNYdMXNtmz8dAom1IE/ieIfBof3/7+J1FTScxfL+sgeskxqWGAGShv6jbfLtM1dqPsD15crjm3c8yo9N8cIQkXFAN5pVKh4949derfpBA1J7wet07Y8XzFt0Wx3H7khYuBE9alfAYlHZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9KwxgCq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51D981F00A3D;
	Wed, 17 Jun 2026 08:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781684205;
	bh=9d9IY2AjX42Rn3jsTp1PZWQRQY7g0SFSrugxwXeqMs8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B9KwxgCqONOQsGY6pmnBp41mdV1zFR6vtBaPplfxvy3dg9UG78pZK3yZgvTAPFwHE
	 tR2muEbCA/EZcsJfGsXiaFtSx+5ZHLVt5Xz13PMjCCI3di9ItY4tfojuuRuBWDRuWf
	 Dw3jUSCy4sb+cQKhxyoYFjhpWHihJMEKp27JV659BVaKZOtllHpOJD5WEtH6TaikR8
	 VtP5Bp/77MnqBzTzGXNymhz6ocWNGeDNI4cBk2h7FVPzPvZAQyjmfqpoNU72up6F+z
	 +HcrmYkGwYxg3xAKC33V6UzZj8KU8vNypOdLOnRmz2GqptlV7Uej4BscAWhxtOjmMC
	 bMlOuqrlzW6Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 08/14] mfd: lm3533: Convert to use OF bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617080031.99156-9-clamor95@gmail.com>
References: <20260617080031.99156-1-clamor95@gmail.com>
 <20260617080031.99156-9-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 08:16:44 +0000
Message-Id: <20260617081644.51D981F00A3D@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312851-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 250D46977A6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `default-brightness` property is read from the Device Tree a=
s a `u32` without being clamped to `LM3533_BL_MAX_BRIGHTNESS` (255).
--

commit ea75baf449ff637e79d3393f0fdd68b3fcf947de
Author: Svyatoslav Ryhel <clamor95@gmail.com>

mfd: lm3533: Convert to use OF bindings

This commit removes platform data support and transitions the driver to use
Device Tree bindings for its configuration.

> diff --git a/drivers/video/backlight/lm3533_bl.c b/drivers/video/backligh=
t/lm3533_bl.c
> index 9ef171d3aaeab..2c24647fc17a4 100644
> --- a/drivers/video/backlight/lm3533_bl.c
> +++ b/drivers/video/backlight/lm3533_bl.c

[ ... ]

> @@ -292,13 +291,21 @@ static int lm3533_bl_probe(struct platform_device *=
pdev)
>  	bl->cb.id =3D lm3533_bl_get_ctrlbank_id(bl);
>  	bl->cb.dev =3D NULL;			/* until registered */
> =20
> +	name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s-%d",
> +			      pdev->name, pdev->id);
> +	if (!name)
> +		return -ENOMEM;
> +
> +	device_property_read_u32(&pdev->dev, "default-brightness",
> +				 &default_brightness);
> +
>  	memset(&props, 0, sizeof(props));
>  	props.type =3D BACKLIGHT_RAW;
>  	props.max_brightness =3D LM3533_BL_MAX_BRIGHTNESS;
> -	props.brightness =3D pdata->default_brightness;
> +	props.brightness =3D default_brightness;

[Severity: Medium]
Should default_brightness be clamped to LM3533_BL_MAX_BRIGHTNESS before bei=
ng
assigned to props.brightness?

The transition to Device Tree bindings introduces reading default-brightness
as a u32. In the previous platform data implementation, default_brightness
was a u8, which inherently restricted it to a 0-255 range.

If a Device Tree provides a value greater than 255, it will be implicitly
truncated to an 8-bit unsigned integer when passed to the hardware writing
functions (for instance, 256 would wrap around to 0). This would cause the
backlight to turn off instead of setting it to the expected maximum brightn=
ess.

Does it make sense to clamp default_brightness similar to how led-max-micro=
amp
is clamped later in this function?

> -	bd =3D devm_backlight_device_register(&pdev->dev, pdata->name,
> -					pdev->dev.parent, bl, &lm3533_bl_ops,
> -					&props);
> +
> +	bd =3D devm_backlight_device_register(&pdev->dev, name, &pdev->dev,
> +					    bl, &lm3533_bl_ops, &props);

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617080031.9915=
6-1-clamor95@gmail.com?part=3D8

