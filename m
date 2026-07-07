Return-Path: <devicetree+bounces-322144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gfhLLJ4OTWpkuQEAu9opvQ
	(envelope-from <devicetree+bounces-322144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:35:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DB971CB16
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:35:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="N/WqgxbW";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322144-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322144-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 86AFF30067AD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7411B42982C;
	Tue,  7 Jul 2026 14:34:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6474252A2
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:34:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434898; cv=none; b=qHRJ4ogGtgWPKwYG6nYtJ0QSabRwP4j4gJYnsWX2l5I7x/nr54Fxy463AwS08UP0LaHd+nDjpG2Q8QFR+EWegE8I53OTsRSTSYt9qYM2PlMCO7NpX7mB2QpfZ0wRKV0amY07o4u91jeBS4ApBMrtoZiBoh3CZysBjufObSf+hlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434898; c=relaxed/simple;
	bh=5Gco5Go2gUItq1NrDKB2Wc8ehwqjUs7ylB0Eq13WeB8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uedeeEm5/0tLtpaoxlauxf+CPd3wA21DYEUfQuE549e4wD6+uzXszE+o0+Tj3/ppbcbfVUm0KWadwAdFhmXgKF5vyH3bnMaPg8uEKoIkzbvCiep8NqhB/wRLjlvr2yLvuqwqH3pIf0C4PLSkv0Ovjv36nYXCEXKB4q5uzlRKxaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/WqgxbW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 278E61F000E9;
	Tue,  7 Jul 2026 14:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434896;
	bh=Suf8JZ6PIfFOLXhYIo/erubsBs3DC5+ejnPnfderUAw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N/WqgxbWQcuTdvSwta08qJWHkMAMyu1YFOw+EKY2z830bV/xFvMt0yWilbwVVNylH
	 Cw3v3h6LGok4cn7ZmHnnwQXsee4mr9yd5E4vH0Ee1ocPTLtxqCwc0QWi17YJgT9424
	 y0srJaGogX9BbG/yrw4dYGmAxIplYm92p5/Kr+0L62uiYpPgp73FV3WrhLpsqxMrmk
	 kXxhgjUTKsnO6EnJzsdH7d/4kzg8NQX20C/NMp3jZs9JBseK4GmaXm6XXSsXKMimv3
	 SNyF1kjjH6jgvL/KPupPDMmsBajvYLgfcBI893PRYBe1ym3NRQXqXEm3I/udtZBipZ
	 SukPnb+oduD7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/12] phy: phy-mtk-dp: Migrate register offsets to
 SoC specific pdata
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260707141931.191172-5-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:34:55 +0000
Message-Id: <20260707143456.278E61F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322144-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:olteanv@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,lists.infradead.org,kernel.org,gmail.com,lists.freedesktop.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,collabora.com:email,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06DB971CB16

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:

New issues:
- [High] PHY driving parameters are bulk written to the wrong starting regi=
ster offset, corrupting hardware state.
- [High] Missing NULL check on the result of `device_get_match_data()` lead=
s to a NULL pointer dereference.
- [Low] The array `off_dig_lane` in `mt8195_dp_phy_data` is initialized usi=
ng a compound literal, causing a compilation error.
- [Low] The variable `ret` is used without being declared in `mtk_dp_phy_pr=
obe`, causing a build failure.
- [Low] Missing `#include <linux/pm_runtime.h>` for `devm_pm_runtime_enable=
`.

Pre-existing issues:
- [High] Dereferencing `dev->platform_data` before verifying it is not `NUL=
L` causes a kernel panic.
--

--- Patch [4]: [PATCH v2 04/12] phy: phy-mtk-dp: Migrate register offsets t=
o SoC specific pdata ---
commit b50fb23a21796e73379a3d3b300932c7ffb998c8
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: phy: phy-mtk-dp: Migrate register offsets to SoC specific pdata

This commit migrates the hardcoded register offsets in the MediaTek DP PHY
driver to SoC-specific platform data. It also refactors the driving
parameter initialization to loop through all lanes instead of hardcoding
each lane.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index b042ab67ebaf3..915f148325c49 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> @@ -94,15 +143,21 @@ static int mtk_dp_phy_init(struct phy *phy)
>  		DRIVING_PARAM_7_DEFAULT,
>  		DRIVING_PARAM_8_DEFAULT
>  	};
> -
> -	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE0_DRIVING_PARAM_3,
> -			  driving_params, ARRAY_SIZE(driving_params));

[ ... ]

> +	int i, ret;
> +
> +	/*
> +	 * Assume that all lanes need the same driving parameters: this
> +	 * will bulk write from DRIVING_PARAM_0 to DRIVING_PARAM_8 on
> +	 * all lanes (a grand total of [9 * num_lanes] 32-bit writes)
> +	 */
> +	for (i =3D 0; i < MTK_DP_PHY_MAX_LANES; i++) {
> +		ret =3D regmap_bulk_write(dp_phy->regmap,
> +					pdata->off_dig_lane[i] + reg,
> +					driving_params,
> +					ARRAY_SIZE(driving_params));

[Severity: High]
Does this bulk write start at the correct register offset?

The loop writes the driving_params array starting at the base offset for
DP_PHYD_LAN_DRIVING_PARAM_0. However, the driving_params array only contain=
s 6
elements (defaults for PARAM_3 through PARAM_8).

Will this incorrectly write parameters 3-8 into the registers for 0-5, leav=
ing
registers 6-8 uninitialized and corrupting the hardware PHY configuration?

> +		if (ret)
> +			return ret;
> +	};
> =20
>  	return 0;
>  }

[ ... ]

> @@ -169,12 +233,19 @@ static void mtk_dp_phy_legacy_remove_lookup(void *d=
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
This is a pre-existing issue, but can dev->platform_data be NULL here?

The code directly dereferences dev->platform_data to assign dp_phy->regmap
before checking if it is NULL on the next line. If a device is probed witho=
ut
devicetree and platform data is missing, will this trigger a kernel panic?

>  	if (!dp_phy->regmap)
>  		return dev_err_probe(dev, -EINVAL, "No platform data available\n");

[ ... ]

> @@ -227,6 +298,8 @@ static int mtk_dp_phy_probe(struct platform_device *p=
dev)
>  	if (IS_ERR(dp_phy->regmap))
>  		return PTR_ERR(dp_phy->regmap);
> =20
> +	dp_phy->pdata =3D device_get_match_data(dev);

[Severity: High]
Could device_get_match_data() return NULL here?

If the driver is manually bound via sysfs without a matching OF compatible
(but the device has an of_node), device_get_match_data() will return NULL.

Since dp_phy->pdata is later unconditionally dereferenced in functions like
mtk_dp_phy_init() to look up register offsets, will this lead to a NULL poi=
nter
dereference?

> +
>  	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);

[ ... ]

[Severity: Low]
Is the variable ret declared in the scope of mtk_dp_phy_probe?

It was noted that ret might be assigned the result of devm_pm_runtime_enabl=
e()
and evaluated:

ret =3D devm_pm_runtime_enable(dev);
if (ret)
    return ret;

But it appears it might not be declared within the local scope, which could
cause a compilation error.

[Severity: Low]
Should <linux/pm_runtime.h> be included in this file?

If devm_pm_runtime_enable() is used, it relies on the Power Management
API. Relying on implicit transitive inclusion for Power Management APIs can=
 be
fragile and may cause a build failure.

> @@ -245,8 +318,15 @@ static int mtk_dp_phy_probe(struct platform_device *=
pdev)
>  	return 0;
>  }
> =20
> +static const struct mtk_dp_phy_pdata mt8195_dp_phy_data =3D {
> +	.off_dig_glb =3D 0x1000,
> +	.off_dig_lane =3D (const u16[]) { 0x1100, 0x1200, 0x1300, 0x1400 },

[Severity: Low]
Will this array initialization compile correctly?

In standard C, an array member inside a struct should be initialized using a
brace-enclosed list. Using a compound literal cast like (const u16[]) decays
to a pointer, which may cause a compilation error for an array type initial=
izer.

> +	.regs_dig_glb =3D mt8195_phy_dig_glb_regs,
> +	.regs_dig_lane =3D mt8195_phy_dig_lane_regs,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D4

