Return-Path: <devicetree+bounces-137987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 928BCA0B5CE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A37E43A1C69
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 11:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4817822CF23;
	Mon, 13 Jan 2025 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rV7WIE7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481A11CAA65
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 11:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736768024; cv=none; b=nIBM+7VCJ1IF1yxV5W1QkSK7Pxk1HvfXkurgDl+pOYBTnUlm4dNlRneeVJ2yYN+zHLzCukLsWraa3JjLU7p13uwl+KwdsQkRKHApRdSsRtjfL1jujrjxrLg4ANp4QqGWBGoUtCMnwHB8YESp8FVoTp0OAl1eu0C+q6fW3gbiv50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736768024; c=relaxed/simple;
	bh=e1r4YVOd6byCkI5a2o7GBXec69CqwHLaseR93Y1MP6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qA2+PTA52GBNAbBAa9Pg9KbNw9B/E7UYBTKO/9Rx8mTkQKj68H5dJ3Y6VAHjkj4pAWXRXZnioPRpx07Ugx+eWPGtJI7ehvk0EYnZWLdNYRYdp82yxO5cnaplAVLaPlO74vXxEue8rRTapKigODjDo1th70FWzhw9fiRLp3Uq21o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rV7WIE7a; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so2456381f8f.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 03:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736768019; x=1737372819; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3zQksN/TTsX9vOpJ8MEaX/p+hq09whruB8W4shax6NM=;
        b=rV7WIE7aXODOr2vG85RDoK/fySf4l/gTjOwRh621PwztEDRcwpjNBWt4KOqwpTed29
         5+mvWG83/M5N7tW9ARDTzUp1efqL05PRTnLaar7O/iXqFwlKA6VQ9UnoibfhmPgOnlud
         PwAzrtAxTkbz+hKl3ld4FUlMi8SWmKFfRAqx3lQstvRtEAOSmJCUIJtt0uiouUO4h622
         pQSdtD5RiiML+c68l3Wkpd57hrlIZyNgNAvPqO5oBbScdOzAkjh71mem90khQti90B/1
         hPiZALTDdsK/clREfflMQXvjO587FaCHTPsOZOW11+5hm+7AaLaqcXoY3NNS7ccBS5x0
         GRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736768019; x=1737372819;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3zQksN/TTsX9vOpJ8MEaX/p+hq09whruB8W4shax6NM=;
        b=nFTK+k5iHo7GW6vH7/qxgcDrTq07lsBWd8/6WK/pqtamuwkD8xCmK+exmRWwsZYZ3S
         4Eu2t2yWaQAW4ClqDPtm7a8+Dx+dh/CshmKFpFiUr6K91ol6VYn0AsDLNCOTZ5S5vvez
         MuQrHUws0cRoKJw7zC4Om3TOSvPFmd9LqIrn5YhkYzeqlGs3IjOhEHcvbXQK0YdMnc1j
         5BT/rOb83XSl+fFu7pBdRYH6UtzxGNWnoX5PN7bBj8QbgbBkNFEAaf6kKBhJ0P1UZhKm
         0IFpRsEXo1mxwqbkwx1vCzp8RUKcdBT3eidvms6GDax5GmOt4arSdh9pAmsCGTinJmgz
         j1YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHszPSdjiNAFlEGYh5m7OyFnbfYulJRCf8MdKQYAVH2TGbBvlC81XnW4X3D7/tSyiErXspgGyYcdut@vger.kernel.org
X-Gm-Message-State: AOJu0YzlTHaIG6esaMpm01ZUu047sQVZQvAwRtqAnm0XV6CYNlb/DLtQ
	LaM5VpA73/2GPjgW/3MLvwYjy24le6tZRh8gMrEdsPoPiQX9cZLEk13ma67dp1I=
X-Gm-Gg: ASbGncvI4F5NddRHeO4dy7HyAuw/w7pJiW+2KQ9uF7vC1Y1ku2wt42EMksXl0DBqady
	lRKYYrX/Z3ZBYXJ8OWNl+QdngKqPF9OPjkgb61BkWHKOinhDMusdz2gLFdUjnwjcKIrkFgR+s/9
	zcEfL49ormsgMK97mVnOB0RLphfNNT1OjhH6aj/VawBHApUgiUjqquk5SG1HyFGZvZp+SLEQl2J
	2XKc67QTphBTGwhsxvh58wifC+gU7AorLBUIOe/h0s0svLA7J6O17xjYRCrKCDxF3da
X-Google-Smtp-Source: AGHT+IErNZ292W88Ml7JDMJHkUe6E1sEG0FgJvIY7MzDkFid6VFTjBJklMQW67SGtV9vc4HOI/jALA==
X-Received: by 2002:a05:6000:45a0:b0:386:3327:4f21 with SMTP id ffacd0b85a97d-38a8b0f8507mr10910143f8f.27.1736768019544;
        Mon, 13 Jan 2025 03:33:39 -0800 (PST)
Received: from [192.168.68.163] ([212.105.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d01dsm11832630f8f.9.2025.01.13.03.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2025 03:33:39 -0800 (PST)
Message-ID: <7f342ebe-6c82-4ae6-b59d-399ec3018838@linaro.org>
Date: Mon, 13 Jan 2025 11:33:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/5] Coresight: Add support for new APB clock name
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
References: <20241226011022.1477160-1-quic_jiegan@quicinc.com>
 <20241226011022.1477160-2-quic_jiegan@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20241226011022.1477160-2-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 26/12/2024 1:10 am, Jie Gan wrote:
> Add support for new APB clock-name. If the function fails
> to obtain the clock with the name "apb_pclk", it will
> attempt to acquire the clock with the name "apb".
> 
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
>   include/linux/coresight.h | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
> index 17276965ff1d..157c4bd009a1 100644
> --- a/include/linux/coresight.h
> +++ b/include/linux/coresight.h
> @@ -459,8 +459,11 @@ static inline struct clk *coresight_get_enable_apb_pclk(struct device *dev)
>   	int ret;
>   
>   	pclk = clk_get(dev, "apb_pclk");
> -	if (IS_ERR(pclk))
> -		return NULL;
> +	if (IS_ERR(pclk)) {
> +		pclk = clk_get(dev, "apb");
> +		if (IS_ERR(pclk))
> +			return NULL;
> +	}
>   
>   	ret = clk_prepare_enable(pclk);
>   	if (ret) {

Reviewed-by: James Clark <james.clark@linaro.org>


