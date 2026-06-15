Return-Path: <devicetree+bounces-311912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HE7HKWrtL2rLJAUAu9opvQ
	(envelope-from <devicetree+bounces-311912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:17:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1896B6861AF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:17:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k4rexQuW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311912-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311912-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7BBB7302D194
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 430AF3E639E;
	Mon, 15 Jun 2026 12:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055DC3E7BCE
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:16:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781525813; cv=none; b=hsXwkVIDWNv3k3qu1mbjelRMEUnZT+aBs5Kxkq+lSaCGxcfOZlI7XLQ9KIy5tPwFZJQ17sxfDo0JZ/RgvRelHZRGMfopW2B87z2lyoGbUBawlkqeLAtCL8ca/p6LtZrEnASlXzlnvBPOlDdGr91wp+20VqSLUqMuPZD0oqD7Ojc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781525813; c=relaxed/simple;
	bh=CK6UTyjpxdKXNdNQ9uQ3F4qXvg/brF1FB31/1qGDvgU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=flfVTM3pXq32wAQ7on94i03YumYLauC4XJplK/B6MN08gcOyzEWy/YfX9b4lQeTgBcAr92zkz8b9Zj/bD8oc1ksEgC+8rvxVqzWgi4R+qOdXzuB83U2/kNPAg0g+Cw56Wxj47U763R8eMNEHpSqebySwccyiQq1n91LVv30Fcek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4rexQuW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25F41F000E9;
	Mon, 15 Jun 2026 12:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781525811;
	bh=9iqVy+5+rJXm592HelTq9mDfS/LD1A876hdQuh6hkaY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k4rexQuWEzHcDIa3/xN5n7hsNV4UKB6i2J2slVzKJrwsynxinZ3KZc0+RfalDv/wu
	 LqNKZZdUTQKFQU6lbfke4k4jTnyUcrYxrJjTkr1KXweivpS8ZYa5ujLx3ZZrO+kUzQ
	 8VDuswC2T1prEAL1U7Oz/K2FP/vFv+11tHAos6uypeGfPh4nOZn8U/W/+k167ElAyJ
	 6oGZcKcLaAPUJ68vJSxorJz/ub3aC4NNi5xlNmqRhINqftfBmEnKgsSTeep5qikC+h
	 bH0A4opuPmA9qr8zJTdnczwCM+xjLiV25gwY0dB2+nHOYCu9FBeghsq/riklvLRbIX
	 Hk6h3qgy+NX8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] backlight: lp8864: Convert from LED to backlight
 class driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260615120353.3409035-4-alexander.sverdlin@siemens.com>
References: <20260615120353.3409035-4-alexander.sverdlin@siemens.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 12:16:50 +0000
Message-Id: <20260615121650.F25F41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311912-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.sverdlin@siemens.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1896B6861AF

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Hardcoded backlight device name prevents probing multiple device i=
nstances.
- [High] Unclamped device tree brightness properties bypass limits and caus=
e hardware wraparound.
- [High] The LED class interface completely ignores DT backlight limits, al=
lowing userspace to overdrive the display.
- [Medium] Concurrent sysfs writes from the backlight and LED subsystems ca=
use a data race on `priv->led_status_mask`.
--

commit 3a876b5316e78acf44b2217cdc076c3285471e8a
Author: Alexander Sverdlin <alexander.sverdlin@gmail.com>

backlight: lp8864: Convert from LED to backlight class driver
   =20
Move the TI LP8864/LP8866 driver from drivers/leds/ to drivers/video/backli=
ght/
and convert it to register a backlight class device. The driver preserves
backward-compatible LED class device registration if the "led" child node is
present.

> diff --git a/drivers/video/backlight/lp8864_bl.c b/drivers/video/backligh=
t/lp8864_bl.c
> index d05211b970c94..67b28f7daedd2 100644
> --- a/drivers/leds/leds-lp8864.c
> +++ b/drivers/video/backlight/lp8864_bl.c

[ ... ]

> @@ -157,28 +162,59 @@ static int lp8864_fault_check(struct lp8864 *priv)
>  	return ret;
>  }
> =20
> -static int lp8864_brightness_set(struct led_classdev *led_cdev,
> -				 enum led_brightness brt_val)
> +static int lp8864_brightness_set(struct lp8864 *priv, unsigned int brigh=
tness)
>  {
> -	struct lp8864 *priv =3D container_of(led_cdev, struct lp8864, led_dev);
> -	/* Scale 0..LED_FULL into 16-bit HW brightness */
> -	unsigned int val =3D brt_val * 0xffff / LED_FULL;
>  	int ret;
> =20
>  	ret =3D lp8864_fault_check(priv);

[Severity: Medium]
Since the driver registers both a backlight device and an LED class
device, can concurrent sysfs writes to both interfaces cause a data race?

The LED and Backlight subsystems use independent locks (led_access mutex
and update_lock mutex). Parallel writes will result in concurrent calls to
lp8864_brightness_set(), which calls lp8864_fault_check().

Inside lp8864_fault_check(), the driver performs an unprotected
read-modify-write on priv->led_status_mask. Could this concurrent access
cause fault status updates to be lost?

>  	if (ret)
>  		return ret;

[ ... ]

> +static int lp8864_led_brightness_set(struct led_classdev *led_cdev,
> +				     enum led_brightness brt_val)
> +{
> +	struct lp8864 *priv =3D dev_get_drvdata(led_cdev->dev->parent);
> +
> +	/* Scale 0..LED_FULL into 16-bit HW brightness */
> +	return lp8864_brightness_set(priv, brt_val * 0xffff / LED_FULL);
> +}

[Severity: High]
Does the LED class interface ignore the device tree backlight limits?

The backlight device respects props.max_brightness, but the parallel LED
interface scales the requested brightness using a hardcoded LED_FULL divisor
(brt_val * 0xffff / LED_FULL).

If a custom max-brightness is specified in the device tree, writing to
the LED sysfs interface could bypass this limit and write arbitrary high
values to the hardware. Could this overdrive and potentially damage the
display?

[ ... ]

> @@ -258,11 +290,46 @@ static int lp8864_probe(struct i2c_client *client)
>  	if (ret)
>  		return ret;
> =20
> +	/* Register backlight class device */
> +	memset(&props, 0, sizeof(props));
> +	props.type =3D BACKLIGHT_RAW;
> +	props.max_brightness =3D LP8864_MAX_BRIGHTNESS;
> +	props.brightness =3D LP8864_MAX_BRIGHTNESS;
> +	props.scale =3D BACKLIGHT_SCALE_LINEAR;
> +
> +	if (!device_property_read_u32(&client->dev, "max-brightness", &val))
> +		props.max_brightness =3D val;
> +
> +	if (!device_property_read_u32(&client->dev, "default-brightness", &val))
> +		props.brightness =3D val;

[Severity: High]
Could reading max-brightness without default-brightness bypass the
protective limits during boot?

If max-brightness is provided in the device tree but default-brightness
is not, props.brightness retains its initial 0xFFFF value. When
backlight_update_status() is called shortly after, it will write this
unconstrained 0xFFFF to the hardware.

Additionally, since device_property_read_u32() is used without upper bound
checks, would values greater than 65535 in the device tree wrap around
when passed to the 16-bit regmap_write() in lp8864_brightness_set()?

> +
> +	bl =3D devm_backlight_device_register(&client->dev, "lp8864-backlight",
> +					    &client->dev, priv,
> +					    &lp8864_backlight_ops, &props);

[Severity: High]
Will using a fixed string for the backlight device name prevent probing
multiple instances?

The commit message mentions a use case on a hot-pluggable segment of an
I2C bus. If there are multiple LP8864 instances on the same system, the
second instance will fail to probe because the sysfs core mandates unique
names for devices in the same class.

Should this use a dynamically unique name, such as dev_name(&client->dev),
to avoid device_add() returning -EEXIST?

> +	if (IS_ERR(bl))
> +		return dev_err_probe(&client->dev, PTR_ERR(bl),
> +				     "Failed to register backlight device\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615120353.3409=
035-1-alexander.sverdlin@siemens.com?part=3D3

