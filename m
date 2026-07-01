Return-Path: <devicetree+bounces-318542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qUQVKPkORWqk6AoAu9opvQ
	(envelope-from <devicetree+bounces-318542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:58:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345E6EDB79
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:58:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZnbgQ2v3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318542-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318542-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F8333081759
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797A948122A;
	Wed,  1 Jul 2026 12:35:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632548033C
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:35:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782909338; cv=none; b=iAGauCWeG9lZQ0fuDQ2Pqk37Tpdc0xd8CWaA/HV9rZq3E1rkX8HYgApnl8VeiBWUqRtc3QPT331EAJdLcW/MR2Ealj0SoSItN+qDVtIPRgy4KaOaEi76doGmvUISegJzXmwSvYIaOX346pwvW+TwreLLDsbnoi0eee2VzIkOZSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782909338; c=relaxed/simple;
	bh=haAbRtO/X4X3rTwWCe43+yGBv3OIsc8u15LNEuwx/ic=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R1Fuz/xazY2wkDbnHGfKyyDY+CKdj1pWYVN+OrdQ1mhx5XlL5yZDNFTB/58EMXpES6BGW8bH1hfy9NMzFnmsia/fH1PnYYwlAXnTflu0/QGoh3D4ql7nvuTK5I6AIBCVNmBHkZNi5Af+J8kIJ8Fu/rGDDCuYfwzRRHy07Ly0uNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnbgQ2v3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5DA1F000E9;
	Wed,  1 Jul 2026 12:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909336;
	bh=CJQNdIVi/Q1P74CPDcCp+i08uA+8nWhJngkcnx8r1s0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZnbgQ2v3lT+qQ8RE3rnxpKNplm6LDhKyyS0bOdfJ+wSgvN5VUNh87jjG6K5p7xsdt
	 HPrwlv5Y8eitA7X/0pP0E4qmwzxVEDHIdfNPKqleIheBfLaZPDR4W6ly5CI1MkNh8o
	 Uo4BDxO6fj4Iaeo63Ih3bUBKCj8tBiCztQ0XbNFr1ow6Vg/jX+nRdU1pb9pQvZprPP
	 dUmbvuhhGU/LJPHxMgUUWf6TIjyynKljYeyA+z6u3GnXqlPae37KyD4ug8bRZXI2qo
	 t6I9K6ADE/fOwkCrTuy6yEJ4nZy7yBhafyMlMnsu6eNstwJ3Fcc1pSP9Y4XA0W4/6O
	 57C6/LrFWlwdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/12] phy: phy-mtk-dp: Support set_lanes in configure
 and properly cleanup
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260701122008.19509-7-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-7-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:35:35 +0000
Message-Id: <20260701123536.6C5DA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318542-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,lists.freedesktop.org,vger.kernel.org,linaro.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3345E6EDB79

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Unconditional do-while loop in `mtk_dp_phy_disable_all_lanes` caus=
es an out-of-bounds bitwise shift and undefined behavior when no lanes are =
initially enabled.
- [High] `mtk_dp_phy_disable_all_lanes` passes a bit index instead of a bit=
mask to `FIELD_PREP`, failing to disable the correct lanes.
--

commit 25cdd51bd1ac4d69a49e77d93a6b1374ba46dd3c
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Support set_lanes in configure and properly cleanup

Add support for enabling a specifically requested number of lanes
in the .configure() callback and disable all lanes in power off
and reset callbacks for proper hardware cleanup.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index 586e727956332..a2cd22b9da066 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
[ ... ]
> @@ -261,6 +267,35 @@ static int mtk_dp_phy_power_on(struct phy *phy)
>  	return 0;
>  }
> =20
> +static int mtk_dp_phy_disable_all_lanes(struct mtk_dp_phy *dp_phy)
> +{
> +	const struct mtk_dp_phy_pdata *pdata =3D dp_phy->pdata;
> +	const u8 *regs =3D pdata->regs_dig_glb;
> +	int ret;
> +	u32 val;
> +
> +	ret =3D regmap_read(dp_phy->regmap, pdata->off_dig_glb + regs[DP_PHYD_T=
X_CTL_0], &val);
> +	if (ret)
> +		return ret;
> +
> +	/* Get mask of currently enabled lane */
> +	val =3D FIELD_GET(PHYD_TX_LN_EN, val);
> +
> +	/* Disable all lanes (needs to be done one by one, from last to first) =
*/
> +	do {
> +		u32 lane_num =3D fls(val) - 1;
> +		val &=3D ~BIT(lane_num);
                 ^^^^^^^^^^^^^^^^^^^^

[Severity: High]
Does this cause undefined behavior if val is initially 0?

If the PHY register reports 0 enabled lanes (which can happen after a
hardware reset or during initial boot), val will be 0. Since this is an
unconditional do-while loop, fls(0) will return 0, leading to lane_num
evaluating to UINT_MAX.

The subsequent BIT(lane_num) attempt would result in an out-of-bounds
bitwise shift. Could this be changed to a while loop, or check if val is 0
before entering the loop?

> +
> +		ret =3D regmap_clear_bits(dp_phy->regmap,
> +					pdata->off_dig_glb + regs[DP_PHYD_TX_CTL_0],
> +					FIELD_PREP(PHYD_TX_LN_EN, lane_num));
                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

[Severity: High]
Does this clear the correct lanes in the register?

It looks like the bit index lane_num is passed directly to FIELD_PREP here
instead of the bitmask BIT(lane_num), which was correctly used in
mtk_dp_phy_configure().

If lane_num is 3, FIELD_PREP(GENMASK(7, 4), 3) will generate 0x30, which
clears lanes 0 and 1 instead of 0x80 (which would clear lane 3). This seems
like it might repeatedly attempt to clear the wrong lanes and leave higher
lanes enabled.

> +		if (ret)
> +			return ret;
> +	} while (val);
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122008.1950=
9-1-angelogioacchino.delregno@collabora.com?part=3D6

