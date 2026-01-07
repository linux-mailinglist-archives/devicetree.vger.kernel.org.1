Return-Path: <devicetree+bounces-252165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 649D9CFBF79
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14E77302C23E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5D62405EB;
	Wed,  7 Jan 2026 04:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q0NDdT+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A377213A244
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760040; cv=none; b=TOJB7nkfFn9WhTukNyqQ1A4b3EFd5lqeSqhXQerN7kWw9TJTB12//jOosxWy9X2LAanNRZpzjUMNFrJ3vq0tDPanPdSCP9yZKNfnmRZkkpdIKlhtKz/hfMPL5G31WL+N6tc0Bh/gWtdEuDlfDZ2zkK1XEicJXnWoXXoyu7/i2rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760040; c=relaxed/simple;
	bh=piSehSDmE1J5QYtNOJHnlef8sfhUD2kJbIeqpKVVcKg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lza0yY+u/Sf05PWXWvfgx738HTWWFS76UHUwtgdyszPGwWnGSP0mo4v9emjbaY8tr3xhkcN0u0UQ1yAANMoUTL+qLo9c3KX3MQ/7XDqupqRcYJACWZlCP3jKUtV8ZdSuxnXsLaf573rUg0YsPqZC2jhpmPqAzySp/ulaSfdOKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q0NDdT+7; arc=none smtp.client-ip=209.85.208.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f194.google.com with SMTP id 38308e7fff4ca-37ffd64f478so2501311fa.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767760036; x=1768364836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D/GmMP8nrQC1hfCtu8mHAhdt4VRVlDbgu8rN0Ly8gUA=;
        b=Q0NDdT+7cZ9+Mqh1QZHn1x8vH7H8jAxSTmY+MSFFNuCYIvNuSmEgFqVp3GeTnB5MSj
         lL53itWk63ZZUq28LXrhkGzBzQZ7nJxvBC1E7NlDM7ZDBJTArIZw5kFnkT3ZhMQ+0YPs
         2Pp6vIqeayXLUSd0SGtmYYAtpBLTbpnON1JINzMqG48S04MizCkHlZ0M/ogKjLsyjxWr
         ur6GCMrkooULonTLA+JS7MFcKOkc16YK+6FIEyolim9kNF+vrjqNjrMZDd+i9KMH5BzX
         6ueC1CfX4XwHZcfiP67S2SfH37MHEaTuzNfI1yqQYBst3p8zLatuQg8GnVdQ6/nLog1h
         DS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760036; x=1768364836;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D/GmMP8nrQC1hfCtu8mHAhdt4VRVlDbgu8rN0Ly8gUA=;
        b=g41nO6GKr1s/+1SFfdsVK4iphMn53p9+HACraaXVseAufsdlUygm9NCe0Lym56mdgs
         ISNyw/fFes6asj/e8N6OKcffSwdeYC56DUOFK56qP+1WnYsoWX2BngQQssL+nGk7go/R
         zM62/Zu3LAAWAV5HyuNEairEriYCzEGDIlAQBkUwWfwKRn9J+h3utTNBINvfa54+FUg7
         AzIVvkxaJS5ubJQB8ipJcPLSjDnVY1yTbeTs4p/wnD6dMfMB84RFlRESwLa0jD2d+Sl5
         4CoiYUL0YPIMPkvhwqlX+aR6D+JToRfeYLQ0QntjG+4Gqcg9ow+ZRfrxo8EEkrzRbXqz
         7kQw==
X-Forwarded-Encrypted: i=1; AJvYcCUZb6Mj/OxkZLC6cn1bVXM/Q0FN5eIPhCdvCvMqVFoXcKBQnhv8R35dhlUetgmNDpE3/0UmblrmxP4Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt8Zn/S7sct0HPD9ZpvBowF5tIv/yqWVJIfbi/Cs/nzvjI7SNL
	IZIZ8SN9UBIpCPOyeDGsxi14oWDfIe8xKcZ9bRzp60wXr4hylFR8hXbG+ZJOf6Ujqds=
X-Gm-Gg: AY/fxX6wgZ6tn7mATj4nc0hdZ2dxmsYZuLtNPARhdZlGhiU0lFVBNiAfvHPk5ApOErE
	TdbKEQ4MnZnpY5qBHiF8STgIXjLrjzsZR5ijilvQVJmuQ0C6T58JIbA2R/XrxTE289nWEFOoHsy
	aDC/kJaZ5LxCqbLF21/HQ7VmKzKc7XxUcpgSdmz0RwtzkC+Kd+xUjSsK/0zCeHCMg/VGphOQdKv
	NPx60roJlDS/PTKwLR8FghBnPGOdcDU0uZUEXbRgpVFnvM8eSewbbwglwA4Cfq0ympUx9hsJp6l
	/eMbhrzxax2TJ+C4OKJ8Ul+qt/xFNihgAB8p+Ous2zYcymRKAJaZgaWvz9SeBA/waoyOE+9N9n3
	JqLAd0FSuRmvpc38JWcyrgHCyh/BKUmViUEgVLEcVzVcqCK2ECVoQvXRQ1bJwDHHHX0qRjkaBEr
	EKYTC3EP/ZqTk0k8Jcl9RqyUccqlDo53AwymB60a/M8/raZ4pQ9gnJwMhRLDVLexsPDg==
X-Google-Smtp-Source: AGHT+IEGzLXnBc24vjmCmiFUscHl2WnDfpA2MZDZ1qBws5ysoDEqtjI0ZpUgvn6eyNtW2hRKVd9R5w==
X-Received: by 2002:a05:6512:3d86:b0:594:2a33:ac17 with SMTP id 2adb3069b0e04-59b6ef08358mr224542e87.2.1767760035577;
        Tue, 06 Jan 2026 20:27:15 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b71b7eaacsm83852e87.40.2026.01.06.20.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 20:27:15 -0800 (PST)
Message-ID: <cc8f93b6-0fc8-42f1-bda5-fae20d576673@linaro.org>
Date: Wed, 7 Jan 2026 06:27:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-1-bb112cb83d74@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260106-sm6150_evk-v2-1-bb112cb83d74@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/6/26 11:39, Wenmeng Liu wrote:
> Add the sm6150 CCI device string compatible.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..cb5e6fd5b2ad1de79a9b29d54869d093c952d778 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -33,6 +33,7 @@ properties:
>                 - qcom,sc8280xp-cci
>                 - qcom,sdm670-cci
>                 - qcom,sdm845-cci
> +              - qcom,sm6150-cci
>                 - qcom,sm6350-cci
>                 - qcom,sm8250-cci
>                 - qcom,sm8450-cci
> @@ -263,6 +264,23 @@ allOf:
>               - const: cpas_ahb
>               - const: cci
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm6150-cci
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: soc_ahb
> +            - const: cpas_ahb
> +            - const: cci
> +
>   additionalProperties: false
>   
>   examples:
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

