Return-Path: <devicetree+bounces-316911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4wjMGqtGQmpR3gkAu9opvQ
	(envelope-from <devicetree+bounces-316911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:19:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B21AA6D8D0F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:19:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jBgsRQ8k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316911-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316911-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18EB5304809D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FE03BAD9B;
	Mon, 29 Jun 2026 10:15:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3A63C1094
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 10:15:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782728128; cv=none; b=MmShN7yDePmZopgrSvxzFRtiD9wHhPc7PnPkOfw5MNyfLlGTJLQ7cLTaIas7sana8aFT2EvaASL8H/W6p36gr6UNdgBGWJcYIdWfgO+YlNfwZKKwirFmF39dTjkfVeZ7no+0fmkWV2LBvmAMFO59KztEJ/E/UVLcgJtvc4gB3ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782728128; c=relaxed/simple;
	bh=g5Vp3F3kBKS6C3iglZC5osVJ0ebhmD+qWRgzweWFSFg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=C4rlA4SYP5tOvo1j/LMZAyPa1gvegDP5LAYCz7Zkt5JYmg4S60lKcnhoqBbmxsq/3uGP0FSxe0wUvKNVP60Wt9FWlS4csbNiHlzo3HZmSs4+o5PNNzbMm6yiRkpLyti9yfGXHxKLPAzj6HJh5g1sYazGJnr6DN/cQEP/yyMHqmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBgsRQ8k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E74511F000E9;
	Mon, 29 Jun 2026 10:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782728127;
	bh=6vdlnDdUgcc9Xz19bp5PVo7QjvF8LYom5ibAi7BLmH4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jBgsRQ8k0L705ULkbP9cL+tWneLa1t5afRXifHZGr/CXS9190hiDjWhCUJiFGddky
	 i4tkE5TEZa2l5qsCr7C/HzTklrEcQHZnaeIYE3H4Fq79JKCWydk/GKtmoiHN8ixR9t
	 KXp+mHeFkv43qp5DB+0UBLgdTysi8uvILy09HHPkJWswViqHb0alEDGaQ3x49vtIo7
	 JOPkZaHBwGneGpr8O/BYDyKelaEx/stN8evp414iQmdE1gb9MMr3rbtPjwpucvPXbT
	 gxYZ4hjbQuX3wMpKd1/b3jzKwTFlJfGBTiY8fY5ArlJtIDik2d799GMh4jzIGUTgqW
	 dh4lJqUyaa70w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] iio: dac: ad3530r: Add support for
 AD3532R/AD3532
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kim Seer Paller" <kimseer.paller@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629-iio-ad3532r-support-v3-4-f6e4f4abebbe@analog.com>
References: <20260629-iio-ad3532r-support-v3-0-f6e4f4abebbe@analog.com>
 <20260629-iio-ad3532r-support-v3-4-f6e4f4abebbe@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 10:15:26 +0000
Message-Id: <20260629101526.E74511F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316911-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B21AA6D8D0F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `max_register` configuration for AD3532R is off-by-one, perman=
ently breaking writes to the highest channel.
--

commit 471c601807c7303ea879a6246deaa17af7989f08
Author: Kim Seer Paller <kimseer.paller@analog.com>

iio: dac: ad3530r: Add support for AD3532R/AD3532

The AD3532R/AD3532 is a 16-channel, 16-bit voltage output DAC with a
dual-bank register architecture. This commit adds AD3532R-specific register
definitions, channel specs, per-bank arrays, and per-chip regmap_config.

> diff --git a/drivers/iio/dac/ad3530r.c b/drivers/iio/dac/ad3530r.c
> index 3f7c983739fc7..8e17e738d4c8c 100644
> --- a/drivers/iio/dac/ad3530r.c
> +++ b/drivers/iio/dac/ad3530r.c

[ ... ]

> @@ -39,6 +40,23 @@
>  #define AD3531R_SW_LDAC_TRIG_A			0xDD
>  #define AD3531R_INPUT_CH			0xE3
> =20
> +/* AD3532R/AD3532 has two register banks: bank 0 at 0x10xx, bank 1 at 0x=
30xx */
> +#define AD3532R_INTERFACE_CONFIG_A_0		0x1000
> +#define AD3532R_OUTPUT_OPERATING_MODE_0		0x1020
> +#define AD3532R_OUTPUT_OPERATING_MODE_1		0x1021
> +#define AD3532R_OUTPUT_CONTROL_0		0x102A
> +#define AD3532R_REFERENCE_CONTROL_0		0x103C
> +#define AD3532R_SW_LDAC_TRIG_0			0x10E5
> +#define AD3532R_INPUT_CH_0			0x10EB
> +#define AD3532R_INTERFACE_CONFIG_A_1		0x3000
> +#define AD3532R_OUTPUT_OPERATING_MODE_2		0x3020
> +#define AD3532R_OUTPUT_OPERATING_MODE_3		0x3021
> +#define AD3532R_OUTPUT_CONTROL_1		0x302A
> +#define AD3532R_REFERENCE_CONTROL_1		0x303C
> +#define AD3532R_SW_LDAC_TRIG_1			0x30E5
> +#define AD3532R_INPUT_CH_1			0x30EB
> +#define AD3532R_MAX_REG_ADDR			0x30F9

[Severity: High]
Does this max register bound leave out the second byte for channel 15?

Looking at ad3532r_input_ch_reg(), the base register for channel 15 is
calculated as:
2 * (15 - 8) + AD3532R_INPUT_CH_1 (0x30EB) =3D 0x30F9.

Since this is a 16-bit DAC, writing a value to channel 15 requires writing
to both 0x30F9 and 0x30FA. Because ad3532r_regmap_config sets max_register
to 0x30F9, will regmap reject bulk writes to the final byte and return
-EINVAL, effectively making channel 15 unusable?

It looks like this off-by-one pattern might have been copied from the
pre-existing AD3530R_MAX_REG_ADDR configuration.

> +
>  #define AD3530R_SLD_TRIG_A			BIT(7)
>  #define AD3530R_OUTPUT_CONTROL_RANGE		BIT(2)
>  #define AD3530R_REFERENCE_CONTROL_SEL		BIT(0)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-iio-ad3532=
r-support-v3-0-f6e4f4abebbe@analog.com?part=3D4

