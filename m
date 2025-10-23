Return-Path: <devicetree+bounces-230036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC734BFF201
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59FFB19A1439
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 04:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB3023B63C;
	Thu, 23 Oct 2025 04:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EEu4mf3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762D535B122
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761194191; cv=none; b=Evm4LePFl87yaw7l7regf1SKHXCGuqAcX00jd/nMBjtcIxxgWOjO48Sq1mGPDwGMqKcfBqIYdr4pdeXS+Ae9wvfiY2wVUF1Rbg4bIxat+uBrWkrbyu1iSuaG6haRawOp3XXl1V3dCy6XvdHDfgrmxnNsCdYPcWBjmbZyJoIt9oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761194191; c=relaxed/simple;
	bh=q9ZYUwpWsoIG8dAqgBP3NNLQlgwhwwoE4WrO6rM/68w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CZSdL0AGmLooKFP66pxNVLXsGYLLIc5g0EHeSgCNOVTys6krZC5Hii/kt4w6EVjoviyZ/mf64XHfisp9pXr0a6aJP3BlHq8Mr4IQJV0lY6yb/cRrwhDhzKuTVceLhS2YziFo623GydIVJQluh8V38OMuIaYuManFnwVCsuh2O48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EEu4mf3I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIeoGm005790
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:36:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Te/7zwDTfvlL9FM8UAQtQJk/d8U0toBIwktS4I5P+YA=; b=EEu4mf3IUJOCsm0g
	PEFuo6r44ERQH49I8Uv1QoTljIrI7VHSqCEHSD7QCS//CbFpVXy2WSTpxaPCXQcl
	7/AtT0NtNeZb9vd43Tv+whDicH87nsV047Oe1GkgG1uT8t5RN/Wezpem0WzVFAQ4
	7wa7pCLDg0/5Ufnwl+5hujXFPqRYRR3nNSHLIvVmIJKeygIN1fVLqc7Tk09T9uZR
	mIzzaqmZnbN6hHDWWn+GsBoDgGDFdiSCSTlsth9MYg9Q9FxmWJzqbRT8f2oQuDGu
	lydOmwUBqWw+J4ozkGlryt47YbnMlttCS/9JBYSZ73wWxKamK8YbD4SUKD8ng6Sj
	0o4vOw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j6x5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:36:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f5e6a324fso835140b3a.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 21:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761194187; x=1761798987;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Te/7zwDTfvlL9FM8UAQtQJk/d8U0toBIwktS4I5P+YA=;
        b=Bekdipp2h1Ee1aD1xbVQsd6Oipkv3fwjcxnsj+saG204HXojUdJT4XsQIdMjupeh2s
         DadHnBnFpYO1oI0YcmgHRFgw8Ow3rtrX+IC897axo3NXBTjFxXZzRjmplc6WNMpLCOuE
         15edrHuNo5zF/29lF+9CK1Rpc/7msehFPn26damDk6kOaz6kqbxtsi//oyFyaWXFWe7A
         oMDD5O/bgCCXrYsEytRq2U+YR9EDogpAFz4uYb4cYEKKUvIm1y8Sh8siNElAC6PhkG4Z
         T0oiDX3R9CHs7R4CpEbahuNKEYNUvgs/Y6bsAYC8GK87JeK7yUFI6pxIlzC8HXYueYq0
         F69g==
X-Forwarded-Encrypted: i=1; AJvYcCVx1C+MwmvXGIIJ/NKycjn8WvrYdafxZzCZUvtkT2/5oqU7l5xFJWUQgwEobDQFSG97lvWa5dlawv3w@vger.kernel.org
X-Gm-Message-State: AOJu0YxC6jWbb+8uBau5SX1t2ht4m9wuhAy5NmsanAXU2q6ZxGWXegZk
	ung6rBvP9zkasS3FS3rxQ6H7AaCyIr6QLXguEjc0k7jVB9yzVr0rsf60O9lf85IzfKydl2LOZcl
	2sEG2dGMzx4SB5FpIvN1D6/7twFllfBXVzwUJM+EL7NQt6jYoyPAWGxK+bue9k8k3
X-Gm-Gg: ASbGncv3vIuT4NKXlMJZHNEFk707qmPkKdrxcdPCjZrJOE0G5uAT90N2PeU95neekc1
	y4yrl9ZoAAH2tgC7OtiNeSv0yP0hjYurBB9hoFXXWlQPrbHNxZRtVD73pjFLaM0FdMnqdvG3/1t
	Lez7HFeQr+Fn4KRedKHc0yAiHcQntbuU3uAv+P2Bq5eawMAoTXoEMPEN6wBdVQr4c++AcWczoy/
	0NyphtOgka41yl1cM6e4jF5D+OvHeq813Nahmj41iCM6DFV9ufLYmCZaqZaPafsLKDpzC02XJTT
	JnBuSI5yvGwu38ZxOOYjQGpDGqJeyplT5aRUxO66sLJrB3CYi+3UufybhIGNl2YcgPj8un1OiC0
	gZkXP11euvTKL//Y2EAFGivb9PlN7FV8e7o0yqS1CwplsVwuLmz6swFyUgkzSCZENozpzYg==
X-Received: by 2002:a05:6a00:94c2:b0:79a:905a:8956 with SMTP id d2e1a72fcca58-7a220a6f5e0mr29848806b3a.14.1761194187019;
        Wed, 22 Oct 2025 21:36:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2iZTTTkLGieebOdiAnwWUzMqAciGlGLz0XjSkE0wYgzufXC9FBsckdcIVLWGDwsKK6RcgSQ==
X-Received: by 2002:a05:6a00:94c2:b0:79a:905a:8956 with SMTP id d2e1a72fcca58-7a220a6f5e0mr29848779b3a.14.1761194186528;
        Wed, 22 Oct 2025 21:36:26 -0700 (PDT)
Received: from [10.133.33.160] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a9d3c7sm1015217b3a.26.2025.10.22.21.36.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 21:36:26 -0700 (PDT)
Message-ID: <7023b97a-7c99-49bb-8371-3f6601e644fe@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 12:36:18 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
 <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
 <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
 <dwfvko3hszsoh4ihnz3qdpsugmocbkrbhosijdw5q3bxh64kuo@o74as2li74px>
 <lz4sbvzfiij3qsa4d7jeblmi2vfubc4ltf435sh6tcs53l6fbq@7f3tfm7yiyjc>
 <mwin3lfvpcwxxhsub2whcpibuayk36f4ljrodvithfygqad5w4@cg4h6peh4v4a>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <mwin3lfvpcwxxhsub2whcpibuayk36f4ljrodvithfygqad5w4@cg4h6peh4v4a>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfXwPDyNAmooceQ
 4ePWzlhIvogNyqCCrPmHgx/SvdYOXQeDyfRiqQxHvT8t1Ftd4RvFJx5stZr/q/9FUjyniGZD1L3
 b1qas91GRbYAQ36TAmGPObSNdkKit4HGT/Pzv1qeXfFpnFExWMxyCONuGSHNOochcG7eNXOkB0I
 s7LmI2yFGEtjktqEP8Pix1qPPQcX1sdyISBEhQJIij5SR/TOI399wMHP3LMKcNq9X5bAJ9bwjSd
 JJ0NLd3Q4Jc6PTx+UDkU1PDzS5ggiq8gAlF5Fp10vYA0scx5xDlMVvfdSbFYFE6i8Istui9EL/j
 WN13kkmQs8yihAPOzo3N0G/RdVvDLn270UZAJdkDqKK8kbL1z3Upp8+zw/nCG3OtlwEhE/4hrKU
 oWPxSGnxbxuPBD7uUrIz52xtF3GdrQ==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f9b0cc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=BJhlq6_3M5jb6BGk8hwA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3czRSFAZgArwjQy0werl0XZtyPMlyjo7
X-Proofpoint-ORIG-GUID: 3czRSFAZgArwjQy0werl0XZtyPMlyjo7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018



On 10/23/2025 8:06 AM, Dmitry Baryshkov wrote:
> On Wed, Oct 22, 2025 at 05:42:58PM -0500, Bjorn Andersson wrote:
>> On Wed, Oct 22, 2025 at 12:34:58PM +0300, Dmitry Baryshkov wrote:
>>> On Wed, Oct 22, 2025 at 05:05:30PM +0800, Jingyi Wang wrote:
>>>>
>>>>
>>>> On 10/22/2025 4:49 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
>>>>>> Document qcom,kaanapali-imem compatible.
>>>>>>
>>>>>> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>>>>>>  1 file changed, 1 insertion(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> index 6a627c57ae2f..1e29a8ff287f 100644
>>>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> @@ -19,6 +19,7 @@ properties:
>>>>>>        - enum:
>>>>>>            - qcom,apq8064-imem
>>>>>>            - qcom,ipq5424-imem
>>>>>> +          - qcom,kaanapali-imem
>>>>>
>>>>> Can you use mmio-sram instead?
>>>>>
>>>>
>>>> Here is the node: 
>>>>
>>>> 		sram@14680000 {
>>>> 			compatible = "qcom,kaanapali-imem", "syscon", "simple-mfd";
>>>> 			reg = <0x0 0x14680000 0x0 0x1000>;
>>>> 			ranges = <0 0 0x14680000 0x1000>;
>>>>
>>>> 			#address-cells = <1>;
>>>> 			#size-cells = <1>;
>>>>
>>>> 			pil-reloc@94c {
>>>> 				compatible = "qcom,pil-reloc-info";
>>>> 				reg = <0x94c 0xc8>;
>>>> 			};
>>>> 		};
>>>>
>>>> other qualcomm are also using imem, could you please give more details on why
>>>> we should use mmio-sram here?
>>>
>>> https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
>>>
>>
>> I considered exactly this when I wrote the binding back then...
>>
>> But the binding defines mmio-sram as "Simple IO memory regions to be
>> managed by the genalloc API." and the Linux sram driver follows that and
>> registers a gen_pool across the sram memory region.
>>
>> I believe IMEM is SRAM (it's at least not registers), but its memory
>> layout is fixed, so it's not a pool in any form.
>>
>>
>> What Krzysztof says makes sense, but rather than just throwing a yak at
>> Jingyi, it would be nice if you provided some guidance on how you would
>> like to see this turn out.
> 
> I tested, pretty same approach seems to work:
> 
> 	sram@14680000 {
> 		compatible = "mmio-sram";
> 		reg = <0x0 0x14680000 0x0 0x1000>;
> 		ranges = <0 0 0x14680000 0x1000>;
> 
> 		#address-cells = <1>;
> 		#size-cells = <1>;
> 
> 		pil-reloc-sram@94c {
> 			compatible = "qcom,pil-reloc-info";
> 			reg = <0x94c 0xc8>;
> 		};
> 	};
> 
> 

Thanks for clarify, I will drop this patch and make the change in dt.
Meanwhile change in sram.yaml should also be required.

Thanks,
Jingyi


