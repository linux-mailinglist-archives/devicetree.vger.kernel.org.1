Return-Path: <devicetree+bounces-50382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD6087B70D
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 05:15:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93A98B2228B
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 04:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA5E5256;
	Thu, 14 Mar 2024 04:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TaG2nx1u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF29853BE
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710389721; cv=none; b=YUqA183oxAn/pFnEWVwoKg9mQtLBV6Nrp4nYRkYnCkS6YiNvgzz7k/WfVnvLkWOAR+moo9/juOxv392/FyRpblWuq2U48Zvw0iiGQLVly/URcKD+EsSzz/Ysefy3SUQ7LGlxpIbRV9a9XGcZ4HZ9OsJFO+N0zdLSXV6FIdTxEM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710389721; c=relaxed/simple;
	bh=PzQsxNMp7SX/ZS4iaeo/1jeCjn3y1IwAu5C8iaiW9HQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p2qaeVnWoDOTN+1Zeq9ctxh6N2p3lrZO0m4/nXyb/TlduSZUpGtqdCIToWg78GIWJVy+NDPfAY3FxJHQC/8TZjRthjlRXLhD00ar//MQM1AL9Dm/rjJ/EEiTIuB4Wt4ds5EbqZqqewj53eA22R61Zw2zaVQTQpJEjuDUtPOhnt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TaG2nx1u; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-413e93b0f54so3528255e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 21:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710389716; x=1710994516; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bNOiEblG6DNUdShxkrvSv8VdX/F3Z4NRcuR2Z0a2HW0=;
        b=TaG2nx1uxifTqWOjanrRuODKYOx/HqRHnhCwomKhsKXZMI2Z/he9adIlsN4PY9TXu4
         +lWDTtHXcO85jhk/25/DIFjSmmCviEFspVc+kQnWMkphHHffeRh328WMOh1b7kAfXDYS
         R8/hWjTjXUpY1F3GbMmGnGXePWqGtdNwi6J4SAJwZ8UmZBMZvnTW7suO4NJ6rdQL62xt
         iivn82FzSoVWYrUwLmcSn6Eh47vNg23Kev2Qu22XaDhvUSPKArhTOXJJW/kxUYHeNt9B
         aZgiRSNfAmBVOl8zjLLo4jockNVaAJ2CfiSCYG5IpmolfFHhwuEkR4zMwNO2o/7uvBSc
         tihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710389716; x=1710994516;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bNOiEblG6DNUdShxkrvSv8VdX/F3Z4NRcuR2Z0a2HW0=;
        b=nnJwCd7lGm7dWaYtr8rZ9m3I6Zccf0ysNoaLQTU1nNB+bVK3xB+S3I1YVf0hjH/Sto
         hso/CgY0zfG6xkFJcka38gyoA3tfCm+6feiGoOqPHllKd9wWtMdn4O6ee8YAkOqACCe0
         F1bWIsx7QJhT1i2/+VdXsa9nlbm5r1F8vLZOaQ+t+7c6fIXQAqYLyVJ9qg4olDIVvHBf
         nTgmxRAlVZxlPy8gq61u8Q3oUzhLyc1+kb558mOvuyD9oXjZpV4TKCgBTujlEInkvsm6
         Z5vKf4UszpuDmpNyT8agAIppFPOVJ4ScNwDwgZOJEEeTUwe+RubFUfJ7GvxwJ4qPdttF
         BQog==
X-Forwarded-Encrypted: i=1; AJvYcCVSuq8AdN4b0k7DdwVgwlpjUHYemo5QGkLwXQeYC7+el8tT4Y6br+As/oTiEQIGVdI4oPs/KS26PvyyWsgW6/NlEadro2QzNwX5GQ==
X-Gm-Message-State: AOJu0YzHx7rGVdYEcxr9nta/+DQpcQ61krGmmhW2KNEC2C1OcXEedZ1Z
	W2395dMSXivaqWrduoPT2IEGLWOv6HSWcsL0zOFmdHXN44mu3ne6Qg8LZnX5eTE=
X-Google-Smtp-Source: AGHT+IGlXqpRP/oSGEFwftT4jl4xZvSSoMb6AneY563YlPGGqJOidlRrJW4WydCNuCtgPnhhK/eNSw==
X-Received: by 2002:a05:600c:4e16:b0:413:315f:9e89 with SMTP id b22-20020a05600c4e1600b00413315f9e89mr384733wmq.40.1710389716381;
        Wed, 13 Mar 2024 21:15:16 -0700 (PDT)
Received: from [192.168.1.78] (host-92-17-96-232.as13285.net. [92.17.96.232])
        by smtp.gmail.com with ESMTPSA id v12-20020a5d678c000000b0033dd2c3131fsm605103wru.65.2024.03.13.21.15.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 21:15:15 -0700 (PDT)
Message-ID: <fc00af46-1521-4bb8-9b7c-237cbd26a17c@linaro.org>
Date: Thu, 14 Mar 2024 04:15:14 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: qcom: Document rb5gen2 board
Content-Language: en-US
To: Wasim Nazir <quic_wasimn@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240313071238.3290-1-quic_wasimn@quicinc.com>
 <20240313071238.3290-2-quic_wasimn@quicinc.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20240313071238.3290-2-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 13/03/2024 07:12, Wasim Nazir wrote:
> Document board bindings for Rb5gen2.
> Rb5gen2 is using Rb5 gen2 SOM which is based on QCS8550 SoC.
> RB5gen2 is development kit used for IOT solutions.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 8115088a6076..de6139db8ef6 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1013,6 +1013,13 @@ properties:
>            - const: qcom,qcs8550
>            - const: qcom,sm8550
> 
> +      - items:
> +          - enum:
> +              - qcom,qcs8550-rb5gen2
> +          - const: qcom,qcs8550-rb5gen2-som
Is this a Thundercomm SoM like the other RBx boards? If so, shouldn't it
be "thundercomm,c8550-som" (Or "qcom,c8550-som")?
> +          - const: qcom,qcs8550
> +          - const: qcom,sm8550
> +
>        - items:
>            - enum:
>                - qcom,sm8650-mtp
> --
> 2.43.2
> 
> 

-- 
// Caleb (they/them)

