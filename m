Return-Path: <devicetree+bounces-318535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id me3yArcLRWoi5woAu9opvQ
	(envelope-from <devicetree+bounces-318535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:44:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9397E6ED815
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:44:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fHwzDOgx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318535-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318535-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 92851309B34B
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0785481A98;
	Wed,  1 Jul 2026 12:30:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3F1481665
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:30:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782909005; cv=none; b=jJUExUsyC2+3P0EBd9AgkA5LfDakI3iZM1mQLP9bWCxhL/Zuv8GPu+vmjvQuCqAqkeQdKe1uOZz4mb9v7/bZKc/zJ3wiZDs2dpbCxbIdMpo2YRTRm5Ls1LFKghMZ/3gyfevph0JvWUzfmWKMpAaPNQm5BdWH2F/ieJj7YO3bWek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782909005; c=relaxed/simple;
	bh=qC2R9B5pwevwtmupxdX8wEkzy5I3qPUw7O/avmV0ZAw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ikvpJTEnYcKbuYEU6eZ266+gwP2kBR5recNrEjyP1KYU/+x3Dv/x4DSxqU/ch3d5VI1Dli2R7fAhhn1aXKDjTp2SJJ/K6I/6v1mK9AK1p90Pxl4PhJYaBlbaW1euAnB+bOwnTdi2fGpdmAJKrLOzU299Hxn0vff24ODfh9v519k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHwzDOgx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B65211F000E9;
	Wed,  1 Jul 2026 12:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909004;
	bh=p/Ltph7WWF2KDaFV2op4D3gJpqRALqGdOM9Gv3W8WeQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fHwzDOgxbOKw/V1SMc/+aZnecLypCRVbcTaY3+V03yNMZd90Zk6V7xzEXVo5YIpdV
	 y4FfwpeCKFvhFz8+HreE8DMw+CF+fVr9MJB6mqYvVYG0tgIxiVu0ca24S+9LY5hF+x
	 1rXYXogTKejG8oVVzugfhAyFz087KSrhGKBWLJRyrk5OPxfiBMGshRADyeIdEVmLlF
	 2c59A7XUigU7yYeAm/FTGgCf2fMLQxePzMvMpqovSwckqH+4iMgprZprNNR3GoiYhb
	 8N1eErELMv9vr2RVGIbEVmhXM2WkITzhYibFQRum6LxvzRMF3op862J2K9eYcdEjjq
	 njzk20pc1Zdgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/12] phy: phy-mtk-dp: Allow probing with devicetree
 match
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260701122008.19509-4-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:30:03 +0000
Message-Id: <20260701123003.B65211F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318535-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,lists.infradead.org,vger.kernel.org,gmail.com,lists.freedesktop.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9397E6ED815

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] The return value of `pm_runtime_get_sync()` is ignored, which can =
lead to hardware register accesses on an unpowered device.
- [Medium] Missing `.remove` callback leaves PM runtime enabled and usage c=
ounter unbalanced on driver unbind.

Pre-existing issues:
- [High] Missing `phy_remove_lookup()` causes a memory leak and a dangling =
pointer in the global PHY lookup list.
- [High] Unconditional dereference of `dev->platform_data` before validatin=
g it.
--

commit e3a3844cc6f977665174375e23735f789c04a772
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Allow probing with devicetree match

This commit introduces a devicetree match table to decouple the DP PHY driv=
er
from the DP IP driver. It adds an OF PHY provider and MMIO regmap registrat=
ion
for the devicetree case, while maintaining a legacy probe path for older
devicetrees without a separate PHY node.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index bf7b3a95e72d2..98e05fe05ce3b 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> @@ -160,43 +161,92 @@ static const struct phy_ops mtk_dp_phy_dev_ops =3D {
>  	.owner =3D THIS_MODULE,
>  };
> =20
> +static int mtk_dp_phy_legacy_probe(struct platform_device *pdev, struct =
mtk_dp_phy *dp_phy)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct phy *phy;
> +
> +	dp_phy->regmap =3D *(struct regmap **)dev->platform_data;

[Severity: High]
This is a pre-existing issue, but does this code unconditionally dereference
dev->platform_data before verifying it is not NULL?

If the platform device is instantiated without platform data, would this
dereference cause a kernel panic before the subsequent check for
!dp_phy->regmap can execute?

> +	if (!dp_phy->regmap)
> +		return dev_err_probe(dev, -EINVAL, "No platform data available\n");
> +
> +	phy =3D devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
> +	if (IS_ERR(phy))
> +		return dev_err_probe(dev, PTR_ERR(phy),
> +				     "Failed to create DP PHY\n");
> +
> +	phy_set_drvdata(phy, dp_phy);
> +	phy_create_lookup(phy, "dp", dev_name(dev));

[Severity: High]
This isn't a bug introduced by this patch, but does this leak the lookup
entry and create a dangling pointer?

phy_create_lookup() dynamically allocates a phy_lookup structure and links =
it
into the global phys list. Since there is no driver .remove callback calling
phy_remove_lookup(), when the driver unbinds, the devres-managed phy is fre=
ed
while still in the global list, which could cause a use-after-free when oth=
er
drivers call phy_find().

> +
> +	return 0;
> +}
> +

[ ... ]

>  static int mtk_dp_phy_probe(struct platform_device *pdev)
>  {

[ ... ]

> +	provider =3D devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(provider))
> +		return PTR_ERR(provider);
> +
> +	pm_runtime_enable(dev);
> +	pm_runtime_get_sync(dev);

[Severity: High]
Is it safe to ignore the return value of pm_runtime_get_sync() here?

If the generic power domain or clock fails to enable, pm_runtime_get_sync()
will return a negative error code. Without checking this, the PHY provider =
is
registered even if the hardware is off, which could lead to a synchronous
external abort when attempting to write to the MMIO registers later.

> =20
>  	return 0;
>  }
> =20
> +static const struct of_device_id mtk_dp_phy_of_match[] =3D {
> +	{ .compatible =3D "mediatek,mt8195-dp-phy" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, mtk_dp_phy_of_match);
> +
>  static struct platform_driver mtk_dp_phy_driver =3D {
>  	.probe =3D mtk_dp_phy_probe,
>  	.driver =3D {
>  		.name =3D "mediatek-dp-phy",
> +		.of_match_table =3D mtk_dp_phy_of_match,
>  	},
>  };

[Severity: Medium]
Does this driver need a .remove callback to clean up the PM runtime state?

Since pm_runtime_enable() and pm_runtime_get_sync() are called in probe
without devm_ handlers or registered teardown actions, unbinding the driver
appears to leak the usage counter and leave PM runtime permanently enabled.

>  module_platform_driver(mtk_dp_phy_driver);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122008.1950=
9-1-angelogioacchino.delregno@collabora.com?part=3D3

