Return-Path: <devicetree+bounces-324556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uAmvK+kdUWpS/gIAu9opvQ
	(envelope-from <devicetree+bounces-324556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:29:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F392D73C965
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:29:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ytr13lpG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324556-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324556-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5AE13005D1B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FBF835CBCB;
	Fri, 10 Jul 2026 16:29:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5194A2EEE91
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 16:29:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783700952; cv=none; b=oHGVMVGMls+KRKoY1NvF2q5x66Le8HrsHxsrQG3Tpb6JVXSq7y/DLQZ5zT1y8+C69oMYhZcbhK8fjoy7vxrBGfMwZp+gecdrssCLPAbVk8Wy9sBN8AYm2omjNpT8Hbxj6G8fMl7zFQSaOwGIsRlmGSLDfn1UkpGaFfc3XvrAOhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783700952; c=relaxed/simple;
	bh=Rq8YqJ9NLgqyqvPj7LxjHzQuMLhKjn3Vj1369U1QOUs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eX401Vt08UTXJBZC9e5CBUcrZXNckyDbTneQ8H26kaGfeZfclI1Z0LUazhyNnkaDxT1KG8hoomoi1UUXmnl993zSjeOXlicAan+ZY8sARxTiXy5Iy7QcY7Z5HT2xA68kGekKazXwu+2ITXVwabOWUlmnFAz3+P8QQmP2RwWNXNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytr13lpG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAA851F000E9;
	Fri, 10 Jul 2026 16:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783700950;
	bh=BBSF3xuI4V+SsSwLMWr9XrtOkQIQVUAXohExu11eHEE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ytr13lpGZjZU19duyoZgw67JnPe4RlrVHlSRzS94DNVNdwfuA8H8AxhUdWig1GK1v
	 y0kn4H1kcHnBhnKtHN3gP95EOYkl/Dbm5mnuqmOq64zBc4vDwd6EOg10/w8kj0kcfA
	 ypAR4oqIk/TUWOoGvBmFes5N63zhPB4/ojRJaoWp7nsr1D+pWceeEJxlOMgDfmnuAk
	 SAxAMgm+ghGX/bcON/cqWThqd6M7Z698zXDYv4vJXwoGZZf8C/zmcCqJKdxEgGbjMH
	 ZlOFHXDnd4JMoNX2BpVgoLCw4A3mTiwf2ej6+KbHNlVPN/P8piVIQefhe8YJrL48b0
	 qkgnpq7TXkh6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] regulator: axp20x: add support for the AXP318W
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jerome Brunet" <jbrunet@baylibre.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260710-axp318-regulator-v2-3-ee5f1c56b49f@baylibre.com>
References: <20260710-axp318-regulator-v2-0-ee5f1c56b49f@baylibre.com>
 <20260710-axp318-regulator-v2-3-ee5f1c56b49f@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 16:29:10 +0000
Message-Id: <20260710162910.AAA851F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324556-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,arm.com:email,baylibre.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F392D73C965

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The macro `AXP_DESC_RANGES_DELAY_OPS` ignores its `_ops` parameter=
, discarding custom regulator operations.
- [Medium] In `axp318_threshold_check`, negative error codes from `is_enabl=
ed` are incorrectly treated as false (enabled).
- [Low] Spelling error in the minimum dropout comment block.
- [Low] Unused defined constants for the number of DCDC voltages.
--

--- Patch [3]: [PATCH v2 3/3] regulator: axp20x: add support for the AXP318=
W ---
commit f7b8096eeee3c9cefed0efe26a8d34e4c6a08d5a
Author: Andre Przywara <andre.przywara@arm.com>

regulator: axp20x: add support for the AXP318W

The patch introduces regulator support for the X-Powers AXP318W PMIC,
describing the chip's voltage settings, switch registers, and how the
voltages are encoded.

Reviewed-by: Mark Brown <broonie@kernel.org>
Co-developed-by: Jerome Brunet <jbrunet@baylibre.com>

> diff --git a/drivers/regulator/axp20x-regulator.c b/drivers/regulator/axp=
20x-regulator.c
> index da891415efc0b..bc8d3aa2bd672 100644
> --- a/drivers/regulator/axp20x-regulator.c
> +++ b/drivers/regulator/axp20x-regulator.c
[ ... ]
> @@ -138,6 +138,31 @@
>  #define AXP313A_DCDC_V_OUT_MASK		GENMASK(6, 0)
>  #define AXP313A_LDO_V_OUT_MASK		GENMASK(4, 0)
> =20
> +#define AXP318_DCDC1_V_OUT_MASK		GENMASK(4, 0)
> +#define AXP318_DCDC2_V_OUT_MASK		GENMASK(6, 0)
> +#define AXP318_LDO_V_OUT_MASK		GENMASK(4, 0)
> +#define AXP318_ELDO_V_OUT_MASK		GENMASK(5, 0)
> +#define AXP318_DCDC2_NUM_VOLTAGES	88
> +#define AXP318_DCDC6_NUM_VOLTAGES	128
> +#define AXP318_DCDC7_NUM_VOLTAGES	103
> +#define AXP318_DCDC8_NUM_VOLTAGES	119
> +#define AXP318_THRESHOLD_VOLTAGE	1540000
> +/*
> + * FIXME:
> + * Some LDOs of the AXP318 may be fed by different supplies and
> + * the documentation repeatidly warns that output voltage must

[Severity: Low]
This isn't a bug, but there's a typo here ("repeatidly" instead of
"repeatedly").

> + * be less than the supply, which is the case for any LDO really.
[ ... ]
> -#define AXP_DESC_RANGES_DELAY(_family, _id, _match, _supply, _ranges, _n=
_voltages,	\
> -			_vreg, _vmask, _ereg, _emask, _ramp_delay)	\
> +#define AXP_DESC_RANGES_DELAY_OPS(_family, _id, _match, _supply, _ranges=
,	\
> +				  _n_voltages, _vreg, _vmask, _ereg, _emask,	\
> +				  _ramp_delay, _ops)				\
>  	[_family##_##_id] =3D {							\
>  		.name		=3D (_match),					\
>  		.supply_name	=3D (_supply),					\
> @@ -436,10 +481,23 @@
>  		.enable_mask	=3D (_emask),					\
>  		.linear_ranges	=3D (_ranges),					\
>  		.n_linear_ranges =3D ARRAY_SIZE(_ranges),				\
> -		.ramp_delay =3D (_ramp_delay),					\
> +		.ramp_delay	=3D (_ramp_delay),				\
> -		.ops		=3D &axp20x_ops_range,				\
> +		.ops		=3D &axp20x_ops_range,				\

[Severity: High]
Is it intentional that the .ops field is hardcoded to &axp20x_ops_range her=
e,
rather than using the _ops macro parameter?

This appears to silently discard the custom axp318_threshold_ops_range pass=
ed
in by AXP_DESC_RANGES_THRESHOLD, which would cause the protective voltage
threshold checks to be ignored when configuring the regulator.

>  	}
[ ... ]
> +static int axp318_threshold_check(struct regulator_dev *rdev,
> +				  unsigned int sel)
> +{
> +	int old_sel, old_uV, new_uV;
> +
> +	/* Only applicable if the regulator is enabled */
> +	if (!rdev->desc->ops->is_enabled(rdev))
> +		return 0;

[Severity: Medium]
Could this check inadvertently ignore I2C or regmap errors?

If regulator_is_enabled_regmap() fails and returns a negative error code li=
ke
-EIO, !(-EIO) evaluates to false. This means the function will continue
executing instead of propagating the error or returning early, potentially
leading to incorrect state transitions.

> +
> +	old_sel =3D rdev->desc->ops->get_voltage_sel(rdev);
[ ... ]
> +static const struct regulator_desc axp318_regulators[] =3D {
> +	AXP_DESC(AXP318, DCDC1, "dcdc1", "vin19", 1000, 3400, 100,
> +		 AXP318_DCDC1_CONTROL, AXP318_DCDC1_V_OUT_MASK,
> +		 AXP318_DCDC_OUTPUT_CONTROL1, BIT(0)),
> +	AXP_DESC_RANGES(AXP318, DCDC2, "dcdc2", "vin23",
> +			axp318_dcdc2_ranges, 88,

[Severity: Low]
Should these newly defined constants be used here?

The AXP318_DCDC2_NUM_VOLTAGES (and similar) macros were defined earlier in
this patch, but the array initialization seems to use hardcoded integers li=
ke
88 and 128 instead.

> +			AXP318_DCDC2_CONTROL, AXP318_DCDC2_V_OUT_MASK,
> +			AXP318_DCDC_OUTPUT_CONTROL1, BIT(1)),
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-axp318-reg=
ulator-v2-0-ee5f1c56b49f@baylibre.com?part=3D3

