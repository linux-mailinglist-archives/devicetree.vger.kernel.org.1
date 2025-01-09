Return-Path: <devicetree+bounces-137225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4483FA0833E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7478188BBDC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 23:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637BE2063C7;
	Thu,  9 Jan 2025 23:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RZQJUnd/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA18205AD7
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 23:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736463794; cv=none; b=IDEpJSloDi1iMV0S/OoZhYMQ2nDA2esq13lmoHM5LGhtZ6GABivv/zBs1/cLrkZG58/1aYGCasRC+98gKvZ8zfB2FaV7VgopraIKeUEGWvmsgaNiZTuHoprlfmoKr85N8dPTcWCEHXGFg/Duj0Z+hvGRBCA1Qd7QTlU3ZYTeY/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736463794; c=relaxed/simple;
	bh=hY2rkJrYPz6wESPMCkN5cJxZr3WT7E7660Vjmz+mNt4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F4df8CnExfC/ozonMU/kLY0m/pWtmgPCQzsmWutb/tKQzn2hU+hvtPw+3xOhANaCj5DFcJRszGorgS1HzHqpw2hIep/I4pk7JZ93zBm/DZEoRMxDpQwqgGypazaFJpCgzOMPJ1Hpe294IhECP8BL741hjx/SFLyVQ0vDxcPIm60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RZQJUnd/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5401c52000fso1375538e87.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736463791; x=1737068591; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AAcNvBDLCMVwN0Us4db6UaMc6t+XPG2++mfdFKlIJ/k=;
        b=RZQJUnd/FGH+nbmDO5+xiYdCL9WICwF/J3hFzRivXaBzvBqy5Hy8eu7fy82Ikc6km9
         exhv5Inj4gyuiU5AIkO1BIbq0H2cYEZkV56rmhUDIFT6Xb7snk8h0jWIESeg8U3Ikr9J
         KnfS+EI7NNJ9vsAjvVui7xBp5u0f4g/U0VNlK5RKjS3Ws0xQvy2COCq5JyXWJEu8i2y1
         +jydnhIV2hP9/t3x4FXEwsP6q0xrT/jBi2uCvMXUDPbG1aPyjtns8UId4zPsM7Yb/Uul
         vRiYNiOAnGyugVVAx1DiYAP6lSo3IHII6aF77RAbPFqA4cZa5oSfY3dJmT+JIx9mTE6P
         jfwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736463791; x=1737068591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAcNvBDLCMVwN0Us4db6UaMc6t+XPG2++mfdFKlIJ/k=;
        b=tR3rrV82114zhzVePt/2483pS0nFFnRO/El/64OsdmZO0Svs70wGrugbdmujB3CAqV
         PqsyPR35HVS5WWLAQGe2K3PjUWfSjHtye66Id7KWnyFqshuiQOPN6qga5XG0+s0Td8Qe
         Hna8biZ4IR+MkSR4D3rtkUWHKWZKu2845zk93SucOVXbCiDnGMngntJXB4L17BKo4DHU
         n/eAjLLOfIM0kgda6tOCeHBcdRxm05yoPcM+Kr/5ycEwR5mkHrj+h0gskoh9zB6WxjG0
         7qruutBgnTXexzwOjqFOiBPz4m5jjllj+dunFRUxufO5Ap6+zUaJR5Tu23AI80NIKGI5
         Y5fA==
X-Forwarded-Encrypted: i=1; AJvYcCVBW959yJ9vd0WcqsksTHzt8ZD9zNs1xyFC82P/SmyheCpuw3brmp10GcfDmAFlB10yER+BPTA2axOg@vger.kernel.org
X-Gm-Message-State: AOJu0YyihOw3hC+Pye64AbauTDThShLhsNH8siK5iECdKy8WjXLJnGOj
	iLdHisl2jjUB2Uue42D3qAOdXRfgNL/WtLdh6TsUcAOWtWrEK9IKcIdkQ0EYfXc=
X-Gm-Gg: ASbGnctuKDsFBjpiT3QgFFoIeLtNWd4FmmovD4laExmLBRQUWfEkBQqgmPAbdpoZb+6
	EfszO3qCeN69DPZIkAI+CJl0iT2ECnXUrYnRMG6oTBjAJYwSfypA4AZKLvuG5bKiCNJDme5DNNB
	uDfvVllOJ8o/mJdT3WsObliOtF4d35/8OkW39wV43BBGs0XbXDAWz54NCK1nV4t9fbD+/e1SN30
	3fQ9UxTJyU1o9UIt/1DgJXkWmD62SB7wTVlKXCwplSgTutW+aBVBO2FfHDelq5z+ZRgI1wRPVXr
	Ez/vMc+H596NUNj4hdj+4i4ysho9lpVlNDQF
X-Google-Smtp-Source: AGHT+IHf6pkAtxzAARwiQGzNbECIXTffJ/LFIaL0vm4+LTZtTr/waEIktn0uMxncfhNuRu6tqNYP7A==
X-Received: by 2002:a05:6512:3e02:b0:53e:38fd:7518 with SMTP id 2adb3069b0e04-542845b1a57mr3023380e87.3.1736463790653;
        Thu, 09 Jan 2025 15:03:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428becac3esm327366e87.233.2025.01.09.15.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 15:03:10 -0800 (PST)
Date: Fri, 10 Jan 2025 01:03:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH RFC / WIP 11/11] drm/msm/dpu: WIP: CTL_LAYER_EXT is gone
Message-ID: <h5eabjdgzsvn2hutcc6osndieg3v6hkusfdxnrfhy77gmyx4eq@4wwltux4erz5>
References: <20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org>
 <20250109-b4-sm8750-display-v1-11-b3f15faf4c97@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-b4-sm8750-display-v1-11-b3f15faf4c97@linaro.org>

On Thu, Jan 09, 2025 at 02:08:38PM +0100, Krzysztof Kozlowski wrote:
> Not finished. Looking around, maybe someone already did some works
> around new CTL_PIPE_ACTIVE and CTL_LAYER_ACTIVE registers?

This is not enough, the whole blend setup is to be moved to LM
block.

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_12_0_sm8750.h | 12 ++++++------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c          |  3 +++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h          |  3 +++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c              | 10 ++++++++--
>  4 files changed, 20 insertions(+), 8 deletions(-)
> 

[...]

> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> index 06b01cd36ce2442ee6e1b85be227851a234cc96b..502449cbbddcb21b7008f139ac065d187a16b68e 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> @@ -40,6 +40,8 @@
>  #define   CTL_INTF_FLUSH                0x110
>  #define   CTL_CDM_FLUSH                0x114
>  #define   CTL_PERIPH_FLUSH              0x128
> +#define   CTL_PIPE_ACTIVE               0x12C
> +#define   CTL_LAYER_ACTIVE              0x130
>  #define   CTL_INTF_MASTER               0x134
>  #define   CTL_DSPP_n_FLUSH(n)           ((0x13C) + ((n) * 4))
>  
> @@ -729,8 +731,12 @@ static void _setup_ctl_ops(struct dpu_hw_ctl_ops *ops,
>  	ops->trigger_pending = dpu_hw_ctl_trigger_pending;
>  	ops->reset = dpu_hw_ctl_reset_control;
>  	ops->wait_reset_status = dpu_hw_ctl_wait_reset_status;
> -	ops->clear_all_blendstages = dpu_hw_ctl_clear_all_blendstages;
> -	ops->setup_blendstage = dpu_hw_ctl_setup_blendstage;
> +	if (cap & BIT(DPU_CTL_NO_LAYER_EXT)) {

I'd prefer if this is was an explicit MDSS / DPU version check rather
than an extra feature bit, enable new functions for version >= 11.0

> +		// TODO: NOT COMPLETE, This has to be implemented
> +	} else {
> +		ops->clear_all_blendstages = dpu_hw_ctl_clear_all_blendstages;
> +		ops->setup_blendstage = dpu_hw_ctl_setup_blendstage;
> +	}
>  	ops->update_pending_flush_sspp = dpu_hw_ctl_update_pending_flush_sspp;
>  	ops->update_pending_flush_mixer = dpu_hw_ctl_update_pending_flush_mixer;
>  	if (cap & BIT(DPU_CTL_DSPP_SUB_BLOCK_FLUSH))
> 
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

