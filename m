Return-Path: <devicetree+bounces-242956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EED39C91A73
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BF9483537DE
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49B0830C35F;
	Fri, 28 Nov 2025 10:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PZEbDkb+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rid6ZssV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBCD30506A
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325802; cv=none; b=qDnb7mKR/8e+kIrj0FIeeFUnE4ujppC5lC1aisZItyaA/rCcm7JGFTAR2xnB0tEfOUyEBR3fyC5oUiPXfQi4tQMao9xPYDWLC9DomEVypG9WxSX+l8j1g55psiTh6iPxW5VU1MYsf2dtGvYf9Xe2P8JiXErgSCtjo1SBv+iSHrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325802; c=relaxed/simple;
	bh=QfMmY4fq4h2LlmMXfo3q1cgha5XABUgcuWxRZ0moGEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dEUIppW2Md07d/16LUPspkrGhjH1QkgKpOD2DdD9KNcZ/iA6EZGWL0TZrTL1fzBot7m/4cc43DeiIR9fewnpRQEQ/kuLNc43grVjtNjiFge3ZmyID8lBbp6K/zH/hhb9EwyVVEdMXqj/u9thtUaeHnHkR9qwEYTNXYUelImWAaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PZEbDkb+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rid6ZssV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8P94b2986617
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oXYe6mkEGh2S9MaO3kzaYD413h5MGkk3YZfCvxtE4L4=; b=PZEbDkb+BqjLoTmE
	IbyuGH7VoaiCQvyTQmkFm2FKHTF90Di7/MYUopCAr4Tr/LYRuRClgR+kiafJ7O6+
	zIJwf9VF5vwC8zMMic8OLgG9XYbSqfuc9OVEXxFPj7XM3zvD0Dfsk6rM5PB0HZ/D
	F09gDc/9wIkJ5VVBgkuqS/DnJE/7YpQjOhHzMgJuKW1mZIJdvqLt8+MIE8HX2vjm
	2cFLeuoZx3xg73U62D9Y8mIX2o42NbybzMWlN0dDZN6EsfNB1nWGLtah+keJTAKO
	I7qLApzCDw3wlkk79f8qD6vORwb3q5QHThU0cr36hiKgrRIBNg4ud7RbnnQnwFLR
	bbxynQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmvxjyky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:29:59 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34377900dbcso2998439a91.2
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 02:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764325799; x=1764930599; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oXYe6mkEGh2S9MaO3kzaYD413h5MGkk3YZfCvxtE4L4=;
        b=Rid6ZssVO4RaiJi5tBDE6b+CZNJZ1J2BzLRyzDMXYTiICahq/k/Lswl3bTTb4YINtQ
         5fe8RRK8FUHRlUBv3ID2afAqVSn5pqCvEM/aSCDYHTNuRzjS59LiyXBIzO5TmxK17xy8
         PjvXRiaq6pwIHNLJ9ps+gbpSgixsPrDTvX8B++2LOwkc5pgBY+TjPtYlLKIsjWlpjP8b
         BNqwa3rKXVU4X0FMftUx3jlenbU/AkL28XfxU32Hj0Zwe0tmeBvlAg7tU0x0v7vd87XW
         vb+TFSMuWjbuOPHjgLL3MKtBuAsCndRfR8ZFjUYX2znDkGtk85wj027QLVnzrazKy9Nf
         ucww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764325799; x=1764930599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oXYe6mkEGh2S9MaO3kzaYD413h5MGkk3YZfCvxtE4L4=;
        b=NIv3Uo1LEQoCwFjXWmu7x+N4IilCQK0DHiqIdDU8AoPYnyo20xbcYszdR+9CZeSHHQ
         GO/FcNoq+aIsjVvoMn77nTsHaM29OSNdGEn8r4pB/IzoG7dAzBhLi9o+U5d9tKug1bDT
         vymHm2VDqJyVdC/V7Q5C7u7HGbw74GJabx4Gd0qcNtt/tK5paEkQvrE0KkopeA8uGQxk
         +1ABOOVtUPNvdPMrVcVa4q16xuuongJeQmvzI6hHJoE3V4eIDQGAEQehKp+kYCdvJ4pJ
         pB6rcW4Yrc0JSGs9tYwvBVaauoJWdVTlPpfLy82psOZ3EX9VpsxREi36gao/1+fHs37G
         6tYA==
X-Forwarded-Encrypted: i=1; AJvYcCVP8V7bTifHW0usyFDFY7GrF09Xu4UazShgnDGLCVkqkTyOeJ8kdS9iSFVLY8sWc2T+tBioz8VGb33i@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy7uwJGAxulWCdE9t6AUnOMeiV+NunZDqXDYOPtK8aoCbuT6YV
	MoTluTnZCEnSCquuGyuIXOkTkCaMiPJ7MtUhwwg2KYbQJpB6H0JN0w3ImSYp/mQ+wEZCdyzYRCg
	bdlSJAzxfymMzEWLz/sPo3IvI+em/O7M0XrzbMysPsQIBg+TKf6756PEcFwJGpMZY
X-Gm-Gg: ASbGncsPjIx8qvxN08gpuiLSOzOb4fvzPBAS+PIZJTrEHlK9nvlM2gNC/sUiYlNdysr
	aGMYMlpV3gPSWkEhJeJZ33x4DBysX7lVQxcb05RJYY9hwCMlall/C3gy2tc90BLX2kviUaZqT1i
	eZj5cgLbMo334/ArjbnqzEma66jSJvGrd9YQowo/vdane1zKvhGh228nKOEILZHvEf0DeZ9TjEz
	VyvSOSKheyLB2n1Z90Ll76ZCdtaVFA8cmyw75kxx1QGjfpKd9eTN/Fq/IZwHhL0r5vHmwLIneOF
	UdE21UKEfX173+xQmPGsDzB+D11SMOwdixmH+xhbilrfjKjdysF7LbIsnA/ZrSM2zu/UMWfAcIn
	P8Br5Jcvrx1MYWl8YNgL0wp7gtdxWq0uGjmNYPm/ELYjdtJrS60zLMQ+EPG20+36/1Qb98b4=
X-Received: by 2002:a17:90b:394d:b0:343:e461:9022 with SMTP id 98e67ed59e1d1-34733f22796mr26448524a91.24.1764325799187;
        Fri, 28 Nov 2025 02:29:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFnfkDhmgbQ0LMgayTlYteKh7N8FsF3Rt/LG7x/fvdcW32kWh6oGAoVP9/VCmIhe3SG1L3ow==
X-Received: by 2002:a17:90b:394d:b0:343:e461:9022 with SMTP id 98e67ed59e1d1-34733f22796mr26448490a91.24.1764325798699;
        Fri, 28 Nov 2025 02:29:58 -0800 (PST)
Received: from ?IPV6:2401:4900:1c27:6704:8849:8c0d:18ec:2263? ([2401:4900:1c27:6704:8849:8c0d:18ec:2263])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-347600de37dsm4371267a91.14.2025.11.28.02.29.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 02:29:58 -0800 (PST)
Message-ID: <a6a172bc-9f76-4e12-8925-35319baabb62@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 15:59:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
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
        devicetree@vger.kernel.org
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-qcs615-spin-2-v3-2-9f4d4c87f51d@oss.qualcomm.com>
 <20251122-savvy-camouflaged-chinchilla-f600ce@kuoka>
 <1207b70e-dcf1-47cf-be26-ff2928932e3e@oss.qualcomm.com>
 <89601075-a312-478e-925d-3cc0b1e9471a@kernel.org>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <89601075-a312-478e-925d-3cc0b1e9471a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vtguwu2n c=1 sm=1 tr=0 ts=692979a7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8vLtEHPTFFeNd2o-lkcA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 7GiE5LMwDkcVmwGzF_RIOQFpbokZG9pt
X-Proofpoint-ORIG-GUID: 7GiE5LMwDkcVmwGzF_RIOQFpbokZG9pt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA3NiBTYWx0ZWRfXxs3Xx+wlao8e
 wjf6+/LOuQvIoJQ3L43GDN7XggbCSQdQh2jVV1VuB4Zt9Kf3NYYBIcgdFlQJtpdWolhMfHrBtWp
 QWS/7SjvNQRZIEwatgDA6QqAG4GdQJ0aVzUoqnHunCeTPz9n+tGX9DvPXiH6NPqD+AKmzljZBka
 TzIwfBYP5kMxbJ2vosMJH0s56p5rsw1R2sq8LaKI1cTi6/MWuNTcDt+u4RbNlDrS5EIGVgoxXBt
 gkAX+huial1nWhDsLJQ5niMd2w7NiHEpthFnzJncaL4StLWYOMmGcw5EEQDX3osLv8kTyBr1i/7
 vAQAi7noyXtmcJJ7l0HAFoUa8NWxBcsu4T8DLHVaORJuWlM4s/EUhtPQ2lJiHcupSF0uqSFVoIT
 dg3a7NKlBUdnnjKdkNejmYmfujI6Gw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280076

On 11/25/2025 1:28 PM, Krzysztof Kozlowski wrote:
> On 24/11/2025 22:39, Akhil P Oommen wrote:
>> On 11/22/2025 4:32 PM, Krzysztof Kozlowski wrote:
>>> On Sat, Nov 22, 2025 at 03:22:16AM +0530, Akhil P Oommen wrote:
>>>> +
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            const: qcom,adreno-612.0
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          items:
>>>> +            - description: GPU Core clock
>>>> +
>>>> +        clock-names:
>>>> +          items:
>>>> +            - const: core
>>>> +
>>>> +      required:
>>>> +        - clocks
>>>> +        - clock-names
>>>> +
>>>>      else:
>>>
>>> I am pretty sure you break not only intention/logic behindi this else,
>>> but actually cause real warnings to appear.
>>>
>>> The else was intentional, right? So the pattern further will not match
>>> some of devices defined in if:. Now else is for different part, so only
>>> 612 out of these devices is excluded.
>>>
>>> There is a reason we do not want ever else:if: in bindings. If it
>>> appeared, sure, maybe there is some benefit of it, but it means you need
>>> to be more careful now.
>>
>> Aah! I missed that this comes under an 'allOf'. Not an expert in this
> 
> The allOf does not matter here. If these were separate if:then: then it
> would be the same.
> 
>> syntax, does moving this entire block under an 'else' make sense? Or is
> 
> No, never nest blocks.
> 
>> there a saner alternative?
> 
> Not sure, I don't remember the code. Original code was not easy to read,
> with your changes it will not be easier. So the only alternative I see
> is to make it simple and obvious.

Could you please confirm if the below change would be okay?

@@ -384,6 +384,31 @@ allOf:

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,adreno-610.0
              - qcom,adreno-619.1
              - qcom,adreno-07000200
    then:
      properties:
        clocks:
          minItems: 6
          maxItems: 6

        clock-names:
          items:
            - const: core
              description: GPU Core clock
            - const: iface
              description: GPU Interface clock
            - const: mem_iface
              description: GPU Memory Interface clock
            - const: alt_mem_iface
              description: GPU Alternative Memory Interface clock
            - const: gmu
              description: CX GMU clock
            - const: xo
              description: GPUCC clocksource clock

        reg-names:
          minItems: 1
          items:
             - const: kgsl_3d0_reg_memory
             - const: cx_dbgc

+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-612.0
+    then:
+      properties:
+        clocks:
+          items:
+            - description: GPU Core clock
+
+        clock-names:
+          items:
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,adreno-610.0
+              - qcom,adreno-612.0
+              - qcom,adreno-619.1
+              - qcom,adreno-07000200
+    then:
      required:
        - clocks
        - clock-names

    else:
      if:
        properties:
          compatible:
            contains:
              oneOf:
                - pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]+$'
                - pattern: '^qcom,adreno-[0-9a-f]{8}$'

      then: # Starting with A6xx, the clocks are usually defined in the
        properties:
          clocks: false
          clock-names: false

          reg-names:
            minItems: 1
            items:
              - const: kgsl_3d0_reg_memory
              - const: cx_mem
              - const: cx_dbgc

-Akhil

> 
> 
> Best regards,
> Krzysztof


