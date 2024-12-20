Return-Path: <devicetree+bounces-132898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A929F88D9
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 01:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D64C188F7B2
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61619A50;
	Fri, 20 Dec 2024 00:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gdGUX8KI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD233C2F
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734653641; cv=none; b=GbUcwFfkmQGOZMfBN7Sqn9FkJry4xXk3w4OkemJN4Kj3JvJYviK572YDz3E05+KuK7sSyiZGKksRHRPQVe/++7fxbm8jQLWPKl6WXAne8WfFb2EZ/DoAu4lxZ767ni/GmcZcsTejUXl2J2iuT+JeLIKykzawpHBoT/Dl6z4nqbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734653641; c=relaxed/simple;
	bh=uXu431X11ofwlKTUpJzPfZ/D4Xk02sMcgWtKZyGAzPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TQS/0I9bxg1p4hgWsnCoyZ5AGXro1HGEwWXNHJ00FsvDiutYb5zTm8CyqQe2ZiOtkm8ESKYIOmFaGSt2c3/zIfliR0KyUpHmO5JLhiRZO+lyfLcF5TKR6EbAY3rnGDM4yyciXWtdy6NfF5a08x5ZYMJSQQ2J+Y216wlMnC8Lspg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gdGUX8KI; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so1345221e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734653637; x=1735258437; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+t86gi9G7/Nyl3NdC1IVXRnYkcURnLh8hewaEmUmJ3Y=;
        b=gdGUX8KI3vDre/O8ik3ddgq6KNxWdidMH9t7hqn2/n9RzX7oHOmHprSY5bHanUQZvA
         S9/GY25/RKcJM4OLj4pP0MH+xv/fYUKOPwEZc1g0dAbDYdJNDpt3Sl6JDAByqaqxcIiW
         W8NT616gqahiR8UMNlnmRcQh2tao1PMgf2Vq1cPy4R6kUFatw57jR3rWG0bpFM3lgFFi
         /3kI6KoigyetBrnO3Y0LNajJo6+Jiw4R+tFfaQJvPnT2lcsreUkwV/YwaqlzAAzo953O
         Ia+prFmfNMlv1vFvAAwCL3CeXDNdzsFriG1hz6q1t6VIcsM34m+bQ6q3obn/reV8l3QO
         9PZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734653637; x=1735258437;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+t86gi9G7/Nyl3NdC1IVXRnYkcURnLh8hewaEmUmJ3Y=;
        b=i20slaJA3XjEdmlOBgTZLmrdxxsMBFOHAVfEY2k3GBmnu24npEhfflyqhmHcZyyW/K
         m+mnBcLTuwcwH1sAUar79dKIRD0pWi2yWvsvEcaF0lkW1JQET1h9sXBsKYeCsNOFq8Ez
         55dBGUv9kaLSE5BqR/lnfc8CwJhNd2Tk/jRJU5UqGZkmTacpjiffy79YIWjA2kh0Rw5J
         XVTivTE35th5uCbsDDBdKiTk2P7Dcn3VsdIrIIN5bq8e+RP2aLSxnlc5TNNrnhGB2SIO
         2BxGLhJkCyF3UobDY01ltSpXH+5//hHwDjgKcKNM9Gwz3I9r5I4vpywfL/TUV+0kz5D0
         lY4g==
X-Forwarded-Encrypted: i=1; AJvYcCX8OoNoTYVRVeUnWRdcre2rkNH3wUoZ/j18esRmIczBCcwvP5WeJxyhrM+b/UIXIAWGuuyVXt86nHdY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1LOvzwD1Z0dtgbxld+GSL2l2qwk+yln7wjWNjXYlgLPYgZs1M
	uf2fFAkF/XXKvStXQPezrCX3hT0/LCUJrrSm7RqsFYhZeqQo9RLVrTStAphfiRc=
X-Gm-Gg: ASbGnctVl2N7+hmIXm0kmDH6zlbHGizDZTxpeM2Ts74cDaNfg5VlmIOSiyTnMTAtW5f
	qLNEqpFQqpBpgJPmDoh/f8smUCiKJcGaI+vjfh4R91pTdi/Z8azdlhNYYRFL0i8hBhu3ADDoaII
	myfhxdV1H1cL/suuxda2pSE0TyaS+g2zLkrGh2ckccdnp+ey2R+vT7lwNFZ8zhDOlyLbzjDwmzY
	hSKht1GF8HBwuKQ/FmsBa0VNYOgxByi5YzmyrRcC6v+6U2I/s9/IPGHUEKxduh3l/B8R7zXZ1Jl
	LE0n659s01te5oV5yyLpoMHuM/HAt6oNeQLC
X-Google-Smtp-Source: AGHT+IF+jUkTs+trNuGfxVH/FmJYswxWVXFWxwsAch+XkSokcdZa7gP9TyRJCdDwYd2ZnKdNocqqsQ==
X-Received: by 2002:a05:6512:33cd:b0:540:358d:d9b7 with SMTP id 2adb3069b0e04-5422957ac6cmr152434e87.52.1734653637396;
        Thu, 19 Dec 2024 16:13:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238215b6sm308711e87.188.2024.12.19.16.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:13:56 -0800 (PST)
Date: Fri, 20 Dec 2024 02:13:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <a6vvydjbx3hbckoy74iiyzguyyacwvdh6iirqydjfvhwgocw3a@knecggjcbcid>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-8-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-8-damon.ding@rock-chips.com>

On Thu, Dec 19, 2024 at 04:05:56PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 56 +++++++++++++++++++
>  2 files changed, 57 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 6f10d88a34c5..9429c50cc1bc 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1696,6 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
>  	if (dp->plat_data->power_on)
>  		dp->plat_data->power_on(dp->plat_data);
>  
> +	phy_set_mode(dp->phy, PHY_MODE_DP);
>  	phy_power_on(dp->phy);
>  
>  	analogix_dp_init_dp(dp);
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> index 3afc73c858c4..613ce504bea6 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> @@ -11,6 +11,7 @@
>  #include <linux/gpio/consumer.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> +#include <linux/phy/phy.h>
>  
>  #include <drm/bridge/analogix_dp.h>
>  
> @@ -513,10 +514,25 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
>  void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
>  {
>  	u32 reg;
> +	int ret;
>  
>  	reg = bwtype;
>  	if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
>  		writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;

Should not be necessary, you are only setting the .set_rate.

> +		phy_cfg.dp.link_rate =
> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> +		phy_cfg.dp.set_rate = true;
> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
> @@ -530,9 +546,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>  void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
>  {
>  	u32 reg;
> +	int ret;
>  
>  	reg = count;
>  	writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> +		phy_cfg.dp.set_lanes = true;
> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
> @@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>  void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
>  {
>  	u8 lane;
> +	int ret;
>  
>  	for (lane = 0; lane < dp->link_train.lane_count; lane++)
>  		writel(dp->link_train.training_lane[lane],
>  		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
> +
> +	if (dp->phy) {
> +		union phy_configure_opts phy_cfg = {0};
> +
> +		for (lane = 0; lane < dp->link_train.lane_count; lane++) {
> +			u8 training_lane = dp->link_train.training_lane[lane];
> +			u8 vs, pe;
> +
> +			vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> +			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
> +			pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
> +			phy_cfg.dp.voltage[lane] = vs;
> +			phy_cfg.dp.pre[lane] = pe;
> +		}
> +
> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> +		phy_cfg.dp.link_rate =
> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;

This two should not be necessary, please drop them.

> +		phy_cfg.dp.set_voltages = true;
> +		ret = phy_configure(dp->phy, &phy_cfg);
> +		if (ret && ret != -EOPNOTSUPP) {
> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
> +			return;
> +		}
> +	}
>  }
>  
>  u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

