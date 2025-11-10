Return-Path: <devicetree+bounces-236642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285AC46236
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04A4F3BB407
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E433081DC;
	Mon, 10 Nov 2025 11:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SFdIXr6Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JS1RWVJE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7694B24BC07
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762772899; cv=none; b=SuVWvlDgoIzhlgZwa0yzssFzunsiMxA+UpmkeoJCIhiVt3RuFFHWnJocYxu0x1N+lerXM5Nmkvi0JuQGCe7VI786XFxVXVJwWMgeu4nGvxdwv38d3YQc41nSPWV3pbV9edVbPznuENyR4R9xSb7HpdEDW7NhX7BaY/xEAZP/L+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762772899; c=relaxed/simple;
	bh=iG0pOqLXhCj91QIEhbeJ2Y8XYoSQwesjv+51amYq6Mk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gPZFgYefBCRJq14Ll9cwjoG+sxBfQ0e433fjNOsHO2DLWZKZhXShxhbrOn5YiZKESncH7WKsmuuQQ6UiI653R5OBbrVJLyfLypHXhtsepTHSnwXqqESP+9iQTURSUC9WcM56G9f8diH7/5dn7IUDN07jI1zH0jE+dyRU9X72nmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SFdIXr6Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JS1RWVJE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8arUa1791763
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J/PkyWpMb/cINNObNzm5jGZ1qHngyNuMAQKXyGQ+YzY=; b=SFdIXr6Za9mHghZ5
	Akkm6wVAGhMdrT0NyjuH4FDqj2VWToJTCsXqi71uvSFwPSOfwgg7jN6JQfxQBJWE
	/LpMl9ewRPxmcTqrV4YbWp0+UmuMA8ZLdtwHbCaPzV1ik3wbMNjpuWsGBv/2rnoT
	ZvlQr3CSxCgBhFd1OBTCXpiFq9aO56QVlX9E0Dcyzr0etVYQDpXcpIiUSQ/BF/mX
	W4KJ5rAl15vXBWLnhHShobKp9qEMaQqXzSBK2f9AiEuQbxPk6GY9vFEQfxSAck90
	bLM9nMPFsjRcaNaHxKHocNUM/8usgMACtUfjqi7LaXo6OnX9+nSt8/ApWCXW/AZ2
	zFcKrA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aaue0jb48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:08:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so10594691cf.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762772895; x=1763377695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J/PkyWpMb/cINNObNzm5jGZ1qHngyNuMAQKXyGQ+YzY=;
        b=JS1RWVJEoTlQUUhAnk18h2CYx/P/5SaVR1JD5dLXBW4tNGBHIx3MBPIdXodM6TvXfX
         tcDxQcErHMxaXiBwqQRUKnZKSW/ENRNhSZaBPUmmy5RC+DnnEPRVlWGuoLS9n8H8C1w8
         Qi/SJYNe3tCabq8HOhnQ+uPKjrKQzVTyKUjbvHubHYuz06otsMIUu5gAY7/3y4BsoNdZ
         LWu/MrId44Yu2I3kXoHqtWlt24vE4l4t3BWfwXqupfY776GQ0xM0FYQ2eHt5/QVf6mtl
         7TeWybfl4AyL2c3e9LJ2Svta2gx0Ihfns8i8JW7ImFt3eeWiiKD9nxQ+hhDYvoxM6Q4h
         WeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762772895; x=1763377695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/PkyWpMb/cINNObNzm5jGZ1qHngyNuMAQKXyGQ+YzY=;
        b=Wm3ENcr3RzlZ4Mp5EMxVZr7wXXVsY+VwGf1Fly4M2Khz/iBqXNz/pjijDPNFxg10py
         Y10WXfhZ158uthltF/9mieNT7zLmeZZPNSihNhG4C+EoogrHMvhXVBxs2fZ0NvKyraM+
         /T1+PNWD+vPCJaTkRYN0IFammZ3HkGBdPdHGSnhmw41BIGBGZmMg7bMqOG8lFKQo0JoQ
         QAFYM/v0YIKPsRE2y/TK4veFs2tUB06O15vbEx2h57Ga4cYTLJ9xM2+Qvu3bXJ3cybLa
         /bE4NGEH4uVVIIxI0Zc08/czi6VxsQUdG30OWSxUEGXowkAsWRByECZu4eC8/Kj9gNyb
         kCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRKmO1tLKw+UOONH+TgpZ2ReAN3p9+rynnOTxMMa6H560er+OJ3TDrj/FIhQljrAjZBqGXOy3TYXU9@vger.kernel.org
X-Gm-Message-State: AOJu0YyGrJEBILINPOmBxrYtYoFrNOcQ6YSu7fYfYSKawxmo6TWoced1
	JUDLLLo4RRW79KNGlUeyb5qyHdvFOiWqNoUgROlgpKPHYlaeQZZH/mwyCFa/U/ZJc8GvXGJbhvQ
	SbvfzwVH+GIkwzqSCGiEGxrLutkjE4yrGCK0AL2khgI4KTZbBHT4LKjJXdKpJNAbj
X-Gm-Gg: ASbGncuNGPbkfraQlAHEE4APLP0ltQZ/F+ywBt5EyvpNO2d1szxDrrxqT9a1Qnh88sc
	xis194KMoC5giiYboVUtV2Jg72vpLvP7P47afxIn5+UvoELiwfj3f5qIwNN1pdnzC8HwkvGzNLX
	5aY8X/omD6h6YKrdHRLO257m7iYCu6bcvlYdw6mZ7Phohsr+FjL15A0CZpzqYHgKMtJcCDXnijK
	YwdgZI/JWsNRApOP00Hor+UGUmqnQDVWbBLYId9zFqliZt/wjvdA10KU6CcEMXL91hwcBapqZqp
	3g4Nz6bE2XdqE6h4HVxkjvoqPIDdJGA5gfb0V7znHnze0wquOMjsgrBGeGkoX9+s5Y2ekm0ohzX
	GQMtd482FBw4LFQ7W6LrlMOswtwgPezQ0gHrjFBtd/AFB2pM33bWjEX1G
X-Received: by 2002:ac8:5dcc:0:b0:4ed:b2b1:18c1 with SMTP id d75a77b69052e-4edb2b13168mr34851841cf.6.1762772895642;
        Mon, 10 Nov 2025 03:08:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGApcQKy/u0KSP6Hvg8vtaRZ6wJn3tOg8UCW9LsuS+tewvaEF/qvX8YyUHnBwzpaULQN4+kIw==
X-Received: by 2002:ac8:5dcc:0:b0:4ed:b2b1:18c1 with SMTP id d75a77b69052e-4edb2b13168mr34851541cf.6.1762772895110;
        Mon, 10 Nov 2025 03:08:15 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d0f3sm1113416166b.48.2025.11.10.03.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 03:08:14 -0800 (PST)
Message-ID: <77898b11-e039-4c62-b651-219c971a3be0@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 12:08:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20251110085013.802976-1-sarthak.garg@oss.qualcomm.com>
 <20251110085013.802976-2-sarthak.garg@oss.qualcomm.com>
 <35e8ef89-3fbc-48ac-9b2b-10c2e95ab024@kernel.org>
 <268122d1-d629-4d8c-b88c-2999c77a1a18@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <268122d1-d629-4d8c-b88c-2999c77a1a18@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: QjFhU-mG2UQTg1UWeViAdPKSZdTzYFD5
X-Authority-Analysis: v=2.4 cv=BfDVE7t2 c=1 sm=1 tr=0 ts=6911c7a0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VJ69uJtSnoo3sbBQX8kA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: QjFhU-mG2UQTg1UWeViAdPKSZdTzYFD5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA5NyBTYWx0ZWRfX5QzqiqNolqRc
 G0MNTu3I26ef+WPhlF+MnRJsZs3alYx1XDp9W9M5u8a1hjS3VbFB8rZzrnYh0EUVXF5+5mcxCeu
 I6G7IWmL61H4rS4r2uBXCQH741MDkk+x19miK3nGF2FM1bToS0Fe8bx4jOmpElVF6L3j8jyzrfB
 k7Cdov3d9uJFVc2++VStWds/qDoJmRooaH2MLh9ySPNLiveOBYZCf9ZVrf2Aaobf9MflaVg026Y
 XkO1Xvi7xC5VpJjKNDYa4vYb90X8jTJ9eBlLeySRk7awUxQFPTAmWmVaQBF2rdUtsGxSDjJXz68
 X7t01zbsiK/GlmxSiw2AD5Ot13h+nnMge6Ta+6r1uRuSQKzZuhJlS6izCN6Eo3sp1FkBcPYIzgT
 1xVQ2O9Emy7sm5wZde1m9RopzVo5Yw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100097

On 11/10/25 10:25 AM, Sarthak Garg wrote:
> 
> On 11/10/2025 2:43 PM, Krzysztof Kozlowski wrote:
>> On 10/11/2025 09:50, Sarthak Garg wrote:
>>> Add SD Card host controller for sm8750 soc.
>>>
>>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
>>>   1 file changed, 54 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> index a82d9867c7cb..95b210fbfead 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>>> @@ -3482,6 +3482,60 @@ pcie0_phy: phy@1c06000 {
>>>               status = "disabled";
>>>           };
>>>   +        sdhc_2: mmc@8804000 {
>> Nothing improved.
>>
>> Best regards,
>> Krzysztof
> 
> 
> I moved the sdhc_2 node to follow alphanumeric ordering and used hex in reg.
> What extra is needed ?

Nodes with a unit address (numbers after @) are supposed to be sorted
by that register, just like any other register map

Konrad

