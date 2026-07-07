Return-Path: <devicetree+bounces-322140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B4CuMbkVTWpJuwEAu9opvQ
	(envelope-from <devicetree+bounces-322140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:05:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9DF71CFE7
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:05:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ofSHB/xG";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322140-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322140-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F29D932680B8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16B14252B9;
	Tue,  7 Jul 2026 14:31:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D744252A2
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:31:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434709; cv=none; b=CawpfL33TEDo3jCm4dr0mHzXsOh1jCEojE0vA6RP2G/3dCbsGYwM4bFas0QFbUPwB6edW+/G7fe2J97Ah32f9+2Ku5YGhOsQPzUlLlL6I4xXrAmSvsRngpZ4iY3B/zbbJ37n8ol9ENGXxYM0OeM9Ual7ANkiLtNXNam9RcILjYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434709; c=relaxed/simple;
	bh=Iman9nOIH/2I+aNBeG4ZcI05TOjqjMkAnVAen8LIHqo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=atj+tTtIsl8R3sDjqxmDfvhgU2jVysTruDDei9y0JtvVsLV9Z1DXewUzs4+oCVYFfkG+gVVOdaZqScb849Jd3Q1Ohh26ueifzab4LWS67CDDkLCETYYl+tYPtS63YPTlDkK1qAQZLvE5zqoC0v9LLwnrprrI390qTfGQONtHe8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofSHB/xG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC76D1F000E9;
	Tue,  7 Jul 2026 14:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434708;
	bh=UTzP3gor4dFCMU5pkveJq/KGXMait3zUs+q1bohN9bY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ofSHB/xGOKCHFOR+9Wd78qQhTsbKDZDssxAZTBGlXnKgTzX7BhDOtaisof5ONulNX
	 /JlnkC4IGWMQD28KfhNZbU5pHmeV6w4DlA+ca4F8Thd6Y5MtCcV7nk5wYSaeMCMql3
	 a6feKMNV+X3r9L6vd55NwRN22N0IiwggUiJKnrjR/M2aZZYqg6ihkwokhwBjbZeFyM
	 eOQfMLYunt4nKJIQvmYgKBK+jEjN5eAk3CxbuWwmKsqE7W3ENhS/eIGtrgMfHnq4rR
	 NBCWTlPzecwBXEl03cK0LIPiKAR5zEQBlLDX/VZdyGMhc2ni2+XmJkYoeDezCaJa/X
	 MhAklJLg8U7Sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/12] phy: phy-mtk-dp: Allow probing with devicetree
 match
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260707141931.191172-4-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:31:47 +0000
Message-Id: <20260707143147.AC76D1F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322140-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,lists.infradead.org,kernel.org,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A9DF71CFE7

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] PM Runtime on the parent device is enabled after the PHY device is=
 created, preventing PM runtime from propagating to the parent and causing =
unpowered hardware accesses.
- [Medium] The DP PHY driver fails to parse and apply the `nvmem-cells` cal=
ibration data specified in the new device tree binding.
- [Low] The variable `ret` is used but not declared in `mtk_dp_phy_probe()`=
, causing a build failure.
--

--- Patch [3]: [PATCH v2 03/12] phy: phy-mtk-dp: Allow probing with devicet=
ree match ---
commit e7cb0174c7cb05364cf12874f491ce4c799f2c61
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Allow probing with devicetree match

This commit adds a devicetree match to decouple the MediaTek DP PHY driver
from the DisplayPort IP driver. It implements a standalone probe path while
retaining a legacy probe function for backwards compatibility.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> @@ -160,43 +161,106 @@ static const struct phy_ops mtk_dp_phy_dev_ops =3D=
 {

[ ... ]

>  static int mtk_dp_phy_probe(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
> +	struct phy_provider *provider;
>  	struct mtk_dp_phy *dp_phy;
> +	void __iomem *base;
>  	struct phy *phy;
> -	struct regmap *regs;
> -
> -	regs =3D *(struct regmap **)dev->platform_data;
> -	if (!regs)
> -		return dev_err_probe(dev, -EINVAL,
> -				     "No data passed, requires struct regmap**\n");
> =20
>  	dp_phy =3D devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
>  	if (!dp_phy)
>  		return -ENOMEM;
> =20
> -	dp_phy->regmap =3D regs;
> +	dp_phy->dev =3D dev;
> +
> +	/* If there's no devicetree, go for legacy pdev probe */
> +	if (!dev->of_node)
> +		return mtk_dp_phy_legacy_probe(pdev, dp_phy);

[Severity: Medium]
Does the new devicetree probe path need to parse and apply the nvmem-cells
calibration data?

It looks like the new DT bindings specify nvmem-cells for optimal EYE signal
pattern calibration, but the standalone probe path doesn't retrieve them,
which might leave the hardware running with sub-optimal defaults.

> +
> +	base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	dp_phy->regmap =3D devm_regmap_init_mmio(dev, base, &mtk_dp_phy_regmap_=
cfg);
> +	if (IS_ERR(dp_phy->regmap))
> +		return PTR_ERR(dp_phy->regmap);
> +
>  	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);

[Severity: High]
Will creating the PHY device before enabling PM runtime on the parent
prevent the PHY framework from propagating PM runtime to the child PHY
device?

In phy_create(), the framework checks pm_runtime_enabled(dev) on the parent
to decide whether to enable PM runtime on the newly created PHY device. Sin=
ce
devm_pm_runtime_enable(dev) is called later, this check evaluates to false.

Could this lead to phy_pm_runtime_get_sync() returning -ENOTSUPP and
bypassing hardware wake-ups, resulting in unpowered register accesses?

>  	if (IS_ERR(phy))
>  		return dev_err_probe(dev, PTR_ERR(phy),
>  				     "Failed to create DP PHY\n");
> =20
>  	phy_set_drvdata(phy, dp_phy);
> -	if (!dev->of_node)
> -		phy_create_lookup(phy, "dp", dev_name(dev));
> +
> +	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(provider))
> +		return PTR_ERR(provider);
> +
> +	ret =3D devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;

[Severity: Low]
Is the variable ret missing a declaration here?

It appears int ret; is not declared in mtk_dp_phy_probe(), which will cause
a build failure when compiling the driver.

> =20
>  	return 0;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D3

