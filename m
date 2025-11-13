Return-Path: <devicetree+bounces-237911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCAC559B0
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B1883A88EB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 03:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E682D94A6;
	Thu, 13 Nov 2025 03:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hG95+bLS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K1ks9hSf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9E29D293
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763006270; cv=none; b=A0Lrk/UMiihZ0T7pD0U2/VD+muq9P86LTtQDaPOtAzBJo34ZZq+PIk+BaOCiDydIVYwdryad2i/Mg5ab3MeXD28bk6GoFgBMIwjf4olAUQifsAJ6XPao01DQR1vgGW/8WppmHofYnXpKN6UoJ7JOZL0OYWjWQ+4cyC2agk8R68w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763006270; c=relaxed/simple;
	bh=5ACerTRITHaR7iMg8eezglL1j18rhtwjVIwxI61jjPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WLBsWvOg/JbcwOFCk3gKc/Yrk6rCHJxB40uUgpHhxiRf8ixsAnjMVNGaNP4p1nYy7eM0Bm0fmN65rIf5p2hVHCKSowpU6KjloPt/hA3jofCzDfClPKKM07TTu3V8fLv+RGEjUpO1UzACyUY9MC0yC6M0atoDgSBZhmoLSGXcp4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hG95+bLS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K1ks9hSf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11Bbc2869130
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vGwPUge2YEPjjd039uXPYVYhS/a+SQX0HemxIV9Dfyw=; b=hG95+bLS3Q5XhZWm
	09JlRJyWWqEQOL5kWvk3C9zrMV3Tr24rWdvAknnbhkLA6Fvd8U5aL5YzKypSFMU8
	tr19b3/MTkgQYBd1dykfG+UIrIbW8HsWtFCE+/Tg40hcBMiFOpiXF3b5Ilbg5ieD
	7H/0YmDRZZrHzyjhH5OdmTarIMQrpnfyIRC53ftbWQRO9HQQjsicjoMX0kgrbiq0
	LVid+OXXoIkECI41/y9VE0MEB23zcheuRzHlokRYdp8kItMrKWkgUx4oqNXF/dQY
	fd93+1DccbNfNcOW9BCt3qc6BMZ6d4O5ik50eBV2WW5iU9pT3banFAlm3Dp0Mzl/
	ZNTKRg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqurb3hn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:57:45 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b8973c4608so975566b3a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 19:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763006264; x=1763611064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vGwPUge2YEPjjd039uXPYVYhS/a+SQX0HemxIV9Dfyw=;
        b=K1ks9hSf6ngssvCSE+a0AhBvbprdkZZtThUI0Yup8xWAtjvUF7XjUqfu0svOMuqL89
         LqvVqNDnXl6KiOwVpXc7K/frNgKADojpRjFvXC70L6VdyGcGU++CCd8IOa9x2gTeDYxq
         B3e9ZVebNYfPOEU3VZ1dRA8OY4n2LQwNZQ2KJ21tSZ+P1jsjcK3NLeZPXSyJPx7r1sl4
         kTVHLW4vlCDWxFWvY8pikTR25ycpKdAIigRw1+TnOsJOJsc32Qi1JQ51ayR5U0Y1rRRp
         59vmXcu7hFfx0oStILUz6gtxIkfwxOuoPAOSK6IBM7nx8x+IZMvFSrrx5NxKOKr+4zL+
         S0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763006264; x=1763611064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vGwPUge2YEPjjd039uXPYVYhS/a+SQX0HemxIV9Dfyw=;
        b=bBcWO13i5EI1RJklVfjxrlupZSkZ8L7KQql3/a9YdPKCTRDlk5gTMXdTZ5RWey7XR+
         z9dFl096MhxPeIVf8oVGZcztQ/WZyFgVXXCtHqSOw2NESe83F29fAP62g3+N86C87YpN
         uCk6lg7k269vGcjEuPF2yhTuz02puLS0owheSGtVe1q1ovu3+8CBoiM7CVTketDc935Q
         GHExZMrQkAR7TyqutrPetnATLzeiwq5TujiGBTpmS/ZoIH0zPTJlp1O2+nwNNGypSGFF
         S73mSR9p6OnToBu+Wu1ui1bTMy3Nf66zBiGrwPNA7bv4pEDqXcmLR8+FPi0ovzMInX/c
         nHvg==
X-Forwarded-Encrypted: i=1; AJvYcCWgZUm8rPC/oyi0+7hAgWVLD55bM+QMwKlbPTNyXYkpEwtCom+jx/ulybTqWKs3ADqqpQimZt71rFIW@vger.kernel.org
X-Gm-Message-State: AOJu0YzAWaFZED1NQ6ZLoFLeCRBofavXQHtA40QGfkjFJaz7ijAHccyS
	gt7ce4ffkmJQ0WZUiQGcwvh+jlAmlVQsn1njIwWjba4w4QHAnYtveNU7AWMvZA3ECEeeA+d9UVI
	gtK775DGXIeWH+xX2SRoA1pFcna/jbM6U8VzYfUOWuEDplARZMQPfmeUZCHX5w7rk
X-Gm-Gg: ASbGncsPu7a0m7nsXnazOhZTYgZRzqyl241t9iL4406zJPmT6A/czA32v5rcYufLDFg
	3N95LbNQBi9DPEeQJrUdiiFGb8/vCxBMo94LiF7FSccxXokgATLP6THggUFVEFT6tdns0/+GzEr
	SauXuLQ4FUyGgLKDn290obPOAUV918rHQSiCkxWgvCTttChdrdAW9jV29jss8Nx4GhxQqa2+naS
	M2+yhSdvfz7ypnUsi780MfL07pUCVObm0PZBbYpInteqHEpOEIGqVap5vyjGmdb75rIoEh9ge09
	J9LdbjKPQQQD3lwmXBhac9Z9N8L9DM7/9U/aCzcKa1EbKMk1/QMVSZRvEiYeqoy/1ipTqQhu2Pe
	OneRvv+tQGnO+jgO4NI0c8C81cW2Erp8=
X-Received: by 2002:a05:6a00:1399:b0:7b6:363b:c678 with SMTP id d2e1a72fcca58-7b7a27a429amr6423955b3a.6.1763006264028;
        Wed, 12 Nov 2025 19:57:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7IduW8OEUCs1R9PNoNwVWicsKHQ9VQ4Fd1cEmT7M2Z91KTvLlfdEdEG5Ogm2o7odqrbFCWg==
X-Received: by 2002:a05:6a00:1399:b0:7b6:363b:c678 with SMTP id d2e1a72fcca58-7b7a27a429amr6423928b3a.6.1763006263552;
        Wed, 12 Nov 2025 19:57:43 -0800 (PST)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9250cda04sm603906b3a.19.2025.11.12.19.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 19:57:43 -0800 (PST)
Message-ID: <d6a33801-d4fe-40fc-ae19-6a2ce83e5773@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 09:27:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v8 0/5] PCI: dwc: Add ECAM support with iATU
 configuration
To: Bjorn Andersson <andersson@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250828-ecam_v4-v8-0-92a30e0fa02d@oss.qualcomm.com>
 <176160465177.73268.9869510926279916233.b4-ty@kernel.org>
 <e9306983-e2df-4235-a58b-e0b451380b52@oss.qualcomm.com>
 <zovd3p46jmyitqyr5obsvvmxj3sa3lcaczmnv4iskhos44klhk@gk6c55ndeklr>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <zovd3p46jmyitqyr5obsvvmxj3sa3lcaczmnv4iskhos44klhk@gk6c55ndeklr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyNCBTYWx0ZWRfX62mKYLPvm5dA
 ume/G8wsXVpn+oyQwho33yNB6S1JfrkMwc1aR9lAQuvPUo4Np0EHA8J94Fa8v+bD8DYoDpg3XK+
 sMa4ZSdKf6SVP+CbEQe4iD4wCT+bp38NEB4s5mPa98XV+4WP/77iv1ElzJtk9bF0X9RAqEIbrQ3
 0GoS1Z30OFsymp5NyyXyAPtfSea7Y4xYwWw1HmEJu4reyKG/kSHIVf7izMzBd7gbVJxRKILh3OX
 XAU0oMYz8r2hIanfxbQ/xI1ICZuqPJXOd+65R2oHygdZkBJM9TZ/6po1SD1jpz4VbgHQbvVy7bS
 lnRrBC8mD46Pk2HKEBogA8dx3hJD0inOis6a+ciiF5GMl9V6PXjF6Q8P1hXmG22W0iNHDWiskhw
 SHlo9USzwEtEpQgjWZoUU8YcMHAzyQ==
X-Proofpoint-GUID: 63DtCEqX79Ng47mkdi69MQRrJeXL6osD
X-Authority-Analysis: v=2.4 cv=bbBmkePB c=1 sm=1 tr=0 ts=69155739 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=oNbEpEU07NhVOHX3m2YA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 63DtCEqX79Ng47mkdi69MQRrJeXL6osD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130024


On 11/10/2025 11:51 PM, Bjorn Andersson wrote:
> On Tue, Oct 28, 2025 at 11:12:23PM +0530, Krishna Chaitanya Chundru wrote:
>> On 10/28/2025 4:07 AM, Bjorn Andersson wrote:
>>> On Thu, 28 Aug 2025 13:04:21 +0530, Krishna Chaitanya Chundru wrote:
>>>> The current implementation requires iATU for every configuration
>>>> space access which increases latency & cpu utilization.
>>>>
>>>> Designware databook 5.20a, section 3.10.10.3 says about CFG Shift Feature,
>>>> which shifts/maps the BDF (bits [31:16] of the third header DWORD, which
>>>> would be matched against the Base and Limit addresses) of the incoming
>>>> CfgRd0/CfgWr0 down to bits[27:12]of the translated address.
>>>>
>>>> [...]
>>> Applied, thanks!
>>>
>>> [1/5] arm64: dts: qcom: sc7280: Increase config size to 256MB for ECAM feature
>>>         commit: 03e928442d469f7d8dafc549638730647202d9ce
>> Hi Bjorn,
>>
>> Can you revert this change, this is regression due to this series due to
>> that we have change the logic,
> How is that possible? This is patch 1 in the series, by definition it
> doesn't have any outstanding dependencies.
The regression is due to the drivers changes on non qcom platforms.

- Krishna Chaitanya.
> I've reverted the change.
>
> Regards,
> Bjorn
>
>> we need to update the dtsi accordingly, I will send a separate for all
>> controllers to enable this ECAM feature.
>>
>> - Krishna Chaitanya.
>>
>>
>>> Best regards,

