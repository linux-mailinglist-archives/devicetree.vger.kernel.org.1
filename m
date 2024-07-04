Return-Path: <devicetree+bounces-83109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE5992738F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 12:00:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E01B61C20C9E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127D117D8A6;
	Thu,  4 Jul 2024 10:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A63D18637
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 10:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720087255; cv=none; b=PaSn/24LruD1WsVg3PJCxtFHoj9+VTUdAfeWo7nFRaBOPRKSj540CtPkosCDw1LbN1mC2ITHzuo2MsvQSj09pUgtGeLEtylHXxjMmFQTaEctVsgveCvb6h9zbnngx1b5pg7PZKD0ToezWGkW+FcCORhHl9v2w6iul7CzyWLytuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720087255; c=relaxed/simple;
	bh=pQq3s6I0LyWnys4wxcxeckokpkYYJk44ceQMYNgQbw0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hFga3MxY0LBKCfrx2J1Titp0B6Rdhec229hitV6VyyeZgM7i54nKLil9pKnpv5doq9BLRHbOeydMvYZ2V85bWf3KtzL7RAcqze5k8gkmFNkxpDgO9gf51WBUSuWjr29WY2NeKf7wSkXup5Y4twZWg6UjQTTJ7ZPLO7Hzty71El0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPJGe-0007a4-4D; Thu, 04 Jul 2024 12:00:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 12:00:43 +0200
Message-ID: <3615926.LM0AJKV5NW@diego>
In-Reply-To: <16078476.GIfNKF0EQE@bagend>
References:
 <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Donnerstag, 4. Juli 2024, 11:09:00 CEST schrieb Diederik de Haas:
> On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
> > The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> > for the HDMI port. add support for these to the driver for boards which
> > have them supplied by switchable regulators.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > ---
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
> >  1 file changed, 38 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
> > b64cc62c7b5af..fe4f9556239ac 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/phy/phy.h>
> >  #include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> > 
> >  #include <drm/bridge/dw_hdmi.h>
> >  #include <drm/drm_edid.h>
> > @@ -76,6 +77,8 @@ struct rockchip_hdmi {
> >  	struct clk *ref_clk;
> >  	struct clk *grf_clk;
> >  	struct dw_hdmi *hdmi;
> > +	struct regulator *avdd_0v9;
> > +	struct regulator *avdd_1v8;
> >  	struct phy *phy;
> >  };
> > 
> > @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
> > *hdmi) return PTR_ERR(hdmi->grf_clk);
> >  	}
> > 
> > +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
> > +	if (IS_ERR(hdmi->avdd_0v9))
> > +		return PTR_ERR(hdmi->avdd_0v9);
> > +
> > +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
> > +	if (IS_ERR(hdmi->avdd_1v8))
> > +		return PTR_ERR(hdmi->avdd_1v8);
> > +
> >  	return 0;
> >  }
> > 
> > @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> > struct device *master, return ret;
> >  	}
> > 
> > +	ret = regulator_enable(hdmi->avdd_0v9);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: 
> %d\n", ret);
> > +		goto err_avdd_0v9;
> > +	}
> > +
> > +	ret = regulator_enable(hdmi->avdd_1v8);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: 
> %d\n", ret);
> > +		goto err_avdd_1v8;
> > +	}
> > +
> >  	ret = clk_prepare_enable(hdmi->ref_clk);
> >  	if (ret) {
> >  		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI 
> reference clock: %d\n",
> >  			      ret);
> > -		return ret;
> > +		goto err_clk;
> >  	}
> > 
> >  	if (hdmi->chip_data == &rk3568_chip_data) {
> > @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> > struct device *master, */
> >  	if (IS_ERR(hdmi->hdmi)) {
> >  		ret = PTR_ERR(hdmi->hdmi);
> > -		drm_encoder_cleanup(encoder);
> > -		clk_disable_unprepare(hdmi->ref_clk);
> > +		goto err_bind;
> >  	}
> > 
> > +	return 0;
> > +
> > +err_bind:
> > +	clk_disable_unprepare(hdmi->ref_clk);
> > +	drm_encoder_cleanup(encoder);
> > +err_clk:
> > +	regulator_disable(hdmi->avdd_1v8);
> > +err_avdd_1v8:
> > +	regulator_disable(hdmi->avdd_0v9);
> > +err_avdd_0v9:
> >  	return ret;
> >  }
> > 
> > @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
> > struct device *master,
> > 
> >  	dw_hdmi_unbind(hdmi->hdmi);
> >  	clk_disable_unprepare(hdmi->ref_clk);
> > +
> > +	regulator_disable(hdmi->avdd_1v8);
> > +	regulator_disable(hdmi->avdd_0v9);
> >  }
> > 
> >  static const struct component_ops dw_hdmi_rockchip_ops = {
> 
> Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on 
> devices that should have them?
> 
> On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present 
> and that results in the following warnings:
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator

counter-argument, why not define them in the dts?
I.e. looking at the rock64 schematics, you want the dvideo_avdd_1v8 (from
LDO1) and dvideo_avdd_1v0 (from LDO3) if I'm not mistaken. Why this stuff
is called dvideo and not hdmi in there I have no clue ;-)


Heiko



