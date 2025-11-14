Return-Path: <devicetree+bounces-238663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF4C5D05E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C80913503AF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B631313522;
	Fri, 14 Nov 2025 12:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gmy6jgL1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ykcflczz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEA3191F91
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122144; cv=none; b=N9OK5k/nAB+8KxJ4aJjkT72xfJzalO7DT0mU53UcRl8i/mrgtw58tmHbJrS/0f5Mp0VAk+ebQZSgRSTSdNhIwFJjw6YH6xLELURpURgX2HsxW0Aq9hnXF9o/q/HdbwMbd8Od/TH42KQKE8DynDBuJPy2cCQZbnUyMn12+Jp0vmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122144; c=relaxed/simple;
	bh=uN6vX067YSyWkT6H1MCzpwp36cvHNBITPBMNXqprdGk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YCAlT2AgNRCWodrG6fKGYBfXcLo44dwRX2rIuHTg8FNxtLvX5qoECorJ1TeDoQF58541/8lIyI1RTPzA0kN0t2CXcmuEXEX2KGJsDAnuKTpUbDWUknP0hyEIhTV3iLuqEBrayYJuGKRj92pW36jDuLNtuBtddDzt4lYJsp/Zco4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gmy6jgL1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ykcflczz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEBhbar3368679
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:09:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	djlvIamP88uSWKSXFTFObQ/yFmQ+cxMViS2ZJbYqFJ8=; b=gmy6jgL1r3oJqfWf
	ibQa1kCUdPLuL4VMFepHhLaBfjvZpa8eMpz3v+if0kBFITxG/vNa0v+nlS0VC/6D
	/eUy+IH/zbwKRy11hMJVGRrHv+sueqZJmQ7D896lFEfzI6jKSH7tw/7ZdLWKmKtI
	zmHnqttfM8hiAZbJRfd5MlqJ1NZUq2gIBjoXqnZVtHCEu7JKJAM5QD+mq3nrSHxu
	T+zhvL3TjLPzhFtI516ZCXR0EBV1B3woKb4s/0HcnfvQOEMZsDmU3BilfIaMMT+9
	uHFgqt9EgnUKDc3yepHbQ6mDF3cK2314LqadLRjF/y9qkflqb4gaOksTe8KamJRe
	nljxiw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae3t9r1x1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:09:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2955f0b8895so35925895ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763122141; x=1763726941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=djlvIamP88uSWKSXFTFObQ/yFmQ+cxMViS2ZJbYqFJ8=;
        b=YkcflczzFDNKwF5xTwFkib3hvVX5zdDrUlpZuRa83VeaFDg8pcOhSD5Vy6Riqe9TLC
         3hrzq/YXwT3dOqzbAvI0OWG86Pk5ewGDAtJE0JUNB3LusKprrWkauPzIaYx1pSfaazzG
         75TNWqmgktmNh1IxAP9RnpIB4wAJB+4lz7MmvDFW6wo0s/cSghXSYSWgk8S/ydHUdJ3y
         xDz5F6icJ8NmRzyntzy5ryzyyuwbg28qdrIiQIqTFcPDYR0OEU7lnhQGP1ZDEXO7mZZB
         sw25iHPgkM3EOFPEK9X3SMW1F5UPWXQAsFQu4JztrQ/efBqWSiollcaPv53BtIqVbU7Q
         cVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763122141; x=1763726941;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=djlvIamP88uSWKSXFTFObQ/yFmQ+cxMViS2ZJbYqFJ8=;
        b=sVV7Q16jmzQzDMZNqdp9s1yfneWO7rpuz1l/cvsJgueCJ6vwxXdEeO/6TkzhLoINq2
         J2Jy4Z8J6GjfwBwu2lJCLOpMs5cQZtGFDCbmyCdhSncvTows8S/zpAoZOjylFf3WfiCf
         PG/uRFRQaD/xb0QQv6FC7XU7wfAb0gK5KjdQoY3gwsuvzkpAMJBhpqCPEmEAUZXGBgxK
         sJUhZWbnIG8a6lPUns/iDcLd978joTZM3KFe1WAGXArOrRCioiXM1M3h5QpLr1iBI2li
         7xP3pqnQXwrJRZz4OthGv/DyyxNQPUd78OMS3BX7Q72SvKsAO9MwAV1ONJvrhGGeJKDh
         du6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmuASljfSsCJnubFQ38Cv0d7W7enh26/6dYS9rhZBarJ8tNBj5uBl/QMogiJopomM3Ui7Stq0Z1wwY@vger.kernel.org
X-Gm-Message-State: AOJu0YxRDyF9MK9OUE2786VJqtSwAFKb6KaylDTFspxExBHx0y0+JOt9
	pKbiYr5/iDctOwToKkEl2HULFRTRdE4zdbyjOli/99HLVd82jZqE2xRUr42mPlR/0AvyFNDB/I8
	7gv8pPitukfktjf3WPjcMw3o1c9vwx5PGEI968tLBSlwz9K+74LZo8kNzIo8tYs07
X-Gm-Gg: ASbGncuQjCmxltmeUcHuNH87sWm9wUQMzHIdTpzgJ4gJq2tYr5OVFAssWAE61IPzGeQ
	43eDb/I51Yk2aH97bhtI4xjniVerak21qkTajEEzfS+tzWQjCuqlj7nkOvUb7JJbe8o42chh49n
	O1loHLrdKEs4SGELSeaiwp5wHl7VXo47UWenXYH5/ev9Om0M49vQ5pGEngm5J/sKruRzmFALijm
	R9e3AZ3XO8LGu3w2fnlDL6XWKwdOzlx1SIwjF05AXtFEtKLjujjVKaxpxwlKowWbWhLrFn3o/+U
	4mN/RoT73GA0tfkAjBmzI0voxIww/RgPQ2MeDwawt2Sx4Zg7bTVzbzVlH/AUbub7TV73KnlGd5T
	uX1WlmIjqE6JIeRLmqINgLBk=
X-Received: by 2002:a17:903:249:b0:297:f527:885f with SMTP id d9443c01a7336-2985a40c7c7mr86057065ad.0.1763122140877;
        Fri, 14 Nov 2025 04:09:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSRcXduJStRkEjpIaI8wBB1y+r2W3c+GWZP9UFC0BdilfKeLYl63dIZH4/YZaDyD3wEO6ndw==
X-Received: by 2002:a17:903:249:b0:297:f527:885f with SMTP id d9443c01a7336-2985a40c7c7mr86056405ad.0.1763122140280;
        Fri, 14 Nov 2025 04:09:00 -0800 (PST)
Received: from [192.168.1.8] ([106.222.229.203])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b921cb6f44sm5156759b3a.0.2025.11.14.04.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 04:08:59 -0800 (PST)
Message-ID: <e0e82b22-ecef-4136-834b-ea4a6b00e179@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 17:38:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] dt-bindings: display/msm/rgmu: Document A612 RGMU
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <jie.zhang@oss.qualcomm.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-3-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251110-persimmon-wombat-of-holiness-6b3f9c@kuoka>
 <f08c8707-eb72-4689-b53b-acd6e3218836@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <f08c8707-eb72-4689-b53b-acd6e3218836@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IOAPywvG c=1 sm=1 tr=0 ts=69171bdd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=UUXEStRZTiKyGgBwSCQbmw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=UXIAUNObAAAA:8 a=EUspDBNiAAAA:8
 a=VxizJ4rqJv6xgcLMcuIA:9 a=QEXdDO2ut3YA:10 a=bFq2RbqkfqsA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22 a=a1s67YnXd6TbAZZNj1wK:22
 a=poXaRoVlC6wW9_mwW8W4:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA5NyBTYWx0ZWRfX49LJttJLKTUH
 R7Eu/uJcGOiENaGYpOp5p6ps0QtgROVR+X+UidLh6vwQM3ALJOZAZawHS+g+IuRZT/meoKAxMsE
 6WyKXc81/coknp7zlaErpg0nehlpDOsoD5tVj1RzGUhhYaymyfENFeGlXYVBoMfdTidMwnK6rZO
 /d1OG64dWrORb8yOsC+p4IZsFo+9+8aVXKaHjM92LrDOLN+qu6eEaYmAeFj34SgI986AVzHvA/R
 TbYD1e5EH/oT1db3aPX5VuesB+32uF12AtVv5GOTSQLYPsGCi6tHVq5LQFN50ja9boRAMFlXhJ3
 4t8uqvOpAWp4bVbpw+dYJx0SlmLCUB9VEwFmBfchE0lR3cbfxuMb7Wz+rep5NmLYoVAiKKZ0DPn
 2XK9Q9Q0J4OvretmYNmeEDU13HGmkA==
X-Proofpoint-GUID: i9zH9T5xAt52W3BGPnuv5uYzsYfSChkE
X-Proofpoint-ORIG-GUID: i9zH9T5xAt52W3BGPnuv5uYzsYfSChkE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140097

On 11/14/2025 5:30 PM, Akhil P Oommen wrote:
> On 11/10/2025 1:21 PM, Krzysztof Kozlowski wrote:
>> On Fri, Nov 07, 2025 at 02:20:08AM +0530, Akhil P Oommen wrote:
>>> From: Jie Zhang <jie.zhang@oss.qualcomm.com>
>>>
>>> RGMU a.k.a Reduced Graphics Management Unit is a small state machine
>>> with the sole purpose of providing IFPC (Inter Frame Power Collapse)
>>> support. Compared to GMU, it doesn't manage GPU clock, voltage
>>> scaling, bw voting or any other functionalities. All it does is detect
>>> an idle GPU and toggle the GDSC switch. As it doesn't access DDR space,
>>> it doesn't require iommu.
>>>
>>> So far, only Adreno 612 GPU has an RGMU core. Document RGMU in the GMU's
>>> schema.
>>>
>>> Signed-off-by: Jie Zhang <jie.zhang@oss.qualcomm.com>
>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>> ---
>>>  .../devicetree/bindings/display/msm/rgmu.yaml      | 131 +++++++++++++++++++++
>>>  MAINTAINERS                                        |   1 +
>>>  2 files changed, 132 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/msm/rgmu.yaml b/Documentation/devicetree/bindings/display/msm/rgmu.yaml
>>> new file mode 100644
>>> index 000000000000..7621556477d0
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/msm/rgmu.yaml
>>
>> Filename matching compatible, so qcom,adreno-rgmu.yaml
>>
>>
>>> @@ -0,0 +1,131 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>> +# Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>> +%YAML 1.2
>>> +---
>>> +
>>> +$id: http://devicetree.org/schemas/display/msm/rgmu.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: RGMU attached to certain Adreno GPUs
>>> +
>>> +maintainers:
>>> +  - Rob Clark <robin.clark@oss.qualcomm.com>
>>> +
>>> +description: |
>>
>> Do not need '|' unless you need to preserve formatting.
>>
>>> +  RGMU (Reduced Graphics Management Unit) IP is present in some GPUs that
>>> +  belong to Adreno A6xx family. It is a small state machine that helps to
>>> +  toggle the GX GDSC (connected to CX rail) to implement IFPC feature and save
>>> +  power.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - const: qcom,adreno-rgmu-612.0
>>> +      - const: qcom,adreno-rgmu
>>> +
>>> +  reg:
>>> +    items:
>>> +      - description: Core RGMU registers
>>> +
>>> +  reg-names:
>>> +    items:
>>> +      - const: gmu
>>
>> Drop reg-names, useless for one entry with same name as the block name.
> 
> Just to confirm, drop only reg-names, but keep 'reg'?

Wait. We should keep 'reg'.

If we remove 'reg-names' here, we cannot use reg-names in DT too because
we are setting additionalProperties to False, right?

-Akhil.

> 
> -Akhil
> 
>>
>>> +
>>> +  clocks:
>>> +    items:
>>> +      - description: GMU clock
>>> +      - description: GPU CX clock
>>> +      - description: GPU AXI clock
>>> +      - description: GPU MEMNOC clock
>>> +      - description: GPU SMMU vote clock
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: gmu
>>> +      - const: cxo
>>> +      - const: axi
>>> +      - const: memnoc
>>> +      - const: smmu_vote
>>> +
>>> +  power-domains:
>>> +    items:
>>> +      - description: CX GDSC power domain
>>> +      - description: GX GDSC power domain
>>> +
>>> +  power-domain-names:
>>> +    items:
>>> +      - const: cx
>>> +      - const: gx
>>> +
>>> +  interrupts:
>>> +    items:
>>> +      - description: GMU OOB interrupt
>>> +      - description: GMU interrupt
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: oob
>>> +      - const: gmu
>>> +
>>> +  operating-points-v2: true
>>> +  opp-table:
>>> +    type: object
>>> +
>>> +required:
>>
>> compatible
>>
>>> +  - reg
>>> +  - reg-names
>>> +  - clocks
>>> +  - clock-names
>>> +  - power-domains
>>> +  - power-domain-names
>>> +  - interrupts
>>> +  - interrupt-names
>>
>> Keep the same order as in properties.
>>
>>> +  - operating-points-v2
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/qcom,qcs615-gpucc.h>
>>> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>>> +
>>> +    rgmu: rgmu@506a000 {
>>
>> Drop label.
>>
>> Node names should be generic. See also an explanation and list of
>> examples (not exhaustive) in DT specification:
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>> If you cannot find a name matching your device, please check in kernel
>> sources for similar cases or you can grow the spec (via pull request to
>> DT spec repo).
>>
>> Best regards,
>> Krzysztof
>>
> 


