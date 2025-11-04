Return-Path: <devicetree+bounces-234812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F03C310CD
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB163420B0A
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E122D2387;
	Tue,  4 Nov 2025 12:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LAagZ+lS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ee1dPSw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197A220C461
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260542; cv=none; b=bMilvrSyHyA6Jp4DV4hsqvUfG1e8u26e3h7X/lx0JUezblH6FsxAsx2xKeddHt2SuQN4+hc9sadFIyVNvnV3gdzmlgjw+phvFDT327lfgsjtCCpA8E8GYp2F1mbfiMeohHR8jemMA21TZVaD2eiiYUtqPonXJBlzbKjPaKbMOeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260542; c=relaxed/simple;
	bh=XQcmlAJSf9/ah/vdY1CIG1Q861Hi0fY7RpUMjavS0q8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Azideg0wBCBa5LMVWUZwGZ1YhMuHAhwk5CU65QJCBU+jn18URKLwDCt2VvERLI2pC3xLQIK3NiM24RnlASk86Uu/k3Rq5QpNW7CQr38O2T1KfvprY0eEo/hSeHLqVsbZEYz1UZxFoE5Pu9aU2QVaSAzb0NT6JmeLtqLYIpLR2Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LAagZ+lS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ee1dPSw9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CftT61912073
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 12:49:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pT/0aMRAKk2NJdKTLdEewTKWfsG9E0onvZWQKwojQ2Q=; b=LAagZ+lS+NFZR4mg
	uxQGyQ8kkIth7brJBSfB5oDJIz0wvHYW+gal/BsDRaT/gF4vpaw6iN3j6tg+t8Z6
	AkyWkUAYBdS5V/O17aUHZa/qCEmN6qdI5ST3jU9l/rD0IrCwTUqUVti1EMRQ+sSc
	lF5aufcUdAtbqF/HnWpZ2MiTZdRQ3ULoux9YZYAz6nMM5KKXawEcHMC+YUlX2QIO
	xN5WLerZmKEVqXxPou7Nfn07xXw6BMlON723dq+a/qOt1zU7q0UZM7Ro7oX7maKh
	tbLrC8aakFpMRmtQ9J6gif739jhVCTWGT//NsR5ErJqR1fqik3RnDEhHsMLoFJ93
	9fzerw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70exjx0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 12:49:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8934ae68aso23362861cf.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762260539; x=1762865339; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pT/0aMRAKk2NJdKTLdEewTKWfsG9E0onvZWQKwojQ2Q=;
        b=Ee1dPSw9J8LvPOgSA7clMaOBiMULDLNPUokITyjkz+e8R4+hFu1qdhm4nXUgX2ocA/
         3ilDd1jiTVpvr28NQtJkq+U2UVZw72Ba07X7+/od+y6w0ZTtzR/myNYPHTSuFD/VfjGX
         Y0/OBrC/dY8Jb9snZIChy8DtDSZhjD8k9XZCQwIyNy/3l+xGjeYk5qoSE6LzaTUR5pJ7
         QBfWCzKkii8jcVqJsBZw6LEQ8rbdReumx30N2xfaaTi2CNWtjqd7lhS2d34o9QS+L3NQ
         nKZ0o9hoc8WLdTbLSXptjdpDWp4j3U/pdFZ/eU3O66Fa205KshTxmdmRuBvJxXWhk1j3
         D5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762260539; x=1762865339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pT/0aMRAKk2NJdKTLdEewTKWfsG9E0onvZWQKwojQ2Q=;
        b=NOu5o2EZhHx1TcSiHV2pUlqLhFlRxf8LGejEcDdGXgxuceW9ylT2aPVavAY2npSms9
         fiT2EI3IXCYEFi4Pl2sT3ubKbUodUFVeKuAGm5/vzGIwExY1Wq3nIVCMd0+WOI3Gzpmu
         VCBcJOTP0awkoOnNbnyeDVrBtjVT0hT05ovZKagSmA5STM12lGN5gm9Xphu8P9kYQhhQ
         nG/DHSeDSgrcfsu1TMwcIakOlHJIkxUxV3ZY8XgFofTlV1etA12t9HV6IyEj24AHhKsJ
         nYeZ9rqL9dDweMc6Wawwb7QZjqXzAa91UIkIE2GY1ka+VK9WmY6x6xQ1Ip2dbUKCUrTa
         U7Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUpKxAgRJHcv2zlGkKM7JlI+Q2iOBqgRAAYzoqfPccj56EXPjg70Im/+9H4Bo4rdGJzPzHPM1gT7e89@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr8oYUaUgqqSEZbbimHJ6huHKGKCyNJMt74XQmumw22cijw0kt
	+CzHErC7PDt9qvYJgOLHb2WoJqmSMUuYVSDtNAZtcKvrbHA5CVlhlFF7izx/DyBOEWYt8A712IQ
	LQthe9zGoNWfUrGIQQmsJF5M6DhWCKk1VKjK24hxUk6VKKu8G/VtY+cz+T9XHsBfC
X-Gm-Gg: ASbGnctgbFlssDl3E4qrRT2o/3INhMX3rRkzeAA1HY2V1x9qfNBzay4RAoCiJ8ljpDl
	IajYECdDhHXMDin/CkTWxQqVb67oM+599d6BYBjOiRnfxksJoenVteo0ArWmPhZTNbIDl2OW0dH
	dbyqcPrP2S5rHa6WOSGckwNO1e052OE/aDD1K5jWzlXLz8ppuKTGha1FtHJc/gijyJo+epaelm+
	gtYG9DtEm1eUUQSURAJa4DdaR6gC+6N6JjdkfHbQ7ggzPuu24fCj7aqp9CNXlD+QJfNNhOCkmrT
	ocwZmZT5hedmiwGz/yhafyboj722cJNHzgBHz7ruVh0GHVxE/Csz4O+BohyGT0Wj75AkOULJLaC
	OraMVRyA1lVaKJ9hL/j67RQaHmuy4Ks+L8s2hzhP0gnMVTw0Uz8cpe+sY
X-Received: by 2002:a05:622a:1a93:b0:4ed:6ea1:ceb6 with SMTP id d75a77b69052e-4ed6ea26d3dmr1677581cf.3.1762260539274;
        Tue, 04 Nov 2025 04:48:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5EZ+t1Wl9ai1YmoasOlh0ADuSKvAaTFDJsVuvRiD8q6tuEzgBs7OC71nZ4CQVptp77Lamyg==
X-Received: by 2002:a05:622a:1a93:b0:4ed:6ea1:ceb6 with SMTP id d75a77b69052e-4ed6ea26d3dmr1677271cf.3.1762260538651;
        Tue, 04 Nov 2025 04:48:58 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d3a3292sm206709566b.6.2025.11.04.04.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 04:48:57 -0800 (PST)
Message-ID: <45a74411-32a0-4a28-a738-9f44d66c0de3@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 13:48:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: sram: qcom,imem: drop the IPQ5424 compatible
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015-ipq5424-imem-v1-1-ee1c1476c1b6@oss.qualcomm.com>
 <20251021-quaint-hopping-tuna-0dade2@kuoka>
 <cfb94b1a-7ad0-4067-a08b-2af358edb768@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cfb94b1a-7ad0-4067-a08b-2af358edb768@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=APHuRV3Y c=1 sm=1 tr=0 ts=6909f63c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=0-4AHAZY_8J3BnaaqUIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 4c_IaKsgTwl_QsdnpHkiDL-0vGw7VBaj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEwNiBTYWx0ZWRfX+lvOGlbuslmM
 p7AUicXRskBJ9vDKpf1sVg+w8vDmDOrA01fc0kchtarlvSyTiScJqnhMBFoTGNrKPvefF8obxKN
 KZgHWryt3geZPcsQxUore0jGIz2PEETBoCMaxvE3SxUFuZ4dI0ZP8iYb1bs0Eje+JGNrNAVPjPN
 vsmSa6wB9CwQUA4HjWFovt+xJxKFDSKGC3k5dbX8C0/xNEz3EFPlGu3D6fLiQ6oe4ttp59ejMWM
 psmR2SwAjp8DLdSbLYqYlx2f8rzParKGFnhBf/C6iv5iY3tOZO4wQsLNiryfwqHBoy6vbJ5hpjD
 znDsW19UwnMCJsUPmh1xwMiEmxRbKDQ9wGDF8rk+jHEMJsaw6NGFAj0P/nFfLCdxIVuuOctk8Qs
 TsNTz3KDXusM0SrUXZR4DO+bTe7FNw==
X-Proofpoint-ORIG-GUID: 4c_IaKsgTwl_QsdnpHkiDL-0vGw7VBaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040106

On 10/27/25 5:59 AM, Kathiravan Thirumoorthy wrote:
> 
> On 10/21/2025 12:32 PM, Krzysztof Kozlowski wrote:
>> On Wed, Oct 15, 2025 at 11:46:58AM +0530, Kathiravan Thirumoorthy wrote:
>>> Based on the recent discussion in the linux-arm-msm list[1], it is not
>>> appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD. Since
>>> there are no consumers of this compatible, drop it and move to
>>> mmio-sram.
>>>
>>> While at it, add a comment to not to extend the list and move towards
>>> mmio-sram.
>>>
>>> [1] https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
>>>
>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---
>>>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 3 +--
>>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> index 6a627c57ae2fecdbb81cae710f6fb5e48156b1f5..3147f3634a531514a670e714f3878e5375db7285 100644
>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>> @@ -14,11 +14,10 @@ description:
>>>     transactions.
>>>     properties:
>>> -  compatible:
>>> +  compatible: # Don't grow this list. Please use mmio-sram if possible
>>>       items:
>>>         - enum:
>>>             - qcom,apq8064-imem
>>> -          - qcom,ipq5424-imem
>> And where is qcom,ipq5424-imem added? This is supposed to be one patch.
> 
> 
> Kindly excuse for the delay in the response as I was out of work.
> 
> This is supposed to be added in the sram.yaml binding, but I haven't completed that yet. Between Konrad has done some rework [1] on removing the imem.yaml and combined with sram.yaml (in his dev tree). So I hope it will be taken care along with that.
> 
> Konrad, Can you help to share the plan on when the patches will be posted for review? It will be helpful for reviving my other series[2] and obviously yours too :)
> 
> [1] https://github.com/quic-kdybcio/linux/commits/topic/imem_sram/
> 
> [2] https://lore.kernel.org/linux-arm-msm/20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com/#t

Let's get an answer on the Kaanapali thread and go from there

https://lore.kernel.org/linux-arm-msm/176222838026.1146775.13955186005277266199.b4-ty@kernel.org/T/#mb3284a3a0bc3a9cda9cc6c0fb9433e8c2dddea2f

Konrad

