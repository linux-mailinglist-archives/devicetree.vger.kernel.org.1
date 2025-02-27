Return-Path: <devicetree+bounces-152349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAEBA48CC6
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 00:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC66316C7A1
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 23:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B2A276D18;
	Thu, 27 Feb 2025 23:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Awzz1Z6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EFB276D0B
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 23:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740698828; cv=none; b=VLXUUGqok1B3Rk5zbg3oyxPOEdO56aQPlYw1744z8orJhEPWx9RzwRRkJzVdNVOkPRnBDX1qMdE8F8S6NSkIhp046j0Iy+WBvuqDUy2MTEQoq7S5iPnd8L9+RPC8526wy2UZ41khgEsPI+kM6nld+v96S/qUzNlRIP3kTTmzbf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740698828; c=relaxed/simple;
	bh=vHArphDL+AF63sqMCEKJ2/8BT0u2aDwUEc1CXbvGc0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sDchY0BFz9pufY4yNYzGrQG4QGvoxCSkf7xZskkKzVJsoTmDUj+fPizK6NtJ5Bt6DJojM1tV//bKwiS26tQIzbkYiQtf6B1LljHOV5MAWRPzZNs3fTccXwxFnmoRnsqjy6h10nzpNHFLxqkOFDYvHdw67h+g0nDKc76KXqMmp+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Awzz1Z6Z; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5452e6f2999so1436447e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740698823; x=1741303623; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7WNTtnPyIuJT+/uJWKYo/FYFhAssVEsvM4kIc7boJOo=;
        b=Awzz1Z6Z8n7F8JyYL1Qw34WCRENDCcJdmOFUW9XqZs5ZraNYJgsHtNTDjYuV+DS6FE
         0wclzxD8a9Iue3UuuNw+0SkbKwVswNV2+/UOpBDOdsNdO92CazZmI8W6iKyCEFdUqJGf
         TIHvkvBIUAF1Ns8f5AO+cAJ/nykg8xJTwm/QFQ1Wkhgqrr6d+xZjEcdhEkVDfWmH00j+
         aN1QcPjNXdCH7IutDkue4MAR0y1740Y3RcrZQ2mXVMntsp8qs2w5Lo5H7XPi93p6e2ir
         3gnLbsgAiGmPUWLxjRHQNZ3lyuPZVacelea+8XU8OLPw132o7/JQdU0VpZB4QPUsVZTX
         XRCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740698823; x=1741303623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WNTtnPyIuJT+/uJWKYo/FYFhAssVEsvM4kIc7boJOo=;
        b=PXCy2cW9OgJms+Ib4k4/AcrCvJ0Bb/XIqGYf/oBPpQLv0fhe7JngEhdd6zY7LXbFVc
         OUKumHE/ko8owQI1XzIaySmtBD9LIN9VKU3b1tthl+7KN+vVUi50DZA5/7jsFcNPGVfj
         ktf1CY15nHNFhSPA36j1Ko2UtREp7hfRcRS/tq3xfeigNpF+PWuuQkhrRcLrqSdZm7fA
         ZVRQzQsWjG1aqAUBXY4ZvoENy+FPIw9+OI/pCSEu9gdMjRz15DeryE04LkfuNa5duCl1
         K58n9eivss6unzcM70jaDky/WKiQFSmXS9H7EomyCAyk/Jc+nc3WZTvxJ/19xhKKmSUY
         F3/A==
X-Forwarded-Encrypted: i=1; AJvYcCVeIx7Aq1IJip+kptQxF2pfjgck22ojGtxBRuIhfDViIMXvTrl4itBt3VTtQDI9HyB74S19e6cnAgNN@vger.kernel.org
X-Gm-Message-State: AOJu0YzqOPl2s5/q5d7ZxBb+b9L+H6Ey0aGmDe81t5t9TIYUi94Bok5O
	qjYJhTIFKB9aLNq2CHrRIfICoVvP+J78UkY87ssqB+NnbEQZ9Rupp8nbNbgi92w=
X-Gm-Gg: ASbGncs5L6FWQi20WeenA8oQc9OmKXd1Bq9AquBt0twYoQjFsWfUK6STb1cvZU37VWW
	UQVGFL/cdYtLbu0xN9u3/yB3F+wtoxsmG7bTLLSS6ZWRlTH58zu+Olks2Wx52UYOzfE4kph4N9X
	Xt3LqEMWfgtgC3vWD7ZbVJ3FsAS+UaOvZE/zkKM8KeQX3PgCGJqVVpBs5tuchNlORi2aBe80uxh
	CVWwZkqtavF/GBeLCjiDL/XT9TyBtghKdwj3Y9ka2D8fVLCrXhEEgk07N3NttmoeJdoeLzOAoEI
	FZ8SO4It/LUbsWfV61CZNM5i73jTHiCvuLSsnxzMvp7u200mxYX+M7njXR6hzkOThUTvhcMzk60
	aKruHaQ==
X-Google-Smtp-Source: AGHT+IHxjxlMLhD3oxVC5PDwEv4tONUbYy57JLfGirnQiWK4YcosMJV+1qf98e7hbSx7Q8klj5cPTw==
X-Received: by 2002:a05:6512:281d:b0:545:2950:5361 with SMTP id 2adb3069b0e04-5494c129f93mr514211e87.5.1740698823331;
        Thu, 27 Feb 2025 15:27:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443be608sm299637e87.173.2025.02.27.15.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 15:27:01 -0800 (PST)
Date: Fri, 28 Feb 2025 01:26:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v2 3/6] drm/msm/a6xx: Add support for Adreno 623
Message-ID: <67jiudy4bopd3mzoylj47stuxwc5jdt63akxwn5qqo4dov47za@xcece4v2k3m5>
References: <20250228-a623-gpu-support-v2-0-aea654ecc1d3@quicinc.com>
 <20250228-a623-gpu-support-v2-3-aea654ecc1d3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228-a623-gpu-support-v2-3-aea654ecc1d3@quicinc.com>

On Fri, Feb 28, 2025 at 01:37:51AM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add support for Adreno 623 GPU found in QCS8300 chipsets.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c   | 29 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |  8 ++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |  2 +-
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h     |  5 +++++
>  4 files changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 0ae29a7c8a4d3f74236a35cc919f69d5c0a384a0..1820c167fcee609deee3d49e7b5dd3736da23d99 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -616,6 +616,14 @@ static void a6xx_calc_ubwc_config(struct adreno_gpu *gpu)
>  		gpu->ubwc_config.uavflagprd_inv = 2;
>  	}
>  
> +	if (adreno_is_a623(gpu)) {
> +		gpu->ubwc_config.highest_bank_bit = 16;

Just to doublecheck, the MDSS patch for QCS8300 used HBB=2, which
means 15. Is 16 correct here? Or might the be a mistake in the MDSS
patch?

> +		gpu->ubwc_config.amsbc = 1;
> +		gpu->ubwc_config.rgb565_predicator = 1;
> +		gpu->ubwc_config.uavflagprd_inv = 2;
> +		gpu->ubwc_config.macrotile_mode = 1;
> +	}
> +
>  	if (adreno_is_a640_family(gpu))
>  		gpu->ubwc_config.amsbc = 1;
>  
-- 
With best wishes
Dmitry

