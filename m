Return-Path: <devicetree+bounces-200209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B3B13C0C
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 15:53:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EFF5189EFFE
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 13:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B27327055E;
	Mon, 28 Jul 2025 13:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d7lUtLSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5269026FDAC
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 13:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753710705; cv=none; b=Z2E6gYAZV13G4PRdWVbWuV6Z9kwg4x1HA1znz6SQCMgZWZ9B5lj/3NQHi95EZldq+/Hxgf0+9HuJwzAxGDletA8Wvf/VXWFihsX/LTMP1e4dthrDzLAOe4p5lxE8UXJy9T9rIA0RrcxnnVYKXyLltObSssQWcioRoXigwkJhn6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753710705; c=relaxed/simple;
	bh=fquhLiKEHj0fYtenvldhJ7/nlk2RToQq5x7ERru5FgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t8R0YcW6ZPvvkZ40qVWJ2VYjpv+L3XVb6fXODOMYarA11dYyDTHLk28zEirPO7yA9lTihrLr0AaKeh7aylJyXNUIbF0Ln1uDMHTi/CjNRyHQBEahwmdo3WWKGF8Bna7PsqZrjGMDCyRiqGiP5vQQGXliQJzPunxPCnbCQUBpFbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d7lUtLSI; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b78d337dd9so109776f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 06:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753710701; x=1754315501; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CENTF0ISHbmixWe0j83y9bNXImg/NoofqSDy9p7Nfjs=;
        b=d7lUtLSIUEuN89G9nQvJm3N1qm3U19o5Q+4t9kZNrFOXSX99b0LtGA8gv+Lq8VqSSV
         dPJezK10HzD/W+9TXYO9AsBbwbn6gIkIENpi1ka8/v7iLWhQ7Ne8Em98oWy/btSwijna
         2fPlbqRLTfsUvjO9DuyNUrH1+zJYS4WPNVJuC5buZYXnlGmUbrkUNentAmJTd7n7WisF
         yrFE4fG74ICRx09ab8e5IJbtyXnGktC1TcwI1IZEyLR1NuUns1/tbwPPSgaUmvlQF1w5
         fq2B1um9ZDVA/vGnx/570x3ocOWlTQAyFH9V5LKwTsSQh8hlmhEsxUncXq2xqoLKxnU5
         MxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753710701; x=1754315501;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CENTF0ISHbmixWe0j83y9bNXImg/NoofqSDy9p7Nfjs=;
        b=SWVNAAzzkiwJ9lJ0n83Ey+2NdR0nD/mIERmh3GV1ebuyGZl0FDLSAhqY8GnzygHIsH
         Lqy1VfRt50AqrNsUo0kfL/tWZoVZ2kKNCllJU2aad1cQvxC/OiaCjlCySBi/pMV/7iJf
         B6GxsbTPQlWv/bYdmZOgFegr/SEB6EIrSwQYMJ4ZL2H2WcXt0cfOyLIdseHEUkPh+1gp
         TWpAIOG8GVPIqKmJPFGr+neUM9MJ1TWF7juw30H3qKRhBStCRFKGVzmXca+3xgy+c2Tv
         MthsvBWI1TeB4OnTjHJm6GdbzQ/IOJkQpTOb9qchw9QIhHUt+YwDLgKc7zqnyOo7M9Mc
         8CPw==
X-Forwarded-Encrypted: i=1; AJvYcCWGbAtC1MUCYmhtIM4FAEGd1Z6AlQuVPR4rlIwrMr0n5DdYE4D1L/upG6ASssM5zBV4gDnM4LvBQ5vK@vger.kernel.org
X-Gm-Message-State: AOJu0YzwrlWzvzs1bvfyA3zY0C93jqo4xktYHhMvNrcMCZbQ4Ud0p1y2
	D+l7O2MaNofUQ1M9RqBBOIQzAF10+kw3uSSnu/25PGQdjLDIwhpwrNPOxauwvbZtNqA=
X-Gm-Gg: ASbGncv1TKftPCCRDEEzmKAi8IgqUnl99S3rqsDTmkQZMh2Ctq2S8Gk3izsLo4OOyl3
	PiMc7K4GowytpDdrYacJte61tWvEfI7yJlZ9fDF/e/vkHvuOBPbWnb/mlQEZDP46rijmPksDbOr
	wPOy+AcvY8nim2y07HjTB3JY8GxJFomcQ1T7JU4+gk0ClL2GYwDslKLclVpOb6+voBVvbA6SgcI
	2YkInC6Zzt22GIX4nxnvB5bhDCsvRK0faVSWEGpYjUYYpTv4vz05BPh+ec6DkMXHHQrQMpDKmNg
	3G35CM0AyyKL2rxA5kI7YX+x+OsNFGy16qxyoI93dVEbTKZ5NEInHRYZL8l+4vvAwsSeqhxuDM4
	WAbBtR04Hfk7fGvlZNKSjHpYAHh7+fhp5N/5e4A8wPW/UvFI4WH16Ip9WcLVmJAg=
X-Google-Smtp-Source: AGHT+IGVdzWUOBBFfiYOEkrEFkxq518/+eZQSkut23M7mdFO6PCXHW/ZlaBVEVa5d8CeUSl1+EFZEA==
X-Received: by 2002:a05:6000:3113:b0:3b4:9721:2b16 with SMTP id ffacd0b85a97d-3b776644006mr7913012f8f.36.1753710700431;
        Mon, 28 Jul 2025 06:51:40 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4587abe61fasm99002615e9.8.2025.07.28.06.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 06:51:39 -0700 (PDT)
Message-ID: <6feef32b-4d1f-428c-9759-2d3318b0f224@linaro.org>
Date: Mon, 28 Jul 2025 14:51:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/9] media: qcom: camss: Add support for CSIPHY 690
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wenmeng Liu <quic_wenmliu@quicinc.com>
References: <20250703171938.3606998-1-quic_vikramsa@quicinc.com>
 <20250703171938.3606998-7-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250703171938.3606998-7-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/07/2025 18:19, Vikram Sharma wrote:
> Add support for CSIPHY found on SA8775P (Titan 690).
> This implementation is based on the titan 690 implementation.
> 
> Co-developed-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         | 84 +++++++++++++++++++
>   .../media/platform/qcom/camss/camss-csiphy.c  |  5 ++
>   .../media/platform/qcom/camss/camss-csiphy.h  |  1 +
>   drivers/media/platform/qcom/camss/camss.c     | 75 +++++++++++++++++
>   4 files changed, 165 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index f732a76de93e..bb5ebaa13ec8 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -64,6 +64,85 @@ struct csiphy_lane_regs {
>   	u32 csiphy_param_type;
>   };
>   
> +/* GEN2 1.3.0 2PH */

I'd be nice to include the process node number here. Its not a secret so 
please add for the edifcation of the reader.

> +static const struct
> +csiphy_lane_regs lane_regs_sa8775p[] = {
> +	{0x0724, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0728, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0700, 0x80, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x070C, 0xFF, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0738, 0x1F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x072C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0734, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0710, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x071C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0714, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x073C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0704, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0720, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0708, 0x10, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x0024, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0000, 0x8D, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0038, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0034, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0010, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x001C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0014, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x003C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0004, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0008, 0x10, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x0224, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0200, 0x8D, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0238, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x022C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0234, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0210, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x021C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0214, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x023C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0204, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0220, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0208, 0x10, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x0424, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0400, 0x8D, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0438, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x042C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0434, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0410, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x041C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0414, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x043C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0404, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0408, 0x10, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x0624, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0600, 0x8D, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0638, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x062C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0634, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0610, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x061C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0614, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x063C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0604, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0620, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0608, 0x10, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x005C, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0060, 0xFD, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0064, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x025C, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0260, 0xFD, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0264, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x045C, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0460, 0xFD, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0464, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x065C, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0660, 0xFD, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0664, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
> +};
> +
>   /* GEN2 1.0 2PH */
>   static const struct
>   csiphy_lane_regs lane_regs_sdm845[] = {
> @@ -749,6 +828,7 @@ static bool csiphy_is_gen2(u32 version)
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
>   	case CAMSS_8550:
> +	case CAMSS_8775P:
>   	case CAMSS_X1E80100:
>   		ret = true;
>   		break;
> @@ -848,6 +928,10 @@ static int csiphy_init(struct csiphy_device *csiphy)
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8550);
>   		regs->offset = 0x1000;
>   		break;
> +	case CAMSS_8775P:
> +		regs->lane_regs = &lane_regs_sa8775p[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_sa8775p);
> +		break;
>   	default:
>   		WARN(1, "unknown csiphy version\n");
>   		return -ENODEV;
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index c622efcc92ff..f6a2ac385953 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -103,6 +103,11 @@ const struct csiphy_formats csiphy_formats_8x96 = {
>   	.formats = formats_8x96
>   };
>   
> +const struct csiphy_formats csiphy_formats_sa8775p = {
> +	.nformats = ARRAY_SIZE(formats_sdm845),
> +	.formats = formats_sdm845
> +};
> +
>   const struct csiphy_formats csiphy_formats_sc7280 = {
>   	.nformats = ARRAY_SIZE(formats_sdm845),
>   	.formats = formats_sdm845
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index ab91273303b9..842e72b74ce4 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -126,6 +126,7 @@ void msm_csiphy_unregister_entity(struct csiphy_device *csiphy);
>   
>   extern const struct csiphy_formats csiphy_formats_8x16;
>   extern const struct csiphy_formats csiphy_formats_8x96;
> +extern const struct csiphy_formats csiphy_formats_sa8775p;
>   extern const struct csiphy_formats csiphy_formats_sc7280;
>   extern const struct csiphy_formats csiphy_formats_sdm845;
>   
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 3122a29891c2..ebc3b296bb50 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2483,6 +2483,81 @@ static const struct resources_icc icc_res_sm8550[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_8775p[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
Drop the dead newline please.

> +		.clock = { "csiphy_rx", "csiphy0", "csiphy0_timer"},
> +		.clock_rate = {
> +			{ 400000000 },
> +			{ 0 },
> +			{ 400000000 },
> +		},
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {
> +			.id = 0,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sa8775p
> +		}
> +	},
> +	/* CSIPHY1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy1", "csiphy1_timer"},
> +		.clock_rate = {
> +			{ 400000000 },
> +			{ 0 },
> +			{ 400000000 },
> +		},
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.csiphy = {
> +			.id = 1,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sa8775p
> +		}
> +	},
> +	/* CSIPHY2 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy2", "csiphy2_timer"},
> +		.clock_rate = {
> +			{ 400000000 },
> +			{ 0 },
> +			{ 400000000 },
> +		},
> +		.reg = { "csiphy2" },
> +		.interrupt = { "csiphy2" },
> +		.csiphy = {
> +			.id = 2,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sa8775p
> +		}
> +	},
> +	/* CSIPHY3 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy3", "csiphy3_timer"},
> +		.clock_rate = {
> +			{ 400000000 },
> +			{ 0 },
> +			{ 400000000 },
> +		},
> +		.reg = { "csiphy3" },
> +		.interrupt = { "csiphy3" },
> +		.csiphy = {
> +			.id = 3,
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sa8775p
> +		}
> +	},
> +};
> +
>   static const struct resources_icc icc_res_sa8775p[] = {
>   	{
>   		.name = "ahb",
Assuming that's done:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

