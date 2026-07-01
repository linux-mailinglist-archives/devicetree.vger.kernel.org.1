Return-Path: <devicetree+bounces-318676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 50MfO+8fRWq37QoAu9opvQ
	(envelope-from <devicetree+bounces-318676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:10:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6883E6EE8AD
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:10:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G4HZKJRx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318676-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318676-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D02D13008508
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2631B25A357;
	Wed,  1 Jul 2026 14:03:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE78233953
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:03:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782914638; cv=none; b=qNUBscYtudSFXgXOgWHO67UmxmuWNkKTbAQzs9hwdwGQVcN17u3LbdWJwE2oi3u/A6ovOYE/+x9+fkv+oZWYDEv8pg6DAb+HnuU0eCxpL1gwjTAbQ/wFxPMeU+TM+Wmr+8cTUyx9e3nTznXnQSrBezNOOigPmda1Jo0tX+KakzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782914638; c=relaxed/simple;
	bh=TCN5hGAbc0oqLHsMMoJdp8/Vz6qpVDX1zHZJrF/Pub0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uAmEtsw91hv+h43QyA2wBssGqnvRTbaqTqbffboEF7JEeYJWdHQT4I/SXKClPnSDYiW+AQpd91OJRcidiqDJOf2KdtLSu2z5wlXdocFXWKbNl9MJ4kKeyApRus22sOt/PyTl7EKConhCO8xwfdAKW5SREUjIa+bEuYG9PxHRZP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4HZKJRx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489D41F000E9;
	Wed,  1 Jul 2026 14:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782914636;
	bh=fSxLhZL6LMdZZwCThbrEs6bzCY8M3xVKr+vtVj4jAGk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G4HZKJRxUf2FE05x949C1QvTlEUP82/OTv2WGVu4pGuLNS98fCrDH3zeNzf9LAUEx
	 FKVgFj/KEPxnuaTQrhapiiCW8ux4iMhU+Q1BI7SGESNb+ZL1MZxUHPFM08q+yIobgC
	 SXsj+Fp7Bv6I1mjW4gkU6tU7BsdZhUBRzH+pJdB8eiocIXGPaPqT+wEYbsMAEB2Cpv
	 ei+Xjc9KoV9cKjq8RhxyTl8n+6zk3gytHzm4yBpoI8XaYdkWo4OzrLrT+y/fClYo4V
	 ZBW1k/AEOkUG8Ug+JudSoOL4qh+fw3vudIUWfIZepFch0EwWJJifQV1akFtf7LMDcP
	 oHMTzYTUKwnJA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/11] drm/mediatek: mtk_dp: Add support for eDP1.5 IPs
 and MT8196 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701122024.19557-11-angelogioacchino.delregno@collabora.com>
References: <20260701122024.19557-1-angelogioacchino.delregno@collabora.com>
 <20260701122024.19557-11-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 14:03:55 +0000
Message-Id: <20260701140356.489D41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-318676-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6883E6EE8AD

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] Newly introduced sleeping function msleep() is used in an atomic c=
ontext path via bridge atomic_disable.
- [High] The SDP_DP13_EN_DP_ENC1_P0 bit is added to the value but omitted f=
rom the mask, preventing SDP from actually being enabled.
- [High] NULL pointer dereference when parsing calibration data due to miss=
ing efuse_fmt.

Pre-existing issues:
- [High] Preexisting sleeping functions used in atomic context via atomic e=
nable/disable callbacks.
--

commit c515b507239926f8609226c47569e9b95e171972
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Add support for eDP1.5 IPs and MT8196 SoC

This commit adds support for MediaTek's Embedded DisplayPort (eDP) v1.5 IP =
as
found in the MT8196 SoC and other variants. It introduces new data structur=
es,
modifies encoder paths, and encloses register writes in platform data boole=
ans.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index 2d58eacb3d3e6..605ead7fa9bf6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c

[ ... ]

> @@ -647,7 +668,16 @@ static void mtk_dp_setup_encoder(struct mtk_dp *mtk_=
dp)
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC1_P0_3364,
>  			   FIFO_READ_START_POINT_DP_ENC1_P0_VAL << 12,
>  			   FIFO_READ_START_POINT_DP_ENC1_P0_MASK);
> -	mtk_dp_write(mtk_dp, MTK_DP_ENC1_P0_3368, DP_ENC1_P0_3368_VAL);
> +
> +	mask =3D VIDEO_SRAM_FIFO_CNT_RESET_SEL_DP_ENC1_P0 | VIDEO_STABLE_CNT_TH=
RD_DP_ENC1_P0;
> +	mask |=3D BS2BS_MODE_DP_ENC1_P0;
> +
> +	val =3D mask;
> +
> +	if (mtk_dp->data->sdp_encoder1_enable)
> +		val |=3D SDP_DP13_EN_DP_ENC1_P0;
> +
> +	mtk_dp_update_bits(mtk_dp, MTK_DP_ENC1_P0_3368, val, mask);
>  }

[Severity: High]
Does this code successfully enable the Secondary Data Packet (SDP)?

The SDP_DP13_EN_DP_ENC1_P0 bit is added to the val variable, but it does
not appear to be added to the mask. Since mtk_dp_update_bits() applies
the mask before writing, won't this omit the bit and prevent SDP from
actually being enabled?

[ ... ]

> @@ -1106,6 +1136,72 @@ static void mtk_dp_hwirq_enable(struct mtk_dp *mtk=
_dp, bool enable)
>  			   IRQ_MASK_DP_TRANS_P0_MASK);
>  }
> =20
> +static void mtk_dp_encoder_force_bias_power_on(struct mtk_dp *mtk_dp)
> +{
> +	/* Force MCU to enable BIAS */
> +	mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +			   ENC_PHY_PWR_OVERWRITE_EN, ENC_PHY_PWR_OVERWRITE_EN);
> +	mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +			   FIELD_PREP_CONST(ENC_PHY_PWR_STATE_OVERWRITE_MASK,
> +					    ENC_PHY_BIAS_PWR_ON),
> +			   ENC_PHY_PWR_STATE_OVERWRITE_MASK);
> +
> +	/* Wait for the MCU to get LDO ready in PHYD */
> +	msleep(50);
> +
> +	mtk_dp_update_bits(mtk_dp, REG_3F44_DP_ENC_P0_3,
> +			   0, ENC_PHY_PWR_OVERWRITE_EN);
> +}

[Severity: High]
Is it safe to use msleep() in this context?

This function is called from mtk_dp_bridge_atomic_disable(), which runs as
part of the atomic commit tail. According to DRM subsystem guidelines,
atomic commit callbacks execute in an atomic context where sleeping
functions are unsafe and can lead to warnings or system instability.

[ ... ]

> @@ -2583,6 +2796,9 @@ static void mtk_dp_bridge_atomic_disable(struct drm=
_bridge *bridge,
>  	/* SDP path reset sw*/
>  	mtk_dp_sdp_path_reset(mtk_dp);
> =20
> +	if (mtk_dp->data->force_pwr_states)
> +		mtk_dp_encoder_force_bias_power_on(mtk_dp);
> +
>  	/* Ensure the sink is muted */
>  	msleep(20);
>  }

[Severity: High]
This is a pre-existing issue, but is it safe to have msleep(20) here?

The mtk_dp_bridge_atomic_disable() callback executes in an atomic context
during display modeset or disable. Calling sleeping functions like msleep()
or usleep_range() (inside the preceding mtk_dp_sdp_path_reset() call) from
an atomic context violates core DRM atomic context rules and can cause
system instability.

[ ... ]

> @@ -3107,6 +3325,19 @@ static const struct mtk_dp_data mt8195_dp_data =3D=
 {
>  	.audio_supported =3D true,
>  	.audio_m_div2_bit =3D MT8195_AUDIO_M_CODE_MULT_DIV_SEL_DP_ENC0_P0_DIV_2,
>  	.hw_max_link_rate =3D DP_LINK_BW_5_4,
> +	.sdp_encoder1_enable =3D true,
> +};
> +
> +static const struct mtk_dp_data mt8196_edp_data =3D {
> +	.bridge_type =3D DRM_MODE_CONNECTOR_eDP,
> +	.smc_cmd =3D MTK_DP_SIP_ATF_EDP_SET_VID_MUTE,
> +	.audio_supported =3D false,
> +	.audio_m_div2_bit =3D MT8195_AUDIO_M_CODE_MULT_DIV_SEL_DP_ENC0_P0_DIV_2,
> +	.hw_max_link_rate =3D DP_LINK_BW_8_1,
> +	.hwip_v1p4 =3D true,
> +	.aux_hpd_supported =3D true,
> +	.force_pwr_states =3D true,
> +	.psr_supported =3D true,
>  };

[Severity: High]
Can this structure lead to a NULL pointer dereference?

The mt8196_edp_data definition lacks the efuse_fmt field. If the devicetree
node for the MT8196 eDP lacks a phys property, the driver will fall back to
its legacy PHY registration path.

The legacy path calls mtk_dp_get_calibration_data() which attempts to
iterate over the array:

	for (i =3D 0; i < MTK_DP_CAL_MAX; i++) {
		fmt =3D &mtk_dp->data->efuse_fmt[i];
		...
	}

Because efuse_fmt is NULL, wouldn't this cause a kernel panic during probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122024.1955=
7-1-angelogioacchino.delregno@collabora.com?part=3D10

