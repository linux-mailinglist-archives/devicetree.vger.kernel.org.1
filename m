Return-Path: <devicetree+bounces-313351-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PgzSBSO9M2qhFgYAu9opvQ
	(envelope-from <devicetree+bounces-313351-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:40:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B9F69EF31
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:40:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313351-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313351-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85FC1302F4DF
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 004B13DFC94;
	Thu, 18 Jun 2026 09:39:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E74395ADD;
	Thu, 18 Jun 2026 09:39:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781775594; cv=none; b=F8I/XnoK0cXD4DCXUGJs5YV8l+KYj9S+UArgJrtfa37hKGX/gPuvEP2FCpXXcKDsZcIfBmUpbXVFh3UL+AqTyFrJus/emjyjdf+Q11JfGL5J8RLmSSZZW3Kv6iAqQKcXcBqJXRpY3PmnjJHOL4bskBwF3Z+E+rQe7O/vcW7dkvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781775594; c=relaxed/simple;
	bh=EccJG8dHIt6cB6jMRTYe4XeLWdRrrB4MeC3puflb1e0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TeJA6frbzZNUaycW2iBA4bVPE5oWW/iu9Z3L32JOy92Ot9SXiHBIfqjkqwZSdo9MNpcyYJuNKthzdCgAvMu/5q9Z1zw1WJ+XWqcmezpIkjzlyKOejP9Sv+cc+FLaq/dlRsiFQdHP+mCW6l0PX1hXrucW8/OgOS9NpvlRQWm7spk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5DFB1200F09;
	Thu, 18 Jun 2026 11:39:46 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa9Du-003Prb-0w;
	Thu, 18 Jun 2026 11:39:46 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa9Du-00000000532-0eH7;
	Thu, 18 Jun 2026 11:39:46 +0200
Message-ID: <7c79f233c863654b0266de4b5ec5a8c72bb17715.camel@pengutronix.de>
Subject: Re: [PATCH 2/9] drm/rockchip: vop2: Reset AXI and DCLK to improve
 robustness
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sandy Huang	
 <hjc@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann	 <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrzej Hajda	 <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>,  Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman	
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli
	 <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2026 11:39:45 +0200
In-Reply-To: <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
	 <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[bounces-313351-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,pengutronix.de:mid,pengutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3B9F69EF31

On Mi, 2026-06-17 at 21:51 +0300, Cristian Ciocaltea wrote:
> Assert the AXI reset in the CRTC disable path, and the VP DCLK reset in
> the enable path.
>=20
> These resets are intended to leave the hardware in a clean state for the
> next use, helping recover from exceptions such as IOMMU page faults, as
> well as to prevent random display output glitches, such as a blank
> image, observed when switching modes that also change the color format,
> e.g. from RGB to YUV420 and vice versa.
>=20
> For now this seems to affect only the RK3588, hence the resets are
> optional and will be provided in the device tree for this SoC only.
>=20
> Co-developed-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 35 ++++++++++++++++++++++=
++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++++
>  2 files changed, 39 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index 4cce3e336f5b..2833fb49ad81 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -17,6 +17,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
> +#include <linux/reset.h>
>  #include <linux/swab.h>
> =20
>  #include <drm/drm.h>
> @@ -860,6 +861,26 @@ static int vop2_core_clks_prepare_enable(struct vop2=
 *vop2)
>  	return ret;
>  }
> =20
> +static void vop2_clk_reset(struct vop2 *vop2, struct reset_control *rstc=
)

The _clk part of the function name is misleading ...

[...]
> @@ -938,6 +959,8 @@ static void vop2_disable(struct vop2 *vop2)
>  {
>  	rockchip_drm_dma_detach_device(vop2->drm, vop2->dev);
> =20
> +	vop2_clk_reset(vop2, vop2->axi_rst);

... because this function is also called with the AXI reset control.

> +
>  	pm_runtime_put_sync(vop2->dev);
> =20
>  	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);
> @@ -1948,6 +1971,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc=
 *crtc,
> =20
>  	vop2_crtc_atomic_try_set_gamma(vop2, vp, crtc, crtc_state);
> =20
> +	vop2_clk_reset(vop2, vp->dclk_rst);
> +
>  	drm_crtc_vblank_on(crtc);
> =20
>  	vop2_unlock(vop2);
> @@ -2531,6 +2556,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk),
>  					     "failed to get %s\n", dclk_name);
> =20
> +		vp->dclk_rst =3D devm_reset_control_get_optional(vop2->dev, dclk_name)=
;

Please use devm_reset_control_get_optional_exclusive() directly.

> +		if (IS_ERR(vp->dclk_rst))
> +			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk_rst),
> +					     "failed to get %s reset\n", dclk_name);
> +
>  		np =3D of_graph_get_remote_node(dev->of_node, i, -1);
>  		if (!np) {
>  			drm_dbg(vop2->drm, "%s: No remote for vp%d\n", __func__, i);
> @@ -2890,6 +2920,11 @@ static int vop2_bind(struct device *dev, struct de=
vice *master, void *data)
>  		return dev_err_probe(drm->dev, PTR_ERR(vop2->pll_hdmiphy1),
>  				     "failed to get pll_hdmiphy1\n");
> =20
> +	vop2->axi_rst =3D devm_reset_control_get_optional(vop2->dev, "axi");

Same as above, devm_reset_control_get_optional_exclusive().

regards
Philipp

