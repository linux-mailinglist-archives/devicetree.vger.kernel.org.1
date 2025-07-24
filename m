Return-Path: <devicetree+bounces-199404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFB3B1082C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33C631724BF
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E69A26A1B6;
	Thu, 24 Jul 2025 10:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Blb8Kj50"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD73269CE6
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753354405; cv=none; b=aYbAU6l9pO3FYb6suWCjbGFWkWlvOk0umF9yFaGlajxGPJN2v3bmOoGyx1zVlGF8stBL9xB3uKhVK5rWnyB8y+bLGhnKONwpQ9szynKij60acGu6nxedHWkYc6sBiW5XMB9i8h3nThIy1z4jy0ZAkSrM18YPESen13GjacmS6X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753354405; c=relaxed/simple;
	bh=1wZs7rxeWc3sgu57R3Lf1DTsgdty7IOeDXASPHpx6s0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m6hmxMdADgQ1IAvdOfoHkYB/UoFei5jSHW2cO0IsDHhnLbewxt0j4Xk87sPZmsC3CZv/TQnrqW9owPKK/egudBTgKtI1r4c9m7k+0mpqG5p0pLEyNBfc+dC7XkqKBxsCToV0/m2cZzS5L6B0WZkWViAKtU4+fPWiMGdhWlwlRlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Blb8Kj50; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9ig0H004519
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 10:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tfq20BQzBqBOKeqnOoxB+tXfk+WnuVGMzxjMCsnx1/E=; b=Blb8Kj50nMFFi/or
	puTBWO8MOJR6G3bdE47snTXnn/O1LTwcVDZTK9AQ3uFuzsQzGb/hGYUGmK7wT5+Y
	5QpTmltsM3kWBwxdhaR9XmuD8xtL6xRazqRS0ylKQr34ariD6Q+faSWxnZSIucqv
	ekUFP8DF+OsvV97kxlA+mq/4tXwudHTUFMoRGp8NhHKzU0Wvn9UrYjfLdOdllrt8
	sDZz173i2hlkke5iOZl66nb29cp/DYrKuew05kCIujkfJYO9O3ZGUzUjxvYZBZkg
	XkVKTeBKvTuH8tV/wp6P5eR/qWjsQdD3aAhWLg9ljHDyliBF9n9paeeCEqbhQqv2
	UAtOLA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048vespn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 10:53:22 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7dfd0470485so17964285a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 03:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753354401; x=1753959201;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tfq20BQzBqBOKeqnOoxB+tXfk+WnuVGMzxjMCsnx1/E=;
        b=QiEatAK72DuK9EMG/+dB1j4liXQc7CETeUwjiscf8x7Uil2Swcn8t9OYCrlbdYMzwS
         1rco9IBfi1jkcry1bYMS4bXEhGx7+han3DeCws/e3mAsTKJiq41GNb5TS+m0ROsdinVk
         /iYu8AFc9eJbjBGsvKFNJLFgKj4CZmR4dLLNoGxftlT82SGeDlEWACEK5ivWwnyLPpip
         sR4VV43YaKbDUAtQ2p2bTGZdzbDgmIYYkLvlz2csnSoLVadm8ECJZBEbfKvpfV2FRZzE
         PCUuO6BOxeciEsvT4XUdR/MPnKzObWY/+bA5dcPs8YlFOUE9GKDx5nLrZhNGS43kiKJq
         NZfw==
X-Forwarded-Encrypted: i=1; AJvYcCXetsoSgLBcz5zbuKjgi8H+toSi7dHO6PJqjbJiUYloV4RQUu/FFMV0YXtgzKaeziZnjSwdnWoeO6vm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd9yeoS8q2894LADx01bEM1NOd96PBgqrTH9FN1LlAqss9xLXb
	eNjN55sXynZ/vjbAfdAlhRYpnd6XP7+mTxnVdxd4TBWGNA8Ht6y5juE0sMVevv6AIe4AybeAHD6
	d+BmeMCk6rAb9e/wbJadweALuaE5v2ekjWAsevVDAtad3nEJNIcnzGev9WyqnUINJ
X-Gm-Gg: ASbGncskGYG76n3vuA3pxQ/dL4bIIf7OrVwwjt5pqYepl4uzlOXMMJzMqCFvaCMEu67
	pN89aOiJDAAmUVNAtjBj5hu8oZaNmfR7PNW3+Qhv+LKB3Lsv//ZsGpkjVuhSrVu5n3UilkcG3+s
	wNBGbXeGlfnrCP9UcVRCu3BtLMmcTEMyH4IV/K5l/exeJ8Pg+TtBUd9QVGmB67TYOSgwhGF1g9O
	FwXKw7wXXoLoLBVeNPwNCAIKYzat/GEkWwKejJjp2/pY68hcTULMkcjwzMjKXot6k6+VjXUkTzo
	jBugDglAOxx/Wvhj4cZhMJIErxYpjJyPFXOu8X3FPirDBkOWRAqOteW4mAT72lYNXTmdFIPOplb
	nx6Ph9gXy3H7mjnmcUQ==
X-Received: by 2002:a05:620a:9605:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e62a1cdfebmr291059685a.10.1753354401378;
        Thu, 24 Jul 2025 03:53:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7qKOYrLpCIrlnTO2mUs/Rb0oINk/80uFDk0zZCUvwLLte3sCMwPuLusZ+uDK6mZO6rgCmgA==
X-Received: by 2002:a05:620a:9605:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e62a1cdfebmr291058385a.10.1753354400954;
        Thu, 24 Jul 2025 03:53:20 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47ff43385sm95492466b.144.2025.07.24.03.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 03:53:17 -0700 (PDT)
Message-ID: <7d444f4c-fa1f-4436-b93a-f2d2b6d49de2@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 12:53:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom: Add SM8750 GPU clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com>
 <20250723-topic-8750_gpucc-v2-1-56c93b84c390@oss.qualcomm.com>
 <20250724-blazing-therapeutic-python-1e96ca@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724-blazing-therapeutic-python-1e96ca@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 96UXzQvHhJ5RV0kOGo20piE0X7D-Mp1h
X-Authority-Analysis: v=2.4 cv=SYL3duRu c=1 sm=1 tr=0 ts=688210a2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=y9Hb3FDJ_D53AYP2N1gA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA4MSBTYWx0ZWRfXx2Gx5LpJXc5v
 28Ilt+pz4dnr4ZjlZ0lxIqz1r9JyzmNpQEPeITmgiMsi4tthP7yL+J+igvu5+MeYAEeaOJxt7iK
 DR3vhXsAK2LFlVyRolTd/jhwesphJxpBV0I/RhZ9/3uEn2Wf74u/HekCnpOjneaLIXJnXqL3PpS
 ++iNSk2HOEimjS2BIg6EYa0kM7Tj072m8CmClPWUT8GxiBJV8OfS3hI1rGPVc5VxOS/l0/MfShZ
 AMmIQwwF0150XjnqIKUY/QZGEkP3jzpPArw5iYnsSoYnSpcSaCHDiaR7C7l5yZPofSQG2Puct77
 VMDk0uLsjWsXZlGwMl6Fywy9BIhe5h3s2lz/85xStgCXt4YfZmtzietV54Dh9kzJkOutwdxXcPS
 /QaXDtV//9BWmARfMGvA0ha4fjGV/KV3fSHGC7sXdZ3YUoZ/RHucjLcQXmgw1vQWAZApGXpL
X-Proofpoint-ORIG-GUID: 96UXzQvHhJ5RV0kOGo20piE0X7D-Mp1h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240081

On 7/24/25 10:18 AM, Krzysztof Kozlowski wrote:
> On Wed, Jul 23, 2025 at 10:38:48PM +0200, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The SM8750 features a "traditional" GPU_CC block, much of which is
>> controlled through the GMU microcontroller. Additionally, there's
>> an separate GX_CC block, where the GX GDSC is moved.
>>
>> Add bindings to accommodate for that.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---

[...]

>> +title: Qualcomm Graphics Clock & Reset Controller on SM8750
> 
> There is no clocks nor resets here. Only power domains.

There are clocks and resets in this IP block (inside the register
space mentioned in the dt patch/example), but the OS is not supposed
to poke at them (it can in theory, but we have a uC - the GMU -
doing the same thing so it would be stepping on one another's toes..).
Not sure how to express that.

I could for example add #define indices in include/dt-bindings, listing
out the clocks and never consume them. Does that sound fair?

> 
>> +
>> +maintainers:
>> +  - Konrad Dybcio <konradybcio@kernel.org>
>> +
>> +description: |
>> +  Qualcomm graphics clock control module provides the clocks, resets and power
> 
> Also confusing.
> 
>> +  domains on Qualcomm SoCs.
>> +
>> +  See also:
>> +    include/dt-bindings/reset/qcom,sm8750-gpucc.h
> 
> reset or clock path?

Ugh, clock

> 
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,sm8750-gxcc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    items:
>> +      - description: GFX voltage rail
>> +      - description: MX_COLLAPSIBLE voltage rail
>> +      - description: GPU_CC_CX GDSC
>> +
>> +  '#power-domain-cells':
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - power-domains
>> +  - '#power-domain-cells'
>> +
> 
> You miss ref... or this is a bit confusing.
ref to what? qcom,gcc? I specifically omitted it, as that adds
requirements which you stated above.

Konrad

> 
>> +unevaluatedProperties: false
> 
> additionalProperties instead
> 
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,sm8750-gpucc.h>
>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        clock-controller@3d64000 {
> 
> No, clock controllers have clock-cells. This cannot be a clock
> controller if it does not have any clocks for anyone to use.
> 
> Best regards,
> Krzysztof
> 

