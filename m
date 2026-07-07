Return-Path: <devicetree+bounces-322213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N1KbIwwlTWoyvwEAu9opvQ
	(envelope-from <devicetree+bounces-322213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:10:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D7E71DB24
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:10:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N27ifRur;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322213-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322213-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DA63302170F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:05:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564A24314A6;
	Tue,  7 Jul 2026 16:05:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D81742378D
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:05:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783440309; cv=none; b=sTYnNg42LYorwom5WDVlzLB1JtALDR29W+DnxzAnDiP88Og4+kRYw9gJfmfmUxvtGNWNvU9fG3rS/dPoE07uzisnWX1UPUuPqK9nwQm50OSJc5pWkggVzNM9M5wIEmus4s7YL7yKScW/fPICwXnPdFBnp+JEkCAxcpdwKubEiIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783440309; c=relaxed/simple;
	bh=/TtWz6yMut0iWVENLsr7UEl7KlhupDvm1/y5WF6nzOg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=taUFpWtxOA75h5c+q2BJOra5bFUKoMSujKqSpu7mX/Kv7TvqULvmxSy7wNM3eNYm1UxIkiN5uO5aegXGFUb7ObCSaN7kU3PH/sXhJkoERFJ02TFl0xgR2JqwBzjbXJx0GerpTkOnYulNyEW8fwXapM/xLaD2y56LEgjPid27ALw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N27ifRur; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4759F1F000E9;
	Tue,  7 Jul 2026 16:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440307;
	bh=Yk477um1jH80e2Sz/rztfnvHOzSQ3sa8se5sclGoQO8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N27ifRur+LVxsYEgdJukVVfAeuFJKBOIhjFEmFTn1j8Z6758ckNJPn9My/oPTfdy1
	 Fw6Jey/VmGqn953p95DNjxCnSS4GEQMdtYMI0fcvIsBF7XmlAUvh/HXfEuo2WVyQDT
	 AoJcS8d0zgFd2SBnD5vvGzm2BnoJW/qiBqk2na8zG6J4yC628cI+8MSjPrShid3f/y
	 c+dRRMb8Hx1nXfAH26jTwf5LCv3o+gOwsf2SZ6pubUSMA3eAWR9bXXFftpfAxf2yyi
	 kynIBHHpCqRgvfMJ6bNS7A0Qk9SiQFJ58OHjCsMq4V0LNQUyXs5e3oDLi+q8Prb2rE
	 zGTSYTE1J1b6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP
 PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:05:06 +0000
Message-Id: <20260707160507.4759F1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322213-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87D7E71DB24

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing NULL check for the result of `device_get_match_data(dev)` =
before dereferencing it.
--

--- Patch [12]: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eD=
P PHY ---
commit 171cadff965a41b7aba8d81fbb60622f2a8e1a97
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Add support for MT8196 eDP PHY

The MT8196 SoC features an updated PHY IP compared to the older
ones, and there is one that is specific to Embedded DisplayPort.
This commit adds support for the eDP PHY found in the MediaTek MT8196 SoC
and all of its variants.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index f5aadc5fdc42c..5decc29c77cb3 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c

[ ... ]

> @@ -805,8 +838,39 @@ static const struct mtk_dp_phy_pdata mt8195_dp_phy_d=
ata =3D {
>  	},
>  };
> =20
> +static const struct mtk_dp_phy_pdata mt8196_edp_phy_data =3D {
> +	.off_ana_glb =3D 0x400,

[ ... ]

> +	.driving_params =3D (const u32[]) {
> +		[0] =3D 0,
> +		[1] =3D 0,
> +		[2] =3D 0,
> +		[3] =3D MT8196_DRIVING_PARAM_3_DEFAULT,
> +		[4] =3D MT8196_DRIVING_PARAM_4_DEFAULT,
> +		[5] =3D MT8196_DRIVING_PARAM_5_DEFAULT,
> +		[6] =3D MT8196_DRIVING_PARAM_6_DEFAULT,
> +		[7] =3D MT8196_DRIVING_PARAM_7_DEFAULT,
> +		[8] =3D MT8196_DRIVING_PARAM_8_DEFAULT
> +	},
> +};
> +
>  static const struct of_device_id mtk_dp_phy_of_match[] =3D {
>  	{ .compatible =3D "mediatek,mt8195-dp-phy", .data =3D &mt8195_dp_phy_da=
ta },
> +	{ .compatible =3D "mediatek,mt8196-edp-phy", .data =3D &mt8196_edp_phy_=
data },
>  	{ /* sentinel */ }
>  };

[Severity: High]
If the driver is forcefully bound to a device via the sysfs bind interface,
and the device has an of_node but its compatible string does not match any
entry in the driver's of_match_table, device_get_match_data(dev) will return
NULL.

This NULL pointer is stored in dp_phy->pdata:

drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_probe() {
    ...
	dp_phy->pdata =3D device_get_match_data(dev);

	if (IS_REACHABLE(CONFIG_NVMEM)) {
		ret =3D mtk_dp_phy_get_calibration_data(dp_phy);
    ...
}

And is unconditionally dereferenced here:

drivers/phy/mediatek/phy-mtk-dp.c:mtk_dp_phy_get_default_cal_data() {
    ...
	const struct mtk_dp_phy_pdata *pdata =3D dp_phy->pdata;
	int i;

	dp_phy->ana_bias_r =3D pdata->ana_bias_r;
    ...
}

Should device_get_match_data() be checked for NULL before continuing in
mtk_dp_phy_probe() to prevent a potential kernel panic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707154245.1983=
61-1-angelogioacchino.delregno@collabora.com?part=3D12

