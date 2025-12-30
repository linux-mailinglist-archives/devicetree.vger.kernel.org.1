Return-Path: <devicetree+bounces-250328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D74CE870A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:48:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5661300215C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 00:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B432367DC;
	Tue, 30 Dec 2025 00:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="URbNJSNs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kAdzJgue"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1BE1F95C
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767055722; cv=none; b=Qnrh44IfML2fEJlU7TdWZ050czOt9BMaQSHxdTgmE6zlMGJyAdqB4OpwSEGtN8sKKa4ntQnEAnoovGONTj88M1pMhkH24z/7NpvM0MggbNIDdIWUgAJ1CcqF56pkdh/naQ0eBt6NQKzCTO5VjYSOB/M4TSPiSVL7VwEkp1RxRAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767055722; c=relaxed/simple;
	bh=SCav7Xh1WOgN3JTknxTrlyeaLMPfl6Q8XQZmijRLiK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PZSjbyClkh8ILEZXtrKN6L41cft9lUCfmavH0eQfhUIAX9Z7WH1ACdI0KuIGraMR5pLM4M+2ocxlULFN2yzSw+MJBTb7jRggxCKen9JAOmsOxoSx411U8JqJC9ITN5zz3e5YJpxgr6+AgWwc/JvQj+gN3Rvlgqo13CF9+zS+ofI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=URbNJSNs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kAdzJgue; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTKXDkA1750898
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:48:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y8GM0Fp1UaT9GVrANfYfNHw8unV8Ol5iqYkldQaK+ZU=; b=URbNJSNs1znaniOK
	h2VcdVwdYx16hwcrs466rzvAqPmYRn8e4OB1JS1y4KtQE3Wdmh+zqo7vVN69vrvt
	ALGOoaPmnwmftkpCL7idkqDPExZo9PdsNu5I5JayRZ1DTGUJMp2EWqtwdcXB84V/
	mTqVjISIhXXMZ3wxpa7uVPWhotA0vFkF6SRY1VbqsvVbvsrcjkVlb7jKGcAerzqY
	p45vMhEccR6JuLDskpgrXYig0eWipVCoBzEqaiUBstcSjLib6/zHOPGY1z5A4QAc
	cn+pakJFxETMGWiuHLZagxgtdyj/WmlY7SXljsqPtDm8486OEb3jt99mYEMOuwIF
	Q8HpiQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgrcb3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:48:39 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9ef46df43so11210757b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 16:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767055718; x=1767660518; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y8GM0Fp1UaT9GVrANfYfNHw8unV8Ol5iqYkldQaK+ZU=;
        b=kAdzJguemda6JBER8xp7WN8t/vqOphaOY9HZYyyf8vnJ+ffRE0Y0A14CJc6ZE8i4NH
         wh5rEXZMH5Nq5jkrHRlEP1pMigjkQ4VvqhctlXGZawavXIw0POi+OlKMBAf5jcy52nYV
         mn92qFHEQU7NjwoXvT0zwrm2bTRntGXD75tBYoMO15OSvBkaEtVzXtQMhLguNsSVo3g2
         VWgr7dLJozhQXLhUk22Ghv7UXG1+7bGHrvXwYYHKtULa+XR1oQZj3hojpC2iz+xjdxyf
         87hJ8Ee1+3ZOJmapUeFxTEv6wpNlsBWVsTZ+Xbs0sKBedTpL40LZbI0lEH3OPAUKaPYq
         kxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767055718; x=1767660518;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y8GM0Fp1UaT9GVrANfYfNHw8unV8Ol5iqYkldQaK+ZU=;
        b=lgcqV0/fYOGTpL4qWndXTd5laqrJeb7AcUL53szOnit1xluVhL5Ef0KlZ8yRG4Vrq3
         KTEEO/Rj8b9/yGGoObi1cL/GUdPvPWKppPNk8S7BN0RRiMyovFqp3UOCLbBkbD7OukvR
         +aX4X6M0cekmIjm1BDrjp5fzWUAuSnUBXRrOpKm1NX8HIzfS/BvWv8x17wRAnlc62htk
         6yoN+1hK2btPJlIIU/C1QH2xTzGVO5C2njQ0fw9/lHZ2YJYxCZrxy/p0LUn9JUaQq7HC
         wqMceZua7ajnmu4u+rMEt2hlDwoLHLPqd8UeyeZKIvYj94bhMGAioxnt26PcfX0qV3Ra
         uM9A==
X-Forwarded-Encrypted: i=1; AJvYcCXcWaSdXRapId3amO6qQxBglUFwsmzpOTOLZQMGxeAGhWgUfkueQeYfqByPmxQG5cSLxiU0zbIupecF@vger.kernel.org
X-Gm-Message-State: AOJu0YzAQAgCh5VtsDXlh41Szum74k4dNwjALrYFU8Vcyclyp6LWmDgr
	W+1bQTfdMs+snsr2ezvF7qlrixsvARfsSjA0hgLsOvJvT7LajN3CAoeO+hF5On2FijBeF33BlyE
	ymK8SOAcBpdLKRrad7nxISP3nfkE394BrUWnL8csufHsbAT4ukfMo+xJgOS8SzmcU
X-Gm-Gg: AY/fxX65LNWPMwamYyk1mDyJfDO30us5BK4Z8CwOMsiDpQ3qCx49Iuyu9hyqTxRXSgr
	dnBUXyYt382ogmmXzSTVluFdxyw9QLk72e8eQSZ+OafEOgAPj2wXJ6KpJcwCb4ZGGLwyF4VG5B0
	O/G0izxgYTbmN6hQrMAWmoGTaxIX8lG0dLIMC8h10Vg0D5tfvHWtV9RERi04LWlH63qVorBwXwY
	HRf+c150ilTZlVyZFNQAz1jxy1W4PRb/q71skzR9wUMZqr4jWul0nhdX5KOm5cXciyybAjoD3nT
	yGqFzVcWe0mUVq6By7F0cORhGnPTaRQ/2qw314eTRC70eT9HCN2sECQI1UaedNFEPdFluQtj+lX
	cJ8i9Z+oAyL4ypZm5fOi5uBbzlg0BN/uuGq4J5FrX9Kq3j0ZYbIm08zKs+sCBlkJaW44t
X-Received: by 2002:a05:6a00:f9b:b0:7f6:3f21:7d22 with SMTP id d2e1a72fcca58-7ff65f768d7mr26444734b3a.45.1767055718206;
        Mon, 29 Dec 2025 16:48:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUtkKvhymw8Xl8ay+KCoAJfW45Qb+Ibnnd83sYZQxUa0ZEf1vevTrmAqPjGAuIFuOeLCXXdg==
X-Received: by 2002:a05:6a00:f9b:b0:7f6:3f21:7d22 with SMTP id d2e1a72fcca58-7ff65f768d7mr26444718b3a.45.1767055717691;
        Mon, 29 Dec 2025 16:48:37 -0800 (PST)
Received: from [10.133.33.5] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f26asm30025450b3a.52.2025.12.29.16.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 16:48:37 -0800 (PST)
Message-ID: <0ed71599-e8be-4987-985e-785f2d47cf96@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 08:48:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
 <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
 <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
 <4f79d090-7d1c-4fb3-a835-a7e4ff96f79c@oss.qualcomm.com>
 <448f2efa-5b1e-4855-a62d-2e375938b36f@kernel.org>
 <19f46c69-fbfc-4129-98ae-fc5aef3f75eb@oss.qualcomm.com>
 <8cac29c3-6b05-479d-a06b-583f9def7beb@oss.qualcomm.com>
Content-Language: en-US
From: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
In-Reply-To: <8cac29c3-6b05-479d-a06b-583f9def7beb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDAwNCBTYWx0ZWRfX7QbLdOjeo/fP
 8DtyWK4L+6Qe3U8q6jOVpe+4Y8B7XIjyF0DHx7ubj7YwezQkBqmBNO1HhXYPc5mcd2betn/K5Kg
 5OrWb1yJz7ZLx991DpxT8hAa7kAqsXdDZZhwBTARpjlSXhcmua3WUXoyLGxzbsMeuWorxU/An1K
 BpvcNf5HWKXt7oY1TaYg1rU9NuhHP794iQnc1TWxYaQ5vWwajai8PpmizjjFXCUExHYphTX/19z
 Jvsg6MZPxhFYjCUOQyLKBnZBJ5zbfaNe5Xg0VDnLIbOSp//Bto7AIJaXvqhO7lOwzm0L9lYXUbY
 MP1cZELRHgCzVz2Zjela19A+mhR5b1eQRXDzi5F06gV8gwPW1E91G+seiXMLxE473b7pHuyBiIL
 pHTbzXIG5dHlidOzu/t+imkEc4WqTeh6eOetvnb8Y6ixeyxq0HAXnyh63J5iV/s8eNKGYDywNl8
 jhGI0SCiVygqcEnBbLw==
X-Proofpoint-GUID: NoSEX6XgQCxg_REYerEZCmPpmhonqUBm
X-Proofpoint-ORIG-GUID: NoSEX6XgQCxg_REYerEZCmPpmhonqUBm
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=69532167 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-EYVSfHI5QxSVCcxwr0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300004



On 12/29/2025 7:27 PM, Konrad Dybcio wrote:
> On 12/29/25 11:19 AM, Tingwei Zhang wrote:
>>
>> On 12/29/2025 3:21 PM, Krzysztof Kozlowski wrote:
>>> On 29/12/2025 02:23, Tingwei Zhang wrote:
>>>> On 12/24/2025 8:12 AM, Tingwei Zhang wrote:
>>>>> On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
>>>>>> On 23/12/2025 04:38, Tingwei Zhang wrote:
>>>>>>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
>>>>>>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>>>>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>>>>
>>>>>>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>>>>>>>>> the common components into separate files for better maintainability.
>>>>>>>> SoMs do not share actual hardware. DTSI does not represent what looks
>>>>>>>> similar to you, but actually common parts.
>>>>>>> Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
>>>>>>> The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
>>>>>>> has Hamoa on it. 
>>>>>> I do not speak about boards. Read carefully feedback and respond to the
>>>>>> actual feedback, not some other arguments.
>>>>>>
>>>>>> NAK
>>>>> In this change, the SoM hardware except SoC is described by iq-x-iot-som.dtsi since it's common between Hamoa and Purwa. Hamoa and Purwa SoC hardware is described in hamoa.dtsi and purwa.dtsi. Hamoa-iot-som.dtsi includes iq-x-iot-som.dtsi and hamoa.dtsi. This change could reduce the duplicate code and review effort on a totally new purwa-iot-som.dtsi. If we found any bug, it can be fixed in one common file instead of two separate files. Same idea is used in x1-crd.dtsi. X1e80100-crd.dts include x1-crd.dtsi and hamoa.dtsi.
>>>> Krzysztof,
>>>> Please let me know your opinion on this. This could be a common case for
>>>> Hamoa/Purwa boards share same PCB. Share same dtsi file like x1-crd.dtsi
>>> It's not the same PCB.  You did not really respond to my first message,
>>> so I responded to you - I do not speak about boards. Then again you did
>>> not respond to it and brought some irrelevant arguments.
>>>
>>>> would reduce maintenance effort.
>>> Does not matter, I do not question this. Why are you responding to some
>>> questions which were never asked?
>>>
>>> DTSI represents actual shared physical aspect and you cannot share SoM
>>> physically. It's not the same PCB, because you do not have a socket on
>>> the SoM.
>> I didn't make myself clear enough. The SOM PCB I referred here is just the circuit
>> board excluding the components on it.  Let me rephrase.
>>
>> Hamoa and Purwa SOM boards have very similar hardware design. They share
>> same circuit board and most the components on it. The only difference is Hamoa
>> SOM board has Hamoa SoC while Purwa SOM board has Purwa SoC.
>>
>> I agree they are not same PCB since the SoCs are different. 
>>
>> However, I still think it's better to use common dtsi iq-x-iot-som.dtsi since their
>> hardware design is very similar. 
>>
>> I'll invite Konrad to chime in here as author of x1-crd.dtsi and Qualcomm SoC
>> maintainer. I think we are facing similar case on purwa evk and purwa crd.
>> Align to same strategy for device tree topology would be good.
> Hamoa CRD vs Purwa CRD are literally a just a SoC swapped PCB as far as
> I'm aware
It's the same case for Hamoa IOT SOM vs Purwa IOT SOM.
> Konrad


