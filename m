Return-Path: <devicetree+bounces-84669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B87DE92D139
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:03:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6ECEA287AFF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2795618FDBE;
	Wed, 10 Jul 2024 12:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Svd8TDsE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4680F18560A
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720612980; cv=none; b=BZcz4uVtPht1DZcpQ5WgdzOjoTI1rT5lw6jgdRaEr0L2taPE+UxKKQHDc3jLTXv6ZKF8e/um/YI5bG9d+XXsV3nRHsty7McaQDkRH7ODG/7oOG8hFmltbNwzgzac43s8sGZ6XvXgmQziWXN2SqOUg0kyNCsQRHcs1y+CvbwDvS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720612980; c=relaxed/simple;
	bh=WblItfEWCmH+Cp+O0L2GwRr2jMnQBjgUip7cm8z6MbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u+7gZjAGpx3xbCciS12R4OQrVJaZ+hllJzWM7l9Z1DZPoSfonKKRDkBh1oDPTN1HHi9rMn7pA+wrtp2Kbwl26yh0L0oSq7IZZqDi0fO8wCFajpFJNBDbQreqgMT5LP1vnba2QBlwijoXMZo7vFRa4XvFuoW2+E2lyPAoyJjtkdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Svd8TDsE; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ec1ac1aed2so66629031fa.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 05:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720612976; x=1721217776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fUjKFWFxbGBOdWwWQ3smtcT5i5d9Ks6ekYS3JTphrnM=;
        b=Svd8TDsEQ1yGrAvN7tgJwIS88EoUVpU6OJ+O0vS6aD5WUktAYavqiiqI0HWWVV1ppk
         C2I4b0vcz0g0OgyCCdD0RIiB9v5IkPxpOR6oy/xDjSfYK/oXe4yUR0VQiWjalA/YYPZX
         LBweK4MIXEfHoVe9tKevQD/v8i4ZRUi49KXLdlC6lBkUHXQ/ug1BdMlEhnThZjZvLCBC
         3gu/OD7p7s5oHvxlSK0PHROIhoNfZBZsSRaD+Yj6rpQVqzRy/ne6c5LhuAbCnY6/WIxO
         4EeMrw/AjhH5DBL5NaPp9bmEcLiEPbkNL7cuBS9lK21tlybmLFCwzsjLHbMUigApUNCX
         hPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720612976; x=1721217776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fUjKFWFxbGBOdWwWQ3smtcT5i5d9Ks6ekYS3JTphrnM=;
        b=SuwA/PRbx09aokKk7pz62L958l5I26OlroGtsYqxjS4+rAzc2K++GsSG2Tnh9YkHWw
         /Gw4UlmMfAuoK/OfFnRfcRD+vSVK9+FSZG4MAopqSkHqvzEDwlrZYSFzTOf0DkEQRBYT
         y0AKopU54Tkqvw+e7YizhmEEs5xDTSQB4+U4zGhq4aqhPbVMawCmB/aHg/rkE8Y21IAy
         9h5//3rAK1qS4YhlxiS0xHzU3DuXfHTdBtLRJwhP2P6Cpx+VwvZFqZYzmKDGB6nOAaJ0
         31n44D2QzY0ycmdo4j8D0vMFoxiMspD+TlOl42dgDjTFyiEvVKqK/n0s2nGWaR5L4iSV
         PwMA==
X-Forwarded-Encrypted: i=1; AJvYcCW/dF9GFmlgRmyFRzaaIRuthokWi4r02s0aWsw1X+mmyJaan0YOvHfzU4r5E9jPCw5taQjkJCRZnA++vDhrmNS/ed669VM2TPaKEw==
X-Gm-Message-State: AOJu0YxInW2DMc6s+JVAyodr/39HHcZ2tr+rE13BO2dnsztTh0OVNtko
	Q0puRp81ehfMnuVceASHh0etcYTxy6saixMpzh4HGT1hk6j/CCw4AZqCmVxGfeQ=
X-Google-Smtp-Source: AGHT+IHwMozocS3Y6Q4EbJZwzdte7bV4LDmxqmg7mqTKJnNgYhapQxxEyL1pU+iMJpmNVwoo+n+VbQ==
X-Received: by 2002:a05:651c:d0:b0:2ec:18e5:e68f with SMTP id 38308e7fff4ca-2eeb318a399mr34441171fa.33.1720612976393;
        Wed, 10 Jul 2024 05:02:56 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfab080sm5141787f8f.104.2024.07.10.05.02.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 05:02:56 -0700 (PDT)
Message-ID: <8cc2b819-8342-444e-8a31-582949cb9b3d@linaro.org>
Date: Wed, 10 Jul 2024 13:02:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] media: qcom: camss: Add sm8550 support
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240709160656.31146-1-quic_depengs@quicinc.com>
 <20240709160656.31146-13-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240709160656.31146-13-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/07/2024 17:06, Depeng Shao wrote:
> Add in functional logic throughout the code to support the SM8550.
> 
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> ---
>   .../media/platform/qcom/camss/camss-csid.c    | 21 +++++++++++++++++++
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         |  6 ++++++
>   drivers/media/platform/qcom/camss/camss-vfe.c |  6 ++++++
>   drivers/media/platform/qcom/camss/camss.h     |  1 +
>   4 files changed, 34 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid.c b/drivers/media/platform/qcom/camss/camss-csid.c
> index 858db5d4ca75..90fba25db4c6 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid.c
> @@ -1013,6 +1013,7 @@ int msm_csid_subdev_init(struct camss *camss, struct csid_device *csid,
>   {
>   	struct device *dev = camss->dev;
>   	struct platform_device *pdev = to_platform_device(dev);
> +	struct resource *top_res;
>   	int i, j;
>   	int ret;
>   
> @@ -1040,6 +1041,26 @@ int msm_csid_subdev_init(struct camss *camss, struct csid_device *csid,
>   		else
>   			csid->base = csid->res->parent_dev_ops->get_base_address(camss, id)
>   				 + VFE_480_CSID_OFFSET;
> +	} else if (camss->res->version == CAMSS_8550) {
> +		/* for titan 780, CSID lite registers are inside the VFE lite region,
> +		 * between the VFE "top" and "bus" registers. this requires
> +		 * VFE to be initialized before CSID
> +		 */
> +		if (csid_is_lite(csid))
> +			csid->base =  csid->res->parent_dev_ops->get_base_address(camss, id);
> +		else {
> +			csid->base = devm_platform_ioremap_resource_byname(pdev, res->reg[0]);
> +			/* CSID "top" is a new function in Titan780.
> +			 * CSID can connect to VFE & SFE(Sensor Front End).
> +			 * This connection is ontrolled by CSID "top" registers.
> +			 * CSID "top" registers at only one region.
> +			 */
> +			top_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, res->reg[1]);
> +			csid->top_base = ioremap(top_res->start, resource_size(top_res));
> +		}

If we just specify the csid lite regs in the dts, we don't need custom 
code to get a pointer to them.

Similarly the csid->top_base = () should be generic not SoC specific, 
i.e. we should be able to add in CSID 980 without adding any custom code 
to camss-csid.c

> +
> +		if (IS_ERR(csid->base))
> +			return PTR_ERR(csid->base);
>   	} else {
>   		csid->base = devm_platform_ioremap_resource_byname(pdev, res->reg[0]);
>   		if (IS_ERR(csid->base))
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index b6d5a27b94a6..53c46c2e5896 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -631,6 +631,7 @@ static bool csiphy_is_gen2(u32 version)
>   	case CAMSS_845:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8550:
>   		ret = true;
>   		break;
>   	}
> @@ -718,6 +719,11 @@ static int csiphy_init(struct csiphy_device *csiphy)
>   		regs->lane_regs = &lane_regs_sc8280xp[0];
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sc8280xp);
>   		break;
> +	case CAMSS_8550:
> +		regs->lane_regs = &lane_regs_sm8550[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8550);
> +		regs->offset = 0x1000;
> +		break;
>   	default:
>   		WARN(1, "unknown csiphy version\n");
>   		return -ENODEV;
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 83c5a36d071f..479474c1cd95 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -338,6 +338,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   	case CAMSS_845:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8550:
>   		switch (sink_code) {
>   		case MEDIA_BUS_FMT_YUYV8_1X16:
>   		{
> @@ -408,6 +409,10 @@ int vfe_reset(struct vfe_device *vfe)
>   
>   	reinit_completion(&vfe->reset_complete);
>   
> +	/* The reset has been moved to csid in 8550 */
> +	if (vfe->camss->res->version == CAMSS_8550)
> +		return 0;
> +

Custom code for a specific SoC in camss.c camss-csid.c or camss-vfe.c 
indicates to me we need to do more work elsewhere.

This would do the same job for you.

static void vfe_global_reset(struct vfe_device *vfe)
{
         /* VFE780 has no global reset, simply report a completion */
         complete(&vfe->reset_complete);
}

const struct vfe_hw_ops vfe_ops_780 = {
         .global_reset = vfe_global_reset,

>   	vfe->res->hw_ops->global_reset(vfe);
>   
>   	time = wait_for_completion_timeout(&vfe->reset_complete,
> @@ -1695,6 +1700,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	case CAMSS_845:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8550:
>   		ret = 16;
>   		break;
>   	default:
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 65fcebd42c4b..feac83510a17 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -79,6 +79,7 @@ enum camss_version {
>   	CAMSS_845,
>   	CAMSS_8250,
>   	CAMSS_8280XP,
> +	CAMSS_8550,
>   };
>   
>   enum icc_count {

---
bod

