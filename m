Return-Path: <devicetree+bounces-146717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B66BA35E94
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 14:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 829C316EDB9
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 13:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765812641F7;
	Fri, 14 Feb 2025 13:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nPQlIjKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117E1263C88
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 13:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739538666; cv=none; b=qMYhF82oHbUTrjNcjCnARZsSmqYPOJSqo72yVYJGzLjQH9WWWntLU3LULBR4BhTFl9b0OA5wk8ebuMbRFqywUUQe4JA7I/On6Rvw5zcB5npJsWKSx4cY/8/IRLUb4Tth0g4cqqjSnZIlilmPxRrJJmrFjr8Mjriso5gTRFwQ1WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739538666; c=relaxed/simple;
	bh=6qmhCZ/VNbfXLMvjVMotO5S9MhLkOwAbj5PUvPSdtkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rzoXqzGiGoVdU6M2dR2y33xgDuY0yrEHoVackZExZ5meiyLNgaL77nLbxlkf4W91BS1OPCX0+wW7Axw0yKvmn13O7lgRVMkii7wYclFlT4tthR4W5LnTSPKHxFnFVtq6o54ThJvDiqK3cgOh5kz1wmS32vr+pe0MTkf2KnTBnl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nPQlIjKa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51E9aBfQ031727
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 13:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fTW/+eSXYK27SAIhtTq5ZN9ZI4lOMHVi64iiQFK1Qbo=; b=nPQlIjKaTrY/dTcy
	pxyj8+wG9yovtgNaXTA3gf1gCSlfA4RPjaMf4NNsWNdLFZa1KLRZuvMueopIk/aE
	LfO5NNoatF3tkqZq5IC1ny8axu+jW7Xv+09J23MqRvP7nDQK9BzxXGA5GUQK5Rkx
	WMDIJhzO9xItTp+D9qABBPKuvavlwUH4ELighfUmzLsNphcXZHR/CWcpBwqIidxV
	ub3I1aM+ce9HvBP0LkalZXIYZwsW6b1MJrssGhVo5tmdpKFWiUOQnWAqugtvdxms
	9BviAUmUs9u8oaWexzcZxmaO8hUrZhJiM5vQvclYxH53Yl1hjWSb96B32esM3u7s
	y80cKA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44seq03mhg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 13:11:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e66b3359f7so583146d6.1
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 05:11:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739538661; x=1740143461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fTW/+eSXYK27SAIhtTq5ZN9ZI4lOMHVi64iiQFK1Qbo=;
        b=qtxHBtCciy9Y9QmcYt+8gzn2VyYuw4SNQoaiaYd6TGlMpoSpSc2y8JRfLhpoLLWMxb
         e86NUb48nwr8hWgWgTaNIY+hX7T/smeyBMPJDFkefk+zSIoIYsGLWu2VKLg1IwdJIN3s
         RrvDOdGV82eyknbgC4irlajcqm0cbRrYNJtyaKJZAXetISM/cS5aKC1YAyg7GC5hfJth
         DQJwAdC+hD3XFr7zJXSui22EwmdVXc/eFV4SOZn0CcMqklppwopjVueGHUKm9z7ho5G8
         /ertwUmhZGRhaVnKhGd7ympyiY57Ai7I0cvQgxYi/oCRSr9+8BLc1vvS/8MlSUdkE1vD
         aXeA==
X-Forwarded-Encrypted: i=1; AJvYcCVeGSl64mGbuYaB4RZmWireYWdDBGSf2LSoYTMNowsiAWjvqf7TjTKyzcgOi85bSU+CJ7C4qB3nQvXX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/z+IV60HcyKYMcjS3L7y1Xzh41LUcTkkVnsnxFAVw9aKOqEAU
	QqTN48i+RTmouC4xloKuBx6//aZa3LeOyqFLmopEKLt71/sejR7NJFXf3DyDWZb6m3wSG//N5wH
	TunEaP9r2iyhmEabpCvI2MPfveG/iihuvnrPmM5BcS/zRBQTnR0XuBxvAu8Kq
X-Gm-Gg: ASbGncvNtrHOr3kG3r2+zQXbXnHpr1DLjCG4eoJOP8HYg+zekhdb1HW8Amu8mD/1yVu
	K554A8DHf3Sa0hyvBXI4BHzjDENcL/xkP8V5g6p+h8CRI87aGVa+NOJgI5gqGAV4l/bcVhRddda
	c2D6rF5EYlyHV0RKuRHL31bCMDi7LsbzGjm5vMKuHBnWLMYFtFmWz6ck9JSAkdlGeFLUJlJULkE
	bPkyqQSEqjZnOcZJvky9JaIfFo4wh+FfKDqCqZ4gXGDMQt/TsP7ZD28Qm7kNBQsTwlS6KwAGwIy
	7TkSiPP1VKDMplw50drmi/DFkozzYItlyqOHPY69ewYd/LG+jP28iCuoFCY=
X-Received: by 2002:a05:6214:301e:b0:6e6:5bd5:f3b5 with SMTP id 6a1803df08f44-6e66520e0d3mr14986836d6.8.1739538660875;
        Fri, 14 Feb 2025 05:11:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEij9NAIiSKVCTx7RPlhN8aNMMVTWNYr9ptSc3QOaFHm7mvQ0JMabORxG1HdQlMS7ugfZxdPQ==
X-Received: by 2002:a05:6214:301e:b0:6e6:5bd5:f3b5 with SMTP id 6a1803df08f44-6e66520e0d3mr14986596d6.8.1739538660507;
        Fri, 14 Feb 2025 05:11:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532832d1sm336935366b.81.2025.02.14.05.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2025 05:10:59 -0800 (PST)
Message-ID: <659ba3dd-0991-4660-9dd6-feda682f15e1@oss.qualcomm.com>
Date: Fri, 14 Feb 2025 14:10:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-1-cbd837d0028d@oss.qualcomm.com>
 <20250214084427.5ciy5ks6oypr3dvg@thinkpad>
 <be824a70-380e-84d0-8ada-f849b9453ac0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <be824a70-380e-84d0-8ada-f849b9453ac0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mqAseiG1PcvAoH5yaw3K7lsHG8ADkJXz
X-Proofpoint-ORIG-GUID: mqAseiG1PcvAoH5yaw3K7lsHG8ADkJXz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-14_05,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 mlxscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502140097

On 14.02.2025 9:48 AM, Krishna Chaitanya Chundru wrote:
> 
> 
> On 2/14/2025 2:14 PM, Manivannan Sadhasivam wrote:
>> On Mon, Feb 10, 2025 at 01:00:00PM +0530, Krishna Chaitanya Chundru wrote:
>>> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
>>> rates used in lane equalization procedure.
>>>
>>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>>> ---
>>> This patch depends on the this dt binding pull request which got recently
>>> merged: https://github.com/devicetree-org/dt-schema/pull/146
>>> ---
>>> ---
>>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 13 +++++++++++++
>>>   1 file changed, 13 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> index 4936fa5b98ff..1b815d4eed5c 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>> @@ -3209,6 +3209,11 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>               phys = <&pcie3_phy>;
>>>               phy-names = "pciephy";
>>>   +            eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>,
>>> +                      /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
>>
>> Why 2 16bit arrays?
>>
> Just to keep line length below 100, if I use single line it is crossing
> 100 lines.

Oh I didn't notice this.. Ideally we would have <A0>, <A1>, ..., <An>;

But it seems like /bits/ applies individually to each entry? That's a bit
weird, but I'll add it to my list of things I don't like about dtc..

Let's do:
eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555
			     0x5555 0x5555 0x5555 0x5555>;

for now


Konrad

