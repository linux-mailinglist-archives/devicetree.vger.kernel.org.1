Return-Path: <devicetree+bounces-131793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F62E9F4949
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8A9B16961A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F098C1E260A;
	Tue, 17 Dec 2024 10:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n/6TyF+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0E015DBAB
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 10:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734432902; cv=none; b=tFP6kuf6xfeD5Gij7Mr3N4SYqoBI7xRz1Bt+d387XZiCpBup/6omzoZhuBO1sCnKDj10lZBa12UJQwQrg75oWJYdh5/XKIVi3Jx/GVqiPDhoozqz9HH+9IWfpeC+HT6q6/Eum7fRQ0BP3Kn+cUWU+EBKDcPwUKLuN+jYd5+hBFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734432902; c=relaxed/simple;
	bh=f0wiDzDBtnzmIV3VrgFkm7LanaG35t0eZwVYsqtV5XM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uOoGr4bX/Nwye+zB+PNv//GVxGH0IQvrc2qwIskpP9cUc0cl9KzR1xlCxt+8LNFOQHZ2nJpOYBd9E3kFXfAaOTwHdsCKFNYjOvPv2wn1F6Aj9W7EMlAFYSIHrzFYpPHLb4FLgkMkY0ABdwE5kBjAzjHtFYRla4aXLNxnmhm38mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n/6TyF+x; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401be44b58so5185890e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 02:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734432899; x=1735037699; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tHWIkqKFIPrZfDR6fwGCJpX7T0cdK1Nh9XGTjtxdWTw=;
        b=n/6TyF+xrYzl1S3GHjni7IlyxBaredY5xCgSTIzGFQ/V0s0HPtR+woCz5AawV8/1et
         +1RTCPh4n7/g/mZybJM8WTrbGCEyYOYxVSHj+kT9g9E5Pr2jj/zp/hh9sEw9fWsrgi8m
         zRGLkSc4/Gxrg0NtBR+ZL+3Iy5YNryiRooh7pzSOkaDRFjcKK7f9XhyOti1ln15CK2Vw
         OfBICCp745gJqe6A6UAzzJqXI5iymSvNb81IHnJnEd89e6cZno50DjdhxTfRuvzKIzJD
         /6WhT7V/0Mz4MenoEnWMLD39t6NKlmP8TUCdbIhrfAhhRmBo41v17+r1iDsUxV1GduQS
         ujwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734432899; x=1735037699;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHWIkqKFIPrZfDR6fwGCJpX7T0cdK1Nh9XGTjtxdWTw=;
        b=Ooj9Vh9Id5Gy20OpLfDxpnHNHU1TgkMJmoLz+AEprIdlRT1kVC+TtLeMFNAY030Mqa
         opAmrfL92cMwddUIhsieiZBJ7qNGl/txop6p6+Yxrl9C9WfG4GUwih8x5Bbn+S7l5FPf
         Cbh8Ve7rSK2K6PnHk/XtvhozruZY2z5fcLKR1n/Ty57/QXHjU4JyMXGR3EFPO33WLBQy
         g8R/qUcgIhHlavvLSNAripb6xDwXaGLGxHe90TMBtlsVDvPpp07u5YwzSorN1sgXoOFp
         wSc5XaGRtY+ARRn77vKOEW8su0XTBbZASpt3YxSoRUg+Pfh4zjdOF3IsnbD4AtVdHU9g
         HvVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYje6GX7xPH3K3kFCpSI84FBVF0loTRAkYi8MSPpEKUOAsH+9WP/eMtbZeJM7YM0bwZKY+KGX6VjkA@vger.kernel.org
X-Gm-Message-State: AOJu0YzwQ8bQ+MYQoEYZkjEANFz2Zsrvn8SfOyrr45Zv2oI9b33bOBFa
	vkypJGzN2qDJoUHvbskEq2jKFxoZb6JTFCghASzh+vwB8ktctQ4cborhU9wNKfU=
X-Gm-Gg: ASbGncu1lT+Nz1q4V+25NqflMFvh5HVISIgKeNnI3G8MIT8xxgULGIh+KNf627p1VCY
	CQiaCreeJIWAFT/tuHkTVlihSJLk8wgcCU8stCHA/symAaF/J+3e3qk/qWhRAWVrlf7ei+ZkBG+
	opzC1xPlZ/PXkoc4tf3QZKVMhFLIKAMrSVRa3y4HmQcY3a+wuSV/HIyGuTFOaGd9dHxgO0Jg/hW
	zzoZkSdJdrPFVIcG4fT0W8dXsJIB5FQZk7hnVUjXPnHZDM8FHf+DkvSq7iNHJy4wIEGeAGoMbJC
	ozJ04Q+0Edbph2f3WRx3SX6bk1eJ4No7Fibj
X-Google-Smtp-Source: AGHT+IHIIXGB/X+gwvncRHBdy9tDryU1EfA09rbZDao5aKxh/K7dmzH4R4ChpaOmldxWkT0LNMbwvw==
X-Received: by 2002:a05:6512:2809:b0:53e:362e:ed0 with SMTP id 2adb3069b0e04-540916d7331mr4458490e87.44.1734432899164;
        Tue, 17 Dec 2024 02:54:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c1fb46sm1125836e87.235.2024.12.17.02.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 02:54:57 -0800 (PST)
Date: Tue, 17 Dec 2024 12:54:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/9] drm/msm/dpu: Add SM6150 support
Message-ID: <ntffm2jwr44m77z2bvuifv3itkpywco3cemgzkizzdp7e2ekdv@htfktmyyoe3k>
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-5-2d875a67602d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210-add-display-support-for-qcs615-platform-v4-5-2d875a67602d@quicinc.com>

On Tue, Dec 10, 2024 at 02:53:56PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add definitions for the display hardware used on the Qualcomm SM6150
> platform.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h | 254 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 257 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..621a2140f675fa28b3a7fcd8573e59b306cd6832
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h

[...]

> +
> +const struct dpu_mdss_cfg dpu_sm6150_cfg = {
> +	.mdss_ver = &sm6150_mdss_ver,
> +	.caps = &sm6150_dpu_caps,
> +	.mdp = &sm6150_mdp,
> +	.ctl_count = ARRAY_SIZE(sm6150_ctl),
> +	.ctl = sm6150_ctl,
> +	.sspp_count = ARRAY_SIZE(sm6150_sspp),
> +	.sspp = sm6150_sspp,
> +	.mixer_count = ARRAY_SIZE(sm6150_lm),
> +	.mixer = sm6150_lm,
> +	.dspp_count = ARRAY_SIZE(sm6150_dspp),
> +	.dspp = sm6150_dspp,
> +	.pingpong_count = ARRAY_SIZE(sm6150_pp),
> +	.pingpong = sm6150_pp,
> +	.intf_count = ARRAY_SIZE(sm6150_intf),
> +	.intf = sm6150_intf,
> +	.vbif_count = ARRAY_SIZE(sdm845_vbif),
> +	.vbif = sdm845_vbif,
> +	.perf = &sm6150_perf_data,

I noticed that the catalog entry doesn't provide writeback configuration
although the vendor DTSi specified that there is WB_2 on this platform.
Please send a followup patch enabling writeback on this platform.

> +};
> +
> +#endif

-- 
With best wishes
Dmitry

