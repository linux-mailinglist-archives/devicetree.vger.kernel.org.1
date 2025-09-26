Return-Path: <devicetree+bounces-221845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FADBA374C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 256AB1C22C3F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 027A22F5485;
	Fri, 26 Sep 2025 11:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HM+TxST6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B488D2F530E
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885281; cv=none; b=vFaT3n0j2QnLSYZFtrPdIN5BbRcVYB9ytJ/lmhXhvhLAKfBMJZ9k8HtT8NqWpg41Md2+1sjWyoIY1lU2I+d+bETbgIOYWkobcQviTWiYBGRIXf/8eUtM567L8DPO8cEu4xX0sBar0uTO6l54VGtEbI/Gw3HY1ISJOAC6E+bfD4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885281; c=relaxed/simple;
	bh=iDSw11pyqhbkgwpWYT4ZdIm+jKHusW8fE0X5DlrCeps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ebChi8oBV3HRq0MqL6iSYyZpzX058OXWu/UJMqq3STaB8lX3d14IaSp6kr8ouJ6RGr2sOw1dXvTfBtcy0vFnsze4MWz1cSltbe+ygtmaIXyuVEUT64qM1FGVwcoAW5GmlzGVEZTgLNn8VL3Sd9OO7h4H6sn14tBQCBpRE3W+bSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HM+TxST6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vcgE018181
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:14:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v+mnnPyYM8R/xd6RV1KS2fBetyQnGZ7XuXS5A/9vnvA=; b=HM+TxST67Rpp7mdH
	8aW6xAI6VB8Ar3P4jmTQbwZAaj5FTztaFpXnrVr0r7k+7fXvt/DP93az8OLYOc87
	m0DCiP61MsORkID1E10nl98bf3F5+CUFtwpwjW5O/VZsI287MzG493CW8KUP8MRv
	MkXsCRuWcOygkl3R/Ej3xxdFzrntteW3H5Ej6p8RxebkfMlq6CMcEst09K2wLRv0
	TFLeCDAh9iefz9zqOyIKwqXJX5zzo2SVo24KHsI99dWZfM3CK/MBmwN2jD6GfSRV
	uTFo+QHkzwELffMv6fJ+gfjyU4NH62c4Euk3NAxSt+eD8nIktF8ab3MXYFnWoG0F
	Sq6ODA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tan2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 11:14:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85e23ce41bdso54607685a.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 04:14:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758885278; x=1759490078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v+mnnPyYM8R/xd6RV1KS2fBetyQnGZ7XuXS5A/9vnvA=;
        b=SqFfPRDlGB9wuVIDNaaa5zp/yuBDiXbfwUf7UYaDN4NjHQubshw8e5iR3fEVIRvYAt
         zVSZQ9wITq3l2qknoSMnXFZdZPQgTY+S6H9y09MyAOWGTzl3a+5g8c7frOkKQbtv6Lk9
         mFOo6H9QxVIHmn+DaFhWls+k3Yct/YnC19QOWgh6iC8SLwk8uKE4qZf+6Fz0jQVZ9llY
         pDhf/btJYnH/lqxd62UY1Ic45yo4r2jI4oLgt6D+t7KIxq4C6STojRBuf+mpzQpUta01
         Rmq3R5f2u8x3ZEV7E0M0mgdJNfbvlpqrmWzp3avkbV2BHN8N9mlCWRa3u83fYE+gUTzq
         9WoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbn+FQZDOXDyeBclv2cCv/q6zAmpA4Vzwu8w2TXl+p6yz02dKxPy81me+9foUSIibT3d1EK8rnErTn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2oD9AmHSAvrLYkO7KHFDI2Gj4WtcyqCya859DwwBOcrjnvsuX
	F2Y9qNMJ5NMOU60SfkArX0UbZ46M7W8y5qGPZ75Hgjp1Z4wSe1D4RqM0QFeMLamJwpxZV/kiTq7
	XCGTrVemNAKqSyiyPbq285ur9Ug+Rw2rHRudKRAUbkurr+sXWlzscqyv3DFDxMcGR
X-Gm-Gg: ASbGncucGD5WUS0mnalMJYuzVFpvjhylD0zRsAMD0wMabxq/540AgaagEgLUy1rN9EY
	OsBclYvLF2h5tbiSRqacUkJToL0nzYNE0dNgfh3JfMHBfi/UGPTamDHXB+x52+vNrVz5otSl9R0
	iB8wzhf1CC+EJP7yMwE2dDi+7dBaDo4E20nA020LEV5f5gMhlkkY5WdabHRiaqSZ39U+hSVUEtS
	rN/r8o/V3NqVPSOM8ro3AF3p2RhC7p4vLqIdq7RRnIj5bsiMYABFfWiT0zV6dFy9EhII8qZczfc
	agApBkQKV5gRQNrayJSueiUDfc9xfwdDX2+UKINPRlpQxMO/7B27UEpr7h6HjAO5p99wPzsBEN/
	9RSX0PovoMJJDBO2Voj060Q==
X-Received: by 2002:a0c:c785:0:b0:801:2595:d05d with SMTP id 6a1803df08f44-8012595d527mr37523866d6.3.1758885277725;
        Fri, 26 Sep 2025 04:14:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVyVqDH56Rhc9V37bZmDRMzW77b/9dCZm0TB6JT1QzTWqi62x3w727VCI3OQtYuS6z3lWFeA==
X-Received: by 2002:a0c:c785:0:b0:801:2595:d05d with SMTP id 6a1803df08f44-8012595d527mr37523606d6.3.1758885277246;
        Fri, 26 Sep 2025 04:14:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629badsm2664309a12.9.2025.09.26.04.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 04:14:35 -0700 (PDT)
Message-ID: <4777e507-c329-4c22-a45f-099fc57e31e8@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 13:14:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: qcom: Add SM8750 video clock
 controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
 <EAIobHjo8rM1e0LwqDqaUllC0qjV5ElMMhk6KgT1oNnFt_-k7ctM2_6kym9OjEtse5o4pOFM7yCkXgrSGRZhuw==@protonmail.internalid>
 <20250829-sm8750-videocc-v2-v2-2-4517a5300e41@oss.qualcomm.com>
 <d965949c-a7a0-43df-9bf1-c1232fc7e38e@linaro.org>
 <555039f9-a168-4a9c-b45c-d4583c553bc9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <555039f9-a168-4a9c-b45c-d4583c553bc9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: QIbZKRG3VJTYR0TPw_p1ugU2M8qFJqop
X-Proofpoint-GUID: QIbZKRG3VJTYR0TPw_p1ugU2M8qFJqop
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d6759e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=pvYLOa8aNrQGL8lVqOcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5cO8In8LKRmN
 y2hlJWxmKyCmjlAll63Q6PrOY46pm+/6TV6hn9YotrmyiN0b+JMNSnvkO43rE4hVGCcZYf2lwl8
 DjJxVNzOmxcjlhUZ3+wRyg9ZLUHNjCbSX7oTL+O4L3yOCpFvqcLoU73kapJvarEIptqwEP6TytD
 G+8E+zsbnL7jAvpeNp7gnoBnAXYfcLyQxuL3Ha6iwDIdP4AzY+9S7fhkaoLIGP7BsSn6Us/BsNX
 +1yKd6uzmVlHVIejoAp4yqWE9y35UEM7OmSlZAmx4oiRusz1MHpVqAkoaGT2Khu/fGwP+Aw+B+K
 tQutjM0Z58qeLk4G9XThFOUQsDZEMm7IvneO+MvVP3qnSxKnfQHr45+5NKs/dU7Q6y7WZfPxdBP
 Zo3gWDuYLe28GywN4UE1gd+PV3vcmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On 9/26/25 11:18 AM, Taniya Das wrote:
> 
> 
> On 9/15/2025 4:28 PM, Bryan O'Donoghue wrote:
>> On 29/08/2025 11:15, Taniya Das wrote:
>>> Add compatible string for SM8750 video clock controller and the bindings
>>> for SM8750 Qualcomm SoC.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>>> ---

[...]

>>>   properties:
>>>     compatible:
>>> @@ -25,6 +26,7 @@ properties:
>>>         - qcom,sm8475-videocc
>>>         - qcom,sm8550-videocc
>>>         - qcom,sm8650-videocc
>>> +      - qcom,sm8750-videocc
>>
>> Shouldn't this be qcom,pakala-videocc now ?
>>
> 
> As of now, Bryan, all of Pakala is using the SM8750. We can migrate
> everything together to maintain consistency.

We settled on keeping new compatibles numerical for already-numerical
platforms (except board compatibles where all the fuss was / as it makes
sense)

Konrad

