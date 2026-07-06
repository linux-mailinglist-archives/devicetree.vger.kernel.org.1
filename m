Return-Path: <devicetree+bounces-321527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YjBjOnoGTGrsewEAu9opvQ
	(envelope-from <devicetree+bounces-321527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:48:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DB05271521F
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:48:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=W6lPCCJM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321527-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-321527-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 59B9A300F78D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E653C553F;
	Mon,  6 Jul 2026 19:47:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774C822A4E8
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:47:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367278; cv=none; b=LTM0Ahtb92f6Ezvn/aZwZ0NduFsEyLfXu2qdY7x6nn7/JTgLRwXao9tVzcSLG8dLHbukPhg32YrGiihjwENkXhCkOydbSKsc/6yVI2jIWqlBJcBKVbXrxTnwzSdLSV+kBEUQLN4ul6C/UVqaQtLrnR1KG2dMC8TSehOovRFK8bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367278; c=relaxed/simple;
	bh=R3b9MOfCUEA8G0wfdLREjAvFkr2w+VuJe1C6bsTTnjU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=otPq6W7gwdL1QyvoumeA+F8cSTzjUQFS3kijhts5UO0lMh3pGiBT4zfSPFyb9EhqhfARVWC41lFDDPLRFtIa/wQJeNOguwZskmuGhlhqWVCAqbIvvR9EmWP+l2d4UgLrsz0Am/MLUqaI50kvXywjhWDXWzCCV7ijwcItcpk3mpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6lPCCJM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA1DB1F000E9;
	Mon,  6 Jul 2026 19:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783367277;
	bh=9h1dkj/a801+juvT6n1q1xdaTjaRLzkZOCHODrSF9LI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W6lPCCJM0quK7a59pG0/cFrCk0OTm+X1DK28ZwwocIWi4YeeUNnE6djztR/Fox6lf
	 /kYG2GEalz3u/VTrM6dKCWM1TV3my+8BBIoIYbAVvNlWF6PlmQzMhTJ2Dc7/6WReX9
	 Il342AzwrmUkV129GxtHv5//VGhU/ErcPJ0cmCwvUUXskEhbKVLHZUmItx+KQ0ST8k
	 vaItVjLFWb0sJ9kanqirJYqtLvlkT76HAWs1t2P9Tw14ZBDCTQLRxbmWU7nujFvxBN
	 VlEINuAHOwsJmPh9ie4NusC3VYvTKyfiVbRh7hsk2qOGGCi6mpO2mn9yDVE+6KB36/
	 2EPUmZrRflFvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/13] drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE
 overflow on 32-bit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260706-dw-hdmi-qp-yuv-v2-5-b91beb33dedf@collabora.com>
References: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
 <20260706-dw-hdmi-qp-yuv-v2-5-b91beb33dedf@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 19:47:55 +0000
Message-Id: <20260706194756.BA1DB1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-321527-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,collabora.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB05271521F

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Sleeping functions are called from CRTC atomic enable and disable =
callbacks, which execute in atomic context.
- [High] 32-bit integer overflow in MIPI D-PHY target clock calculation bef=
ore 64-bit promotion.
- [High] 32-bit integer overflow in HDMI PHY link rate calculation.
--

commit 5fecee5ab858bfe428aa0c5173e40c8dd13919cc
Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE overflow on 32-bit

This commit fixes a 32-bit integer overflow when calculating the maximum
DCLK for the HDMI PHY PLL by redefining VOP2_MAX_DCLK_RATE as an
unsigned long long. This ensures the value is evaluated in 64-bit
arithmetic, preventing high-resolution modes from being wrongly rejected.

Closes: https://lore.kernel.org/all/20260623203310.9F8C81F000E9@smtp.kernel=
.org/

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index e966c0a0266ea..0799eb0dd29fc 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -102,7 +102,7 @@ enum vop2_afbc_format {
>  	VOP2_AFBC_FMT_INVALID =3D -1,
>  };
> =20
> -#define VOP2_MAX_DCLK_RATE		600000000UL
> +#define VOP2_MAX_DCLK_RATE		600000000ULL
> =20
>  /*
>   * bus-format types.

[Severity: High]
This is a pre-existing issue, but do vop2_crtc_atomic_enable() and
vop2_crtc_atomic_disable() call sleeping functions from atomic context?

Looking at drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:

vop2_crtc_atomic_enable() {
    ...
    vop2_lock(vop2);
    ...
}

And:

vop2_crtc_atomic_disable() {
    ...
    vop2_lock(vop2);
    ...
}

According to the DRM display hardware programming guidelines, CRTC atomic
enable and disable callbacks run in atomic context during non-blocking comm=
its,
where sleeping is strictly forbidden.

However, vop2_crtc_atomic_enable() calls vop2_lock() (which takes a mutex),
clk_prepare_enable(), and vop2_enable(). Similarly, vop2_crtc_atomic_disabl=
e()
calls vop2_lock(), wait_for_completion_timeout(), clk_disable_unprepare(), =
and
vop2_disable().

Can this cause kernel warnings, system instability, and potential deadlocks?

[Severity: High]
This isn't a bug introduced by this patch, but does the MIPI D-PHY target c=
lock
calculation in dw_mipi_dsi2_get_lane_mbps() overflow on 32-bit architecture=
s?

Looking at drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c:

dw_mipi_dsi2_get_lane_mbps() {
    ...
    target_phyclk =3D DIV_ROUND_CLOSEST_ULL(lane_rate_kbps * lanes * 1000, =
bpp);
    ...
}

The multiplication lane_rate_kbps * lanes * 1000 is evaluated in 32-bit
arithmetic before DIV_ROUND_CLOSEST_ULL() can promote it to 64-bit. For
high-resolution outputs, this could exceed the 32-bit unsigned maximum and =
wrap
around.

Does this result in an incorrectly configured PHY clock?

[Severity: High]
This is a pre-existing issue, but does the HDMI PHY link rate calculation in
rk_hdptx_phy_clk_set_rate() also suffer from a 32-bit integer overflow?

Looking at drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:

rk_hdptx_phy_clk_set_rate() {
    ...
    link_rate =3D DIV_ROUND_CLOSEST_ULL(rate * hdptx->hdmi_cfg.bpc, 8);
    ...
}

The expression rate * hdptx->hdmi_cfg.bpc is evaluated as an unsigned long.
On 32-bit architectures, this is a 32-bit operation. When rate is large (e.=
g.,
594,000,000 for 4K@60Hz) and bpc is 8, the product exceeds the 32-bit unsig=
ned
limit, causing an overflow before promotion to 64-bit.

Could this yield an invalid HDMI PHY link rate and break display output on
32-bit architectures?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dw-hdmi-qp=
-yuv-v2-0-b91beb33dedf@collabora.com?part=3D5

