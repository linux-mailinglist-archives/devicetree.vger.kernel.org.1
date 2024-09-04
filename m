Return-Path: <devicetree+bounces-100015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A629D96BE0F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:17:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C51AE1C211E7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1B21D933C;
	Wed,  4 Sep 2024 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZgF4sGV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAC14C96;
	Wed,  4 Sep 2024 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725455842; cv=none; b=RWzVfq1vhAzl9h4HlZzRNQdxXcEYk8fiYaiiKudwRszAL08j82DlWhDVEIf32+ZHL8OGkYvqGZn+KAuzRUmUtvbleoLS1ckD77bL0eEbd2iapg9VHiybvbaM9llvc9vGQW8tW5lRHHnTUtOZ9lNnSyPlJL/zOu16efpMiVWTXlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725455842; c=relaxed/simple;
	bh=aqVlxHGtPxE77BcGNRg59GH4QcO0QoDoOK0LUVlfoM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aYd+5kxUCF6/Z9/qNQ1SRpDaQp9n+AbCjKgvMUq29qaw9bjw+NNu1PlsI3BEq4EjQSEW0voOt595fsCjE0JhaJvgETWnDfLRTv7ZunqUZJQj9vuRXY3wOwxxf/OsaptYLKFCeZ03hMxq2Rc5Ix0Eq5rfYjR4c0h/eVG7kEITlyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZgF4sGV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7E3C4CEC2;
	Wed,  4 Sep 2024 13:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725455841;
	bh=aqVlxHGtPxE77BcGNRg59GH4QcO0QoDoOK0LUVlfoM4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nZgF4sGV8/tK3fkm9L+JD0W2QuW1KWrF5yN9eq9QXzZU+rhtrP2vJX1EOV0O0VNt/
	 ia9hbA/kfkd+k523EA+8c/nJg0KnLngEAMVqbH94eYjtg7XYl20lZk88e1gW7H/IgN
	 HlEdL8HMr2BwGLk2KHqTOFnRKdblNuRLJmD9KF9qWRptVdUFo9w3SBE4lefV3hihf6
	 nkYkoGhW9hKWdcQiYbtbQvRL2mgJwPkFnBW5waoMTiSzyPWdZcp9GOvID08YlaHZNe
	 2dlGDFfCyN0boXwigf3NYtnUKYdaB824FBlf6lc5d8JxGZcmYojj5zy0kIeRCdznJw
	 hchFMhh2FggIg==
Message-ID: <baf00e50-10b2-410b-9c56-713564a2d1b9@kernel.org>
Date: Wed, 4 Sep 2024 15:17:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/21] dt-bindings: cpufreq: qcom-hw: document support
 for SA8255p
To: Nikunj Kela <quic_nkela@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
 viresh.kumar@linaro.org, herbert@gondor.apana.org.au, davem@davemloft.net,
 sudeep.holla@arm.com, andi.shyti@kernel.org, tglx@linutronix.de,
 will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
 jassisinghbrar@gmail.com, lee@kernel.org, linus.walleij@linaro.org,
 amitk@kernel.org, thara.gopinath@gmail.com, broonie@kernel.org,
 cristian.marussi@arm.com, rui.zhang@intel.com, lukasz.luba@arm.com,
 wim@linux-watchdog.org, linux@roeck-us.net, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-crypto@vger.kernel.org,
 arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org, iommu@lists.linux.dev,
 linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org,
 kernel@quicinc.com, quic_psodagud@quicinc.com
References: <20240828203721.2751904-1-quic_nkela@quicinc.com>
 <20240903220240.2594102-1-quic_nkela@quicinc.com>
 <20240903220240.2594102-15-quic_nkela@quicinc.com>
 <odg5ssqu2soaqp6m4rambj7qhqiyp7othkvu4v6fu6xtuhbdho@vccya6qcwgoz>
 <1b831fc1-9360-4038-91b2-b2c0cea513ed@quicinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <1b831fc1-9360-4038-91b2-b2c0cea513ed@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/09/2024 14:27, Nikunj Kela wrote:
> 
> On 9/3/2024 11:26 PM, Krzysztof Kozlowski wrote:
>> On Tue, Sep 03, 2024 at 03:02:33PM -0700, Nikunj Kela wrote:
>>> Add compatible for the cpufreq engine representing support on SA8255p.
>>>
>>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>>> ---
>>>  .../bindings/cpufreq/cpufreq-qcom-hw.yaml        | 16 ++++++++++++++++
>>>  1 file changed, 16 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
>>> index 1e9797f96410..84865e553c8b 100644
>>> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
>>> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
>>> @@ -34,6 +34,7 @@ properties:
>>>          items:
>>>            - enum:
>>>                - qcom,qdu1000-cpufreq-epss
>>> +              - qcom,sa8255p-cpufreq-epss
>>>                - qcom,sa8775p-cpufreq-epss
>>>                - qcom,sc7280-cpufreq-epss
>>>                - qcom,sc8280xp-cpufreq-epss
>>> @@ -206,6 +207,21 @@ allOf:
>>>          interrupt-names:
>>>            minItems: 2
>>>  
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - qcom,sa8255p-cpufreq-epss
>>> +    then:
>>> +      properties:
>>> +        reg:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +
>>> +        reg-names:
>>> +          minItems: 2
>>> +          maxItems: 2
>> What about interrupts? You need to constrain each of such lists.
>>
>> Best regards,
>> Krzysztof
> 
> Interrupts are not required, I still need to put constraints for

It's irrelevant whether they are required or not. Each property should
be narrowed.

> interrupts? BTW, there is no if block for SA8775p binding in this file.



Best regards,
Krzysztof


