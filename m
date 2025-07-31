Return-Path: <devicetree+bounces-201024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA29B1706A
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 13:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D528620974
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 11:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2284C2C15A1;
	Thu, 31 Jul 2025 11:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KVl0ingj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4EF2BFC8F
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 11:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753961605; cv=none; b=mc3h02c+PSJ80BX20TdwHbOhxIsGrknmgXT1Knk5THI+aK+q52YAWaI+21hQssMkty0I7s9uGEO05xYxNNH0rt9GEtEJbuA57Ri5D5jUgT2WwpTUp0tXAxsNi1ba65+83T1IhyBSKnsZMdYIpsBR4pW4nT7zcjI1bVNsK36gsUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753961605; c=relaxed/simple;
	bh=MVHoymTtrUj1FNtzHDj+G/R7m5ic/21SYiflzC29O+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WNxbF/9ctlsM3F9hWNXmJFn55ryjCdduPa0xFch7b1/PtVAX9eSetC02/kqBrsEWkY8D6ZrZduk52dDl3T8UmHxf8SY86DySJj7fk0wQ6bpwiQuQc9eG1riqtF21lyhDvofXDDA8Iptpe1rzqcT8/875DhuoKxyd1KTvYh/WkpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KVl0ingj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56V9fQgA008543
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 11:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hiQCVI4PmZedCkpDHfOr5gWtV6DX2AHcDyhpGCv1hLE=; b=KVl0ingjacySND2Z
	KL76fBWAL7VJFK/s9lqPRtADqB+ZRAn0MCAXW7yT8GNr4dBhD2TPxsgNYxlEPB34
	YwSceVonh6V61GfPWxVUqcSv2tc283lXq3F3n9d6r+eZtKK+fokcCF0eHI9nn1AX
	DFo7UQvLJKRd73+R2mKczq0/6aEJSMt+25Kay0BJMML67BPVwxbdNQsvatSrLxo0
	noo3zY3LSflY3jjF65Krrt4bglKWM/8A0Xe/ymdAjvhRpAnfn0J1etskDsWhPXS+
	bzos5i9sHiNZW8QtZcwCzHaaAIcRxXvN0lvZPamMZjpWtBQNS1FIYXI9PhIN/s9m
	38TbUQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbm7dj8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 11:33:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7dfd0470485so20025985a.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 04:33:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753961601; x=1754566401;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hiQCVI4PmZedCkpDHfOr5gWtV6DX2AHcDyhpGCv1hLE=;
        b=Rbxh0pRzIVZWjTgtZeCDs6WKN8fq3Gtk8NxOqIcssh1u1d1ASgQd3vPSmRv0T65v52
         I2+pMWw6Wo2JEEjqbaHFlRzjHdqTUIB+mGOpdhLncaSyqxkw3CktLwPhqWizyRDtJ5RE
         gehRDpAKqC8wLcWzJemcWjlHpqgP2W+iDeRodFGMou2/ov//9zsKsdfpwiMyKvT84sYc
         JxLVIHoWk8jp4AO0izBcSHzt9ioQxC5cMgQgW21qG4YJtWkN3+31sQ80rBCDfL5WqTwA
         xMzi08C7wuB2w14rHbQDT1rcgL3orNNqXzdljc6TlHJ+Ze8NiEZtY1i/9ArWrxG+jsho
         tBTw==
X-Forwarded-Encrypted: i=1; AJvYcCWTzIXPxqpvSWFfopTN6r9qBxSegF0FDcTlSCB9ILv2h6oztl1PEJsWEFsM6BSDXqFozMkM0BDNR6IS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjop4T2BG7u8SVQwneFctWdOszl9YXk9lBe8KarwxSbKxDX7LV
	4qtrtVTjMIY2CeEpHgAI1XRwZRJU60A4iy4XrX3I5SwhkBhuiwjDd9LIcjY1Coj6OB4wvHEsPoS
	VtlwnMxUMa0QzXcGYIQIOV/IAY1bde9oMJqlhiz2deuvFvoZH0cK4+flXmRoIr7ed
X-Gm-Gg: ASbGncuDkSY/PINg4GROnLB80W1vkxjMez6ASXWNaDkY6h5NRwYBpEUaQYWgXQn/Eil
	D6+Dmig8v+acuIVJNNEfGSEqa7SrmdWS9v5HlgA/uHOx1X2azTkTDl+UM6pPk5+xD669srmXnhV
	RdP1FABwRHD0xxP4n88FaHp9zqFYJAtcw8tEwuVxccV4aBOwC7piNhnb6MKqaG8TK63MR/hBrf/
	8diiSfHKEPz7DTWcpNKrNucK5tnMD5qnbQNoXweRYHaaUnlssdU06rhGo4eZKRtyAsvlgbf8XoA
	2slrrJsBpEJodwLZswuUKc9mlu1R+M9Vh25+Vo3R1FpN1rhfowZE7QwExnGlImliCJt5vTeHSzI
	Rnq+DKdzlUfQrBAFXZg==
X-Received: by 2002:a05:620a:c55:b0:7e3:30e6:1fd9 with SMTP id af79cd13be357-7e66f3579famr401347185a.11.1753961601231;
        Thu, 31 Jul 2025 04:33:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9SW+3agSd3nX7M2jAwPZf0SuoF4AQlimzli/JD2ZQjueM2pww1iKLHn5i3E3E7+3YegsRmw==
X-Received: by 2002:a05:620a:c55:b0:7e3:30e6:1fd9 with SMTP id af79cd13be357-7e66f3579famr401344585a.11.1753961600785;
        Thu, 31 Jul 2025 04:33:20 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a9115562sm982681a12.59.2025.07.31.04.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 04:33:20 -0700 (PDT)
Message-ID: <afcf449e-7370-491c-8682-552761a5a8c6@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 13:33:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yingying Tang <quic_yintang@quicinc.com>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shuai Zhang <shuaz@qti.qualcomm.com>,
        quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
 <20250729-hamoa_initial-v3-4-806e092789dc@oss.qualcomm.com>
 <a6456802-3d19-4da5-a995-c8f00553c7fa@oss.qualcomm.com>
 <d14b2a0c-8304-497f-a662-5b93dbaaa1ed@oss.qualcomm.com>
 <c0b804e3-16ee-4e81-9aa8-4b6051b5af03@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c0b804e3-16ee-4e81-9aa8-4b6051b5af03@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688b5482 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=WymS4dw2S599D73gK6YA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMxMDA3OCBTYWx0ZWRfXwktIqRo/0OKf
 ggD5lFVrQxUW6iFz5Oa11Fda1tjQAxozcLe6eTRR79FmvseiTUjW/x6BE2pRg8O2+GskYXV7pL+
 0shiEr27mLl08wwxt/T4+4mZAFz0KENE3fgrp1QOeGqtjkpBK0CDsOhL0xDmG8gJMjE8U9yc6/k
 v3Vk8UnAia7mJK0FJDAutwDE3eOXcbPG9U368R3oIvAbLPGH7EnjY1/Mq18bxtmmdAFiJOJ5Uhg
 8qEWcuoaiIw3oP7+4LLsgbJFR80zyFELxYRr0G4VVfOSIYazKIlBujJ59CaeLj/kwEg0b5O5smM
 3mKbEATjHSDzfIMgIr8PNuFaOdb1tZXQCTPln8yrb8q7yQ3eN05zCxfyh32D01yyBQV0/VOILEy
 w4TmribWcx6D7SY6AviXMvs2B3401SYXaYBCO53pRpOa74HDpecHdBhBNDX1ZuLqxM3iRBj5
X-Proofpoint-ORIG-GUID: R0C654tX8OPDx11HIAgj2VLmnqW8lrS2
X-Proofpoint-GUID: R0C654tX8OPDx11HIAgj2VLmnqW8lrS2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_02,2025-07-31_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507310078

On 7/29/25 11:39 AM, Yingying Tang wrote:
> 
> 
> On 7/29/2025 4:37 PM, Konrad Dybcio wrote:
>> On 7/29/25 7:51 AM, Yijie Yang wrote:
>>>
>>>
>>> On 2025-07-29 09:32, Yijie Yang wrote:
>>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>>>> embedded system capable of booting to UART.
>>>>
>>>> This change enables and overlays the following peripherals on the carrier
>>>> board:
>>>> - UART
>>>> - On-board regulators
>>>> - USB Type-C mux
>>>> - Pinctrl
>>>> - Embedded USB (EUSB) repeaters
>>>> - NVMe
>>>> - pmic-glink
>>>> - USB DisplayPorts
>>>>
>>>> Written with contributions from Shuai Zhang (added Bluetooth) and Yongxing
>>>> Mou (added USB DisplayPorts).
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>
>> [...]>> +    vreg_wcn_3p3: regulator-wcn-3p3 {
>>>> +        compatible = "regulator-fixed";
>>>> +
>>>> +        regulator-name = "VREG_WCN_3P3";
>>>> +        regulator-min-microvolt = <3300000>;
>>>> +        regulator-max-microvolt = <3300000>;
>>>> +
>>>> +        gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>>>> +        enable-active-high;
>>>> +
>>>> +        pinctrl-0 = <&wcn_sw_en>;
>>>> +        pinctrl-names = "default";
>>>> +
>>>> +        regulator-boot-on;
>>>
>>> It should be set to 'regulator-always-on'.
>>
>> Are you sure? Turning off Wi-Fi sounds like a valid usecase..
> 
> Hi Konard, It is m.2 interface on Hamoa. The PCIe power of m.2 should be always on.
> 
> Even on QCOM's B2B interface, we are unable to dynamically control the power of PCIe devices on upstream kernel.
> The PCIe specification does not support dynamic power control between the PCIe device and the RC.
> PCIe power should be always on here.

I see, I was confused by the name 

Konrad

