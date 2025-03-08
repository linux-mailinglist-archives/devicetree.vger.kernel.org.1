Return-Path: <devicetree+bounces-155576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1237A57793
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 03:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 151B91897CFD
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 02:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6092414831E;
	Sat,  8 Mar 2025 02:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h6VzCJCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD1814A8B
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 02:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741399224; cv=none; b=IwdyDgHhFwojIEFBEmh3JugpMA3znkT/tD2xFZuTK3CpTlC4ZkAxZh6UOboxB17/pkC+bvH46UHVm3JoV0RGYFnfXTZQGyeCXpH7IhqIO0c8ZWt4GsMrSfpRK9sjrm/eLE3eW6rSLCgzccOlmPV6VsPjaW1IlxbfylUCTKtdmT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741399224; c=relaxed/simple;
	bh=S8N+QxxiOhUsGd3S0a1x+yo4CeNlEdKYrscPJ0aeCTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KxJG6XiA5OJ+BVPqewn8wACJaGxbFilBLv761EMUmCbCRKVAeP+XwpUj+kO6tbrAv/xt80ofEGeoVtgXfote5YEIcsB+LqD4+CKCXBHaSBocn8fUU3Ifm4X5/6y28KSa6Z0JW0bYhsgUGNjgNR+rM5jgJD+OSWqHC0ec37FcxF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h6VzCJCm; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so2574370e87.2
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 18:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741399219; x=1742004019; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NjVkCifx/RSQQ8Da117ebd6rVOl6XM9uzHnpVWsZ5zs=;
        b=h6VzCJCmdxyZxXwCyL0qCG5jl6lsPzVqvjjUESWqf8k9TpVGTdbT0KtGgdlk9tcn1K
         dIpEryQUif8dUjd0ZyNt+aCa9Bq0BzJTbUa+JO8Rk5hQwVXk+0xxyTj5eVZ87Gx06CEZ
         Wa4pJRXNNbnUEsrGg7/WBFpIIvDCCtjNvyDZmDSKmoklxiXddNbX7sbQTbK6Ars57HtC
         ZlUFvf3wO3qeVak7gCJqtNEq1mMzr+TUcHU79IvxxPrCbLjg4pF4IzgqTQu1ryXzx4aV
         guF2lb9G+4oeiX5c6yKdXwgYLq78CSmUzgpQVZoDZKGMcmyvQTIlbjIpTF8g+B42QRF+
         HUFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741399219; x=1742004019;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjVkCifx/RSQQ8Da117ebd6rVOl6XM9uzHnpVWsZ5zs=;
        b=Q0knkFrsdplRIaWpewkCCkLWqvXwDw41UUFWU4BVOdsI7YNX/9JQigOie7ChMz545h
         YpFkxmbyzlrZpS8e2XoJtv+eB0hwDl9o+bRp+6GVfQ0KVgY1kyPf8exmSo0Nz6sXdglZ
         KEb30RNhsOkKFrCfq7ajuPNmXNJ1o0LCoZtdVNeJRKPvOTvkoz/9PCPeSojLUIRl6FOw
         Jt5zKsH++GoQbqt/b8mDEefeZHhI/mOEvw2LYCSRjm8z9QkAw7naqRxe/7lFv31y4pMF
         jSAK+3BVA7UXF7FwVdvFSiC9EqPmI9FXNSwjh3QSrECnd6K1XllrbPbkKqPfDzgnhWgw
         VyOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLum0SQyjx0Mnn2AnNzdgQWvWBJp2yInDsrXVC3yIxefNWxfMG5EJruTyUDJaUk2LzjqOI5A0ZgcuW@vger.kernel.org
X-Gm-Message-State: AOJu0YwzZR2pD7tFLEF/Tc6mmz+7in7cpbY0gTh+vgaMa1VF1DuJRaLU
	uvjSwu66l0Er8okhb96tqftpVWwXk2Zcl9GE8HyzQ0JGCIZURijzY85fq4QwVkM=
X-Gm-Gg: ASbGncu1qAGJYp2AKXUgw9Tj5cNzGH1M+7ykJ5Hb/gGkMEa6xoCHxwliowt2HLr1u56
	a1Ft42p+OFa10C2Vk6klSk8DfkaD8XA1eQvnfBs2EkygNhUGPY306jgYYuvHJAs1/nrDxr4Za88
	ry03beD/d9sCBv171qSxs7nbR7Jzru+dtx3MrPG4olUKt6KKjnDXM6Eey56HPYxZ9HEcWcoI0Ik
	aPHnTjmGML8N1uqb+wUiS17VtzFvJcaf8V4yreo8Y2L9pDgTWPNCkDVXrIOcDHtsmD1Hn7Jn7X8
	YaY3km9Jzykxj3llR6LATq5RSxW4NrQEfuRSTlPzqCIyiQRYM62wPsnYsxJhk634HqNorbC7rzI
	DLejdaRT660fJWzVvg+uk5Iyu
X-Google-Smtp-Source: AGHT+IHD+uwBqwVOK6PF+JlAvIXYtVL34Ab2L2yfhLPX2xkxj8BVZbxw9BTY9Ei5g5385gK2RsIBIw==
X-Received: by 2002:a05:6512:3dab:b0:549:8ed4:fb46 with SMTP id 2adb3069b0e04-54990e676f0mr1813977e87.26.1741399219383;
        Fri, 07 Mar 2025 18:00:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1c33bfsm680563e87.236.2025.03.07.18.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 18:00:18 -0800 (PST)
Date: Sat, 8 Mar 2025 04:00:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dmitry Baryshkov <lumag@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	Bjorn Andersson <andersson@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 06/10] drm/msm/mdss: add SAR2130P device configuration
Message-ID: <kifzy754m7zygspknsk4a4aeuqxkt4bkyp5jbu6ul43gon7je3@yleqikfmh4lp>
References: <20250308-sar2130p-display-v1-0-1d4c30f43822@linaro.org>
 <20250308-sar2130p-display-v1-6-1d4c30f43822@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250308-sar2130p-display-v1-6-1d4c30f43822@linaro.org>

On Sat, Mar 08, 2025 at 03:42:24AM +0200, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Add compatible and device configuration for the Qualcomm SAR2130P
> platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
> index dcb49fd30402b80edd2cb5971f95a78eaad6081f..3e82ba0885d03107d54eab9569bb4c5395454c7a 100644
> --- a/drivers/gpu/drm/msm/msm_mdss.c
> +++ b/drivers/gpu/drm/msm/msm_mdss.c
> @@ -592,6 +592,16 @@ static const struct msm_mdss_data sa8775p_data = {
>  	.reg_bus_bw = 74000,
>  };
>  
> +static const struct msm_mdss_data sar2130p_data = {
> +	.ubwc_enc_version = UBWC_3_0, /* 4.0.2 in hw */
> +	.ubwc_dec_version = UBWC_4_3,
> +	.ubwc_swizzle = 6,
> +	.ubwc_static = 1,

This should have been .ubwc_bank_spread = true.
I have been rebasing the series from the earlier kernel and I'm not sure
why this didn't show up during the build phase.

> +	.highest_bank_bit = 0,
> +	.macrotile_mode = 1,
> +	.reg_bus_bw = 74000,
> +};
> +
>  static const struct msm_mdss_data sc7180_data = {
>  	.ubwc_enc_version = UBWC_2_0,
>  	.ubwc_dec_version = UBWC_2_0,
> @@ -738,6 +748,7 @@ static const struct of_device_id mdss_dt_match[] = {
>  	{ .compatible = "qcom,msm8998-mdss", .data = &msm8998_data },
>  	{ .compatible = "qcom,qcm2290-mdss", .data = &qcm2290_data },
>  	{ .compatible = "qcom,sa8775p-mdss", .data = &sa8775p_data },
> +	{ .compatible = "qcom,sar2130p-mdss", .data = &sar2130p_data },
>  	{ .compatible = "qcom,sdm670-mdss", .data = &sdm670_data },
>  	{ .compatible = "qcom,sdm845-mdss", .data = &sdm845_data },
>  	{ .compatible = "qcom,sc7180-mdss", .data = &sc7180_data },
> 
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry

