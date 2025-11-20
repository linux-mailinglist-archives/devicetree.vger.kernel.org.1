Return-Path: <devicetree+bounces-240508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C259AC72379
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3DDBB34E8A0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 04:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9AF283FD4;
	Thu, 20 Nov 2025 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HBhIOL0o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ggq5/TP8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773D02AEF5
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763614523; cv=none; b=hP7Kwpp4wkwuMtApjTc3/otJ0mgXPjyij+GGbEHp8IZ7YzVxpdFNli3NluDcxsj7n70NfKEn0IHBzKViAcfuJW0VQwHo8nmFHPsP4vgFVymDM2OcFPE78KPhaE1xPjD7X8zfHDvFkan3Yz9046tHD9xtorZbLnXJuabjXoNBuTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763614523; c=relaxed/simple;
	bh=AaqqIxdOGtjyFvjU79C2CKtPoEEELPnTs9irzQKnb9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MN7awNRNUCsRDo3A63AHhkgx56DA6hjXTm0t6PXi30UqrBCdiN1PZZb1fxaekI/wuPOzUyS18suryGAazybfTd23FeZDUeNp9BzYYWZHCUhqTizsxI7foDs9TTIy77fft1HfFes2HhCbMwC+dwuN+U7okyxIWP2TUa3+zxsv3N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HBhIOL0o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ggq5/TP8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK4prJS4184961
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:55:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DncpN4eTwVmWaxuFQwCTjhRzoIYadgkKUlbtMRPPtuM=; b=HBhIOL0osIYFltyV
	6yArROHTS3sssJaZ/SMTuI1/SnowjHrHFk3VxWINiZr0JwhmQMdnMij7W1ed0ip1
	MmnhCoMxMA1epDUKpgNsxCOqCvO2JoeD40HXGL/p9RjtB2vx/uSfR6vzCqvAoOeg
	trH25HRKVTP53nEi/1FNccjhg8/5otDEDYMbFzWguSzUyJYV6yxncq9/pIgrWvpA
	FqzZxl+jTJ7t+97tKt2SDGZ4G4twv+QQRQzKjt+gsnlF0SPFHEKinpQdu7d11WSG
	Qw21WQiDJJV15vTAKbcwwR0UqSww2y2froWDnT/hPslixlANHpanTyeOVzdKrA76
	ot0Tkw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahbt6tyrq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 04:55:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297ddb3c707so4443845ad.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 20:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763614519; x=1764219319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DncpN4eTwVmWaxuFQwCTjhRzoIYadgkKUlbtMRPPtuM=;
        b=Ggq5/TP8U1TJT4MF6vPJbI7p2NK3oFsoXxm8TqILkY9Dh7g/8EoNIJKIo46BrxB/yX
         HBRJh5kK6eDIZV3AwyszDr6pCU/SAoIg5f1bwZ/Rq/MQhEctuNZIoahlqJN81VE5RR6/
         QtUV+yC7sYsUGD32hIl85MKRfUbXs0/I8lLNzwAOcMm1trgY11qKG37As9q6ayJLS0gy
         HVyFS6Y8YEChzcCaKtARnvHdQyeEOaQ86gl9Oc8OypcruVP7p52VeBq2oaBRp3FWfVgc
         lpF77qEJNU5gWdoGBFCqW0c6H4Ke/Lihq7lqKE5tNMcSM4YTC87AiTR2giDzQrFFHxg9
         q+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763614519; x=1764219319;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DncpN4eTwVmWaxuFQwCTjhRzoIYadgkKUlbtMRPPtuM=;
        b=PhPMbDeueTuuh9Xmfmlu2pwujqac6WDAnL9xjA4OjGqe6/M2h+f3NlyH/HWgoYl3nY
         nJbCN23MBmh9WUIWToTVj5Xhm5OtSDF9yHtNTe/edbtJuPj/2D89rGIgL33vjC4GHjFD
         VtSooXsXyCzl+jacbRSE4d0GWRhK2XdenDPTjnlJeJK6JWMvvdi39L5hQdS854DdMv/6
         eV/0aFhw678JC9r3Z7++XS4lW0QQIQp83yp5z2u6+6hlM6bUgUVXNmBqGXmuA7/7RorM
         QpXMuRa5fXr06h8G51X9KznXm2LXfTXbezObwFCJGXkQK50GbvQaFV2Mg7/Vnvg35jU7
         uznA==
X-Forwarded-Encrypted: i=1; AJvYcCX/ngVYSjIDoBwA/aGqJZbuM0PVJoYl0CUTI4vMS1brDizL665cGampz29AvQRqHE1wik2D5ZvvEXP7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9bVwE+dSvK4LRbCJXbys7t8uyIQeQgprJv5R/8fZrRoiTA7Au
	xFzy2rgAll1fQvUKpENxriD3EmB+WpTkuWGC4Qbr92XpCXlpBTSptFclQ2jDc3hc25Ov1d1IxF/
	e5n/iMIRYf5LsjSrdz27igcX5napLEwqWpo1GKlrSf/Y+8zzNTcREzg7MyimtW60u
X-Gm-Gg: ASbGnctjzQeDhIZwzAfVjDOIwdTj0XLqQVm2G4RAw/mHDf4ZWE73frE4Dv0FEMaveor
	Wae68Kg6uqq6r8V6kkUCSrkqTAhhndIlf7cWe8w7WDNBShAivFyLN1lqRCjP7tRMC1pt1Eu54Je
	ldAlZp4gEAhIjRFfSMHU4u8SBpvdGyructTqNDnOoKZHe7lrJZbeCMMIRtsIQbek05KCjKyldB+
	cuMEagG0WbJQ7vZaz/wkfBBAvrCifSX2vAlVZjU4C1zYf9cwsTEI8NSBI2jRs+eNGlreq/VNr2y
	XFprDbARRLgnVbgBGzEy7JHRLn7Y+vpR+Z/Np/r5m24ZKs7d2TTfVbPCvhFVRSbaXyXqIM6emNJ
	BPiwwjcoNzhK+DJbYKntOL7yu9+w0VeBgMUU1DFvg
X-Received: by 2002:a17:902:ef09:b0:297:dfae:1524 with SMTP id d9443c01a7336-29b5b0599ecmr23010785ad.16.1763614519219;
        Wed, 19 Nov 2025 20:55:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9wEYeJGmIMH4x08ZM2uAK1wl8/ybQKArVIWz3buvqwW+M1nh22erxRUrOrddYdQiIylejYQ==
X-Received: by 2002:a17:902:ef09:b0:297:dfae:1524 with SMTP id d9443c01a7336-29b5b0599ecmr23010485ad.16.1763614518708;
        Wed, 19 Nov 2025 20:55:18 -0800 (PST)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b111acfsm11506795ad.19.2025.11.19.20.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 20:55:18 -0800 (PST)
Message-ID: <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 10:25:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: uMxTHiaxUSzVuiLSqa68G4dRD_Xgb8JT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDAyNCBTYWx0ZWRfX42hucmaDPSMK
 kPgU78TgMCDi755D6cwT/Nw/8i4yG73o7VXqJLHkpolbmGU81mvWIwn7+uw5cwdo0cxnVMGJfUx
 CTh+nFz0/8S0N+CNS9oSXQItzdq/eOZ9KCmmffWaQmb7sBeDZgaxFO9GRSMapKYzp7ilXZ/pNkA
 YiEMsFKArPIKoc03c0c+jKtdTqaOM4oCzLIkZb9UugYpn67QQDshb3ZoVVqnZDrkCdnQEkJWUk+
 335HJzONmYXwZ0dGsZG2reidL+tvrmtjCiA9lbEBDAynX9vnjmOsaj5NXJJTyfQQd0FLujoQ+ta
 Uu1vLYy0eY866GJ9BHZ2Wuoc8Z/mhdf2qtplwl5tS46xCvUUl/A1nsSnTzDIjNDVblxG8iyANDD
 5CYL3Wg6t61PBaweD0qxXPz+aH1nbA==
X-Proofpoint-ORIG-GUID: uMxTHiaxUSzVuiLSqa68G4dRD_Xgb8JT
X-Authority-Analysis: v=2.4 cv=PJICOPqC c=1 sm=1 tr=0 ts=691e9f38 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=eRdh0U0_q75e97kZN5sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511200024



On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>   * add shared memory p2p nodes for CDSP
>>>>>>>>   * add CDSP-specific smmu node
>>>>>>>>   * add CDSP peripheral image loader node
>>>>>>>>
>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>
>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>
>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>> ---
>>>>>>> [...]
>>>>>>>
>>>>>>>> +            label = "turing";
>>>>>>> "cdsp"
>>>>>> Ok, I'll change this in the next revision.
>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>> +
>>>>>>>> +            fastrpc {
>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>> +                label = "cdsp";
>>>>>>>> +                qcom,non-secure-domain;
>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>> created for CDSP
>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>> Is this property not neccessary anymore?
>>>> +Srini?
>>> That is true, we do not require this for CDSP, as CDSP allows both
>>> unsigned and signed loading, we create both secured and non-secure node
>>> by default. May be we can provide that clarity in yaml bindings so that
>>> it gets caught during dtb checks.
>>>
>>>
>>> However in ADSP case, we only support singed modules, due to historical
>>> reasons how this driver evolved over years, we have this flag to allow
>>> compatiblity for such users.
>> Does that mean that we can only load signed modules on the ADSP, but
>> the driver behavior was previously such that unsigned modules were
>> allowed (which was presumably fine on devboards, but not on fused
>> devices)?
> Yes, its true that we allowed full access to adsp device nodes when we
> first started upstreaming fastrpc driver.
>
> irrespective of the board only signed modules are supported on the ADSP.
> I think there was one version of SoC i think 8016 or some older one
> which had adsp with hvx which can load unsigned modules for compute
> usecase only.
>
> I have added @Ekansh for more clarity.
>
> --srini

For all the available platforms, ADSP supports only signed modules. Unsigned
modules(as well as signed) are supported by CDSP and GDSP subsystems.

qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
The implications of adding this property would be the following:
on ADSP, SDSP, MDSP:
- Only non-secure device node(/dev/fastrpc-Xdsp) is created.
- Non-secure device node can be used for signed DSP PD offload.

on CDSP, GDSP:
- Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
  are created, regardless of this property.
- Both the nodes can be used for signed and unsigned DSP PD offload.

Note: If the property is not added for CDSP/GDSP, only secure device node can
be used for signed PD offload, if non-secure device is used, the request gets
rejected[1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245

//Ekansh

>
>
>> Konrad


