Return-Path: <devicetree+bounces-125030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C89DA8E4
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1238B232FC
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80C81FECC1;
	Wed, 27 Nov 2024 13:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qm12pG0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22AE1FECB8
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715002; cv=none; b=SxWnhCWnknJPgtbujXYmu0cSE+EkKSE+Qe5S1GoPKhXhZMIlweNfrWOpaNcDHtbAJ9DEQr6/nbgRn1TwGO/57aj4OEe/ZoukWTML7iBn6danzo/6XGTY49UNMLvtn1FZPNm16BPzwIj/fr1qT1QvJeC5RTzf/LJBuwi3G+z0M88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715002; c=relaxed/simple;
	bh=fELUlbyrfqJ+YDSFrgxsr0LeqbBgZQjyG+s8pLZM+/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BNVapq1MddG1EqBq1kjgwHR3HNy+JtExCe3gXKRElkAyCh6m4TcAm6wG/FP5Eh6x6wD1lrPZF0nDY+YUlzTz8K1UKocxawTBwIlXwFXf3kQL3Ub1TFroC9zc0NiumDwqCWO8lNzIl7P85fz9Z4VLx5p4lsWqe7TY7zuIsA+W1zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qm12pG0B; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53de771c5ebso3386642e87.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732714999; x=1733319799; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LIXGs4fTwSxjqXemGFw9+p2YdwTHf2NnHZwaHRGF6Nc=;
        b=qm12pG0BdLfHev9tO4E9aBUybETw5u/i3v4M7iM6zmkQ2WOGQY0q3dNKDhVG1Tt+U4
         3q0aSCuParkqtigUjxcr4GvgXkYekQaWKeKSoUfIOjrZ66FRUF5Oom9/9Va+0Z5dG07R
         j9ZiGrhkcQdjXFnYgePuQViueLYST5Ip+C19PUHO1OOgE6nSaIHh7Dkhpw13XCKUlDSZ
         is/7dyV/L3i5nCbLI7IK8qxARcO9HQGB1cOeq0pxB3YQLgFw5efafYLnhEEwsJvRORUX
         5mMObBK/DqCwKjN4GXE9SLmEB5Kd0j/D+gjgaKusMqBjfGDn6n1RnXNw2aUQADKimcom
         CpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732714999; x=1733319799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIXGs4fTwSxjqXemGFw9+p2YdwTHf2NnHZwaHRGF6Nc=;
        b=hTbk55fopRiXwUmV3MR0bwu3YSYYA4ESNZIdDh4tfnyp7nyOP0BEdI+VEEfAiG3svi
         uttPmowln+OGKJSGXy0JlbIWZb2AQFwC9Bg3oQibH1fCa9wZKJjH8iFFWOPnL+bquvcU
         DYAQ16ZOWbdkfr/JDGwCcqWY+LV80OQJwcflbKhUEjBX3STo2IqrhpuaKRDD9mTOQS5G
         4Uwo946AmVUKXpNZUg63NRG7o7cXHml6QoVOvRVUvx9pJie1q88XSmS7qhBpupFfPu6Z
         6OpeBsKLwPLKFKpxy+5QvxzKnheJ7D6sh4D0dVUzTmZDLv1b3J7y6OxLxIsEjC5BPswn
         ORsw==
X-Forwarded-Encrypted: i=1; AJvYcCXOvR9avhbw4xtWXNgiV+VdCNZLHi5N/bms9jqTTz5z4vhzt/Djw7lI6PUVdhCA8J2moktFSfNsySOo@vger.kernel.org
X-Gm-Message-State: AOJu0YzINDgBUvZ+EQxWksRSM/dC0qpNYuVrZd5TQJH0AZd06Z1hfwG5
	ZG3SgicKysTPQyHPvALXnVx+452iIqBvkLEnbVQiSov3H3mNadJs7eAt9HCLTMk=
X-Gm-Gg: ASbGncu7sbKOjZ9ytx3VymJ2CmfLamg79hYVUm8ZMmqMwgsYsFaudysnAtRgr19bmSk
	7zEN84bagkoGxHWN9ovywqNsRjHDjXtwqraOM77cf2IVhzX2QsFY9G81HZZBsor+gHVmDklEpLD
	Z1uHDd+J27j/fXu0e89KFLVOrc0oumZeUHFwG97mTFgRmue1O60RRyF6Gw9BA94QEpKGUcVM7Vw
	MKmUrIUxHjevKhkLje8YLH+twp3kwoBO5Ds2verdUCpl5+bWbprQur5ODnIRjLQTcKGqr4XhrtH
	9K6exgb6JOAOAlssk+9jmIUV+GnPLA==
X-Google-Smtp-Source: AGHT+IHl4xTqfFayy6N/PMSQFKk1zMBlFF166s3qCjZQxpVTE21zLDuT/xgWMcxx1dKM+yaLNkjIHg==
X-Received: by 2002:a05:6512:313a:b0:53d:f177:51d0 with SMTP id 2adb3069b0e04-53df177526amr1071412e87.9.1732714998834;
        Wed, 27 Nov 2024 05:43:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53ddbfc2b7dsm1721318e87.129.2024.11.27.05.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 05:43:18 -0800 (PST)
Date: Wed, 27 Nov 2024 15:43:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <quic_riteshk@quicinc.com>
Subject: Re: [PATCH 4/4] drm/msm/dp: Add DisplayPort controller for QCS8300
Message-ID: <2ld2iwmvhz6myn6ume3lspi63wjefa3hpctoj2rdreaqhwdxmx@seic3sq2yo4h>
References: <20241127-qcs8300_dp-v1-0-0d30065c8c58@quicinc.com>
 <20241127-qcs8300_dp-v1-4-0d30065c8c58@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127-qcs8300_dp-v1-4-0d30065c8c58@quicinc.com>

On Wed, Nov 27, 2024 at 04:15:51PM +0800, Yongxing Mou wrote:
> The Qualcomm QCS8300 platform comes with a DisplayPort controller
> with same base offset with SA8775P, add support for this in the
> DisplayPort driver.

Can we reuse SA8775P config then? And SA8775p compatible as a fallback,
not requiring any driver modifications.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index aba925aab7ad7c6652e81004043864c1cb3ac370..f870faa89f26a8cb5bd7f4caf11f42e919c9efac 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -118,6 +118,11 @@ struct msm_dp_desc {
>  	bool wide_bus_supported;
>  };
>  
> +static const struct msm_dp_desc msm_dp_desc_qcs8300[] = {
> +	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
> +	{}
> +};
> +
>  static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
>  	{ .io_start = 0x0af54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
>  	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
> @@ -170,6 +175,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
>  };
>  
>  static const struct of_device_id msm_dp_dt_match[] = {
> +	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_qcs8300 },
>  	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
>  	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
>  	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

