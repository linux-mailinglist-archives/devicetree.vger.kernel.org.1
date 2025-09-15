Return-Path: <devicetree+bounces-217390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39589B5779D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:05:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DCCE3ACA5F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7202FCC0F;
	Mon, 15 Sep 2025 11:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dJv2pUac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7872E6122
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934241; cv=none; b=It3kZrP0tyKHKamP762duJk8X34Tyjc9jv0FWzInK+LITfVK3HkGnFQOZQ+aj/tGiZI1uw/a3XClseyzHKP4iBbOmW/oOFnvhldJQAv/uE3s+yCEmAK7faOXoC8i244jn1YVewImDCr4SqLZSv8aLm0N7KEdmqBJS1lE4+R+OlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934241; c=relaxed/simple;
	bh=34abblfr+Cq/exkZvQCQiiND/Y4QtiTG+4oBGTqrOUQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fe2wuHHHfT7z/hnKoFUeiCzRQ9Fxl4EwkyAZ8q86924laZ2ZDZUhyswl3zu4iY9LwedIfOsfxddrgdElulh7QpxD1b/Qo/I98BE0nb3bxeOxOfbvzDj4FCaPKJyhFiLm6GrjdqKe/x9x9thPtxUkUDnc/r8U1cxnlLFEsw0wDm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dJv2pUac; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45e03730f83so18422915e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934238; x=1758539038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qLDdkWbWxkCwNz68mLJDlA01YxH5FUpXjX8JHzk4w2g=;
        b=dJv2pUacrKFUo+q85A25YEr6f4GlVlJRhPF8yPKjkkxxiIqpEshf2sAyq+SbVLxdVA
         SNXS5NlOlM8UCqgehWroQC8ClQ+iQgl1HDav8YoCa2NbaRXNIRp15UGKaKaHQB9ZmYru
         2eHm7v2bl8LE18oTDcMIBb84bgVNQU8KwOKg3G/Ld8SK2vEdYBelAa07l3b1tFRH8tAa
         3EdPR5g1i/p3mS7E2eJIuev7VfUeXgalZOzDlqq0QbsPPIwAJWpWhzXALBhdyZZI7Zwz
         DHVg1ze58iimaeQc/7yFr1ORl09CnTcGXHypvzpQlNih/twkjNpsyzX23e1A8ex7uEU6
         Vp/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934238; x=1758539038;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qLDdkWbWxkCwNz68mLJDlA01YxH5FUpXjX8JHzk4w2g=;
        b=s89W2RqA8iZ3r65E0kSI6PNXQOShBDxZdnpSfelPgYDwrhp/L3NUalwuWE7IJJjX30
         AVdiUriBPRWiQVMYa4G5c9bJ/F5wqOdGCdQWwUJoXDgb+oq2hyU++jXbyCYn98j4BpPA
         uBss1N/XWmlKjUvbeiUnUQhWkMIaeVliaje3eeU1r6ZtfHcNpwqX+i3Pm3rHQKypA403
         yBS9CmoIieYOPLTeuTRCEQDFFYCqIs/HRRVv9rU/3JNcUObyvrcNR8Yph76ZTZ2EK1Dj
         HJlGqBSqXyKAmE4bPXP3aM/wFODWbHY+8g5rnqZ6ttCD0hvcYpVym45yYZwuwEOEROqq
         VMdg==
X-Forwarded-Encrypted: i=1; AJvYcCXVewRe6nv8jaNQU9RzYEyYr4iSn2EKFtv/drOLrxYoFua9jW07PxpRA4K7dwpg8zGJxS/HDXBt9jhp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgc7imUosDCEpc6ZoT9coHroCuiiOA9s2VOSV16W7rhDkbaby7
	v9OY4kYCxQ+vlOruGGyozsYV0TYzqAkN8AFHzE4Do5f2URHTQdfxOtwIHmocPiPWDho=
X-Gm-Gg: ASbGncs43Lzrut0uPQ0atG4hVvN4GBJt4QnXQBtGzUVRdZHGQ6Bs9YlBsZ/Fe0AjiLI
	DpkHXezQ8EarhmbdSaO9bZLy3qRbEmO5pHk9gkoQSGgN4XHj3OOoHfGv3nEbOUj9ismqsW+Rjb3
	KUyaT44d6YT/efuyoR5iLUis8WcGvpj3E/0AUulRLZAIcAm2376xyo20KuWbPBV+aRPvv+AMXd/
	yFNpeSJjmOKVpMeyALkQ7csfyLJzZVaiHeteIQdH8HlUjQpU7y4n8V7EMH2dYqKqaLFx5y1LEcK
	uXZBR3nI0S7kDD/xJJEcgSXYAg1jPv55bQ2bCk9bHgpoMgox7oyYhnbW9TW8U5iIR7EGEfnTUJC
	Puihgh03DHUxgD81hO5a029wIeuPOHWQ1wY+ob7A0p7PS2Sd4GvAPjlXpMcPxlCX8RY7oTtcSzq
	UWU/QobImlMumViejwupc=
X-Google-Smtp-Source: AGHT+IEfatrT6vGE4XLbLEtqxuV0qIfieqkuasWzeLgAmmCajyquSuLADIJxWxJbVx69zeQFs7V98w==
X-Received: by 2002:a05:600c:354f:b0:45f:2c7c:c1ed with SMTP id 5b1f17b1804b1-45f2c7cc3dcmr28587995e9.2.1757934237555;
        Mon, 15 Sep 2025 04:03:57 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017bfd14sm174479365e9.21.2025.09.15.04.03.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:03:55 -0700 (PDT)
Message-ID: <96840085-d3e8-44ef-b45b-44727bc03199@linaro.org>
Date: Mon, 15 Sep 2025 12:03:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] arm64: dts: qcom: sm8550/sm8650: Fix typo in IRIS
 comment
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>,
 Anthony Ruhier <aruhier@mailbox.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
 <20250915-x1e-iris-dt-v2-1-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-1-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> It should be "enable on boards", not "enable in boards".
> 
> Reported-by: Alexey Klimov <alexey.klimov@linaro.org>
> Closes: https://lore.kernel.org/r/DCQ8G73ISXHC.3V03MOGB6NDZE@linaro.org/
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 2df6ba05e0cddaebf3d35a4b4b8e5cbb9048dfb1..ec67efd64b78673352c4c6e3a4e7e504d4525b46 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3262,7 +3262,7 @@ &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
>   
>   			/*
>   			 * IRIS firmware is signed by vendors, only
> -			 * enable in boards where the proper signed firmware
> +			 * enable on boards where the proper signed firmware
>   			 * is available.
>   			 */
>   			status = "disabled";
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 367f448a743a306993b40f6c6b8a23a816744afb..e7582a19184b48de66d572d6e98fbf2f36a8c17f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5186,7 +5186,7 @@ &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
>   
>   			/*
>   			 * IRIS firmware is signed by vendors, only
> -			 * enable in boards where the proper signed firmware
> +			 * enable on boards where the proper signed firmware
>   			 * is available.
>   			 */
>   			status = "disabled";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

