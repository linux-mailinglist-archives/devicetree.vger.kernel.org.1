Return-Path: <devicetree+bounces-146296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CAAA34170
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 15:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C6701892768
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBBB24167D;
	Thu, 13 Feb 2025 14:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GSZF2cJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8473824BC0B
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739455228; cv=none; b=Ad4+PGPvQEynreRiJBo1p4ZhRKfE45WYfFY3e6QpV0WRYGmmvNr0jujj5bDIBM4s1tDNCKXGTRX6lFKLE0bkVsVgzGpqO85kMEZnzZ5YT3tjQi0AmqNU8pp4XSRbLJkWpehw4JUw3qN5ETmuSNSwLkiatxC3jTlqcJoyw0ULpP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739455228; c=relaxed/simple;
	bh=Pbs5wodWxm/JR5Tynt+/hc1eTWJ3Bckhjm8JuRL44ho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HmhnRupSqqazSdYzjjYG3K2OGFGMP1JIXsuwbhtsFkSDoFK0Qz2zCEUmWaBcDIOsSHoKGreea15+cp9aNiu8l6pvPXl9szpCnf63bmJ1Vxxc0WTV96OI9AhSO/Ex2e3wi5yDfSt/uZ52iJuARMvGbWi6C0Mh5FclbG5+f20ru0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GSZF2cJu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51DBWbSQ011988
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:00:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1cZ+v8WZaOBu2XxFF/U6ICJcJSWiyGa45lTYqCiTTmw=; b=GSZF2cJug7eVJgvO
	O+zNUNLQQN+ooWI1Thb6LbscCytzKIANxt9fR2wYJ7blNR5HccnVzpCfwewdtxfh
	VRzQP16cz12oT1ZG8L3US19WCSQnbvtL1xoGEL5EcsiEMUgHL9L/e0+uqBlwFpJT
	WxNKmmd8ZkSG5wYuyyC/IiwWNnijYO8bo7tXFcULeisgJ10n5ELAhO7LJF7aMO46
	wVCjROX8V0nBXLRSdDbMyyBzCZ3sLztq0X1IQvalYYsmH6SkNJn6KMHbIPtVLoHj
	3+tVfxX8KdVYRzrWWoz195hZiQDddmSU+mNxEkh4WmHVm2zMeJ51Iph8zDkUHBuw
	2SjWAQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44sfxw8bnj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 14:00:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-471cafec353so342441cf.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 06:00:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739455206; x=1740060006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1cZ+v8WZaOBu2XxFF/U6ICJcJSWiyGa45lTYqCiTTmw=;
        b=csUHqrKn1/m95K/fEfd6zWDZ/m5pSbQvxCzpuqAWEiyIkufdg7aV7Pa0zLFzz4z982
         zTm+bRJYr1pj2EjY5WKPGyYBgCWV+pU/eLx04yjMS0M8zkIpPmP7wmCN1dYp/KCzKShy
         Nq85S2uLCsnHs+OxnBcqIkSnvphUYnuutLApxqT22d/IL4u9+m7fI2Hanwop/fQaFCeJ
         iBMpcw3spdS/zmYFVqZyZoUV2TVFMOgi+W7UiNXpsf9jb1XAibuPYU7Ms4x+u4v/6qg3
         ui597UfnHWLGmYAS9qZ9WbneGeo/Bk7IFySWkXfNeg+OuW1B28xK2IiTMnArT8+1Fxgt
         dsJA==
X-Forwarded-Encrypted: i=1; AJvYcCVOC7zlj+az1DE9ftuYNbaXLM1vrCvRqYP1Q7q29OqleUV4BxGSKTKVlClanFg2JxPht0TSBpxjfmy8@vger.kernel.org
X-Gm-Message-State: AOJu0YyOer1NS7j8ZNy7yuidh6lvnzPxrwwvFgYjIu1qxeGvR2heIX5c
	raob5knY5mqxnLjNDDw3cxX1BKSdGuOp+/+AAZi36aJkfgidQkSXwuuz4fKIudPTO/IZxACCiu9
	0OwG0Ljdo2dOlrzlsL3e0Ckca7bwIxqFXZVJGfrgneqWuS/vwwV5qUmYzL+mG
X-Gm-Gg: ASbGncufkUH2POUrKeC4VOUZenpwH+B+R++dE7Nxzw6yc/NpsJbHpw4OwVRACjAZu6f
	2FAD8yRnhD2u4FwgOQhDoorrnuIYnYpCb65gAWGHaVrbdnSaDoQoTPzBa0opJjHqMC8NRA7w+72
	WswMpresbzAWRWzOFndWnrNetY8PW4KbDEqJ1n/ip7qg6p4ptqO16Z448OR7307uim/oCOtUqyv
	pN78XTvRAtiae3EmTGX7YD2hrkV3qvmTaFXGc8QdZrCJP8q9yxwSZngiboXpAUodyWv5wWRWOU5
	pt3kKzyXCsJg9nARlA/TEx1cBl5pWOi9I9p6TJEkwi3BU3aZKUodNekg82E=
X-Received: by 2002:a05:622a:15d6:b0:471:c024:cd4 with SMTP id d75a77b69052e-471c024127fmr16353201cf.14.1739455205661;
        Thu, 13 Feb 2025 06:00:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXWuPWhuOM3zr3nn89KwhyQauBwMb8+7/3qbTtER/s8Z2C4MYAvDD3+Y4GoxvHhLzuZR90wg==
X-Received: by 2002:a05:622a:15d6:b0:471:c024:cd4 with SMTP id d75a77b69052e-471c024127fmr16352991cf.14.1739455205175;
        Thu, 13 Feb 2025 06:00:05 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532322f1sm138352966b.19.2025.02.13.06.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 06:00:04 -0800 (PST)
Message-ID: <d674d626-e6a3-4683-8f45-81b09200849f@oss.qualcomm.com>
Date: Thu, 13 Feb 2025 15:00:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] dt-bindings: dma: qcom: bam-dma: Add missing required
 properties
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Md Sadre Alam
 <quic_mdalam@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
 <20250212-bam-dma-fixes-v1-7-f560889e65d8@linaro.org>
 <22ce4c8d-1f3b-42c9-b588-b7d74812f7b0@oss.qualcomm.com>
 <Z6231bBqNhA2M4Ap@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z6231bBqNhA2M4Ap@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Ff_76nAvVcbNXCnNz279a_1ShbXCB5Pk
X-Proofpoint-GUID: Ff_76nAvVcbNXCnNz279a_1ShbXCB5Pk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_06,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 bulkscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502130107

On 13.02.2025 10:13 AM, Stephan Gerhold wrote:
> On Wed, Feb 12, 2025 at 10:01:59PM +0100, Konrad Dybcio wrote:
>> On 12.02.2025 6:03 PM, Stephan Gerhold wrote:
>>> num-channels and qcom,num-ees are required when there are no clocks
>>> specified in the device tree, because we have no reliable way to read them
>>> from the hardware registers if we cannot ensure the BAM hardware is up when
>>> the device is being probed.
>>>
>>> This has often been forgotten when adding new SoC device trees, so make
>>> this clear by describing this requirement in the schema.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>>> ---
>>>  Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
>>> index 3ad0d9b1fbc5e4f83dd316d1ad79773c288748ba..5f7e7763615578717651014cfd52745ea2132115 100644
>>> --- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
>>> +++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
>>> @@ -90,8 +90,12 @@ required:
>>>  anyOf:
>>>    - required:
>>>        - qcom,powered-remotely
>>> +      - num-channels
>>> +      - qcom,num-ees
>>>    - required:
>>>        - qcom,controlled-remotely
>>> +      - num-channels
>>> +      - qcom,num-ees
>>
>> I think I'd rather see these deprecated and add the clock everywhere..
>> Do we know which one we need to add on newer platforms? Or maybe it's
>> been transformed into an icc path?
> 
> This isn't feasible, there are too many different setups. Also often the
> BAM power management is tightly integrated into the consumer interface.
> To give a short excerpt (I'm sure there are even more obscure uses):
> 
>  - BLSP BAM (UART, I2C, SPI on older SoCs):
>     1. Enable GCC_BLSP_AHB_CLK
>     -> This is what the bam_dma driver supports currently.
> 
>  - Crypto BAM: Either
>     OR 1. Vote for single RPM clock
>     OR 1. Enable 3 separate clocks (CE, CE_AHB, CE_AXI)
>     OR 1. Vote dummy bandwidth for interconnect
> 
>  - BAM DMUX (WWAN on older SoCs):
>     1. Start modem firmware
>     2. Wait for BAM DMUX service to be up
>     3. Vote for power up via the BAM-DMUX-specific SMEM state
>     4. Hope the firmware agrees and brings up the BAM
> 
>  - SLIMbus BAM (audio on some SoCs):
>     1. Start ADSP firmware
>     2. Wait for QMI SLIMBUS service to be up via QRTR
>     3. Vote for power up via SLIMbus-specific QMI messages
>     4. Hope the firmware agrees and brings up the BAM
> 
> Especially for the last two, we can't implement support for those
> consumer-specific interfaces in the BAM driver. Implementing support for
> the 3 variants of the Crypto BAM would be possible, but it's honestly
> the least interesting use case of all these. It's not really clear why
> we are bothing with the crypto engine on newer SoCs at all, see e.g. [1].
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20250118080604.GA721573@sol.localdomain/
> 
>> Reading back things from this piece of HW only to add it to DT to avoid
>> reading it later is a really messy solution.
> 
> In retrospect, it could have been cleaner to avoid describing the BAM as
> device node independent of the consumer. We wouldn't have this problem
> if the BAM driver would only probe when the consumer is already ready.
> 
> But I think specifying num-channels in the device tree is the cleanest
> way out of this mess. I have a second patch series ready that drops
> qcom,num-ees and validates the num-channels once it's safe reading from
> the BAM registers. That way, you just need one boot test to ensure the
> device tree description is really correct.

Thanks for the detailed explanation!

Do you think it could maybe make sense to expose a clock/power-domain
from the modem/adsp rproc and feed it to the DMUX / SLIM instances when
an appropriate ping arrives? This way we'd also defer probing the drivers
until the device is actually accessible.

Konrad

