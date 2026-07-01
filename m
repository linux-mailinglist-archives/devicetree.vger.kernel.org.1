Return-Path: <devicetree+bounces-318660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XQSJDvweRWp77QoAu9opvQ
	(envelope-from <devicetree+bounces-318660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:06:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 464336EE814
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:06:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cYYEzzHg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318660-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318660-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6F7A31EE9D3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4283348AE0C;
	Wed,  1 Jul 2026 13:33:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28DE33F5B1
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:33:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782912817; cv=none; b=pIOH281C02xwyTFYhCUMrjgR05GPgoBhzrGXtd43XTBcY/ymJniZ3dxlmjKBQbrst/8BeDIqsf5cA0s3BVufY1//Gc6BDHxTNX77DcQBgi748ylGhAHLWGCA4UTiRPcAoxRdz5SK2gYimksz70ATOUHB/keW6sT/QYk8AiCCwis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782912817; c=relaxed/simple;
	bh=5OcE61H048FTNXEOCRCI20K8K8i/pTuoBOEMJrOmzEM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e3b2UlDrZ4c6+ckaTlpE6shyQc/vBxZxci+ag5x6FhI93japAx8pwwXFc8Y74pTJpYAB12KaRlI8YN8rbw6dHy39XT7/6KYsYq2sSTwTAnmF5la4xMuaKAJmHSy4UJhE0r++r5wGiwjT2cB1bLJLRVwuXNQqpSiuzZHA1k2Rm7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYYEzzHg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9999C1F000E9;
	Wed,  1 Jul 2026 13:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782912815;
	bh=zmQX4gZGomvBLS3paqlaqfBsDi3m2QhzKc1TXzNJvww=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cYYEzzHgiowdgavFwAaPMq33ZWruEIo397P6QgQAQCakL/BiF4Pv9eZwpr5+c8y+Y
	 VWRN0bnt7P2dwtJKKnR+BcUXiFT6VEvKjDPKgP9lDAoMt81+OayijHTdVyKLzMmspl
	 M4kn0omrvfeE3nTBRWlR6jdqR845ga+wXLaSfvBMm5BqzAcvzrXNezYqToa/VzqHEI
	 VFBV20Fkc7ZnErvvYnTJRo+yOxQ2nrZkjZkvhBhI0SVCmcra1bhi1YfI/xZTwAyLe5
	 WCAsTi7DR0mgNbnIz5hYKYgKnBhaaG8o6SKb3UZmk2rYRHBwYzooepECL4YgD4LwD4
	 gBNzuO9Kg/gDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] clk: si544: add support for si549
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?UGF2ZWwgTMO2Ymw=?= <pavel@loebl.cz>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701130927.3858536-3-pavel@loebl.cz>
References: <20260701130927.3858536-1-pavel@loebl.cz>
 <20260701130927.3858536-3-pavel@loebl.cz>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:33:34 +0000
Message-Id: <20260701133334.9999C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318660-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pavel@loebl.cz,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,loebl.cz:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 464336EE814

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

New issues:
- [High] Missing validation of `i2c_get_match_data()` result leads to a NUL=
L pointer dereference.
- [Low] Unused 'desc' field added to 'struct clk_si544'.
- [Low] Calculation functions take an unused 'data' parameter but rely on c=
aller-initialized output structs.

Pre-existing issues:
- [High] Unconditional dereference of `client->dev.of_node` if Device Tree =
is not used.
- [High] Unvalidated hardware register reads can lead to a hardware divide-=
by-zero exception.
--

commit cd7f9cb7be2c12aa433f045f924c907e1d3f9ecc
Author: Pavel L=C3=B6bl <pavel@loebl.cz>

clk: si544: add support for si549

This commit adds support for the Si549 programmable clock generator,
which differs from the Si544 in its internal oscillator frequency. It
also adds support for three speed grade variants and fixes the maximum
frequency limit for the Si544 C variant.

> diff --git a/drivers/clk/clk-si544.c b/drivers/clk/clk-si544.c
> index 09c06ecec1a52..2643546eb9405 100644
> --- a/drivers/clk/clk-si544.c
> +++ b/drivers/clk/clk-si544.c
> @@ -56,11 +58,17 @@
>  #define DELTA_M_FRAC_NUM	19
>  #define DELTA_M_FRAC_DEN	20000
> =20
> +struct si544_clk_desc {
> +	unsigned long max_freq;
> +	unsigned long xo_freq;
> +};
> +
>  struct clk_si544 {
> +	const struct si544_clk_desc *desc;

[Severity: Low]
Is this desc field needed? It appears to be declared but never populated
or accessed anywhere in the driver, while chip_info is used instead.

>  	struct clk_hw hw;
>  	struct regmap *regmap;
>  	struct i2c_client *i2c_client;
> -	unsigned long  max_freq;
> +	const struct si544_clk_desc *chip_info;
>  };
>  #define to_clk_si544(_hw)	container_of(_hw, struct clk_si544, hw)

[ ... ]

> @@ -193,14 +204,15 @@ static bool is_valid_frequency(const struct clk_si5=
44 *data,
>  	if (frequency < SI544_MIN_FREQ)
>  		return false;
> =20
> -	return frequency <=3D data->max_freq;
> +	return frequency <=3D data->chip_info->max_freq;
>  }
> =20
>  /* Calculate divider settings for a given frequency */
> -static int si544_calc_muldiv(struct clk_si544_muldiv *settings,
> -	unsigned long frequency)
> +static int si544_calc_muldiv(const struct clk_si544 *data,
> +	struct clk_si544_muldiv *settings, unsigned long frequency)
>  {
>  	u64 vco;
> +	u32 fxo =3D settings->xo_freq;

[Severity: Low]
Does this code need to read xo_freq from the settings output struct rather
than utilizing the explicitly provided data context pointer? The data
parameter seems completely unused in this function.

>  	u32 ls_freq;
>  	u32 tmp;
>  	u8 res;

[ ... ]

> @@ -254,19 +266,20 @@ static int si544_calc_muldiv(struct clk_si544_muldi=
v *settings,
>  }
> =20
>  /* Calculate resulting frequency given the register settings */
> -static unsigned long si544_calc_center_rate(
> +static unsigned long si544_calc_center_rate(const struct clk_si544 *data,
>  		const struct clk_si544_muldiv *settings)
>  {
>  	u32 d =3D settings->hs_div * BIT(settings->ls_div_bits);
> +	u32 fxo =3D settings->xo_freq;
>  	u64 vco;
> =20
>  	/* Calculate VCO from the fractional part */
> -	vco =3D (u64)settings->fb_div_frac * FXO;
> -	vco +=3D (FXO / 2);
> +	vco =3D (u64)settings->fb_div_frac * fxo;
> +	vco +=3D (fxo / 2);
>  	vco >>=3D 32;
> =20
>  	/* Add the integer part of the VCO frequency */
> -	vco +=3D (u64)settings->fb_div_int * FXO;
> +	vco +=3D (u64)settings->fb_div_int * fxo;
> =20
>  	/* Apply divider to obtain the generated frequency */
>  	do_div(vco, d);

[Severity: High]
This is a pre-existing issue, but could this do_div() trigger a hardware
divide-by-zero exception?

If the hardware is faulty or unresponsive, si544_get_muldiv() might read
0 for SI544_REG_HS_DIV from I2C without validating it. This would cause
settings->hs_div to evaluate to 0, which then results in d being 0 here.

>  	return vco;
>  }

[ ... ]

> @@ -446,7 +460,7 @@ static int si544_probe(struct i2c_client *client)
>  	init.num_parents =3D 0;
>  	data->hw.init =3D &init;
>  	data->i2c_client =3D client;
> -	data->max_freq =3D (uintptr_t)i2c_get_match_data(client);
> +	data->chip_info =3D i2c_get_match_data(client);

[Severity: High]
Can i2c_get_match_data() return NULL here if the device is instantiated via
sysfs new_device with a generic fallback name or driver_override?

If so, storing NULL in data->chip_info could lead to a NULL pointer
dereference, as it is dereferenced unconditionally in si544_get_muldiv():

drivers/clk/clk-si544.c:si544_get_muldiv() {
    ...
    settings->xo_freq =3D data->chip_info->xo_freq;
    ...
}

Should the return value of i2c_get_match_data() be validated?

> =20
>  	if (of_property_read_string(client->dev.of_node, "clock-output-names",
>  			&init.name))

[Severity: High]
This is a pre-existing issue, but does this fallback path unconditionally
dereference client->dev.of_node if Device Tree is not used?

If the device is instantiated on a non-DT system (e.g. via I2C board info,
ACPI, or sysfs instantiation), client->dev.of_node will be NULL.
of_property_read_string() will return an error, causing the fallback path
to dereference client->dev.of_node->name unconditionally:

drivers/clk/clk-si544.c:si544_probe() {
    ...
    if (of_property_read_string(client->dev.of_node, "clock-output-names",
            &init.name))
        init.name =3D client->dev.of_node->name;
    ...
}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701130927.3858=
536-1-pavel@loebl.cz?part=3D2

