Return-Path: <devicetree+bounces-242966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F20AEC91BB1
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D4FE64E3596
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0797830E82D;
	Fri, 28 Nov 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FvrxJgYP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h+KXACsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561D530DED3
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764327131; cv=none; b=PaFnz2NNGnE0OqyNQBId9h9FQXURp4okZjYID3NzMzH8TwWTtKA0BE+P4ImKYkvTWhe740rG52ND6e7PlHWseHAXi1AnggWTjWb7wY3KkHlg6A7b5ynETUNoE5frdUKgmOxhlgSlSZQeyP4LHH8Yr585sUQ2eBDaqhLUFqw0lwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764327131; c=relaxed/simple;
	bh=RPmxVLBfpCHVLHwRjkIdjCGzbN28a0PTPzEMX/3sFlw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iA4gNGIUVDIaib61UF6VTjRGaGvpMT5Wl5mlDoddb8WndzwZfEmplnRTWBjOEwSzhWqbfX7ZRmPLL5LPn8S6vjHiZYDgytxQyW5s/bt27YSbMfonr4yFomCnvMQ8zIeNWamATvppG6rT+l7JgYIx1xw4hbeq3EBOfkNV8wa5ldc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FvrxJgYP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h+KXACsd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8NlQV3122998
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:52:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	86KnzvGu3GEj7n2OOgrtzoYiFDBvCiTUgmN8lQcrmNg=; b=FvrxJgYP2KlyfPNd
	f3zibxh/13UnLllrD+Bmo7nM5c5k61++HFTqbPydw+dH/BgpUVVUikcb06gxcQ0h
	jY98lEeR+LQudUpJ0F6bdtud8pMy9CNe9YtQLah7VhIpA4O9RjVPzSJVV5gW+iMr
	XPA2rIK/7pB/eTbg3spLupE+c6zBkZLp8t4siT0qjnoXZwLv6PWkh7z6IDvR4ynu
	bxB8BVSyyX0uElTvTHfhPRQSZYlbnw/TLZ/veZ+kbO+THy33AFYjrT6o8G1CbykH
	2FYKpFaxTd5CljXEnWHMm2O7ZPnZezat84nrZvWn5nxWEFAso2i9aui9spz5Owgq
	OKAZQA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aq58ugxmy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 10:52:09 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed5ff5e770so2354931cf.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 02:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764327128; x=1764931928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=86KnzvGu3GEj7n2OOgrtzoYiFDBvCiTUgmN8lQcrmNg=;
        b=h+KXACsdjDpXnzG52pEKzH4+be+WpVo46dIWTBr2nXcq3EJ3OorsQKXFoYYFr5Nqfh
         PDdcOGbEqKEos2k0DqzWJp6kVSbCgwrT1K7H4xVYZO88XbLLnsRAU6QwkANrqebaPjdH
         ymykGLXSrEkDxQyHPkLZovKB4SwOB/MpgdH6o8MeMGZLvlxnSHJaMIjYyagOTjP0t8sA
         aVLIu0adMBB2fuWnA02umto4SEftBYbuXWFfqaX5Fa6vafw283SPKq349SImxceYW/8A
         eFI7lPGSN2bL8FgTwxxZzq+TLH56zrzXNkduwy2aupxkz/VcekSDBe45H0dTz9bcIjhr
         nb2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764327128; x=1764931928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=86KnzvGu3GEj7n2OOgrtzoYiFDBvCiTUgmN8lQcrmNg=;
        b=EkFxua8Aizyt9EAhId/b/txD0u1hZkgDyzz2yk/VpvTlno2d00SOzvaUPo6tjb1EAL
         UbfvKMfdXK6qvnB3j/ntf3P78sbYDAERc7mjCvW/R1qgTjntL/egY5PaBCBasv9ah/50
         IwqP8zDhSYg3wDQuLOiRDLUIqhTQEaXk7hof+KZSm9c+Tg48ZsmoabZ5NaXHIrRCqpGQ
         Ij+2+wsmHfyTxCzVdFZbkOXpFAwGend4KwUAM+vVCo3iWwYwUIDdYhjoOQYbwOIT6OCj
         zvGLHjFUemksu46K6eXJHIPOIqXQ1IN/tQlYfhDSWP7VfskwMJ60YDfW4XwOCgO1xMq7
         9ELA==
X-Forwarded-Encrypted: i=1; AJvYcCU8FrnyaaX5FuY1P/Oeo6WKg30Lp2qpyNZ3fCYBaEzrAgNj8MGvgz8P0XaBsIu0gf1s50mL+zzdejQ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3dqBjt8fBPRBzaSGEB0JvHRUZLNRW/FD/3h+KHyiyzyvnjpEU
	Ngbbtb3GEJ3e0cEGCLfewSMTiB6ObR2+e/3ylYzNCUM3azAZrp3sA//CLPQEqQsK4eo83QI0gsu
	vWWTEC9G09LaHk+UPLnkZb0NPMsz/c8Rwfl5mvnwldKDoh/Yu44UrDhNlMWZCYXn+
X-Gm-Gg: ASbGncucFlcRN3iJUelwvrgCzkYSpQknPQODwgcORNDE92+7qfhHBqMYHFEQ/ehQ6WZ
	1fwfLDE472luOdOBW0IaIeChSBXuuMbnVLvAhGCw/Zi4CKbdU8FdECBLpKHrdQuXSKJQEzkkdnx
	5VTrFA3OQ9v+DIeU7m2RYHtf0s8PgERnKLKzP4t31X5xaZ74u8go9q0a+BSf6fQI0nQvTFPDDyP
	ztKi+81Jm0BXv1XRN/zM8w0WFUoJY0UAzY3lvDJYNflsctddKPGdhA3aVEh+eVZJMN2g+XMtdX3
	swHb9snsKx4Jb8YaGUyuECKRlyhsbz5BC2BUj9Ia0ZikPpJ7u4IbtcNDvH/xK51O5yPfA08gAhA
	nSdXgZOscGqjtYGyplyOsTYaIv+K1a3mvodeNJd6q/7ri8zV5GEeRnQZErS0Xclztvqc=
X-Received: by 2002:ac8:5882:0:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4ee5890a538mr263138101cf.6.1764327128343;
        Fri, 28 Nov 2025 02:52:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/MIO+8FIzsXep4B/K57A72tSDQlBayZ3YTQpTuQMWVPS7WSrr05XyaZaNVpxOe7smpAv5jg==
X-Received: by 2002:ac8:5882:0:b0:4ee:4214:3226 with SMTP id d75a77b69052e-4ee5890a538mr263137811cf.6.1764327127865;
        Fri, 28 Nov 2025 02:52:07 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51c68d0sm420699666b.28.2025.11.28.02.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 02:52:07 -0800 (PST)
Message-ID: <1f2c4e5b-2d7d-41cd-9772-374e3de46a50@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 11:52:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aSl48gV9laFb-MR1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dBZlqig7G4S6hEWZQLhDaO3j9742q3WF
X-Authority-Analysis: v=2.4 cv=UKvQ3Sfy c=1 sm=1 tr=0 ts=69297ed9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=RAbU-raeAAAA:8 a=5eqlAXZ72RyB-Na0XcUA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA3OSBTYWx0ZWRfXxsmWvKU5t5NH
 2WJlB/ePknF/mToyJiSKUOGW0199MRmvaCvEVb4Jm1PCiwSm4xu2XYAz5r4gU0Q5rGXvfQeAVWU
 awPGV184oihOgZFmGIYblWGOaX5uftVUCLhBJCpSj+/bZKxLHb+liN0AoForqo01zA9rp2jnLln
 4QLSBux9zX7Z1uwWUcLSIAXZSiQc5dmJ6VhWn+jHWIfiBlCmZakri7IVu1I8xI2EB4mQRgWDLlt
 Yl8SdPXsPBIO2yzklFA7ot5lthzl2jnhm8ZFuk1Ka87jmsgwMuvUj4Ny84S79kHKHDSE89uFbjr
 32D8ER/0QsjSFpKyIzpMdKF99zNac83tYeJcQcuWRM38h7zZblOVZQCAvMrHaoG1UoE4seaNdCN
 cV0G9XTsGHFzZGuZjHAZ/sRex30Ieg==
X-Proofpoint-ORIG-GUID: dBZlqig7G4S6hEWZQLhDaO3j9742q3WF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280079

On 11/28/25 11:26 AM, Stephan Gerhold wrote:
> On Thu, Nov 27, 2025 at 04:29:42PM -0500, Jonathan Marek wrote:
>> Unlike the phone SoCs this was copied from, x1e has a 40-bit physical bus.
>> The upper address space is used to support more than 32GB of memory.
>>
>> This fixes issues when DMA buffers are allocated outside the 36-bit range.
>>
>> Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
>> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
>> ---
>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> index cff34d1c74b60..cd34ce5dfd63a 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
>> @@ -792,8 +792,8 @@ soc: soc@0 {
>>  
>>  		#address-cells = <2>;
>>  		#size-cells = <2>;
>> -		dma-ranges = <0 0 0 0 0x10 0>;
>> -		ranges = <0 0 0 0 0x10 0>;
>> +		dma-ranges = <0 0 0 0 0x100 0>;
>> +		ranges = <0 0 0 0 0x100 0>;
>>  
> 
> Could you clarify which "issues" (crashes?) you are referring to?
> 
> We need to distinguish two distinct use cases here, which are both
> (somewhat) supported upstream: Running in EL1 with the Gunyah hypervisor
> with the regular DTB and in EL2 with the x1-el2.dtbo applied.
> 
> # EL2 with x1-el2.dtbo
> 
> For EL2, I think the 40-bit dma-ranges should indeed work correctly, so
> we could add your proposed change inside x1-el2.dtso. I'm not sure which
> issues we are fixing with that though (besides correctness of the
> hardware description). In EL2, all DMA devices should be behind an
> IOMMU. In this case, the dma-ranges limit the size of the I/O virtual
> addresses (DMA addresses) that are given to the devices. The IOMMU maps
> the DMA buffers to arbitrary physical memory addresses (including
> outside of the 36-bit range, dma-ranges limits only the DMA address).

I've been carrying something similar in my working tree for quite
some time too.. The USB4 PCIe controllers have BAR spaces in the >36b
region, so this will be necessary anyway.

As for the broken-firmware laptops, there's only so much we can do.
A fix for this has been *long* released, but it's up to the OEMs to
pull it in.


I'm not fully sure, but I think certain subsystems still have the 36b
address limitation (camera?), so it would be good to know whether that
needs to be accounted for

Konrad

