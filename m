Return-Path: <devicetree+bounces-215340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8C9B512CF
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1486F440A94
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43503064AD;
	Wed, 10 Sep 2025 09:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nSLTTmZn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0457D2C21D5
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497237; cv=none; b=HO82Q2t/V4s+bpWt5X9G1MpvzCEpIP1ed6q6U2bVwvAHXjDaP19f2RMt2faRnkT/qV5sXIyZUtv1NMQ3L2kxu0ULz/pd5RCUqbPtwPNw4hU+hyMRL/KC/nO1H3h1ZIom1RGWzC3dxTr0S0npYgOI/GKHmhzEAk8zd7Ht/vfJsyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497237; c=relaxed/simple;
	bh=PMrygF5tQEBETNNlK2TURt60yHgbiNe7/3/KcHUD8tk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Hl9Ov1WXE/HHnL4Ls5uMKp8oqAwSp4slpFMEqH6n2I0RCi2QoHmSNCkuNix7d+uXYVAWzfSO6sjEzPyV7b9TylU2uyu5POE4cG97uYk442KREfivFN1WvmWVjphR1z/at9k1mMkhEF8kz8VQ4PS9jPBL1iKEJ/EQh0Cut2J6PUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nSLTTmZn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58A97lBN017768
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Gclb0Ihbq4U0dzyWeLi7fsQ8/l2l+bvwlN9BvdXuZ0=; b=nSLTTmZnKr6ScU92
	Fyb392PZn7uFi1XNswYjKJ12/rbtN2iAb4OajNPKN0JJJpB8uJi1eJMPeX4greiE
	9sZ5s48WLAUzk+c1QSV2NBPzOGVgcNfQ8zB1t3h8y3dMfbZzQnQbNBl2MH1L9Cz2
	G54kAIe6rivYEbIG/WWRs0vd9NSB/x/3fQWPIOfGMEkNiYMI+kXJNLAd09B4AvWg
	DWjSR1c105Kx7ziFCn6LAPfgdGYLY664rK7gONlhwPZ7mZZOrTMQael2gSyPlNFm
	s9A7krBD1swlKPefKWiUV4bf298daJlUjKy4kopPyzK+pDl1/UORNLNYhmZWBJA5
	1RiLow==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ab9e1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:40:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329dbf4476cso6170674a91.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:40:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757497234; x=1758102034;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Gclb0Ihbq4U0dzyWeLi7fsQ8/l2l+bvwlN9BvdXuZ0=;
        b=Eba/5rAlg5CwLWaMU+9l+xj0DfXZJcZ+LDSBxsNAdE+NXaCiZmDjvhcV9mV7+oOCTv
         aASV/AowO/IdMY3VdEwUm/wZE1lyUg9MhmX0rQjs5q5oty5HG6MebGD5KVpYyJ0JGM16
         uNX1G3Vy5FJ0Ws0e7KwgPyL8IcW9I2qzV0R2QQiWmo8e7sy3AT4hCwTlvy/Mnzj+ZytI
         vw1KndYOwB9TlCYbxYZNjJOGp7sVA/UpNigs3k9niE2ZE0S4xSb1B3+N1r4bbImhxrr3
         AkJOfswmw+13Qdk+S6r4ObsRwloVkXErqJmNQ26l8JmQFn05n/8TNr+tMayefMLzhSBV
         QhLw==
X-Forwarded-Encrypted: i=1; AJvYcCWOBXD905y3CwByMXFpb0hDwjqd2Tb97e2UvrLlMRTK6zmaDOIzzgpBv4k4QhFxf4HO/u32w6uZSI7y@vger.kernel.org
X-Gm-Message-State: AOJu0YzjTQfn/eilviimyo+0c+EALRZ/uTK/nX+tM+jaiUW2m1UJR68/
	am1+nftS2+ZGtGUGVdBp3YuA/RL5by3rj4mPFWLd1+XC7DPDftra76H1gswTRn17Lyo+HYU2UJo
	00hwiqj6HSA2Xn2PHclsbZmpOtkU28AVSkOZEZDRQX4Tit1XFOIFhTrfBYpmJ3kwv
X-Gm-Gg: ASbGncvWaeZQiud8wYJP4Oo1o+S+EeA6Lwm9Hm42Rx6wbjLeWG0fAfPH7PvLjLngEPE
	eqw33vG9JkVwm2UlzHh6oeUrRogEHZHvebf2kysdsBvUH+lMSaKzJJ8jPm1jn+Em8rOjnHge54C
	MDFv5HUF6HzIz7uDOMeCalF+7wS5gnorEotGMMB7BO/EYunX0Afb8CeVtjQ1zCT8mDCzeRL9+xB
	wfS5U8vqbRRthMX6reMSLk73a5zHyI2R3CstrCbrug+oC/X6iYIAlqDoJCGZ1KEw0yU2XoFqRg+
	V3Rm/sa5T1FOB9EInITYYT98K96WddWFeA0h1zlPgv7oDLbek5AB0vX2WlSH2h2kklP3FvtmV/W
	2HQ==
X-Received: by 2002:a17:90b:4e83:b0:32b:9774:d340 with SMTP id 98e67ed59e1d1-32d43fb9041mr20757091a91.33.1757497234004;
        Wed, 10 Sep 2025 02:40:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaecEzrQFrPqSdW4dQERZAIFQpKAkVm5A9reVkG5A2GgX835tsdd4acUFKiggHGiBsSO6+GQ==
X-Received: by 2002:a17:90b:4e83:b0:32b:9774:d340 with SMTP id 98e67ed59e1d1-32d43fb9041mr20757048a91.33.1757497233496;
        Wed, 10 Sep 2025 02:40:33 -0700 (PDT)
Received: from [10.92.178.42] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dbb35576esm1832190a91.16.2025.09.10.02.40.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 02:40:33 -0700 (PDT)
Message-ID: <04554d6c-132d-4f3b-9284-4b54d5047805@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 15:10:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS8300 sound
 card
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
References: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250905142647.2566951-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <43090acb-ea36-4015-b14f-78d44d789d42@kernel.org>
 <a9507045-b900-49ee-8841-0f8fd30816ba@kernel.org>
 <abc66798-dc91-4860-b0b4-de39a58b5745@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <abc66798-dc91-4860-b0b4-de39a58b5745@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c14793 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ExpgeREpyeptk5CJGqkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 1pu4xJTYWNHWuPnvDPwUhHe4adBuqUQf
X-Proofpoint-ORIG-GUID: 1pu4xJTYWNHWuPnvDPwUhHe4adBuqUQf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXyPN3LWP+vUOB
 oBvamTQy2lLAfkDcFqzf56M26Vuqq1upzmFk8/agO+IyAn0/Rt5/pZmyvE8ff9K3jFWBW0LYKgu
 6OaOfNYbRQ90eZsrhGrpzLBgsRbqIORSmn3NgFW5JkZSVIB96W22Ulejlek8TtHnFeUMV5eGg0N
 99OKaKmRh3tifA/ih6qggtzALCVeQzdHEULUiuvb8L9UqTjnhVaQ70yCKnAs2mkNzkUijhwPElq
 3k6DQifxPsb9e2+0n8NPggBSABcdopeQ2m1r9Sm9O0q7Sp/fULuuiAReuo30rJ0UvVzcwIpR4r7
 OMJgeSe23T9IPo2vlzLta+CzvU7hfmR84LPcRBTq+1ZKDjbvnPaS1vvifctTR73fTVncK6qAXll
 HyXzRKJk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039



On 9/10/2025 1:35 PM, Mohammad Rafi Shaik wrote:
> 
> 
> On 9/10/2025 1:09 PM, Krzysztof Kozlowski wrote:
>> On 10/09/2025 09:26, Krzysztof Kozlowski wrote:
>>>> diff --git a/Documentation/devicetree/bindings/sound/ 
>>>> qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/ 
>>>> qcom,sm8250.yaml
>>>> index 8ac91625dce5..eebf80c1d79a 100644
>>>> --- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>> +++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
>>>> @@ -35,6 +35,7 @@ properties:
>>>>             - qcom,qcm6490-idp-sndcard
>>>>             - qcom,qcs6490-rb3gen2-sndcard
>>>>             - qcom,qcs8275-sndcard
>>>
>>> So what is the point of this compatible? There is no user of it and I
>>> think you added QCS8275 for this case exactly...
>>>
>>> Shall I start reverting commits from Qualcomm because you post patches
>>> "just in case" and turns out they are completely not needed? No single
>>> user of such code?
>>
>>
>> @Mark,
>>
>> In case it wasn't obvious, please do not merge the patch till we get
>> some clarification. For sure it is wrong one way or another: either
>> incomplete or just duplicated.
>>
> 
> The device tree currently uses qcs8275 as the sound compatible, and
> the corresponding Device tree changes have already been applied and merged.
> 
> Reverting this now would break the ABI.
> 
> A new device tree patch with qcs8300 is currently under review:
> 
> https://lore.kernel.org/linux-arm-msm/20250910044512.1369640-1- 
> mohammad.rafi.shaik@oss.qualcomm.com/
> 
> Once the machine driver and device tree patch with qcs8300 are accepted 
> and merged,
> 
> I will promptly submit a cleanup patch to remove of discontinued 
> compatibles from the machine driver.

If the above explanation is acceptable, please help with approvals.

I will submit the cleanup patch to remove discontinued compatibles,once 
the qcs8300 support added in driver and device tree considering ABI 
should not break.

Thanks & Regards,
Rafi.

> 
>> Best regards,
>> Krzysztof
> 


