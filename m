Return-Path: <devicetree+bounces-212896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A22B43F37
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC4BE7BF62C
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C349733A038;
	Thu,  4 Sep 2025 14:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fOj+5XHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C153834165B
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756996562; cv=none; b=LZXHLgdqrmHTLM0KYDCv1TTZu9f8gBu6q2NTjYviE+YgggK8cteLF5Rffq3abcI7+5rbOERerGsT+BrrhViVg5+oTM/nQASLvmk0yDNYpg+6jVUYvj/R/G3TlhYG349CI/64VJ4EydlKCoakIjp9OvTdQq8L6qN0oVaYbHA5xWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756996562; c=relaxed/simple;
	bh=2Knd2P0iOB5JzjpHNmPDbX2uHeBqvBGbNPeYzdNyIF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aWOrRQZzK6BiVx2UuF2Pv2FWEd+tDPbKjZBHkr89JGEAqsq0PuTi9cLRKTPjfEh7aEuuTB4TzV76Z1uAt0asn31aomYy4fRrtg/+pflxTecFtW/+nWpvs8Owvb3E0kutvx4hzE0GB2P+Edz3gLQsS/K47F8F2Geyh2rLbRP8WYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fOj+5XHY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b8b02dd14so8115555e9.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756996559; x=1757601359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LG0FGlXd3G2peuym8Yly6U3jFni4sREv4yKdwNH+S4w=;
        b=fOj+5XHY3DHADCSJM3xo15HikfYqzv5tp829rtQMwKDmGVsiFPj2JOcM+18oim3NGr
         hhze5bcjYAMYitvve3qTnRg4/wcsRe0/Aw76qwNVUqwPcrmBsXtXAFs/wxsCIa7AGuuW
         2s44MfsrfTVKMiuae15hxGmubCKcDEQKGTRrZTPwhmJ63UJLEXImqIqncL0AxiEY1UPF
         B9n/5gqpu88L75oR9rOUgM5mANs3VDG/GA6yC/UGC5B8Q4AJXna8qCfbvc0Idv6ldtYf
         YlDLm4cQN+58p/cC9W0JZOYpb8gDP9PtWN/tAGKmZpXEVTHbkplgQsRRyGaLtuHa8GyB
         kvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756996559; x=1757601359;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LG0FGlXd3G2peuym8Yly6U3jFni4sREv4yKdwNH+S4w=;
        b=dsxcfsdhxUASSrPXo5zy9/njhkClB+5/1USn42mdF9xbz6L7fFHZy0WDODJhZ25swj
         XXAJgCOgbET79mqcntSgdZtBrs0mZHu5fslaK5xcYztGOo6tF4qPL+YnuiDlQhfBYDDK
         xOf0SM0/yKFPqMh2HP6qUwBQhiohWZavqChcnF6MOX4zwXkx3lU68cRMVfeIrPwPyV01
         W6QsDGUii2178TSRFSBmub9zZ0SaHhkeddl4A3fvy3y8wFkygLNySkLm1KbMZjLjefnf
         afdizxxldcshpkdJT2fuwmvH8M8168eSq0Hqqwi2AfPjyR4feOnld1iFk5zUphxWTezJ
         yMog==
X-Forwarded-Encrypted: i=1; AJvYcCUxl2tOqb09G84955ch9aL2t412FpY3X8aFW/Bj5Xlm9g6/FqKhsMCRchx+f1Er27EeeE3ekCAovSVJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3WTlLoCj2XNL3yWmafOG1a5bMS7M6X1po2PTjm5AL+MsjdV0N
	IMgktZsKDToyIu2/Q6EpSIcFhsJLAQQQ02FVlikAajY6FCZlG5NDgU4K5O0g+IJZwIA=
X-Gm-Gg: ASbGncs1TZ6Amwnp5R5F1CGzA2Ll+Vp6r8DV0mwxZELCxQoygofxFozX/krR0vZLbxx
	ybEB7novc1NPW+F9fRjMYbybcuDujHt76uO+KZTypmbBQkrBxF8QWZNlDU8woVvwnXJ/ClDd16r
	97Bl+ktkiFrB8KrHikkow6DuRnAGSrnupVHxFUBJaifpdDGA2FmiI+28AevyNY3jCSxg97RgYu9
	sq8+h2zfgtWBCMeTE3KFKjFE5jL7ALSH+mGZ1CTP8+oROO4mMtNUKkyYGUVZck4puBwUGPjD2IB
	cO2Yq6BYeL32/nIto864yAH1H/sDIu14UlQkgjkANG+fYMlbo4UpKj/zs8dCZWuP4ONRYd6zCNs
	Ak45NwBfePTnHY6VGBOauNVcCfXjPFRgGRBngoxiuLiVUBpFITrz9zk32mKU+Wlw21sIYZr1UzH
	hmGacJKRKvwJJkUT/c+lR7npc4NTkZAm6vZjPgJrX1
X-Google-Smtp-Source: AGHT+IGyPierysmXnmRPi654yCW/A9/i3MYkNNKVapSa3C2rY0Gnc8sqzngSNP7cLDSR+ketpOcIWg==
X-Received: by 2002:a05:600c:35cd:b0:45b:8b3e:9f66 with SMTP id 5b1f17b1804b1-45cb674d60emr49772295e9.13.1756996559062;
        Thu, 04 Sep 2025 07:35:59 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd05d0c43sm19336345e9.2.2025.09.04.07.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:35:58 -0700 (PDT)
Message-ID: <7672bb66-b987-44c6-9b58-dee5de2298b4@linaro.org>
Date: Thu, 4 Sep 2025 15:35:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sc8280xp: Fix CCI3 interrupt
To: Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-1-d38559692703@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250904-topic-cci_updates-v1-1-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 15:31, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> This was evidently wrong, as exemplified by the core failing to reset
> at probe (which would be completed by the IRQ firing).
> 
> Fix it.
> 
> Fixes: 7cfa2e758bf4 ("arm64: dts: qcom: sc8280xp: camss: Add CCI definitions")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index 225233a37a4fd9f3d65735915c0338a993a322d1..18b5cb441f955f7a91204376e05536b203f3e28b 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -4292,7 +4292,7 @@ cci3: cci@ac4d000 {
>   			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
>   			reg = <0 0x0ac4d000 0 0x1000>;
>   
> -			interrupts = <GIC_SPI 650 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 771 IRQ_TYPE_EDGE_RISING>;
>   
>   			clocks = <&camcc CAMCC_CAMNOC_AXI_CLK>,
>   				 <&camcc CAMCC_SLOW_AHB_CLK_SRC>,
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

