Return-Path: <devicetree+bounces-204403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B291EB2557D
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 23:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F2701897E74
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 21:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897172F0C64;
	Wed, 13 Aug 2025 21:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QMcCfUja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D7B2D061E
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 21:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755120737; cv=none; b=m0a0BGcE/yaJNeOPJ9eFvP5gr6aO6rKkmvkWu/497TyMHay8RAwYNhFoHxtdHmJ0zgRQqR0p6hnVE3w84rPxvTBcQdfM0q9Gp4e9O7TeezaFqnI0lyaOivotJoRk7Q5z9SplNqw3pR1BddwMeQ9A8rKUsrV56EOLG7+y5khx6No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755120737; c=relaxed/simple;
	bh=gz575RtG23oSRtncyZleJ9U5eprqql62eLY7aALs0jY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rMW/opLKoqSuTOeF29cPj7wzhesS0xkdpGszk1E4t07cuD+R6H/gv7lPlAZZvGw9xoTTj1rZ9lvzpYwhZBwzIAOoJMiS+vg5v06J5EkyZrH3XJXLT/tSGTkAPTPuE2gfg9wjEMJC4rezajVT0V+umIy0Ijz7ApHlFthmTXJwuqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QMcCfUja; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3b9dc5c2f0eso156665f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 14:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755120734; x=1755725534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j5cG3cbEW4nr0PnGSR/wXOBrvwNEWafTFeGX/LZex5Y=;
        b=QMcCfUjaMG1xw/wXlsMR7BmuiVQt7JGnQXYBn0KycJVQt727KjKoWz+OFEZoGjGfLH
         bfdQPMmx6lIFJ3qFLw+2dDf362+iO9mHTS6bndnbi8sQwLG2kNt5/WNMvu8vV6ak/SkP
         iDZ6uayb5eJVdN+VzSXwLsQOEBFmrbroTxUw7ouRZlhnhRwFBXP40X7lDH2tSPcVQtzJ
         JwH3BQ3NNG9/tVnf4XCID4iOF0lM4w5g/ku3WzRfVwrf2+7TEh2ZcsNfS700Nj4TFC6q
         sncgnhizEnErZHiVd29lF2NtT6tzxZ20xt1XEgAGQUDWALe0khaBzKUiCVNmu3D2NJ7K
         tujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755120734; x=1755725534;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j5cG3cbEW4nr0PnGSR/wXOBrvwNEWafTFeGX/LZex5Y=;
        b=hvI3Pxn1px/N0FQHIZNvULLhlVkMYCCl48CVuSqghYGKFuhu/XLZeb9IorF6mtXNct
         S4Ndb8Nl/+WB1q0ACVM2OEPA6thQLtPaJ4v4hCrNDq8k5bNbdRf4z4Yg3/h7V0zRjPrD
         vlmSuuPi5haqxE3t91QI/pk3Img0gfFrH+jgcrEiHbQVubiGBRQe1kYtxDEgEPvmH0q7
         MLhCnuZ8hsU+Vaz0iIt65Rfnk9NndcfAczQa3sr0owd4QyCdwITjdBwO29F+dr3Y18Uf
         I8b6eKlMkmhtvDboIyxxJqhVyUDD/V3GYAbw2RNthQAWLLGi/ZQ/2duHAa9VailXS7OO
         E3IA==
X-Forwarded-Encrypted: i=1; AJvYcCUG6Z5rIqICSp+LW+JCHOThCwsq9qrAOTGEY/loAabQnO4l6E8VD0phzoeo6lJiV0NO+YUwuVHyqEFr@vger.kernel.org
X-Gm-Message-State: AOJu0YwJv0Itdv6IyBoW0wYwcUNCbVKf/T1x+ic8uyOFly97wNZL2iAh
	qZbYoWvmrkwH4vxXijzYJ1WwbpP4PnrsM1n+AtNbEwz5gZHlJkRwoRIl1JjeoGY45ns=
X-Gm-Gg: ASbGncvsH3t7Hlh+Rkmc8jB3i7Wu/BXXir0Tqo9wBF6uv/ujJ8+FtJAO0SKl5x2oC2C
	nvfcbRIjp2krA+X7j9oaab612bO7yw2VRZiLSQYAxpjhXCMAM7yhZbEzMPjFVTlBxMmNGb/4Y1s
	XJIhg61OF+pK5gZkJlA0yN/xDGWOuNjKsFePvVYRYORSPU/uHK53rMxgmXePny2uINV7Ntydue9
	iMYyDJo3f6PmtJcisx2WarXX64ce3RcO3Sv+dEhj9K84lZL2StDlaP4To+JAL+UG0biNLPCqiDM
	F+yxYiWYINTi3JxswasU9syIJdkj/yuCk1aUF600Ob3CcDzazexGo5LivTekNZ+bSIQqz3pZEf0
	6F8PVCM1qGbh2Sv3G7IoN/iW1nvRT9w8anrKXwMORYypYs5iIAKtEB4DOO5v/V3B/
X-Google-Smtp-Source: AGHT+IHkYxD1EboP/TbdW74mssEAzDAmI9C1GIx0bTyGR/ssaIY4vNnPWQhRo2D5dv3Be+lyxWwcGg==
X-Received: by 2002:a05:6000:288f:b0:3b7:94c6:7c9 with SMTP id ffacd0b85a97d-3b9edf935aemr644651f8f.27.1755120733878;
        Wed, 13 Aug 2025 14:32:13 -0700 (PDT)
Received: from [192.168.0.13] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c469319sm47865251f8f.54.2025.08.13.14.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 14:32:12 -0700 (PDT)
Message-ID: <505218ad-d010-42a2-bf01-d2141d55001d@linaro.org>
Date: Wed, 13 Aug 2025 22:32:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] media: qcom: camss: Add CSIPHY support for QCS8300
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250813053724.232494-1-quic_vikramsa@quicinc.com>
 <20250813053724.232494-4-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250813053724.232494-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/08/2025 06:37, Vikram Sharma wrote:
> QCS8300 uses the same CSIPHY hardware version (v1.3.0) as
> SA8775P. The only difference between the two platforms is
> the number of CSIPHY instances: SA8775P has four, while
> QCS8300 has three.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         |  2 +
>   drivers/media/platform/qcom/camss/camss.c     | 57 +++++++++++++++++++
>   2 files changed, 59 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index a610504359d0..445f4d41e847 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -826,6 +826,7 @@ static bool csiphy_is_gen2(u32 version)
>   	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> +	case CAMSS_8300:
>   	case CAMSS_845:
>   	case CAMSS_8550:
>   	case CAMSS_8775P:
> @@ -928,6 +929,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sm8550);
>   		regs->offset = 0x1000;
>   		break;
> +	case CAMSS_8300:
>   	case CAMSS_8775P:
>   		regs->lane_regs = &lane_regs_sa8775p[0];
>   		regs->lane_array_size = ARRAY_SIZE(lane_regs_sa8775p);
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 6b9aba1029b5..410e188d26aa 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -2483,6 +2483,63 @@ static const struct resources_icc icc_res_sm8550[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_8300[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy0", "csiphy0_timer" },
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
> +			.formats = &csiphy_formats_sdm845,
> +		}
> +	},
> +	/* CSIPHY1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy1", "csiphy1_timer" },
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
> +			.formats = &csiphy_formats_sdm845,
> +		}
> +	},
> +	/* CSIPHY2 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csiphy_rx", "csiphy2", "csiphy2_timer" },
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
> +			.formats = &csiphy_formats_sdm845,
> +		}
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_8775p[] = {
>   	/* CSIPHY0 */
>   	{
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

