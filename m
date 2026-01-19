Return-Path: <devicetree+bounces-256677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 248C1D39F6A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37DB2302CDFF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08C32DC337;
	Mon, 19 Jan 2026 07:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/dKHOT3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FYii0XnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1CE2DAFDF
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768806631; cv=none; b=dKJ0q1iYJu2Y1cJhqOrzIc+YpsLQjdgwmfaeg/VqVefl1nkz5ir/UVLqawWtQXdzH1aYoR4QXWDGzhTVz2w3JNun2axH2z8/an5UPv4VcSIAjcfmORzD6REWn2GAO7tPdui+FYDNls6k3Wlw7388BDESaC0i8o3SgUjqS8b30rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768806631; c=relaxed/simple;
	bh=pUC9v9oitjZLE64qwOFr3kGrcoEEO5fBHZGhYe5+YHY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VYF+0s+OicaFlPgvuanqMOOQKog3U9gGi2MmUWXoFrBIX0EuynJKzk+ka1zm1XMHrfxCKLiGFIrr2ZUjkSnUgnk/bxqKMmXTReacTIlUh6c1ofh3Hyuq7/qJzXaWk/sWX/SgY9b2+Ed5ygd3rzWAIQFueehlq+AML6zJMuAzzvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/dKHOT3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FYii0XnV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60IMutTn3566507
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V8g+LK10KwOQVtxVMa00VwCtVnFyBFrSBG1PYxfFG6o=; b=m/dKHOT3Tx7l92iD
	ZvkeI/DCr1DNxbTnIZov5llu2GlLVkpit1rVAGl5xbHpfzPZG6uVVbkg+5Xk5aXp
	JqjRf/0c1JWdL0LDiedMJ7NR2ZEIWEvmZaQvylWurU/zqBLFEFPO+oR/7bsqWdJQ
	7CUuGGnTUb8cduARoXzOkFPEFdtEOqCNZva2oKJVbOOIhvSnuS5HbFv2na2KYMqZ
	vzGXn7Ua4Zsjb18hKBH2r2yFoDpHtuCWW6NFceLBK6j41mGk5Je+PPSPcbut4dgd
	ICicK1Nf+QMpvI6IoOBDnKXUg+dE4FAzuVl0hJNXDFdXaimkqBQ2quwFzDBFC+25
	3/poDg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br3q9bw2a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:10:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0dabc192eso42706335ad.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768806629; x=1769411429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8g+LK10KwOQVtxVMa00VwCtVnFyBFrSBG1PYxfFG6o=;
        b=FYii0XnVPCr1t2eKboDBwfxYU4F0IyHmWP5yJR8LmeEggvOXI2qQC0JeBSe3lliz7I
         bJMFmlWXSPX22w/KGBuutgug3ILLRa1TujlmovKV6YXgJCgP0Gp1JntagvUpZwVVZhcy
         6osvX+F5pNjkGjvBnBwa/eCfIJLFqWZP85pIvUjLL9DwQScSyaJU36NOFMl5kEPZU8oS
         Wo30pV+/8cbJ7bBtGALt1PR6ZrIC73ChFmaxZaoQKi9L1Yj3tPT9JQFGRbAFDT27qmRl
         /RgU043BzudJV2XcbHJA543UOtVTcytFSV6YeahXDnbNV+c2bCH9vzbGDaBEDP2S/o55
         Iufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768806629; x=1769411429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V8g+LK10KwOQVtxVMa00VwCtVnFyBFrSBG1PYxfFG6o=;
        b=P2Onn13GGoNevAhRDHsm8vyQKwGzcR2XqpUpt+2H0mtsDkyP3uUnPK2xvgag8DmQol
         blPf1+7bu8eegf4zsXbOoxNUr7kxDPGZvxulWo6wQdZq43LmYsVMDfRgMUcrbfXfNSmi
         6LdLdWcwo2m3h+awai9w0DHnfPqbSWjYrvkDFybRLZBfsDnBrNZ1Ls9Pkk7iCX6nj8gN
         y91daUR1eXNWGcEW1WzDIa5ghOvxiE8eWwr1SYoXWuS78vcI9gBP+9dcrQNGN8q1IaVR
         oNK4hR5JrwKsn2YiNgP/5BQcnjGYjUduXy0OTEJyKnRM2Z7jrgc4e0hmaSoYIwqP2pDh
         6Iqw==
X-Forwarded-Encrypted: i=1; AJvYcCWpeBKKHtlyTtHs68A5vAUzGUcXhQZRDNA8/Qbfr/ZRE+XSbCV8Ps6usq+n9Kf399etQJFGWS42esKA@vger.kernel.org
X-Gm-Message-State: AOJu0YweirtNR3GeuEKeLlkEayZ9wzwkRuNWcGdxm6rIeDysmayGfnSj
	X68nXPtiwTj1JcHEBv45n0zhXCpfzKyBoU5elOJRyuRKuld2lS6OX4An5lzzt6DvJi8Jj0DIuXQ
	bIceKNalp0btSr1edzoWJ0zYcEDGJ99mvMS2g9OcrZQ3lA1kBUXZcu6/j2YlCkSL+
X-Gm-Gg: AZuq6aLbPPuC7m9lNpGgKgMb1Dv+DsrzlXVBqY5nV+uNF7o0uTWZmipsZAr1R+wvPnS
	uun+2riWmEe1QRiMWb6XJl56xm8QLbp8KFjyHQlCntB/hA1MfI3+p0u+lhE4jft5tFPIxZjsyP+
	kCuJCsJViHtwtPmg/JpGut3sz7Z+5GQX9qiDRhKaW5NnI6/K6dr9Z5TPA/zUC5iRx7BK5dl/p4u
	5KrbjGhxyyIpj8rbQws7K44K+7B1/dP4fdPjLI3JdfbdZfDv4OZN+SfyWuIF3sMBiJ8k2dwiN/C
	zTBPzWhIpaPmrrv3knLsaSpazdwDgjidf/4IpNil6IwpuJgU3/IO5ApIZqTqDX/1E8tm2XButfX
	loC+7SQxlqhZQYE/b+UkNM4vUJ4FzPz04d8Gq60jCJIXLxd+eCNUZwJsyn3RWBoLX81YM75zF9b
	9ZUf8=
X-Received: by 2002:a17:903:17c3:b0:2a0:fe9f:1884 with SMTP id d9443c01a7336-2a718973282mr87977815ad.55.1768806628953;
        Sun, 18 Jan 2026 23:10:28 -0800 (PST)
X-Received: by 2002:a17:903:17c3:b0:2a0:fe9f:1884 with SMTP id d9443c01a7336-2a718973282mr87977635ad.55.1768806628437;
        Sun, 18 Jan 2026 23:10:28 -0800 (PST)
Received: from [10.133.33.126] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190ce2ebsm86095595ad.32.2026.01.18.23.10.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 23:10:28 -0800 (PST)
Message-ID: <4345645e-c1d0-46ea-b0d7-1c7c13b22a7e@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 15:10:22 +0800
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
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <eawxuhblnho4pyeyskvk5s4ouqser7o5jh267ttinzeeowxfxs@y6nl2qbdydb2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1OCBTYWx0ZWRfX6yXd0lhZKoGY
 q50dllbxIjXFaRbylCKpD4IMIkN+chjIsWYMVogmU5dz4TYTO3FWbccL7Zar0l2dRVZC7fYZWmx
 hHx9Z8iUruQz5X0lZROX4ikqBFLapNBmedOBGfLhAd5YWGhHRT7nPd+Xu2j5PlsjOkU+YxUnqnP
 AbLYQZe7dkZvUvwlU7MV/hW6lpqNbUFotReO3Eb88Wd/qX5bOFcFJ6tG/vV4xd2JThMMMx+1Vnc
 +XsMXqpARh913ZzcYGW8ncEb6oLSGmSI8c0mZabkcY4Rco6QG6shzXF6O3nFXRQqtNAVSjq5jzU
 ZdkmOAOoBsjmz7T+b7y4ZLknG6g2cgldtZj6dL/TFTdkI1EBz4EKvWZOywXHMMnUHiJKAcd9YdD
 8gQlb9LYFsWF1IjYwGj+XrM0WYS90g+To39OPQ8PC6eCQjhfP7Xv63C+xO/iMc4tPPUwaFNKB7j
 FAU+wRV4cT3oLAa4kxA==
X-Proofpoint-ORIG-GUID: nfTiB-DqpwKZSW_VZSLkURY-2NT6_MEv
X-Proofpoint-GUID: nfTiB-DqpwKZSW_VZSLkURY-2NT6_MEv
X-Authority-Analysis: v=2.4 cv=dPurWeZb c=1 sm=1 tr=0 ts=696dd8e5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1ir06EIKMARb4SxFNewA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190058



On 1/19/2026 2:33 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 19, 2026 at 11:13:29AM +0800, Yijie Yang wrote:
>>
>>
>> On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
>>> On 16/01/2026 11:41, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>> embedded system capable of booting to UART.
>>>>
>>>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>>>> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
>>>>
>>>
>>> NAK.
>>>
>>> Warnings were reported at v3. Did you address them? No, you completely
>>> ignored them, so warnings are reported again at v4.
>>>
>>> What do you think these emails are for?
>>
>> This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
>> introduced by this patch set. Since it does not impact functionality, would
>> it be appropriate to fix it in a separate patch?
> 
> Why can't it be fixed as a part of this patchset?

I will fix this after evaluating the impact of this feature.

> 
>>
>>>
>>> Best regards,
>>> Krzysztof
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie


