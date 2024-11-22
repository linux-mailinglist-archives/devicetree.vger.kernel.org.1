Return-Path: <devicetree+bounces-123743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 062EE9D5D09
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5499EB24A7F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396581D63FC;
	Fri, 22 Nov 2024 10:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CE/zmxO5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AA8B67F
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732270225; cv=none; b=VQTTiNEncwhCoPh528t6lr3rqnjem5l5+z14rKtLr6ws/xba5Tf9c3EOEwHr8RXjs/Q/JI2FJQVCW9nerXjlNY8gAvg9kJ7zdXc1sVxvaFknE/79I9odHMsyZz34IRdHw+v20+q1Ik2c6sJGpxqJ2rgC/rQ0z7qSpjNbWU9XZHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732270225; c=relaxed/simple;
	bh=mQt7M4yaiqMepM2Pr4FaWhdU4x7VAPyFtw7Ylj2vwq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GetYxyZtYI1dW0qiCdF3M5+n6VLBlJ9wq71hsheYOk2GtktMhNQ13PXODB+kIW8i8VRAg0ruI5ptGfhKFPJd+dBWEJifFbwmK8RU79oXG0GYFrYmFKylWt0JO+GU+kbo8X3V1SB5DUOay+CgUbMVrbK++Ll4ol1XPG2aKR+KFV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CE/zmxO5; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53da22c5863so2288463e87.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732270222; x=1732875022; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XshnFRtBSr7UhB3YJV64KxbBeRECk31YK3bPI5LBXvg=;
        b=CE/zmxO5Aisih2//+hdNFSZMJOavFMkOEY7yPsblwxTxwZ1in84UyX+2oTvYqANktv
         u8eVeno2Ca4Gu35fsi+4Tmd3IwmnDkmEoEVjJe4IITOSKF04ZmFtdTwr3Ap6fPNJFnNh
         hWad05U2lCMgCAoXLoc4F54qGzl3AQK36ipDc8isKOr9tdj0wGfCEyknswrShBrnitPM
         5h1H7O+MPQi8LAXFNr4WpLseuf8auWZzrkCPA1ubt9Ns/GAOG3emBbc5YI6Pj+XrrlYo
         dkgHG5hr20uSpA6VgXhDkX7zMF2xSLA5du+9EDh70996bMsVpo5f9ftgb4xi2FIQ4uOm
         Wnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732270222; x=1732875022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XshnFRtBSr7UhB3YJV64KxbBeRECk31YK3bPI5LBXvg=;
        b=GAdIf0qQzagRiW8kIaOIClIpsFtxF5Z7jGwTP8xIJwl9n+taM4B/Cbm/fwQ217XbU+
         8WrMVMMKAJrw4qMCZTdeHbrdTL22UuXeyEQ7Hqr5DP280iNufs0ujs0uQ9PyR608NErE
         yWyLPMOo9epJsyPi47TN97uBTohctfK2QkymVYQB+qerZDU3eDD8qQzfp027e+VDeh4O
         jF2NeQ8fOtcGeGgoZur3t/hbK2XGkpM6Rd95netfvrKLvK9Qg6f5QxFjSwoP86UjY2+D
         iV2NKc9AGbYDwTtSmIhIj+tJsCgTSpZ0Ejs+Qoy2kiwxlGQTmp70eZVBPLDPVq6M6Pzh
         hnxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOVTJ0FE8fStAMcI7bSSJmXd300H4jwscM790ouH9lK45YV9Rwng6vSJAFc/5Wddt5L3Q84YJcr49F@vger.kernel.org
X-Gm-Message-State: AOJu0YxrUM+OT+gcPAyS2XSE1jw+k9O6AYq+2vp1kTPQSNhKTppe+4Ss
	at8qmSOZh2lMCp/3C4dXoBcgzudzAumktQODCX18L/4GOkMnH4uKbLcJTio11Ag=
X-Gm-Gg: ASbGncuBDObcRhtYRxW676fQ/2Ld1M63XEJnDW4iavTWVn1n966lcLHGrUisX0oHuSn
	w8iC5c0bmOB32O7j/RdJKq7kr5qTkJ0LSJ28BME63EOKkEfTeI7sI7MUQJw8W6qwR+QqfPZUWOz
	GJFP9K+b+sfETd5ksC4PBuKtjm9QB+uJfiEagfmNcObttn7e6Mq66psQ5o551kEMHhIoFvYBe8V
	6Jn44BobPRCqrz1fruYXEm3BEVBsNvHfzwoUz1T5VSmgl/CoQY2aAE1uO7HLYNhHKShJh/T/NOe
	AEhLvIvSq0Uo2HkZ+9oq28YJAXMQOg==
X-Google-Smtp-Source: AGHT+IFPiycj5qeplibnOojl42rf2zmubg4BvxwbPRG3LEmjxqFIgmgvbEd9YnOjveQDfC+hRoc1Ig==
X-Received: by 2002:a05:6512:2395:b0:53d:d5fb:5111 with SMTP id 2adb3069b0e04-53dd5fb51a5mr687991e87.18.1732270221653;
        Fri, 22 Nov 2024 02:10:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd249c927sm311682e87.279.2024.11.22.02.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 02:10:20 -0800 (PST)
Date: Fri, 22 Nov 2024 12:10:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Li Liu <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 7/9] drm/msm/dsi: Add support for SM6150
Message-ID: <mcvhfkh3ycrx2ganumsxlc7lx53ed55yk4syh5qev3jqqgkeqj@h5vnfpgjwtj5>
References: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>
 <20241122-add-display-support-for-qcs615-platform-v3-7-35252e3a51fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-add-display-support-for-qcs615-platform-v3-7-35252e3a51fe@quicinc.com>

On Fri, Nov 22, 2024 at 05:56:50PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add support for DSI 2.3.1 (block used on SM6150).
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c | 4 +++-
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h | 1 +
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> index 10ba7d153d1cfc9015f527c911c4658558f6e29e..fe02724bddf69c2e8d6816589f4ea410fa666e5b 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> @@ -171,7 +171,7 @@ static const struct msm_dsi_config sdm845_dsi_cfg = {
>  	.num_bus_clks = ARRAY_SIZE(dsi_v2_4_clk_names),
>  	.io_start = {
>  		{ 0xae94000, 0xae96000 }, /* SDM845 / SDM670 */
> -		{ 0x5e94000 }, /* QCM2290 / SM6115 / SM6125 / SM6375 */
> +		{ 0x5e94000 }, /* QCM2290 / SM6115 / SM6125 / SM6150 / SM6375 */

Not true

>  	},
>  };
>  
> @@ -286,6 +286,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
>  		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
>  	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_3_0,
>  		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
> +	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_3_1,
> +		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
>  	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_4_0,
>  		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
>  	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_4_1,
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> index 4c9b4b37681b066dbbc34876c38d99deee24fc82..120cb65164c1ba1deb9acb513e5f073bd560c496 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> @@ -23,6 +23,7 @@
>  #define MSM_DSI_6G_VER_MINOR_V2_2_0	0x20000000
>  #define MSM_DSI_6G_VER_MINOR_V2_2_1	0x20020001
>  #define MSM_DSI_6G_VER_MINOR_V2_3_0	0x20030000
> +#define MSM_DSI_6G_VER_MINOR_V2_3_1	0x20030001
>  #define MSM_DSI_6G_VER_MINOR_V2_4_0	0x20040000
>  #define MSM_DSI_6G_VER_MINOR_V2_4_1	0x20040001
>  #define MSM_DSI_6G_VER_MINOR_V2_5_0	0x20050000
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

