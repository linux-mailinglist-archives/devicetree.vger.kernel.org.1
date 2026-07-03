Return-Path: <devicetree+bounces-320013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id okEVFTqPR2rObAAAu9opvQ
	(envelope-from <devicetree+bounces-320013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 12:30:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E55CB701393
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 12:30:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KzdMIHFH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320013-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320013-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 37F693003828
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 10:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644F03B961A;
	Fri,  3 Jul 2026 10:30:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B883BADB1
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 10:30:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783074616; cv=none; b=bYMxfqF+KBSJl6EJObwyAH35PKlEMyeKd46FfdrIk/II3QhPkcS7LXqWqp2SJFgFjqMgvD8M4cKsLF/M8WDmazfzNUN1LsRvtJpbhSroLRkm5cyBiCV1cLX/ziNC7bn99M7dZSryDBONIdv5RdK6AjK7FLV0IYHyqIEWMATaKgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783074616; c=relaxed/simple;
	bh=/VzsithZm+yJHsE/6vQH5YZjbsTm9cfGZNTVmmKzqT4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qdLr2gKOeJ9+Lt+EVlv6XmR+foMxSr5VV3Rzgej8s0x5sQm/8ZhSvRfqDp+4M2iggoC6F7KGt55kJnLjgwZHZgz2u8FOSxO2B4MKrA3Dxzj160l284LyyhAiZFJoMCOcEAN78z7W/A+oAw3wZOyxQfg32U5my4ARTl10Cwa29xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzdMIHFH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF1B1F000E9;
	Fri,  3 Jul 2026 10:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783074614;
	bh=KHOzUmKYKOogGnTf6pd5tg/Yl0vRSjTaIDS1cdmj99M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KzdMIHFH49vKuXPd1Y/QMIK7h+BJkTk2mqcrJK6rnlwzE0Mh8U0MKsZAsC1gbDVeE
	 YDaozQKucWACgjcdOGVdr/yQ1S8aUhxq6o7a9yB3kSqU+ERfvrwPQvcKAF1UDahXSq
	 cdTm72Mw/jiDJH0pNYKPU74hw5O9tk/ZWcnRjnAsVnBUQsH9LYiGk/29yf1NP5/n6j
	 VWq2/h6bfd1MbO009R2JTh1D9/IJZSVuRpKJRfe7Sz5da7xIrJujLKVfIZmw7W0EH4
	 H6YKWJ6nk+FI9vhr5QN7GIfTHEWbwQNlPEEQmFdLX4BLjUSSeenX6/14zuHNbkhiu1
	 GlL6NsGw5voPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 6/6] iio: dac: ad3530r: Add support for
 AD3532R/AD3532
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kim Seer Paller" <kimseer.paller@analog.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260703-iio-ad3532r-support-v4-6-69d9a336f4e8@analog.com>
References: <20260703-iio-ad3532r-support-v4-0-69d9a336f4e8@analog.com>
 <20260703-iio-ad3532r-support-v4-6-69d9a336f4e8@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 10:30:13 +0000
Message-Id: <20260703103014.8CF1B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320013-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,analog.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E55CB701393

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The max_register parameter in the regmap config is incorrectly set=
 to the base address of the highest channel, preventing reading and writing=
 16-bit values for the last channel.
--

commit 977833b9e38150088aceb9bef325ef263ed54eee
Author: Kim Seer Paller <kimseer.paller@analog.com>

iio: dac: ad3530r: Add support for AD3532R/AD3532
   =20
This commit adds support for the AD3532 and AD3532R 16-channel 16-bit volta=
ge
output DACs. It adds a new register map, channel specifications, and powerd=
own
handlers while reusing shared table-driven configuration steps.

> diff --git a/drivers/iio/dac/ad3530r.c b/drivers/iio/dac/ad3530r.c
> --- a/drivers/iio/dac/ad3530r.c
> +++ b/drivers/iio/dac/ad3530r.c
[ ... ]
> @@ -39,6 +40,25 @@
>  #define AD3531R_SW_LDAC_TRIG_A			0xDD
>  #define AD3531R_INPUT_CH			0xE3
> =20
> +/* AD3532R/AD3532 bank 0 registers (channels 0-7) */
> +#define AD3532R_INTERFACE_CONFIG_A_0		0x1000
> +#define AD3532R_OUTPUT_OPERATING_MODE_0		0x1020
> +#define AD3532R_OUTPUT_OPERATING_MODE_1		0x1021
> +#define AD3532R_OUTPUT_CONTROL_0		0x102A
> +#define AD3532R_REFERENCE_CONTROL_0		0x103C
> +#define AD3532R_SW_LDAC_TRIG_0			0x10E5
> +#define AD3532R_INPUT_CH_0			0x10EB
> +
> +/* AD3532R/AD3532 bank 1 registers (channels 8-15) */
> +#define AD3532R_INTERFACE_CONFIG_A_1		0x3000
> +#define AD3532R_OUTPUT_OPERATING_MODE_2		0x3020
> +#define AD3532R_OUTPUT_OPERATING_MODE_3		0x3021
> +#define AD3532R_OUTPUT_CONTROL_1		0x302A
> +#define AD3532R_REFERENCE_CONTROL_1		0x303C
> +#define AD3532R_SW_LDAC_TRIG_1			0x30E5
> +#define AD3532R_INPUT_CH_1			0x30EB
> +#define AD3532R_MAX_REG_ADDR			0x30F9

[ ... ]

> @@ -369,12 +490,40 @@ static const unsigned int ad3531r_op_mode[] =3D {
>  	AD3530R_OUTPUT_OPERATING_MODE_0,
>  };
> =20
> +static const unsigned int ad3532r_if_config[] =3D {
> +	AD3532R_INTERFACE_CONFIG_A_0,
> +	AD3532R_INTERFACE_CONFIG_A_1,
> +};
> +
[ ... ]
> +static const struct regmap_config ad3532r_regmap_config =3D {
> +	.reg_bits =3D 16,
> +	.val_bits =3D 8,
> +	.max_register =3D AD3532R_MAX_REG_ADDR,
> +};

[Severity: High]
Does this configuration prevent 16-bit reads and writes on the highest chan=
nel
(channel 15)?

Looking at ad3532r_input_ch_reg(), the input register for channel 15 resolv=
es
to 0x30F9 (0x30EB + 2 * 7). Since ad3530r_dac_write() and ad3530r_read_raw()
both perform a 2-byte bulk regmap access starting at this address:

ad3530r_dac_write() {
    ...
    ret =3D regmap_bulk_write(st->regmap, st->chip_info->input_ch_reg(chan),
                            &st->buf, sizeof(st->buf));
    ...
}

Regmap will check if the start address + length - 1 <=3D max_register. For
channel 15, this evaluates to 0x30FA <=3D 0x30F9, which fails the bounds ch=
eck
and returns -EINVAL.

Should AD3532R_MAX_REG_ADDR be set to 0x30FA to accommodate the second byte=
 of
the final channel's input register?

(Note that AD3530R_MAX_REG_ADDR might also have this exact same issue for
channel 7 in the pre-existing code).

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-iio-ad3532=
r-support-v4-0-69d9a336f4e8@analog.com?part=3D6

