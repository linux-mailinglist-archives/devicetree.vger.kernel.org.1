Return-Path: <devicetree+bounces-156700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8442AA5D21A
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 22:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 461DA1899B24
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 21:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7503264F99;
	Tue, 11 Mar 2025 21:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M/4EFY6c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE0D264A94
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 21:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741730214; cv=none; b=sXWnwQo394gFg/EodiUgSabwly7XpEBXch71ftwIh+/0x+uFqOMO3YD/KfucRPmvXevVfP4ja5dlQfD+H6u/KFW5xkFYAcuzFfOy6mT0BceUiHond8ZyfZYFKE7fmcdKi16WNSon2p6piCBaw+U5IM4ueK/3o6sZ69ChUAwohfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741730214; c=relaxed/simple;
	bh=avNY8ak+JQWmkFVsZS0aeZyCgTV7dWit3U7qT7O+ZI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X0hSzErpdoNwpPMdX12TrTe4Znyih6zwvWYGQXAJxUH2UgQu7hK4lj16iiwK7lMKycTbFRBVo+CdDl+9Qayn0vbk3nL7Bzhf8jiYE0CwrVgy67j2kdey6EZNOl1IjQ5CeNw55HvuALvM8IUDyIyOVVH0/6SHInItl0g/qMjsTDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M/4EFY6c; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30bf25190f8so3842811fa.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 14:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741730211; x=1742335011; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qXfL2talT+3Pc3/IEr/DhQxuVz1xDl6VWwKjRxG3X98=;
        b=M/4EFY6cIVYvdw2LILkLrz9hi5jz+hEd0WxqKe2+e2uXEhWds1c8wNc2TUGmnDd3F8
         bvF+yC8mu3usy+jlHfhVXFZF+Smn4TSKgjHxWS7xgfJC/msJ7kJoamlnTfhDziUUPCe5
         njbxjOMWOc84SrvU9qwyrO4/rCZ1moRke350leqQ2147BDUlevwfTEMyP43eKyVrLlPA
         LDUEalgs8XfrRcYrlJulv2k77ZUSeXlGPzO9d+ImhM+ca2U+OePyOZ8GK3dLsTGrp9Se
         nM3KAXw3aMM+jc/NpoIavEonN/HT32Nl8gUuAr6i6r7eI3G3LktTTa77Gh7HGIWKeXGe
         Q4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741730211; x=1742335011;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qXfL2talT+3Pc3/IEr/DhQxuVz1xDl6VWwKjRxG3X98=;
        b=o26otAZ6mP0WH3UnPpAHsXSbz+9Pypp52PKV0WqZuAU5+d6TydR2r4/cc02BdTMMCa
         6FcvAt1UPVqeLtVJPbzuZZ8YN91spQk8QIwunRKtd88oOYfTgJPOWyppppfmkBaEfQHM
         imEtltZBZJAbzhMmpMJ55gBkst+tLBikNKCyTuj+ZjRxepQv8xHA5okFmRUsHxz8I1Gn
         ZnxchXXk3tZ2AZnWBOFpZ3biqw0yGNUxV96AstN9pWCJhowNO/st7OUDvMrraxtSaLnb
         2ZxaaDZzRP698zdx1ncvXwX1ELsyxvU7gEE3+tOHRxqXRojQK7NhDduOR8hbY6AtbcuZ
         Wxqg==
X-Forwarded-Encrypted: i=1; AJvYcCVomP0aU3NZ0rH3HJexYh7K+8+NuqtznG0mseU9ts8gYW5MwbxkoteqZcdhekd2NU56ffFziadcRPeN@vger.kernel.org
X-Gm-Message-State: AOJu0YxO/hN8KcdRFts17HpcOXoDrhg9ziq6Oyr+vIwfZrpWDcTbbY13
	EgpzNjUeYmKXZ6guXbxADMXT1d6C27aYsuRxXd3qKo7NJpAZAd4F6Zp3+cw+J5+D6mj8Cmd30bq
	Tl7c=
X-Gm-Gg: ASbGncs78nZF5cdPab3yEpRK0TzqtHD3NJL5O7dN5U0RDPjJCA42AXGwUUn2SffsLyM
	Xi1ssFbTZv/cWZ4gGzmfqL8edibw5sf5UoxK52iiwgj3+P62BZWgnm9aPmtClevF0JddexPXs4P
	yOyA7stnTWnatTWlimSbpi8Nth796R2xFEVIyoxKk78XVFnoZKl0BPS1ihSNV4smmwz0qZErxSU
	9lwo77720Tsz0dO36JdKdVe6JftV1VQDtXyVV3Y/0NY/ubxUF1T9/zD9TkdAmhYoGemXhm19/Oi
	WOJ8gPH6v/rm1lguthd/wuzDJXeYnfjtEs4pEbQITJZ6u8fESSHxFqdCsC8PtUe+JFt99wSurqT
	i5utTHcxDu5gHPCUtoTSf5MA=
X-Google-Smtp-Source: AGHT+IEYO4fmrspVYYrTHdjMDWmEnFADk1AWRMVfCLAiR2Kql+MwftBAWZmi1W1b6z3wGvyZYMCvEg==
X-Received: by 2002:a05:6512:158e:b0:549:8b24:9889 with SMTP id 2adb3069b0e04-549ababf63cmr763732e87.6.1741730210970;
        Tue, 11 Mar 2025 14:56:50 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b0bd5b5sm1901122e87.158.2025.03.11.14.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 14:56:49 -0700 (PDT)
Message-ID: <3caf6aa5-32d4-4e2a-8872-87e5ddadd7c4@linaro.org>
Date: Tue, 11 Mar 2025 23:56:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] dt-bindings: media: Add qcom,x1e80100-camss
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
 <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-1-c2964504131c@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-1-c2964504131c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/19/25 02:54, Bryan O'Donoghue wrote:
> Add bindings for qcom,x1e80100-camss in order to support the camera
> subsystem for x1e80100 as found in various Co-Pilot laptops.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

<snip>

> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    description:
> +      CSI input ports.
> +
> +    patternProperties:
> +      "^port@[0-3]+$":
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +
> +        description:
> +          Input port for receiving CSI data from a CSIPHY.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - clock-lanes
> +              - data-lanes
> +

bus-type property of the endpoint is missing.

--
Best wishes,
Vladimir

