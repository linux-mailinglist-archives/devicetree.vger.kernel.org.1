Return-Path: <devicetree+bounces-212551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7DAB432CD
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 08:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D969B4E3A82
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 06:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC87C285C8C;
	Thu,  4 Sep 2025 06:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g0be/VYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218BA2857E0
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756968661; cv=none; b=G8BBQaMWdORbxrNNHU/5/XlfEArPnYj2NDFGQnvhksWIJvAASG438UYvWC/8JTNOKKO2KLXpf03FX4WHgAbqhyt93RDf4aF//NaJYo4WnX0QclbFdGvUiAWjcDRYo+/NULO4o4MjswSPGiqE1ntef5tS1TM5k01UKJ6U99eh9/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756968661; c=relaxed/simple;
	bh=Wdw0PzARsX7+wP2km2WzsCRAsYruEBaghdwGC05/3XQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OuhVWRYAwXPbXVXedRzDH1hxVk4rbCfIBqdj8OtA9dAAkh461Ijo13PBcS+DGHGyG+R1H9wg1TMXxtcg+B8RBAZa11U8YNtl9xzFK0HvsTBBjArcfcPjst/BdoDHdCPhAW84yxic7Ev48EBURslFYNkcbusnQ8/Odaz59XzHAIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g0be/VYK; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b0419ea6241so5615366b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968657; x=1757573457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1R4w5Pwm4/VSqsKaTMtkwzPkJLiTlbMgt0IEQSjHRvk=;
        b=g0be/VYKeKHWLJyOh7wszO9ZyGFJ0XJkZr0X0FiO6Og+BQXqeJhDBosU60twAWu5W9
         Kg3Oy7hiz0nzSmi6sdOTRH+P3WB4h+BX4sfvHkb2M7L1pRdk+94zRG8/sNOyNSrDL7WV
         Ljk56ChxwTx3aaxQIP8kAntfJnfl6rI7shmTEhYkNHo9eVnUuZQtHUiS+P35+hjW+kJq
         AAq/bQFN6haEPOHklg57tuDdRhn+aN+2BFcF4Bps02MGs2ZskSNaUE6tl2c9cRLfknH7
         9JNQ5kY2v34nuXZ7GNUbVg9KhtBF3cGdd/t8YqunaMy7qK8T6SMFM21TMS2NIHB4gu7U
         jx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968657; x=1757573457;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1R4w5Pwm4/VSqsKaTMtkwzPkJLiTlbMgt0IEQSjHRvk=;
        b=QXgwFkrRbt5OW5KHBmLn3iUEZRj0aGO3Q9qrADfDzbv+ppiE7q6xLhEiu+x79OYPFd
         05EVzIBDEgLst5X+2HHcyHd8SvhII9UZNf1XGDY8KxSRZ1odpRtN0Lb5WPMZr3aQwErH
         uuWSclGTbxvppBB2u8yWDUVefpg8oQ0HDYXTywH3844FWXQUoah9eUWukavyjw7aqZEA
         nNHNiKe9u4VwczxNQX0xZcn1lPokCuAG7eVdWC/2uhviLJUtZK4ph/ExFqcVi2ffRVrF
         i3xqssA7AEcFQkSPNDcnGwz85q1JItMejPzSjnTLtisKYcfRscLLhohOQWXsQyw2PJSo
         yzEw==
X-Forwarded-Encrypted: i=1; AJvYcCVvV9X4KU423+jAALXRKCs9IM5aeRF7oxqVzXQHwDEeUQsvbhOSK4yWE+cIxVjxwkF6LzcDOYQi7KQC@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQSh573OBPdSM2pMcfZL2N67Nb/LEitSX3HZ+xVB8FLfNmwL4
	BpxnbXw1MRQtcrmjD8EPuFn9sWLdtxEukifqLF/3GBE1TO3w0kw6qH8kAlveBp9kkrE=
X-Gm-Gg: ASbGncuv/QNojPA+2ZmuK8/e1mKe/usNUU/FNfdd51u1Ek47RePkeyCbWlyHmxNDz5S
	j0HznWzGtr/Xhn9mF92eRV3r1UdEOQhrGoANLZY+J+0nDIv7qrXdEqSQXN5nVrNfwXxBpw4+lP1
	IqnFxGbC5FAzc1MYs7m9LT8WpzuNmvMAgKsAbyga4DUGrfbrSfdjsN2wRkIEx6X0IxTGD8je2OS
	EpR4CgCFEyR/XZ0LqwZDPXqRzTO/IEz4rr6vZ5nnVsLQ5kRo2orPfglCRw9xiWR0usW7CwwZIxK
	A8e6Gnt8ZVm7WqXBX5PXBitp53qgz4a6xr2Td7edCOWrmHxjX8OfVteJtmY2AadMFz3GUS0LAWd
	WXuS9JSaGaw09KkKOFH++RAlw1pTJnv4Tmbt1MFGvg7zDxkDt7A64IA==
X-Google-Smtp-Source: AGHT+IGs17AwwQqrerD2UI2r/2pbAgOw4DVC25Cyh+9XZUUSvVq5zPYoOFlodqUgo5SO0J0YD9iUDQ==
X-Received: by 2002:a17:907:3cc3:b0:afc:ebfd:c285 with SMTP id a640c23a62f3a-aff0edc4d6cmr1131285866b.1.1756968657436;
        Wed, 03 Sep 2025 23:50:57 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b044703f412sm672795266b.56.2025.09.03.23.50.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 23:50:56 -0700 (PDT)
Message-ID: <04437373-c5a2-43e4-b591-921ce450f3d8@linaro.org>
Date: Thu, 4 Sep 2025 08:50:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-1-d88c1b0cdc1b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/09/2025 14:37, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called
> refclk. Add it to the schema.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -37,12 +37,15 @@ properties:
>        - description: PLL register block
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: aux
>        - const: cfg_ahb
> +      - const: refclk

Name is: "ref"

>  
>    "#clock-cells":
>      const: 1
> @@ -64,6 +67,29 @@ required:
>    - "#clock-cells"
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,x1e80100-dp-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3

That's an ABI break, so you need to explain it and mention the impact.
Reason that there is one more clock, but everything was working fine, is
not usually enough.


Best regards,
Krzysztof

