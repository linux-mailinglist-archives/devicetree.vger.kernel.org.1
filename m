Return-Path: <devicetree+bounces-144844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A6A2F709
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10A371626A4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F043A255E5D;
	Mon, 10 Feb 2025 18:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AaB2ZDwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D4324418C
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739212179; cv=none; b=kHiL4rH6rvUka0FkTlhBNLKTHqn3LAbJWTSqV487hHnjrlp7B2TELdyI0pD9FNpwTWZhvGWiXnS8Vt7dTR5otbGXOW0CFpN5ZxMM5Lap0YeWjATEPcNW1OeIH3gkVEmLFSfOtNORwvnUr7NR8g/xUNu+ZWAX8f5CZINzrm0HhVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739212179; c=relaxed/simple;
	bh=MEHNkZcXxpS+hxkJ8mhV4LTpVb3YAe9QrpC2DPoZQwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h72aN7KQD5rxplxd3xr0CC+DxDotWpdQ8pmjR/+g9p5VdzPW+Nx523s/ckKPmbZND4wck/YDS9m5PDoYhFe32bPJ5qy8s4NWuyMhgYW2TADf3Nx9+K/8ZAe7MEI5HucgQqqfg2lRf6WRp62H0SdKGHO67t1GkYwD3yCb02RxCu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AaB2ZDwa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9p80k018199
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DC8spSheSA6T2HlKCCR7T2kUJcOm4paxe3Ffd4AgHC4=; b=AaB2ZDway5aRMwnk
	3eNLQZGGbfidcqgdLxFpJP8IaO8Wifap5paQ5N/6Wn/LtaYnTYfD5+TgdI7bDpEj
	DfsqwA6nmQNczgKxh+yWbwGD5PBKelO9F34y10TtY2ppBkq+t5Hqi9jRRkky6PA8
	Pd8hPc4V1F9aI7jGyL5kPSIochE7V1EUn89VbzbLU+KPCNc5t9rzy7Tz7xmpaFAa
	j9Cq8KgF2iDJlyLf94yrMaao00u3nl1Z75eF7XqkfMR12ZjAXtdvbXc+uRB8k32I
	mzKIZbwt/T6HIiIOe+l2VQGjRTdDbOVgJUUUlzZLDBdqhCi8O9w7Qnes0fwfOLwj
	hs0hZw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dxnaec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:29:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46e78a271d3so7453171cf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:29:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739212176; x=1739816976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DC8spSheSA6T2HlKCCR7T2kUJcOm4paxe3Ffd4AgHC4=;
        b=wUJeR00nS30ztjCfFzgX2qlEWYTBPMDT6541lAYHxofZQ2ebGrvOFczLkUOn4DRHg+
         xWuTSHiZMuQiyAR4rbZqRNK6gEA26HaWCAflzX59+e96cvSH3pZXmboQvhP4RCDnmS55
         EC1JSPwagg70bZZOD7OBziKhbsvjwDzFh39G8XQuMH4sCe/XWqdNQx1bfTChq7YoshjP
         v2IhlL3GKN/qPlufnUA5KKStyUYRaI8JZsSRW5zslsq0Y/u0y2hSQnjPqhETHC7yNoBU
         u+KN+uNtB2cx86ZIwTifIm3col4loXFYoBZVJWiUlpC2YDegExgQh/LZfuPohSoV6EFp
         XOpg==
X-Forwarded-Encrypted: i=1; AJvYcCXYFWiMMS05VSGJHxLT3ZTT+iYbFTQ5ljMpVM6YGG3dCrGfbvLDjoilN3eBfSSt3mRG1AagiVAglJCR@vger.kernel.org
X-Gm-Message-State: AOJu0YyHgPqT2QDhv3Olqt6qG3Tw0lgTVC8QVlS5OfCjTjWRDf5OB4it
	IbuRvEPlFiJksZ6e71fKN6jvoQJNNKEirUWgGLlXEXHIpdSnjdxe41jVff14Fp48pWi4F/Y4pbr
	HwS6CtFm4xqFs4FIy73SvZVk3+EhrgJ+cbH8JeF1JN9oRKTdIIv5DyXzbQoYq
X-Gm-Gg: ASbGncvkr/YO+hXWCXxwieFdTuV1K17UrA14TejhQ60ZMHy2cskBlg1OHuWBkCpgBNB
	TLD1cw5rlJp+z07FCQFtMzFz6m/Ajs+LpcHgxXaEt48dTUhyeAiNBwFzs60jTa7wNMIgAjvSXFT
	DFz6DHM1Er9B0KQXIjAt5gMcaHDVgYwxU98pqHBsdb4PFSJfJqzi20Y174/FAsyP9PNzKuZv2az
	3lGjQuBgDiGQbLjGjKlpHHVbMIQr2+NlfYi7+U8AnGzO2n0VRjleln7Pu4fgg0BehtnfgtNn22t
	2ycAFJb3voJVmmSxOb34VI6pBTkyD6jdmWaN3A+nGC4gq8vB+zGIG1nFgF4=
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr82349481cf.3.1739212176396;
        Mon, 10 Feb 2025 10:29:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEghXy0DEgESwZcs8Zekt9lj2aXRJe3t0RR5F0okviQbvHiJuXISN8X79nOYm3W2jhxw1mJA==
X-Received: by 2002:a05:622a:1b87:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471679c7d79mr82349161cf.3.1739212175596;
        Mon, 10 Feb 2025 10:29:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7bcd53bf5sm298925066b.87.2025.02.10.10.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:29:35 -0800 (PST)
Message-ID: <21f7eb11-bb0d-4e4d-a4b1-780c03fb86d9@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:29:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: add PPI interrupt
 partitions for the ARM PMUs
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
 <20250207-topic-sm8650-pmu-ppi-partition-v1-2-dd3ba17b3eea@linaro.org>
 <ba546075-cfc0-4b17-9129-f99054e2e1ae@oss.qualcomm.com>
 <6aa71142-3b1d-476f-9c78-1207fbbed3f5@linaro.org>
 <bbbd36a1-d67c-404c-b749-eefcf493ed7f@oss.qualcomm.com>
 <a2fbae9e-d1cc-44a7-86b7-9e15aa0490b1@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a2fbae9e-d1cc-44a7-86b7-9e15aa0490b1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: X2zKM4GVJzwnHKWVQ5CQviCTbDFa6I1H
X-Proofpoint-ORIG-GUID: X2zKM4GVJzwnHKWVQ5CQviCTbDFa6I1H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=925 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100149

On 10.02.2025 4:30 PM, neil.armstrong@linaro.org wrote:
> On 10/02/2025 16:23, Konrad Dybcio wrote:
>> On 9.02.2025 3:44 PM, Neil Armstrong wrote:
>>> On 07/02/2025 21:30, Konrad Dybcio wrote:
>>>> On 7.02.2025 11:31 AM, Neil Armstrong wrote:
>>>>> The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
>>>>> interrupt partition maps and use the 4th interrupt cell to pass the
>>>>> partition phandle for each ARM PMU node.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> ---
>>>>
>>>>> @@ -5309,6 +5309,20 @@ intc: interrupt-controller@17100000 {
>>>>>                #size-cells = <2>;
>>>>>                ranges;
>>>>>    +            ppi-partitions {
>>>>> +                ppi_cluster0: interrupt-partition-0 {
>>>>> +                    affinity = <&cpu0 &cpu1>;
>>>>> +                };
>>>>> +
>>>>> +                ppi_cluster1: interrupt-partition-1 {
>>>>> +                    affinity = <&cpu2 &cpu3 &cpu4 &cpu5 &cpu6>;
>>>>> +                };
>>>>> +
>>>>> +                ppi_cluster2: interrupt-partition-2 {
>>>>> +                    affinity = <&cpu7>;
>>>>> +                };
>>>>
>>>> I'm not sure this is accurate.
>>>>
>>>> I *think* it's cores 0-1 and 2-7, but I can't find a concrete answer
>>>
>>> Core 7 is a Cortex-X4, and has a dedicated PMU node, look at the cpu compatibles.
>>
>> Look at what these compatibles do in code. Nothing special for the X.
> 
> So you suggest to revert Rob's change ?
> 
> https://lore.kernel.org/all/20240417204247.3216703-1-robh@kernel.org/
> 
> So what I understood is that yes the code is the same, but the perf
> attributes are not necessarily the same between heterogeneous cores,
> so each instance here would load the attributes for each core type
> correctly instead of only using the ones from the first core
> 
> Again, other SoCs uses this same scheme so I wonder what's the issue here ?

So I'm a little confused here. Is this partitioning scheme only describing
a set of same-kind cores to Linux so that the PMU interrupts only arrive at
one PMU device? Or does it reflect some actual physical topology of clusters
and how they're connected to the GIC?

If the former, I have no issues with this version of the patch.

Konrad

