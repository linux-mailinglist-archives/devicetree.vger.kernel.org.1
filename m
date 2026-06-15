Return-Path: <devicetree+bounces-311783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dlh5Nga9L2rDFQUAu9opvQ
	(envelope-from <devicetree+bounces-311783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:51:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 362B8684BD1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:51:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KTfngBrC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311783-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311783-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5633C301C587
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5602D9EDC;
	Mon, 15 Jun 2026 08:46:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31CC3BE624
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:46:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513207; cv=none; b=likZLEUZaqY4lZvdH+Jk1Cwpa8jf8JsVkMNfsjH6jTdlWbxNyk8xpNCCIATIydeZhhtx12U4Hf2utTFtYeg454n365Kc1G1gtFGNlotGNWFe/DS1/ugI0TvH7pullUlRoAHLpfC1dO3oHO5OvC+hgB9PrD3cQVJcRsN/P2Tyy30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513207; c=relaxed/simple;
	bh=QKJ/u71PE0jokTQ8Xoghx/Q+Qit3648UmcMYtn+AmoQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EftUUk5UhKJtXoKc3I3ahaDVKMj1kdf/sTg6eHRbbrJxB4C0Kj9PzbFD45Asuy/65lRozm66Eqq0py9+6Ys/2bWwSGGK/XQnN9VTux9vAV/aUaOb0Z27ei1zIKExjgzwEY9rMk3N8hyDIimr8fCOrc2qXp5VyEPLLefXJ3W6Lk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTfngBrC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F0A31F000E9;
	Mon, 15 Jun 2026 08:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781513206;
	bh=lOhi1cE6jKwehedlW1Tw+wplh4+wl4nVgHcqtV4a4H0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KTfngBrCJRz36WzfKWQi5Xdh5MxMok3HMt6kp/YRBPlXXiVgaLP1P9OQQsDJ1vRW2
	 mW+5YNnZMDMWb8PDC5OudD2g4TS3qLj9MdONpixjhCqAdgX4kNOYUdYi/BXzKxOBoq
	 qXBFDFdIHURkeazdI9C5z9lQBcH571uxKGfN9qDxF8LppLQuMtNjiLO+QYuQHcQqrh
	 vkI3pIn2gOaWmEFue1qG6KoWRryZ+FYedP8MxeVqQkuu8hODKysce+84EZrPnHQqx+
	 npTydM/YcOTgJuFTJpOeEUYQcdlj0SkzC9eSZTpdfgiTqFIomIPSranUQZF3VKGJc7
	 4LkfXpgruGkfQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] regulator: qcom-refgen: add support for the
 IPQ9650 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615-ipq9650_refgen-v3-3-5f611623629c@oss.qualcomm.com>
References: <20260615-ipq9650_refgen-v3-3-5f611623629c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 08:46:45 +0000
Message-Id: <20260615084646.4F0A31F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311783-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 362B8684BD1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `.is_enabled` callback maps to `regulator_is_enabled_regmap` w=
ithout enabling clocks, causing a synchronous bus hang on IPQ9650 during pr=
obe.
--

commit 57e8a1a06a52f828e01d53b16f6c708e7f6df23e
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

regulator: qcom-refgen: add support for the IPQ9650 SoC

This commit adds support for the IPQ9650 SoC to the qcom-refgen regulator
driver. It introduces explicit clock management for the REFGEN blocks, as
they are not enabled on power up for this specific SoC.

> diff --git a/drivers/regulator/qcom-refgen-regulator.c b/drivers/regulato=
r/qcom-refgen-regulator.c
> index 6a3795469927e..4b8aa40d7efe0 100644
> --- a/drivers/regulator/qcom-refgen-regulator.c
> +++ b/drivers/regulator/qcom-refgen-regulator.c
[ ... ]
> +static const struct regulator_desc ipq9650_refgen_desc =3D {
> +	.enable_reg =3D REFGEN_REG_REFGEN_STATUS,
> +	.enable_mask =3D REFGEN_STATUS_OUT_MASK,
> +	.enable_val =3D REFGEN_STATUS_OUT_ENABLE,
> +	.enable_time =3D 5,
> +	.name =3D "refgen",
> +	.owner =3D THIS_MODULE,
> +	.type =3D REGULATOR_CURRENT,
> +	.ops =3D &(const struct regulator_ops) {
> +		.enable		=3D qcom_ipq9650_refgen_enable,
> +		.disable	=3D qcom_ipq9650_refgen_disable,
> +		.is_enabled	=3D regulator_is_enabled_regmap,

[Severity: High]
Does this result in an unclocked MMIO read?

During device probe, the regulator core calls the is_enabled callback via
devm_regulator_register() to determine the initial state:

qcom_refgen_probe()
   devm_regulator_register()
      regulator_is_enabled_regmap()

Since the IPQ9650 clocks are disabled on power up and only enabled later in
qcom_ipq9650_refgen_enable(), regulator_is_enabled_regmap() will perform an
MMIO read on the REFGEN_REG_REFGEN_STATUS register without the required
clocks enabled.

Could this cause a synchronous external abort and a kernel panic during
boot?

> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-ipq9650_re=
fgen-v3-0-5f611623629c@oss.qualcomm.com?part=3D3

