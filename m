Return-Path: <devicetree+bounces-134727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6169FE60A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 123873A2905
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 251B41A9B2B;
	Mon, 30 Dec 2024 12:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wwVCosCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2251A83E2
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562735; cv=none; b=kI2V5mRVXqlbDm+UqncdAVTUyeAUABQ998EP0bxXIljAhwgDgDa/VQwdkIANsHOL59HA9juhEb4NL+iEMtVBMRvJqPN7qi0V5bwcQ5DQ+Db+o6bZQ5wagvhbX3XQ4fsZIpbtd9qFifWs0AE094nZSo1deYdNzkIAoAuXwOwIvwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562735; c=relaxed/simple;
	bh=EiaUpYPrjpV08LaJznTtzsEZ8F09HBVuLJdxOOvCn0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=raO4Wl3o7bVGwM28T4dzbYj2T9wZs9UOF0dQCueeTVrKCGMTPCt1By148h0jy0OGtYN7RWm4VQx8Seef6kWpzLSNvTNKk7Rf+kW0s2pfmBZpA+9WS02KGhJcAPAFrwlFC2sHhk2GqbknCgYsaTqrHJuK+25ttQ2b7OPZTmfvDwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wwVCosCf; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30037784fceso99956141fa.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562731; x=1736167531; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tYYedohEc9vf/SRWvXYMUw8vyrAayil4GiZBetI0DRQ=;
        b=wwVCosCfedW+xIE7prFEClcvSh0a2M+bcebvSAr131ArxZRldPAZKcEdej14RBIlUM
         k3Wf7vYLviytjpJPlxAt/ALxVxJIPI4i173JxHpLDr5BQcvICWjxTo2ZhZ3MPnjRh5VE
         yAmsHZA1on9YKlhHSelFV8/PhO8He17NIIoAdWOmkKyh68lNDl2TaA8aMJk1/qvdiYcE
         t/Zrn8zlhUFmZ+HBkJ/pvvpyL/NmdA2Ue6tC6oziD0s8oEUVYC/pCSIw4RroyIz2wSPf
         QCU7B9er7JuQedRK6X58Aj3ejonxlj+lpr6mHhZ3UwDT8qGu92g2Y39ehy5rG1q31f2O
         E+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562731; x=1736167531;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tYYedohEc9vf/SRWvXYMUw8vyrAayil4GiZBetI0DRQ=;
        b=ErXYod+bu6/uYLQX/pMQR0tsaxBqBxUA47+gI6pgpPfYKQe7nsWiK05Hkv8nWmMAEV
         obNphlPGQYdM8jcpSt3fjoRN9OWg1Wp0pSCtGY+MsPDfALaaxgrO0I12ZiPKbRjnLtto
         v+x3+qGaLUeH7oO71sjNnEEShHYBlA+r5WU1NDjUy2+zCSWvBK/gJTpnQTy/mh2fQbLn
         +540ReHhux0aiVFNVlxVoWZyfhJwXetCQgDx3/kaTjmkIP8Gv0rFRWPVvrsXd40gqxBi
         CPL8U8Nyn2Lt3HuDE66d+VkJdodH4NDsRvYK1k+sLQY0NkN0AB6j+xEhyR8SNdEAFzwb
         MS6A==
X-Forwarded-Encrypted: i=1; AJvYcCWUZ0W8xiqXkoLPNBwKpzHhuTmx/q31qVdyA9uSRx6hkHrb857nj3L2j+cwiL9AYBe8rlgWpf/VL8+O@vger.kernel.org
X-Gm-Message-State: AOJu0YxXNTc3CrVpIdP9yOWOw8JyX3oT/pmFGgogZWgBGfnh6H79ub53
	UfPAULx5YCXJII+6MyDmCndg9s2fyPgkQomT+RYYjF9qbNxnwtZ3azYDXIdMKks=
X-Gm-Gg: ASbGncsX430xWIHjq2cj2ic8L9R2k1ehFrgjeBUxc2edFwZCKtAY1M/ca3UwR3oLSpq
	IfpLp4I80xka9lD9qMEbAZIpHyXZnJE85MIpvR+1KQc6L6ybPk3UNSyxf1h0SN/iiGCwehp6OG5
	DKzgBmu6cJFiqujWZG9+LNEGuoP5howg8ulh2KTkR0GXEKNpbgXgZ5RkUFHkKbcLYv5zLDOU21c
	dpa5kMktE66203x7hHnhAKK611HmIIbmfHsHiGQqMqlGUrvEN3X1KVBhTNWKseqAdzYU/uJ0e0H
	eMTrxufil4sBm5hpy75us674ACOGS4bmoViZ
X-Google-Smtp-Source: AGHT+IFHlYAccbO2U+l1/+qdqnOJIZ9pmRBeI/fEyYOfTMJsxs8AYRAGyUUI0bNMBdlPg6thA6H6QQ==
X-Received: by 2002:a05:651c:2223:b0:302:4130:e19d with SMTP id 38308e7fff4ca-30468535947mr120605401fa.9.1735562731167;
        Mon, 30 Dec 2024 04:45:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cae6sm34594261fa.23.2024.12.30.04.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:45:30 -0800 (PST)
Date: Mon, 30 Dec 2024 14:45:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 07/17] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
Message-ID: <shr7ak7keqza3gw6wra2zra35qht2cxlzkvtuhzl3swzf2fwxy@i2v4o53lhese>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-8-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-8-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:03PM +0800, Damon Ding wrote:
> Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> pre-emphasis configurations of each link rate have been verified according
> to the eDP 1.3 requirements.

Well... Please describe what's happening here. That the HDMI PHY on your
platform also provides support for DP / eDP. Please document any design
decisions that you had to make.

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the module author
> 
> Changes in v3:
> - Split this patch into two, one for correction and the other for
>   extension
> 
> Changes in v4:
> - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
>   phy_configure() result for &phy_configure_opts.dp.link_rate and
>   &phy_configure_opts.dp.lanes
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 896 +++++++++++++++++-
>  1 file changed, 889 insertions(+), 7 deletions(-)
> 
> @@ -933,9 +1484,339 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
>  	return rk_hdptx_phy_consumer_put(hdptx, false);
>  }
>  
> +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> +				 int submode)
> +{
> +	return 0;
> +}

No need for the stub, please drop it. The host controller driver can
still call phy_set_mode() / _ext(), the call will return 0.

> +
> +static int rk_hdptx_phy_verify_config(struct rk_hdptx_phy *hdptx,
> +				      struct phy_configure_opts_dp *dp)
> +{
> +	int i;
> +
> +	if (dp->set_rate) {
> +		switch (dp->link_rate) {
> +		case 1620:
> +		case 2700:
> +		case 5400:
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (dp->set_lanes) {
> +		switch (dp->lanes) {
> +		case 0:

Is it really a valid config to have 0 lanes?

> +		case 1:
> +		case 2:
> +		case 4:
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +	}
> +
> +	if (dp->set_voltages) {
> +		for (i = 0; i < hdptx->lanes; i++) {
> +			if (dp->voltage[i] > 3 || dp->pre[i] > 3)
> +				return -EINVAL;
> +
> +			if (dp->voltage[i] + dp->pre[i] > 3)
> +				return -EINVAL;
> +		}
> +	}
> +
> +	return 0;
> +}
> +

[..]

> +
> +static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opts)
> +{
> +	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
> +	enum phy_mode mode = phy_get_mode(phy);
> +	int ret;
> +
> +	if (mode != PHY_MODE_DP)
> +		return -EINVAL;

I'd say, return 0;

> +
> +	ret = rk_hdptx_phy_verify_config(hdptx, &opts->dp);
> +	if (ret) {
> +		dev_err(hdptx->dev, "invalid params for phy configure\n");
> +		return ret;
> +	}
> +
> +	if (opts->dp.set_rate) {
> +		ret = rk_hdptx_phy_set_rate(hdptx, &opts->dp);
> +		if (ret) {
> +			dev_err(hdptx->dev, "failed to set rate: %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	if (opts->dp.set_lanes) {
> +		ret = rk_hdptx_phy_set_lanes(hdptx, &opts->dp);
> +		if (ret) {
> +			dev_err(hdptx->dev, "failed to set lanes: %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	if (opts->dp.set_voltages) {
> +		ret = rk_hdptx_phy_set_voltages(hdptx, &opts->dp);
> +		if (ret) {
> +			dev_err(hdptx->dev, "failed to set voltages: %d\n",
> +				ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static const struct phy_ops rk_hdptx_phy_ops = {
>  	.power_on  = rk_hdptx_phy_power_on,
>  	.power_off = rk_hdptx_phy_power_off,
> +	.set_mode  = rk_hdptx_phy_set_mode,
> +	.configure = rk_hdptx_phy_configure,
>  	.owner	   = THIS_MODULE,
>  };
>  
> @@ -1149,5 +2030,6 @@ module_platform_driver(rk_hdptx_phy_driver);
>  
>  MODULE_AUTHOR("Algea Cao <algea.cao@rock-chips.com>");
>  MODULE_AUTHOR("Cristian Ciocaltea <cristian.ciocaltea@collabora.com>");
> +MODULE_AUTHOR("Damon Ding <damon.ding@rock-chips.com>");
>  MODULE_DESCRIPTION("Samsung HDMI/eDP Transmitter Combo PHY Driver");
>  MODULE_LICENSE("GPL");
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

