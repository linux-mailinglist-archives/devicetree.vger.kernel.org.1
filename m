Return-Path: <devicetree+bounces-161313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62020A735CD
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 16:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6B70189DCAA
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E006019992D;
	Thu, 27 Mar 2025 15:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fiNAEZ/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E0118FC67
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743089954; cv=none; b=UyC/NAFZ+uy/LyteMSGr1jJOgU+mPvpV/Yq3Ffg6vRBNU3OZxs/LqGWaLNoWrwWipjDOSacV4vB3Wm+/SdLO4lMAksWwNuFHSTRTjzDP8nb3W6KYaaG477Yjcxxkca+HoDchSJ1Vt2/TAmkSic6svV3IWPoIUpjq/yJ2S3Ayfdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743089954; c=relaxed/simple;
	bh=iAOo3qQbFdHRPvpiwQ6URvgLoftj9WyyrxLOyXzy7dE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fzYBi3ydUCQWDb6qp91M1ckt1TptUjesS2VmVil7Obb0UBtFjiblwyWZKaSqM+gcS6ijnIosc1yvXU/O+ePXVYGimnBuG2th6exnxp0lRP1ip8PVZJ9GkainvzvKuOQ9SxE0BnXrg0wekMYD8y/8+wncKAhJp4/9RS4cPMVl+ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fiNAEZ/d; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3913d45a148so897394f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 08:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743089950; x=1743694750; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ymoLsASUKMBlyvnyVSwfPY6l90pScenHxGprvSvqScE=;
        b=fiNAEZ/d9tALL/K9+gx5dOddzfLq5Ka6+AHb1oYBXgOqvuO+GmvaI5suqkj0y6nhWA
         rlPePQSuOl4Mgm3bIO8kWfEH1OhRa1SHZ9ZfyFveQeqo6XXylGeHbgLgkTafHw5f3sny
         QPUll3C09sHHs0p8HsKSZ5SlIMu4Ih76lzUMb6uAFTmZAAGyCRixOXoPD3PSHekIWqQX
         d4fRPi6GOaRiUWBIhhfPrTDZQ6Gyzmzrz8O/m7aA2ihMkEqM27raNKJYIcmkhv3oNrEg
         oeWQ6rY7ritNZzpPCQadUgqB42Ha3OyZaSRdhiTZ4vqtHsXQS24+Q+d0IG+bXr0wCnlv
         UdoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743089950; x=1743694750;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ymoLsASUKMBlyvnyVSwfPY6l90pScenHxGprvSvqScE=;
        b=mIvnLPz8/Bz9fMU2qJHPCD3tWaAj1BrV42uRVhIsnF4aQur4Vftr7bSFykeUvppvxu
         yj6lDv3HKFg0xb8A+WV3Beaw+FR/OKF8IiP0VWozyA1DBrciclThQCBqlmM6e0N4ii2Z
         c3lZlCH4OcrljZKh/d/UBN6O/qa2L15JAeU1msR4P/Bxt3IS5xZBLyZrIiRVn0GI99jq
         faXOV2tbxGBeoNmZsnE+LRuzm7glXjxCyploWDlEcGIFht/HIB3xspnTB/1jH05qdNbW
         u2Hh/UN6ynv9Dqfwc+SKK8PFVrlAJUC2CbmRI7AC98yu/M8N25m4tlfnFAw+MsccjTSU
         +0Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVgRqqv8O2+ork+MaE+iEc0XTLPzBvdnWVBbLJnmYDmPmK/YEBFAccfaUFeotIWG5As0N6CQl4YiO2W@vger.kernel.org
X-Gm-Message-State: AOJu0YzvTN9X36gpqsRjpqhjZxFUUyYZybi9T21SgAXjUqRH0DTDvO+o
	1r7Qquj44tNSNBFTNJKRGGp3evJ5COdPxvqePonTs2ChtHh8aubK2WPBjvYHFkQ=
X-Gm-Gg: ASbGncu/VdjJ81SnQmkepAa9+gVhC0VBA//nAFZI4FKoX6MPvoG8RbYUFEVEQiF96QC
	K8ojZmNH5PSAF6Oxhm5KWnBKRGuzJlk9r8oJb3WpkCSW5DjRX9sXAMwYL1BmPhvHc50U9jDfPr9
	uxj/uRxYKEy2a0+B+gUe6XFeIsjwtq2TOMN5dSiGckCFm3QL6AU2V7YeD0L7aCg8N9QfWXdyb7J
	290uBK9OjGayVbLG/xIem6wn1+jyouuOo/kaoVDQcJJKCPUs2+MpvuOIxu6tiaADt+bhtarEMeO
	7Fn8pCTLdphvLexLxZoWn6A4UAfD2kJmJlSCg3DeANiPYFhlMRm1b00PNrxctHoV8KTemdwsGfS
	TcML43WOf2FXeY5aytMbe
X-Google-Smtp-Source: AGHT+IGyrq8BLj3GNTEbMeK2aMER+K+7T12e75iuTsRmZkET3cjw7uq2dfr/7idg5JtEdGKRe48sdg==
X-Received: by 2002:a05:6000:2a1:b0:391:466f:314e with SMTP id ffacd0b85a97d-39ad1741a73mr3848575f8f.16.1743089950131;
        Thu, 27 Mar 2025 08:39:10 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9ef16csm20195844f8f.86.2025.03.27.08.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 08:39:09 -0700 (PDT)
Message-ID: <8721c38b-3414-4635-871d-2bd142fd23ab@linaro.org>
Date: Thu, 27 Mar 2025 15:39:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/18] dt-bindings: clock: qcom: Update sc8280xp camcc
 bindings
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-2-895fafd62627@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-2-895fafd62627@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/03/2025 09:52, Jagadeesh Kona wrote:
> Move SC8280XP camcc bindings from SM8450 to SA8775P camcc.
> SC8280XP camcc only requires the MMCX power domain, unlike
> SM8450 camcc which will now support both MMCX and MXC power
> domains.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml | 2 ++
>   Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml  | 2 --
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> index 81623f59d11d73839e5c551411a52427e2f28415..127c369dd452608e5e7a52c7297b6b343d1c1bf8 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml
> @@ -17,12 +17,14 @@ description: |
>     See also:
>       include/dt-bindings/clock/qcom,qcs8300-camcc.h
>       include/dt-bindings/clock/qcom,sa8775p-camcc.h
> +    include/dt-bindings/clock/qcom,sc8280xp-camcc.h
>   
>   properties:
>     compatible:
>       enum:
>         - qcom,qcs8300-camcc
>         - qcom,sa8775p-camcc
> +      - qcom,sc8280xp-camcc
>   
>     clocks:
>       items:
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index 9e79f8fec437b9aecb5103092f6ff2ad1cd42626..883f12e3d11fa16384108434f6de120162226a28 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -15,7 +15,6 @@ description: |
>     domains on SM8450.
>   
>     See also:
> -    include/dt-bindings/clock/qcom,sc8280xp-camcc.h
>       include/dt-bindings/clock/qcom,sm8450-camcc.h
>       include/dt-bindings/clock/qcom,sm8550-camcc.h
>       include/dt-bindings/clock/qcom,sm8650-camcc.h
> @@ -23,7 +22,6 @@ description: |
>   properties:
>     compatible:
>       enum:
> -      - qcom,sc8280xp-camcc
>         - qcom,sm8450-camcc
>         - qcom,sm8475-camcc
>         - qcom,sm8550-camcc
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

