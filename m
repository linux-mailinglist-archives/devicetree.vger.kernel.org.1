Return-Path: <devicetree+bounces-175187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8497AB00AD
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FA3B9C06B0
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5060A28642F;
	Thu,  8 May 2025 16:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gx1VbU0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA29E284B2F
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746722715; cv=none; b=C0YAiJ7FHgQ4rnXPK3RtJ6Jh95CUvqzTjZ2MyG45QY0BHUAJQkvsfPYeqRz2PR1CekwilG6un6iNE31IKt6VxyX4SOLBEKEvoh9kYdBMuNdQ+B/6Tqi9RxD4aBYU1o35HrYGq2fHm7xPAYgTHikwNLzns9/1nIG1eIjf3sNlvZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746722715; c=relaxed/simple;
	bh=kwiaz6X37w2p+rGl0TL9E9E/OK/1JhUxEEvizn3ahAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ryt1NenCVeThUX+vD5KE31T9GVjekZwWKK6duW8EWboDlR+5+mKA8R+9W0ALpfQeFkqmVHDpa+ROtWrpgGtdD416Xqxq0SZ8HoFzLMpKA4oU46uv2N+aPWBP20X0EccJiH5j7SQs3135ygSrHoesZh0UK7mQsb79JVtVEA8hkrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gx1VbU0K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DSpsk016663
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 16:45:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JSgwUqkSfEKmNonIWMkEu2HDYErCYBP3rkqztUMDifA=; b=gx1VbU0KJBasGDR9
	9olNE3xQg9wIMhXlglOw419otAS8RjI9tm29pMl9cuOGntVpwelD3Hnod88u/nTa
	6rKuCG5ENY+tx3Ta8FQbqfEDXCjNAJLeLwLE2DCvDPQYTvEdO8co67Xl4Xe0a6AJ
	TEA4LQclneCObVzAH1hLWrDxB+LBYHOXUUpYbSxdGUVvMIJGnhuXSWXHKJgHx7Cb
	E7kx0rPC576uavyDgHm3/KWSeegXuj0sb62z+36kFF26TsRlYYUS8qTPNi8TD0Ot
	Vx9HDrUWEiDoVO3c2p/ElBGGDQ1CB3eva2yhiPuDTKfSkoT3NlMPLBLbdK5AFfte
	QEaZNA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp8sypg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 16:45:10 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso26214985a.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 09:45:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746722710; x=1747327510;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JSgwUqkSfEKmNonIWMkEu2HDYErCYBP3rkqztUMDifA=;
        b=jfCJeIhMZcQDtKEra5XJTtHu2thqqPUuSrb6GOVKf3qWCfpplyXRTD2H0vD0j6c7Zh
         a7N8m7vNZNs1OVd0yS5QvW2xqevOlSccttKU9lZW7VJ9U+KrVUElt2DHq1eB0uNv+NKU
         5lK3WSLvcYPhId0QZi/LyxaPjNymEnuVMF2iIxKSXqIkQF1Y4974q5WB1paKc88dhLkv
         zCRb+Hw1iGGb5IJmVcu2m+kK98G+yOvMvGZuMYdoO5j7c/f2Ss1Gl4S3SHQdEiY3W+zW
         ND9oh5DmXn+gW3hcYDxfEZZcZxUIJBhrxCY8VxEHG66r6DX8t18Q5YO2iSV/zdEt4HhI
         1w+w==
X-Forwarded-Encrypted: i=1; AJvYcCWSJ6oZg0g65W+sQSzaMlEvwDBzmHufLXPtNhtoiNQ7jIh25dOzLVrm09Oi8x1E3xkD6qshMs4yfbyj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3tmLWQVqtnSDoEzK+7iPduPapR6GVHZCZEkfV3WO3t4CHpS9F
	41TId9TTI506JQSDK68turZIDozm1KQP4nZgA7QDdyllyWMAaruM4SuHV8U/qbJ4h75aRXteRJ7
	Ql8eHG94iK8PRFuB1PWZoxWZ586ZWVc52QyiSwT5hdSAGDRi7ZfB+xNNuqmOX
X-Gm-Gg: ASbGncsgYfj21t5n9z4stdUqZb4BvInz6QzCkQ9YMo7deSWqfdLPLVFKiNnNuooD4yK
	6SIPj0ZdrXPZiXbBa9kfm8+MsHhS2wcT2kPddj8dJjjmwEmma++csH0SmI1YUAVOI7z/i3ll4+o
	5bEnmAgAQ8TjT3YEF8mGjSrE2irUFuxbIJYVEJQm4v4Y+skW9wHLXbshZeBP7fCYHzj3Yhu2Y96
	o+jXi+zKyCUkxAegiDHxL1Ymhg8WklQObotKHLRT/Qv1RlNmRa9MZ0ei2e3spayOV++VYG959ny
	K59/Ew18OODWxNkmF55+gq/wj2GKbaI/8NwIhgpEUH2lzBYh4Du/nLni1vicFPqv5kk=
X-Received: by 2002:a05:622a:44:b0:474:f601:c21e with SMTP id d75a77b69052e-4945272e639mr384671cf.5.1746722709665;
        Thu, 08 May 2025 09:45:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjCAPrSx/92bGi1x7He7ajN3/L+4Y9gypA2HsWqw0iZxERYDr2h8wCQykaB1fY5i9aXZ5LlA==
X-Received: by 2002:a05:622a:44:b0:474:f601:c21e with SMTP id d75a77b69052e-4945272e639mr384241cf.5.1746722709030;
        Thu, 08 May 2025 09:45:09 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2197bdddcsm10190466b.140.2025.05.08.09.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 09:45:08 -0700 (PDT)
Message-ID: <b488ac7b-46dd-44e1-a132-c92daf95b421@oss.qualcomm.com>
Date: Thu, 8 May 2025 18:45:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] arm64: dts: qcom: qcs6490-audioreach: Modify LPASS
 macros clock settings for audioreach
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-4-quic_pkumpatl@quicinc.com>
 <12ccf19f-10f9-42a7-b61d-fd54d5922bf7@oss.qualcomm.com>
 <82e6c229-8852-4ae9-add0-5fdc0a15f7c5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <82e6c229-8852-4ae9-add0-5fdc0a15f7c5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VDwBQFPlHvjLLzaTNlyvkaBdUMxRd8Kc
X-Proofpoint-ORIG-GUID: VDwBQFPlHvjLLzaTNlyvkaBdUMxRd8Kc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDE0NiBTYWx0ZWRfXzz93B8GVkK77
 /bHZcHj0DfXkmHzNbKJP4WB+V6qvbLD17oJ6AK/ZM1xi6/UjNkJehV+pKscSKyA6sQJfOvyZJ4S
 643vqkbxDHZMR1qzfrLK6Qq+z4CtcxvTyp36O0EFrCeuHXemlwOXV2BxITAFqRawo8e05CqsP6l
 O4vP6ghpY9+auwPp2O3s+S8g6Lv9cqVjVz62g2O7z04+DsGxdj9ItR6MG1uLBqahdbIuOTme2U5
 isVPjD/jD+7Q3GOSJgRb1QDeQP03Pzfd5iPZhvRAcD/LPlThhT3UXCIEbOTd8lRweDel+gr1s67
 /WzE1SmX1TfLj0tFgUpAR9aIv//T13j7/HAfq3Mk6KzHxi4umjbvHkQ/nLye7eqrZWpUUo13THs
 tglLhji7YzqnkuF+FAMEHp3wrz1U27+PImojE1luXkbR0Ap+vT7aV6k74YhL5OIsG7wk2G+s
X-Authority-Analysis: v=2.4 cv=e/4GSbp/ c=1 sm=1 tr=0 ts=681cdf96 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=FNMLLXcm4HOaPzSYPkwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-08_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505080146

On 5/8/25 6:38 PM, Prasad Kumpatla wrote:
> 
> 
> On 4/29/2025 4:24 PM, Konrad Dybcio wrote:
>> On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
>>> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>>
>>> Modify and enable WSA, VA, RX and TX lpass macros and lpass_tlmm clock
>>> settings. For audioreach solution mclk, npl and fsgen clocks are enabled
>>> through the q6prm clock driver.
>>>
>>> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> ---
>>>   .../boot/dts/qcom/qcs6490-audioreach.dtsi     | 48 +++++++++++++++++++
>>>   1 file changed, 48 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
>>> index b11b9eea64c1..f3859d805ea7 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
>>> @@ -11,6 +11,54 @@
>>>   #include <dt-bindings/sound/qcom,q6afe.h>
>>>   #include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
>>>   +&lpass_rx_macro {
>>> +    /delete-property/ power-domains;
>>> +    /delete-property/ power-domain-names;
>>> +    clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>>> +         <&q6prmcc LPASS_CLK_ID_TX_CORE_NPL_MCLK  LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>>
>> TX -> RX?
>>
>> [...]
>>
>>> +&lpass_wsa_macro {
>>> +    /delete-property/ power-domains;
>>> +    /delete-property/ power-domain-names;
>>> +    clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>>> +         <&q6prmcc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>>
>> TX -> WSA?
> 
> For qcs6490 RX drives clk from TX CORE which is mandated from DSP side, Unlike sm8450 dedicated core clocks. Core TX clk is used for both RX and WSA as per DSP recommendations.

Please leave a comment as it's not obvious

Konrad

