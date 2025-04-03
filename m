Return-Path: <devicetree+bounces-163020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D28A7B089
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 23:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBCC13A9C24
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 21:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9B6205AA8;
	Thu,  3 Apr 2025 20:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SvG8y7wY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9D8205AA6
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 20:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743713359; cv=none; b=YZQstJOhcOWyFGmZbZ7bxSJXLCyeBspWEJfDSuLTm4xAXiFlox3vOoTg2RKxpJ+o3W+DY0YDNwgLBQzuiLNSmKlpDwHjBhC/0DqQh85LGnkUQkwvRJ2jtOyTcJeMlqrYVVkrAu5Zcvz2v+RCHvOnGrpFZa7JqSF7y02QmvumOCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743713359; c=relaxed/simple;
	bh=LlaPfj4DUKuXPP98nymvRSQmhdWDT9UBooca9aD10/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mpp6a/tJt3R3Q41Kuj9pUjvXj1LeigGPpJjOuO5JK3+OwcWNoRdv5jw4XpmfIIhuB+Fv0sgKQ0QhAcXEwrDJCuh0hL+V8rQEAxxQh8/nL3hJ6qqGcz4IPeHciTZrggr1KO8IhRcTcOwaNdImbHmdt+FOAJyeXjk5cuRYB2az6z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SvG8y7wY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 533JhB5b030429
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 20:49:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s28f5mtAS44+kte+MljByntcVA76CObSAGStiZKJ2DM=; b=SvG8y7wYV+4o1qAc
	A4FGbbZXQxUSjdTG4Sb+T1AmSKICqex8QA8CUPGsha2oiCpMff1gVYApxr1OV3ud
	aZb958B/Y+fCsoQGOo3B8gNrTv2UoKpYFsHGRmxk1yvpxvwA7iXES234tJIH8Mba
	m/QV3zzdEH3wPMqbdqS16CumOYUsavVj2kWkhlc5VdqL8zkMVcgdCqULN7NAKN3g
	bIQ+1s2YIY5H5pyHpfOaBQa9MTFRDdorBTEj7xjIq2gsZJ7VpEEwB3b3lrA6BkdG
	HS9G4A+c3Komo+1gC6pGpXijOW+alvanhYpHyq5NCxqaU3onTCdSJvm+78vr1gTW
	XheYuQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45se4g31a1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 20:49:16 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-477608e8e4aso164881cf.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 13:49:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743713355; x=1744318155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s28f5mtAS44+kte+MljByntcVA76CObSAGStiZKJ2DM=;
        b=nolOnx6eSj/gcLkAf8fvFF03Dyk995KxpIrxZNjPuORB06lPEyOZIASailW81j0cmA
         b3OVjZhuIxo3uFlCFPdWmkuXtqrbclJY5Hf8svo7R26W4WVdiwEVI4cKJgpI7mx5Gwu2
         dLJ0vzBrcwuVDq1DWiD7uzx0qs752RFCbk8mcKEg11P5tA1sUTJYpsmnyATWhpGQWouq
         /OVz8UimS5NqaWeSM9g6Z67aDuzV5uDTj/iJt02fYlfVUVcyLwPutcZOuhZeeH9/TDYm
         A8rspcUsgc71BqvKtcL1JfVd7vUjLKutFsCYuLmctWZMaoXIqZPr2TyM5ep1+k8OxMnO
         WUWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVJ3v6VCT7fqnhJhtowk3HoXXWeXX0C3AtUu84gSggaVEQw3a0Lsc7o+Aw6d64laRqBFC2Ig7IHCtP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxooe6ujMrx1K1o8jUWrYDS0fBL0sOYSovAjxnwK3OSbCl5SeqN
	FrGMqDKx1nM0cQIIHMa5tiPlu4u3bF5ILkN/rlU+L6T/MsJ0XTd52j9ZVpcUFS1zgybIc7Z1E2a
	qh03B3zaL6FMl89DsaJ/D5nVUTCGd4S4pnj+OHcvefrnhj6mLWGUVcIoxJl7d
X-Gm-Gg: ASbGncucFMgtQX4muhSiNW+pcEU3NIG9zf3xmH5gri47L3BzXm/OarbSFmaPSsOFBir
	uwG3jj+6lRkDrbLq+/zVA7A6riTwivSQ0LTCru5j0vlKndvQ2DEozyOD4Bnm4ztwWXwe6Hy5BFT
	vt0m15XJKM+F6VNluOT+g2b7oZR1BtW0r4uUj/ilWa++TaFXLd8ZXJhCINGUuxAKXKe56ysbhfR
	4L+WHCV0vSaUZyYD/KN2oVH7F5XbdijOpyg4ARowunOWyNxvYJs9613zDRcExq9g8RM4luphdzK
	1n+WvBtXHrK/O233aTLFJjgt8rdmeeUj9aSy1jA4wSzZEUMGk/O+TwM2Iusv6gYZzAyEDA==
X-Received: by 2002:a05:622a:1347:b0:472:2122:5a43 with SMTP id d75a77b69052e-479249040cemr4830041cf.1.1743713355197;
        Thu, 03 Apr 2025 13:49:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVOq1tnzj3l0Pbxcf+TO8tXH+CP8A4Kfy0+V/nltEpUR+qVzOp0CXhKKc7GDQwdFdQ43jjFQ==
X-Received: by 2002:a05:622a:1347:b0:472:2122:5a43 with SMTP id d75a77b69052e-479249040cemr4829861cf.1.1743713354683;
        Thu, 03 Apr 2025 13:49:14 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087eedf61sm1366015a12.32.2025.04.03.13.49.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 13:49:14 -0700 (PDT)
Message-ID: <5de57d38-4cc3-44ab-87c4-cdd99911d343@oss.qualcomm.com>
Date: Thu, 3 Apr 2025 22:49:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: ipq5424: Enable PCIe PHYs and
 controllers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_varada@quicinc.com, quic_srichara@quicinc.com
References: <20250402102723.219960-1-quic_mmanikan@quicinc.com>
 <20250402102723.219960-3-quic_mmanikan@quicinc.com>
 <ezodm6qh63fs43xx6cw3smspfqkwqb5qscwfee36k5vtktguc4@tlqhuvjg2bly>
 <bcbd2f83-2599-4a2e-ad69-64edcb97dfbe@quicinc.com>
 <CAO9ioeVTyWL0-vzzNs3isDodi8jXQ9pHknyyhnWKcb+0tyf1FQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeVTyWL0-vzzNs3isDodi8jXQ9pHknyyhnWKcb+0tyf1FQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: apJ78ABIVZXklay7vDbK2EoIfrFRPxcM
X-Authority-Analysis: v=2.4 cv=a8Iw9VSF c=1 sm=1 tr=0 ts=67eef44c cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=OqglutSo4cKLNd8Ow6wA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: apJ78ABIVZXklay7vDbK2EoIfrFRPxcM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=752 malwarescore=0 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030110

On 4/3/25 11:32 AM, Dmitry Baryshkov wrote:
> On Thu, 3 Apr 2025 at 08:08, Manikanta Mylavarapu
> <quic_mmanikan@quicinc.com> wrote:
>>
>>
>>
>> On 4/2/2025 7:50 PM, Dmitry Baryshkov wrote:
>>> On Wed, Apr 02, 2025 at 03:57:23PM +0530, Manikanta Mylavarapu wrote:
>>>> Enable the PCIe controller and PHY nodes corresponding to RDP466.
>>>>
>>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>>> ---
>>>> Changes in V6:
>>>>      - No change.
>>>>
>>>>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 41 ++++++++++++++++++++-
>>>>  1 file changed, 40 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>>>> index 0fd0ebe0251d..1f89530cb035 100644
>>>> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
>>>> @@ -82,6 +82,32 @@ &dwc_1 {
>>>>      dr_mode = "host";
>>>>  };
>>>>
>>>> +&pcie2 {
>>>> +    pinctrl-0 = <&pcie2_default_state>;
>>>> +    pinctrl-names = "default";
>>>> +
>>>> +    perst-gpios = <&tlmm 31 GPIO_ACTIVE_LOW>;
>>>
>>>
>>> No wake-gpios? Please document it in the commit message.
>>>
>>
>> Hi Dmitry,
>>
>> Thank you for reviewing the patch.
>>
>> The wake GPIO is dropped because the PCIe on the IPQ5424 doesn't support low power mode.
>> I will document this information in the commit message and post the next version.
> 
> If the GPIO is routed on the PCB I think it should still be described in the DT.

Even basic s2idle can be woken up from, please describe it.

Konrad

