Return-Path: <devicetree+bounces-83096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20399272B1
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 11:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 43334B23754
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 09:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9511649CC;
	Thu,  4 Jul 2024 09:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="KpyxZLqO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta1.migadu.com (out-183.mta1.migadu.com [95.215.58.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25235748F
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 09:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720084161; cv=none; b=nVXWBTqwpKL6OIL8H7rbgwf1jlCnl+5kld5+4QIKaFssMlgchXItXsNXY4/EMOuD45cVkns+TFZwHBwEyIVq5Cn3tCsdaipOrB0O3wD0VEfEQl4tv8v2a70CQaBwWvqm9xML091J1JDIeCI5bwoUw3MsgZu4/eUi8OpMxCFUr0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720084161; c=relaxed/simple;
	bh=WRGQbHSKk9L/SCFX/awSo9iKdO99w1Vshn1XrDQHcew=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kOGppIFGodGh65Sj1GfrgTX4E4dP2H7oFwPYdPHu6jBEYTgs2rCYnt/MOL610437UIJXtOcaWV4AHhb3V94ExnfJ7QBKmjkpgDdCqw3ZRTwSoLfVMD/SwpnhugWwl/KOuU4ml/4WYRewLT6ulJGp6dBU5XhEeEZJ9/TojvkgA08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=KpyxZLqO; arc=none smtp.client-ip=95.215.58.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720084151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KC61pWdXwZrmIIucHf8/SOh6wlKbm/uUH0pdpGEOCRg=;
	b=KpyxZLqOAG/5dsv1nUoc3OjUQ2JVIikIYzIoAH1VK6Lqw/gGTOFopP8F+FkJgxR47ogz+b
	I2W3qQvXVMBpSWd2ivT4+6XiZ00aglhJg6UIPf3sg1TV1dNoavpm7BUHloQGQsHI2hC1Px
	QUAbZlr31vlhMDjtPE/X227+/Q1vpdIPM+QjOubdPBCn2M9ocxnwwpP0wsW1xNbGt95mG5
	ek8W7o5Z4HIK1zFJQUIT0WoohTPlRcwpOz1/aFS6xkvGMv0CsOm0+qseBe6SFySRQJXazm
	p+g3WQhxeFuYo41+XcNv6aVX3yMjI5G6vDYRB/NQON97wqD4pqUiFCLfqEGxBg==
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: kernel@pengutronix.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: benjamin.gaignard@collabora.com
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: pgwipeout@gmail.com
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: dmitry.osipenko@collabora.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 11:09:00 +0200
Message-ID: <16078476.GIfNKF0EQE@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220422072841.2206452-10-s.hauer@pengutronix.de>
References:
 <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1778036.H1nxkmP1m4";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart1778036.H1nxkmP1m4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 04 Jul 2024 11:09:00 +0200
Message-ID: <16078476.GIfNKF0EQE@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220422072841.2206452-10-s.hauer@pengutronix.de>
MIME-Version: 1.0

On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
> b64cc62c7b5af..fe4f9556239ac 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -9,6 +9,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> 
>  #include <drm/bridge/dw_hdmi.h>
>  #include <drm/drm_edid.h>
> @@ -76,6 +77,8 @@ struct rockchip_hdmi {
>  	struct clk *ref_clk;
>  	struct clk *grf_clk;
>  	struct dw_hdmi *hdmi;
> +	struct regulator *avdd_0v9;
> +	struct regulator *avdd_1v8;
>  	struct phy *phy;
>  };
> 
> @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
> *hdmi) return PTR_ERR(hdmi->grf_clk);
>  	}
> 
> +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
> +	if (IS_ERR(hdmi->avdd_0v9))
> +		return PTR_ERR(hdmi->avdd_0v9);
> +
> +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
> +	if (IS_ERR(hdmi->avdd_1v8))
> +		return PTR_ERR(hdmi->avdd_1v8);
> +
>  	return 0;
>  }
> 
> @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> struct device *master, return ret;
>  	}
> 
> +	ret = regulator_enable(hdmi->avdd_0v9);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: 
%d\n", ret);
> +		goto err_avdd_0v9;
> +	}
> +
> +	ret = regulator_enable(hdmi->avdd_1v8);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: 
%d\n", ret);
> +		goto err_avdd_1v8;
> +	}
> +
>  	ret = clk_prepare_enable(hdmi->ref_clk);
>  	if (ret) {
>  		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI 
reference clock: %d\n",
>  			      ret);
> -		return ret;
> +		goto err_clk;
>  	}
> 
>  	if (hdmi->chip_data == &rk3568_chip_data) {
> @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> struct device *master, */
>  	if (IS_ERR(hdmi->hdmi)) {
>  		ret = PTR_ERR(hdmi->hdmi);
> -		drm_encoder_cleanup(encoder);
> -		clk_disable_unprepare(hdmi->ref_clk);
> +		goto err_bind;
>  	}
> 
> +	return 0;
> +
> +err_bind:
> +	clk_disable_unprepare(hdmi->ref_clk);
> +	drm_encoder_cleanup(encoder);
> +err_clk:
> +	regulator_disable(hdmi->avdd_1v8);
> +err_avdd_1v8:
> +	regulator_disable(hdmi->avdd_0v9);
> +err_avdd_0v9:
>  	return ret;
>  }
> 
> @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
> struct device *master,
> 
>  	dw_hdmi_unbind(hdmi->hdmi);
>  	clk_disable_unprepare(hdmi->ref_clk);
> +
> +	regulator_disable(hdmi->avdd_1v8);
> +	regulator_disable(hdmi->avdd_0v9);
>  }
> 
>  static const struct component_ops dw_hdmi_rockchip_ops = {

Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on 
devices that should have them?

On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present 
and that results in the following warnings:
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator

And those get repeated a number of times. In my last 6.10-rc5 boot it was 5 
each and in my last 6.10-rc6 boot it was 9 each. It seems the number varies 
per boot and is not connected to the specific kernel version.

In [1] I got 36 "dummy regulator" warnings, but some were from others.

[1] https://lore.kernel.org/linux-rockchip/2528743.FZeJfPzi8P@bagend/

Cheers,
  Diederik
--nextPart1778036.H1nxkmP1m4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZmrAAKCRDXblvOeH7b
bpE6AP9JmF962eoq9QTZo9Unls/1Ob+XfH95r6BWNtb34b9xSgD/Yeq7kP4RyaXH
HYDpxbMk7ZRrqIBWNLKRKU7cII3f0AU=
=g+Dz
-----END PGP SIGNATURE-----

--nextPart1778036.H1nxkmP1m4--




