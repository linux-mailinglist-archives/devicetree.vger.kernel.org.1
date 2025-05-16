Return-Path: <devicetree+bounces-177950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66218AB9B30
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 13:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02F9E7AD3BA
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7AF72367DD;
	Fri, 16 May 2025 11:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hmd1RQRv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC222B8BF
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747395369; cv=none; b=oU9Jrb+4uIjxxU1WVdv3CgfJmME3ynzHiTXPJzDTP5+CKwXjU1GCQVy6o4sqLlLJsJMYDI3DMCjmXkGDtT8esrgAosZdIvjOKdajeXajJrylwY8nW1Bmj21+2VS/jfFs+oA1picZcCpy8l4vdnN36XJFpmpaW5lu5jq7aBpBjis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747395369; c=relaxed/simple;
	bh=x71wh9qpjv9m4txcRMSYgEFgU/qLQI3szX4WfGrxJsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QNEv9q/qBwxV0ZMnEdDb0+oWGd937Ko/NVFH6Ov5rIBgA0LuZrUP5cvrXWUSF7RnSxFWapJrO+LIb4XQ7jjS78vzIYgJOv0AbTuiq1MqZCLTjhDIYJm6X6pP4eWPIvnmTP7GVJKKCseIqXMR3mc/Eo0q7NsldR0GkklRkQvN+vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hmd1RQRv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54G3Ol6n014961
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:36:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ekV2UpDnpry6+UbUBtnNG7zgHt6PFpPr1W7ydztSu/k=; b=Hmd1RQRvsa5D2YvH
	kW0Td15We6WvuB8+hJYTpq0VMz3JPHZvTMXtouBGo3lbrUO3w3sRMx5X5xQHlIP2
	6GlIQUllUGjBtqGfZr9o8vTFpaWYeEfmkUiborFFuSNIZyQpCWJwP3NcXqjKcVRr
	Siry3Gyt4lH1fLWNZ02qUjXAhUW6JdWpZcDZLn5Mqz47oQa/1k8vntCwXtxnw6hp
	LxUS3sroneKyVWUZ1iJRnAWsMYehVOJWwQksmUsrnIoJaRj01k9u2IlZEk19it7L
	/Paf6Yuxerz5QOjEBryU4iWDcqBHh//JzO5HZgsSVkK+Y3LfeVriUEIRPMEG0txT
	qsrQsg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcphx6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 11:36:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso48863685a.2
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 04:36:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747395366; x=1748000166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ekV2UpDnpry6+UbUBtnNG7zgHt6PFpPr1W7ydztSu/k=;
        b=X5ZPzTtEQ2KopRi67YXo0FhU02yQ2MPgJMOmgtoEl902vRyCDwOyRb19ppAe5ATfGF
         7un+r5ZdzsFd769BVINcxeekD1drniyrIbMzjIjaJInbtEPASVgkDN8vn6MN6RNyqOiU
         YlbxYqziJcYULCQ+myCn+3VcU7avs+D3EkuN16TPd6GPkEeaD91pxkqTGGCcawhJfucr
         VMw5thb26TRkkmUtXQfg2YHfI5FkV24xKAjU8eabUB7YSpcfng7HRlEoCQUFAji+gWHm
         TdJ75LlHLQ5LjoIPX0eImGxCIG8jw4xLGIQBsLJpmj9u33at3CMvqwMKa9HdivsAIllC
         Ir0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWsgZOd67OrzWUN0TWST4d6Vu+MKeOuac7oaCQwn2O0hri4q2PMUF5ZN7tjwYB+U2yEj8Ovp3fYxQXM@vger.kernel.org
X-Gm-Message-State: AOJu0YzKxyVh9Rk2hT4IqR6dHvMyi0bU833v2lwEfMlRjMjzQHN/dk/g
	hvKdfQALc740ZqunD6nJH6hBE0JB5178soWkbhSHPohtTPOrTSQgZk49ShiHyCThPgVlpsmuHav
	5ZwigX72eX0S86zhI3sHKcNQV59kwc+pM0ikMX6O9Hkk4EJXcrZEMbLV5Jisx8kGS
X-Gm-Gg: ASbGnctbsawZoWD/y/CszNfwOyNnCaacoFQhohzzyeqPoWrYM6uJUL34cluxIzGWKNo
	MXEL9f4bfqV9tXHx31/o6CNPdgGZhMh5OZsEgETWvlrw5ez0+8zsiQ+k3EOW2OecpxtqTx3nv9r
	0uXbM/ciSv/6Tj1E6WTV2Ql3kz4B0Hn0d16ZHL1QFNYTIbbaP7Gz8K6SiYPJuXb9kyMf1csMjgq
	w421IPvoC1QVnrM4tW5BWJ+6kwRdhgbcTfPV2jMFRbbhxbFjy6k7bFJVF/MSkEV/UJd1OvFULNO
	XRotw/QA7Mgb+ayis4qP5zz0zCKYT4EVjzHnYX/upYZhgrz5aHUzBF1//0S6NOUPBA==
X-Received: by 2002:a05:6214:2602:b0:6f8:9a2e:1726 with SMTP id 6a1803df08f44-6f8b0720ba1mr21196846d6.0.1747395365883;
        Fri, 16 May 2025 04:36:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQAvfyU/2baVWoHmgKenJhYPlFdeNZN/pq43vpeCxwa5wY8TW2sY5mrUqs5+/uZrvj9eUOwA==
X-Received: by 2002:a05:6214:2602:b0:6f8:9a2e:1726 with SMTP id 6a1803df08f44-6f8b0720ba1mr21196686d6.0.1747395365458;
        Fri, 16 May 2025 04:36:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d047738sm146675366b.19.2025.05.16.04.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 04:36:04 -0700 (PDT)
Message-ID: <fd92ae5f-2caf-408e-8a79-6338e6c8ea07@oss.qualcomm.com>
Date: Fri, 16 May 2025 13:36:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8750: Add Soundwire nodes
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-1-50133a0ec35f@linaro.org>
 <e83b58ea-0124-4619-82a5-35134dc0a935@oss.qualcomm.com>
 <afda790f-0b5e-4569-a92b-904df936df85@linaro.org>
 <1a0be977-39b8-4089-a37e-dd378c03e476@oss.qualcomm.com>
 <17b9649d-b788-4a13-b7eb-bf54b7a83b0f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <17b9649d-b788-4a13-b7eb-bf54b7a83b0f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: j4Ud8_X2JfReBG2d_3uYqick6yZKTxX8
X-Proofpoint-ORIG-GUID: j4Ud8_X2JfReBG2d_3uYqick6yZKTxX8
X-Authority-Analysis: v=2.4 cv=cO7gskeN c=1 sm=1 tr=0 ts=68272327 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=8ckfQZQAI897uWQ1iqcA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDExMCBTYWx0ZWRfX6TwLXmk05YuS
 NVicb16MJtV3MD9gXANXVHtoPxSiDeWC488xKFvhiddGP4hN6lKdF3OsxFJn3w6Uv7zYDyc2sX6
 kyRUmu1evo/M62hDxbzEpWxWwud1pWnd/B5fVfiqyCjaffs7kTPfro0+QlyiI5eHRZPHuzbzwe3
 meFsGmxEMwwHQbi8VnR3SksyI1Z0GiItbkq34GLMMSpDw4agY1YfcNNYhqiamoDX8Q6o4SUj04D
 JBUEDD3HEPfud57R0b5Tgnn48NGT5i9alzsRr32uEjqcijZWkWZGyCwb3lO7G2maYd2OrDgFD5H
 CVTg2Qd1THWvRLaVDoFSiqD8GkAvzmR5qimuQJaynBAzJLNE7y4WqicT9DMFApADzVOS746OVlb
 ogmq9FThL4TEV6KE19pS2Lm5pfajIi05uGJw40ZPT9fBvJ4Lxsy9xqsE8hwINi8UOWN3yFH1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_05,2025-05-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=709 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160110

On 5/13/25 10:26 AM, Krzysztof Kozlowski wrote:
> On 12/05/2025 21:38, Konrad Dybcio wrote:
>>>>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 122 +++++++++++++++++++++++++++++++++++
>>>>>  1 file changed, 122 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> index 149d2ed17641a085d510f3a8eab5a96304787f0c..1e7aa25c675e76ce6aa571e04d7117b8c2ab25f8 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>>>> @@ -2257,6 +2257,36 @@ lpass_wsa2macro: codec@6aa0000 {
>>>>>  			#sound-dai-cells = <1>;
>>>>>  		};
>>>>>  
>>>>> +		swr3: soundwire@6ab0000 {
>>>>> +			compatible = "qcom,soundwire-v2.0.0";
>>>>
>>>> They're v2.1.0, same on 8650, there's a number of new registers
>>>
>>> Sorry, but no. This the "generic" compatible and it is correct. Devices
>>> expose versions, which is perfectly usable, thus changing compatible to
>>> different one is not useful. We could go with soc specific compatibles
>>> and new generic one, but what would that solve? This one is generic
>>> enough - the device is compatible with v2.0.
>>
>> Well, I'd expect a "2.1.0", "2.0.0" fallback there..
> 
> OK, let's see if any DT maintainer will ack such thing. :)

They sure did in e.g.

83adc98ec0d8 ("dt-bindings: dma: Add support for SM6115 and QCM2290 SoCs")

Konrad

