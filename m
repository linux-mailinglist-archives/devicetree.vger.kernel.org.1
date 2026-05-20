Return-Path: <devicetree+bounces-300731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHJaIy3TDWpP3gUAu9opvQ
	(envelope-from <devicetree+bounces-300731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:28:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 071D0590D63
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB27F3368AFC
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C210B3F0AB1;
	Wed, 20 May 2026 15:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5XOZrcv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E5E3F0750
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 15:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779289990; cv=none; b=bpCOnardAeLhJFbkyQ3imq7fcoqba+5Jj5A+0RhkaM9JFBt6lShdAO31qktkjM1thNiv5OHgbOQHRbHUybQQaD1TDA6VUFb8D5yl9+CsnlNm6ILpFx2Jw5WLHiN6x0Nyxa3EEJP2sUHs00v9+7neEWBzJiz/ZuFa2CNZRf0KAL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779289990; c=relaxed/simple;
	bh=N2yy6kOiDcE10HzOrv2w5oAGnl2IkavCgkv/2a0N/Oo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VMrZajrh7mTQei5YdTU6NYcdEeLXv9XC+fGoD2f/B6mjzDQqYjoxW2BE/vVGbKac28fzf6oHRIDPeL+xkt4D0m9vqymPA+uNWTZAid7S950TTknuYuf+fp8BQphwfCNYbN6pEoB3vx7BjA4742irl7s4bEy/w5ImNhut99ZzA9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5XOZrcv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AC121F000E9;
	Wed, 20 May 2026 15:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779289989;
	bh=qn4haWS3JtYh71y6EtgRvlnsjDkWLJBnEZnAloG9Vrk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f5XOZrcvyIldPQ9kIbuM0XeUzWsHqtVLXNtgmBfIpuQtDk9Iz6uGG13YAJ0SgnBPm
	 5bl3+TqOpqIQ8C9PNp1QivNewqHj2lKUFyN9ZX1jqpZGRkb5o5cRzQYJdSfdNvS7Fa
	 zL74d4Z6bgcOGGyyLqnt9KWSXq1RwwAMlVy4vdSFCdAsBR8/KPRDT+5DB8mGEcUFIM
	 jUygv2ECqhX6UgWyLBO4IhzQyJe3OBVLsAIkn9kiilgeyGZYsYFfOasXC0uhMAtLuy
	 GVAZaus89YOc8qzK6048048oZL5EZhnNhjLU8AbyrR1aFMJZK4B7yh6mgVlM70HuOa
	 LyMGVPeEtUqdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/6] leds: is31fl32xx: Add powerdown pin for hardware
 shutdown mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260520135659.1430008-5-jerrysteve1101@gmail.com>
References: <20260520135659.1430008-5-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 15:13:08 +0000
Message-Id: <20260520151309.2AC121F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-300731-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Queue-Id: 071D0590D63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Asserting the powerdown GPIO in `remove()` powers down the chip =
before `devres` unregisters the LED class devices, causing I2C transfer fai=
lures.
- [Medium] The driver uses `gpiod_set_value()` instead of `gpiod_set_value_=
cansleep()` to assert the powerdown GPIO, which can trigger a kernel warnin=
g.
- [Low] The powerdown GPIO is not asserted on probe failure, leaving the de=
vice permanently powered on.
--

commit e29dbb241facd1fc077de99378c689b24d27209d
Author: Jun Yan <jerrysteve1101@gmail.com>

leds: is31fl32xx: Add powerdown pin for hardware shutdown mode

This commit adds support for an optional powerdown GPIO in the IS31FL32XX
LED driver. It asserts the pin during probe and deasserts it during
removal to manage the hardware shutdown mode for power saving.

> diff --git a/drivers/leds/leds-is31fl32xx.c b/drivers/leds/leds-is31fl32x=
x.c
> index fe07acbb103a8..5b9ed5a1818fa 100644
> --- a/drivers/leds/leds-is31fl32xx.c
> +++ b/drivers/leds/leds-is31fl32xx.c

[ ... ]

> @@ -421,6 +423,14 @@ static int is31fl32xx_parse_dt(struct device *dev,
>  	const struct is31fl32xx_chipdef *cdef =3D priv->cdef;
>  	int ret =3D 0;
> =20
> +	/* Driving this GPIO line low takes the chip out of shutdown,
> +	 * as it is flagged as GPIO_ACTIVE_LOW in provider (such as the device =
tree).
> +	 */
> +	priv->powerdown_gpio =3D devm_gpiod_get_optional(dev, "powerdown", GPIO=
D_OUT_LOW);

[Severity: Low]
Does this leave the device permanently powered on if probe fails later?

If a failure occurs during probe after the chip is taken out of shutdown,
the devm framework releases the GPIO descriptor but does not revert its
physical line level. A custom devm action might be needed to ensure the
pin is correctly reverted to shutdown mode on probe failure.

> +	if (IS_ERR(priv->powerdown_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->powerdown_gpio),
> +				"Failed to get powerdown gpio\n");

[ ... ]

> @@ -609,6 +619,9 @@ static void is31fl32xx_remove(struct i2c_client *clie=
nt)
>  	if (ret)
>  		dev_err(&client->dev, "Failed to reset registers on removal (%pe)\n",
>  			ERR_PTR(ret));
> +
> +	if (priv->powerdown_gpio)
> +		gpiod_set_value(priv->powerdown_gpio, 1);

[Severity: Medium]
Will this cause I2C transfer failures during device removal?

The LED class devices are registered with devm_led_classdev_register_ext(),
meaning they are unregistered by devres after is31fl32xx_remove() returns.

When devres later unregisters the LED class devices,
led_classdev_unregister() may try to turn off the LEDs by issuing I2C
transactions. Since the powerdown GPIO was already asserted here, the chip
will be in hardware shutdown and these transactions will result in I2C
NACKs and error logs.

Managing the GPIO teardown via devres could ensure it executes after LED
unregistration.

[Severity: Medium]
Should this use gpiod_set_value_cansleep() instead?

The GPIO might belong to a sleepable controller, such as an I2C or SPI
expander. Since is31fl32xx_remove() executes in a sleepable context (it
calls the sleepable is31fl32xx_reset_regs() just above), calling the
non-sleeping variant on a sleepable GPIO can trigger a WARN_ON() inside
the gpiolib core.

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520135659.1430=
008-1-jerrysteve1101@gmail.com?part=3D4

