Return-Path: <devicetree+bounces-131302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BE89F2C80
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:58:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36F547A2134
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3B5200B85;
	Mon, 16 Dec 2024 08:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f9dJ4Xqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E9B1FF7D6
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734339469; cv=none; b=mhEuA6SPKfdHWE/bkYmhtY2ieo9bsrZl18lND/QYVG/Z7KRV+30kFjkxPHq6cijdBFBDt+hx7K0whS8cIiGXb/Rn3ExFtd99GZEF30ICo/DvolSC7qRbSAzSJZp/+AuziuYDJVfn07vzOPg4D60TYlYAk9w4uBLw+CE5ar1p0pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734339469; c=relaxed/simple;
	bh=S5VLprH0cz66HrQeJ7pyy//8DbDpPwv2pP3P/+DCTQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p3LhiVufW9MTrIJClxNbB8Q6/LmJYiQ7mkLX2zLTUgu4BRnpbEeUhPgFoB/KIXXwtK4RRcE9retThivTk22+AXBAfCgDpvi3EazaguqFFxGg312XRO115Hl5fAkkw9cKtXNxEtFZdK/sKcVSkjOp8Qix3BzPxPRtX/fX+/0YZYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f9dJ4Xqf; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3035210e2d1so7694341fa.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734339465; x=1734944265; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AjIJpKGlM0gtWiQBxlwaVUAhcYgn8uwwEWeXUlNCUao=;
        b=f9dJ4XqfCrkkGAcSSuNTr2SodpfvwtztzIJdWVHB+0ewcKxryxUfU5ZjVBmVC5+zK4
         9OK3Vouj8Pz1iG8FpTQHrbqOMSyBR6hFpbUALSzlKyA04dNFRZZeCJL1ADIfDCdJzx5X
         qwf/5i/1kxBcm1HGRsZJ97tAAH9SzCoKMAThkVPDAaOtsvcMZpCeofwohuARl6svlV9z
         tDYv9uVUZa1Oivf6f8eZK+n33QIfkzE2KlQGBPNAw2EFEeqxFY7tgCr99gGBhcwP9YuM
         VJ6dhGdNE+8AXEgC7sQfDfSRd1D3g96t99NsCo89SwjLIwgutya0m58zP8rP+V8wlg+E
         iwwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734339465; x=1734944265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjIJpKGlM0gtWiQBxlwaVUAhcYgn8uwwEWeXUlNCUao=;
        b=PMQcX3/PsODe9QCEa7Pbfe4iSSrp7V5NMfRo8ybnaXzrmRkd1xtFNun2kTnHDW3Wo4
         09xPsqq8sWyqaj0loJkxu/JNtEfK34yKlEETUpF5GmsZs1s5qENknmn4c4C5Vq/8f0EL
         dhnQa1psr6ZRdsO7m5ZpkDpCUcax3aNRje/9pGxa6iGX//OIrfOtbaiaeqMDn1F90Gut
         am9Fgbs+XjRDZ8UicqekwNVboi2xZ+MFZ8COJhc2UHJ98HfusG6y3bhNQy4+UBt7Oi4i
         K1a5MHnRZ+TwpH1P/rpBhLoE961f8HDelfqN7QCuFWP/Q/0ZLpE2xBaZBPnCegb//fmp
         S7Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXH2U1od/SekrWD5U5J7PgZpw66AKkfqfX3dYODTvbTI/0X8IuU6JMn6Y9ptQQquw9qx8dOSrtYgm5E@vger.kernel.org
X-Gm-Message-State: AOJu0YxhbrvFrkNPR4IF9ZzryQxOdW4yaSY2BSmmxjuMaTRPf4fp3NrO
	Tl+4WkdOIi/33p5/lvpWUJs5QOOi4nV7E5QfpsEZc146+X2mQsbyT1wUWTEC0E8=
X-Gm-Gg: ASbGncu1MSqxQG+iQ5GVDfnKJL+/joXWKCIe84/AhgMBwzlogDa9trmbnwB2INaqVKr
	x0j0+rOsGGe+tNPu0tPbe9U6WuIW4DfOMwp5VrTwlzVnmv14FpWUzI3eoC6HXd4Hxg/TJj7CD4h
	YwL7HMpCCmTH4DcRXb2epK3Cby3e5XassbxhE/ohj+3bCxVG8+18wdIqKlb07ymLXkCRttJV2s3
	Fse2KJoYN+Sgkb9JV3j7oLx6aqTplJZkS1ql0FN3dCdOAfd7M+fF4dU0oo62SeUyt6QA0ZDW3OI
	B728nVNBq9fpdRY4MIJYGOCJ25A8/AEB5jHh
X-Google-Smtp-Source: AGHT+IGiv0XpHh+7rtFdMzcdCLnItW3iZioZ/1D4bSk6d6rk/mbtm3bcDCP3tB0pIzXojiHobYEBPA==
X-Received: by 2002:a2e:be1e:0:b0:303:4289:b991 with SMTP id 38308e7fff4ca-303428a04efmr28820241fa.19.1734339465327;
        Mon, 16 Dec 2024 00:57:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344046c9asm8429141fa.50.2024.12.16.00.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:57:44 -0800 (PST)
Date: Mon, 16 Dec 2024 10:57:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 03/11] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <gwogudb5vae7wu452zwuqmdlyaibenoso4f5pjmu3uttckhy2w@shndol4mz5n4>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-4-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216031225.3746-4-damon.ding@rock-chips.com>

On Mon, Dec 16, 2024 at 11:12:17AM +0800, Damon Ding wrote:
> RK3588 integrates the analogix eDP 1.3 TX controller IP and the HDMI/eDP
> TX Combo PHY based on a Samsung IP block, and there are also two
> independent eDP display interface on RK3588 Soc.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz, without
> the tests of audio, PSR and other eDP 1.3 specific features.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add support for the other eDP output edp1
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 82 ++++++++++++++++---
>  include/drm/bridge/analogix_dp.h              |  3 +-
>  2 files changed, 74 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 871606a31ef1..4c9a55776ada 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -51,10 +51,12 @@ struct rockchip_grf_reg_field {
>  /**
>   * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
>   * @lcdc_sel: grf register field of lcdc_sel
> + * @edp_mode: grf register field of edp_mode
>   * @chip_type: specific chip type
>   */
>  struct rockchip_dp_chip_data {
>  	const struct rockchip_grf_reg_field lcdc_sel;
> +	const struct rockchip_grf_reg_field edp_mode;
>  	u32	chip_type;
>  };
>  
> @@ -134,12 +136,21 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>  		return ret;
>  	}
>  
> +	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
> +	if (ret != 0)
> +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);

Is it to be called for non-eDP hosts too? Or for older hosts?

> +
>  	return ret;
>  }
>  
>  static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>  {
>  	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
> +	int ret;
> +
> +	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 0);
> +	if (ret != 0)
> +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);

Same question.

>  
>  	clk_disable_unprepare(dp->pclk);
>  
> @@ -203,6 +214,10 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>  	struct rockchip_dp_device *dp = encoder_to_dp(encoder);
>  	struct drm_crtc *crtc;
>  	struct drm_crtc_state *old_crtc_state;
> +	struct of_endpoint endpoint;
> +	struct device_node *remote_port, *remote_port_parent;
> +	char name[32];
> +	u32 port_id;
>  	int ret;
>  
>  	crtc = rockchip_dp_drm_get_new_crtc(encoder, state);
> @@ -220,13 +235,27 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
>  		return;
>  	}
>  
> -	ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
> +	ret = drm_of_encoder_active_endpoint(dp->dev->of_node, encoder, &endpoint);
>  	if (ret < 0)
>  		return;
>  
> -	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
> +	remote_port_parent = of_graph_get_remote_port_parent(endpoint.local_node);
> +	if (remote_port_parent) {
> +		if (of_get_child_by_name(remote_port_parent, "ports")) {
> +			remote_port = of_graph_get_remote_port(endpoint.local_node);
> +			of_property_read_u32(remote_port, "reg", &port_id);
> +			of_node_put(remote_port);
> +			sprintf(name, "%s vp%d", remote_port_parent->full_name, port_id);
> +		} else {
> +			sprintf(name, "%s %s",
> +				remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
> +		}
> +		of_node_put(remote_port_parent);
> +
> +		DRM_DEV_DEBUG(dp->dev, "%s output to edp\n", name);
> +	}

The "output to dp" message got dropped. Is it expected?

>  
> -	ret = rockchip_grf_field_write(dp->grf, &dp->data->lcdc_sel, ret);
> +	ret = rockchip_grf_field_write(dp->grf, &dp->data->lcdc_sel, endpoint.id);
>  	if (ret != 0)
>  		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
>  
> @@ -396,6 +425,7 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	const struct rockchip_dp_chip_data *dp_data;
>  	struct drm_panel *panel = NULL;
>  	struct rockchip_dp_device *dp;
> +	int id, i;
>  	int ret;
>  
>  	dp_data = of_device_get_match_data(dev);
> @@ -410,9 +440,22 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	if (!dp)
>  		return -ENOMEM;
>  
> +	id = of_alias_get_id(dev->of_node, "edp");
> +	if (id < 0)
> +		id = 0;

Alias is not documented.

Please check how other platforms handle device -> ID conversion and
consider following it (yes, the best option currently known is to
hardcode bus addresses into the driver data).

> +
> +	i = 0;
> +	while (is_rockchip(dp_data[i].chip_type))
> +		i++;
> +
> +	if (id >= i) {
> +		DRM_DEV_ERROR(dev, "invalid edp id: %d\n", id);
> +		return -ENODEV;
> +	}

Is it applicable to non-eDP case?

> +
>  	dp->dev = dev;
>  	dp->adp = ERR_PTR(-ENODEV);
> -	dp->data = dp_data;
> +	dp->data = &dp_data[id];
>  	dp->plat_data.panel = panel;
>  	dp->plat_data.dev_type = dp->data->chip_type;
>  	dp->plat_data.power_on = rockchip_dp_poweron;
> @@ -464,19 +507,38 @@ static int rockchip_dp_resume(struct device *dev)
>  static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
>  		rockchip_dp_resume, NULL);
>  
> -static const struct rockchip_dp_chip_data rk3399_edp = {
> -	.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
> -	.chip_type = RK3399_EDP,
> +static const struct rockchip_dp_chip_data rk3399_edp[] = {
> +	{
> +		.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
> +		.chip_type = RK3399_EDP,
> +	},
> +	{ /* sentinel */ }
> +};
> +
> +static const struct rockchip_dp_chip_data rk3288_dp[] = {
> +	{
> +		.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
> +		.chip_type = RK3288_DP,
> +	},
> +	{ /* sentinel */ }
>  };
>  
> -static const struct rockchip_dp_chip_data rk3288_dp = {
> -	.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
> -	.chip_type = RK3288_DP,
> +static const struct rockchip_dp_chip_data rk3588_edp[] = {
> +	{
> +		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
> +		.chip_type = RK3588_EDP,
> +	},
> +	{
> +		.edp_mode = GRF_REG_FIELD(0x0004, 0, 0),
> +		.chip_type = RK3588_EDP,
> +	},
> +	{ /* sentinel */ }
>  };
>  
>  static const struct of_device_id rockchip_dp_dt_ids[] = {
>  	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
>  	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
> +	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 6002c5666031..54086cb2d97d 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -15,11 +15,12 @@ enum analogix_dp_devtype {
>  	EXYNOS_DP,
>  	RK3288_DP,
>  	RK3399_EDP,
> +	RK3588_EDP,
>  };
>  
>  static inline bool is_rockchip(enum analogix_dp_devtype type)
>  {
> -	return type == RK3288_DP || type == RK3399_EDP;
> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
>  }
>  
>  struct analogix_dp_plat_data {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

