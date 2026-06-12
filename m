Return-Path: <devicetree+bounces-310731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OiysE+q1K2r4CQQAu9opvQ
	(envelope-from <devicetree+bounces-310731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:31:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B561A6773D3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:31:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=indN9D8X;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310731-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310731-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B60703066B5E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED9F35A3B8;
	Fri, 12 Jun 2026 07:31:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED42E35E93E;
	Fri, 12 Jun 2026 07:31:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249511; cv=none; b=lI3aB4qhSfD7C5SVd+QZxRKsOPAW9vTPXlDcj/3mG5eOBfk3BtXtMQ13+D6WTJ4SiMA2B9i9IaRoKr8VCfp3NyNvN5/iyc+qRuYF8mJzl5DKU5DdDnMFm6vpEjNXEJwS90VHJVz+DTxwZ0UdVp1VPt/EP8yFrsT2IOIB0/NVVbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249511; c=relaxed/simple;
	bh=+593IMqm2qSCZVM5PqJDwwpSGZWkhQ8BMKUdl7agmF0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sO6y8EwKw7D+YzVPzvIIhczGEcjw2rWsiQAcAjYIuiwa/6y9ZXCFjQ4ozu670HluZF13JyKGjDJY192MZxf7ceLi390mMnaYh6lPPd1wn8sijRbJeY03wa8xlBHM1yA9LrSnuhtS4UTBxBp8oT8gUx6Sx6+T5GbMs6iYsW9zorw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=indN9D8X; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 185DB1F000E9;
	Fri, 12 Jun 2026 07:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249510;
	bh=HA4/VtlHq6Y4JB45vzar+k+ilbSghV4H4LqC45XWHNY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=indN9D8XnGY/GZgxk4T1vJRpDCzSWuphyeiguwDqCP7BEyOP4LGYXOGQSn8WTdh9C
	 oUV48RofjXckbl8PCrzyOsnk6xbiBLTqSGYgdRPlLK+yotIURzswGmnguciHKc5xAB
	 i6gNgtcuVIrZiic/gSzrlPJ6m/MY2q76AOs4tDharEaLuC7FmKFabp0U9v7QW0NI1H
	 5LSvLsLn+XbPvxGwgiWPSdVofN+q/mt/1XEs8CS4FDItJv6+5SWn73B0wmWn4X30Hs
	 PxiNxAA7id0ebE/PwZAGm4pdiURw+tRr06p3wtEOyug4X3lyH+SW4JTYS+Uk5kLvBB
	 OimrqwdhgJjIA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/9] Input: cap11xx - add reset gpio support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260612072237.1177304-7-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-7-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:31:49 +0000
Message-Id: <20260612073150.185DB1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310731-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B561A6773D3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] Unintended glitch on the reset line during probe due to GPIOD_OU=
T_LOW initialization.

Pre-existing issues:
- [High] Unvalidated keycodes from Device Tree cause an out-of-bounds heap =
write.
--

commit 5befbfbb7019f474fe2d2d2e0e3da23976b75ada
Author: Jun Yan <jerrysteve1101@gmail.com>

Input: cap11xx - add reset gpio support

Some CAP11xx devices (CAP1126/CAP1188) have a dedicated RESET pin. Add
hardware reset operation to improve device reliability and ensure proper
initialization on probe.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 686174722204c..75746a8a22332 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c

[ ... ]

> @@ -452,6 +457,17 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c_=
client)
>  	if (IS_ERR(priv->regmap))
>  		return PTR_ERR(priv->regmap);
> =20
> +	priv->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LO=
W);
> +	if (IS_ERR(priv->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
> +				     "Failed to get 'reset' GPIO\n");
> +	if (priv->reset_gpio) {
> +		gpiod_set_value_cansleep(priv->reset_gpio, 1);

[Severity: Medium]
Does initializing the reset GPIO with GPIOD_OUT_LOW cause an unintended
glitch on the reset line?

When devm_gpiod_get_optional() is called with GPIOD_OUT_LOW, the GPIO line
is immediately driven to its logical low (inactive) state. If the hardware
or bootloader previously left the device in a reset state, this prematurely
pulls it out of reset.

The driver then immediately calls gpiod_set_value_cansleep() to assert
the reset. This sequence creates an extremely short, unintended
de-assert/assert glitch on the reset pin, which could violate hardware
timing requirements.

Would it be safer to request the reset GPIO with GPIOD_OUT_HIGH (or
GPIOD_ASIS) to guarantee it starts in the logically asserted state before
we hold it for the required minimum duration?

[Severity: High]
This is a pre-existing issue, but does this code overflow the keybit array
if a device tree provides unvalidated keycodes?

Later in cap11xx_i2c_probe(), the driver loops over the keycodes read from
the device tree:

for (i =3D 0; i < cap->num_channels; i++)
        __set_bit(priv->keycodes[i], priv->idev->keybit);

Since __set_bit() does not perform bounds checking, if a device tree
specifies a keycode value greater than or equal to KEY_MAX, this will
write outside the bounds of the keybit array in the input_dev structure,
clobbering adjacent memory in the kernel heap.

Should we add a check against KEY_MAX before setting the bit?

> +		usleep_range(CAP11XX_T_RST_FILT_MIN_US, CAP11XX_T_RST_FILT_MIN_US * 2);
> +		gpiod_set_value_cansleep(priv->reset_gpio, 0);
> +		msleep(CAP11XX_T_RST_ON_MIN_MS);
> +	}
> +
>  	error =3D regmap_read(priv->regmap, CAP11XX_REG_PRODUCT_ID, &val);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072237.1177=
304-1-jerrysteve1101@gmail.com?part=3D6

