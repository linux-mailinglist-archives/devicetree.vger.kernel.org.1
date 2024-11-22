Return-Path: <devicetree+bounces-123741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0D39D5CF7
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E4F9B243BB
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB8F11DE3BA;
	Fri, 22 Nov 2024 10:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pj7MZCM8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAF31DDC3F
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732270040; cv=none; b=XdIdI0kTaKtr4bsG0eT4De0o+xfCR3PFzEP+yW/CxhhNamvSBgzdFYHUYu5K1IA366hEWHD8iBAQ3IohVCqcbasuXChYGmKx/vNMWMbf3B1LFCLhvhQ5dVm6BPbn2EzZrqZ0S2CVr1+4OZglnTWdue4P0KhgB7SrWv6URBZh890=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732270040; c=relaxed/simple;
	bh=ePTtXXdtrb2V6GMKMuYSIWDcQsD3/Vz0olaoJ86XrP8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N7+Exs4eZVdEHznBqRZ4wZfhiNlfI2MmQ6bMUrxRY7wc7tasWdEhXz01L5/ij/7ZFx/wdacCVqPcq6GHOOOLnG8a3pRBvj1HAmnmmeeb/nkhnmoW+VFWCeAxnEvdW1LXBBPS1BwJoVzfc7cd5tESQHeLu3/JQMQqgysxhEqPPqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pj7MZCM8; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53da5a27771so2224366e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732270037; x=1732874837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GO7fVK+g5VXFiw6jUirAsxcaeR1tJ6lVtHXzxXnqFYQ=;
        b=Pj7MZCM8EzxpsSkKNsn1jIHFFXFm43FL9O8R1ieBoutADEeOuzfSQ/kUkscAv8mlSi
         1Zk9NsnQ6wADpEYJXn28bPEQNxDQR/0OCk2rjXSuBa9Tt+O1DGZ2XF4rfxUvrKhLpvek
         cSwrbs7rYEaI2bpNjOss22e7o6j1MW1it0468nO9Wdg/fBHEZ6uJVmPrEJkoopEwSY88
         vKUiS+XjT2zRGh+WyE854TE0/R6VwCRawOl15PXKNnwwNr5jzGcK0MKo/iGbOJmkZN2t
         xheCMqW9BU6KKeKA3YTrzPrRLJBWqFY9LcEh0Nofwla6L3HSfEEbJNRlVVCZTKdQldK8
         d4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732270037; x=1732874837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GO7fVK+g5VXFiw6jUirAsxcaeR1tJ6lVtHXzxXnqFYQ=;
        b=wRlF1ckiPpu0DvUxxhJTf+lITFWtVF7lMK9mGWSAA69ijTSHXwFle3kDdtzOTT8oPl
         ZYUNkvk1EY3JR/RsVqRscGh+gg6dojsRqBzinG1CW3Q9Gw2nRPsHxxPFryMQNxQ8bwg8
         Rn515wLmNfzw+FY/BXvqMNKSwLFqAoKYeT1YmyTY/VxzEjPBV6zLqgqDnsUmaFl4xcYk
         jHO6lkopHipimEI3Jiuq8pSLN9uSKbzz4glmBoOrjL7bq0dysWdh1CbB0c9f/SKlg7yM
         3HMOsapnI7VzdPnKlPkkkExx+QFUNW6z2DMYOsNy3fp229O7GTHfpn5lOE2HOm8FGLsR
         sEgg==
X-Forwarded-Encrypted: i=1; AJvYcCUDy6SYTmBNsnTkL1fXbOdv1Vps1IVI59SlJOnnXbxsWoeDTKBtZF6XjnJDepGd59zPQO4n3WVSOGvj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy4x1s7khh3UUfyFYBU1hdV4zgSq8eQ4JtgeeTV66BOvSQAYIs
	xHMqD/fnXd9CFvU+ZZw60WPGbyIaqbrckAwc0N5c8v4aCKHecLvOCB8R7l8hXEI=
X-Gm-Gg: ASbGncsRTK+bCBr7CZI1bOSHfAlKTgebwiIZltxKQ/ZYYlDP3qpLLsK16oBLlkTwVgP
	e821ZQCLAOj7wk767UEfb3KEJ36hL8wK601TLl+RE5EOusexYGD7dsjUzLBIM/NQIh4dW+LCcX8
	OG9cm9RA/NLKRcWFP+CpEXRnY91yB24TRsXQFRE5bmmozwE7MjGHi4bF6P4UF798Sgv5LPBz1HJ
	DmKjqlbJ+ByOT9ZslTfHiURqHAMpjJz0bG6J9lXVLoogVXRe+mQEFT48mS0dY4qyamsexL4GF10
	gUeOOS8l1GqwzRYveTEE7j9B/peJiw==
X-Google-Smtp-Source: AGHT+IEAFmL7UZg1uTfDDRPoy0BBuksKzzgZGM3TutSiUK4Zl501M3PKPyCwG30hNRGeBsF6mBGDwg==
X-Received: by 2002:a05:6512:1110:b0:536:a695:942c with SMTP id 2adb3069b0e04-53dd35a4f17mr1072878e87.7.1732270036793;
        Fri, 22 Nov 2024 02:07:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2445712sm314765e87.40.2024.11.22.02.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 02:07:16 -0800 (PST)
Date: Fri, 22 Nov 2024 12:07:13 +0200
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
Subject: Re: [PATCH v3 5/9] drm/msm/dpu: Add SM6150 support
Message-ID: <bhylewwvztm7gsmkjwo6asceuph2jlqgvy2lhocdvg6r7y4i6w@duvbnsko3xg2>
References: <20241122-add-display-support-for-qcs615-platform-v3-0-35252e3a51fe@quicinc.com>
 <20241122-add-display-support-for-qcs615-platform-v3-5-35252e3a51fe@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122-add-display-support-for-qcs615-platform-v3-5-35252e3a51fe@quicinc.com>

On Fri, Nov 22, 2024 at 05:56:48PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add definitions for the display hardware used on the Qualcomm SM6150
> platform.
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h | 263 +++++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
>  4 files changed, 266 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..e8b7f694b885d69a9bbfaa85b0faf0c7af677a75
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_3_sm6150.h
> @@ -0,0 +1,263 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#ifndef _DPU_5_3_SM6150_H
> +#define _DPU_5_3_SM6150_H
> +
> +	}, {
> +		.name = "intf_2", .id = INTF_2,
> +		.base = 0x6b000, .len = 0x2c0,
> +		.features = INTF_SC7180_MASK,
> +		.type = INTF_NONE,
> +		.controller_id = 0,
> +		.prog_fetch_lines_worst_case = 24,
> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 28),
> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 29),

Please drop. No need to declare missing blocks.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> +	}, {
> +		.name = "intf_3", .id = INTF_3,
> +		.base = 0x6b800, .len = 0x280,
> +		.features = INTF_SC7180_MASK,
> +		.type = INTF_DP,
> +		.controller_id = MSM_DP_CONTROLLER_1,
> +		.prog_fetch_lines_worst_case = 24,
> +		.intr_underrun = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 30),
> +		.intr_vsync = DPU_IRQ_IDX(MDP_SSPP_TOP0_INTR, 31),
> +	},
> +};
> +

-- 
With best wishes
Dmitry

