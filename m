Return-Path: <devicetree+bounces-22671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1288085CF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:53:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5819E1F2275A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B953529F;
	Thu,  7 Dec 2023 10:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGTbn1Mv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFFC10EB
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 02:53:26 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40c09b021daso10180555e9.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 02:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701946404; x=1702551204; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpGhDHfjbYJdmNSdrByuPS2eLFJA5tXn0JMYp6tJZL8=;
        b=pGTbn1Mvu+3TUKkcYC/oUb9ePMtNlqljhXMtT76+q5BgFR6ewbrTGKu6hprEkzYK2l
         MCS5/3c2/vuMN6rDLWteiDDtkwNMJp2ZgMtdfT8fq7k2pfILXfvDtghOqtasWQodHP9c
         UxpJ8BuzQ0ficpHmTY3jvxoE2bIA+0h5E1//i0CxeSRTIDcekhYRZBUJfbMjoL/I/GC0
         r2pjgs/RqbuG4FbzMxqKY9+oPtrHjTq4FficoCOEeE8P0FC/YwWkHCbY8MJpXywtA7IA
         BCQEhtMtGx5tsS/eumulxSea6IxUl2nS+ArTyVJZhWKS2+9ypDOli7fxA4U86IC3jFWa
         fzoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701946404; x=1702551204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HpGhDHfjbYJdmNSdrByuPS2eLFJA5tXn0JMYp6tJZL8=;
        b=s9jvtEAjgKfVeN72NLGN3l8mbpDRDU1ZzdrjMxargiEr/3f+wUVudp4UmTojmqA+SM
         bzB2z8mj4tOUcJY0FZ3ReHkgwPjbY25IN31toVq8PQWesOfWCdSFnsmpIq5aaP06Esdx
         TbhEgpcnnIernZ4vRyzRqhp8nTUT9wNX+ezkq7Wbbb5Roq0p7bBsWU5bygxNWx37K7bM
         qk7a2kFQXa55ntzZY1y/66RGfaGmVCi4jodvXsYBFv7K1Ib4An8sifFG5bkEaO0a7sfG
         NzX+1Z7JRr30fDXZuirKiy/76+3fK78ShuizSH0g3Ftzay9GS7O5PkPFauOlWN1hoy3r
         XmeA==
X-Gm-Message-State: AOJu0YzGFmAY1JC3SI1OV48zoMUgfBodEuZ/Tct4e5PrDqBmXWqJGXQ/
	34drL0X6D0KHSsfH72sCDiUTMA==
X-Google-Smtp-Source: AGHT+IE7bnM/WbB4xjPTysNxcDMEOoOW+DgKcUPFyZss2qPbfLz9tN/fmOii/w9Lk5KUxSxxXznWfQ==
X-Received: by 2002:a05:600c:2147:b0:40b:5876:6d8f with SMTP id v7-20020a05600c214700b0040b58766d8fmr1432657wml.20.1701946404261;
        Thu, 07 Dec 2023 02:53:24 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id p1-20020a05600c1d8100b0040b47c69d08sm1601599wms.18.2023.12.07.02.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 02:53:23 -0800 (PST)
Message-ID: <40cc122e-e5a4-4fba-8b54-2f44d0095406@linaro.org>
Date: Thu, 7 Dec 2023 11:53:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
 quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
 quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <c66a93fb-2729-4a86-a2db-f4692f6d0857@linaro.org>
 <20231206130746.GC12802@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231206130746.GC12802@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/6/23 14:07, Manivannan Sadhasivam wrote:
> On Fri, Dec 01, 2023 at 10:29:11PM +0100, Konrad Dybcio wrote:
>> On 1.12.2023 14:25, Krzysztof Kozlowski wrote:
>>> On 01/12/2023 13:30, Manivannan Sadhasivam wrote:
>>>>> What I said before:
>>>>> "Again, third time (once from Bjorn, once from Dmitry), rephrase
>>>>> property name and description to describe the hardware issue. I see
>>>>> description improved, but not the property name. Again in the end of
>>>>> description you say what Linux should do. Bindings do not describe Linux
>>>>> OS."
>>>>>
>>>>
>>>> You didn't answer my question:
>>>>
>>>> "I see a plenty of properties similar to this one instructing the OS to keep some
>>>> resource ON to workaround hardware issues. So they are all wrong?"
>>>
>>> They are not the best, but it all depends on the individual case.
>>>
>>>>
>>>> If you say they are wrong, why are they approved in the first place?
>>> Because we don't have time to keep digging what the driver is doing and
>>> what is claimed in DT. Some people don't even CC us on the driver.
>> Not sure if I asked this before, but can this not be set in the config
>> struct inside the driver?
>>
> 
> This cannot be the default config for any platform as keeping refclk always on
> will have some power penalty. Only if the hardware (EP or board design) has any
> issue, we can turn on this option.
So, if I'm reading this right, this concerns some but not all
8280 boards?

Konrad

