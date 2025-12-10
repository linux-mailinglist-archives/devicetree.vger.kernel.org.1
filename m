Return-Path: <devicetree+bounces-245630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B11CB363D
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B6EF300D64C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781152868AB;
	Wed, 10 Dec 2025 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h0Y9HVXQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MfRoXiR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA3F286D53
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765382182; cv=none; b=TJ4VvAKuGszTkXTaSuRdJlGaqyKFWahp07lWHBsEA4iEj2FKdHvLBM6bHKEc8VnDekJqzm4z0i7XDAerrAm1+ck8jpHNrdM6/UP1MEXyzEgU232un1kZo9SxS6XzKUqQW7sds0xxv9fassr9IyiruNVGDA3gUbhVbYz+EIXjz5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765382182; c=relaxed/simple;
	bh=ptFGaneCWeUbL/tGg+mDVY6nszCKcLCRphTgND14Qvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BlnCb/vwKg0F+2mYizYvUsEixGaA5T0JfXJBfgIpNO6/EgTkM4R/M01W9pLNlpRR1aIbhBkg/gVsILvIuCUEgbSMVTLEFYTgRu7RwQbvGBo9+0XR6wiCqdYr3Ff4RN+QfVrBXTIZlaU4bCMrwZnOdgaqujjjkDF8XPw87+6oXeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h0Y9HVXQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MfRoXiR4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAAPg9o2303314
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+OGRmQE+ixhep3xbt9u4H6AZAUyykWLVpStmzWh+KI4=; b=h0Y9HVXQToj3BazK
	5uJkJpEJdpqdA2BGQlZVhLHE8iOl/pgQXLp2CPgm08cBXSn2KLL/Rj8TV/hciSxA
	OZt14d2EKmo2MROJ77g8YiDoJ7mMrbZCU1+lWnWzmkWBcIMhvQSxIYD/zDAKHHXk
	Z/4ppk8L0KbRXuy3/gP47vU5lHnawSrDThiG5qRa+Yh74cfIzYaHhDeseXNHH72Y
	x1p/smVdxvg65gH6BK1Peu2HVC0VszN9FAI9wdYbhj98nxTpqm6VzKDjfIt0FUhp
	fU6mRyMzC2cQd2iJTdcoe5ILkwspZ+btjOG0Kmwkge2SPuiwuxJe0M1k0gQkqr7Q
	xvyWnA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay73rh0nb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:56:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297dfae179bso186685ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765382179; x=1765986979; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+OGRmQE+ixhep3xbt9u4H6AZAUyykWLVpStmzWh+KI4=;
        b=MfRoXiR4IYwIk8uNRk0Huz7lSFUWsqoJx1lRXmRuU5A2p+g4Nq67hJ2KF5yVGHq8dk
         B14rtDFZw2CABVWCINjPwqUstx9NdJUu1bwF/0p2oIEWsdH0CykJ6GXOkUScldzOR+D8
         z9DsVPkQitdE8Zwohc/e5zGDVrJIsL3O2zkhkhXZ/I8G7sA59f9ZxLTd/W+q6w3GuIpH
         LLXiVbWn8ttVnHlfzRxAxgVNiSPa4KTgBgBePBKDAOc8p+qHf4heyVTh46xdBcekh0MW
         uma8tDOeE/ob2jKK+PPi+B0fmbDpLK8D3Hnyje/4CnhX+bUA4+YpbadbZvYbcyTMNL68
         Kg8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765382179; x=1765986979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+OGRmQE+ixhep3xbt9u4H6AZAUyykWLVpStmzWh+KI4=;
        b=ZB2OK9ctIMD0vXvD4B3oTTWPAuS1JsK/BHinPXa/+xwKWF9ldKnmqxJFHy1O/TuasC
         7YkZ3ke5/+q4jd9UKXmY2fy71cgQ6zFruLz9xYS6zohWJ4tuAa5hiryd8n27hw3+4I0L
         WcLqFdMkK0TKAKmM54TqA1Y84+sGKHCFq3ZODvbVdQAbZ71CSYoyE+AEG+gHbDxFT+e3
         IY7dfeByqpTTlVqUkNMvIGuRUkvmMbeq8+d2LGC5vZbe/gKq/09o+pHIINC2v+4zgHEW
         qGFNi4DY/3oldxb43xsWJXawGyCtPoao4jUvNhhaIaIrFO+c95LbUNukJl9sViWER/UT
         Ndfw==
X-Forwarded-Encrypted: i=1; AJvYcCWowHeMXtYmdFcLUQRIzKIRsP+GB5ehP5VK+5Zan041z/iHSVNwJ1zXDPcS117FHrVArkgEzFiXnjom@vger.kernel.org
X-Gm-Message-State: AOJu0YwjW90/77OIYPCwleMLc6NsTXhS0UogfzNfIPqjdUvnewcvInNy
	y9N5cLAFg0EFurOrGdkVz4Jw2tHQQTWnsP6PfKdRYdK3xhfMr9f6VZj6/dRwPaLaP20OmLJUgae
	ce5yTLp6hRJp2Rsvtpu79XhmHAEyep/cG8iESUTWBBjbcbhxapFn/vHSD7oOfSjB6
X-Gm-Gg: AY/fxX7sVf4H3+Y45RdisO9FUq99dUHdtKNEhwVmmPJ9uuATH1xfCIV6aN+smpY0uw8
	BAkuWgJhm2vGNBjnlqhwyybStX1Q/fqFoggYZAKr855xASHgIqmLvgj7DSfly7yViQ3cM5DSqbs
	H84hIDfE5aFZT0h4O0BdupDNv6tQCJ54lX8fB7ID3ziUcqRrvN/VVkD5pEy1P+u1WjuIwPsUYSM
	lhyKjjsHxlHoetxRvHAhF5ChkFxDy4IooJFQv7A7Z4E/MDk/zWikXojbxUTOBfyq430LHGlh37B
	ZA3eKe+AhIH3wuFgXp3qxLxsBTs0arbTNMiGji0qoKYtlAllIPcPdbSQkBjqiDu97bDfJhhwP5G
	jl6gXXciBdYtybdgHmh6YKD3OXmIO4zRzRrs7
X-Received: by 2002:a17:903:380b:b0:29e:940c:2cdf with SMTP id d9443c01a7336-29ec2d40b57mr28500665ad.36.1765382178558;
        Wed, 10 Dec 2025 07:56:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGA0XvA4RbT7trUTFcloLb7GnQpD6iy+sWQWnl98I717V8RldVFrLMOIKDNwIoWVdnQ1hizTQ==
X-Received: by 2002:a17:903:380b:b0:29e:940c:2cdf with SMTP id d9443c01a7336-29ec2d40b57mr28500315ad.36.1765382178074;
        Wed, 10 Dec 2025 07:56:18 -0800 (PST)
Received: from [10.218.4.141] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf86esm186837595ad.23.2025.12.10.07.56.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 07:56:17 -0800 (PST)
Message-ID: <23580203-3aa7-45af-872f-4bd86f39877b@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 21:26:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/3] dt-bindings: ufs: Document bindings for SA8255P
 UFS Host Controller
To: Bjorn Andersson <andersson@kernel.org>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, quic_ahari@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
 <20251114145646.2291324-3-ram.dwivedi@oss.qualcomm.com>
 <p6a5nazgd74fwbo6c3ctgvwifcigwwn4azkiu7nrmovrn5cmqn@nxzryxyx4oao>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <p6a5nazgd74fwbo6c3ctgvwifcigwwn4azkiu7nrmovrn5cmqn@nxzryxyx4oao>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: pHATB0noFswV7CVWo2jdMrIQN7fvZGRI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOSBTYWx0ZWRfX9oUcH69/x+Y/
 wJ/WXRoCA3MnkI53CG2rQi0QT5hlLLd+0gqxsha473n2wporS5T7C0ee0yz6DCJA/Pa1gTAGIVz
 FSmPTJeJO6lcp/JPR8R4LsRqOaSHzCY2y5h/HxAshObfTMSpk8bZnSP7VLYmwgBml6OiQijMEu3
 iTaSz/16RlIIFCL7vmeexrhwp174Plp5FnekCREAqpOYHIs3VR1nC61U5kKtsMG0VeGsVXOtAAg
 3jY43+GnSS5+tnhtFYD09hOGJndKXdIMIMcuqQ1GThgSHoD7ECPJkbc6WpXF+cwjBIGh7XaBj+k
 D5lvBL9PAY1SIxjy0QI/8wlOMUfyCDcVfG5DzGcfypJIA46yqHBkVtff3wAMQZMh/njqYsNPI4X
 qKmBa5EJ7h7aETlK2bm4CHgRwSRilA==
X-Authority-Analysis: v=2.4 cv=McFhep/f c=1 sm=1 tr=0 ts=69399823 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=I-uMcen_RorggYIV1ZkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: pHATB0noFswV7CVWo2jdMrIQN7fvZGRI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0 bulkscore=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100129



On 15-Nov-25 1:02 AM, Bjorn Andersson wrote:
> On Fri, Nov 14, 2025 at 08:26:45PM +0530, Ram Kumar Dwivedi wrote:
>> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>
>> Document the device tree bindings for UFS host controller on
>> Qualcomm SA8255P platform which integrates firmware-managed
>> resources.
>>
>> The platform firmware implements the SCMI server and manages
>> resources such as the PHY, clocks, regulators and resets via the
>> SCMI power protocol. As a result, the OS-visible DT only describes
>> the controller’s MMIO, interrupt, IOMMU and power-domain interfaces.
>>
>> The generic "qcom,ufshc" and "jedec,ufs-2.0" compatible strings are
>> removed from the binding, since this firmware managed design won't
>> be compatible with the drivers doing full resource management.
>>
>> Co-developed-by: Anjana Hari <quic_ahari@quicinc.com>
>> Signed-off-by: Anjana Hari <quic_ahari@quicinc.com>
>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>> ---
>>  .../bindings/ufs/qcom,sa8255p-ufshc.yaml      | 63 +++++++++++++++++++
>>  1 file changed, 63 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>> new file mode 100644
>> index 000000000000..3b31f6282feb
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sa8255p-ufshc.yaml
>> @@ -0,0 +1,63 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/ufs/qcom,sa8255p-ufshc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8255P UFS Host Controller
>> +
>> +maintainers:
>> +  - Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
>> +  - Anjana Hari <quic_ahari@quicinc.com>
> 
> This should be @oss.qualcomm.com, or @qti.qualcomm.com, not
> @quicinc.com.
> 
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sa8255p-ufshc
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  iommus:
>> +    maxItems: 1
>> +
>> +  dma-coherent:
>> +    type: boolean
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - power-domains
>> +  - iommus
>> +  - dma-coherent
>> +
>> +allOf:
>> +  - $ref: ufs-common.yaml
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
>> +
>> +        ufshc@1d84000 {
>> +            compatible = "qcom,sa8255p-ufshc";
>> +            reg = <0x0 0x01d84000 0x0 0x3000>;
> 
> Drop the two 0x0 and you don't need to change address/size-cells.

Hi Bjorn,

All current Qualcomm chipsets, including lemans, sm8550, sm8650,sm8750,
use a 2-cell format (#address-cells = <2>; #size-cells = <2>;) at the 
SoC level, so I followed the same pattern here for consistency. 
We plan to use the same 2-cell format in the device tree for 
this chipset as well. Please let me know your opinion.

Thanks,
Ram.

> 
> Regards,
> Bjorn
> 
>> +            interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
>> +            lanes-per-direction = <2>;
>> +
>> +            iommus = <&apps_smmu 0x100 0x0>;
>> +            power-domains = <&scmi3_pd 0>;
>> +            dma-coherent;
>> +        };
>> +    };
>> -- 
>> 2.34.1
>>
>>


