Return-Path: <devicetree+bounces-325409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XakGMi2/VGpfqgMAu9opvQ
	(envelope-from <devicetree+bounces-325409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:34:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E219749DDA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:34:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OlFiZV6H;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325409-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325409-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A15AF300952B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C2E380FCC;
	Mon, 13 Jul 2026 10:32:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7937F727
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:32:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938767; cv=none; b=iCjxyAwl0OVyVL6E0Zn+rWWdS8Qk6z9qE4oacVcxIC5xof421QhcJdA2Mf8NFSceykS3+8khHvRKoczBQOphb/nrj+2MTIXuV9qDVSrAU2+Je5AAjGken+3wdwsnPoWn9Yf5iPB0VDu0+0dzaWVZbdKb9HurJGuVw73CswxJwWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938767; c=relaxed/simple;
	bh=Gq/IKh6U63DM5DnP2Bdjjtjdx1lxagenvVxlRS40xVw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GTkrrGnAKpJ61NLxQuCn/CVZxpgieqcxpMQBAD2fTx5fDiCxSnideN6ANYu+1AQWJ12ljLa5drf2QV4HVqe/OduO9GgeAM+9WOfEHxc4AlEmHHnrAzE91EBxeqCFwIqwPitu0nBeNWLCjCJ087pVxXHZyZSVdrgEtK+EzSOuKQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlFiZV6H; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E37C1F000E9;
	Mon, 13 Jul 2026 10:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938763;
	bh=5Dz+t3Wdm4GaqxoQWFG0bDZjkowP7rv++fG1N/ZnYUk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OlFiZV6HQSV3MRGlNbsU7DBAge7FSP/fOzEIbvsnqj8zT1kI7H7BFHtDw1p5XX8/h
	 XFEjK+mxnND9ErxmRAFDmJ4jxmghGGc9bNWuhXw2TZ7LwiWQLYZM3ui6ngOMg0IKZo
	 L8YY9ekTT7WBzSyAvzb0QMhOj44tWcVWYciEbXLKnrOUhHqbdQ+oTMrDLodS0IqoCV
	 pCajFg+EvQwEEGcpcvXDk2GS8t3/uJeAtkM1wuxzz3YEF4z+5eb/+RyjZqwMsl8Hho
	 6WiS0Vpvh32SBN+EKgznQtSU/t582+zxA6Hk/d2ks1c3R4kG3ANJ5b8+RJC7P6Nw6u
	 WYYfCCgjqgqig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: mediatek: Add support for MT8196 MIPI DSI
 PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
In-Reply-To: <20260713102322.21782-3-angelogioacchino.delregno@collabora.com>
References: <20260713102322.21782-1-angelogioacchino.delregno@collabora.com>
 <20260713102322.21782-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:32:42 +0000
Message-Id: <20260713103243.0E37C1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325409-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,linaro.org,lists.freedesktop.org,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E219749DDA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Sleeping in Atomic Context
- [Low] Dead Code / Hardware Capability Restriction
--

--- Patch [2]: [PATCH v2 2/2] phy: mediatek: Add support for MT8196 MIPI DS=
I PHY ---
commit 290d9427c436e302c4aba5a26f5e3e1e9bb728f5
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: mediatek: Add support for MT8196 MIPI DSI PHY

Add support for the MIPI DSI PHY found in the MediaTek MT8196 SoC
and its variants. This PHY has a different register layout and provides
support for more hardware features compared to the previous generation.

> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c b/drivers/phy=
/mediatek/phy-mtk-mipi-dsi-mt8196.c
> new file mode 100644
> index 0000000000000..273f236fa7e9e
> --- /dev/null
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8196.c
> @@ -0,0 +1,196 @@
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
> +	if (mipi_tx->data_rate >=3D 2000000000) {
> +		/* Select higher signaling voltage for fast data rates */
> +		voltage =3D RG_DSI_PRD_REF_DEF;

[Severity: Low]
Is this block reachable? Later in mtk_mipi_tx_pll_determine_rate(),
req->rate is clamped to a maximum of 1,600,000,000 Hz. If the hardware
supports rates above 2.0 GHz, does the clamp limit need to be increased,
or is this dead code?

> +		pres =3D MIPITX_PRESERVED_DEF;
> +		txdiv =3D 1;
> +		txdiv0 =3D 0;
> +	} else if (mipi_tx->data_rate >=3D 1000000000) {
[ ... ]
> +	mtk_phy_set_bits(base + MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +	mtk_phy_clear_bits(base + MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +	usleep_range(30, 60);

[Severity: High]
Does this code sleep in an atomic context?

The mtk_mipi_tx_pll_enable() function is registered as the .enable
callback in mtk_mipi_tx_pll_ops below. The Common Clock Framework invokes
.enable under an enable_lock spinlock with interrupts disabled.

Calling usleep_range() here, which internally calls schedule(), will lead
to scheduling while atomic. Should this use an atomic-safe delay like
udelay(30), or should this logic be moved to the sleepable .prepare
callback?

> +
> +	mtk_phy_clear_bits(base + MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> +	writel(pcw, base + MIPITX_PLL_CON0);
> +	mtk_phy_update_field(base + MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV, txdiv0);
> +	usleep_range(30, 60);
> +
> +	mtk_phy_set_bits(base + MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +	usleep_range(30, 60);
> +
> +	return 0;
> +}
[ ... ]
> +static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
> +					  struct clk_rate_request *req)
> +{
> +	req->rate =3D clamp_val(req->rate, 125000000, 1600000000);
> +
> +	return 0;
> +}
> +
> +static const struct clk_ops mtk_mipi_tx_pll_ops =3D {
> +	.enable =3D mtk_mipi_tx_pll_enable,
> +	.disable =3D mtk_mipi_tx_pll_disable,
> +	.determine_rate =3D mtk_mipi_tx_pll_determine_rate,
> +	.set_rate =3D mtk_mipi_tx_pll_set_rate,
> +	.recalc_rate =3D mtk_mipi_tx_pll_recalc_rate,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713102322.2178=
2-1-angelogioacchino.delregno@collabora.com?part=3D2

