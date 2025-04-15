Return-Path: <devicetree+bounces-167368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E15A8A0D5
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CE44189EF2D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 14:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79D3D28466B;
	Tue, 15 Apr 2025 14:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vutmKMv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99216274667
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744726807; cv=none; b=oTlhuErySeBC0hQDZZbW4cf+TGX0RvshPj3ElhssDtVgDkzD/jyDw2w7cuUqClCIpNKipmNkatwhZQhvvEzoFJfyZki7Vy1f/3VdHMRZxHmWkMa2bsI6EXmzGE1vWP/HdJ6dzv6UC/yOk2/bMhUEcG2aATltHNzu3G7fijGDZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744726807; c=relaxed/simple;
	bh=groN+RJqDV7k5FDV8ZPREj37G2iBdyik12AU8kIACEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q3u5kup3/0NEFeYbgksGstUDG2504/jOXKBMa4uUqNMvk7qGAKXVoHQE3ssmQo807DWYQbtLPLwVWb7pTH7PoGiH3tvvtMjt1OnZCFTkT3CBUstKc0J9X6GlRBuGHIKjohem/MSlLv28psYzrOR3IdhYoJN89UnAlPtoHZ7bOyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vutmKMv/; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so56886425e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 07:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744726804; x=1745331604; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tXKjxnMoQUwfTbUXCqJlzEVhnVQGRvKpp9LSwIPdUJ0=;
        b=vutmKMv/QAIsAq9xhXtF6atnAkRBhbemdkZGDXWC9prxLB5MOrssp58haY004eqF96
         L9mRoNWBDfK1CLZwcUV9UP5YpMuhuFZzAB4oLeo3XLj707Lbdg4MThldIcw1ATzBp9Ux
         sETakoq0U8T9edOGsyzvbFp/X/WFnDixOpiO7IFxXt8Q6qd3Hqq7v0JJuAgFGaz8q1EI
         qmJMxp9WeelgOhroO35o2bMeFwa6rjevv6+yq4GHc0hHQVYFu7I5pCBFseeNrsk227b1
         eGu72M68T/+v8ez4c+qRADEeb0AHEZjLoXWpFCX3Y1jy0ZMZAmvIDQS/Vihcyz3vkhog
         fuaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744726804; x=1745331604;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tXKjxnMoQUwfTbUXCqJlzEVhnVQGRvKpp9LSwIPdUJ0=;
        b=WSU97L+L3DDc2b4cePBkh/ZKLQmDY9PAkLveQ9Pe6aCDI5nI16bmbwyA3CAmog5CJo
         A+9NMpP5Ze2CHp64y68133lyjRhvU9U8VitJ9Hit49McOTYq40xM5Jq3sRl7qkmAm4c7
         TUv5MHwJ4MsLQK5s+4DeDlDCRqXpAIua0l0aL6tN5vwcJCvN5i8j8DWiTdqLmd2sNBS7
         ycilmIYAoqBA7XFQakcpiLg26xjCgFHb25Ni/dW2zdOBsxfj4j9IuPpWKOG8+ijU4PVs
         Fr7ejWdVuM3G2poynMzW/EdeL/SJEu+5NqQNTdWjQzkniVIaJUzkyfkit1xyL14Kg8Gd
         DnkA==
X-Forwarded-Encrypted: i=1; AJvYcCVSJ3krkJ/TFFtMFeadMf6Lhj5IT/oljBne2umjOLIB80n5MRxkUD9aSkcZ8/JuUgA3ucDVgOcLcmeR@vger.kernel.org
X-Gm-Message-State: AOJu0YybksijDpq85Vxl6g/B+h7AnkMptdWi4ArhA8UpDJLbg8hMzEff
	nbm2Cj3o0n4ARLsrW1vVqkELJdvKBn1g9NQbRsmpoMuymovXY4hqZKjrfJVVHT8=
X-Gm-Gg: ASbGncv4o4ZBHlYcPr8lXrhHhVBlh6DGXEGlnF2ng2WvHaTJS1sc6dJKBZQ75OoMQ5K
	UFgHUwtGwZIOr8odTJkCtsNn/zJUzjaDnYgnloOMlGhA+/evQrULASMafiTNAEOiU9gQ+hwO0c/
	RVrVoaascVsChzvilc6CScIblDqQG4/PX0/QhfAPZprHftGos9yr7cA9pmcEANXKBz0jJHLl9XO
	b75BfwJAlD74dcKI/5xMKsQXbYtFkEGFdMYNrCLeCx8kj6CcLlDIdt9A4nScr/BMS+FVAyTJPY+
	lUIss9LYfwupZqjDVqS06xAFxvYO0R6Iu8hghOKZA3koW5xr6M9P4+H6KUInl5Ge7XCdo81PtNo
	wEy1okg==
X-Google-Smtp-Source: AGHT+IFHuCjBCol6ieY1BDDq4pk5yi7yjbY/hlWuVW8OtROYN0kmZ0rTHkOXvlF+zTukhd9HS/iXXw==
X-Received: by 2002:a05:600c:4f10:b0:43d:878c:7c40 with SMTP id 5b1f17b1804b1-43f3a94c657mr195976435e9.10.1744726803832;
        Tue, 15 Apr 2025 07:20:03 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf44577dsm14436191f8f.94.2025.04.15.07.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 07:20:03 -0700 (PDT)
Message-ID: <d5107ddd-284e-4239-a251-f6ee16bc873d@linaro.org>
Date: Tue, 15 Apr 2025 15:20:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/7] media: platform: qcom/iris: rename platform_sm8550
 to platform_gen2
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250415-topic-sm8x50-iris-v10-v6-0-8ad319094055@linaro.org>
 <20250415-topic-sm8x50-iris-v10-v6-6-8ad319094055@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250415-topic-sm8x50-iris-v10-v6-6-8ad319094055@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/04/2025 14:47, Neil Armstrong wrote:
> In order to prepare for supporting the SM8650 SoC, move the
> iris_platform_sm8550.c file into iris_platform_gen2.c that will
> contain all the common HFI GEN2x structures.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   drivers/media/platform/qcom/iris/Makefile                               | 2 +-
>   .../platform/qcom/iris/{iris_platform_sm8550.c => iris_platform_gen2.c} | 0
>   2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
> index 473aaf655448180ade917e642289677fc1277f99..e86d00ee6f15dda8bae2f25f726feb0d427b7684 100644
> --- a/drivers/media/platform/qcom/iris/Makefile
> +++ b/drivers/media/platform/qcom/iris/Makefile
> @@ -10,7 +10,7 @@ qcom-iris-objs += \
>                iris_hfi_gen2_packet.o \
>                iris_hfi_gen2_response.o \
>                iris_hfi_queue.o \
> -             iris_platform_sm8550.o \
> +             iris_platform_gen2.o \
>                iris_power.o \
>                iris_probe.o \
>                iris_resources.o \
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8550.c b/drivers/media/platform/qcom/iris/iris_platform_gen2.c
> similarity index 100%
> rename from drivers/media/platform/qcom/iris/iris_platform_sm8550.c
> rename to drivers/media/platform/qcom/iris/iris_platform_gen2.c
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

