Return-Path: <devicetree+bounces-56812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1C989A8A6
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 05:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A6C282E1C
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 03:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9576717758;
	Sat,  6 Apr 2024 03:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKF03xIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C213A14273
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 03:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712373934; cv=none; b=FVPwAFiw53D+XEO7itfdD97qefcKYJ9xWHIQpF5/CqvWx5n1pg7RFe0Y8bIvo7X6wwyAtR6WMT3QItFXdLu4Ee8SPJREc42C6Oi4DxeY/znT9yqmQNQIOd6w/V+N9koPm4UtY+qxqM5DBETq5Vy5L8zPT0qLkG9xwFQmhV1EsbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712373934; c=relaxed/simple;
	bh=Zp4GKcLxMAVcZIrlPWTHostZnl24f29p5bF7AyQbWfc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U4xukIQRa2QN9Mft74+SZbHtGBWnvJzR9EE7K2elewMQ/uxpa+bvwraOEgPcX9wGhIIcUF/mmB1DqEuS8kYDSZ9z26InAAfEuKF6fMwnNGsXErF0RtPCuC2CbIS5o6cPs0EMmCHIHbELow1yfY2JQVG1ttZt3Q4c2hhqJ7QoBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKF03xIF; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-516d264d0e4so1622242e87.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 20:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712373931; x=1712978731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9LciZ4M+VANz8QCgE6eASTV8GxrZiI5bh38iNvVv6oo=;
        b=mKF03xIFDJCnmpV/a00KeGlHcJg4pRCE5ev5lVg32X9Y1GTCBOOKELc6HLb4aDsov+
         TI9h4ye7ydb/TWEHlfS3qe/QhZsbl61yktL8lyBF90j4uyMHxlAxEWjtr6Z8M5chAD1g
         Wkq3W6G+0Zs66BVnlQsMrd+4KbGwNe7nQLIrdxlytNE99K168bVl3x+cosGTxw0V3tpQ
         Xt10lg9lQVLbjl1IvGge8+/3dCUl/COvDIN7VrGG5Zy+3MF//dfcbTJB/ejX367TDn9t
         TH5m+jn2Zhpx9PHXTkXf9F36Q1PpiAmB8mtkS0LTN64VTNfjBYDlsLhyA5B9XYBuoiKC
         wGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712373931; x=1712978731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LciZ4M+VANz8QCgE6eASTV8GxrZiI5bh38iNvVv6oo=;
        b=OehiyhVOFvskdvS/hoS2e2kTsGcKMzxwBSgzpSqM6AnIJPWjFHsQ9AFvEGwRW+2Q1/
         iwmuyoyT9AzserVYxiCnyZwU4SiqAR05l3LH0shgkic8eccvjQBsAlEJCF0pXf9+VA/5
         HqJ0ja11pQYOmuntrHnNq6WD8gqssUYcrHgga1kNeqqBMkAoSfStEKsyuaBitSdXowm6
         WKgY5vSRg3e+XkIlnGm0uaXQJfylfpBItXPA/uiBESp8mczOo8zWAr1AHSoE8UOPkkRK
         cI7WOM6ep2GIYuMZAyVTtbfUXwrSSBPM981BKi/ywOZx+vnLjEkk5LJu/GbtLhJVva59
         DIrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjNvt7n6eSQ3R5eHEvfLEnd571SYhjpA6gd//1jExwrmYGDwL+G8peKrVSwprBtz2NRRq9whtb42K5DygoQVt6Rzbmt6HNDHBX0Q==
X-Gm-Message-State: AOJu0YyT8Ssp/KrL4XYMpCdpHPq0QD+bMaxu4dp3iLUoCTZpUUOYIbNa
	A06NKr3z6mkGFdUmUij191p2cxwyNCjWYkEl2RS8IBIGEmWSp7H+7xf+obykUlY=
X-Google-Smtp-Source: AGHT+IGrOU69waftjh0A7Nz5z2x9mrFhq3iGFQehyEz3srd6rEvrnruaA7pMOhjxQkC8Bwvyg1Nrsw==
X-Received: by 2002:a05:6512:548:b0:513:d167:f245 with SMTP id h8-20020a056512054800b00513d167f245mr1201499lfl.27.1712373930833;
        Fri, 05 Apr 2024 20:25:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id v12-20020a19740c000000b00516c2413c55sm357348lfe.49.2024.04.05.20.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 20:25:30 -0700 (PDT)
Date: Sat, 6 Apr 2024 06:25:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 5/6] drm/msm/adreno: Add speedbin data for SM8550 / A740
Message-ID: <nek4paofg3hturvjwpa2bnsvmicwmvwixzr6e6iuqstemgrqyo@cagcrnzjsne2>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-5-ce2b864251b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405-topic-smem_speedbin-v1-5-ce2b864251b1@linaro.org>

On Fri, Apr 05, 2024 at 10:41:33AM +0200, Konrad Dybcio wrote:
> Add speebin data for A740, as found on SM8550 and derivative SoCs.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  drivers/gpu/drm/msm/adreno/adreno_device.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
> index 901ef767e491..c976a485aef2 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_device.c
> +++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
> @@ -570,6 +570,20 @@ static const struct adreno_info gpulist[] = {
>  		.zapfw = "a740_zap.mdt",
>  		.hwcg = a740_hwcg,
>  		.address_space_size = SZ_16G,
> +		.speedbins = ADRENO_SPEEDBINS(

I think this deserves either a comment or some info in the commit
message.

> +			{ ADRENO_SKU_ID(SOCINFO_PC_UNKNOWN, SOCINFO_FC_AC), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PC_UNKNOWN, SOCINFO_FC_AF), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(1), SOCINFO_FC_UNKNOWN), 1 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(2), SOCINFO_FC_Yn(0x0)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(2), SOCINFO_FC_Yn(0x2)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(4), SOCINFO_FC_Yn(0x0)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(4), SOCINFO_FC_Yn(0x2)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0x0)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0x1)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0xd)), 0 },
> +			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0xe)), 0 },
> +		),
> +		.default_speedbin = 1,
>  	}, {
>  		.chip_ids = ADRENO_CHIP_IDS(0x43051401), /* "C520v2" */
>  		.family = ADRENO_7XX_GEN3,
> 
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry

