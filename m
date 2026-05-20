Return-Path: <devicetree+bounces-300746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG58NGzWDWrW3wUAu9opvQ
	(envelope-from <devicetree+bounces-300746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:42:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E05911B8
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:42:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 09391303ECFA
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1824D3ED3A9;
	Wed, 20 May 2026 15:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt2tN+aL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79D73ED5C8
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 15:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779291400; cv=none; b=S0QUgoKWg895IleBN+gei2PshyhxkdW6vlIzPHsp3jPq8j5cJPm/ma+qtZc5iHEH9mSd+ta3uRXFCnODs824AYC9yewRPv7oLInIZ5+22N8eKICB6SdOnCi6S2DNOe6j+ZhfOgBQwr47ocjqQeRaF0b3pyj6OQVol59WkrbMYog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779291400; c=relaxed/simple;
	bh=+4MHz+lmpj0yYpjdT1peSpj7p8nKG/zZP/YX+MOS8/o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=k0etns8IehF2gdroS7x/KeieiueQxFdErh/7aQDHP3MJPBcMYbRRZCGoR9tUkZisQtgUsCWe/hf4imHaIuxnrDzTm/9Vxjfe3R1qfiyVYyzKTjZhEHZUf+ifv3xOZo8WpVVhOBD1jjdMxlue9RBYBQYxivk0P2lgUZ2vTv1Fkpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt2tN+aL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D77B1F000E9;
	Wed, 20 May 2026 15:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779291398;
	bh=+2NdzkPGa+RHCaztsnkYNGfPDIe3Qmn7j70WAjld+uE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kt2tN+aLOn2m+tRanhVKYFHHwKlhPD7zbq/GQOjYbAUFk5E12b1Mk+ScrqtAAAOsE
	 Yqicuhi+7peIB1tu3zLV2hVhy4DCkMjxw8kURHytDnaW5VyTkcWvrsuWDjBOGK3L6c
	 OtI4+H7yktBuhCRmvRmIX/5p0BGuLP2CzP9ofEdvOAB+SG/NzkCO6p8XdYYzt4rDML
	 cyCUrkiZIyUm56e7U216vH7YuKLISvMzo3Ku/R+IHerV+GmrMcmNTdb0o1PI/b6qyg
	 NE4sjQ8pq08tC+5eJ+4ceZ8Pk7HsTifxUAImfpDfLOgYulvjGyLSYgvRcQwPlEHyL9
	 G5kdcUsx3YA7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/6] leds: is31fl32xx: Fix missing brightness_steps
 for is31fl3236
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260520135659.1430008-6-jerrysteve1101@gmail.com>
References: <20260520135659.1430008-6-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 15:36:37 +0000
Message-Id: <20260520153638.5D77B1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300746-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 741E05911B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect current limit enforcement for IS31FL3293 overrides lower=
 user limits and causes integer truncation for high values, risking hardwar=
e damage.
- [High] The driver exposes LEDs to userspace and the kernel before fully i=
nitializing and resetting the hardware.
--

commit 7964dd48aeb77ef5f5990809722be581273eecbc
Author: Jun Yan <jerrysteve1101@gmail.com>

leds: is31fl32xx: Fix missing brightness_steps for is31fl3236

This commit adds the missing brightness_steps field for the is31fl3236
and is31fl3236a chip definitions. This ensures brightness control is
configured properly for these chips.

> diff --git a/drivers/leds/leds-is31fl32xx.c b/drivers/leds/leds-is31fl32x=
x.c
> index 5b9ed5a1818fa..2d7ff4c5a08c7 100644
> --- a/drivers/leds/leds-is31fl32xx.c
> +++ b/drivers/leds/leds-is31fl32xx.c
> @@ -491,6 +491,7 @@ static const struct is31fl32xx_chipdef is31fl3236_cde=
f =3D {
>  	.pwm_register_base			=3D 0x01,
>  	.led_control_register_base		=3D 0x26,
>  	.enable_bits_per_led_control_register	=3D 1,
> +	.brightness_steps			=3D 256,
>  };
> =20
>  static const struct is31fl32xx_chipdef is31fl3236a_cdef =3D {

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a potential problem
in how we handle the current limits for the is31fl3293 chip.=20

Looking at is31fl3293_reset() in drivers/leds/leds-is31fl32xx.c:

	for (i =3D 0; i < priv->num_leds; i++) {
		...
		int microamp =3D max(led_data->max_microamp, IS31FL3293_MAX_MICROAMP);
		int current_level =3D (microamp * 0xff) / IS31FL3293_MAX_MICROAMP;

		ret =3D is31fl32xx_write(priv, current_level_reg, current_level);

Does this code accidentally use max() instead of min()?=20

By taking the maximum, any safe limit provided via the device tree that is
lower than 20mA will be overridden to 20mA. Could this risk hardware damage
for chips rated for lower currents?

Additionally, if led_data->max_microamp is greater than 20mA, current_level
will exceed 255. Since is31fl32xx_write() accepts a u8 value, wouldn't this
result in silent integer truncation and unpredictable output currents?

[Severity: High]
This is also a pre-existing issue, but is there a state mismatch during
probe initialization?

Looking at is31fl32xx_probe():

	ret =3D is31fl32xx_parse_dt(dev, priv);
	if (ret)
		return ret;

	ret =3D is31fl32xx_init_regs(priv);

The is31fl32xx_parse_dt() function registers each led with the subsystem
using devm_led_classdev_register_ext(). This allows the led subsystem to
immediately apply triggers or default-state settings (like 'on' or 'keep')
via i2c writes.

However, right after parsing, we call is31fl32xx_init_regs(), which
performs a full hardware reset. Does this subsequent reset wipe out any
brightness or state configurations just applied by the led subsystem?=20

Should the hardware initialization occur before exposing the device to the
subsystem?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520135659.1430=
008-1-jerrysteve1101@gmail.com?part=3D5

