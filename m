Return-Path: <devicetree+bounces-325426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6xRXMozCVGojSQAAu9opvQ
	(envelope-from <devicetree+bounces-325426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE2749F63
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:48:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NQXKinrI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325426-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325426-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 179273038284
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272F93E2AB1;
	Mon, 13 Jul 2026 10:48:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50BE3DBD77
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:48:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783939718; cv=none; b=GoFhTtmf9mJvvRDaygXY/+ymV0CYfsZonjCUmz4qwWCLytklmuqN3TUsg9nQf3xYUdcaQPWypVOr6vrHXSy0CF1qTdxOK2shrNG2QGL4OR1aJwjoQiWa5w8oQlTnT7kWVGTg30DCi8PVCJHTGFm9A6c6RNMng/c9dl7Nni2/wT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783939718; c=relaxed/simple;
	bh=ca04SHVGrGf9srV2cq7jOJ6Ck74o6PMKz777drQj78s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bL6z9Z/tgTr8u5Xmn+HpyywKWlR3z2ip354SWv2S9VxvBXsYR7/P/1oJT+z4B0bizDnKhiUK96TveDuoE1MPS2kdBR1qs1ymKNVAoCsgdsrM9ffokbtukwIeY4wsD0enbGiNiD3vZOJj+FdF1M5Cdq0x8aV3xm8asWiWfP4yaK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQXKinrI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B14401F000E9;
	Mon, 13 Jul 2026 10:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783939716;
	bh=joM5xgBMc4RGmzMrirARnsAMqCbi+hseeTpklEeWnqo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NQXKinrIg9//o0fJBswvaUnIFClXlbvufjwxhxiQzNiUN+VETRDFM+7g5gdvzDQ6O
	 9E/IjbbdeM/Qk4P4xEk68XBBPQkFM7pUlk+STlyXZLaNY6McVVm2f//w5QriwD4bJm
	 1NAga6WZLWuFHzfhVbT6YwQRAUmGOkDLVfjGdbDnklZqy23of59R+2tKeTQr8uGnh4
	 29uVQzOQaeveYE2RNSWh0sfVqTqiC1caWZmBcEEIqxxG3RADDCGmdOUwqK9xi2I7Fd
	 jzRtGNYrJFLEVb4IqRA/NViBACFFYFg+g6y5RSF0daOJVS5CZc/v325MZyYHGqe1GL
	 +oyFUnnAyq7zA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DSI
 PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com
In-Reply-To: <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
References: <20260713103805.23030-1-angelogioacchino.delregno@collabora.com>
 <20260713103805.23030-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:48:35 +0000
Message-Id: <20260713104835.B14401F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325426-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:robh@kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.freedesktop.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70AE2749F63

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Signaling voltage boost is exclusively tied to the absolute maxi=
mum clamped frequency, preventing high data rates from receiving the boost.
--

--- Patch [2]: [PATCH v3 2/2] phy: mediatek: Add support for MT8196 MIPI DS=
I PHY ---
commit a6b40caad1ac266a0481ef7b26baffceb672008c
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: mediatek: Add support for MT8196 MIPI DSI PHY

This commit adds support for the MIPI DSI PHY found in the MediaTek MT8196
SoC and its variants. It introduces a new register layout and basic D-PHY
functionality needed to drive MIPI DSI displays.

> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c b/drivers/phy=
/mediatek/phy-mtk-mipi-dsi-mt8196.c
> new file mode 100644
> index 0000000000000..eac3db9922dba
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c

[ ... ]

> +static int mtk_mipi_tx_pll_enable(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx =3D mtk_mipi_tx_from_clk_hw(hw);
> +	void __iomem *base =3D mipi_tx->regs;
> +	u32 voltage =3D RG_DSI_PRD_REF_MINI;
> +	u32 pres =3D MIPITX_PRESERVED_MINI;
> +	unsigned long long pcw_calc;
> +	unsigned int txdiv, txdiv0;
> +	u32 pcw;
> +
> +	dev_dbg(mipi_tx->dev, "enable: %u bps\n", mipi_tx->data_rate);
> +
> +	if (mipi_tx->data_rate >=3D DSI_PHY_PLL_MAX_RATE_HZ) {
> +		/* Select higher signaling voltage for fast data rates */
> +		voltage =3D RG_DSI_PRD_REF_DEF;
> +		pres =3D MIPITX_PRESERVED_DEF;
> +		txdiv =3D 1;
> +		txdiv0 =3D 0;
> +	} else if (mipi_tx->data_rate >=3D 1000000000) {

[Severity: Medium]
Does this logic unintentionally restrict the higher signaling voltage to on=
ly
exact matches of the maximum PLL rate?

Since mtk_mipi_tx_pll_determine_rate() clamps the clock rate to
DSI_PHY_PLL_MAX_RATE_HZ (2.0 GHz), mipi_tx->data_rate can never exceed this
value. Consequently, panels requesting data rates slightly below 2.0 GHz
(for example, 1.99 GHz) will fall through to the 1.0 GHz branch instead of
receiving the voltage boost and correct PLL dividers intended for fast data
rates.

Could this conflation between the PLL octave band threshold and the maximum
frequency clamp macro also break the PLL divider logic if the maximum
supported rate limit is increased in the future?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713103805.2303=
0-1-angelogioacchino.delregno@collabora.com?part=3D2

