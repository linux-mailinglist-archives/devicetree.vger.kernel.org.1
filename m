Return-Path: <devicetree+bounces-307841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r944N++OJWq+JAIAu9opvQ
	(envelope-from <devicetree+bounces-307841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 17:31:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB7650E0D
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 17:31:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h8NJR7kN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307841-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307841-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E472B3002B25
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 15:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F541DC9B5;
	Sun,  7 Jun 2026 15:31:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F3A1448E0
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 15:31:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780846318; cv=none; b=ZoTJwibEH1R1Qh9iWPBaHAfE3PYwx0HQQlk8Rrs9b+hG+C7JArjtBgQq7vmBC/U7dHfmE3Df6MXQEpEVrhOCXmsg5hK8i39Yqrs69i2To+hMfFeTxJxGmnkPHytmBz16hJFUAC5wiOtv1cFZLx1bkdEQfS8MmDGwURJVx+d/F6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780846318; c=relaxed/simple;
	bh=2gkjG/H6fVQ9DnAXsNO3fhA1J8hC1iwwDZmE8LcqpTc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=U79C7CMs4u9IKuAkDUZehKID+1LCZisLhTykk8CAy1z6qpkPBsiYtBRACKTM4sIrR2Uok5lR1KOjXy17M0Evn7rhdY62fxIRHcZF24t8NKp0ws/z49+Mp1N804nsk0m4MVXwOcZUhL0+b3tus6QuKGi+zlP6rk4Imcu+FiAdmqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8NJR7kN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 439381F00893;
	Sun,  7 Jun 2026 15:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780846316;
	bh=H9DP5J3LkBa+dzXgCCA4VslPtKMe7IMdZ8LY7BRo2gg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h8NJR7kNck7H3EE4gGKi7bdyUkzLdwtJEjo8yTPT+JUE9FbH8k+Y3wnzWkIK0Nv4b
	 /W7PaqTc4bPdbbncByuvS9sJ/FGvcBLg441ozNU37tNTC56exvsDocGNt+WQy/o9p7
	 bhz/Sh/KSdF4hWjFaPgqAQzyMGlb0jraXQMrbQCTpRtb/cZUhRgY0FOOuWv1EhZR6k
	 Zf6IPLWNhpn+2gsG/N1TbpILBlk3IIRfe/uYXs3GS1POg1uTdNi4rZdB+MEq22dbAU
	 4sp1iVocpCGTclAMFeyBk0NxwaMv2mQHPuRYldHf+7EozAsQEBfq5/lfuh1R2rnIP2
	 EaE0sNFvg1wSg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 4/6] leds: is31fl32xx: Add powerdown pin for hardware
 shutdown mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260607152002.446617-5-jerrysteve1101@gmail.com>
References: <20260607152002.446617-5-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 Jun 2026 15:31:55 +0000
Message-Id: <20260607153156.439381F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307841-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CDB7650E0D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Hardware access after shutdown due to teardown inversion.
- [Medium] Hardware left powered on upon probe failure.
--

commit d16c62743bb35a616f80e7949e0e6af97fa6ca1c
Author: Jun Yan <jerrysteve1101@gmail.com>

leds: is31fl32xx: Add powerdown pin for hardware shutdown mode

The IS31FL32XX series features an SDB shutdown pin. Driving it low
(active low) places the chip into hardware shutdown mode for power
saving, while all register contents are preserved and registers are
not reset.

Deassert/assert the pin accordingly during probe() and remove() to
manage hardware shutdown mode.

> diff --git a/drivers/leds/leds-is31fl32xx.c b/drivers/leds/leds-is31fl32x=
x.c
> index fe07acbb103a8..f9d3b9a707ca5 100644
> --- a/drivers/leds/leds-is31fl32xx.c
> +++ b/drivers/leds/leds-is31fl32xx.c

[ ... ]

> @@ -421,6 +423,15 @@ static int is31fl32xx_parse_dt(struct device *dev,
>  	const struct is31fl32xx_chipdef *cdef =3D priv->cdef;
>  	int ret =3D 0;
> =20
> +	/*
> +	 * Driving this GPIO line low takes the chip out of shutdown,
> +	 * as it is flagged as GPIO_ACTIVE_LOW in provider (such as the device =
tree).
> +	 */
> +	priv->powerdown_gpio =3D devm_gpiod_get_optional(dev, "powerdown", GPIO=
D_OUT_LOW);
> +	if (IS_ERR(priv->powerdown_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->powerdown_gpio),
> +				"Failed to get 'powerdown' GPIO\n");
> +

[Severity: Medium]
Does this leave the chip actively powered on if probe fails later?

The powerdown gpio is acquired and driven logically low with GPIOD_OUT_LOW,
which wakes the chip from hardware shutdown.

If a subsequent initialization step in probe() fails (for example, if
is31fl32xx_init_regs() returns an error), probe() will return an error
without explicitly reverting the GPIO to its shutdown state.

The devres framework automatically frees the GPIO descriptor, but it does
not revert its physical output level. Will this leave the device powered
on indefinitely instead of returning it to its low-power standby state?

[ ... ]

> @@ -609,6 +620,9 @@ static void is31fl32xx_remove(struct i2c_client *clie=
nt)
>  	if (ret)
>  		dev_err(&client->dev, "Failed to reset registers on removal (%pe)\n",
>  			ERR_PTR(ret));
> +
> +	if (priv->powerdown_gpio)
> +		gpiod_set_value_cansleep(priv->powerdown_gpio, 1);

[Severity: Medium]
Could this cause an I2C error cascade during driver unbind due to the teard=
own
order?

The driver registers LEDs using devm_led_classdev_register_ext(), which
means the LED class devices are unregistered by devres after the driver's
remove() callback completes.

When this asserts the powerdown_gpio, it places the chip into hardware
shutdown mode. Subsequently, devres invokes led_classdev_unregister() which
attempts to gracefully turn off each LED:

drivers/leds/led-class.c:led_classdev_unregister() {
    ...
    if (!(led_cdev->flags & LED_RETAIN_AT_SHUTDOWN))
        led_set_brightness(led_cdev, LED_OFF);
    ...
}

This triggers an I2C write to the chip via is31fl32xx_brightness_set().
Because the hardware is already in hardware shutdown mode, will these
I2C writes fail and result in errors?

>  }
> =20
>  /*

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260607152002.4466=
17-1-jerrysteve1101@gmail.com?part=3D4

