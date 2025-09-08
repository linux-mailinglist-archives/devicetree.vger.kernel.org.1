Return-Path: <devicetree+bounces-214187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 38800B48592
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1D5C1B21077
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0770D2EDD52;
	Mon,  8 Sep 2025 07:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oqUr7NDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F832ED844
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757317007; cv=none; b=pLVC93zuUJxmr4PdxoRil4lZY15aFNP3kjqF6hEn98fCci+XO6r27PD0uaFKWkrFR2V2d3bWYIncOgD8bq5kkfJ1tdRpbjCg6Bi7fc1tnptJJv7RIheCV7qI/WNt5HyDViln6Wm0CQP327/4wpYiQrcdLmflU7YhDZOv40Ln09Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757317007; c=relaxed/simple;
	bh=zXHMUEdWc0BlUDHaEPySSzugxui2LIQJINaYGqG6S28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jsyji9jwSwK93dEOLjdFN/te5HnPzLgnpY725vfKvGDpdU9I5wsVN321+Tsh0/ZEA6xhGaJ4VorJpnVR+1HxyUZyjTOqPN7hROihlhWc2UGMd1P3xOrj/6vSZDClhVW1mpbmylJ7KheFRewOwSIwrvsfLIMNVKD0Gvkka61UBzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oqUr7NDg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587NR1VH014735
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 07:36:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QNHN7kPRAWt4JfWXRnbbHXUE90qzcsGnkDRXHKAjBCg=; b=oqUr7NDgdpeIBem0
	aVox1B+2FjDGu1UOiC+yVMM1C7o+lWzGABi2XQTC6PuSwD1aa2x84C/Up62MXDgr
	84rDBjaseTB2FQmtL/pQZ4Etmaeum3x6jPtyIdbZnuDBZEnSSzTbbulP6R1BhBtw
	wanMFBO495a7SYeTSOUdp4N55V5C9eXS6Ey8VxvFoNVlTkmTb+8Aqss7G8fg9i7T
	o/98QkYuf0veFhKAcVDsQ3qNubCwoAbDG+pYXqh+PKjhg4E5JqK7S39sy7fQ8y3L
	xrS7OIB+9K/2IzmKuRLpDdSIXe0WN9CxSoPjSiXvL4uS7YOZaa4YimVzrR8yC/up
	raSUUQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfuk6x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 07:36:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so9101581cf.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 00:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757317004; x=1757921804;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNHN7kPRAWt4JfWXRnbbHXUE90qzcsGnkDRXHKAjBCg=;
        b=iz0jOqernbOFBRqghbD6AXf7fs/lFDCIXhLUrAmcBmsH4flKNc1sEsjg7xHgasiAvk
         s73OjTMIPzH0UvLWD38oS943afafLzCMxUwepSVlU6h3r3UTi7DEC4RlyPN8EuZIN/yQ
         pVKgJNeXDY+qvU/ZLZ8EOmh2tVAKwdDvfRbcQy6ZkgREFj5cLcDNGhDYqMyAII9Wza5O
         AgxB5VJ0sCwQxcuy5YMYLKam600lcSSwah89LmXuZ7gly1qWptKOcINk0Cb31YNiLdTV
         NctPjt8AegdJLxZ/ZsY1MycKVCorDhStobBmx4qVkv+zRCZuDYLU1FMovyvfp2IGv9lC
         cP3g==
X-Forwarded-Encrypted: i=1; AJvYcCVaGdCp7LAfx+1xx6J3YKM3zAVypMGR42V434RzkyIecBEqGf3MIvc5i0wmVKS0iQr10IfGK5fFHOtz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/uGoJJziwIsRym3aXpdxnkMjeRH6s+2eaaQbGIW5jq+vBKKxI
	Yb5IkdGEiy3K3wxKqDF8T5CCyUEYdvT0CSj9ylog7LRrxvt6KnHxWsVegraa3mdo/qzQmsua2Lz
	iKaqPfBmGOpa6K/eKiFMhxFtKUfZuIQk/IiV87iRMbL18WWL8CS18IEgoOXYZv1ge
X-Gm-Gg: ASbGnctuG0Do1mU0ZApd5zpfua/jDQ4r9j6ZEtmLJjczfVn9itreUzar55G6jBMHJs7
	NoUqrDN+e4RkFliyaUFVPir3x75CD57Kp7klxP+E1+gIZDVZSJrCYSoCXfLDEUJECcwMvHevz8K
	mTdqhdB7HG3SN570EQ2uXcC08V9M+CrCq1wmTzVfDR4jw3oGzdlJwsOBeMvJh0QtWqw/yIwdkBV
	kYCa3Gu+4A6sbO64Y12tiraCp9FKQmRyAbxLQ0iqmLXAnSlmqzfdmI+SBz6unoyN0L2T6Lc8QrB
	XpLe5dQdkwQXyiEh2gKTHaaRjP6rP2ozQ/SdGO9LpytC3bFr23Ct0quFCZX6n1S1uxt63tLNIou
	24t749QSd05d9NjR99pnlUA==
X-Received: by 2002:a05:622a:1787:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b5f848d05bmr48274311cf.7.1757317003673;
        Mon, 08 Sep 2025 00:36:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElIxN4NWUvxQroVKmxTi8+UW7BRi0pLtgjjPwqySqL6k7dbcrx49kS4O8YknoB23Bc/E9voA==
X-Received: by 2002:a05:622a:1787:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b5f848d05bmr48273961cf.7.1757317002960;
        Mon, 08 Sep 2025 00:36:42 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0484e8a4a1sm1001949866b.83.2025.09.08.00.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:36:42 -0700 (PDT)
Message-ID: <39b955b9-a152-458a-8e09-908efebaaccd@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 09:36:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] dt-bindings: leds: commonize leds property
To: Hans de Goede <hansg@kernel.org>,
        Aleksandrs Vinarskis <alex@vinarskis.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Jean-Jacques Hiblot <jjhiblot@traphandler.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus
 <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250908-leds-v3-0-5944dc400668@vinarskis.com>
 <20250908-leds-v3-2-5944dc400668@vinarskis.com>
 <0e030e7d-0a1a-4a00-ba18-ed26107d07fa@oss.qualcomm.com>
 <046b289d-b6a5-45f9-88b1-090e2ab7c95d@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <046b289d-b6a5-45f9-88b1-090e2ab7c95d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vkFu2gBK6AW6PVY6MFODtOuCcXTG4hCS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX0O/Nm1wuRmE0
 HUEcmOdB8O47J8dugc23FLziFxJg0EPj+akMTowrNYFLTFqN8Rco9A9+8zdrGfU/ss+EveZ5mHE
 HVZ28qJHDxk0V8RemHYozvJHqvCkIhT4czp6l8257PCfxP9D0MsXHyNx3S5OeGi+l+8NDBVUaYX
 /4L9S6ZAZLW/xk1qAKKCgEyWzn9iTTOC9cN1dXxDg/GI1snPRK+QH4mt/boiejm5PQDGubE2Psv
 Pn3ML2aTxM0KXFUoVMDFYV6UIXp6IpEjMjqT2mOOREsbnL84BMqO5R5hkBgt9RnCq4hsrAVV2xs
 ku9OjdT8Lv9HxGRlrOBynUjGt7pgMd+8wyBhvfl2vp/LAgfUcE5VGbREZ40PqZnbRY3csgwMrd9
 NWz+K/Ku
X-Proofpoint-GUID: vkFu2gBK6AW6PVY6MFODtOuCcXTG4hCS
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68be878d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=wJ-R-PlTzkls_HvLT0IA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/8/25 9:33 AM, Hans de Goede wrote:
> Hi,
> 
> On 8-Sep-25 09:20, Konrad Dybcio wrote:
>> On 9/8/25 1:18 AM, Aleksandrs Vinarskis wrote:
>>> A number of existing schemas use 'leds' property to provide
>>> phandle-array of LED(s) to the consumer. Additionally, with the
>>> upcoming privacy-led support in device-tree, v4l2 subnode could be a
>>> LED consumer, meaning that all camera sensors should support 'leds'
>>> and 'led-names' property via common 'video-interface-devices.yaml'.
>>>
>>> To avoid dublication, commonize 'leds' property from existing schemas
>>> to newly introduced 'led-consumer.yaml'.
>>>
>>> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
>>> ---
>>
>> [...]
>>
>>>  
>>> +  leds:
>>> +    minItems: 1
>>> +    maxItems: 1
>>
>> My brain compiler suggests this will throw a warning (minItems should
>> be redundant in this case)
>>> +
>>> +  led-names:
>>> +    enum:
>>> +      - privacy-led
>>
>> Nit: "privacy" makes more sense without the suffix, as we inherently
>> know this is supposed to be an LED
> 
> Note "privacy-led" as name is already used on the x86/ACPI side and
> the code consuming this will be shared.
> 
> With that said if there is a strong preference for going with just
> "privacy" the x86 side can be adjusted since the provider-info is
> generated through a LED lookup table on the x86/ACPI side. So we can
> just modify both the lookup table generation as well as the already
> existing led_get(dev, "privacy-led") call to use just "privacy"
> without problems.

In that case, it may be cleaner to just go with what we have today
(unless the dt maintainers have stronger opinions)

Konrad

