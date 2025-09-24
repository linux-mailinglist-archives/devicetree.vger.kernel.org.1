Return-Path: <devicetree+bounces-220697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B46B99794
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A73763B94D3
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 10:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8C82DEA7A;
	Wed, 24 Sep 2025 10:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fcVV4Sql"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D221D26B098
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758710732; cv=none; b=cFwRRuqbMyb9ilRW+y8UFYGwtd4bksF3GI1KtvaQzQ5bOAdr/DZduIfR4pmx6Mniznb/AMcI9WTPI/DsMwDHzshiGrNxzFQy1/vesOaeFGp3TWW7U8t40pQOmLU9FFlLEzF3KxuIgZJnWD9DqHR3TneU+0oFBdXzQcJIOSaF3pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758710732; c=relaxed/simple;
	bh=izbfN5zlluTvTDU5QBrF+CRs+L/OG8KsQ9B39AZHdSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oNDrKN73eOgrOgyvR2PmI9e8Bq04R5YJ2IrmzT8lCQC4YkXFtnx05HM8kI0V3kPd0QarY7jIOo6H+ZI7cuIp5BfIX7zvZ3xdzn3emdQY0ig3O9iVDtfRwT3lrn3O0wyaQhCvj4o6RYUX0aaMHa1zi4qoX/6MuCy87UqsQyxvcw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fcVV4Sql; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iKr0029720
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HX6oleHUsB5SDxMPBnujI7fM0fMhWH3Il+PVWdZRijU=; b=fcVV4SqlDbjFTvzq
	4p5+9vemuguxM02OY18H6uYHkGc41gWfit77quaawHdd8rqWA2ekQ1Rv2qWYgkzh
	jbNwb9M9FAHkG55lUs8XUJKc/aiPBXRazmiEbbltZmqMb1czc0szahf6PBbtrnIC
	UnJ3d1W0qGCO96yzE28cJsmyrrmjuV4v0nLkoOrLgvvIXTWvQ/3Vfa4NlKhBbTlc
	LMV4rOt33XS3ASWyXzqj7LVWpBqDQglgysG5LH92A9hF51qSGIIu+FwhMwUSy8RI
	eDFvFxrFJc+pviEABHk3q2TsoLwkWz8105kE7R5UzjCvVYYpYG9+oEbxYQhxplIT
	LHq0xQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fkwe2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:45:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-796f103f50aso11467776d6.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 03:45:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758710724; x=1759315524;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HX6oleHUsB5SDxMPBnujI7fM0fMhWH3Il+PVWdZRijU=;
        b=SYdrLoC9H/cgofIUUqWlK18NEKUCbSl1blJ0hENIIeXvaE/Lz+hjeJEYTVQs1MWsHS
         fsYAVfoqD9Q4stFCwqdeMvHAPvgLmTq/+oj8ASu9HZy5ZrFx1ICQQe4n8ut5Dy8m+tGm
         U2cg1FNfka0SjbySQx//98BhBwKmvdnov/1cpfQlgJT0VBDR6GeMN1l9qVWu7bN6qMVn
         oRgzGrtAgsZ8bzGVNH2C2ttT2BRk8D/DH7kOXBhhstzsSQ2iKWpUmzH2eLHEGtsv+ygJ
         HWFOnrWVStAi8oFyweb635zLU5PZ4LK5ssR4VdDBiMKx3vk/gD8QhvWMtryrecerPQvQ
         XFlw==
X-Forwarded-Encrypted: i=1; AJvYcCW/RiXFUbHfAgYZxJTrljz0pz+0SX/MBcLNnxDzV/uh+qL+m8+1jFmULx03jqiw02FvU+707stsbK3D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5nCOh8QwpT6aEKAHvf5SJtOpJqWM+NlyFwR5H4K2M0y+C3g23
	RT5okvxdL4kEjW34WMHr18N0e3yQOHKqLwL7OBqcsstrTBgDxYXu11rK7o/K8OKLdCAlxg0vjUx
	kuoCD6IDU5VgABnhaEUA3GzpnHKjQYoZ7BcgJTP3b24rqAAKnZwE0KMAmbDhOywAe
X-Gm-Gg: ASbGncuMf5kXIP0JcU/Dxqj0PHzEc4y5/wAptrLXiHMsZmb3+KeAU6acrG7GNwsOMWe
	HYbtq5gNNeh7Yb+riKaGkWYXFwReDS42hVPoHrQ5PK28tSh77ZNYje6ld7REIqCfGEInePbEK1v
	WgQlM3dd403FGEY6CkpzuqwyUfFjMeNUfoyK58TUQx2DcZKC7oVZHwfJPJY8Euc7uZR6nCjWD6r
	yJgz9R5IPN6u9G0ENQ9e5h0qr1No9IkEAFcS29nDPV7/KPK6ZCxcY9Vv/fMkG25acPMHAOdwPxE
	bgy1KyIVNzzL8iDLEa8TeDNbjJiKPxiQPHRYs4DLFlaaxzI4y4B5iin8xxxAXgeyLZHMc8lD7eh
	WHEMME7G5n/uXVQxN/Ji0KA==
X-Received: by 2002:ac8:7d8b:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4d36707e722mr47274391cf.3.1758710724440;
        Wed, 24 Sep 2025 03:45:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlonZ9+W9s9uT6vfFr8FKvlXPmIwYYLXdwCud4N5wiTYqUItOgeQ3pjQWcy/3rqzCLiWuDOA==
X-Received: by 2002:ac8:7d8b:0:b0:4b5:e4dc:1ee5 with SMTP id d75a77b69052e-4d36707e722mr47274091cf.3.1758710723897;
        Wed, 24 Sep 2025 03:45:23 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b29e6597caesm889524566b.73.2025.09.24.03.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 03:45:23 -0700 (PDT)
Message-ID: <36372e64-83ec-46d6-9e66-7000c19fb871@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 12:45:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Rework X1-based Asus Zenbook A14's
 displays
To: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250908-zenbook-improvements-v1-0-43ecbbf39c60@vinarskis.com>
 <20250908-zenbook-improvements-v1-2-43ecbbf39c60@vinarskis.com>
 <e54daa39-ffb1-4f0e-82c6-42e45efe5044@oss.qualcomm.com>
 <X5l7eScrcspQe6JfPyx8VCIZXmCmq-VBlAoNmIuAAmwfp1z-yNAG5GyIEnp4ByyPOEfJHEtewC0uOgrc0GiLlaz433Gheubseb-pXH1ZfUw=@vinarskis.com>
 <blMLYZBNCKa8x50Dd-zdFPdx7wZNor45QRJeeqjVautVqCR3aIoVAUrxacXkYNAlrC6p6npHSU_ZMfUDvZzoUzXg_2iiXMJPFmW85P-B3HU=@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <blMLYZBNCKa8x50Dd-zdFPdx7wZNor45QRJeeqjVautVqCR3aIoVAUrxacXkYNAlrC6p6npHSU_ZMfUDvZzoUzXg_2iiXMJPFmW85P-B3HU=@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _plWh63byetALHnVaZ1DNs9f0NueFBdH
X-Proofpoint-GUID: _plWh63byetALHnVaZ1DNs9f0NueFBdH
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d3cbc6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=EUspDBNiAAAA:8
 a=gxl3bz0cAAAA:8 a=ZGzr1XgpPqI01JkrxgEA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=vUPM0Wvl0xcrLs4nqPIT:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX6+0n5S1yN5Ve
 iFEr18RrN6EMowzRgGc3vS0a1/4g09L5p/X2waqjdXOTljUYw5C0aqsxQN1GhpS+oxgKH8foyt7
 OQDwTcWNTRcPixsHgE7OGtVXMWb8D3MDmL9iW6UWdJYpEaQfg9Kv5GaNoS7PK160MiMFPnapSS2
 fkQaVTwySqTa50aWBb31tR+KLgEga73EcN46mD3ep28hMyMl3gZTMRCBQ2Comg+QxDwkMYeQ6Ah
 K+pn6bUVR9HSyQLjODb8doZYRNhWZnDJD+vBJYiiZXB33zdF1DoK8E38foIcIrOEd09jY/WS6yI
 HMBpTjI6hnrBkLctWKPAfz77GZINEOVGqaHzEWv58b13l2pfiq35knlZgYR8dar6tQqowdqAjAG
 KvIdWf3m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On 9/23/25 9:21 PM, Aleksandrs Vinarskis wrote:
> 
> 
> 
> 
> 
> On Friday, September 12th, 2025 at 18:52, Aleksandrs Vinarskis <alex@vinarskis.com> wrote:
> 
>>
>>
>>
>>
>>
>>
>>
>> On Friday, September 12th, 2025 at 12:44, Konrad Dybcio konrad.dybcio@oss.qualcomm.com wrote:
>>
>>> On 9/8/25 8:45 PM, Aleksandrs Vinarskis wrote:
>>>
>>>> The laptop comes in two variants:
>>>>
>>>> * UX3407RA, higher end, FHD+ OLED or WOXGA+ OLED panels
>>>> * UX3407QA, lower end, FHD+ OLED or FHD+ LCD panels
>>>>
>>>> Even though all three panels work with "edp-panel", unfortunately the
>>>> brightness adjustmenet of LCD panel is PWM based, requiring a dedicated
>>>> device-tree. Convert "x1p42100-asus-zenbook-a14.dts" into ".dtsi" to
>>>> allow for this split, introduce new LCD variant. Leave current variant
>>>> without postfix and with the unchanged model name, as some distros
>>>> (eg. Ubuntu) rely on this for automatic device-tree detection during
>>>> kernel installation/upgrade.
>>>>
>>>> As dedicated device-tree is required, update compatibles of OLED
>>>> variants to correct ones. Keep "edp-panel" as fallback, since it is
>>>> enough to make the panels work.
>>>>
>>>> Signed-off-by: Aleksandrs Vinarskis alex@vinarskis.com
>>>> Co-developed-by: Jens Glathe jens.glathe@oldschoolsolutions.biz
>>>> Signed-off-by: Jens Glathe jens.glathe@oldschoolsolutions.biz
>>>> ---
>>>
>>> [...]
>>>
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtsi
>>>> @@ -0,0 +1,141 @@
>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>> +/*
>>>> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
>>>> + * Copyright (c) 2025 Aleksandrs Vinarskis alex@vinarskis.com
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +
>>>> +#include "x1p42100.dtsi"
>>>> +#include "x1-asus-zenbook-a14.dtsi"
>>>> +
>>>> +/delete-node/ &pmc8380_6;
>>>> +/delete-node/ &pmc8380_6_thermal;
>>>> +
>>>> +/ {
>>>> + model = "ASUS Zenbook A14 (UX3407QA)";
>>>
>>> 'model' in .dtsi is 'eeeeh'
>>
>>
>> Followed example of Thinkpad t14s and CRD, as they set it to
>> 'default' in .dtsi, and overwrite in .dts. Could fix it starting
>> with Zenbook here, but in this case probably makes sense to also
>> drop 'model' from higher level 'x1-asus-zenbook-a14.dtsi' as well?
> 
> Hi Konrad,
> 
> Any comments on this?
> 
> Alex

Yes, ultimately model and compatible should be in .dts only

Konrad

