Return-Path: <devicetree+bounces-186846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD20ADDC21
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 21:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B9741940952
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 19:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B527D25B693;
	Tue, 17 Jun 2025 19:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TJidAwEP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BD120297C
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750188036; cv=none; b=JBW5Hdqdos5MpfcKzjNlO0aSCOaKNXCNJdrFCdg9CTdeH9YSouBQZh/sRdSQM6V1H9Ysde4dqwC+b/vBCUCoir/zIgW85ewbtxW9UQ/AGOAQXXSTvZVne4++mY4r7BcwYtHMteVOmO6nm0Gdq5VeCHIJyLLY0Z8MN96Ooo+5Idc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750188036; c=relaxed/simple;
	bh=7ZxuX5qNH/g7aYt9vwHTYrn1wT+rYHgFlMjsAb+VBQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HhyJpkVMgE94/SJJm7kHUAiXjFAOngyGXU5k4/GCF4ec6UaLBuCwB4DZVORJUk3Y1KWBt/O/fl+7GroI0P2y6ug1f9a7/PsH8GBtR2JGy2fIva7sRzI9VH0+ifB2/AmqLLqfRJTmwK7ncHxmbXvojSKdAdNuY+ERotKUKXG0RFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TJidAwEP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55HDTBsI010361
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p+uy4aSZAA+0y4I7Dl8zbOucbgS77E3xujWHGvUgk7Q=; b=TJidAwEPidk0NAbU
	DFCYPDHsTpExJf0tdyyFN8Ys6W5xErXtJtwP0GdXla7aLRmsJ+VKE0ozUruyYHjb
	aGbyu5eSXFZTpSotQxp370XyHPKqf6Um4DNaI0QaypIyuDD/IsJMss53wGstcoE9
	z2WKmwPWWH/4ZVZ0r3uouTBCzhvZjrD3vbbOIbNjLbWI4VgNM8pZjJ2/hx/pzWuo
	75CHcj+ZfZ74NpeAGjMdbaoMUWsHEk/e98kr+CAccRs28T2EPw4mSSNAVCqpfjLX
	39/m3ousyfVBX7N/xYqdaUwTfS1rvl+r4XvEh5iFRn3tIvbPxD6KoCaF3SXtCrRq
	gRqWXA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792ca1ksm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 19:20:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0a9d20c2eso200967185a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 12:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750188033; x=1750792833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p+uy4aSZAA+0y4I7Dl8zbOucbgS77E3xujWHGvUgk7Q=;
        b=OKvmloc04lVGdWBs0Um9hXy9A4KQBPYN3Vgciy+MgGso72undM8TYkmwPhyCybYhHi
         Ydedi3NZbb+QhQxONIJyENwQ3wP3q2+m14E3yQaW8d8MfN2l21FYGxbJEJgP+SqakLYz
         Xt+mWtj7t3IAWfeBjGhovHDs4SSbsXYFdWrLv8PAvOE0jmgZon7inPiuFVEV0eeARAbB
         H+zlzXFPnJFalEdqeM7x/80VbfgyVFbrPj0By90ehsP3Mdpu6UQj4IS6GoDnVXTAsrl3
         d4GRzfG0z+fTerN1I8aTFqcvwq5KgDuiDs6jH0oYBHzMAIGFuh0CvvWz4IxNO6qR8iTS
         +RrQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5tUl9D7OOYeZ4q4F93lNKDIcjd++yT8BhNyJ2KxWB6HaEg6wUxe3hLaXKyQZenvhNmqgcicuS3rsZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCvcn209XiJ6fU0W7AqMlUXX7GU1R7I5mAj9tPaoSNdPO9bIP/
	4gCGyvULvUXWTNjtDpKfO04ZzOi7Am8xCmhHVz7lzguSC9WmTZzltxCLTtdUMMaADPD/IyjV10t
	e1IakmGjbF2WaRCVC22BRG/P7OHBzO7hkimEOja7f7VvXUwBWTWNfmvULkUtvPw/3
X-Gm-Gg: ASbGncu3K7FT19H68qgAncyB+IVpLNKXnbor6Jf76x8WXiTs54yPCJKAP8CV9YsRrPh
	+WN0B3rb9+CKqzXkcsoS83eQBRRIvCKWsIJQ9341JJvqe2hcUOlQYwphhUGPTABnseirZaZSsaU
	Azo5nS41gWtt69gFk/ix7Qx0lHlxxNgUT2H/Fkysf+Vkvzez0vThsU4JCSvxOA6C7JbVV5Y4Ug+
	OGEKt20f12DOLfIghvmw/vFOdqqT68VyPW+3sC59pUq9C0omonodQsVuGb8U0c+W2G/pc3eRvnY
	b6lThzww4IUQo1YXSV0KpvYAOnrngaGF+bLsu4p04TMEeFa0wavY+s7iq9UNSifJ47gibfZcGNh
	Fz5U=
X-Received: by 2002:a05:622a:1991:b0:475:820:9f6f with SMTP id d75a77b69052e-4a73c5f40c7mr83359231cf.9.1750188032846;
        Tue, 17 Jun 2025 12:20:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE56rx7QKGhve9dr+onwzo1W0p7twcfmKBnjkPfzZsI/+eXaqjKebmbfZD6IJVOwX8voyrpbA==
X-Received: by 2002:a05:622a:1991:b0:475:820:9f6f with SMTP id d75a77b69052e-4a73c5f40c7mr83359051cf.9.1750188032339;
        Tue, 17 Jun 2025 12:20:32 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae01623f2a7sm36025666b.170.2025.06.17.12.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 12:20:31 -0700 (PDT)
Message-ID: <1fba505c-bd01-4d36-9efe-17172e11fb1a@oss.qualcomm.com>
Date: Tue, 17 Jun 2025 21:20:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e9afdd0f-7842-4780-9044-d5afa6a09d7f@linaro.org>
 <b96f9cca-cdd4-4456-8ced-f4a8fd810ff1@kernel.org>
 <9e383935-a10c-40ec-a63a-243cd028374e@oss.qualcomm.com>
 <4f7225ee-fbb4-472e-8e14-a98f4cef9fc3@kernel.org>
 <83769dc1-9000-4074-bba2-d1bd465b77a2@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <83769dc1-9000-4074-bba2-d1bd465b77a2@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: T0meG8q25-iJFg96VUC5m4AAGFglasBB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDE1NSBTYWx0ZWRfX4qpxmQlMxF4t
 MIhTu2UElms5Th7J8bbFCMS8GW3Yfqvp1EdYc3bno4AXL0oSKLy3RFTMMRuZbLEaZ8kbbYqRPpt
 RRs4zclzE8ZTCuj57rS/qPTmddxlOvloa/BJMPtHW1w51ZS0B7xEIZNfgpoC8vxVi4MAKtoBWtI
 9bWexubXaQ4Pmy1PnDDqvpCBd/JPeulR+wntvOjnih0Mx76Y03arrdtr0GN+KmIZJLM6Frpt8Li
 fuDhDw951CEd3SDNovnYIoSJ7oaQjzqWLi0qD7Q2t11uDllO2ljqRmZqI8KhS4bZFiX/5JDGZjC
 1CmwI39Da0738CoqScWbToTNmI5YpSdhT5Mjo9l0P0Hvy+4c8bNIB65g29plKvsOqRiZFg6EZii
 9uWYI452J9c3giieNqi+7tBYatjnxiuSEwEVinhUAo41BiFlTUGmDnIPDImxOlAIIvu+gZgU
X-Proofpoint-ORIG-GUID: T0meG8q25-iJFg96VUC5m4AAGFglasBB
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=6851c002 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=wbO4eoeOqdvOmasGwY4A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=898
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170155

On 6/17/25 11:51 AM, Vladimir Zapolskiy wrote:
> On 6/17/25 09:32, Krzysztof Kozlowski wrote:
>> On 14/06/2025 21:31, Konrad Dybcio wrote:
>>> On 6/13/25 8:28 AM, Krzysztof Kozlowski wrote:
>>>> On 12/06/2025 19:13, Vladimir Zapolskiy wrote:
>>>>> On 6/12/25 10:38, Krzysztof Kozlowski wrote:
>>>>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>>>>
>>>>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>>>>> ---

[...]


>>> I don't have the docs before my eyes right now, but I would not be
>>> surprised if it's also called "csiphy" in there..
>>
>> Let's check that first.
> 
> Here only someone with the access to the specs can help, when I rely
> on downstream code, and it says the right clock name here is 'csiphy'.

Unfortunately, I can't find anything more descriptive than that.

Konrad

