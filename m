Return-Path: <devicetree+bounces-201003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7011CB16EF5
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAE847B4D84
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16308290DAC;
	Thu, 31 Jul 2025 09:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tb3mfCR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED4524293F
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753955246; cv=none; b=jvhxUXjq7Frd9ccnPclGEz4YGvGLOPwpZ0PV6WekA0Dk74ECqWqtM3psi0Wy9ddnq3XR94qSK7ZcY0kNUPikCOsyQmPBbmovyNbOf2k9yZW01zdVJcRGhgpkmUDOg3AsOlnsbjW1N22/0Rnc7SRmyBoSiCpKIZElgbcRmaXpPUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753955246; c=relaxed/simple;
	bh=IBhBDCDc/hoa49pnfAR+QKQXMndrQBzqnwNrRd0+l6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HeNVliWeIEA4tNNomXYE4JPuifVnsyBQMECfGGw/E+kL4Zp8bVRyb0C/iL/xGi2q9QPdQnlp1YTJGmZJj8V7DGJV1BlEMH2VIat+OKA4Q8X7FUjD5nKjvYsq5E8DdLKe+3VresumvEfcs5cwqOquBGa6boQteuvvKSwolwzKmoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tb3mfCR7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56V9fJoD007942
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0MKDZZ+5agMe9RsKHF0PqKWkUAHGtARi3inVO2hvokQ=; b=Tb3mfCR7428xlzQH
	ZUdxLhxqHLPl8IvDnzHOAiMiT3cElfWFWO7XgwLGbhoibwJvBEBz4lKC+ByoeTZz
	PbzE1qJKwq6XF/fvsBsz5Tz9xUV4hOIksekA83Z8ELZma87NEza+8BnaFlsZ025m
	jobPqz8G13bC+bV9M9i5yTEVQud+MgKg5+jhdu/6sc0zY0WrBB63VWSHIZAwBz3z
	lNYDbfhfWJ5rvWCjjEITV235eVFk6eTCPLI3O85TUYYLTBLFkvVKD7KXlhZeeEKv
	p3pRq/Pcmyq6qWHyZvL+DS7JJkpaQ6DXP9lftUMyX9XBmowlxQfu3hqGB7kuzZAe
	O6ZA6g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 485v1xmq3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 09:47:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e33e133f42so24615985a.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 02:47:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753955242; x=1754560042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0MKDZZ+5agMe9RsKHF0PqKWkUAHGtARi3inVO2hvokQ=;
        b=X8PMv6TpZzGny+yrS4sz5RBD1xSCZrPUcQAKuiLiheH15ssHw04hHu+ebptCv8waYH
         otkpOPRxSe7CE+ggNAMHNA/ylpguIci9BYYXzeozlhMANBFmp1bzomVIscLkZRCeGwb5
         vg81vv9KFoUkQUEMob9nSoMz9578plJmFAcVIZPRmZRnK3stMG8UiOunR0N/fPep7Wly
         ZlDDA4Qr8u47MOlbTFye6KCIc06GdMM9qlpPcYMa0f3/oMLrU8GXxL6MNJvBuUhBsi2l
         2dj8mF54Y+QEFtzCgAxIECHOiU1yKoJVelW66rQqSs20qEfiOwhwuXDOWaXyzhG77EJF
         WjSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPBr2ULQucqC+vjMf16OKgYSsgZtnQi1tNNtSKPWyYwVXGvEVrSfabyTYDqNgXSkBvFFhxNFkJkZqR@vger.kernel.org
X-Gm-Message-State: AOJu0YzWRscnrqK5ZaeY8ZVZoSw2a8KzaeVqTLRkqFZLEg5RyK+opSaV
	yzf2p9zOKMHUvX/Tp+D6wFEZcHr6sGEs32+qXCIGa+OD53W+QkkyMJ8oVESjN+DXhxefLXAcUFv
	TK79y9UBon/gC+cM7byBI27e6iMubtb28Ugt19uP8ro0tVg+/38Y59DdX0k/QdNRb
X-Gm-Gg: ASbGnctWHqESy9wuoRLJVBsPWAmElvE4qqleIPNUzPFDGdhu4Pu3AKLZ8S3fq+crpok
	uJPkeJv5wDG1k37GMcLOO8vij6oOWxREsTPctmI/Wkxd/5wIutsovd84eXJJxwf1snyzTIc+4/r
	BjQirUBXLWQHooat0lDjBNBys+RB+FphSkWUYbuwhBVzXxKsHlW6CVg9mAtvRnEDrKgV4G5sv9t
	1R/NAwB4Don/tMb6v1kq6l7tP6ILmAQUpIlPfK0Xg1CV3hnZsPyH8FiaAy74UugMQfbu8Xiolpe
	oywLbXJVSsBpwTB1nfHAgNxg82t9q5uQ+GKOZJtqj7epTKdd48oW3Ukc28njxl9qnWRTJCOyEha
	yGyIdaw5J9/smhYBI1w==
X-Received: by 2002:a05:620a:288d:b0:7e2:1609:a19a with SMTP id af79cd13be357-7e66f3463e9mr498343685a.8.1753955242153;
        Thu, 31 Jul 2025 02:47:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGETYpvGC8UoS+TadB6s1Bo0qeg/xDdxI9K0XTqqvffUNRJhuCXS6dOJHD8ewe0In6BBqm7+g==
X-Received: by 2002:a05:620a:288d:b0:7e2:1609:a19a with SMTP id af79cd13be357-7e66f3463e9mr498341485a.8.1753955241670;
        Thu, 31 Jul 2025 02:47:21 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a1e88desm82062066b.71.2025.07.31.02.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 02:47:20 -0700 (PDT)
Message-ID: <f6b16d1d-3730-46d1-81aa-bfaf09c20754@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 11:47:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Alex Elder <elder@riscstar.com>
References: <20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com>
 <20250527-topic-ipa_imem-v2-1-6d1aad91b841@oss.qualcomm.com>
 <97724a4d-fad5-4e98-b415-985e5f19f911@kernel.org>
 <e7ee4653-194c-417a-9eda-2666e9f5244d@oss.qualcomm.com>
 <68622599-02d0-45ca-82f5-cf321c153cde@kernel.org>
 <bf78d681-723b-4372-86e0-c0643ecc2399@oss.qualcomm.com>
 <62b0f514-a8a9-4147-a5c0-da9dbe13ce39@kernel.org>
 <747e5221-0fb1-4081-9e98-94b330ebf8c7@oss.qualcomm.com>
 <e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMxMDA2NyBTYWx0ZWRfX469Z0Sc/DFcl
 JYESs5lJFRGgISi0sT1gReXqzxXweNFWdut0G/lcqCN0JAdvoqV+MGQCL302fnzoPuSRDkHCiH9
 tkNNEPBhMtRr1hE8ywza9V7uLCaht3YKabbr5hRpA8SDC9SxOsBTV47YeOpTuHKxzFvtDvgCS+E
 sn+SKeV76I2Y3Ge+OAgpAny0WM7pvLH6AvzEku0kee1OjObmPNm0RT+dtoB9ZIoDrki711xWWzv
 YZXqimLLKJTYTxivaCVEM6T4JNtxG1Uj+disoBEvUOhgE67XNvNOLxTaemANt6nhLWO8A/cEuR2
 b0JT/iBpbK2pY+bzyDZ52LmQMqEkmx3h508REqtS+Yj7dLXt3AbGWJQZNi38106s0Eg64fiMXHJ
 gKL/oa+QP8vrza75bsyIt5z/VNF2dvifclvWdgvtbZTBpf6spk3lgZwJ3rXdJg6EzCQ3eb/4
X-Authority-Analysis: v=2.4 cv=JKw7s9Kb c=1 sm=1 tr=0 ts=688b3bab cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pyDJoz5GBdBVa8UQv8gA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: n0r9SOeNDIS2CnEd6YKjpHn8wndZIa9p
X-Proofpoint-GUID: n0r9SOeNDIS2CnEd6YKjpHn8wndZIa9p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_01,2025-07-31_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=873 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507310067

On 7/30/25 3:14 PM, Krzysztof Kozlowski wrote:
> On 30/07/2025 14:07, Konrad Dybcio wrote:
>>>>>>>
>>>>>>> Missing additionalProperties: false, which would point you that this is
>>>>>>> incomplete (or useless because empty).
>>>>>>
>>>>>> How do I describe a 'stupid' node that is just a reg?
>>>>> With "reg" - similarly to many syscon bindings.
>>>>
>>>> Is this sort of inline style acceptable, or should I introduce
>>>> a separate file?
>>>
>>> It's fine, assuming that it is desired in general. We do not describe
>>> individual memory regions of syscon nodes and this is a syscon.
>>>
>>> If this is NVMEM (which it looks like), then could use NVMEM bindings to
>>> describe its cells - individual regions. But otherwise we just don't.
>>
>> It's volatile on-chip memory
>>
>>> There are many exceptions in other platforms, mostly old or even
>>> unreviewed by DT maintainers, so they are not a recommended example.
>>>
>>> This would need serious justification WHY you need to describe the
>>> child. Why phandle to the main node is not enough for consumers.
>>
>> It's simply a region of the SRAM, which needs to be IOMMU-mapped in a
>> specific manner (should IMEM move away from syscon+simple-mfd to
>> mmio-sram?). Describing slices is the DT way to pass them (like under
>> NVMEM providers).
> 
> 
> Then this might be not a syscon, IMO. I don't think mixing syscon and
> SRAM is appropriate, even though Linux could treat it very similar.
> 
> syscon is for registers. mmio-sram is for SRAM or other parts of
> non-volatile RAM.
> 
> Indeed you might need to move towards mmio-sram.
> 
>>
>>>
>>> If the reason is - to instantiate child device driver - then as well no.
>>> This has been NAKed on the lists many times - you need resources if the
>>> child should be a separate node. Address space is one resource but not
>>> enough, because it can easily be obtained from the parent/main node.
>>
>> There is no additional driver for this
> 
> Then it is not a simple-mfd...

Indeed it's really not

I found out however that the computer history museum (i.e.
qcom-apq8064-asus-nexus7-flo.dts and qcom-msm8974.dtsi) seems to
have used simple-mfd, so that the subnode (syscon-reboot-mode) is
matched against a driver

The same can be achieved if we stick an of_platform_populate() at
the end of mmio-sram probe - thoughts?

Konrad

