Return-Path: <devicetree+bounces-229411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D51FFBF71EC
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 16:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DD84404ED3
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 14:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93E4833711B;
	Tue, 21 Oct 2025 14:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jJVCQzYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0052EA17D
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 14:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761057561; cv=none; b=Ka5WNS1iXe2ZQSWrilgQ6/0SvKktG2QRJRwtI2lk6reUXzQ+AmvYO9b9EwpSiGgBIlJtUGSKuYnxRUanG5YEfGnO2C5E77xDK2nVzUpv7lBoKMTZDtXZvPkSGpwhJBxP7ifLcfZrZqEzPgouEW/CJyGPem/q6QLR1gY8Lh0d3wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761057561; c=relaxed/simple;
	bh=/hA9NoFGhfnZrNa6jkAo1og2y48VWyOMESR2eTab7Y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KsDqiyfz2kAMfKM6EwFWsJiKP/QO31KGW/w29rtQvcbzSqI1GDnzBYvdZ5gTW5O+5c2DFdzunPjMvoLKbWNDPwtXBzmQSjJnYswE+16TZ3zEmLJGzgmvnzmmYslYR5g3GzhtHX3LzjUkqrdcEpTPpw1XIakld6GROtlCgjqch28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jJVCQzYw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59L8LwOl018809
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 14:39:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IYiRng46K/9s0YcunKwJaYrPPhduE6KoJmzcZ76VteI=; b=jJVCQzYwQGZ2K844
	iAMShQ/NzcPzQWK1iWtjhpn/v8B2BxbqzdaI46BQX8nO7+3oEImpKmQlHDN+L9pP
	zBO9E4kNaRdmEmslpv7FgUeMV9VL80gOUUwQ824W6+CRiypYnxvgzVH4brIWsOpv
	FihxEnberXZaEh9Nn8P+LxuLFpBHaeMnq0nz6dI74qjUcxP5AnFlNZMCl/MmPAdb
	QokuSTC/9XbSJFBGgd87imZFRQi3BWy6lxtgc3FNOedJEfzSUl3MU8yRrvmHIPUG
	+zKgY05LUKcdGB1T0+ZSXLaN36XB6D91LG5LcNWiMhCL/WhuffI4Qj3oSbj2vwO9
	mYDJBA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469h0x9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 14:39:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6ee6so60723665ad.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761057558; x=1761662358;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IYiRng46K/9s0YcunKwJaYrPPhduE6KoJmzcZ76VteI=;
        b=qroD7347UXHhqaH1B+8egeS0TTU5Rrhuqm1QoEavHNvfhB7kgE9JbeOvjQ9aijhQt1
         5/mS3/eyXTk1JwxLJN2c7QrRQ5hzQgfjjj64u9xnul+4M8CXj3tYNVhiE2YiR8QzNCsu
         4PerXDt1iHorpkTDcW6GlNa7dz50nVu47H0nF0mmd80gC4LqH6ND5pqP7bbxxlMIaLg5
         79IzNlIIe9TDTslGk9tTBmMp0hsDJ7m6qVRYmO6VkP2k7G7DOFX1OCV6TxCsTubU44fW
         y3ytNyvYGrFzz6keuuV/FYZkdtxMT5girWdTBOgEaqP7usqdUMdnv0oYel8a8LECDnH5
         VS8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXP3RfALBxURrX111XpsUHXVdjJTraVLxmXy2JNzr5GIN4iH0afMDujVs55vxoXg2IZesL0eenB8G9M@vger.kernel.org
X-Gm-Message-State: AOJu0YwRZ5d/3nHQtTYVP80LlJGhbdMAxJI4uusHDXyZFpmdtr3fPjgE
	E5JxzPCw8/roJJATjRV3/CIpf2mBfzAwgjjDcGSXY9qc7Px9eQChsZEBGD4hEpEZbz3RwhgtV95
	jAn9FRVcnaLDj/6yHJKFgX0FEQt2OTTi2IYEB6OIt4bmYhAiM1LYkPlou6oP7XavW
X-Gm-Gg: ASbGncvFHK/GRAibxLXAhUfAqMBnMSY3mMNf/1/HORUEtTwlfJgEPfrBMgN1zyntb+m
	ZxIcdY/CeMVMARPvqjoMwRLA9YW4mWYOStVHcrhtWaehUJD/g+r9DjMIBlFwdQeZZ1omwxD+E7n
	Z0BxmzEQZAcziAcrMbkkZzrsNYNFBPSRHaim7IfylkEZL7/OYTeztpS6EbFGQ5eSXVNZOsvuFx7
	DZ8zDEF0V9JLNcQkgajAa2BUv8kOPRbUT5yq118khM5vjTmaa3FqzlEzgGWOvIF1mmiTC2xQp1P
	d8u+/oKSiazaYziqWVtwJDKUx5WHKzzxJHYDAagLit3z7YsQynFnko8+mKzDLeo1Pyun+zlzPKj
	X8oUbmt3sfeEk4z9E9C+U9w==
X-Received: by 2002:a17:902:e88e:b0:267:cdb8:c683 with SMTP id d9443c01a7336-290c9cf1785mr209130895ad.27.1761057558280;
        Tue, 21 Oct 2025 07:39:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7Xu3yqvqq7tM2Hj4ax162jdVvcEgPtgB391HBWPwgMC3PxAc2yK/s89219b9zTLDa4YQfTA==
X-Received: by 2002:a17:902:e88e:b0:267:cdb8:c683 with SMTP id d9443c01a7336-290c9cf1785mr209130335ad.27.1761057557695;
        Tue, 21 Oct 2025 07:39:17 -0700 (PDT)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ebcdefsm111879115ad.16.2025.10.21.07.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 07:39:17 -0700 (PDT)
Message-ID: <769b0fb2-75b3-45ef-b798-02ae5982b736@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 20:09:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-2-0baa44f80905@oss.qualcomm.com>
 <811c728c-e2c9-462d-9c7a-dd79a683e301@kernel.org>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <811c728c-e2c9-462d-9c7a-dd79a683e301@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: aVlkvQyU1egezn8KAQLGV6EDoa0jZgSi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfX2iHe7RhubNC7
 RDojJjcF/FtOWjpyhMouhxcBjdFck/mTNmy8uW8Zim4Fjxz48nlJET/iAnzSXv1y1sc7IsPr1RP
 866y+oGr6EfT1bdwF/lruW+HYnjFgiAl9K6l24yZwd/jP23rsjtwfQXohOzDqwOBCwD2z6MglAa
 fEFMWbUdQWn/ctDv/BKK8IuKnqQ36enl7IaMHWwn7IzMpNV+9rDcpWImgLEyZHAAFFa8N3luUj7
 btbewv8rncAec8+J3ZZZ5ahXFcv56pRVpw1y0KL4fTnenOZEoeWHMbvnurJZvnGwjphQ6hJPhBJ
 paQCg2T9CL+54d25ovBR2IKkWbKMjeMlGF74luomBEALebvEuub6GcEXEaEhAEvAnhVtO8IeUad
 iNifToYWEIn6ExMMNcKHHTJJyBdHPw==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f79b17 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PLUc99ambSscJNFV4OcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: aVlkvQyU1egezn8KAQLGV6EDoa0jZgSi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-21_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032

On 10/19/2025 2:40 PM, Krzysztof Kozlowski wrote:
> On 17/10/2025 19:08, Akhil P Oommen wrote:
>> A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
>> which replaces GMU. But it doesn't do clock or voltage scaling. So we
>> need the gpu core clock in the GPU node along with the power domain to
>> do clock and voltage scaling from the kernel. Update the bindings to
>> describe this GPU.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/display/msm/gpu.yaml       | 31 ++++++++++++++++++++--
>>  1 file changed, 29 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> index 3696b083e353031a496a1f299d8f373270ca562d..efc529e82bc198e7c3c89a5eecb6f929960a8de9 100644
>> --- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> @@ -45,11 +45,11 @@ properties:
>>            - const: amd,imageon
>>  
>>    clocks:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    clock-names:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    reg:
>> @@ -388,6 +388,33 @@ allOf:
>>        required:
>>          - clocks
>>          - clock-names
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: qcom,adreno-612.0
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 1
> 
> Drop, it's implied.
> 
> 
>> +          maxItems: 1
>> +
>> +        clock-names:
>> +          items:
>> +            - const: core
>> +              description: GPU Core clock
>> +
> 
> Missing constraint for 'reg'.

I suppose we should add reg property with a list of (items:) reg
descriptions. No need for 'min/minxItems constraints as it is not flexible.

> 
>> +        reg-names:
>> +          minItems: 1
> 
> Drop. MMIO range is not flexible.

Ack.

-Akhil

> 
>> +          items:
>> +            - const: kgsl_3d0_reg_memory
>> +            - const: cx_dbgc
>> +
> Best regards,
> Krzysztof


