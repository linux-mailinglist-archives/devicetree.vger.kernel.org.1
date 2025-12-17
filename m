Return-Path: <devicetree+bounces-247242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC4BCC5FEC
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 567433021E5E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 05:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D793215075;
	Wed, 17 Dec 2025 05:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lKv0di5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE7E1D6187
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765947725; cv=none; b=RkjALp+RTavbB7KcyZFKwUeljffMjcUhhsdhQuhMGTJcsiKiKQUVB7NmqC5RFX2WHkpaF8Z7+kj/+8quW10B+pkZK6p2RcxGmaUIxPM3kySZTGjeyUWNJnWJza3c13oSuwOFKnZfJhUTRgQ1bkayMoPxY34+NUYn8FW1Wr5RWi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765947725; c=relaxed/simple;
	bh=P4V9g9fEbj03wmssY3rOO+JbbzmJq8CL0UXKfdH2WfU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CUpjQe1VFjKbhuTFt4Y+zHTO16kSSN+6E4LAjRXETU+UvhVmU65F4klCi70GboCjJFSLilwyCaJQuCcuZzTnVRA8CBxIaKrV7EYa3538BpY1NDxGOBiK5+F27+TxckhX2tMZd6NiD3AldH+bhEBbY3RbKmq7ihpGswn3/VZK36o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lKv0di5l; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-4537407477aso3275466b6e.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 21:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765947722; x=1766552522; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s0nHwlGDJHrsW0ilipRlp/PLGvL6Mnw9v3ivWnF4YFA=;
        b=lKv0di5l1hs59TH9Q+LnUE8505R5IwrM6YuOd08GQKKRyXJQd9Vwx5DNjJ9ZU5QRcY
         sjvQFBxzlEPKqbNRtDPbsdNygbiFSgGhjIjOWvsnzoWcPYJMYh3rQ/pX7HHeuVudmbjd
         cxjuHalScyxzVV2SmBidJ1d0clqW9vAZXOkQVVoK2I+mLB0mS6yTgBIlbRvKBuD+dsOe
         TfV4srm+EcshEO2HS85/2s3ZLhyMmbkZPPc4dnEiCGVZ4zer2m2pxRqauXvakHjqfMsM
         CAkMYPsn8DTJx9R67e9L33Tk8hHPiRaTiFMPQ+kkzzp54Y8NTzQaVVcDzkxTKK9q/Ddb
         kAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765947722; x=1766552522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s0nHwlGDJHrsW0ilipRlp/PLGvL6Mnw9v3ivWnF4YFA=;
        b=mILhxZpjEqtM2T+wDr7RvFx8igHMWOQ9TCmI/jXeor7Qu0EPWtVkNTmQDbaDKSOykq
         aXAEvlYLTvMWebyyWRBGRzinoZvO+5VwGDYgUCupe81JF1nhmN3TghXQvbhfKdmDNTFm
         Q6d7bly2mH7TeQz+Umv8lzRMYYMIq9Y3J0yxvrXvbOsjimOBU2wOjCM3+qFKVdXpzAXq
         OdJeH6UBaG+VTjeL5be3Tj9yXlISifStfJord4gAUnxJOEDYNPUN2kP/zGheyax17wqb
         WqPGV4GRyVckrFme9o2tgRUTLCpHACto8ZtfORvUc4Bn0krYLp/zrTGRFjbocPJ9FUWZ
         ysww==
X-Forwarded-Encrypted: i=1; AJvYcCWfsprhDqEXGW6jJtnUe/c/CY1zyRhBdhv1+mEFRyYA8T1gwpeP+uwbJQh3AXYrB1WhI1ovQL5CFlT5@vger.kernel.org
X-Gm-Message-State: AOJu0YxDXvi4DscOPyGy+CD/DdnuVP/8BpDPlK0NF3wZ6yzTD11yo8PB
	rATKst4HGt05nDLhl7Uleo+Puhd0rGibNnQpI886rStaLHqAMmgWsWkpSB++gA==
X-Gm-Gg: AY/fxX4sD6XcTpcMiUo0a/wj6/zcNIeKojF1K0dVfW+Ztlw/K4NS9wdR1Jmn9TnI4+3
	LPZ/vvWnyIKfg56kpynEtIXnqAMIyoYsqV7heJ2BgCRrN/7dhLRTehd59NK9AaN8KcCkTaofLdF
	H7Epk0kdj6xnnc/C1ryE3zudy2i28QD0+dWETZegZLTgeduBIlm+Sb7npjEfkJl9plIEjt0ONE4
	CWpVt5CpRNnyYRE0lE4khjoYN2/vn6bU5KoCKuU8isISjy1Db3cQFwXPe4HThGncZXsCKs8kwlS
	U7yNE+9z492e9MJeQS2OxV67JHVEIS9v8cBO64qmG9u0MZl24AsqiWXqZZoU3yVhy2W6w93zAwP
	p76ABN9R7YmzaKG0GJx25NFqH1K2icXuEWaUOVVeCnT5/OGsX2ByS+hv8YQO0QnPs5SMl1Q91Sa
	PdcunQx9qDbsne9Vfi0wciZ7nsCRmA/o30wtKYjTL0Btf8oVDgIJlFofd5LvoEnl7fCbcRu9/3w
	HPNOfKMO+vv9PijHxbIGeCeliZsfmOQKQ==
X-Google-Smtp-Source: AGHT+IHoxKuD9P6Tzk3NV4TEr+YzF8CTdR9Nb71h2V9w5FH0uv7iEEuObY1MNVcOAvD0qfQHcKmPYQ==
X-Received: by 2002:a05:6808:138b:b0:442:5fa:290d with SMTP id 5614622812f47-455ac957d9emr8102596b6e.43.1765947721958;
        Tue, 16 Dec 2025 21:02:01 -0800 (PST)
Received: from [192.168.7.229] (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f61480cdf2sm7446963fac.0.2025.12.16.21.01.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 21:02:00 -0800 (PST)
Message-ID: <f38764d7-9d7d-47f4-a099-b6ac6b12be6e@gmail.com>
Date: Tue, 16 Dec 2025 23:01:54 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] dt-bindings: remoteproc: qcom,ipq8074-wcss-pil:
 convert to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, konradybcio@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
 <20251210003729.3909663-2-mr.nuke.me@gmail.com>
 <20251216-notorious-omniscient-frog-caceaf@quoll>
Content-Language: en-US
From: "Alex G." <mr.nuke.me@gmail.com>
In-Reply-To: <20251216-notorious-omniscient-frog-caceaf@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/25 11:53 PM, Krzysztof Kozlowski wrote:
> On Tue, Dec 09, 2025 at 06:37:23PM -0600, Alexandru Gagniuc wrote:
>> Convert the QCS404 and IPQ WCSS Peripheral Image Loader bindings to DT
>> schema. The text bindngs incorrectly implied that IPQ8074 needs only
>> one qcom,smem-states entry. This is only true for QCS404. IPQ8074
>> requires both "stop" and "shutdown".
>>
>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> 
> Don't add fake addresses to CC. I could not respond to this email
> because of that!

Okay.

>> ---
>>   .../remoteproc/qcom,ipq9574-wcss-pil.yaml     | 167 ++++++++++++++++++
>>   .../bindings/remoteproc/qcom,q6v5.txt         | 102 -----------
>>   2 files changed, 167 insertions(+), 102 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,q6v5.txt
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
>> new file mode 100644
>> index 0000000000000..d28f42661d084
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
> 
> Filename based on the compatible, so for example:
> qcom,ipq8074-wcss-pil.yaml
Okay.
>> @@ -0,0 +1,167 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/remoteproc/qcom,ipq9574-wcss-pil.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm IPQ WCSS Peripheral Image Loader
>> +
>> +maintainers:
>> +  - Placeholder Maintainer <placeholder@kernel.org>
> 
> This must be a real person. Fallback is your SoC maintainer.

I can't find an official maintainer for IPQ8074 or IPQ9574. I could list 
myself, but you know a lot about these bindings. Is it okay if I list 
you as the maintainer of this binding, Krzysztof?

>> +
>> +  reg-names:
>> +    items:
>> +      - const: qdsp6
>> +      - const: rmb
>> +
>> +  interrupts-extended:
> 
> No, you only need interrupts. Please look at other bindings - how they
> write this.

I thought I needed interrupts-extended if the interrupts use more than 
one interrupt controller. Is that not the case?

>> +    minItems: 5
> 
> Drop
> 
>> +    maxItems: 5
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: wdog
>> +      - const: fatal
>> +      - const: ready
>> +      - const: handover
>> +      - const: stop-ack
>> +
>> +  resets:
>> +    minItems: 3
> 
> Drop
I will drop all the items you identified as excessive.>
>> +    maxItems: 3
>> +
>> +  reset-names:
>> +    items:
>> +      - const: wcss_aon_reset
>> +      - const: wcss_reset
>> +      - const: wcss_q6_reset
>> +
>> +  clocks:
>> +    minItems: 10
>> +    maxItems: 13
> 
> Why is this flexible? Wasn't in the old binding and nothing in the
> commit msg explained a change in the binding.

I was thinking ahead to the next patch in the series that adds IPQ9574 
binding. It makes more sense to keep it at 10 fot this patch, like you 
suggest.

>> +
>> +  clock-names:
>> +    minItems: 10
>> +    maxItems: 13
>> +
>> +  cx-supply:
>> +    description:
>> +      reference to the regulators used for the booting of the Hexagon core
>> +
>> +  memory-region:
>> +    description: Reference to wcss reserved-memory region
> 
> Drop description. Missing maxItems, please look at other bindings. Don't
> write your own style, but look how we already wrote remoteproc bindings
> (the latest).

Is "maxItems: 1" the correct thing to add here?
>> +
>> +  qcom,halt-regs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      A phandle reference to a syscon representing TCSR followed by the three
>> +      offsets within syscon for q6, wcss and nc halt registers.
>> +    items:
>> +      - items:
>> +          - description: phandle to TCSR_MUTEX registers
>> +          - description: offset to the Q6 halt register
>> +          - description: offset to the wcss halt register
>> +          - description: offset to the nc halt register
>> +
>> +  qcom,smem-states:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> 
> That's incomplete - missing constraints. Are you sure you wrote this
> code the same way we already did for other devices?

I am not sure. It seems to match qcom,qcs404-cdsp-pil.yaml or 
qcom,wcnss.yaml. What constraints are you expecting here?

>> +    description: States used by the AP to signal the remote processor
>> +
>> +  qcom,smem-state-names:
>> +    description:
>> +      Names of the states used by the AP to signal the remote processor
>> +
>> +  glink-edge:
>> +    $ref: /schemas/remoteproc/qcom,glink-edge.yaml#
>> +    description:
>> +      Qualcomm G-Link subnode which represents communication edge, channels
>> +      and devices related to the Modem.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - interrupts-extended
>> +  - interrupt-names
>> +  - memory-region
>> +  - qcom,halt-regs
>> +  - qcom,smem-states
>> +  - qcom,smem-state-names
>> +
>> +allOf:
> 
> Seems you do not reference other schemas. I am going to repeat myself
> for 10th time: are you sure you followed other devices?

It's the sixth time, but I see your point. Comparing to 
qcom,qcs404-cdsp-pil.yaml or qcom,wcnss.yaml, I can't see what's 
missing. What do I need here?

> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,ipq8074-wcss-pil
>> +    then:
>> +      properties:
>> +        qcom,smem-states:
>> +          items:
>> +            - description: Shutdown Q6
>> +            - description: Stop Q6
>> +        qcom,smem-state-names:
>> +          items:
>> +            - const: shutdown
>> +            - const: stop
> 
> Missing clocks

The text binding that this replaces implies no clocks for IPQ8074. What 
would you like me to add instead?

> Missing blank line
> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs404-wcss-pil
>> +    then:
>> +      properties:
>> +        qcom,smem-states:
>> +          maxItems: 1
>> +        qcom,smem-state-names:
>> +          items:
>> +            - const: stop
> 
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,qcs404-wcss-pil
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 10
>> +          maxItems: 10
>> +        clock-names:
>> +          items:
>> +            - const: xo
>> +            - const: gcc_abhs_cbcr
>> +            - const: gcc_axim_cbcr
>> +            - const: lcc_ahbfabric_cbc
>> +            - const: tcsr_lcc_cbc
>> +            - const: lcc_abhs_cbc
>> +            - const: lcc_tcm_slave_cbc
>> +            - const: lcc_abhm_cbc
>> +            - const: lcc_axim_cbc
>> +            - const: lcc_bcr_sleep
> 
> All this goes to previous if.

Okay

>> +      required:
>> +        - clocks
>> +        - clock-names
>> +        - cx-supply
>> +
>> +additionalProperties: false
> 
> Missing example.

I plan to add the example in the next patch in the series that adds 
IPQ9547 binding. I don't have the resources to test IPQ8074 or QCS404, 
and I want to be sure that the example I add is tested.

Alex

