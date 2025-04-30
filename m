Return-Path: <devicetree+bounces-172255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B32B6AA4430
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1596C4C5BCB
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 07:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB712202C5D;
	Wed, 30 Apr 2025 07:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KwhuTM0g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2491E9B08
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745998970; cv=none; b=UuShtR55JNfvyGmPLL7jMaKG8ckYKnb7vzO+VwukOanyaE5mexJIvoenk3iiAiK54npXbHO0WinR5O0r1oAafIQSlAYAOmhsCQ0GltJOKybQb09e/zO00yaIJ8NwfWpXXacBuBFKLkeCqGFdEpu5SFfLfSAtN9jwlYvNOYoMtNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745998970; c=relaxed/simple;
	bh=kBCa1T5PcSrLrAN7dxbaZ2FQY6mQg/7bIWGUREStzeg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ulZG8EuJA4b3kQwh3X5mNu9b2dlfyxu+Kkqlyo0V/D9OcaxdZT89W9KQLaJxkI+75B/imeQYTh2e74OeZUovcOstl3eN6qD26aTEmnQGF3mTgKwdOhrz5d6gnRTAzxC5CAT+eVVh+w0TN5VV0XZgUkahsji0vlygPgSdrHu1Hl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KwhuTM0g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TLaAxn032316
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:42:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUaVf9VHjTFcpUGhpbhMQ3Ge/NGsAqULXFPt+N3iG1g=; b=KwhuTM0g5TRdRuxp
	p1yF6augN97oLuwZxtZH2sKDfY7ZtdFM693woo4X7Yv4loY3aePEnAlr33y58sUK
	Vo9SxrAATy7sSqqKWHu4n+2qNIi8wfa27i911CZJf51wYs+QRdhjkipbiXSHUPU1
	yhZTLXodLC/XzKZPQIVETYljejBUArTrAlEaXOP0bsq9Q743PohUecKop0d3Bkyy
	J4cfDTNRsSh5Kq0kWhveAIGuBYyVAnEcMD+XRb+i2kiqgDNyh6VGwgO5vN6d1np7
	JFjwCIj7trqGR/baTEZlk44GH9CZzvqnInmtCUrpH3BKCXhHaj7aFLYUg9PrODnD
	i2hfzA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u2983m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:42:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476786e50d9so15111461cf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745998967; x=1746603767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XUaVf9VHjTFcpUGhpbhMQ3Ge/NGsAqULXFPt+N3iG1g=;
        b=H/rDiuXg4wUyiQQTE/S97dZmCgLG2/dQ45BrH90z5klakNDWdjcUP+/bD6HGVxE/4c
         aytYwA7n96RYug23ysWsbdrJt0E3cJov8PTGIP5t+su/Wkt3S1eYAD/fL2D7PW/yp5PV
         6bpWJCm7gY8uzV6K7+rrYEg5f46RYwmPRWPEhAP3ulzAIfsx4G78+DfEL+g6NqzdtxfI
         NBeLTGEJxkBM4Yh/F9LffKlnRrcYpp5wvRGbDYCv5lQALU6Z7Df7XQTPtgCyDNKLVXv5
         NWqgzAfksfIYvWpNIJOXOU2xa3cJS541d8+p4Jutvf9AQe9ey0MCqCLs9fysrDzU2p10
         Jp/A==
X-Forwarded-Encrypted: i=1; AJvYcCVWW7Xi2QvpoaPCb3inaffGkRL0RsoiT0z434FPvhF6gJZ92WGPsWvpnSpvkgYkYPysenM3m7bHONsH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbnu1U1DCYU0XYzhvjU+fQp/hxozgOtf7ssVYsmWxtL6DIf1uh
	ME+oZjwFcU3SDm/UhuWarHMZOQpQ3RR9zyNanpzrCyPCHGMe07elKj0wKfezthcMxmy081YQelg
	uRlfwtl4LfuWjEAbVG+n9eVfNC7+9N0RlmEX2jxjH4ek49wwFvhvdJTiUeeoI
X-Gm-Gg: ASbGncs121TPGgwAqOte92b8SjKqJuyqHuHD83sO0z2VQVxzqIf7a0O2Q/kqIdzhWk7
	uJZz9cS+gyhOWR5N8DItjV61wJMAMIsfeVtrWPZJk/PiuI4QPEragNHrxKg+EAVhxlF2u3w2euP
	8ZRx1mT2M0ue/87TKyw4nOPMRxTQkAK+wKkUQetWBrgsisznaLNyFZzUJw2etGiGJePZs54s0Hf
	hPr1ku0yASk8PCZSGW2fcWdFJ9IXleRztLT4DPERbZEeOBqucv5zzVFAo3zxJPxTlxY+4iTmXVj
	sWfFElPsQ/Y6niuIoV/GRIebZcsnRZQ/8RGmbMBj8smpGZ8jn7rOHhB5XPdgAVVkCUc=
X-Received: by 2002:a05:620a:198f:b0:7c5:ba85:357e with SMTP id af79cd13be357-7cac857731emr77706085a.3.1745998967040;
        Wed, 30 Apr 2025 00:42:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJFIi0dncAmVoeKyLj4QkQJlHUjRZmoK4qLIjwW+UX7y0o88dA8BCn6koU1U4nahlVTE6QMg==
X-Received: by 2002:a05:620a:198f:b0:7c5:ba85:357e with SMTP id af79cd13be357-7cac857731emr77704285a.3.1745998966696;
        Wed, 30 Apr 2025 00:42:46 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acec28db2fcsm278111366b.17.2025.04.30.00.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 00:42:46 -0700 (PDT)
Message-ID: <8d18adf7-c1a6-410e-b3a5-496288825afd@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 09:42:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: x1e80100-qcp: Add qref supply
 for PCIe PHYs
To: Qiang Yu <quic_qianyu@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com
References: <20250425092955.4099677-1-quic_wenbyao@quicinc.com>
 <20250425092955.4099677-5-quic_wenbyao@quicinc.com>
 <aAtbFQIQMJO-BYe_@hovoldconsulting.com>
 <e82eda3b-b27f-4584-ad23-562ca4b22847@oss.qualcomm.com>
 <aAt54vikoREWZyGY@hovoldconsulting.com>
 <17a1a4d9-fdc5-477a-bf4e-91cae5a62479@oss.qualcomm.com>
 <c4115bbc-e120-4a20-b6ad-a0d5266319d3@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c4115bbc-e120-4a20-b6ad-a0d5266319d3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5fwGxTdiRv9PwFD_0KKcCCdqxWCRHGCW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA1MyBTYWx0ZWRfX7q6TJpNVj5U9 YhOHuIdKSZ9uuPn1u44oYwKmWPtL3hzzhbayt53fToejHPXoZki96D50n+n9luhkeWmH02YvkcP yQ78Jbhf4bXrC7dpC3PwKBFuo/PWVRXsYD0R1e8oBt9PJXZJFBGCl8fR/NDyrn13GEguVRy2GrK
 kedJShdD3hVOPgAidJVDcQFPC8Uu275w+FoQ5HsnUMfwlmXamwgVkoFJqB7kU8OSon0J9lvySXw ybJnMvmwQCCARgxzEr8WcBWNnL2t/eeOx3c1VSrzVF5ozgrDN8NTm/d9UjWjWbI61lbutLJJsGL CQHrxFTgC6kSvfTutgFnl/LP28tEvZAFSnrbpbXkDy+xaucb6LjxO4oz6uPkc9Ebx80N0jt5gME
 r/XGWZv58sgsZjsGPJdd1R2H42wqbNnyK9ZIfgzYmt1+7OBeidtSVIomvVZBXq+A2sG4T7Q3
X-Authority-Analysis: v=2.4 cv=b5qy4sGx c=1 sm=1 tr=0 ts=6811d477 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=U8xqaHzKl31ljCD5roAA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5fwGxTdiRv9PwFD_0KKcCCdqxWCRHGCW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 phishscore=0
 mlxscore=0 impostorscore=0 malwarescore=0 spamscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300053

On 4/30/25 6:15 AM, Qiang Yu wrote:
> 
> On 4/26/2025 6:48 PM, Konrad Dybcio wrote:
>> On 4/25/25 2:02 PM, Johan Hovold wrote:
>>> On Fri, Apr 25, 2025 at 12:03:06PM +0200, Konrad Dybcio wrote:
>>>> On 4/25/25 11:51 AM, Johan Hovold wrote:
>>>>> On Fri, Apr 25, 2025 at 05:29:55PM +0800, Wenbin Yao wrote:
>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>
>>>>>> All PCIe PHYs on X1E80100 require vdda-qref power supplies, but this is
>>>>>> missing in the current PHY device tree node. The PCIe port can still
>>>>>> function because the regulator L3J, which vdda-qref consumes, is voted by
>>>>>> other components.
>>>>>>
>>>>>> Since the device tree should accurately describe the hardware, add the
>>>>>> vdda-qref power supply explicitly in all PCIe PHY device nodes.
>>>>> AFAIU the PHYs do not use this qref supply directly so it does not
>>>>> belong in the PHY node (but possibly in the tcsr node that provides the
>>>>> refclk).
>>>>>
>>>>> Since commit 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100
>>>>> qref supplies") it also won't have any effect for pcie4 and pcie6.
>>>> QREF is a separate hw block distributing the reference clocks across
>>>> certain on-SoC peripherals
>>>>
>>>> If its power goes out, I don't think much of the platform would be
>>>> functional anyway, so it's redundant here..
>>>>
>>>> It doesn't have its own single register region and it's frankly
>>>> one-shot-configured way before Linux starts up, so there should be
>>>> no need of describing it at all.
>>> Then it sounds like the qref supplies should be marked as always-on. Can
>>> they be disabled at all?
>> The best answer I can say is "maybe". I would (without knowing any better)
>> assume RPMh wouldn't let you turn them off. QREF predictably takes VDD_CX/MX
>> and some additional lines
>>
>> Konrad
> The vdda-qref power supply feeds the QREF clocks, which are consumed by PCIe, UFS, USB and display on X1e80100.
> For PCIe, QREF clks are provided by the TCSR device with the following bindings on X1E80100:
> #define TCSR_PCIE_2L_4_CLKREF_EN
> #define TCSR_PCIE_2L_5_CLKREF_EN
> #define TCSR_PCIE_8L_CLKREF_EN
> #define TCSR_PCIE_4L_CLKREF_EN
> 
> These QREF clocks are not enabled all the time and are disabled during PHY deinit. Hence, vdda-qref should not be an always-on power supply. It should be turned off when the QREF clocks are disabled.
> 
> Describing vdda-qref in the PHY device tree node is reasonable, as it allows the vdda-qref power supply to be enabled or disabled along with the QREF clocks during PHY init/deinit.

We were advised to repeat this for all QREF consumers as what I said
before may not hold true for all platforms and nobody's gonna play
whack-a-mole with this

Konrad

