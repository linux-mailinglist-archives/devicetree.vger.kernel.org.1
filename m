Return-Path: <devicetree+bounces-323722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PYaDHMaRT2qBjwIAu9opvQ
	(envelope-from <devicetree+bounces-323722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:19:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5757F730E82
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:19:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GCQOAIIw;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323722-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323722-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1AE513001862
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 12:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AAAB40C5A0;
	Thu,  9 Jul 2026 12:11:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129C13F86EA
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 12:11:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783599074; cv=none; b=bmoqddMSHQm+lm9/WPWewgbeUja0nJv38e/ogB4eb27aunRXylOE5CgvgUSsDcx2VWjftrvJpoekRWY15ShoS8gmICcCPZVd+1ryvLKSpCEmUmFC8SyORc7InXxE3QOIwaNCIaOLKDEGabDgPjv8RVnXhhSGDXLrbJ23NawUxeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783599074; c=relaxed/simple;
	bh=s+DKiqT8zvMieeyOE+Yggv4/0gk0C9Q2lMP49LMrr8Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PekePRLiVWakGNv5WCVEHOYFTllDrQ4NAUEmP0Sb0I/CMjfJpq1KI/Qx9WelGYKEdwaJ5D6v/Uu6esWmF/ySMIl7A/IOAJlS5TnD0Db1gWVaHSKLjMr1ryHqkvmjt8lrK1IObRX8uyoredFZYlV5oDo1TwCQEAXQTwCm8P1WE18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCQOAIIw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23CC71F000E9;
	Thu,  9 Jul 2026 12:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783599071;
	bh=mLPEeY4+4PQLiLDTF4FTdJdrFTObDPytpZURwsmJipg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GCQOAIIw1Vy+O3HmMsK0sonTjoLY8TxP6W+AJPpX+72hqGdmwxdL3LF0f2Tttx5Ah
	 37cfDQ4vJtIeY5pYY0rLMSOh4v6qO+N4tllIBogl4SDP3r1L9s+uLTM4QhT8xX/r13
	 hz6CLO03MCs7lqZY+7DI8lqPA+RNBgT8xL9Fc5SeUThcTDGxRQA3/rGlgSi4w8d0Z1
	 1zJ9oBOZVPMCVJnH8DFuiPbQPfgSo2vzW4UHXtrp6o4+mCUiOVsAHNXF8+KE9FW7Ep
	 TkMMsNtt6buKfvrkcL3kBfIdsBgxJKITqvGjnkneYl1fFdvjw9qQqTUTX5eaeyFxsx
	 BOmvxo9G+qL7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 11/12] drm/mediatek: mtk_dp: Add support for eDP1.5
 IPs and MT8196 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709113148.49090-12-angelogioacchino.delregno@collabora.com>
References: <20260709113148.49090-1-angelogioacchino.delregno@collabora.com>
 <20260709113148.49090-12-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 12:11:10 +0000
Message-Id: <20260709121111.23CC71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323722-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,collabora.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5757F730E82

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Flawed hardware reset sequence and register mask conflict for the =
new IP (hwip_v1p4) in mtk_dp_encoder_reset().
- [High] Uninitialized calibration data is applied to PHY registers on MT81=
96 if a legacy device tree is used.

Pre-existing issues:
- [High] Sleeping functions called from atomic context in bridge atomic cal=
lbacks.
--

--- Patch [11]: [PATCH v4 11/12] drm/mediatek: mtk_dp: Add support for eDP1=
.5 IPs and MT8196 SoC ---
commit 21e6cb76ec5d736e41c62351d0dcc4f501bc644f
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Add support for eDP1.5 IPs and MT8196 SoC

Add support for MediaTek's Embedded DisplayPort (eDP) v1.5 IP as
found in the MT8196 SoC and other variants, and enclose some of
the new register writes in specific platform data booleans.

> --- a/drivers/gpu/drm/mediatek/mtk_dp_reg.h
> +++ b/drivers/gpu/drm/mediatek/mtk_dp_reg.h
[ ... ]
> +#define REG_3FF8_DP_ENC_P0_3			0x1ff8
> +#define ENC_PHY_STATE_RESET_ALL_MASK			GENMASK(7, 0)
> +#define PHY_STATE_W_1_DP_ENC_P0_3			BIT(6)
> +#define DP_ENCODER_DVO_ON_W_1				BIT(5)
> +#define DP_ENCODER_PSR_XTAL_FREQ_MHZ_MASK		GENMASK(13, 9)

[ ... ]

> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
[ ... ]
> +static void mtk_dp_encoder_reset(struct mtk_dp *mtk_dp)
> +{
>  	/* dp tx encoder reset all sw */
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004,
>  			   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0,
>  			   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> =20
> +	if (mtk_dp->data->hwip_v1p4) {
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004, 0,
> +				   DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +		mtk_dp_update_bits(mtk_dp, REG_3FF8_DP_ENC_P0_3,
> +				   ENC_PHY_STATE_RESET_ALL_MASK,
> +				   ENC_PHY_STATE_RESET_ALL_MASK);
> +	}
> +
>  	/* Wait for sw reset to complete */
>  	usleep_range(1000, 5000);
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004,
> -			   0, DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +
> +	if (!mtk_dp->data->hwip_v1p4)
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_ENC0_P0_3004,
> +				   0, DP_TX_ENCODER_4P_RESET_SW_DP_ENC0_P0);
> +}

[Severity: High]
Does ENC_PHY_STATE_RESET_ALL_MASK overlap with functional state bits
like PHY_STATE_W_1_DP_ENC_P0_3 and DP_ENCODER_DVO_ON_W_1 defined in
mtk_dp_reg.h?

Also, could the new hwip_v1p4 sequence in mtk_dp_encoder_reset() leave the
encoder PHY stuck in reset? The code asserts ENC_PHY_STATE_RESET_ALL_MASK
before the wait, but there does not appear to be a step to deassert it after
the sleep finishes.

> @@ -2860,7 +3079,8 @@ static int mtk_dp_register_phy(struct mtk_dp *mtk_d=
p)
[ ... ]
>  	/* PHY calibration data is in mtk_dp only for legacy devicetree */
> -	mtk_dp_get_calibration_data(mtk_dp);
> +	if (mtk_dp->data->efuse_fmt)
> +		mtk_dp_get_calibration_data(mtk_dp);
> =20
>  	mtk_dp->phy =3D devm_phy_get(&mtk_dp->phy_dev->dev, "dp");

[ ... ]

> @@ -1359,8 +1550,10 @@ static int mtk_dp_phy_configure(struct mtk_dp *mtk=
_dp,
[ ... ]
>  	/*
>  	 * For legacy, deprecated strategy, set partial PHY calibration here.
>  	 * New-style will set all PHY calibrations with phy ops instead.
>  	 */
>  	if (mtk_dp->phy_dev)
>  		mtk_dp_set_calibration_data(mtk_dp);

[Severity: High]
If a legacy device tree is used on an MT8196 device, could this configurati=
on
apply uninitialized zeros to the PHY hardware?

In mtk_dp_register_phy(), mtk_dp_get_calibration_data() is skipped because
efuse_fmt is NULL for mt8196_edp_data. However, mtk_dp_phy_configure() will
still call mtk_dp_set_calibration_data() if the legacy phy_dev was created,
potentially writing an unpopulated cal_data array directly to the registers.

> +static void mtk_dp_encoder_force_bias_power_on(struct mtk_dp *mtk_dp)
> +{
[ ... ]
> +	/* Wait for the MCU to get LDO ready in PHYD */
> +	msleep(50);
[ ... ]
> +}

[ ... ]

> @@ -2580,6 +2795,10 @@ static void mtk_dp_bridge_atomic_disable(struct dr=
m_bridge *bridge,
[ ... ]
>  	/* SDP path reset sw*/
>  	mtk_dp_sdp_path_reset(mtk_dp);
> =20
> +	/* Make sure BIAS is powered on after reset even when disabled */
> +	if (mtk_dp->data->force_pwr_states)
> +		mtk_dp_encoder_force_bias_power_on(mtk_dp);
> +
>  	/* Ensure the sink is muted */
>  	msleep(20);
>  }

[Severity: High]
This is a pre-existing issue, but does this introduce an additional sleeping
function into an atomic context path?

Since mtk_dp_bridge_atomic_disable() operates in an atomic context during
modesetting, calling mtk_dp_encoder_force_bias_power_on() uses msleep(50),
which could result in kernel warnings or system instability.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709113148.4909=
0-1-angelogioacchino.delregno@collabora.com?part=3D11

