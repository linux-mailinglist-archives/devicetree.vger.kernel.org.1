Return-Path: <devicetree+bounces-318571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k/rWEuwORWqY6AoAu9opvQ
	(envelope-from <devicetree+bounces-318571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:58:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CEA6EDB50
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:58:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NY3GhXKW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318571-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318571-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF07430E0B23
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922BF481FD9;
	Wed,  1 Jul 2026 12:45:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5491C48AE0E
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:45:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782909954; cv=none; b=IzvUtmnhUVWLwEeA+8D/y7+9LR56HOOAo4GgSxJ9Sv60sx9JV1m4hPb/TG9gr1DwYsquNQcBizJgXPJvR4JWgVdSVGt3N/Tbpz38f151C1tP15SEoZsRwYthYwsm9/M2i1Rp6YhNqTgCv6uzW2xTJiqzcscqF43NskTsl0+3Ie4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782909954; c=relaxed/simple;
	bh=wxzoRMagsX70jJVlc5Fj2aApG6D2sBF55wuOBcfz4TM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B32GxhMBp7TY6AVORYGEfgFl1tdorjXcCVa/G5mXFVJc8uJNQrFMD3+C+f4iN3ys0wK6Td9meVyk2xbj97e6oru9i2QzYtlfwe6s2xW4R87FUmrMUT0DhRqBm9JyOXdei09ePs/Wg94oKEMedmbD1qOobAYkFMQ4cGOuPh1lGgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NY3GhXKW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A18101F000E9;
	Wed,  1 Jul 2026 12:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909952;
	bh=1GO6ydZbEiHirUzvJuXmFMdY6V9tQKNrQJlx+7Dg8Wc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NY3GhXKWxKbP8dUQH7uZ1WC/akCdmzTiykRqxN8+IsZByOLjfCgHoiLZKyfE7B8Tu
	 NfZ/KEhoZjLUBoiTvhCwmICNbM5c4HVH5Uq7FonSUhnYZ9SPxy6CUo6T9TWjLCf8kT
	 QL5RHFDawyt+MwNhSckF9SJQ4WvWM4SR4kuk6pt8qqNdPTBeKhEbk9k6Vch4mJqHF/
	 XJzIrOkeWcebnXoVN6X44ft3ga23tW3WAzq+e50EYIC9peEHMMj33MeEzCtmsWxyzL
	 qOPs1jiOL48g7NvezIknNOn/+hbSNb3x5BMXR1wm+7/mKtBsZypTiHPJB3eP6fUwST
	 OuyFOalOtV1Ag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/11] drm/mediatek: mtk_dp: Rework register offsets for
 proper PHY usage
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701122024.19557-6-angelogioacchino.delregno@collabora.com>
References: <20260701122024.19557-1-angelogioacchino.delregno@collabora.com>
 <20260701122024.19557-6-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:45:52 +0000
Message-Id: <20260701124552.A18101F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-318571-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,collabora.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6CEA6EDB50

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Writes to PHY registers are incorrectly offset by `legacy_regoff` =
(0x2000), corrupting DP IP registers and breaking PHY configuration.
- [Medium] Removed bit shifts from PIXEL_ENCODE_FORMAT enums cause YCbCr co=
lor formats to silently fall back to RGB.
--

commit ef9afa51895ca44a0e35947eba008bc8a9868897
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Rework register offsets for proper PHY usage

This commit subtracts the DP PHY register range from the MediaTek DisplayPo=
rt
IP register range. It prepares the driver for PHY registration from devicet=
ree
by moving the top offset into the driver structure and out of the legacy re=
gmap
configuration.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index f551c4543f4ee..97bce8966a1f3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
[ ... ]
> @@ -424,7 +448,7 @@ static u32 mtk_dp_read(struct mtk_dp *mtk_dp, u32 off=
set)
> =20
>  static int mtk_dp_write(struct mtk_dp *mtk_dp, u32 offset, u32 val)
>  {
> -	int ret =3D regmap_write(mtk_dp->regs, offset, val);
> +	int ret =3D regmap_write(mtk_dp->regs, offset + mtk_dp->legacy_regoff, =
val);
> =20
>  	if (ret)
>  		dev_err(mtk_dp->dev,
> @@ -436,7 +460,7 @@ static int mtk_dp_write(struct mtk_dp *mtk_dp, u32 of=
fset, u32 val)
>  static int mtk_dp_update_bits(struct mtk_dp *mtk_dp, u32 offset,
>  			      u32 val, u32 mask)
>  {
> -	int ret =3D regmap_update_bits(mtk_dp->regs, offset, mask, val);
> +	int ret =3D regmap_update_bits(mtk_dp->regs, offset + mtk_dp->legacy_re=
goff, mask, val);
[ ... ]
> @@ -1401,7 +1425,7 @@ static void mtk_dp_power_enable(struct mtk_dp *mtk_=
dp)
>  			   SW_RST_B_PHYD, SW_RST_B_PHYD);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TOP_PWR_STATE,
>  			   DP_PWR_STATE_BANDGAP_TPLL, DP_PWR_STATE_MASK);
> -	mtk_dp_write(mtk_dp, MTK_DP_1040,
> +	mtk_dp_write(mtk_dp, DP_PHY_AUX_RX_CTL,
>  		     RG_DPAUX_RX_VALID_DEGLITCH_EN | RG_XTP_GLB_CKDET_EN |
>  		     RG_DPAUX_RX_EN);

[Severity: High]
Does this code inadvertently misdirect PHY register accesses and corrupt
encoder state?

When legacy devicetrees are used, mtk_dp->legacy_regoff is set to 0x2000.
Because the accessor functions like mtk_dp_write() and mtk_dp_update_bits()
now unconditionally add mtk_dp->legacy_regoff, calls using legacy PHY
registers will be offset incorrectly.

For example, when mtk_dp_power_enable() calls mtk_dp_write() with
DP_PHY_AUX_RX_CTL (which is 0x1040), the write will actually go to 0x3040.
This leaves the PHY unconfigured and silently overwrites the DP encoder
register MTK_DP_ENC0_P0_3040 instead.

[ ... ]
> diff --git a/drivers/gpu/drm/mediatek/mtk_dp_reg.h b/drivers/gpu/drm/medi=
atek/mtk_dp_reg.h
> index 8ad7a9cc259eb..616ea6440b08d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp_reg.h
> +++ b/drivers/gpu/drm/mediatek/mtk_dp_reg.h
[ ... ]
> @@ -130,34 +106,36 @@
>  #define VIDEO_COLOR_DEPTH_DP_ENC0_P0_8BIT		(3 << 8)
>  #define VIDEO_COLOR_DEPTH_DP_ENC0_P0_6BIT		(4 << 8)
>  #define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_MASK		GENMASK(14, 12)
> -#define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_RGB		(0 << 12)
> -#define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR422		(1 << 12)
> -#define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR420		(2 << 12)
> +#  define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_RGB		0
> +#  define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR422	1
> +#  define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR420	2
> +#  define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YONLY		3
> +#  define PIXEL_ENCODE_FORMAT_DP_ENC0_P0_RAW		4

[Severity: Medium]
Will this change cause YCbCr color formats to silently fall back to RGB?

The bit shifts were removed from these format definitions, but the usage
site in mtk_dp_set_color_format() passes these values directly to
mtk_dp_update_bits() alongside the PIXEL_ENCODE_FORMAT_DP_ENC0_P0_MASK,
which is GENMASK(14, 12).

Because regmap_update_bits() internally applies the mask to the value, an
unshifted value like PIXEL_ENCODE_FORMAT_DP_ENC0_P0_YCBCR422 (1) combined
with the mask (0x7000) evaluates to 0. This clears the color format bits
entirely and forces the hardware to output in RGB mode.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122024.1955=
7-1-angelogioacchino.delregno@collabora.com?part=3D5

