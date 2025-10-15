Return-Path: <devicetree+bounces-226980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA76BDD5F3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:24:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2BDC189A900
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0231B2DC76E;
	Wed, 15 Oct 2025 08:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UWrYX04b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38CA2D77E0
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760516666; cv=none; b=pOVWMKLukAM/FGY7rfhbVsuD6hV0FKTH2E/FOqE/Ju0q2ICEsrQYM/JvMu3ebCs5yDdWywlxvzSbIBZ0mugNguOzh0MZHMCj/Cixl1hf0BtU5co+S8Kz+fRPx8IbTJA4wIWWheX6m4+xEBLhg+/P14hA+LnYKc+hCr+UpE/OyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760516666; c=relaxed/simple;
	bh=KxWKmiu9Rjq1K6P3jRxYwsFZIUByeyZ59tHsbEg2yjE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kf/NUAta9A+7GKYEIV9qZ5BHPbBbi9MS29eyNyPMz8LtyyLaTyo0eUzI54n4NRQD0NwJ29TRfkeLQzXLsvaMjBK7EHXolYqJjPqLwEnHwqZG5KjIbZvK3VAIDDmkOGJ5V8KllRKlxF0j9aIloh3m6kZaMaX13sMaldqqmpTnwHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UWrYX04b; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b3f5e0e2bf7so1167642166b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760516663; x=1761121463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TtE/vZEnFRO/O0aDzTmOM5exa4aoLNDYIYIf8N0xWSo=;
        b=UWrYX04bzyITFxVRkRV21xGHmLGQ9ozgyijXXGsaZ6q9eOYagkQovXkZTCq+qrlyI1
         DAD2pPpF7WHyPX/GVm4q4QBf0MR9/P0zu574oi+fzy5mUHsCVpahBeOYfalCftNgoS5S
         7NvUxDi3jJcRQTOlLizX/1W+oQZn9G+qVLztGr6JN4CtpZrqQVsG7gEi67C6m5cw2f4X
         Hp/CgEV8kYdOpFrx2ppjhh718rFr3x4F4J4cNBq+WEGYQ7WCF3Q0lRahC/QvnpD95NEn
         0DJlPXYNUAiUpv/+hVN2zyurfYqaC0FwuKZAJdpKqKSARiFSk4r3ooV0UejoN//fIwSo
         QqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760516663; x=1761121463;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TtE/vZEnFRO/O0aDzTmOM5exa4aoLNDYIYIf8N0xWSo=;
        b=R+4nOhIrLnexycbZRVS7UbdMPZ0KElRwE5+qrAGbqdoJPxeJTSD/G78g0WUaJda03d
         rALJMXAOclqGf0mSqOO0uQmM3gNnNvlebE9uaik3szZPbUz9HtqkYcDwS6pDnYoAObIf
         VBHwljvzGhZtzPInXOaT2EO9sylfsrND/Ga++MT5fKUlbiI5xjaq4yazPQ8OW1KIpxfE
         kZRTHu45Oku2no3UH57MgahbBm5Xx73+jd0zLr7KQc1r/21Qb+XPOvv6fylPr9DE9RER
         5GGH+xyfeYZ5IyAHDWRgTCF+BSMwLBgmD4LePpbMg5/h129nr0iuhygpeyRCcpijkh5N
         kwdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFgB7E2sPxdvsOWwGzvLU34bgvno3eBwtf6wksvT52EW7YTYaBdP525LUa5dMraLULJMM9bhYA8xDm@vger.kernel.org
X-Gm-Message-State: AOJu0YxdFpoocjXJlCfUvOxlm3SNMOcNmNMMFmb1X0u4f0YUEIS5lNsk
	Gg8wsenXH1a/HVlVtAUQ1r2+Ril8teI5kzQJTZvrfqMkKnd2wLwnT0fTZHcYVFWS65k=
X-Gm-Gg: ASbGncsxjZK5TIRCcvOOSjB0gx0L0O3kY+Dnx09GqQy68z21w/RNZBl4irNL/G3eTft
	UZ5SQWpfWz7MEG9FjGA2FExRpLZQ27ZJ4haFFzK5IXCY5g66dqTbAgTpf0XlImnVE8iuzvXOjaR
	C+sFc3AbNAdDN4GXAR/OrxZugwCH7xjp9ZWYgjfOkTSSzcvXNKPJGKWhEfzEATHCWXoy+Q+LLJm
	VjxCHWbOcEWpfyuz4b2WxWND4mG0qO9azJZiU3HaN0kMl3PRcuWOTnctCUHbuhFpY4qSIiG0Vj8
	Nwhu3kwbQ4epalIj3kKFuN8ZgApYjiCG0O87QZXSkAlEkq5BrAJL2QfmIzklfUGoLTCcmp/J2//
	Y5n65kS5sBCunwo+KNfbGlmt8gKj3CarawWWSl4t1R/EWmlq7Mh7+2TsEHBFVpz2hoPSsVLWBSB
	UvpFFmDGUS0F4l5MfzFy52ng==
X-Google-Smtp-Source: AGHT+IGevrv/qqYOxvgpm3B6QvO6hWcybEKVbjZIiQDfLWE4gSlzL7mBitr4uu2g2PmlFXgFdhalWg==
X-Received: by 2002:a17:907:934d:b0:b32:8943:7884 with SMTP id a640c23a62f3a-b50abfd6a1fmr2836258966b.45.1760516663245;
        Wed, 15 Oct 2025 01:24:23 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb9e813acsm169952566b.27.2025.10.15.01.24.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 01:24:22 -0700 (PDT)
Message-ID: <06043c1b-b261-4469-b897-66e8173588ab@linaro.org>
Date: Wed, 15 Oct 2025 09:24:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: qcom: camss: Use a macro to specify the initial
 buffer count
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20251014-use-marco-to-denote-image-buffer-number-v1-1-f782e4cc622d@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251014-use-marco-to-denote-image-buffer-number-v1-1-f782e4cc622d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 03:42, Hangxiang Ma wrote:
> Replace the hardcoded buffer count value with a macro to enable
> operating on these buffers elsewhere in the CAMSS driver based on this
> count. Some of the hardware architectures require deferring the AUP and
> REG update until after the CSID configuration and this macro is expected
> to be useful in such scenarios.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
> This change use a global macro to specify the initial buffer count. It
> meets the requirement that some hardware architectures need to defer the
> AUP and REG update to CSID configuration stage.
> ---
>   drivers/media/platform/qcom/camss/camss-vfe.c | 2 +-
>   drivers/media/platform/qcom/camss/camss.h     | 1 +
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 09b29ba383f1..2753c2bb6c04 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -541,7 +541,7 @@ int vfe_enable_output_v2(struct vfe_line *line)
>   
>   	ops->vfe_wm_start(vfe, output->wm_idx[0], line);
>   
> -	for (i = 0; i < 2; i++) {
> +	for (i = 0; i < CAMSS_INIT_BUF_COUNT; i++) {
>   		output->buf[i] = vfe_buf_get_pending(output);
>   		if (!output->buf[i])
>   			break;
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index a70fbc78ccc3..901f84efaf7d 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -41,6 +41,7 @@
>   	(to_camss_index(ptr_module, index)->dev)
>   
>   #define CAMSS_RES_MAX 17
> +#define CAMSS_INIT_BUF_COUNT 2
>   
>   struct camss_subdev_resources {
>   	char *regulators[CAMSS_RES_MAX];
> 
> ---
> base-commit: 59a69ef338920ca6a5bca3ec0e13ce32809cea23
> change-id: 20251012-use-marco-to-denote-image-buffer-number-cbec071b8436
> 
> Best regards,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

