Return-Path: <devicetree+bounces-254737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E18B9D1B707
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26BA33034409
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD1334D4E6;
	Tue, 13 Jan 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="TwqKRaDw"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-e105.zoho.com (sender4-pp-e105.zoho.com [136.143.188.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442B834C155;
	Tue, 13 Jan 2026 21:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.105
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340252; cv=pass; b=BTZYyMvBzSkr+hS5eEELOVr1H260XnR24kjsNe/jYsgNQnqVoHBrrK71DgDaAO+wk49yLHpZytaP8ee/p8qbvgLoEKGYIeOBnHNOhJOgL6Qh8AELQg3PFEPnE9pyFrmXdpyZb16/BLvLq9eZMCQaV9f842Gf8FiExStYgaXyoSg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340252; c=relaxed/simple;
	bh=oGnasdkS0SF20RAaDDFvaDE/jF3YTg9VouxPPTZqgw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fEqKMPcfB6XXVv2V8CTdAN4zEEJn/72aWcDNnVj0fkXjYtyQequel5tJo9n7M6ToVU0eTPYyk0u0W5F0FS2TqB7qrTuCcYbsORvzaMNATb6tq+tMvPmDr6M8FVdhZys0l0qEoLx4tmsSu4ly9mZNWBgcGbqjIpa9yCn37+5y6ZU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=TwqKRaDw; arc=pass smtp.client-ip=136.143.188.105
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1768340226; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MCM+rKGImSssg9iSfQ7g7c1e2cK6QXKDqzCjtSasZYEydr9Ih9j+78vDH5AJKzTzuXrl5OUrbNGeO8d0kbooiHFjRQLx66/wU2E4lLyTEIa4jWrPonZG3aVpTrmjvlKp1s1UifpvxKriqAcRSB9OVwtLryr2EKOxGjb81taaSCM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768340226; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Zei4KTAsJshp6Vcua+q2Y3zJ4iL6WdDmcJtZbA2kELI=; 
	b=I0e7drqOmD3iGkIaip9BwnplAucN+OrBooxvKX7s8jgPQiBjTW3gUqnaM1QLEcIS49OrK9hvkr7ovJBUF3iotQNbCsR35SQy1QnIQsg+8q8Q6+Frw7EoBigincZLkc9sHKJlFJhQAeul2EJipZgW7+FCpaZQb3RrA0FbzFxx518=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768340226;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Zei4KTAsJshp6Vcua+q2Y3zJ4iL6WdDmcJtZbA2kELI=;
	b=TwqKRaDwVsCAqoIMGtn2xssnDGLC35eHrg4Fu4QHtR1kNW/I7QLrVzWw9fWQYZVB
	NXGuUfUc1aWILS/gN2QxuSqsGhKK2XHK9GdfGshg8/3mdKmPb2FTPnLnJNryvCjT7+c
	ltFhr+Nc87Ap8a5Yr+pONCilQkptcQ/tjHGX93fU=
Received: by mx.zohomail.com with SMTPS id 1768340224730540.8247444863133;
	Tue, 13 Jan 2026 13:37:04 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id C6967181010; Tue, 13 Jan 2026 22:36:58 +0100 (CET)
Date: Tue, 13 Jan 2026 22:36:58 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	Laurent.pinchart@ideasonboard.com, mripard@kernel.org, hjc@rock-chips.com, robh@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by
 platform data
Message-ID: <aWa6v2ouVlGYeESo@venus>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109080054.228671-3-andyshrk@163.com>
X-ZohoMailClient: External

Hi,

On Fri, Jan 09, 2026 at 04:00:45PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DW DisplayPort hardware block can be configured to work in single,
> dual,quad pixel mode on differnt platforms, so make the pixel mode set
> by plat_data to support the upcoming rk3576 variant.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

> 
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c   |  8 +-------
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 19 +++++++++++++++----
>  include/drm/bridge/dw_dp.h                |  7 +++++++
>  3 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> index 82aaf74e1bc0..eccf6299bdb7 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> @@ -352,12 +352,6 @@ enum {
>  	DW_DP_YCBCR420_16BIT,
>  };
>  
> -enum {
> -	DW_DP_MP_SINGLE_PIXEL,
> -	DW_DP_MP_DUAL_PIXEL,
> -	DW_DP_MP_QUAD_PIXEL,
> -};
> -
>  enum {
>  	DW_DP_SDP_VERTICAL_INTERVAL = BIT(0),
>  	DW_DP_SDP_HORIZONTAL_INTERVAL = BIT(1),
> @@ -1984,7 +1978,7 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
>  		return ERR_CAST(dp);
>  
>  	dp->dev = dev;
> -	dp->pixel_mode = DW_DP_MP_QUAD_PIXEL;
> +	dp->pixel_mode = plat_data->pixel_mode;
>  
>  	dp->plat_data.max_link_rate = plat_data->max_link_rate;
>  	bridge = &dp->bridge;
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> index 25ab4e46301e..89d614d53596 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -75,7 +75,7 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
>  static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
>  {
>  	struct platform_device *pdev = to_platform_device(dev);
> -	struct dw_dp_plat_data plat_data;
> +	const struct dw_dp_plat_data *plat_data;
>  	struct drm_device *drm_dev = data;
>  	struct rockchip_dw_dp *dp;
>  	struct drm_encoder *encoder;
> @@ -89,7 +89,10 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>  	dp->dev = dev;
>  	platform_set_drvdata(pdev, dp);
>  
> -	plat_data.max_link_rate = 810000;
> +	plat_data = of_device_get_match_data(dev);
> +	if (!plat_data)
> +		return -ENODEV;
> +
>  	encoder = &dp->encoder.encoder;
>  	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
>  	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
> @@ -99,7 +102,7 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>  		return ret;
>  	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
>  
> -	dp->base = dw_dp_bind(dev, encoder, &plat_data);
> +	dp->base = dw_dp_bind(dev, encoder, plat_data);
>  	if (IS_ERR(dp->base)) {
>  		ret = PTR_ERR(dp->base);
>  		return ret;
> @@ -134,8 +137,16 @@ static void dw_dp_remove(struct platform_device *pdev)
>  	component_del(dp->dev, &dw_dp_rockchip_component_ops);
>  }
>  
> +static const struct dw_dp_plat_data rk3588_dp_plat_data = {
> +	.max_link_rate = 810000,
> +	.pixel_mode = DW_DP_MP_QUAD_PIXEL,
> +};
> +
>  static const struct of_device_id dw_dp_of_match[] = {
> -	{ .compatible = "rockchip,rk3588-dp", },
> +	{
> +		.compatible = "rockchip,rk3588-dp",
> +		.data = &rk3588_dp_plat_data,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dw_dp_of_match);
> diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
> index d05df49fd884..25363541e69d 100644
> --- a/include/drm/bridge/dw_dp.h
> +++ b/include/drm/bridge/dw_dp.h
> @@ -11,8 +11,15 @@
>  struct drm_encoder;
>  struct dw_dp;
>  
> +enum {
> +	DW_DP_MP_SINGLE_PIXEL,
> +	DW_DP_MP_DUAL_PIXEL,
> +	DW_DP_MP_QUAD_PIXEL,
> +};
> +
>  struct dw_dp_plat_data {
>  	u32 max_link_rate;
> +	u8 pixel_mode;
>  };
>  
>  struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> -- 
> 2.43.0
> 

