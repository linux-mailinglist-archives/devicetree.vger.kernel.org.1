Return-Path: <devicetree+bounces-41264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A61D852F2B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CB781C22A08
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6F83A1AE;
	Tue, 13 Feb 2024 11:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pxZ9kvPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0354672
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707823326; cv=none; b=QKmrZuGENdNS6iLIizMNrzelY6X1bzrtsGMzqirH6yyEpC7jT36REsfqTpCrH+yq1Sr8ntO89Nfs7YxKM4o/1SXoOZEEyybm0jSn0G9Z5Ontm+SyEOyIIxzoU4vEAF1UV8WBPonjJ0MaurPQuADdVBq0Fop2Ck3e65wPYGfn5Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707823326; c=relaxed/simple;
	bh=1q7bAQxHQhZGMtiVBQm0LFBFB/VW4rFEkAOj06GXDl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jh/lb+bj9hEneawe7S2sEGWHIZLDUAwfPYC2eeHvz+jP7dc2dpFAy4QeyiUc46zUGl5KNiIA5RwWNl3MwbjsOYfr9ltscABx8bm5dE+40DlzYgPBbY6bidSernqiJbUjQsUEShxoyoee1rf8UGA8NVe6T3plms592qTFj2KPG+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pxZ9kvPh; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33ce2d1ab86so8050f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707823321; x=1708428121; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SjiLjqD5OULMevxuEv823FXK9KsYza3OTYosWoBshto=;
        b=pxZ9kvPhTs3Y16FWMJ1INc14azkcpQq2e5Cu7zecyEgw6fbGC8mGgxxGm+WFQVNp6C
         ikA+wAj7V23odQIWzkKXocT5zOc1PrYjOkrj5MYUhv8/A/o+OayS4gq4xj9EZ1yXOrkK
         /fp2vRNe7poT2QP/YvYIatx4h9lfbOLlVAT9CE4zxu0UdcnjSVpJDtFOSKPbyllJNb7j
         kPAACUTzDRMxm6FP8ns8SMIGV5U4s5/pJOdrMi1cWwuybXVWm+80qvt6DEaQadzRYpfu
         WI8pTaUtb3Nky/0lrasBBjQH1cmWxiJHw6+T1fHG2jxvoelhBbw3LV86QvwfTpQvuMCL
         4yKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707823321; x=1708428121;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SjiLjqD5OULMevxuEv823FXK9KsYza3OTYosWoBshto=;
        b=CHikslTgb0JJ4SSYvAaZfWgfsmbENMZfGkhflT4HizwftinvgZZQu2gdjydeE02mlO
         W9oeL26EDH7c+nei6/hRBYQW6DHXs0qaUKjcgqotO2kmGQB4YB+Zixg04PpMOgVbvrlf
         uSYEWdh3EscOUNXsjeXcbG0I0itZE+TfZEIiMDNjAYtXNv0tnMELi0q7uSPoHU7B/wQ+
         /S3WgHykQAAlLfEYobPESIiEj+lFeNdXF6UCy6ztCCZc3d72cinWCkCyzVpodC9t/jee
         9HfHRG+b94AlulP6yhoFhl6Ffl9CoXXdz1lKuIg/1uCQnnpGCKcjD7aMN1FOV2Kmfc8z
         SYJQ==
X-Gm-Message-State: AOJu0YwNSSNzKRgc/MNE2/IgoVPwCibG4YznD9kH2PGmoJf36iib9gM3
	zQmiZirVc4Ur8Kmmrc4tRZxw5Rai+B0aebZDnmn5Hizd4rkUQlGMw5aUmWVu0UE=
X-Google-Smtp-Source: AGHT+IFhn35PB6MCR2TqlKMZXsj6pkZTrujBAr4tROj+7XSj64/cNLpE4xYOPdXfCpQ291RRJcVh0Q==
X-Received: by 2002:a5d:6a11:0:b0:33c:da5f:1781 with SMTP id m17-20020a5d6a11000000b0033cda5f1781mr949866wru.15.1707823321278;
        Tue, 13 Feb 2024 03:22:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVNRPZ4dA3Ds5N3bUSGVcXySQhBoz2bVl1xnZzkEGQQYVaFilW8aPJt6/X2/0KeU16K6Jssixef4TUi4gK2IzOJR+bz9Pvsax4kp+3d05/21g5P+WxHOHIgWXkmMmsF4nhkYx2dsplnrwidTsgq6IlUL/48AC+uTIUhFioDLd0FuWrgSjtBoV/ekEs9YPsvdeGLZ2tWjXN2GapEk7AJa69pPbj8uuDILg4DMXApD4jtLAhKgsvjXo5Dzm/EMz+oliRgrXnvVb8jW5RGu2WTyj+kdeh1PhwDRlmURZj4aZZyyo5jtLC8dCDLq2s1n4sZo2oV3LPI
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id bp9-20020a5d5a89000000b0033b4796641asm9435420wrb.22.2024.02.13.03.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:22:00 -0800 (PST)
Message-ID: <811db1bd-6ef2-493c-99c0-b040721e1053@linaro.org>
Date: Tue, 13 Feb 2024 12:22:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] ARM: dts: qcom: msm8974: Add DTS for Samsung
 Galaxy S5 China (kltechn)
Content-Language: en-US
To: Rong Zhang <i@rong.moe>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
References: <20240213110137.122737-1-i@rong.moe>
 <20240213110137.122737-5-i@rong.moe>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240213110137.122737-5-i@rong.moe>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 11:58, Rong Zhang wrote:
> The only difference between Samsung Galaxy S5 China (kltechn) and klte
> is the gpio pins of i2c_led_gpio. With pins corrected, the LEDs and WiFi
> are able to work properly.
> 
> Signed-off-by: Rong Zhang <i@rong.moe>
> ---
>  arch/arm/boot/dts/qcom/Makefile                  |  1 +
>  .../dts/qcom/qcom-msm8974pro-samsung-kltechn.dts | 16 ++++++++++++++++
>  2 files changed, 17 insertions(+)
>  create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8974pro-samsung-kltechn.dts
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


