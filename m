Return-Path: <devicetree+bounces-227128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1448EBDEF2C
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8AAB5357C8A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179131CAA7B;
	Wed, 15 Oct 2025 14:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bGlp81zB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960032192F9
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760537551; cv=none; b=FEATKai1TVcqbkLBZ6AWqSu8248gHFLwy7ujWI6Ux9IKg0nDW5kL1aaAMmwquuT7zixTlmhmmxyZlOWIQt+S6Z7bBJZYI8zmu2zdElMlxAaN0BlfwZK41z7s/+AEoB328zCDNtF8tYU4ec3RCLiuMk7lgYxRLpqQdDEzxJtDIBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760537551; c=relaxed/simple;
	bh=0/Nkjxawte1xSGWBAeAz4zNlicLOOiHatyq2kN/fkSw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MXA73qsAaID83ouD6wFdO77lsO2n9QfWGhQZNiCtUbOkPlB8BlncSZ/nyYCF6W8+oTPexEBjrapWktKQh7FBECwQujt4UHah0LnnqdIxmQLkz6K1hDl16y8JGRtdbZjGRJEIUPL+m6+I7y0IWVAdP6WxY/lZUQMikn81hOh8pyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bGlp81zB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAXBvm005092
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:12:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4wHo8Vra1vzjyqc4KdZsz2I/6mrjzzqutTDTJTdctpY=; b=bGlp81zB3/kC2eot
	K4nsU9MxuIjed8SJ9zqWT6ieOCVdE/XPJQvJJbm40hs2/N53lU5JKl8EWJVBaHc0
	cLz8jE4DFKcrnpKdvIymQz/3pwKl8rkGVMp6SLxlMcxseiiem57JtO+MvG+/sFLd
	l+5x24nBoiamMx6DDqLjUVPzXEf+6vuyZC/QDMvKnWS86tjdMfRG5wKU/Hhqp0XK
	uprIPQYD2wY8gu+BYF/Maskebbc7ImLW0lD15BQ3LXXfrJlFXMWm7HDIjFECxxbk
	Tz9AfW9BesxLbxqyLe13HJkukWjywcTcbn5q3GFtAS+tAGZrkHZ22B9J3KQxcrhb
	m8J4vw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg4h8c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:12:28 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso9062943b3a.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:12:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760537547; x=1761142347;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4wHo8Vra1vzjyqc4KdZsz2I/6mrjzzqutTDTJTdctpY=;
        b=WWxKEjy9Jbgp5rdicEBIrJR9WNSPR30yteeIuaTC52HgCb/dMMRfhnh2Mssai2aRpY
         p2hbPvJLoB2k4nzIwndVwxALWUm9bvcTLwtK/ADUekVyncwTtfnVwUQVSBc7inVZ6WPO
         GhNt/wg+fweReCJTVQJwJjLOExa4O0K3jJ58mo+ruOGi/69pwYgMMdxxXZaHgEuvD3E0
         77F/j37lvSF+7aD3xDiXJGympcYv8typ8jk5/zgkrGvAx2Gm59F1a8Yzk3w5gYU5NNqH
         MqrZ/Gw1W4KWgATaCtaqHiuqH8NaZ4d+N7If1vOu9usXEojo7EAQ9slOs+x97znOL2sK
         kfwA==
X-Forwarded-Encrypted: i=1; AJvYcCU105bZBXbljWR1VSersRriFtM3T4td0CzRzQaT3fwXcpwGuwXp/BvsdGkQcj5KWY9nt/AJ/croKORb@vger.kernel.org
X-Gm-Message-State: AOJu0YzxJambEpqwdkxUaar0tYHvzs/AO+74T0eX06DX8QW10JkYVxvN
	3Z+o4Sqm5uWWkXKWMBMu++Cd3KFIE/tQET8tBfD/2+hGQ+4sF+DmaMCbbhSBXbdAf9K4mSMR7na
	454ZPn/VPUEY9aspSqjW8qF2oZDsfSzg6uULvk1h2kVB/+VCokkQ3udLLYaUbrqbv
X-Gm-Gg: ASbGncvqnMlr9cAsALRmrdEpdNwbtD8CdO83iD10N3NHFq3yYefe+On+ocJFsRV+sFD
	UtRWjmUe2JD1/Nl0wWib40qkKxUvcppiD/73vljyoTN/Aa6hW2HrI2drYnkk4kSQMEozlNmVTQM
	jR4zdYVr8Jj+K7FO0L7O/VLafcIh/xQKpeKvuVoulv9PpzqV1HmkqiO5SHx19/0kpNKybragsW7
	W16NJsB20Kvi2JcHfITti8Yc09oO4vfWPXg3m5DvkdzLQvLB4+q1PcetrQhWFUxpZ/iBOtutjRh
	lEz9EOebeDCaERLRbO68K8k04oVk29RFNh/KmXsFnkk3po0KOtCeoNTCN0p3M/h1UlWjJT0=
X-Received: by 2002:a05:6a00:3e27:b0:77f:2899:d443 with SMTP id d2e1a72fcca58-79385ce7d1emr33730438b3a.10.1760537547286;
        Wed, 15 Oct 2025 07:12:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9O/0dJRMlLmSW2AYZVzbX7T6xJcZVwENkY02XFT5vDOdiAN4Kwxk2zeM2DZtd/QPojIZL9Q==
X-Received: by 2002:a05:6a00:3e27:b0:77f:2899:d443 with SMTP id d2e1a72fcca58-79385ce7d1emr33730391b3a.10.1760537546628;
        Wed, 15 Oct 2025 07:12:26 -0700 (PDT)
Received: from [10.218.44.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09f407sm19119352b3a.43.2025.10.15.07.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 07:12:26 -0700 (PDT)
Message-ID: <6b6a6cd1-faf7-4ef5-ab24-171a59c99085@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 19:42:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com>
 <235cf6b7-e758-4d16-b5a1-182cc869b2e4@oss.qualcomm.com>
 <bngdsqmcxtlolmwr4it3wy7rldikzffgwwuyj443dc3v3ilaju@eiveujsf4up4>
Content-Language: en-US
From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
In-Reply-To: <bngdsqmcxtlolmwr4it3wy7rldikzffgwwuyj443dc3v3ilaju@eiveujsf4up4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX2YmHqFpJg89U
 o46DSODiDbgj8FoXR/B+cODvFCk1lOo5NgJDUzuonzQIscVpHFCQokXeWoWJFgy5uGqYKv9uVoc
 VrvrQGXshBLtIlcZa1mVIyPX9NHxDvaKMm/lvbie/zy55ql3N0tBARu0BDWSk7IUgU+TzDJiTBU
 /66q0BOC2t/++NnwTfZ3pMZ1FbYod+6naOGZbiVH2hfSuuY/TPFrw89Upa9PSbqz28Gy086FnO2
 yQPBoGvROT0MzNp/BYDSX/GBu+g7jiZ6voLTmQL3mVfp6GWirpQNKQGsxhVhjk5ayt0iJfvT2KP
 qB86OE16T8STHBqJqWMrxx5vGEknhanC12LSS/xeQGcudbIp2ZOFBEnqZ8MumQuvwWL3feiKTvJ
 kq47xhTimvsIFHIT+u4XI/HIoExNzg==
X-Proofpoint-GUID: iStCrX2QAHpJvHWG8rXnupBurFljTX2o
X-Proofpoint-ORIG-GUID: iStCrX2QAHpJvHWG8rXnupBurFljTX2o
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68efabcc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=b3unEIaTcIFgp9XBJ8sA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025



On 10/15/2025 7:03 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 15, 2025 at 03:58:31PM +0530, Jyothi Kumar Seerapu wrote:
>>
>>
>> On 9/25/2025 3:48 PM, Konrad Dybcio wrote:
>>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>>>
>>>> Add device tree support for QUPv3 serial engine protocols on Glymur.
>>>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
>>>> support of GPI DMA engines.
>>>>
>>>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +		gpi_dma2: dma-controller@800000 {
>>>> +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
>>>> +			reg = <0 0x00800000 0 0x60000>;
>>>> +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
>>>> +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
>>>> +			dma-channels = <16>;
>>>> +			dma-channel-mask = <0x3f>;
>>>> +			#dma-cells = <3>;
>>>> +			iommus = <&apps_smmu 0xd76 0x0>;
>>>> +			status = "ok";
>>>
>>> this is implied by default, drop
>>
>> Hi Konard,
>>
>> Do you mean we should remove the status property for all QUPs and GPI_DMAs
>> from the common device tree (SOC) and enable them only in the board-specific
>> device tree files?
> 
> Could you please check how it is done for all other platforms?
In other platforms, the status is set to 'disabled' in the SoC device 
tree file and enabled in the board-specific device tree files.
I believe it's fine to make the same change here.
> 
> 


