Return-Path: <devicetree+bounces-322204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sX1+L7MhTWprvgEAu9opvQ
	(envelope-from <devicetree+bounces-322204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:56:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B8171D8F3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:56:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IaZLIMt2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322204-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322204-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8C283006157
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F8DC3F7AB7;
	Tue,  7 Jul 2026 15:56:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD31223DE9
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 15:56:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783439792; cv=none; b=ZalYFOGlNbJbYH+eVWAr6CDSHtuOXay2VyMXlAXHFlkEjW3luVrY4a4Z5MZ8FBoTx59dseBzrYKW20RLqPzuunI1U8q5VzbXESgpYFHkAnAvrI/K49dSvu1RMEjQga7ILJTwJmwTihaq7DwdwIbG7TdWOe3snzS9FXWAjcm87To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783439792; c=relaxed/simple;
	bh=/31DxSVJQvEyvIqS1vJCpB6R60nx1wQmPauH1Q6RjeM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iriiWIGLBWb6nhLlls3poS28jdON0vRdg6z64KBI4V2ksHkLadziHFGqeqcSWjzCgsWebzyrI+eQxdBcx3UL7DvUAsijwe7KVhgQzeUZzT8cEcqnkYfjU59uuZ1k+8pJtQbV3YIm1q+XXqDlIm4tD0AwSnKOX1ZQ0msTHFayko8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaZLIMt2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F32C1F000E9;
	Tue,  7 Jul 2026 15:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783439790;
	bh=iToRQzCJGSGpsmCohncrGDPeqAQ4KQkL7v0RF5YxGpc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IaZLIMt27zZmthz7SceG/bsBUBl2NU85M5H05xIwvwE/3exbnUeU6wgPsSKwhxC4U
	 IWsc6o5i4DrxhbK3IFAbAv1TMRk5RLzKiMZki92zmIn5UjJ6An1nP0UW32jYtwiPI/
	 x2UpG9qGVqELU09Ls7o9a0mBA9yacVOoIL152zDbgXNpxcaWvYV9YZ/SkkryBcj6Cb
	 DK+fAOyg6ntexhCETwFocpfu9+3Rv//n09kf7f9BqxbQBvVDsuI9zix7gArYo85Zt4
	 iiw3M84Kb4Lsv+AB31GxegOoT9NC/S6oXobi401KOFttM584/qlWadxKBaxxTe/IoB
	 EoEL0RFOw8uYQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 04/12] phy: phy-mtk-dp: Migrate register offsets to
 SoC specific pdata
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707154245.198361-5-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 15:56:29 +0000
Message-Id: <20260707155630.4F32C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322204-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:dri-devel@lists.freedesktop.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.freedesktop.org,linaro.org,vger.kernel.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 59B8171D8F3

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] Register accesses are performed in `mtk_dp_phy_configure()` while =
the device's PM runtime state is suspended, risking system hangs.
- [Medium] Missing validation of `device_get_match_data()` return value can=
 lead to a NULL pointer dereference.
- [Low] Invalid compound literal initialization for the 'off_dig_lane' arra=
y member causes a compilation error.

Pre-existing issues:
- [High] The legacy probe path unconditionally dereferences `dev->platform_=
data` before validating that it is not NULL.
--

--- Patch [4]: [PATCH v3 04/12] phy: phy-mtk-dp: Migrate register offsets t=
o SoC specific pdata ---
commit c49d221e57bf6a9816b6ce4e691a20564bc66896
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata

In preparation for adding support for newer SoCs and for adding
more capabilities to this driver in an efficient manner, migrate
all of the hardcoded register offsets to SoC specific pdata and
assign that for both DT and platform probing.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index d241004e28286..20974650d9409 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> @@ -111,9 +173,12 @@ static int mtk_dp_phy_init(struct phy *phy)
>  static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opt=
s *opts)
>  {
>  	struct mtk_dp_phy *dp_phy =3D phy_get_drvdata(phy);
> +	const struct mtk_dp_phy_pdata *pdata =3D dp_phy->pdata;
>  	u32 val;
> =20
>  	if (opts->dp.set_rate) {
> +		const u32 reg_bit_rate =3D pdata->regs_dig_glb[DP_PHYD_BIT_RATE];
> +

[ ... ]

> -		regmap_write(dp_phy->regmap, MTK_DP_PHY_DIG_BIT_RATE, val);
> +		regmap_write(dp_phy->regmap, pdata->off_dig_glb + reg_bit_rate, val);
>  	}
> =20
> -	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_PLL_CTL_1,
> +	regmap_update_bits(dp_phy->regmap,
> +			   pdata->off_dig_glb + pdata->regs_dig_glb[DP_PHYD_PLL_CTL_1],
>  			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);

[Severity: High]
Since phy_configure() is not wrapped by phy_pm_runtime_get_sync() in the
PHY core, and the consumer driver may not call phy_power_on() before this
point, the PHY PM runtime usage counter might remain 0 during
mtk_dp_phy_configure().

If the PHY power domain is turned off, will these unclocked regmap_write()
and regmap_update_bits() calls cause the system to hang?

Should there be PM runtime protection around these register accesses?

> =20
>  	return 0;
>  }

[ ... ]

> @@ -170,12 +241,19 @@ static void mtk_dp_phy_legacy_remove_lookup(void *d=
ata)
>  	phy_remove_lookup(phy, "dp", dev_name(dp_phy->dev));
>  }
> =20
> +static const struct mtk_dp_phy_pdata mt8195_dp_phy_data;
> +
>  static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct =
mtk_dp_phy *dp_phy)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	struct phy *phy;
>  	int ret;
> =20
> +	/*
> +	 * If legacy platform driver probe, assume this is MT8195 or compatible
> +	 * with a devicetree that was not migrated to the new, proper bindings.
> +	 */
> +	dp_phy->pdata =3D &mt8195_dp_phy_data;
>  	dp_phy->regmap =3D *(struct regmap **)dev->platform_data;

[Severity: High]
This is a pre-existing issue, but dev->platform_data is unconditionally
dereferenced here before it is checked for NULL.

If this legacy probe path is triggered without platform_data provided (for
example, via the sysfs new_device interface), won't this cause an immediate
NULL pointer dereference?

>  	if (!dp_phy->regmap)
>  		return dev_err_probe(dev, -EINVAL, "No platform data available\n");

[ ... ]

> @@ -235,6 +313,8 @@ static int mtk_dp_phy_probe(struct platform_device *p=
dev)
>  	if (ret)
>  		return ret;
> =20
> +	dp_phy->pdata =3D device_get_match_data(dev);
> +

[Severity: Medium]
If a user binds the mediatek-dp-phy driver via sysfs to a platform device
that doesn't match the driver's compatible strings, device_get_match_data()
will return NULL.

Does this need a NULL check before storing it in dp_phy->pdata?

Without validation, subsequent PHY operations like mtk_dp_phy_init() will
dereference the NULL pointer and crash.

>  	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
>  	if (IS_ERR(phy))
>  		return dev_err_probe(dev, PTR_ERR(phy),

[ ... ]

> @@ -249,8 +329,15 @@ static int mtk_dp_phy_probe(struct platform_device *=
pdev)
>  	return 0;
>  }
> =20
> +static const struct mtk_dp_phy_pdata mt8195_dp_phy_data =3D {
> +	.off_dig_glb =3D 0x1000,
> +	.off_dig_lane =3D (const u16[]) { 0x1100, 0x1200, 0x1300, 0x1400 },

[Severity: Low]
Is this compound literal initialization valid for an array struct member?

Compiling this with GCC or Clang may throw an invalid initializer error
because C99 requires array members to be initialized directly with
brace-enclosed lists rather than compound literal expressions.

> +	.regs_dig_glb =3D mt8195_phy_dig_glb_regs,
> +	.regs_dig_lane =3D mt8195_phy_dig_lane_regs,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707154245.1983=
61-1-angelogioacchino.delregno@collabora.com?part=3D4

