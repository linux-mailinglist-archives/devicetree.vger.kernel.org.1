Return-Path: <devicetree+bounces-239117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4725C6162A
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D9FD3B6BE9
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5531630C35D;
	Sun, 16 Nov 2025 13:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oSfMkfip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20BB30C600
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 13:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763301035; cv=none; b=RR7JZHQkrrIzfSn/8zLtMe0q4rryW7xK1+WFVFBjVLH1FtK5AS2P76AOnMT2g3egdcqsPpm4Eu4C2x8hr5cer6HF8HDI9KpP+jq5e8wxboAQJACKTMV2ynaAwX0KnsFokCNW3zRvQ5Q/dBZchY5H3z8sPpRHuSMAG7+FPudKw4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763301035; c=relaxed/simple;
	bh=xBUF0BKkwZYKTEHzNdupGdJM5fWZSOcJ3Y3kn2tjKwM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFc9r6lVyknjSTLSTLKD+LD9zqLK3yX6BTf15yvebd1DyWNCwXpGb4tBioJDLrtXhahwp3h49ZczmaJM2F9s7kZdIoB5KHHKtVaTC/MULrLIoXIT0FsvwNr1TcyLqkYB4jkWQLYiM4+42b591aVprsNRVFOnmaDTejnb7+yQF+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oSfMkfip; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so9910015e9.1
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 05:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763301023; x=1763905823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KsFsVjl8oE/lkkam5eLsiD3gLh4CJDHdyycJdfwM3co=;
        b=oSfMkfipw87dD/Lxt/KuuR+5Qg5KkKlCyCy+cQvbw1hnzQ7w0JzB6pUni2ZX3QJX9K
         pRrn2HEddNUzxaJ89hLcyNM5nNHWHfzOOtGRq3EBTD6yXpMnrH1feWDXBIFDLRs0ddN1
         s13YpA74AjqkUDMVNlLjOMd7KNsMPRjGRiGb4y2Dk4FftY0vXoU2nxjMzieDIyH1wsTm
         oQhGIyP51+9WLvYE7ylJj1luLhOgrkYYkJntd7spVZRmZCgR/MMywn3fNfO/VabD1ApB
         SZXgIORNtXc2Sis08NvrH33LDwXOcP7Tnc/zcmbtvCaZ8JOAdLdCmy3xnT6DAe353GQt
         Mbng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763301023; x=1763905823;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsFsVjl8oE/lkkam5eLsiD3gLh4CJDHdyycJdfwM3co=;
        b=jY5o3lZE5DmpPKqegJmHQ/4rC8+/nmPjDBZ/rBP9jCpHgfYWty2nU8M7n91XbElEx/
         TtIhHSXMNvZfuXAG79p2kIFW+BJHyGlbg6J8chttW5a/eiJzJCc7clasb9fMs2YqGPsd
         o1+K0jyLFGbkVp9xFB3CA+z/T2qrJHlBEauNHxDhro5+Qgx5bx0zLc2VVnkudHYSpXv+
         olvJaSmpbn0Jtibswb4aqkGoezUozCrEUZEaDjgf+QXneAH+DGYyzMqO/Z3NdMtQDLoO
         dS+362FDKSU4qtj2rR65X1GlY4Q7Mwpa9na//S9+AUKFBsf83seeww9P8my6KJxjUVru
         Zk4w==
X-Forwarded-Encrypted: i=1; AJvYcCWJiYoTE0Ucf7SV2BvvtuO3kDTd0WB6V+tqbtIuMNqQxSQ4XOSFu3NAfRCjv9i8fJGa7jlbocMC/i50@vger.kernel.org
X-Gm-Message-State: AOJu0Yx31CIdT2VEr1HrVdweWCObqD3tS0ZXysDr7W331Xe0QuqSkXh/
	noARocPV2O5g83VaOrb+VAg4lPHvVVYm3rgroFuQIjTTGCUHj3UOVectIIVdh00NRm0=
X-Gm-Gg: ASbGncv6J7+vSBP7cagWN+W1ZgHXOrqmnu4HLlnWuL+S5/+EKpxgV+scMAmHvNuWiq4
	Wbc+ghvo04Fz96Tr+MswQdyEE6EkjbtOrHwnFvIiuDQcbVXzP0YGiMutzwxQdmxVCyZ2tGkviBM
	CAtZH508c/41HoydkKEeE27EKLP7od6Ly4CUGq5KKqBfqw0veeAehXA6Gbk2SSAQMvLxiZ9qV06
	73PnLIvFSl5B4pkWyJZQXUoOfqi6H+GxR8CQ2sJRHOmNotEFgDPl6VojLriz0r8hlmYjZ6mLAKk
	z+zIq8sjgyg5mf2NtgAbO+OrVA6p+3PkuUM3RkJvJk3GCpIUc8jGGxfHyUES19F8HmayJU8DZi5
	r+VLJY9S1O8gAvZO13ugbPJ8M5DYaEVdYLz0EwMnXp7Spk4LogYZR8ms9lKXlBuP7ZSnu8uZPYz
	aU34trI86XFZXA2W6rVfyTRDPEX8PHX6uH80tfCeEw1rKhyd56azMS
X-Google-Smtp-Source: AGHT+IGaoiDorkO7nqDxZYo6Led+8eqxFt8ey/tZ1b794CQxwAjAGn9Y0aIzFGj0WfPTFZQUIp1yNA==
X-Received: by 2002:a05:600c:4714:b0:477:8ba7:fe0a with SMTP id 5b1f17b1804b1-4778feaa8ffmr86129135e9.24.1763301022918;
        Sun, 16 Nov 2025 05:50:22 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477969b3c12sm91700015e9.13.2025.11.16.05.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Nov 2025 05:50:22 -0800 (PST)
Message-ID: <fd39f653-b7fc-4d1e-a70a-156aef4e4b60@linaro.org>
Date: Sun, 16 Nov 2025 13:50:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-2-1e6038785a8e@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251113-add-support-for-camss-on-kaanapali-v6-2-1e6038785a8e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/11/2025 03:29, Hangxiang Ma wrote:
> Add support for Kaanapali in the camss driver. Add high level resource
> information along with the bus bandwidth votes. Module level detailed
> resource information will be enumerated in the following patches of the
> series.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h |  1 +
>   2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 2fbcd0e343aa..658d9c9183d4 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -34,6 +34,20 @@
>   
>   static const struct parent_dev_ops vfe_parent_dev_ops;
>   
> +static const struct resources_icc icc_res_kaanapali[] = {
> +	{
> +		.name = "ahb",
> +		.icc_bw_tbl.avg = 150000,
> +		.icc_bw_tbl.peak = 300000,
> +	},
> +	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
> +	{
> +		.name = "hf_mnoc",
> +		.icc_bw_tbl.avg = 471860,
> +		.icc_bw_tbl.peak = 925857,
> +	},
> +};
> +
>   static const struct camss_subdev_resources csiphy_res_8x16[] = {
>   	/* CSIPHY0 */
>   	{
> @@ -4291,6 +4305,13 @@ static void camss_remove(struct platform_device *pdev)
>   	camss_genpd_cleanup(camss);
>   }
>   
> +static const struct camss_resources kaanapali_resources = {
> +	.version = CAMSS_KAANAPALI,
> +	.pd_name = "top",
> +	.icc_res = icc_res_kaanapali,
> +	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
> +};
> +
>   static const struct camss_resources msm8916_resources = {
>   	.version = CAMSS_8x16,
>   	.csiphy_res = csiphy_res_8x16,
> @@ -4467,6 +4488,7 @@ static const struct camss_resources x1e80100_resources = {
>   };
>   
>   static const struct of_device_id camss_dt_match[] = {
> +	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
>   	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
>   	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
>   	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 901f84efaf7d..876cd2a64cbe 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -90,6 +90,7 @@ enum camss_version {
>   	CAMSS_845,
>   	CAMSS_8550,
>   	CAMSS_8775P,
> +	CAMSS_KAANAPALI,
>   	CAMSS_X1E80100,
>   };
>   
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

