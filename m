Return-Path: <devicetree+bounces-141185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EF8A1DB89
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 18:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 301EA3A8B03
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 17:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D7318A6A1;
	Mon, 27 Jan 2025 17:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VbqmqTb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE7A17C224
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738000243; cv=none; b=uZHqYvELBxi0r2mnGRYlJjS2M1pdzj1Wy3bH14Fe5MrLxGcouhuFyoRZ/gyyHgD3qWDgs0TjNfcLSzJ5pwcDEubbRPznY2BkcwrZ0Km3Fgve2pxhH5x0flxCzbZIE5rPsuEymYU5IPM36ewvRgSZT4vjm1jg1tFnG8JNsTStw98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738000243; c=relaxed/simple;
	bh=oMtKn1w8MV7RLORjGlWvvKkp8uiAuM8uule2Sri1DiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mUo5s8THcs01BzgnhZbpe/TzZ8kpeUYdSRd7RvAG3nkwNkYJyljqhBu9eFs53cO8DOhBAP0Il+qa6/va2hS1Xh9Jz+EOaaONurex03ETi4NkSi9n3//GWo13LgGVy8gpUbVmeROy1nPUdLtVtXtLSDnAe/e97YnzglHHN7mNcPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VbqmqTb0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50RFkfsL009807
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:50:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JnFriaF66qty0fntObxiPXMC9qtMds3asWVEQb56mxM=; b=VbqmqTb0HjxQSMJX
	Z0rsKuXrXEr4OCJRTmIf+hC4H6uRoYff6BwMe4dia7XPT+cMTueTix0nFY7rfeNQ
	+qW/crq1ILW+Tv0mT5lHJYsbHqW5ET4zLhV4aviwVuATeb2a/wyaEPzely88ppM5
	J8RmS0bYULha9ux02NRlODwp6L1JoGHO2Zapl0+0J9SnilfuJPoOVvNxq/qLMDA4
	qMXRno9sZRqQLqLiwK2U7uhmJRzGo3hmzBUEtuPMcK5Vb6ZwBx2m4m2eOtiLev4l
	2XZh4z0msNtPjdDsihOZ1n1pjL+JGw+3lTigmdLO3XxPHXZRmwnD/zJc5l8T/D3l
	m6mXiQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ed36r9ea-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:50:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46e4842dbd0so15143441cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:50:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738000239; x=1738605039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JnFriaF66qty0fntObxiPXMC9qtMds3asWVEQb56mxM=;
        b=DO8hqofhZ4VRISKhQ7CLSJmy+yCUDk8FceK0ecOUe0LqGq7JdQEDEnVY7h+J9dteoh
         0Abfc6ezwrkTFkfvHw5Se26TwSDCyO80idsd2kaV8tPXaOPRrGmWNXXI0wkzc+ayT+IH
         x5/571Tr8RweEQgCfpxs/HgQF/G3ubuaR8liJ2BU2/iyevQoG2sxR7kURHAaTW+gkqK5
         ZoOOHuZ5Es8rAATvKxmzZjZuKUMNtY729kGkNExYEqn7/7P3WH2J9gqw3Ce2J6b+ImfX
         9nPLGNxZRG+4cbIwclwwHolV4QJjH+L70/KT0guy9dgHJnP7opXVAPcOLwJKry9FQE91
         ZH4w==
X-Forwarded-Encrypted: i=1; AJvYcCV9PnJYlLP/OMtdP6jhIyFiiKKAS3terU9R8e4g4EcPSd7p836FvFB/LvifJfz7fgNnLlYqFKtqEkO4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw34zSi6TGD3V+m+t7/ixVch39Fft5gNLmwbxMqbwBAhD324gxj
	GM21/0rb3MYjpa7hdFR3UInAqOh0HOL/kisAHaxezg/TLKBG5iFmLFmYKKmSXAVOqB5JnVQrnLJ
	rm5K2bRzSdQT1amhxzrdGISL2ydlxAOEipBZMIGCBVbZHUWjYxHHwlnxgcw4t
X-Gm-Gg: ASbGnct/BDg0YOXoMRzdpYcZT+2Jzl/ld5IGru39jV8L9AczTkaQAUxm2T2Ju+ZHfjW
	qG1Y2y8NsApJuAi6Qf1E+cOXgYl6anAk/uhKYjDj3F4wnWzUL7WiIt7EDUywKpYDIj3J35W3PxW
	VHR6ArEvmLy4UBT5QQEEkc2R93Eujy4VAMMVvzpf2Xy8GT2C8NhXOthdULAuihk/n354OjWArvO
	ZGnNt2BEWmJryKQ7ELwVLvCehmCcAgrlPPXceQItNUuzBEREGLZQ8rAkIMxc9fFu/oY/4fWvaKv
	y2gSjwz7pF2nYdBgh7x4fwurYcmixhj6VCVCiNW9MIJGz+hWZ4Asvt16OcU=
X-Received: by 2002:a05:622a:30c:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46e12a162demr247808841cf.3.1738000239335;
        Mon, 27 Jan 2025 09:50:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTkQ6oLODC3x3JbwOrNQK8XQgzzBtmvlUI8UYGTs+vXLEGw9XGJuWNXuUxMNcvKByjipgqYA==
X-Received: by 2002:a05:622a:30c:b0:466:8e17:cd1f with SMTP id d75a77b69052e-46e12a162demr247808531cf.3.1738000238876;
        Mon, 27 Jan 2025 09:50:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186d8ad3sm5668983a12.71.2025.01.27.09.50.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 09:50:38 -0800 (PST)
Message-ID: <65a880ba-f721-4720-81f7-6891c335f7aa@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 18:50:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] dt-bindings: serial: Add support for selecting
 data transfer mode
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or,
        andersson@kernel.org, konradybcio@kernel.org, johan+linaro@kernel.org,
        dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20250124105309.295769-1-quic_vdadhani@quicinc.com>
 <20250124105309.295769-5-quic_vdadhani@quicinc.com>
 <10060d39-87a4-4565-a2a6-80c93ac2266a@kernel.org>
 <dudqd2y42wy6iq2k73aphd5ol4mtq7z4c54zhd27rl745rrw5x@p3oummf2jke7>
 <374e16d6-46aa-4bdf-85e9-bc2e33c38057@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <374e16d6-46aa-4bdf-85e9-bc2e33c38057@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kE4cASmuvJG0VzsE_1wxaLFB8f0dGLC1
X-Proofpoint-ORIG-GUID: kE4cASmuvJG0VzsE_1wxaLFB8f0dGLC1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_08,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 malwarescore=0
 phishscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501270141

On 27.01.2025 5:24 PM, Krzysztof Kozlowski wrote:
> On 27/01/2025 15:27, Dmitry Baryshkov wrote:
>> On Mon, Jan 27, 2025 at 08:02:12AM +0100, Krzysztof Kozlowski wrote:
>>> On 24/01/2025 11:53, Viken Dadhaniya wrote:
>>>> Data transfer mode is fixed by TrustZone (TZ), which currently restricts
>>>> developers from modifying the transfer mode from the APPS side.
>>>>
>>>> Document the 'qcom,xfer-mode' properties to select the data transfer mode,
>>>> either GPI DMA (Generic Packet Interface) or non-GPI mode (PIO/CPU DMA).
>>>>
>>>> UART controller can operate in one of two modes based on the
>>>> 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
>>>>
>>>> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>>> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
>>>> ---
>>>>
>>>> v1 -> v2:
>>>>
>>>> - Drop 'qcom,load-firmware' property and add 'firmware-name' property in
>>>>   qup common driver.
>>>> - Update commit log.
>>>>
>>>> v1 Link: https://lore.kernel.org/linux-kernel/20241204150326.1470749-4-quic_vdadhani@quicinc.com/
>>>> ---
>>>> ---
>>>>  .../devicetree/bindings/serial/qcom,serial-geni-qcom.yaml | 8 ++++++++
>>>>  1 file changed, 8 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
>>>> index dd33794b3534..383773b32e47 100644
>>>> --- a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
>>>> +++ b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
>>>> @@ -56,6 +56,13 @@ properties:
>>>>    reg:
>>>>      maxItems: 1
>>>>  
>>>> +  qcom,xfer-mode:
>>>> +    description: Set the value to 1 for non-GPI (FIFO/CPU DMA) mode and 3 for GPI DMA mode.
>>>> +      The default mode is FIFO.
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    enum: [1, 3]
>>>> +
>>>> +
>>>
>>> Just one blank line, but anyway, this property should not be in three
>>> places. Do you really expect that each of serial engines within one
>>> GeniQUP will be configured differently by TZ?
>>
>> Yes, each SE is configured separately and it's quite frequent when
>> different SEs have different DMA configuration.
> 
> Well, I checked at sm8550 and sm8650 and each pair of SE - which shares
> resources - has the same DMAs, so I would not call it frequent. Care to
> bring an example where same serial engines have different DMAs and
> different TZ? We do not talk about single QUP.
> 
> Anyway, if you need property per node, this has to be shared schema.

I'd rather ask a different question.. Is there *any* reason to not use
DMA for protocols that support it?

Konrad

