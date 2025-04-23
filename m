Return-Path: <devicetree+bounces-170078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D88FCA99AB5
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 23:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 415BB7A4EB2
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 21:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62E8C26A091;
	Wed, 23 Apr 2025 21:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XLR4irnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B12F171A1
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 21:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745443680; cv=none; b=qd0Cl0F2C5NR2mAjAWB7kJbBDBb6N9A2OYkjZC2xaE6Lr+TENfXtoR8mLE3iU7U/gpmjHNouMukGAMSbRjuAQErJVU5KkRjtdLzfY3NxklNWsSjSFVAAjloLNLPMEQqWxp+XXye5txiIw3krPAqzef+u2VUr4VMcG1cyS0/rg6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745443680; c=relaxed/simple;
	bh=UoXx4tGES9OMPPM7oZI7K3CxI/4ypR1vyn2KvyB5orQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FLtYwCIITBqK22JL8Uub9uLZq5Bpqsw8cjpynlecDYyV8yDHs5ahpHh9Djr1rpZ/myTYwPFwCmdU4/FDT4xlhboEnnrExdq3iW6N6K6jqb3mi5N24i6916r0Zd6kztotfqTweX9NqkN+33D5N5oDxq0A1fCOxVz8k4ejjRlsljI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XLR4irnJ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so2285225e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745443675; x=1746048475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aNVqL+OZswouyUq3SbRuMHrYu0xbf+/3y1/IN5N3DtQ=;
        b=XLR4irnJGnxyNuZJ6qrJIHxW9ByjG7kEGsip2cYdSXNLY0bXFDqhrI4MuyNbs5zx0z
         mGebB66qlTp3hbnLAnc7vTXRRJQraZ2WVouJ1ZnAHEcXIZpMcMWeLSC4WSWOEZwTzdWu
         HiungUpCZQeqT1kf2uKx57pHtX8GHgu9ZpWpR4cthVo9sfWANysDKCpZsfBqh2A6jsy1
         w+U93jdT9XL4IxBs0eOE57A1OqzaZjI8t7g2vptWdR3Q8Cd1eySulhKwksIq2VGIb+0Y
         v3BqZBoI/i65YLZQy06t2wa+kBT65uzU8ufl2IAEr8Ch9y62rmKK8N57eJEVg6MSUhVr
         LR0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745443675; x=1746048475;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aNVqL+OZswouyUq3SbRuMHrYu0xbf+/3y1/IN5N3DtQ=;
        b=wOiYn2FYmtvNR5r9ACGHixMDyJ96iHxP9Q3QaphOoD8cQ7VbiqMRf+nMjLkc6a4eRw
         tJQZRPfR81+o6L9wFqaFdp8Cn8w9cBm1WLJggTRIbH2EENfu97UKl3tBoRUVSvBASK1i
         TJYzkNfoxe94DgaRnfMVx2O39Ik+kgeSotFRw9uNc1XBSGFTBO583EKjdYZAP1iV+WVP
         6npJHYaPUlMsziF6pw4ImyZ/tTppbYMw4Nn65YZSqg54/4Ymtbu2sXNX9UB/cHkh3gEv
         N+5xTLHfHaksis79nbCoHICLLGSJLgkXk8ej4N0oYWidDPOdJOFVAr8z0mXXG75vM+z9
         sYDg==
X-Forwarded-Encrypted: i=1; AJvYcCXTxAudrLrMCOEGaxjpWnQdH9gtj0VgJu7bgreOn+O4rKINBr/NVtcwlAkey9+H5CCxP5tr1z/kESWB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7Bt2vzDjETw+PyLSYNPZAUfqnSlrKs6mbNnOOGyfK0CZujuR9
	GuiqTCYLB4fQHXoLRhDBUG2a944Myt51kHcVm/j/JgsxyKTyMZqZ7BVq//X8rXg=
X-Gm-Gg: ASbGncvsPKLKEF6S6jJaxng2/egBpX6ks9dTkJ413KTUncTZYJzT75nJ9TSvbjMgvqg
	62dZu0QzopmbThT824LUZsa55uuzArR9Y+nSGdQvJGB2LW7oNFXXiG9fuh3jgSbaxHrVle2ki6T
	MrBHTExOojAL8NrUcmNPGHVB64Dj2ifiBoBmgvmC1msBTJwe7mqGGMsjrRl8W1RgYXWexj9sQf1
	V4vlRmzNJruqGF3me9glzQlFuhU/8xt7paNK1BFWLNNNhjnJ/URYlj9ThR8P+lwflof12E/O5tM
	8oeYxzIiehDK4a906f09AQK1F09J5QP1YHSvGFyIhgNl4QaVCd6aYLwDBaBAINPJh4PNZHbHDXX
	8gQNoCTpkHx2H56U9
X-Google-Smtp-Source: AGHT+IHqb57GnB8kDuXYgg2wy9NjvC9CrGI7gkJ4N6LcFpbnWl0SOhTR/Fqxf+gYXyCBGmhSP7sFMw==
X-Received: by 2002:a05:600c:4ec8:b0:43d:a90:9f1 with SMTP id 5b1f17b1804b1-4409bd051e3mr1119865e9.6.1745443675342;
        Wed, 23 Apr 2025 14:27:55 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493377sm20389750f8f.62.2025.04.23.14.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 14:27:54 -0700 (PDT)
Message-ID: <198b6f8a-8502-4b57-a1ba-77bb585aae65@linaro.org>
Date: Wed, 23 Apr 2025 22:27:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] media: iris: fix the order of compat strings
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250424-qcs8300_iris-v4-0-6e66ed4f6b71@quicinc.com>
 <20250424-qcs8300_iris-v4-2-6e66ed4f6b71@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250424-qcs8300_iris-v4-2-6e66ed4f6b71@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/2025 20:33, Vikash Garodia wrote:
> Fix the order of compatible strings to make it in alpha numeric order.
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>   drivers/media/platform/qcom/iris/iris_probe.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> index 7cd8650fbe9c09598670530103e3d5edf32953e7..fa3b9c9b1493e4165f8c6d9c1cc0b76d3dfa9b7b 100644
> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> @@ -335,16 +335,16 @@ static const struct dev_pm_ops iris_pm_ops = {
>   };
>   
>   static const struct of_device_id iris_dt_match[] = {
> +#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_VENUS))
> +	{
> +		.compatible = "qcom,sm8250-venus",
> +		.data = &sm8250_data,
> +	},
> +#endif
>   	{
>   		.compatible = "qcom,sm8550-iris",
>   		.data = &sm8550_data,
>   	},
> -#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_VENUS))
> -		{
> -			.compatible = "qcom,sm8250-venus",
> -			.data = &sm8250_data,
> -		},
> -#endif
>   	{
>   		.compatible = "qcom,sm8650-iris",
>   		.data = &sm8650_data,
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

