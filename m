Return-Path: <devicetree+bounces-243429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FB1C97A74
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:40:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D3523A26AF
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2CC311C27;
	Mon,  1 Dec 2025 13:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mzXVN4Wn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dMrSHrj2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40B4311961
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764596446; cv=none; b=RTHmu4XfIau8S7lz6VWWZ+b0moLEd9tiqB3P7uKQqOFsQcVU5D9UPdFJV9Bn0b1pNlK15XcuwEqHlb93FkmM+8capbyz8j3k3M3BlcJx5dSjmK0J5qYJfaHFkjCljUa5bs1IJeC4mPQTsHSCuLgAlOlgmXK191YniDfVVMd7Rt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764596446; c=relaxed/simple;
	bh=4L9DAcmCmIYe1wiODtkWq4OGSsc5ukW/GWK4LQo6AYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hwbi1aWUyJznNjHoAinEqEjc9GLws4SBfgZcXRvdn6NyOSN+XGUjKN8TetU+R0Gs9PIsQxgxuHmEN42rmftlJI5rYHKzKEEx1SdJk8VS/NadZHLCgzZZtGxlMuq4WY4bKiiTEmb5ll0kMKab+XSchBNw+/GfwatC5vdTwTxOkmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mzXVN4Wn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dMrSHrj2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19MEaW3362398
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:40:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ke15MN1YvaWnhyXMfOc/kHTCr6V5+wblM0hgXYie3NQ=; b=mzXVN4WnxCLP/m9G
	rZ73oeY3SSH448DXx2tOsvhzW2T9hXvKjDEvxtZTEnNvKXopnfZFa8Z3HB2KyIac
	9Qnxqo99zkUR0kMGRMRxvhaB9gvPGoz4GrcDi8x/3iri61WSy5Fc1C2j21elZ1Ej
	nYV7/lchvQmWPQ2Md5Ucmfcca4BtokAk6zIXpRuNWaNBt45dUieaQubvDmT1VIS6
	uNqHl7FHXQHzdaFJqk34GfJGvcI0aVvov5s0xDDMaP5PqqSkldzpBwSWXxSaKLpJ
	V1apUZAqsk88nKRBpEUikOesV7KllqLn/mmb4Iireco2QNzJQYpLXo5KHywG5Z9H
	xrMxZA==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8b00pyd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:40:43 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5dbd3b72401so412659137.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764596442; x=1765201242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ke15MN1YvaWnhyXMfOc/kHTCr6V5+wblM0hgXYie3NQ=;
        b=dMrSHrj2u/X0FTNzDxyz/+8hTt4gSrK9xJ6K7ZPPoErNhyrjIQHwCTVYdRBiO53DEH
         DHL4ca8DNuK4fJaSBhUsSVkxPZ2E1NFHgPwXnNy0D202S+iicXgHWuBbvfCuEF4xPDpC
         d/Ct4EMJC/kzQs96v3bXy+btXQto2b6smKbUyXNye5uRuSsaEzlbKRvILKzfEocWXrMZ
         mO4GJY/cnizUd+AWTfjtzd+35ptALBqnUrCF4H+kyq2kDC3pMufcFtneH+rM9HYXVAQV
         DUTsjovYAQ8OT+EV9/tCH5Nj6W6X0TDs7kjkIsL4QTL/EEeqh34COyzCok+I7ce5XFnJ
         Nbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764596442; x=1765201242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ke15MN1YvaWnhyXMfOc/kHTCr6V5+wblM0hgXYie3NQ=;
        b=NavH8P9HUj8wmLgxIa3/zHOdomfQ2SObZyb/b+/6yRHqADAsCa5syD49yUBitNENbl
         0NnOZO46rH4WILqZOCFbNucBr24+J9okwPl1m05BjMa+/Z/LF7ZKAgskcwL/dNW3GOVL
         IFzRzC8YUq3YpGVj63oBu24gtPCi46h36qZrhXgNWZFJ7VAjpdR606ZY5j7y7bO9TgOm
         tB2gG2FhxsM9pm2RucPfTpaQ6JPOadMMGIOm/XzmZD/6fhDCpeG+/oQRRvlAK83u2FD0
         4ORVW2pZWV6lDD+N+N257lRzmy5ss+HsgLgZzOxin30v//OgXtUSpygBuTFvg8PxfNXf
         Yq2g==
X-Forwarded-Encrypted: i=1; AJvYcCWAxUjIi6VL7qNrYHvWSCMK3t9AtF4KgUhNNLRoVuz97XdkQ9HZYZvKfM426sSp83U4u8WKzrvSWBsH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc2t4D1XNV1Oeh5kJ8EDuuULAyluc9UY0Icwzfew5HW5VfUGfC
	zD+Q0+gj3ASqTk+Cu6Uv+gawl7QpQRTqn6Aywlfa1H8FPdyJVaqR72wHrkV6V4l/boli1Jk4SsT
	zpykcwdkobCsk6y0LucIIHERV5GBDoL9NT19zdCpi7oFVzDNJFKxjJJfymJ2iHrh9
X-Gm-Gg: ASbGncsFZpYBVhZWswMa1M8Gt2uMb+2dqR8CYDh1+/keRfdr8nUY2ASBQxslj60HIob
	4gxLtp8qsUSaOjgD36MqMwQqcxBgcdZFn8DMgwpp/ZOhApXme4RtMG2KkkWTndn2LpQjukzTDKu
	Y6ITyS6XtpzzPENy4VgRPZpIVrseb/9Lshz+7sBPvRqES/m3nVTzdzpPz9h+dp4TooSnX7jLapo
	kZLl8RHhD9VRxcwD3So2z6n6e4NMwGNuxfxyhdOhFHgynDbwv/eUtfa5zoaOtVVaOsk1Vy/jI9G
	wjaJT7p/PaRXE6vVzjceZMu3Rp+PPPrZh+6OSvzvpjP3NVv5UshxGKdLo7hwHrmJwDN+WoWMdVd
	rO7wbq7qi9ZNEIHosBn8meLgak50i5/qunWBS3QdNYZB26G/vZNVLhtQhukqcqECl5q0=
X-Received: by 2002:a05:6102:3908:b0:5db:f553:4ca0 with SMTP id ada2fe7eead31-5e1de229ba7mr8191781137.1.1764596442626;
        Mon, 01 Dec 2025 05:40:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPOeIK1hAyKionCk0QoJjPzVJmxLdVTpZGvaiKXINTbDe2uaGwGDoCpySRFUD4/3kz1oLRNA==
X-Received: by 2002:a05:6102:3908:b0:5db:f553:4ca0 with SMTP id ada2fe7eead31-5e1de229ba7mr8191770137.1.1764596442107;
        Mon, 01 Dec 2025 05:40:42 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f4d533f2sm1231551266b.0.2025.12.01.05.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:40:41 -0800 (PST)
Message-ID: <509b970e-89bb-4331-a558-8b6fc54b470b@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:40:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Jonathan Marek <jonathan@marek.ca>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20251127212943.24480-1-jonathan@marek.ca>
 <aSl48gV9laFb-MR1@linaro.org>
 <1f2c4e5b-2d7d-41cd-9772-374e3de46a50@oss.qualcomm.com>
 <45bee524-d960-5b24-83bd-4dfb3e78fb1d@marek.ca>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <45bee524-d960-5b24-83bd-4dfb3e78fb1d@marek.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TcKbdBQh c=1 sm=1 tr=0 ts=692d9adb cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=RAbU-raeAAAA:8 a=EUspDBNiAAAA:8
 a=SEy8FXNfZs6TXO5W6OgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-ORIG-GUID: 3GOVzlUqq8JX7_efwMIqb3p0AXWzORCx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMSBTYWx0ZWRfX0C1Xe+yU3gR6
 25qzodruEU2IR/wWIaxZSRPjqiqMMIfqP8fZhWLeFEFjLH4zy2lSl+Oo/GK3FEkZ0e/I271eId1
 wXGz5aAVMbN1BB1CukX0f/jDFddOu6sP7lqJn9KJR7pbIYOKYNzrGxdr/jdr70Wq5BnmQ06douR
 TKFkYwoEomKX6qTM7Z9BgbbTfzaTKvNuI1gAYagIPmAYlXH02yuc0u3QWPXsvfv1kOVyABjQmyo
 ulLGHW8Ts2wEb9YzPxYU5XyU6JlPtMbZkaOVLqTHFjfCIX1G3N0LXerSZ4pTiTnmuRIQ9ufiges
 7BS60cNe1twhgMx2yTXSpeASXV8+JnxugEYaJ1VFAnQpN3iBlE6p4GayjZ7qBg5KT3GCmdsQNZt
 gqODNQNKFbOnBeKNRRMOFpkD92prIA==
X-Proofpoint-GUID: 3GOVzlUqq8JX7_efwMIqb3p0AXWzORCx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010111

On 11/28/25 3:49 PM, Jonathan Marek wrote:
> On 11/28/25 5:52 AM, Konrad Dybcio wrote:
>> On 11/28/25 11:26 AM, Stephan Gerhold wrote:
>>> On Thu, Nov 27, 2025 at 04:29:42PM -0500, Jonathan Marek wrote:
>>>> Unlike the phone SoCs this was copied from, x1e has a 40-bit physical bus.
>>>> The upper address space is used to support more than 32GB of memory.
>>>>
>>>> This fixes issues when DMA buffers are allocated outside the 36-bit range.
>>>>
>>>> Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
>>>> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> index cff34d1c74b60..cd34ce5dfd63a 100644
>>>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>>>> @@ -792,8 +792,8 @@ soc: soc@0 {
>>>>             #address-cells = <2>;
>>>>           #size-cells = <2>;
>>>> -        dma-ranges = <0 0 0 0 0x10 0>;
>>>> -        ranges = <0 0 0 0 0x10 0>;
>>>> +        dma-ranges = <0 0 0 0 0x100 0>;
>>>> +        ranges = <0 0 0 0 0x100 0>;
>>>>   
>>>
>>> Could you clarify which "issues" (crashes?) you are referring to?
>>>
>>> We need to distinguish two distinct use cases here, which are both
>>> (somewhat) supported upstream: Running in EL1 with the Gunyah hypervisor
>>> with the regular DTB and in EL2 with the x1-el2.dtbo applied.
>>>
>>> # EL2 with x1-el2.dtbo
>>>
>>> For EL2, I think the 40-bit dma-ranges should indeed work correctly, so
>>> we could add your proposed change inside x1-el2.dtso. I'm not sure which
>>> issues we are fixing with that though (besides correctness of the
>>> hardware description). In EL2, all DMA devices should be behind an
>>> IOMMU. In this case, the dma-ranges limit the size of the I/O virtual
>>> addresses (DMA addresses) that are given to the devices. The IOMMU maps
>>> the DMA buffers to arbitrary physical memory addresses (including
>>> outside of the 36-bit range, dma-ranges limits only the DMA address).
>>
>> I've been carrying something similar in my working tree for quite
>> some time too.. The USB4 PCIe controllers have BAR spaces in the >36b
>> region, so this will be necessary anyway.
>>
>> As for the broken-firmware laptops, there's only so much we can do.
>> A fix for this has been *long* released, but it's up to the OEMs to
>> pull it in.
>>
>>
>> I'm not fully sure, but I think certain subsystems still have the 36b
>> address limitation (camera?), so it would be good to know whether that
>> needs to be accounted for
>>
>> Konrad
>>
> 
> Most devices only support 32-bit address space, and use a 32-bit DMA mask (which is the default, I think?) to only get 32-bit virtual addresses. Camera driver can set a 36-bit DMA mask if it wants to use its whole range.

Right

> This patch is about the physical addresses, not virtual. Every device can access the full range (without this, the iommu dma driver thinks buffers with physical addresses outside 36-bit range are not accessible, and tries to use bounce buffers)

Yeah this definitely checks out

With discussions about some broken firmware devices becoming more
obviously broken in mind:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

