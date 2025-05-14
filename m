Return-Path: <devicetree+bounces-177400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF18AB75E2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:30:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E3C93AE105
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 19:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A734828DB70;
	Wed, 14 May 2025 19:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fvfv43iy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A599F1F9413
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 19:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747251049; cv=none; b=lM3kgoCjY2GFEmSrhaPea4O/j4c6bpCpfmaq1hfLa7sbBb1WNTK6i6gQEouQKqRmMKVI8gJny2JOkyPoUvIUooF7KsOADb308AWT9MknbhQmmUQAGR4mST62UvhXKUei7n7znE2oPqEc1c+58DGUItOBJ8OZAm3k3WlfDgNBhAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747251049; c=relaxed/simple;
	bh=ZDw3zXdwWUjhBcMzp1OiH0fhDtsrm9j+nPvpSWy+8FY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bWN5aRGmkuoqHFHN9/CglFmh+kobNnZkdYnVDPG8oPIt2BOaZSk6ahMrgpE7g40QfSp8Qy4NPxzL5UWMhA7HjTaF5g+0yW3LF3frut1QDJNCknNkyKjFAyNbhB6oew8bwmHrLBHb/ar02PhMtt77RJ1mL99QWsBXD8y3KbMsbQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fvfv43iy; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-441c0d8eb3bso263475e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 12:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747251046; x=1747855846; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wu8CYbxrZGvQTelT4Z4uIdtuj7A0yMOmk3v2JdGPTT0=;
        b=fvfv43iyyPQBfIl2Y6vN4idk774ACI5rT+jVnLN5m64Xry4BIdcfm4LDS4fk5tv6Se
         L3kSECHZjB+A2cZrAP7X2UCfTbPQtWy4MYIXbRuTMJiPhQt3aEo9DLv6yGt8fT9fCA/2
         AMCCcbjU3n8+KoeK9LnIh7qe7epPY3VAHS3uj/o55RvE2PwKnCRZDb75IJ+Rrj3909rw
         dxs0I8zhSPGKWOdCcX3IKgJU7GbZXt3B6cZhg/qQN+5jPxJsLvuZx2NjKJc422piJ34c
         peropkix4VZ8B8UxgfS4VBt2PZEi6ovlQZCI9v5+zHShvFRepx8J4RRgxmoZlmvNTo9o
         +ZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747251046; x=1747855846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wu8CYbxrZGvQTelT4Z4uIdtuj7A0yMOmk3v2JdGPTT0=;
        b=pUviij9IX6SP3wlSaZDFVYH0f3CpDYEiWeoMzYmqz1ovWZvR5sk/bkxY0Sd0wQ3JuV
         pj1DAwEBcdOO7UnbrLEYVoNFydupTkd4+vSBqTUldvp+E+VLyMtGXTxR9c7jvRhRUG4W
         0afv9RNohTV8i6zdcjVKgn7sIIc6yfyTwjcRMUsu6pM8UxQdIXEu2PbDGs0/A0fS8W0f
         cLw0WTrf1X5yqvtpO3heUXf6HSOVYYK7Bm8KWtYgl8+t+jVS1ROK8nNdrWQKedTyzFZJ
         3FPCG338MfaE7hhwPzVTa4I9pQwGzzKy+LsQ9CvoicfET3Ym/Ygf9tp8U+pX2QSicG3I
         uVcg==
X-Forwarded-Encrypted: i=1; AJvYcCW+VSkc3pk3jpDA2ZoxBLwL4RYPyTvgMxCD3J4kY56OPJs2cUKfhzFBqb4k4M2rz8GRCKBp0nb3dHP3@vger.kernel.org
X-Gm-Message-State: AOJu0YxOTIUky6wmlwW6500Xn6gZWtLc7cjrHUEu9ALICU2Y49SuLLmp
	Kb41RXTre6f4Bf60gK+ghavUEJt2sfSDurVzNYy3UBMIFvrjKXyet0BkM7+3kqs=
X-Gm-Gg: ASbGnctm1WBB9RCX6/9R4viVcJ/mwtl2qV22Mr6CzcZbiElgl/x/SjWTrSt8vyLNzXn
	isE+9K2o4cjkITJuHFYdty/1mBthzpGzNkRHmtBTc/8AnypD+TMpQFpbnjsd2KwPUwk6IXaD7Cn
	n1ntLMgQsd119W/ZS/cgqC4HZchY0AdJzlCSO+AD5LmZZEvipURKtlqSsgRSkO+GVVc8f03fic4
	3E/bdatf0imLuNEAt75Lfaw6snTyeGFPJBov44Uh422wV5TBN7bBMBAc515244xd32ObFhxzJ5G
	0cAWXa1dBY3qrqIg5P6EeuBHDY1VeEb2XVQ2SaQyqcVnqOlPbnTXlRZChlYcwbk0sBWo0StIsYK
	UGxxPo3v1Zm77Y8NV
X-Google-Smtp-Source: AGHT+IFvXW9lDEbATxNOLcqkk2qKYmb2LjJaI24O9bk39OdZTYE2y1+5m007eE4YtTFHo4ArFYYXmA==
X-Received: by 2002:a05:600c:1c8e:b0:43e:94fa:4aef with SMTP id 5b1f17b1804b1-442f21905eemr15565055e9.8.1747251045917;
        Wed, 14 May 2025 12:30:45 -0700 (PDT)
Received: from [10.61.0.68] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f33691bbsm44060495e9.7.2025.05.14.12.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 12:30:45 -0700 (PDT)
Message-ID: <634e9d0d-fbab-4101-b968-d335b656e099@linaro.org>
Date: Wed, 14 May 2025 22:30:26 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
 <959b9c65-50d7-426d-9c2a-64e143e28ded@kernel.org>
Content-Language: ru-RU
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <959b9c65-50d7-426d-9c2a-64e143e28ded@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Krzysztof.

On 5/14/25 13:25, Krzysztof Kozlowski wrote:
> On 13/05/2025 16:39, Vladimir Zapolskiy wrote:
>> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
>> MIPI C-/D-PHY interfaces on Qualcomm SoCs.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>>   1 file changed, 110 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> 
> Looks like not tested, so limited review follows.
> 
> Filename matching compatible.
> 

Thank you for the review, the change is deliberately tagged as RFC.

I read this review comment as the displayed generic compatible 'qcom,csiphy'
shall be added to the list of compatibles.

>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
>> new file mode 100644
>> index 000000000000..ef712c5442ec
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 
> Please post the driver or any other user. Or explain why this is RFC or
> what you expect here from us.
> 

The CSIPHY driver agnostic CAMSS changes are on the linux-media list [1], the CSIPHY
driver specific changes will be added on top of these changes, however I believe
it makes sense to review these two different CAMSS changesets independently.

Here the RFC tag is given explicitly to get change reviews for the dt binding
documentation part, and the first user is the example embedded into the change.

>> @@ -0,0 +1,110 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,csiphy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm CSI PHY
> 
> SM8250 ?
> 

It's supposed to be a generic device tree binding, and it covers SM8250
CAMSS CSIPHY IP as well, which could be quite handly for testing/review.

>> +
>> +maintainers:
>> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> +
>> +description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 

Ack.

>> +  Qualcomm SoCs equipped with a number of MIPI CSI PHY IPs, which
>> +  supports D-PHY or C-PHY interfaces to camera sensors.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,sm8250-csiphy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
> 
> Need to list the items instead
> 

Ack.

>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  vdda-csi-0p9-supply:
>> +    description: Voltage supply, 0.9V
>> +
>> +  vdda-csi-1p2-supply:
>> +    description: Voltage supply, 1.2V
>> +
>> +  '#phy-cells':
>> +    const: 0
>> +
>> +  port:
>> +    $ref: /schemas/graph.yaml#/$defs/port-base
>> +    description: CAMSS CSIPHY input port
>> +
>> +    patternProperties:
>> +      "^endpoint@[0-1]$":
> 
> Keep consistent quotes, either " or '
> 

Ack.

>> +        $ref: /schemas/media/video-interfaces.yaml#
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          data-lanes:
>> +            minItems: 1
>> +            maxItems: 4
>> +
>> +          bus-type:
>> +            enum:
>> +              - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
>> +              - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>> +
>> +        required:
>> +          - data-lanes
>> +
>> +    oneOf:
>> +      - required:
>> +          - endpoint
>> +      - required:
>> +          - endpoint@0
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - interrupts
>> +  - '#phy-cells'
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sm8250-csiphy
>> +    then:
>> +      required:
>> +        - vdda-csi-0p9-supply
>> +        - vdda-csi-1p2-supply
> 
> This makes no sense - it is only sm8250 - so this if is always true.
> 

Ack, thank you for the review comments.

--
Best wishes,
Vladimir

