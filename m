Return-Path: <devicetree+bounces-294694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC6RC41S/mntpAAAu9opvQ
	(envelope-from <devicetree+bounces-294694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:15:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 341DB4FBD4A
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 23:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A8162300B2BF
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 21:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4EA0221540;
	Fri,  8 May 2026 21:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOf2zwdU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A002F8EA3
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 21:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778274950; cv=none; b=aZ89/yqfiEJ2WINuZRymxRbAB24P1716sH4rFPpdAhn0+V4DkqzFgqxt8tPr1XoVUzlKXXi9SSXyptJVBUMz82d1+S1OTHNS38LZf32o1qnByFuBDByh94T9Kgh3e9bRLX90Ux8WQEm5lW3Y6vRP8a0otlL2hzpq68pEEK5mKyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778274950; c=relaxed/simple;
	bh=nt8WII2WBGTCvIX1HoC6K3XHGnyjMqsuSGE5sAdlCaE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QvnJNgLxPfQCSV4rRT1XOlKXlqJfa1UphNdXWYddzdkntvS8+tB9y0+gVqoRHuqWA68RE1ZvZELmInNUYch0DS7wbLQwqiVmDfyrotNNe72V9TnvrT6X0xw/OBdJ5dZ4v+8aoWytMcffUK6T7qdd8D9sp29KpTeGu+lnGfwzd70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOf2zwdU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35159C2BCB0;
	Fri,  8 May 2026 21:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778274950;
	bh=nt8WII2WBGTCvIX1HoC6K3XHGnyjMqsuSGE5sAdlCaE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=IOf2zwdUUmHmqzLX8sResUhdWfm3hHVjplpO3OeK8E+yic4soWtssTdmU+npeUf35
	 Is2ZsmO+uPquCQ3IXfOfcQP0uuQ5MnuQHmW1yOicdv2U7Z9ueDUwKiJIryw5sgkDZQ
	 L+NbngzqDUolCg6oQ+40Ijz4T4mcQCzm95Y2AE/Ue4uZhvaSsieNJCiv2IoyZawgIO
	 dnQhXS7Cui+4D1EA6Urz+T4V1SYN+zBAeTpGNXJenwyhx3JatgKMKAuZwahKgm38sw
	 0KH+Ooc1fj16YKsJ0KFW/9NFIZukyioUwOIJnxjvxCMNwiFG7TOd0IP3So1XypDTzV
	 Nphf79PmpQ8Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/5] leds: is31fl32xx: Add powerdown pin to exit
 hardware shutdown mode
Reply-To: sashiko@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260508131139.1523597-5-jerrysteve1101@gmail.com>
References: <20260508131139.1523597-5-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 21:15:49 +0000
Message-Id: <20260508211550.35159C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 341DB4FBD4A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294694-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing stabilization delay after exiting hardware shutdown.
- [Medium] Device is not placed back into hardware shutdown on driver remov=
al.
- [Low] Incorrect header included for the descriptor-based GPIO API.
--

commit 0d566feaa3d3c1a7340af532307bd3b794d71799
Author: Jun Yan <jerrysteve1101@gmail.com>

leds: is31fl32xx: Add powerdown pin to exit hardware shutdown mode

This commit adds support for the SDB shutdown pin on the IS31FL32XX series
LED controllers. It requests the "powerdown" GPIO during probe and drives it
low to exit hardware shutdown mode so the chip can be initialized.

> diff --git a/drivers/leds/leds-is31fl32xx.c b/drivers/leds/leds-is31fl32x=
x.c
> index fe07acbb103a8..57d779e07a624 100644
> --- a/drivers/leds/leds-is31fl32xx.c
> +++ b/drivers/leds/leds-is31fl32xx.c
> @@ -10,6 +10,7 @@
>   */
> =20
>  #include <linux/device.h>
> +#include <linux/gpio.h>

This isn't a bug, but since this patch uses the modern descriptor-based GPIO
API (devm_gpiod_get_optional and GPIOD_OUT_LOW), should this include
<linux/gpio/consumer.h> instead of the legacy <linux/gpio.h>?

[ ... ]

> @@ -421,6 +423,11 @@ static int is31fl32xx_parse_dt(struct device *dev,
>  	const struct is31fl32xx_chipdef *cdef =3D priv->cdef;
>  	int ret =3D 0;
> =20
> +	priv->powerdown_gpio =3D devm_gpiod_get_optional(dev, "powerdown", GPIO=
D_OUT_LOW);
> +	if (IS_ERR(priv->powerdown_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->powerdown_gpio),
> +				"Failed to get powerdown gpio\n");
> +
>  	if ((cdef->output_frequency_setting_reg !=3D IS31FL32XX_REG_NONE) &&
>  	    of_property_read_bool(dev_of_node(dev), "issi,22khz-pwm")) {
> =20
>  		ret =3D is31fl32xx_write(priv, cdef->output_frequency_setting_reg,

Does the hardware require a stabilization delay after the powerdown pin is
driven low?

Hardware LED controllers typically require some time, often around 400us to
1ms, for their internal oscillator to stabilize before the I2C interface
becomes responsive.

If we initiate I2C communications immediately after asserting the GPIO, cou=
ld
the initial I2C transaction fail with a NACK and cause the probe to abort on
physical hardware?

Also, a general question about the lifecycle of the powerdown pin:

The commit message notes this feature is used to exit hardware shutdown mode
for power saving. Does the device need to be placed back into hardware shut=
down
during driver removal?

While the devres framework automatically frees the GPIO descriptor upon dri=
ver
unbind, it only releases the reference and does not alter the physical state
of the pin. Would it make sense to explicitly assert the shutdown state in =
the
remove function to ensure the device actually powers down when the driver is
unloaded?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508131139.1523=
597-1-jerrysteve1101@gmail.com?part=3D4

