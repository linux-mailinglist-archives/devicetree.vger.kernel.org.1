Return-Path: <devicetree+bounces-202674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCF3B1E560
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:11:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 386503BA867
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 09:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CB24268C73;
	Fri,  8 Aug 2025 09:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JJg83/Zu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78F4185E7F
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 09:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754644294; cv=none; b=A4SEFLRucheW0NkagyoXHex0XaW5WDaHHZlx4FkHWI3p0i0XkltlHSrZP62rJLW8FqyshHl7x5ZYi6to0lIm882QVgU5Fv5qTyiVRN9OTWE7L3Zk40KoRxLq2RHLZSx+WJVE+aOCESMHicSR7rJoPZtzS+VoB5ODT1nuyjXT4ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754644294; c=relaxed/simple;
	bh=yO5R5g4RRRQ9fylhV15S4TlG43LV0nzy1cjPY86UEqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fFqVa6XasPLQoJPjDHHliiWqhU7csD6BMvIDK/AJSp3HdTlG0RUmMZfwznE/YjCOYKiZcxnSW7MW9d+q+xIpFkS2wwCiQ5xfuL1z0RqDAomJSnh54Go5d0MlleVbH/prrUJ/NuKQ1UdSVe+T8zoRvN8e0VY8bRV+J8UXy2nccn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JJg83/Zu; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b783ea502eso1459870f8f.1
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 02:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754644291; x=1755249091; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kQHZz2yokMkgkwlKNquoPo8xw5GL1brCMiREVSCGCgU=;
        b=JJg83/Zu1uZJYskpUVR9qjcGv6WphJLWnmEyrMtPPOUSHWJ0wv9N4tWLV8uCWx4quX
         RgK9bA8oaHhfj89/HDePBmCzFG8OeG131mBhtT/0i6FutIZKvN+RvZNp7dCCG8dOxo0e
         JPHP4ebN/+JgBKt4m6hTLgDmAJry+n+ft+DZ0Zup6TV/Q4V5QtZmLjblG9MixK9nFTS4
         5PoXsyTkZZ3fv+FtqEKkvQ5mw/iCWoyqDM86qGDlQeFqXW/evSyUz2epNRfmVFJKdhWX
         bpC1HiH924dmKpsFgHTJc60GRepFOCSAw3r12EYJnjVG9hbFxWTnqCaEupb58l+XXD4b
         CIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754644291; x=1755249091;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kQHZz2yokMkgkwlKNquoPo8xw5GL1brCMiREVSCGCgU=;
        b=KlePrUU/2Dhv+feOrMKVOVDSkosxp1uWaxrjHMyjAteJkYZc45OiX3VNAAsPQbW2mq
         99cOlkue3j0DZHcBa/evziMoDYxDcS2eHrznTA8FfS6OtKNKKOMwVSD/uhhgWA1FwMXP
         JnT8xZwYa+2gEho+AaGo4cNdiAdGbseanU+njGzOF+3dgyDtfYqZMJqtk8khQNuWR419
         QRLO79O2Nw0xR4RkfozTK3bIGE3iMSAXu9o0798rGJNru4urExiWJFQOes3kcUkM0NGb
         2yrwPukY+VWYBpHuz/NcZR+jintOxTYGjGCw0bVFWfuZj44WWvtDBWk4aXRcFUrMriEr
         Jplw==
X-Forwarded-Encrypted: i=1; AJvYcCUw/ecPxpoAXJmpIa14SJeia0yLpsRO+I9asDNPNAZ3Xk9vnDCvYj7xk7whCqXDA8tocEpAXJDvgtkn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2NFZiLoObZDpoVrGUQO4ny0p9pnw8Vr0PNgUUOxq9RBV5QQtf
	WKSZlgeP+MH7DzHAlgy4vPq1+Fxq7ufGudAzx0K1sFXqWpbdPp+scmcbt4j2KSvBu14=
X-Gm-Gg: ASbGncut3n+i2MZmiHs4g3kxmWT8kEsLStCqjTdfaOAzAGMMOS0s/zsXC/4hbETjgYa
	lEUZH1oElQebyyT38RxX3kcMnUaSnUDvsPtQT6+qX+CQxzPRaDvHBwTRMxhNaYKWNYYLR+fOsH6
	Egsqtb/7m732TmX+h520u8cE55E/sFpemnkTlJGnu1mKiZcNW1DStZ7/YmlJNJjrKJX1fNCblC0
	2/nZ9w71OVKBNSqH6IhmnUOwCeRIP6aBaOPm5uMdxqoXwor4Tr7GiwwL3FYV9P2kp6joemTVqdc
	6ZQsastPK7QE1/e/bwR9dFYBxyASmjM2XuhK+voy/xhFZaROE4e+DQLCDq8ZbjDx5ZWwpwHEzn5
	YPu6G8jY0qF1ENZnwzOmr+a+p1sI88H1a1n4WFLDRPiBbhFiRaYeUpPJwQHhbzwY=
X-Google-Smtp-Source: AGHT+IHDbCe6jjj6r9hyHFmBI+bqB412fjCUIPMbbqAd89xsBc/7FSoiXU2imCpUAZvEXTUCmX66eA==
X-Received: by 2002:a05:6000:40e1:b0:3b7:8842:89f5 with SMTP id ffacd0b85a97d-3b8f97bbfa9mr5683297f8f.1.1754644291208;
        Fri, 08 Aug 2025 02:11:31 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458b501f22dsm165801695e9.0.2025.08.08.02.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 02:11:30 -0700 (PDT)
Message-ID: <343c1606-75c5-4b2a-9d45-160a6a8fe255@linaro.org>
Date: Fri, 8 Aug 2025 10:11:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/8] media: venus: core: Sort dt_match alphabetically.
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
 quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com, krzk+dt@kernel.org,
 konradybcio@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 mchehab@kernel.org, robh@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250808085300.1403570-1-jorge.ramirez@oss.qualcomm.com>
 <20250808085300.1403570-6-jorge.ramirez@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250808085300.1403570-6-jorge.ramirez@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2025 09:52, Jorge Ramirez-Ortiz wrote:
> From: Jorge Ramirez-Ortiz <jorge@foundries.io>
> 
> Correctly sort the array of venus_dt_match entries.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge@foundries.io>
> ---
>   drivers/media/platform/qcom/venus/core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> index adc38fbc9d79..9604a7eed49d 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c
> @@ -1074,11 +1074,11 @@ static const struct of_device_id venus_dt_match[] = {
>   	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
>   	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
>   	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
> +	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
> +	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
>   	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
>   	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
>   	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
> -	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
> -	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
>   	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
>   	{ }
>   };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

