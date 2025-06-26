Return-Path: <devicetree+bounces-189743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B3AE9517
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 07:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2B0F162D91
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 05:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F70D14C5B0;
	Thu, 26 Jun 2025 05:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WamTXcIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEA417BA5
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 05:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750914976; cv=none; b=ov58jDgUL09MpLS1+pqy6+QWkPgbe59TMLiT6kQjnrqjyVjnTnCLB/hGnbsJKESe+Z8/TXJVjbj2ouM2jMMM/cytajO/VieYGdge2thYOlTwtQng/9Co6ThvnPUgBq9tgNe5zMVsfA0f/m9AIMqRvCtFcx6FiXnLbq0Y8vWulQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750914976; c=relaxed/simple;
	bh=DGIscSfCziwlOv1P8QbTdNlq9sdRWlYurdgZqoUEpB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fUD+Zg1Y/wF1sZ8JuMM/3JfhTBS+pT9a0YVPvqONxt5A68fJqSq5qpRz5XB9ZoekRd7v7wAvJe9BvBsBpMcTKCZbOzdFemaP6HR6mpiLL5j8BOZ+hNBuuBRpVboA1fKlmVXBHtHCtqz+IR8rkQb/w0QRbYREd7UzgP07HPP1j9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WamTXcIZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q0DrcO018662
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 05:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LY71DyKBMD5t9RNhRw/JYOoNO51ZSy07y5vbGuiOBVk=; b=WamTXcIZMQ8WxaBH
	wlzoE4GqgHlTV9FknB5JMrW/KsaQzyAaIgZEk0DkT/Hoftwj9M4y+HbvEZQqyTQI
	cYQecNR0NVYfjCx6yhR9lfnLqM8Mu3I82ZX9u2PUk64dgSJyXSO+TEvpMJtx3xuk
	tTiWWXvTKEqvAaHaAez43By1nfthjJCM+kVqeu+V+vuFMjVabHG1tdGuh+n414Vf
	IKQWQTLrzjVDojbeCg97njnjOt69X4qUaluLNSXMdPkFRU5zQkh3zbhJbcWg4y3G
	CZASp0i3lwAXlJesgDaSL4OljDFLGo4J05zyqh3YrVm22qTV+7QPcIa6UUd37Tlr
	ZR9Myg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26cab4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 05:16:14 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2382607509fso3942795ad.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 22:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750914974; x=1751519774;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LY71DyKBMD5t9RNhRw/JYOoNO51ZSy07y5vbGuiOBVk=;
        b=NxkC21lwDyRIw9buoQ340pAvC+4IEDVJ9+IyFWVX7SP//iNsrSuMHyZJyuDxPMGFYx
         931E70cN/PDmqpxku1CZG5a+/IA5r8Ey/z26J9jVm/ArkicDj9lMmmFJs3u2TsAN2nVk
         yCxzW7ve4Jlx7tVTmb78ZvPPEQPTzm3k/ReZfmbDZaYo6BZEfl1oDMpBSbCYVrI9q7JA
         u2Cf3YtZsPRH4kMlelah834ICvy/pElckLJMydWknKoYnXbh6LqkByQWMse49WNvsE6+
         4LOUiGIuXa94JkVJQA7PIHofJbjkM6GtPn0b8Tmrb2dKf3FjicU+PEI50WehVTy2L0eA
         vyPw==
X-Forwarded-Encrypted: i=1; AJvYcCWUa0xMgY+Y5NF68twvOEdvAoWLrEvwmDm6X5n5vj4v9tRhtMydtDyvjIAjQsbxyXE3YpoOMdAcs16t@vger.kernel.org
X-Gm-Message-State: AOJu0YxUCx/uWDBhtkkLEVOVFncaF9UMFKlGAo9SGmTUZRpqNSMBSal1
	7v+aTvNlE0D8zfSx2Rp3Zq6fD6d7Mdjmy9JWrnZjeVvPoLWDnbCo6xrqstT3WPuTjtO/NJhGFZI
	sluLOfoGQodpPK+cE+qbVMvxO7wYXeZ8QHsrAsCu2ugQxll7PdIIjqwePP1j8dvP1
X-Gm-Gg: ASbGncskmmjRlFC5SXL5wco2DrXONWJTuhrw3ytdU/QYALsVh145ik3So3VRhB2sfHM
	fXMQtnPkaaG2DRQaCKzldkXmEhAghztYgs/RObnQz0L3jb+8GPn515x5uUAuTlqHOtNlkzXI5c8
	rFd1T6rNDJyR7h0mwvrHOF0d9+g5j6jcAT1LDUR8fLlpmxypM5XDU/WruK5VUugdZSS9OXgkcpX
	mg2aARII292QkLZm252AUFOM7rWouu5bFYEaEdZDA+AdBYTXc1izwosNvzw6TaYBUAAgtBLe8Z4
	MJLHdp9GJww57g0zEMq1RAYMnwXS5kvYZYmBEcADgO1nBLO5y4OPStnfXbLTUJk=
X-Received: by 2002:a17:902:c946:b0:234:9066:c857 with SMTP id d9443c01a7336-23823fda014mr93556385ad.21.1750914973623;
        Wed, 25 Jun 2025 22:16:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1J4U+ZM0bzuwizefQYFWAFIBA+Dan1+AA0/xNRtmYf7564YTHsnuN3w6c86htat1ivMpLSw==
X-Received: by 2002:a17:902:c946:b0:234:9066:c857 with SMTP id d9443c01a7336-23823fda014mr93556165ad.21.1750914973097;
        Wed, 25 Jun 2025 22:16:13 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d86d1b74sm152989225ad.209.2025.06.25.22.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 22:16:12 -0700 (PDT)
Message-ID: <5925b608-1251-4b73-b310-948b383f7b7b@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 10:46:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com>
 <bdf7e3e4-f1d1-4f3f-aebe-ded7b8091884@oss.qualcomm.com>
 <3514a3af-ab7d-41e6-9e59-95defe9105b4@oss.qualcomm.com>
 <da6daf53-11de-4ca1-892d-73754adb435f@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <da6daf53-11de-4ca1-892d-73754adb435f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDA0MCBTYWx0ZWRfX7Mnnfq2RIXj3
 S0vpFj9dZhR7PW0oUeWeRcG7xs3EVNkWWPf/JxA3sk0LZLmDOsxbpc375yBY9htzyHZn5WpA2o1
 oG6lonAsvzxAEJiMDTlX10XwlLecBJ/xHN+CzaSFEF8fUtPFPWygMjXiJrRcWC7jk3+gcge6Veo
 UBgZ4CYPqf8gk198kwQlb0wk8jDT2y3DfAUmwbjaT5ff/7bPaa+24vQG3+jj970xd8KBTHhWrpJ
 eL1po4PTHaozVn0o30hZ7ibnpShpbNhLolmwpax8KsdcPyrvouV1dO8utaTkyl6u0g9GbMmWl56
 nVPdGnt3d5mTFs8bwdOeCVOF4CpeS1aubCkpn0JhkfFE1o6samuTgbWOmDU4nUykd6xo3VBsWzQ
 31oz9PRsCi73EQgkAnw4SWdLICTZNB1EwJHC7/6uLANJcIEa3x8wNfIt7ZbtoWfgMR2l5N+a
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685cd79e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Dgig-iccZCONCpKWDfgA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 4v-WXtWZ5jmPERF3RXfJOIpDXDUeA2yI
X-Proofpoint-ORIG-GUID: 4v-WXtWZ5jmPERF3RXfJOIpDXDUeA2yI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_02,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=571 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260040


On 6/25/2025 5:44 PM, Konrad Dybcio wrote:
> On 6/25/25 7:55 AM, Kathiravan Thirumoorthy wrote:
>> On 6/24/2025 8:08 PM, Konrad Dybcio wrote:
>>> On 6/24/25 11:00 AM, Kathiravan Thirumoorthy wrote:
>>>> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
>>>> first SE, which supports a 4-wire UART configuration suitable for
>>>> applications such as HS-UART.
>>>>
>>>> Note that the required initialization for this SE is not handled by the
>>>> bootloader. Therefore, add the SE node in the device tree but keep it
>>>> disabled. Enable it once Linux gains support for configuring the SE,
>>>> allowing to use in relevant RDPs.
>>> Do you mean fw loading support?
>> SE0 is minicore, so we don't need to load the FW. But apart from FW , protocol specific configurations to be done in the SE's Image Configuration registers, which is taken care in the patch[1]
>>
>> [1] [PATCH v5 0/5] Add support to load QUP SE firmware from <https://lore.kernel.org/linux-arm-msm/20250624095102.1587580-1-viken.dadhaniya@oss.qualcomm.com/T/#m37a6b739c66040cde5b6b0121a03da7ea6715842>
> I've heard the 'minicore' or similar name before.. how does it differ
> from a "normal" SE? (+Mukesh & Viken)

There are 2 types of SE. One is Minicore and another one is FW based.

Minicore SE supports only I2C / SPI / UART protocols and it is fixed in 
RTL. Depends on the protocol needed, we need to configure the "Image 
Configuration registers".

FW based SE supports wide variety of protocols like I3C, CAN and so on. 
This can be achieved by the loading the protocol specific FW image and 
configuring the "Image Configuration registers".

> Konrad

