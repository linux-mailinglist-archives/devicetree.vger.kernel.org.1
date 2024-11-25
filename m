Return-Path: <devicetree+bounces-124354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5F89D89C0
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 598D1B43048
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A261B2182;
	Mon, 25 Nov 2024 14:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aMgqobii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800371AF0CB
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732544884; cv=none; b=lTP60JJSXa/4BheUO0TtyvZjYLmAWv63JXbYb/gtSXYyYJlyJMSv9diKFvVc1PuoWZ5RZ/v6FUziJkwXRfqexEl6e1T6oHA70i3kBTna+pHRKOpIHkReVnPBttbhheNoaGM4O6SyEtzfOiMlnDi3Ad6euTgS903eLuaSUn2CdvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732544884; c=relaxed/simple;
	bh=wHrARFq5pjA+AXga2A8NGIdgg6vpSIG8/JvcZdp9ZTc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RWGfYLuiuJBlzSYoSL1ylsQJ/PbOqjz9nTjrmLJqZ0YjozCKGXzoaKL2sb45NL6ZIUXU4DcEwzgEPNtyYs6wJSJ2eGt6IJVSLrRJMSaVYtigugi7ENPaCKC4woWCrB0Zx3F/aVD0jkVQEv6OjH06WvqvLhbjgqHew0zYCgUfmDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aMgqobii; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a1639637so5242275e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 06:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732544881; x=1733149681; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OwCdh/lVFSl+tyIgtOc72WNgOOnH15cv8cN3/KVwlSs=;
        b=aMgqobiiPADIDrMjhWBcN2OU2BSkcAZfumU8bWlcTasfreOGWLIfOxTwfUUWspzZ0d
         UBiutX7xRTyBZzwHO37F4fXqbtPoIDZZ5Ksfl+IJWY7qlhEbrVNq6XUdK7kl7imFz4rO
         2PEz82T9sRdEPq7/n1k+N+SQiIWkarP6culb0odqadi+QxhpBT/N+dECSf2MPOSK6mIE
         KHycMFJ7GJfGXkP9GsWe9T2plMT3BSERl9IgK6I/DyWWBevEL/uQnjqPPMz/uxpMwRzz
         76I325flqgUF6fIUC7xRyJ50JOEPXqL9WiSTFVRNQDkBZeqgr8HTWjMjVta3MviTwpqU
         nPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732544881; x=1733149681;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OwCdh/lVFSl+tyIgtOc72WNgOOnH15cv8cN3/KVwlSs=;
        b=C4CX4/id1/uSMhU5wRHIo6ealtwbvCPWQgi2m19pAq2IjFwDZvwLe0IrMs7MogPzx5
         p2ioCO+asKYw024gqEOD+73Kg4dcfQgSSvHUgMz4iyPZLC/GPlrRmN3kq19HUe7zBEn7
         EXw1POW+tXx6csHDPfxRBumtxb3wNXYhe1lwqfeWN1kR9Q3tZRkQJnAWJMHx2J1VxCv4
         SLargJBdQ97EeCKY1VGOtlWD9nfHPhgsIM4LOAmSddLGT9yUt0TodptCOEUr+BssT3M3
         HuEk5Ya5pdOD5klAafSxTQ7eHv8RFNiiHulp3Vl+q5SAsdKQkwAUo69KQ03/kXKsOCqP
         vSew==
X-Forwarded-Encrypted: i=1; AJvYcCV8m12VkgRogR7aq9CdPyP04P1cxPDfQ2F4FrfnQPGnYQSjoc4bXXI61LRiGe37cM4hbzqwnRMo2w2O@vger.kernel.org
X-Gm-Message-State: AOJu0YxieG5/KPuQ7Srs5BH8+5t8k5cM6dYs3L3phlEfDvuHgXQ97PXK
	fn10G9QMaEwq7VW+lWhkv839i0I0BrTXXQEAm0chSPTtV5daRB+/3di0GPXLJmQ=
X-Gm-Gg: ASbGnct6DcMn2gLSBoL5nKmB4wYkiOON7sqoBiX0SWiiSClZf9csrrhC3h9PASTJk3U
	/XOuGYiW4+WSrTfWjCHU+eWjqGfdxEyVxFOrvi7zh5pSl5qVV24TpzuSxYAEl3pxuuhIGw8/qhV
	5+YCSOVIDet8FCI2dUAQ9Svs8q+/JQO/WBzIUnD51ztkfaD7mSLl6rCl0GLKvIKG4nBNPHQtARc
	V2yUEEzq3Yd1z1OkvebvCryKwtxHx4TDeRrr1vM1+D6wRemwkw+wI3ddCXqVMY=
X-Google-Smtp-Source: AGHT+IHKFtw2FkrVFJBqO69N4BGShQKgr544JrHs0mrkZfzSa0FQpSavaB/3c2ze4SNlzhuV4W4AWg==
X-Received: by 2002:a05:600c:3b94:b0:433:6cf9:5e65 with SMTP id 5b1f17b1804b1-433ce4af3bfmr106924175e9.29.1732544880864;
        Mon, 25 Nov 2024 06:28:00 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b0139b22sm198293355e9.0.2024.11.25.06.27.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 06:28:00 -0800 (PST)
Message-ID: <b2d34144-bad0-4d12-86eb-08d17d9f2120@linaro.org>
Date: Mon, 25 Nov 2024 14:27:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/5] media: qcom: camss: Sort camss version enums and
 compatible strings
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241112173032.2740119-1-quic_vikramsa@quicinc.com>
 <20241112173032.2740119-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241112173032.2740119-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2024 17:30, Vikram Sharma wrote:
> Sort CAMSS version enums and compatible strings alphanumerically.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../media/platform/qcom/camss/camss-csiphy-3ph-1-0.c   | 10 +++++-----
>   drivers/media/platform/qcom/camss/camss-vfe.c          |  6 +++---
>   drivers/media/platform/qcom/camss/camss.c              |  2 +-
>   drivers/media/platform/qcom/camss/camss.h              |  4 ++--
>   4 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index df7e93a5a4f6..7d2490c9de01 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -505,10 +505,6 @@ static void csiphy_gen2_config_lanes(struct csiphy_device *csiphy,
>   	u32 val;
>   
>   	switch (csiphy->camss->res->version) {
> -	case CAMSS_845:
> -		r = &lane_regs_sdm845[0][0];
> -		array_size = ARRAY_SIZE(lane_regs_sdm845[0]);
> -		break;
>   	case CAMSS_8250:
>   		r = &lane_regs_sm8250[0][0];
>   		array_size = ARRAY_SIZE(lane_regs_sm8250[0]);
> @@ -517,6 +513,10 @@ static void csiphy_gen2_config_lanes(struct csiphy_device *csiphy,
>   		r = &lane_regs_sc8280xp[0][0];
>   		array_size = ARRAY_SIZE(lane_regs_sc8280xp[0]);
>   		break;
> +	case CAMSS_845:
> +		r = &lane_regs_sdm845[0][0];
> +		array_size = ARRAY_SIZE(lane_regs_sdm845[0]);
> +		break;
>   	default:
>   		WARN(1, "unknown cspi version\n");
>   		return;
> @@ -557,9 +557,9 @@ static bool csiphy_is_gen2(u32 version)
>   	bool ret = false;
>   
>   	switch (version) {
> -	case CAMSS_845:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_845:
>   		ret = true;
>   		break;
>   	}
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index d801275228b0..f9e64cbacb20 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -334,11 +334,11 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   			return sink_code;
>   		}
>   		break;
> -	case CAMSS_8x96:
>   	case CAMSS_660:
> -	case CAMSS_845:
> +	case CAMSS_8x96:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_845:
>   		switch (sink_code) {
>   		case MEDIA_BUS_FMT_YUYV8_1X16:
>   		{
> @@ -1693,9 +1693,9 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	int ret = 8;
>   
>   	switch (vfe->camss->res->version) {
> -	case CAMSS_845:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_845:
>   		ret = 16;
>   		break;
>   	default:
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 12778846b2ca..2d8efed51912 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2692,10 +2692,10 @@ static const struct of_device_id camss_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
>   	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
>   	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
> +	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },
>   	{ .compatible = "qcom,sdm660-camss", .data = &sdm660_resources },
>   	{ .compatible = "qcom,sdm845-camss", .data = &sdm845_resources },
>   	{ .compatible = "qcom,sm8250-camss", .data = &sm8250_resources },
> -	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },
>   	{ }
>   };
>   
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index c50cf7dc81f2..bdc11d6d2203 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -77,13 +77,13 @@ enum pm_domain {
>   };
>   
>   enum camss_version {
> +	CAMSS_660,
>   	CAMSS_8x16,
>   	CAMSS_8x53,
>   	CAMSS_8x96,
> -	CAMSS_660,
> -	CAMSS_845,
>   	CAMSS_8250,
>   	CAMSS_8280XP,
> +	CAMSS_845,
>   };
>   
>   enum icc_count {

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

