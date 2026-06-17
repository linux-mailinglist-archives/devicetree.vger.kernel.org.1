Return-Path: <devicetree+bounces-313182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uvl8C7sQM2o89AUAu9opvQ
	(envelope-from <devicetree+bounces-313182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:25:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C054669C85D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:25:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C1xiEV7+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313182-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313182-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1ADCA3016C6F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 21:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD9344BC90;
	Wed, 17 Jun 2026 21:25:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D771388E45;
	Wed, 17 Jun 2026 21:25:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781731511; cv=none; b=FDtEd8qPB49dwJcueFubMoUgRY2djcS4RPhjQjEtk+hVi0j0sWJAsr07h2ILNyMEFrCBLuVZ7ElKK2EFiwrXW93WwO4eLrq8GwX7bDWhFzjwdTMJRz6pbSPvl6vOzVJdP5lCplYi8WeqmJ/L90hOPYmqa/l6L2T/xsPMoEzdwJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781731511; c=relaxed/simple;
	bh=ER0xNfAjcxx0SIE5ugouP4CAq+BVNn6S7zVhKo+UlIc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Oo2xLHizXyEGuRHg/p57GfsZ4B54wdNOVIQXGfh+J1I900eJ1/WpO/obmjaxZM8h38dy4Ai098F+JcmlsrXdYdkPq9OywNSdVKHoKrE0rqItiIHJRiZEeIxgdYRWMhzoYwAZt7Eaecd94sbOLItzprfp28SCFqbKCZnYwhw7mRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1xiEV7+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5B6D1F000E9;
	Wed, 17 Jun 2026 21:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781731510;
	bh=D/6QFqtzd+Y9CJAHv0mibgfsTHQbIHtmcOPsGWvVzoY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C1xiEV7+EPydV6Ifh1ELz6+m3eNpk/rXbPDadetKq0QPNx0C6tkfWPNhGK6ZLFTDA
	 7zV1NqiZEECGbqf70lyGGwM5SdS/EVDn8akioH5KlsianUBrHFiMqfxV1G2UxBZX9T
	 cjCIZGwTBOEnkS162mAVWgedqZoRTHOjsLuE97h6PGFSeva4fGZ3DmtTX3YUOieFG2
	 wRVA/jedpqMo7TptYnO0WHLfjYoz9JfCdjAFBiV9x07PsJYxszSC1ccSycve4xQugW
	 3f1mPxrvw7ZEH0SBl8uk7l8ZZfHoCXw2PJp0/wr6CDOG1JTteMZ935T/uMtUQCtT4G
	 QA1uhMunmKrBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 10/10] Input: cap11xx - add support for CAP1114
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260617150318.753148-11-jerrysteve1101@gmail.com>
References: <20260617150318.753148-1-jerrysteve1101@gmail.com>
 <20260617150318.753148-11-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 21:25:09 +0000
Message-Id: <20260617212509.D5B6D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313182-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C054669C85D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Out-of-bounds write in `cap11xx_i2c_probe` due to unvalidated Devi=
ce Tree keycodes.
--

commit 42cef688f767435c4da8af0dd519be20d4164735
Author: Jun Yan <jerrysteve1101@gmail.com>

CAP1114 is a 14-channel capacitive touch sensor with 11 LED outputs
and hardware reset support.

This commit adds support for the CAP1114 touch sensor, updating the driver
to handle up to 14 channels and 11 LED outputs. It introduces logic to
read from a secondary status register to support the expanded channel count
and configures grouped sensors as independent inputs.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 275eb79a7193..865c58533eb9 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c

[ ... ]

> @@ -292,6 +307,17 @@ static int cap11xx_init_keys(struct cap11xx_priv *pr=
iv)
>  	of_property_read_u32_array(node, "linux,keycodes",
>  				   priv->keycodes, priv->model->num_channels);

[Severity: High]
This is a pre-existing issue, but I noticed that these keycodes are read
directly from the Device Tree into the priv->keycodes array without any
bounds validation.

Later during initialization in cap11xx_i2c_probe(), the driver loops over
these keycodes and sets bits using an unchecked macro:

	__set_bit(priv->keycodes[i], priv->idev->keybit);

If an exceptionally large keycode (greater than KEY_MAX) is provided via a
Device Tree overlay, could this cause an out-of-bounds write on the
priv->idev->keybit array and corrupt adjacent heap memory? Should we verify
that each keycode read from the Device Tree is less than or equal to KEY_MA=
X?

> +
> +	/*
> +	 * CAP1114 needs dedicated configuration to split
> +	 * grouped sensors into independent inputs.
> +	 */
> +	if (priv->model->has_grouped_sensors) {
> +		error =3D regmap_set_bits(priv->regmap, CAP1114_REG_CONFIG2,
> +					CAP1114_REG_CONFIG2_VOL_UP_DOWN);
> +		if (error)
> +			return error;
> +	}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617150318.7531=
48-1-jerrysteve1101@gmail.com?part=3D10

