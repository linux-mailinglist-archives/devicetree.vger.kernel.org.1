Return-Path: <devicetree+bounces-246581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CED46CBDF37
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F09E830C05A8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4405527FD4A;
	Mon, 15 Dec 2025 13:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y9FvoFQd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MORJTOyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F2828C864
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765803661; cv=none; b=QIODxremutwOMhwAqTamlYKOzToHXusmbIs1u93R49AVWcDcY54DphQdsbHDrN05rXVABrq3+bNqwK2QgRj3L/1aux+n7Xo5RnWsyCmevElMiPRrsnOw3Nr+marIlAdK2NC/2xbG6eHNx4cD0vKTbibuPVxJaTTjFLPTFjDrEDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765803661; c=relaxed/simple;
	bh=bGeFX1PHslKb/I6pp2SZh4itUTZljDjY9CVtNtdVlOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=conrmfJKs82pg9gZWT7wUo1TlbVoviXWBu6cqMdmadnDEgUE4yNGerowMBgC+uN/qPEH9BlDaMVRfU0DIQdBybt7jUjXN/tj9Ils3wU0bQ6AwBvHszm5R6L3k0KbhmkVOeDForKFfbzsKUilJlOwRU7IrKpxRzG9z2Vyoz27w1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y9FvoFQd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MORJTOyU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFANsgh985091
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:00:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eWzLoZ3fbNna6oDTvHfwwszm/4c1bM5VeFkwVbiDZzU=; b=Y9FvoFQd/34/h/6T
	Pthljz6NOcdqHikjysir2IHRMBRSHxuaoftJLndZtTXjOwWI09iy+torM6j18f4i
	iIN9Z+W01shbR6w81z5V0j2Q5FTMR2LQ9daZaoK9A8CbjPdylLC7Xo4cinjor1lF
	nXdTSu0FI4EV1Y3aslTN7JLR4TtpVAhQn+ra+g3lHcNkkljp0PSYFVRE+gC6MnfW
	dkhuTAQvArpdp8b32bz/43DB48ntIF/uZC23NLArNbQjZWhBrpehxopXrtCwtTYn
	GYYBcQHGdPRLsRxtbdSZgTx9O348bKTHAWywByg+fnJSJTct3B7sz3svP2yVMn3T
	svDjQA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11a7vk25-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:00:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0fe4ade9eso11383505ad.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765803655; x=1766408455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eWzLoZ3fbNna6oDTvHfwwszm/4c1bM5VeFkwVbiDZzU=;
        b=MORJTOyUy1Uv6mGDy9k4ddf1B3ULTVnuWiXCZ4mCLpE23JGR2dhxvWZNNySTT9YB95
         GcUBCC+ejSXZ4nhj8rAK08gUZKv939dmK4UFACkZeQJsrlCrnfbCj/5KGtK8V3UkQ3IB
         ad455EtSVMyvU9czHS2LYvLN7VTylhbfjHW6qkOmJ7/9GUXyep0XeORyTjQA0rl4Htq+
         6r3fC4N4xXlBiSxX949j0o6VogNF9RHaJbRxlbUhHWhqFyfAyh3Oc1tyOa5iL56MFQ1d
         5WMy7QVQunifkAxQROplCER2K+1l2iG5gqHkrZ9dVv0QS9Oeir3mH4URaB9maT76ndTy
         T27Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765803655; x=1766408455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eWzLoZ3fbNna6oDTvHfwwszm/4c1bM5VeFkwVbiDZzU=;
        b=KGl+Qel/AfDoisXng/VCD6eueKtVOlbE5BWKCBBa0A1GYYwwVHAwbHEx/hmMS4Izw6
         0CMjUCMMNYOb3bplbCEzje1peQJUxfjUcjvEh/rDY9z5hShm7tb8M0HeJEe/AucT4KA/
         itFYgfa+SPYoSLXf4GW4f302G8kEbBPUvOo+w3mq1tYdEaUEluyZtZUhgNPTx4B/m8O6
         SE3F9wSe7ol+WYh92Z52Fd32oahib4ZijLsrYFsQgpm1Wxd87Le3XtLksE+jQeJ3SlbC
         6ge1F+DQ9CkAuIhQ4ndV68XpYc9cVJmjA2B710KD1SER+oY1pmm40oHVCFEs7GbrvtER
         yTrA==
X-Forwarded-Encrypted: i=1; AJvYcCU2Mj1J4cLm0cdc/nVFeH+ec4CQHus3QKRMhkdfZPnB7yl2GPL5mOIb7/NNTVpSq/55q6rqoIRhtsjS@vger.kernel.org
X-Gm-Message-State: AOJu0YxKYFFJgQ/Z1Ak/Z49gAO06U6yv8G9TqvX4LQllknMM49bAUHgr
	TCb0tXua/VgOADxhXzZMttixT/Fav+KyUGozz7GvXgyt41fpGjVhX8if1N8g2XjIoIiatgwYLgU
	xvQ1RGOqbMJPnnFKAB7E1+AkCnPXGn2eRsqUxzP+ALF2SHUoQmWdSZObwHY8D2fs+
X-Gm-Gg: AY/fxX4k38fntJQwchY+kOmlbgCWP9Qn/7HdhBXSA/tRMqkDFc0IQ/7OfhGH5no7CP4
	nygoIsgK/z8ndlqz2IWAs4qtC9UvJy0exEtHeLqwabE9od+QTNp97jzcY95CpRenaFYZ7EtleSx
	80Dptegxr2GL5LheTp0mtk+naNKow1pIPiiZ3nyJk41Fyspnak3TPdsj8DrQBCFSA2naPnmAaTB
	JOI9BlymchoRR0OB5ZwY2/HRkAJEK6C1/OiozxAQsW+NCnaSU0mhD5x2z8Obl0ERKwrPWJVf9rl
	311mKDZ2wg7A36TQFmX+YyjihigsVqHyjc4h7/XoDsBtiXQf33+Dehy3D2wFdjUgP79MNYsvT/w
	LdNL1/kIAFCV4FzgeHBrk03iX56x1JWcpm4KmPr7G4No9oV+4hPXpb85jkmoZObz8a+vRBnQD6S
	3J+2IeKelHgS3X7Fx6QPpPU/3BtraC60fI
X-Received: by 2002:a17:903:1988:b0:2a0:ccee:b354 with SMTP id d9443c01a7336-2a0cceebca3mr46641925ad.35.1765803654164;
        Mon, 15 Dec 2025 05:00:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrz1GbG2GulNcHY2p0JDhisa9h4HGD51A2Jm2Vs7BYkvVj/IS8tR0gt8HDA+qn2x76f6/Cbw==
X-Received: by 2002:a17:903:1988:b0:2a0:ccee:b354 with SMTP id d9443c01a7336-2a0cceebca3mr46641205ad.35.1765803653570;
        Mon, 15 Dec 2025 05:00:53 -0800 (PST)
Received: from [10.190.210.122] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea04101esm133447405ad.70.2025.12.15.05.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 05:00:53 -0800 (PST)
Message-ID: <43e48560-2848-4474-b858-a3d15944e2ee@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 18:30:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/2] Add support for Gunyah Watchdog
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
 <6a8f5d62-f6ea-44b3-9baf-acfbc1e58efe@oss.qualcomm.com>
 <992d46b7-b053-4a9e-ba04-f5653525a891@kernel.org>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <992d46b7-b053-4a9e-ba04-f5653525a891@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDExMiBTYWx0ZWRfX7C6Mds+Qjs7d
 YKLX586Ap6CPslcv0p4CNRWPeVAx0u1ACpzvaHHvid4sYq7VLOVA/dLh6z1CsXJsJ75kdu53Ceq
 kTQ3KgOjHfPfovkii44V04KylB2Ak3lHjYEV8jK1UgMVKQRkT9bAtvkZsem5rVdUXfGbUxflV2o
 lbQ1JSk4tEs+K/Ye7pN8XKkF2bQ2c44s+5OaY7N3z5/6fg5266FV7YJsIwmKOzz5lkcypYUZdKG
 DQxnEikNoS0Gx4c5nZdSZjieUtFDf8vpz9HhKwkPcjULbSIouZHiRHuqanlZ67pTimyF/Bu0anR
 2ASHdTdSq1Sz2u0rAACOPQEaCxFkzzC7UHbFB/+CdjQ3sH1f8KkXJ/Mt4nestfQvTE4dAyS3W2S
 67W62O+wbL/cUhDKBcdjqghLOMkzdA==
X-Proofpoint-ORIG-GUID: R_Z2FRNdUjUhqzKPnDCr-poeR2XM74we
X-Proofpoint-GUID: R_Z2FRNdUjUhqzKPnDCr-poeR2XM74we
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=69400687 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=S4oPqir27zQB1GLfsjsA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150112



On 12/2/2025 9:29 PM, Krzysztof Kozlowski wrote:
> On 02/12/2025 12:23, Hrishabh Rajput wrote:
>> Hi Bjorn, Guenter, and Wim,
>>
>> Just a gentle ping on this series.
> 
> It's merge window. There was no point in pinging just before merge
> window and is even worse to ping now. Nothing can happen with this
> patchset and such pings is only noise.
> 

Thanks for the guidance and apologies for the noise created during the 
merge window.

>>
>> Since the patches have received Reviewed-by tags from Dmitry and
>> Guenter, I wanted to confirm the merge strategy.
>>
>> Bjorn: Are you planning to pick the QCOM SCM changes separately through
>> your tree, or would you prefer the whole series go through the Watchdog
>> tree?
>> If the latter, do we need an explicit Acked-by from you for QCOM SCM patch?
> 
> Where did you document dependencies between patches and any non-obvious
> merging? I open cover letter and there is NOTHING. I look at patch
> changelog and also NOTHING.
> 
> So if you tell us nothing, why would we care to think we need to do
> anything special here?
> 
> You must explicitly document every dependency, both external and between
> patches, in the cover letter. At least cover letter, some people (e.g.
> mostly me) don't even read them...
> 

This is a miss from my end. The following information should have been 
the part of the cover letter:
```
This series spans 2 subsystems and is split as follows:
- Patch 1: QCOM SCM - Register Gunyah Watchdog Platform device
- Patch 2: Watchdog - Add Gunyah Watchdog driver

Dependency:
There is no build-time dependency between the patches, but Patch 1 is 
required for Patch 2 to function.

Merge strategies:
- Strategy 1: Take both patches via the Watchdog tree.
- Strategy 2: Take Patch 1 via QCM SCM maintainter's tree, Patch 2 via 
Watchdog tree.

Since the patches concern primarily with the Watchdog, I suggest we go 
ahead with Strategy 1. If this is acceptable, I request an Acked-by from 
QCOM SCM maintainer for Patch 1.
```

I understand that this should have been a part of the cover letter. If 
it helps the process, I can add the above information in the cover 
letter and resend as v9. Since there are no other fixes, v9 would only 
contain the cover letter changes.

Thanks,
Hrishabh

