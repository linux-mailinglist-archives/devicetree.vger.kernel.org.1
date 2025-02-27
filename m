Return-Path: <devicetree+bounces-152133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1366AA48270
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAB5A188509F
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 15:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575D325F7A2;
	Thu, 27 Feb 2025 14:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AfldS48T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEB923CEE8
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 14:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740668388; cv=none; b=euBZwrr6S3oVa580AKHkcpgfHcRTYocTWbr5gjW2xruof0/a7gNMeB7/cGckFgY3Z8tPNi7gchLfsNMj0eVA1kylU6y4CjfbYpDGgz5YtOZmUcM2ME1fOTxqRXkIkoFwgvdlw/znmu65qHLONDmwpolHb+lEsialOEVqP8/auYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740668388; c=relaxed/simple;
	bh=hu6PCPNxWYe6TO8BfZheoDp55jzoBSnRVokC6usg7ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FjPXYmTG8BORslzANBnq16Mhk7Q0LaMG1F6DLe/jNBoBsTSE9ukq/moaNrsHdDribGOw6NyfWJHnDN776+yR0HpezT/xXqreCGRulzXo1oJicDBUfpVqoIStjfMnmNL/TTOyd1wE6R5ers4u54Tzp0cz34NYiD1qGSeOsOveSFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AfldS48T; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-547bcef2f96so1069592e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 06:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740668383; x=1741273183; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HxB5rk2wDXT4mhpMg1e6s6YmU8Yw2zzZEzuHwWlfNNo=;
        b=AfldS48T1/rwytxb9wmamNPxAPPI2BcaAiaKOinOE1bO3lUq2v5j+3sovxDhPiAcNe
         4KUWviLJGomylajmkA3PhacnarzVlCxpWn2vLSGWwwm5jTJxTMe7Q2QvP9hm2KdhNgzj
         xIr8nX1XXoivZExFiS+AqhQOz4BieN23jfs3QQ3Zu2KgI//5ZURdUiuMMfAUl8hW0N06
         owjPCXKOSVWbu1Ur7J6c1l0e9rnJ+AU5MO667nmd7d2bHyOaLeg10D110f26ZkzMMRG/
         Od8j3USNqBJT/SFfZW+cH3FKlIXNPA+B4h60c+6p5LfarweH6gzBh75988a8IrPGPskT
         +nmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740668383; x=1741273183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HxB5rk2wDXT4mhpMg1e6s6YmU8Yw2zzZEzuHwWlfNNo=;
        b=U26++snydgZa9K+4Tx1eAel0VRZfg65206N+Kwzd6OeC3KQqGr6013RHBwlEoTKPTF
         4+GLTCGZjYtLtXBRcsXmFd1QPYO6WSq1hLhM++aL+0jRT41SW+9mGcQrV/XflLyTZqt9
         rtDk0/9WTuBgauXgUAertCRM/HJT0bkaZ1GikDQDAIa6NMyvrVkJjT76R6LAQfYN7Lfa
         +ipCeOgu7r1t/1tIpD/c3nJIiePDrfRuHhYJPOsrydpvZ8R8Q0jOqhGV0/yBaOWb6plf
         4YtGNByE68ZFZQPLdbdo31bycyfy4rXDUonqZ2/sX37j9WS/M0rZlD0S+NSGdyLqGsB4
         nABg==
X-Forwarded-Encrypted: i=1; AJvYcCXZEhPK9SnkemhsFat2CWskDhgtOLbBFp/AKC7OT1CDPVVbrCA3b6hiFbXOQ+u7yt3FVcP2adSTZ6hL@vger.kernel.org
X-Gm-Message-State: AOJu0YxrmXrgY8xpiIwwO6w/TqeA/h6IhQ7f7KTD3bxmMa0aN4JbxJsj
	YGnyZ2GK4ch3nRAeg2CC3cupeJgDjcsk/tlBz8MDHBatohjaXlB/BFn4oFYlpzI=
X-Gm-Gg: ASbGnctSBzfAhBz9yPc6X+uiCNxpVoO6WBb/Bdh0KJ0W7vJcAuYDMbe5Imr4rZmSJgi
	lOHUaQ377DdYZLPjEzwwagbjthsYLLyW2JHI7WCIcCN+NSxMrFiXWbodtBnVH69p8FRhsEuI74w
	HwIGTQB2vKSGUGXELWMOrxzn/w8UMu2KtpdZ3h3pi5XtKae7K8kLiqvuaR5hkwv/b1ognzj4uQd
	djc6GnARWDjLQg1mtT/ds1Y22zY3SbEBWIV0L0X5odX7OMJN91neGn1FW8FpJLoe3iVMG4wlWYT
	bkahK2hcxMav5y7/GTBuXttk+BN28sDHGAtG71XV+kASyYwI5eD5+qMrFt4iDDDxThcc+LeIWWI
	1RpSZ+Q==
X-Google-Smtp-Source: AGHT+IGKmniXL4M4wb/RJwLSpFqcjFFTAbzhghjbQyHbEKnMjC2+uC8jzBm13hyn17/VFvjsBLyeGA==
X-Received: by 2002:a05:6512:110d:b0:545:62c:4b13 with SMTP id 2adb3069b0e04-54838f4c9efmr11981358e87.40.1740668381655;
        Thu, 27 Feb 2025 06:59:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443be6a0sm187706e87.193.2025.02.27.06.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 06:59:41 -0800 (PST)
Date: Thu, 27 Feb 2025 16:59:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org, 
	thara.gopinath@gmail.com, robh@kernel.org, krzk+dt@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v8 3/5] thermal: qcom: tsens: add support for tsens v1
 without RPM
Message-ID: <eafirt5dg4vmafmu2wph47zrrzyqrz65z5ypqrl7fhr77qckfi@dgqwkkhnz4ge>
References: <20250227110423.8418-1-george.moussalem@outlook.com>
 <DS7PR19MB888322C58FC555299256E8D99DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB888322C58FC555299256E8D99DCD2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Thu, Feb 27, 2025 at 02:56:41PM +0400, George Moussalem wrote:
> Adding generic support for SoCs with tsens v1.0 IP with no RPM.
> Due to lack of RPM, tsens has to be reset and enabled in the driver
> init.
> 
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/thermal/qcom/tsens-v1.c | 48 +++++++++++++++++++++++++++++++++
>  drivers/thermal/qcom/tsens.c    | 24 ++++++++++-------
>  drivers/thermal/qcom/tsens.h    |  1 +
>  3 files changed, 64 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-v1.c b/drivers/thermal/qcom/tsens-v1.c
> index 1a7874676f68..877b27274fd2 100644
> --- a/drivers/thermal/qcom/tsens-v1.c
> +++ b/drivers/thermal/qcom/tsens-v1.c
> @@ -79,6 +79,17 @@ static struct tsens_features tsens_v1_feat = {
>  	.trip_max_temp	= 120000,
>  };
>  
> +static struct tsens_features tsens_v1_no_rpm_feat = {
> +	.ver_major	= VER_1_X_NO_RPM,
> +	.crit_int	= 0,
> +	.combo_int	= 0,
> +	.adc		= 1,
> +	.srot_split	= 1,
> +	.max_sensors	= 11,
> +	.trip_min_temp	= -40000,
> +	.trip_max_temp	= 120000,
> +};
> +
>  static const struct reg_field tsens_v1_regfields[MAX_REGFIELDS] = {
>  	/* ----- SROT ------ */
>  	/* VERSION */
> @@ -150,6 +161,43 @@ static int __init init_8956(struct tsens_priv *priv) {
>  	return init_common(priv);
>  }
>  
> +static int __init init_tsens_v1_no_rpm(struct tsens_priv *priv)
> +{
> +	int i, ret;
> +	u32 mask = 0;
> +
> +	ret = init_common(priv);
> +	if (ret < 0) {
> +		dev_err(priv->dev, "Init common failed %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 1);
> +	if (ret) {
> +		dev_err(priv->dev, "Reset failed\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < priv->num_sensors; i++)
> +		mask |= BIT(priv->sensor[i].hw_id);
> +
> +	ret = regmap_field_update_bits(priv->rf[SENSOR_EN], mask, mask);
> +	if (ret) {
> +		dev_err(priv->dev, "Sensor Enable failed\n");
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_EN], 1);
> +	if (ret) {
> +		dev_err(priv->dev, "Enable failed\n");
> +		return ret;
> +	}
> +
> +	ret = regmap_field_write(priv->rf[TSENS_SW_RST], 0);
> +
> +	return ret;
> +}
> +
>  static const struct tsens_ops ops_generic_v1 = {
>  	.init		= init_common,
>  	.calibrate	= calibrate_v1,
> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> index 1f5d4de017d9..f860ea86d130 100644
> --- a/drivers/thermal/qcom/tsens.c
> +++ b/drivers/thermal/qcom/tsens.c
> @@ -447,7 +447,7 @@ static void tsens_set_interrupt(struct tsens_priv *priv, u32 hw_id,
>  	dev_dbg(priv->dev, "[%u] %s: %s -> %s\n", hw_id, __func__,
>  		irq_type ? ((irq_type == 1) ? "UP" : "CRITICAL") : "LOW",
>  		enable ? "en" : "dis");
> -	if (tsens_version(priv) > VER_1_X)
> +	if (tsens_version(priv) > VER_1_X_NO_RPM)

I'd suggest to replace these checks with >= VER_2_X. This saves us from
all the troubles if there is another 1.x 'modification' later on.

>  		tsens_set_interrupt_v2(priv, hw_id, irq_type, enable);
>  	else
>  		tsens_set_interrupt_v1(priv, hw_id, irq_type, enable);
> @@ -499,7 +499,7 @@ static int tsens_read_irq_state(struct tsens_priv *priv, u32 hw_id,
>  	ret = regmap_field_read(priv->rf[LOW_INT_CLEAR_0 + hw_id], &d->low_irq_clear);
>  	if (ret)
>  		return ret;
> -	if (tsens_version(priv) > VER_1_X) {
> +	if (tsens_version(priv) > VER_1_X_NO_RPM) {
>  		ret = regmap_field_read(priv->rf[UP_INT_MASK_0 + hw_id], &d->up_irq_mask);
>  		if (ret)
>  			return ret;
> @@ -543,7 +543,7 @@ static int tsens_read_irq_state(struct tsens_priv *priv, u32 hw_id,
>  
>  static inline u32 masked_irq(u32 hw_id, u32 mask, enum tsens_ver ver)
>  {
> -	if (ver > VER_1_X)
> +	if (ver > VER_1_X_NO_RPM)
>  		return mask & (1 << hw_id);
>  
>  	/* v1, v0.1 don't have a irq mask register */
> @@ -733,7 +733,7 @@ static int tsens_set_trips(struct thermal_zone_device *tz, int low, int high)
>  static int tsens_enable_irq(struct tsens_priv *priv)
>  {
>  	int ret;
> -	int val = tsens_version(priv) > VER_1_X ? 7 : 1;
> +	int val = tsens_version(priv) > VER_1_X_NO_RPM ? 7 : 1;
>  
>  	ret = regmap_field_write(priv->rf[INT_EN], val);
>  	if (ret < 0)
> @@ -975,10 +975,16 @@ int __init init_common(struct tsens_priv *priv)
>  	ret = regmap_field_read(priv->rf[TSENS_EN], &enabled);
>  	if (ret)
>  		goto err_put_device;
> -	if (!enabled && (tsens_version(priv) != VER_2_X_NO_RPM)) {
> -		dev_err(dev, "%s: device not enabled\n", __func__);
> -		ret = -ENODEV;
> -		goto err_put_device;
> +	if (!enabled) {
> +		switch (tsens_version(priv)) {
> +		case VER_1_X_NO_RPM:
> +		case VER_2_X_NO_RPM:
> +			break;
> +		default:
> +			dev_err(dev, "%s: device not enabled\n", __func__);
> +			ret = -ENODEV;
> +			goto err_put_device;
> +		}
>  	}
>  
>  	priv->rf[SENSOR_EN] = devm_regmap_field_alloc(dev, priv->srot_map,
> @@ -1040,7 +1046,7 @@ int __init init_common(struct tsens_priv *priv)
>  		}
>  	}
>  
> -	if (tsens_version(priv) > VER_1_X &&  ver_minor > 2) {
> +	if (tsens_version(priv) > VER_1_X_NO_RPM &&  ver_minor > 2) {
>  		/* Watchdog is present only on v2.3+ */
>  		priv->feat->has_watchdog = 1;
>  		for (i = WDOG_BARK_STATUS; i <= CC_MON_MASK; i++) {
> diff --git a/drivers/thermal/qcom/tsens.h b/drivers/thermal/qcom/tsens.h
> index 336bc868fd7c..e3cb611426c4 100644
> --- a/drivers/thermal/qcom/tsens.h
> +++ b/drivers/thermal/qcom/tsens.h
> @@ -34,6 +34,7 @@ enum tsens_ver {
>  	VER_0 = 0,
>  	VER_0_1,
>  	VER_1_X,
> +	VER_1_X_NO_RPM,
>  	VER_2_X,
>  	VER_2_X_NO_RPM,
>  };
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

