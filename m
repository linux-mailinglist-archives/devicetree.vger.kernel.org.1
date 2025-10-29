Return-Path: <devicetree+bounces-232693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7406FC1A82C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50C2E427E9D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D5535772C;
	Wed, 29 Oct 2025 12:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PV8z0OSS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Eh/1i3Zu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2D1346788
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761741014; cv=none; b=SnR5GuXojogqWRuC28UVX81JFyzeCcwyMreHO7lvcPb4ngq2FXE2SClOctUnePEKXvmgZRf/Ow40qAUPGuFm2PfE2SsgYDdQf26Hp+0CdmOPl7fYfaXOIVfVpWFhCFV/jnU9jmJHHg3ZDtLXm/doiJoBveMhL/BUU9+06MWchzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761741014; c=relaxed/simple;
	bh=kG5m0dyjBmsIXWdS8H3YMGbeyjdHEsjIAHd68POJ7Eg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pdtSr+fdZnUwpq2BAh5goLS5nUJ8oyUNO2neOuWSea97FemWt6gEU5/Oxr7lKatHEW/jyh1eZH4GFLWAESI189VjrgGDsfDGE9OpdEUdqMjAJ5FOWatPwu3IT8bL85WztSyGmCTnetWDZuFYerqDbAzvy2s2LAxSZV4RxrwltOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PV8z0OSS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Eh/1i3Zu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TC0Rif3720424
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:30:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TMUc3tJ7ZtFekmGe/5Q8FFBOdVi1pg7gP6RmhoyB/Ls=; b=PV8z0OSS7fuvvlNo
	d7s8xqEfukZ5V7h4g5zYmaZoXaL80TPf0ipHRn/xM27wKepv6LOcP+Aq7AfU7wn0
	djbLwHYiWjEfZO/fxGy+SJVAPnJcJSb7+A2VBTlcMBSOUgly3kk4FIrwK9/JgEJW
	0vMhMZdX7jZKEuYk/d/3UKj1NIvY5U7t3O69BbH/UDSHJ8AOUZ9KHpo1kcWfuHys
	e8vynn4G3I6316tBXlXcLdRkUclTt3x3eYpHeq2wg1LY/iwc4scOZ2z0rZSawSTJ
	BYIXImBp+B5rAm4a1p+zzvtujM8T+7HmUL1pcI+mt6CvM17UgsZhvZR2ha7joFpa
	WQKvnQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a22h1w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:30:10 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a26485fc5dso5582203b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761741010; x=1762345810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TMUc3tJ7ZtFekmGe/5Q8FFBOdVi1pg7gP6RmhoyB/Ls=;
        b=Eh/1i3Zu93qDmz6Dq2wttOnY9ABA0CsrOHmUeDF2B0ziXAR4+mfX8Cc/PSTWGd9D7H
         tlxCmQU9xCHjLoJ+8JQPRUN1QHD2NIDHEQP5vb+WKvy388oWYT2+rRkUnAuxFxTrZdXJ
         h0LSzBSPz9Ba8b9lMZAtC1pvme+oTDJJvNF+6+ntfWOt7R5Ajae7DRLbY4b/4WyUt92X
         RPFVWOfHxQcI6Gn7ByxNxEwHwAEW1FGM31Iq2P7pTpJW8wKQTsYhYclSGL6BuUYvCYVc
         wChVzRgSBEa1bh57R/R53FULjCStme2QsuXbgX1OMfpEyLJb0rDquAAszFFVb5XWqS8k
         9HTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761741010; x=1762345810;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TMUc3tJ7ZtFekmGe/5Q8FFBOdVi1pg7gP6RmhoyB/Ls=;
        b=StePTHn1TMFKq8BkyxZAjhmy8hRTGzuZpMYS8kzK1zqPMSd8bVh66xeC+6OJFdhW0Q
         ZQW78o3DYykEME5XVStoRJ6wGi52XaATgW4LxFePU/le41cUzdduu3gY10LjuFvVuQ3J
         etTBCyAwT3e8BMoG6XnAY3gakSvk7xuS2osWfSZdVrgktJKOCVUX/XTiC2oXlnGHWLeF
         SR5AuyAN1qRLfm62l2X1ORfg7POpECg4i2cp0vZSIkq8kokKqmT8wVMqfxVQ2soL0Cbc
         1jR8y9k555AKWj/FHldeJuCtcBtjcruNwfw8blCMuvwfn5nsZpE17HD9ov0Wq/IxJToZ
         kLuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZi9WKoHKXIuOQG2DqNzEb9U7gAlCApbHaLw26g0JgRf+outCkqYjFhyKQsbwSZ3fjfbETYZijYFQc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6Nz+6REk8+Rwxu9fwn762772xpLgRVBPqChb15VB0nYs0rd9s
	ayHIRMIgBuxiAuI4yAuUWmCgTpaK7BXMROYdkYewh6klGhCGefRjl4hKhui0XjHtDZj/ID81LQI
	VQbpQOejMROg03a8LN/ZaTtX7BiuoyUVS5hhwAE2aUtbJWLWF1zujBECOf+viv/cp
X-Gm-Gg: ASbGncuihYQ//jPNc99d6QJLh34Qzgjh7Bf5MFvGFkdSDt53mB6jAvM54fWHppJ4eyW
	Yh/7/WOT2SfUkrgmbfhKiycO3t3J1iGgRvsyCEVMNwCwHQJLXV82fsdpHqw0rvvhltmOv2q04Y3
	ihya8BMo+yKJUCoQ9dgeUQVccX+jMrM3Ms9jOHMDrP+BhHDI4YV1hCX30Fv0vvMbg+K/puyOyah
	EElxyGyAPotsotcMVj/u+GFVpuiFNAyhfoLCCx1ej3VCrN8KOP+dEObziXaeMFVIbWBMo3NuqJw
	QD3YykgpWYxwf5rjYP/mzn6HPOXYaYqKI5EWdL8K5mIc+q97iHL6+wwSgAUbsQXJDI8IgMIC0+X
	CtyDUrpH6JfB7pOUUBimfpQOjxXpFvJM4
X-Received: by 2002:a05:6a00:cd2:b0:7a2:7a36:46dd with SMTP id d2e1a72fcca58-7a4e2df8684mr3535358b3a.5.1761741009596;
        Wed, 29 Oct 2025 05:30:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVwrrfaLG8ulMxEQ6t0UsGwp3wouMxuPndkKaFYkveJm2eyV1MsmhSCWLET27rZ8SM57ZGSg==
X-Received: by 2002:a05:6a00:cd2:b0:7a2:7a36:46dd with SMTP id d2e1a72fcca58-7a4e2df8684mr3535313b3a.5.1761741008921;
        Wed, 29 Oct 2025 05:30:08 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414015724sm15081222b3a.14.2025.10.29.05.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 05:30:08 -0700 (PDT)
Message-ID: <a8046f0d-ee74-457a-aafa-6473c67c6ab8@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 18:00:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 QRD platform
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
 <20251024151521.2365845-4-krishna.kurapati@oss.qualcomm.com>
 <a117b105-a734-4f67-9bb2-c06728e79083@kernel.org>
 <6297468b-77d0-4202-8ec1-3e731acc43de@oss.qualcomm.com>
 <6234e22a-c119-419c-83b7-2a53467951da@kernel.org>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <6234e22a-c119-419c-83b7-2a53467951da@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA5NSBTYWx0ZWRfXzDh+ei8DGUgL
 QEw0yoJHszhNgkukzQcECOdMq3y+mtLJorK49ZdTsumt78ZX9VK2z5taGZkMIdqrw3fSDnwh0KU
 CycLxcHWbcBAOoR2lz45HCrPlQm9spl1X9gr/YbGdeS5VqLSOO0C3knCiYx8VKs+fGF2xBsRZDi
 7rwGCl1Dx4EWBKBBn2GiguHIBejZcKJZjArhafXpuszqzl52kBSN9Rn4lkI/TrqkGnlpqtkPI93
 AUFs1DxdrKDQ7fmT8rGuzOvcOR/6SPbvya2jBbG6IQbBwu7xkpnHKDZlZeceT7/ZDH0shkzD1Sd
 2V4C3t4bATizixRhsZjzz06NxqR7kZVXLYeSZs8VdhkJ51u+Q4lbMzVbrI1VxSP6ldQoUwLZgQA
 C1Oe4UOAchjloOfMCh0T/LKby8rRuw==
X-Authority-Analysis: v=2.4 cv=V5ZwEOni c=1 sm=1 tr=0 ts=690208d2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yTxWjB1dP65ezAuFSf8A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: Z_iDDNQja8TIuqe7C6SuX_EeJqkcWOvx
X-Proofpoint-ORIG-GUID: Z_iDDNQja8TIuqe7C6SuX_EeJqkcWOvx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290095



On 10/29/2025 5:35 PM, Krzysztof Kozlowski wrote:
> On 29/10/2025 12:42, Krishna Kurapati PSSNV wrote:
>>
>>
>> On 10/29/2025 1:37 PM, Krzysztof Kozlowski wrote:
>>> On 24/10/2025 17:15, Krishna Kurapati wrote:
>>>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>>
>>>> Enable USB support on SM8750 QRD variant.  The current definition
>>>> will start the USB controller in peripheral mode by default until
>>>> dependencies are added, such as USB role detection.
>>>>
>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>> [Krishna: Flattened usb node QRD DTS]
>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>
>>> NAK.
>>>
>>> You ignored every previous tag - multiple reviews and tests, and then...
>>>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 22 ++++++++++++++++++++++
>>>>    1 file changed, 22 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>>>> index 13c7b9664c89..fc5d12bb41a5 100644
>>>> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>>>> @@ -1054,3 +1054,25 @@ &ufs_mem_hc {
>>>>    
>>>>    	status = "okay";
>>>>    };
>>>> +
>>>> +&usb_1 {
>>>> +	dr_mode = "peripheral";
>>>
>>> You sent something different with issues.
>>>
>>> Really, this was a correct patch. Was reviewed. Why you decided to drop
>>> all this, drop everything which was correct?
>>>
>>> Your explanation:
>>> "- Removed obtained RB tags since the code has changed significantly."
>>> is just wrong. Almost NOTHING changed, except completely unimportant two
>>> node merging.
>>>
>>> NAK
>>>
>>
>>
>> Apologies Krzysztof,
>>
>> On first patch that adds changes to base DTSI, there were changes moving
>> to newer bindings and merging child node and parent node. I should've
>> removed RB tags received on that patch only. But I was over cautious and
>> misinterpreted the rules and removed them on the other patches as well.
>> Will be careful the next time.
>>
>> Also is there any issue with marking dr_mode as peripheral here in usb_1
>> node ?
> 
> No, I think I looked at your other patch. Tthis was reviewed at v4 and
> v5, which then it was changed breaking sorting order. This one looks
> correct.
> 

Ok.

I will send v10 tomorrow. Can I add yours and Dmitry's RB tag on the MTP 
and QRD patches and then send it ? I will implement feedback from Dmitry 
on SOC dtsi patch in v10.

Regards,
Krishna,

