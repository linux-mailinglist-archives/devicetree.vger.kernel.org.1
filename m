Return-Path: <devicetree+bounces-168484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7D1A9335D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 09:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F40E3179F45
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C972550DE;
	Fri, 18 Apr 2025 07:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mXPfdHP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FF11FC0ED
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744960652; cv=none; b=cbXCAYFKLHDgbeeWbqPPCac2LL02RC+rufZhH4W4epxib2+m0//xM4AWfxnZs8FkV0lXGq2ouRwSI6YuwKFio5SlzHNr1bR/MnHORuDSiKtleEs82VA4GKpJhTixEhUGkwVSGdYpUvT3sOVoTynxMHgqsYAJZuo4dMokE+7X5uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744960652; c=relaxed/simple;
	bh=1NYAZ9s3FN912r5R1+nyOhEXkSHN8iTTBsPkviYmqIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YkqM+pQ8P+wIJ7If/dEThSJ7FnxwWlZY58ZDzNHYMHNRhfiQSlao3dK5aOlUVFcZzBdD8mUR/bOYc1pO6XYH6XWg7qN7RghWBQw96SwNnXkTCyX1GhOT3R18TofOfuh/Pr1qsSUaNRLiFZK68vGihXUR+A+Laib/O1mOu4wG0DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mXPfdHP+; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39c1efc4577so959509f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 00:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744960648; x=1745565448; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TvGO0qefvKjUH/UIq4IcUVMh3abWe/Yo1dAdnvmOivg=;
        b=mXPfdHP+89ocyglTl1dPcUl2BBsJErkbeXWXqsg2OZeQmXflxHkEFDIrQs0zPOT8iU
         S0Y426bhV3fouyw/K56M91oJMLdj+/ddD96NxK8T81qDIhHi1SEy9BcCCQX+MHWx7jsC
         mY3CcfbQWJbiXHbxd4r3jMz9zlTOeHWWmpccBkbg4TPjeNsc75wIKTnwAlGam0TArsDv
         MK9HbtCaoiPgUC4zB0rMn5avJ5/NUINJCCz9siwD6D3qPqbMPhwUwAgb5qcP8pcJtSA/
         /lExW6oes87d7gy1peO+zuKiBh9rZwoe8ulucjKfKyWdRXZMKJa0ytIU02bzCU3hsBpC
         Ruxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744960648; x=1745565448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TvGO0qefvKjUH/UIq4IcUVMh3abWe/Yo1dAdnvmOivg=;
        b=Qk8c/Ilr3MhIy/NUsNtGNWyq9x4jossMTh+8uUhy2zPSx1Hj0ihPGPeewdFrpRfWwe
         7Tl21nEnLmwGEsR99AVLMbs+TCz54HNTHVct9PYZJaz+UmIC6FijCdF3Lh29ynaxa2fv
         ZFW6R0breMQWsbYZRUwdYgC11/6a+B85cEmusQMMEyBYwZBqeYBnRXy9nC0Laa6xnRxX
         OpSOZ1hZ5831DS1bU3MFP3yMuhaPZ3newCDVrLdJpLc6Wp87DUBVz21pu8mFXFtgMdwU
         iyO/NTdBUwl9/aWZBvDcMJbnBH6Ns9tpvc2ChHd8egHItyk8F3vcJilo/hTk+XIOAkMq
         /7rQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO89tqv5D+kHkEWPwxny6ijogk9Y5sxmAnuRnG1ln8SLBeOoB73YTjsbLU/fRPvBahVGoJtcciZJiw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7bcuK5c2mE5NL+VD37wIBiLkPYoYrsC/V+eOsI1zPOixsVj46
	McIsbp/E6Mj/bbumYd+N3E5useM6F//9hjmAtnKhXQToCGcPN8RwmBaCr5kSuW8=
X-Gm-Gg: ASbGncuz37PJFsydFRrPjAnq/lWR2wcwqhVJxHat/peeCQEHzCoWoYjocyxdBnQR3Pq
	c1wpb5FO2y34LFs1XwSE9eAeRw/TfXhfgW4pjxgDGyFvgZKSXF7jc5k2Ee7ThPOczhuutpil6Bf
	fOkJayLUJpF+rAWkKMCR5uOMACkjtIwNvK9G5VBglpB7MesfuDnYR4KTlwnuhsWAI+9VeN6YW5o
	G5R2JZW08mBT0J/WsZME6jjCrFS5c+MC2yaEkH5/aMoDk7wJfXWju3NkHZdCjRk59ukfPGpjAUH
	t/uqpzHxkaNy9gwRnauW3ARDZKN2+QPSW4qFDoo5GTx2+0H1n/vJSU2I9GDcW7B8XlzPYY5KIwB
	2N12E9Q==
X-Google-Smtp-Source: AGHT+IFrbkI7BRFQfNl6ji1CHGR4492NPN5WPdfXqNCSKuMlVcr/3YVSjwhWaQNknXlP4E/Z6hB9pQ==
X-Received: by 2002:a05:6000:40df:b0:391:ab2:9e80 with SMTP id ffacd0b85a97d-39efba51048mr1234524f8f.24.1744960648222;
        Fri, 18 Apr 2025 00:17:28 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa433303sm1881239f8f.24.2025.04.18.00.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 00:17:27 -0700 (PDT)
Message-ID: <a29cdbe9-f980-4912-9aea-14d8942fb941@linaro.org>
Date: Fri, 18 Apr 2025 08:17:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph
 DPHY v2.0.1 init sequence
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, rfoss@kernel.org,
 konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250417145819.626733-1-loic.poulain@oss.qualcomm.com>
 <20250417145819.626733-4-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250417145819.626733-4-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/04/2025 15:58, Loic Poulain wrote:
> This is the CSI PHY version found in QCS2290/QCM2290 SoCs.
> The table is extracted from downstream camera driver.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         | 89 +++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h     |  1 +
>   2 files changed, 90 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index f732a76de93e..1857c802cf70 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -319,6 +319,90 @@ csiphy_lane_regs lane_regs_sm8250[] = {
>   	{0x0884, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>   };
>   
> +/* GEN2 2.0.1 2PH DPHY mode */

I'd be grateful if the comment could be more specific here:

https://gitlab.freedesktop.org/linux-media/media-committers/-/blob/next/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c?ref_type=heads#L427

Process node and "mission mode" if you can find it would be appreciated.

> +static const struct
> +csiphy_lane_regs lane_regs_qcm2290[] = {
> +	{0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x002c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0034, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0028, 0x04, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x003c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x001c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0000, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0004, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0008, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x000c, 0xff, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x0010, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0038, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0060, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0064, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
> +
> +	{0x0730, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x072c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0734, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0728, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x073c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x071c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0700, 0xc0, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0704, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0720, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0708, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x070c, 0xff, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0710, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0738, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0760, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0764, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
> +
> +	{0x0230, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x022c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0234, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0228, 0x04, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x023c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x021c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0200, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0204, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0220, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0208, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x020c, 0xff, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x0210, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0238, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0260, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0264, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
> +
> +	{0x0430, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x042c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0434, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0428, 0x04, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x043c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x041c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0400, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0404, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0408, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x040C, 0xff, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x0410, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0438, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0460, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0464, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
> +
> +	{0x0630, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x062c, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0634, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0628, 0x04, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x063c, 0xb8, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x061c, 0x0a, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0600, 0xd7, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0604, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0620, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0608, 0x04, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
> +	{0x060C, 0xff, 0x00, CSIPHY_DNP_PARAMS},
> +	{0x0610, 0x50, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0638, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0660, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x0664, 0x3f, 0x00, CSIPHY_DEFAULT_PARAMS},
> +};
> +
>   /* GEN2 2.1.2 2PH DPHY mode */
>   static const struct
>   csiphy_lane_regs lane_regs_sm8550[] = {
> @@ -744,6 +828,7 @@ static bool csiphy_is_gen2(u32 version)
>   	bool ret = false;
>   
>   	switch (version) {
> +	case CAMSS_2290:
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> @@ -829,6 +914,10 @@ static int csiphy_init(struct csiphy_device *csiphy)
>   		regs->lane_regs = &lane_regs_sdm845[0];
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sdm845);
>   		break;
> +	case CAMSS_2290:
> +		regs->lane_regs = &lane_regs_qcm2290[0];
> +		regs->lane_array_size = ARRAY_SIZE(lane_regs_qcm2290);
> +		break;
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   		regs->lane_regs = &lane_regs_sm8250[0];
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 63c0afee154a..377707d91ff2 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -78,6 +78,7 @@ enum pm_domain {
>   
>   enum camss_version {
>   	CAMSS_660,
> +	CAMSS_2290,
>   	CAMSS_7280,
>   	CAMSS_8x16,
>   	CAMSS_8x53,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

