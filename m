Return-Path: <devicetree+bounces-256796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CEBD3A588
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E4363086EF0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4C830B510;
	Mon, 19 Jan 2026 10:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PCUCbk6z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f/cCvlsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E89D30F927
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768819334; cv=none; b=M5LA9ZhKhkhy7B0QXGwisH19wUD2POekmJFOrah7qh1eZVcXitvsedXJtphyJLdO+QmmI4P6Kv9rN1cycsdumVtADaVsaWIIVX+AVgBpr7WZHUA9sY98pMfCfmtQBqpA3NKpqePwQ1D23gneTgwbeAlXMze9T5q0eml2iSgS4TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768819334; c=relaxed/simple;
	bh=FZhwG2LalquaV0zmFxo0ONLJ27URIsK+IsXD8gMqwP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KXVw1xZxfqTBbqw7PDRqoIBLJ6O1blGtWIOYqMktjKbzJJNQe1dTAv7ss7C6KSkrNQmccxWbNp7K8GtKvt3sORtDO9LnyhGQPA1OnhrgtzclbOvYpaChxPhIAk57Cms7oAqD2xrkgiSBKLo8o6vs85iZRIbXE2G4m35AvoIj0DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PCUCbk6z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f/cCvlsX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9mgEq2963080
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:42:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8R3naLiFgp452M0gNh0bKeRwTw6Ug+BfZAdVToiioy4=; b=PCUCbk6zLAcxyobw
	cDR5J4Nzb4QbYXwt1gpfWI3pbX1yTx4T9rFEgXBmEpDX6hbzNfQ5OdztLVaTLp7k
	5FdgOouYg936/FSQe9oZar3elFLr+si64/CmN7H6k5URc7gQpOv/40QNNs/+TYiY
	GEVrqGpZPa4mG1ofwDFrSPnLXtqZeTRz1zJpxKz/t7c7LeEtud3mjoYe/mjLREnL
	fzdnWzyXNao3W0y7j8EUshIfEuGNpVjdh2tMsfbfRsVxKRbT4JVwe33F3CUMvvRW
	H4ah6Ar4AFPJ+8M+RZUcw2wx48zgH+ZqdWx596gZIsJWUNM4McCkN+mMGGAQ1r1t
	rpFhHQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjaa85w6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:42:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso39697645ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768819327; x=1769424127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8R3naLiFgp452M0gNh0bKeRwTw6Ug+BfZAdVToiioy4=;
        b=f/cCvlsXmxzYzgOsNrdtvrvC2lavJrmRGfsdRGXqrgiMf8ACcX1KOlUM9rYZb90uVw
         V1vUJlIggbwUvKknaP5EEFxbEaer9vRLhMo61jRBxE27Tu2uln7juIyEMgy3+8VOd7X3
         5u2+jgZSZbLdTILpz4TlRFAAurT4mg7X4j7aGNqfveyc/8bBhmHomnBFdUYLpyQANw/R
         sj5Di+cGTk/8XxhlzmuuuMG1/sXMSCdLKubw2FMPj9D+ZrPUubVVZKH2mu+LSYylL0Q7
         tFqp4j22Mh/WrQBM96jNcnxKRfqsSfPEwgKbDviDlCtgeYvahld20SMrsN/bjQVmEvDP
         xsJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768819327; x=1769424127;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8R3naLiFgp452M0gNh0bKeRwTw6Ug+BfZAdVToiioy4=;
        b=QElxp2O0Nq/pD6pV+b2tqEl6hjfYV172b7LoWMlHPGVCz9GSxwfozzPGk5Y3FRXDS1
         HmfmqnXhmSI6RtIPtKr9CCtgjrxMXSDbGOWGTMYuA6j1TLlPQMALVQ8JSjOFOuFzl/b6
         MUmTAp20s6EBLeql1n5QfpMcac1k9gxXHEMPhcMvKuLCpL5fmTGZTKS369jCJ5pfcT5P
         yxZSY2vKCOF7hf91bj5slDfd/3zbDvBB5DFqUbeHFdhPcZf3OE1hPv8/wG4ZabK1+8xd
         D04EMwN14o6YZW5mT3NkBGThTuB6wtPZY8F0DSoJLgHUMHG7LgHA/BEgw4OsMREYOWvZ
         wNtg==
X-Forwarded-Encrypted: i=1; AJvYcCWKTTXPsP1TYnXAHH1VBcK7e1nqbAAmYRMgMMkjxggH8OHhc5yr5AUuG/m4KYxZM/X3NYlosh0MCqor@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0s+Fg2YPztVMLWS/tDpXcxXW8MUld2CSk8ErFsPskSthnKq7d
	TarLnwY79eVjaWNQn/L4JeeAxaN8ueYWAmaFcmjxPIBlthCQLiPU2tOQpp74anAVrrpHHeZBxXa
	tlIoB7ckALi/IGohwzO7W1emOj9ALYMAdaaVh6+0ZFe3zlTe1vy4k4uZofKofiZaH
X-Gm-Gg: AZuq6aL6ku0NpvvgD1Ar3LIWWdY/J3DJXYcqK3kUKawl230T3eR8SwymLbK6uw3JJJE
	euEWrjq70BO96VVlAebYboof28dVNehRcyOnpBgn/zJk/4VBXla6UIn9u1dL9vQlIDg6/4TLNv4
	/1PMkKFrIAukUUBnvPcOtHJg79mVcLJYHf0XlT5aXtWd9gryDdeNbDNQltbo/rOzuSrDBI9BWCz
	jZ59ShqLVwlxrEVgxt5OrsIUA+pec+UK67yvGyyztOs8WrX7wwE9J1nJ8m0EdAYlLmrlqBn6zaI
	Img1k62Cy1LFoc5tpZex9TiePea9ImxR2NrFODeEb+tZVZ1V27I61TVPSDLVZrSL2Mc5nmLrY11
	f9/p7jkrqz4vdd9eD30QAJOMGwdj3U/VSr1rPW/ajP73NRVN23T7ZxlrkgCHKW2ioAMhCAhs/6W
	RiifQ=
X-Received: by 2002:a17:902:cec3:b0:2a0:97d2:a265 with SMTP id d9443c01a7336-2a7175339eemr92386945ad.14.1768819326932;
        Mon, 19 Jan 2026 02:42:06 -0800 (PST)
X-Received: by 2002:a17:902:cec3:b0:2a0:97d2:a265 with SMTP id d9443c01a7336-2a7175339eemr92386675ad.14.1768819326459;
        Mon, 19 Jan 2026 02:42:06 -0800 (PST)
Received: from [10.133.33.126] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190ab921sm89623335ad.8.2026.01.19.02.42.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:42:06 -0800 (PST)
Message-ID: <c96e955b-6e66-4164-bf94-eb50a8f7a1ab@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 18:42:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <d15bbe2a-a88a-4a88-a685-ecd4f058c3af@kernel.org>
 <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
 <eawxuhblnho4pyeyskvk5s4ouqser7o5jh267ttinzeeowxfxs@y6nl2qbdydb2>
 <e1c00e57-cac9-495a-9d27-f77ceac5c5ce@oss.qualcomm.com>
 <7sbof5mgm7mqtm4gh45f4w7264akplqtkfyplrerek4w6seipl@ith7sc3wmgih>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <7sbof5mgm7mqtm4gh45f4w7264akplqtkfyplrerek4w6seipl@ith7sc3wmgih>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4OCBTYWx0ZWRfX1Thc+NY0xDFJ
 K0awg96WgpOfrC3iHgPVWR1uq8fJD6XHZbDmUXF3YSR8Y860MkQwVQl5t8ErcTxTcZLZLK2MvGu
 WDOlEr34V7lNxEdXuH0P1liG9EQVZchviZaPy2Wzc23IELvgvU9mQbnOY+u9y4nHWy2ctJRYynQ
 fnQyvmGn9QoSJtM7q7+Ms1auZT5QFuzkaNH/kdO2QMWDJU9gjtcBpvpCFLpMKfMpMqef8kxXvYM
 kHu6CPx1KS/bSH2owbAAKwW8lk7a5hGAlZ4ryun3Mn91jdXbR7UWEla1zzkzxoaAq66QKiIY61F
 Po9c6f3QswrRDIvUHrm/iQ9g2RmLbXryg4z+esqR26Q7g8M32S6pVwxVpZkxAi3i0isBeuBNXTM
 +4lFW9jJeBbpMLIi2B7R37SscKrS33S3VjuBk1TjnAqWf6mlSyAV03ImSg1vmqfJofpbPrccfE2
 1d1G40aGsbO17VbmUCg==
X-Proofpoint-ORIG-GUID: _mvtyfVdWHdq7--ib8aSoGUOuEwu3xUn
X-Proofpoint-GUID: _mvtyfVdWHdq7--ib8aSoGUOuEwu3xUn
X-Authority-Analysis: v=2.4 cv=L8gQguT8 c=1 sm=1 tr=0 ts=696e0a7f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=C50igqWIdSMoUx98drYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190088



On 1/19/2026 5:46 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 19, 2026 at 04:48:20PM +0800, Yijie Yang wrote:
>>
>>
>> On 1/19/2026 2:33 PM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 19, 2026 at 11:13:29AM +0800, Yijie Yang wrote:
>>>>
>>>>
>>>> On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
>>>>> On 16/01/2026 11:41, YijieYang wrote:
>>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>
>>>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>>>> embedded system capable of booting to UART.
>>>>>>
>>>>>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>>>>>> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
>>>>>>
>>>>>
>>>>> NAK.
>>>>>
>>>>> Warnings were reported at v3. Did you address them? No, you completely
>>>>> ignored them, so warnings are reported again at v4.
>>>>>
>>>>> What do you think these emails are for?
>>>>
>>>> This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
>>>> introduced by this patch set. Since it does not impact functionality, would
>>>> it be appropriate to fix it in a separate patch?
>>>
>>> Why can't it be fixed as a part of this patchset?
>>
>> 'qcom,4ln-config-sel' is a property related to bifurcated PHY support, which
>> Purwa’s PCIe3 does not provide. Therefore, introducing a new compatible with
>> a corresponding binding would be more appropriate than simply adding this
>> property. Is it acceptable to address this within the current patch set?
> 
> Within this or in the separate patchset, but it needs to be fixed before
> this patch can go in. Otherwise we are enabling broken PCIe3.

OK, will fix.


> 
>>
>>>
>>>>
>>>>>
>>>>> Best regards,
>>>>> Krzysztof
>>>>
>>>> -- 
>>>> Best Regards,
>>>> Yijie
>>>>
>>>
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie


