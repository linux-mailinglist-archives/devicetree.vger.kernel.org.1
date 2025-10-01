Return-Path: <devicetree+bounces-223097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C08B2BB0F85
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 17:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 259B0188BECC
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 15:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C2E30ACE4;
	Wed,  1 Oct 2025 15:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zwjp3r5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE15230AACA
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759331036; cv=none; b=eKbJwIUJ8TPScm3b4CcwkCjWDXBiI1S4PedrBkPrpikAE40zElW+K7OOJW5dBucoM2q+G4lRZN46dZHVnfmEqsD0byMcZecKY4sNVen04KVY8ZlU9GWntxHMd7vPjmoGJcpiFf+x4R8dxioCkV0c4zIWYMSF7q6wAoKQVBZJjis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759331036; c=relaxed/simple;
	bh=Ne/1emli/qNR+CSGY/RT6fRMcITyKtKShhbED1YmozE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eUYplmlM/Knwc2QPWgqzy03d//QFNY9bl7tQljjQbpu6gFcZeWJBatJxFQTkULP4xEQP9OwEeBLC7pKffiC4a1X6490Nu7i+pReBSfjCK2z73848fKJ1fXWvNMvDGaMkpmuyOznEabCmd3gXNaAtsa1uL7BtEqaZ6e6LMoLefnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zwjp3r5P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59195bmr016883
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 15:03:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZJfQa+8s08ZkdGhtiYIX3xBNflVlw/lYZrO+tw+/a4M=; b=Zwjp3r5PKA0yInJc
	AWwujlGWsfudP7B/ofYT7pw+8BkB3BxaPYp0PEp/7wMKJz0klyYxgwdab25SQjFU
	C+AXnLlbokpthItSIMSlKycWwx/EFFp4r0aS5SuW3SADMz/cO0c5NxOYUVf9XZWV
	XSEpVaVOvNeTYj0aUDdu4cABCjj9drtoFKHcsn9pLIFmZImB4HaHnY4AnhFClonw
	VvhMMQVom7g1eZZCDEI0xx+sCslXMePJlubtziMLGzcMgTxfarGXz7p5csCmB4Lm
	15dkXtuqDTnEwSE4AUJHH/7d/ZsEfY5VI3IRa1JS+P1IFulyZ7j989N1Hh/iZqls
	8iWyYQ==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hmpuv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:03:53 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-429278a11f7so50188655ab.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759331031; x=1759935831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJfQa+8s08ZkdGhtiYIX3xBNflVlw/lYZrO+tw+/a4M=;
        b=AQqUYLNb79ZJIRawjWFTf1q1VmYXk78x+noNu0OScoGbBfIhZXIOUPqFJ9r7iuC9/c
         YbmFfw6x8KbBZKfMfJuFqFUOD6OP/x7A2NgxE4Qfm4xRxjfGEbYh8DD/WhjcNcvedoSX
         J6EMBqmCuYqhIbL2yekStDvZYfAIOry1TYlIzBIXUp7QfLRLFhjHsH+w/FlIlOKkYGqv
         mFeoWyPScSXppo9NBrYJI7GS4NNMcuIGGBr48JMXtjjbXwb/xkyhP4w6kak65JtoxpOa
         4DpGvkEVU0bf0fXqsJYoX18b9uCCDI5gcEvYN54B84l9kYqKa7KA/8VBLV1EF+5RLNrJ
         IvEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOQYMmwect6wSQAmOTg31d5laqfyqv0Uyk4kWkP2y8Ybu+iQR9xZ1fUuchflHhfgjGouizNpdghtsc@vger.kernel.org
X-Gm-Message-State: AOJu0YwNTQylv5ZFywOkTwu/LCOVeo0qnqFc5qKU0zqm/BaL9jBWrZKx
	Kb16TZW0wKlnKVfRTt+pHENWFCOokTVgorjkSW7CakDUwcpe2U2smQ8FijvmRa6k51equE7Ai15
	g/MtIg7jE2H2cT3dLZwOGol5Y4RHxjDumF/5RpUFN9mLuyTHkX9BsXP8jJB6stoMA
X-Gm-Gg: ASbGncsu8l8YYJkrDxJpHbxPBJ5Ltt25MDNgg6sGnheVFg7yb4lCUUPthZZ9Y6+O993
	E9zr42LHxtu/0UpwMb9lHw9MclAiESPkOa08al0jWPhggZ7irYQEMaV1g/Y+J2fgj6OVWLR/RzV
	ZjjZk/PIBS0rzmTKvJVje/hZ1qBdeEYCqDc8ucq4xfoxE203Dq+dsAQzCvzi9P4zyISDOPTp64G
	b2Ic6DwfdFhw1BuPboIv+bHjCnV51stEQbcNLo3S5Q21Br/NxRCSik6vhuKcbETryfrmxfl5zgw
	Dx8+BHJbkI9UdaVCLEJ2NShQWDSOs7IpO0+48dOdAH588Rd+pZMOVMiSfJmnO04bHYa2JMf6
X-Received: by 2002:a05:6e02:1d8b:b0:42d:7dea:1e04 with SMTP id e9e14a558f8ab-42d81680306mr60426925ab.25.1759331031143;
        Wed, 01 Oct 2025 08:03:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAh/o38qCjV/z7AmcOIL1eFdOOFJR0dPaq1/cxvmmMMiAnwbipvHaISIPwZ6i6ggPYkIYvPQ==
X-Received: by 2002:a05:6e02:1d8b:b0:42d:7dea:1e04 with SMTP id e9e14a558f8ab-42d81680306mr60426075ab.25.1759331030487;
        Wed, 01 Oct 2025 08:03:50 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e611970easm25118405e9.2.2025.10.01.08.03.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 08:03:50 -0700 (PDT)
Message-ID: <b3147370-11da-4202-abac-36218487578f@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 16:03:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <CAL_JsqKG+dcMgp1QF4F3Oxh5Shvagg6cSde=g1JMcEAquZhH_Q@mail.gmail.com>
 <990cb5af-3846-44a3-b373-ded62d3309b9@oss.qualcomm.com>
 <CAL_Jsq+zC91GPdzQQa9F8KEw5UL4xc13u5U_5vTyQG1WeJa5rw@mail.gmail.com>
 <82906e08-9583-4f4c-91ad-d5b53b2dffd6@kernel.org>
 <CAL_JsqLtLbCqzHzcaGAuYwxqr=e9HZFX8X20tndx7US-XjhH3Q@mail.gmail.com>
 <CAL_JsqLcinpeJyib+JG7UFspUqXDTzCLguF3Nt4JJY9YncTb9A@mail.gmail.com>
 <b8c1365a-545d-40ae-a39c-e15a3e1f07e7@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <b8c1365a-545d-40ae-a39c-e15a3e1f07e7@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX7b4fiYOyQ9dV
 pwD/AMio/3rg3S7Ik/C+z3zt1QczxBsCzUh7oX9btTwEBH34oVvOgCry+J2yugMO0qjQ4q7P9wm
 L37fePtCkc8DOcqKwVZClMpohcSsXSGz0zr/jb1k8BaXFibwz/DTbZx4zU/cOcbjh9BBvO2+NlN
 Y/ROTW6A5Yj9V9DR5HYz466YOlpL2we0WnCfWlixjlXz9lw/TZsqQbZzYuYFyudoSVJtO72PklS
 bIPcJ7KAcU8rpPmLig2e7eEScDRhWEuPe268JpMDCfAaESxBLOY2E8WWaUEhehCkt1vvRKyDMNS
 wnGe/e0emYHXtMZb6JF+6OloKJm+Dw6GzW5wul9nymr8+JH8W+Lk4RMBqRu0Cu8P8mmT/oxTXxZ
 2PZwjTamc/+SdZPO25yVi4enVRMeHA==
X-Proofpoint-GUID: pqN8gaR_jBuTEay30yRNo62I4jG4R9N_
X-Proofpoint-ORIG-GUID: pqN8gaR_jBuTEay30yRNo62I4jG4R9N_
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68dd42d9 cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=WCg39QfALH1NCTeANmoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mHQ74H5e8mo-RpSg_uaF:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On 10/1/25 3:21 PM, Srinivas Kandagatla wrote:
> 
> 
> On 10/1/25 3:19 PM, Rob Herring wrote:
>> +Greg
>>
>> On Fri, Sep 19, 2025 at 12:25 PM Rob Herring <robh@kernel.org> wrote:
>>>
>>> On Fri, Sep 5, 2025 at 12:30 AM Srinivas Kandagatla <srini@kernel.org> wrote:
>>>>
>>>>
>>>>
>>>> On 9/5/25 12:08 AM, Rob Herring wrote:
>>>>> On Tue, Aug 19, 2025 at 8:44 AM Srinivas Kandagatla
>>>>> <srinivas.kandagatla@oss.qualcomm.com> wrote:
>>>>>>
>>>>>> Thanks Rob for reporting this,
>>>>>>
>>>>>> On 8/19/25 2:35 PM, Rob Herring wrote:
>>>>>>> On Thu, Jul 24, 2025 at 8:28 AM <srinivas.kandagatla@oss.qualcomm.com> wrote:
>>>>>>>>
>>>>>>>> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>>>>>>>
>>>>>>>> Qcom Slimbus controller driver is totally unused and dead code, there is
>>>>>>>> no point in keeping this driver in the kernel without users.
>>>>>>>>
>>>>>>>> This patch removes the driver along with device tree bindings.
>>>>>>>>
>>>>>>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>  .../bindings/slimbus/qcom,slim.yaml           |  86 --
>>>>>>>>  drivers/slimbus/Kconfig                       |   7 -
>>>>>>>>  drivers/slimbus/Makefile                      |   3 -
>>>>>>>>  drivers/slimbus/qcom-ctrl.c                   | 735 ------------------
>>>>>>>>  4 files changed, 831 deletions(-)
>>>>>>>>  delete mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim.yaml
>>>>>>>>  delete mode 100644 drivers/slimbus/qcom-ctrl.c
>>>>>>>
>>>>>>> This adds warnings to dt_binding_check:
>>>>>>>
>>>>>>> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
>>>>>>> /example-0/soc/slim@28080000: failed to match any schema with
>>>>>>> compatible: ['qcom,apq8064-slim', 'qcom,slim']
>>>>>>
>>>>>> Will replace this example with slim-ngd and fold it in the original patch.
>>>>>
>>>>> Still warning in linux-next...
>>>> Its done now!
>>>
>>> Now I get this:
>>>
>>> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
>>> slim@28080000 (qcom,slim-ngd-v1.5.0): 'audio-codec@1,0' does not match
>>> any of the regexes: '^pinctrl-[0-9]+$', '^slim@[0-9a-f]+$'
>>>         from schema $id:
>>> http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml#
>>> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
>>> slim@28080000 (qcom,slim-ngd-v1.5.0): #address-cells: 1 was expected
>>>         from schema $id:
>>> http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml#
>>> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
>>> slim@28080000 (qcom,slim-ngd-v1.5.0): 'dmas' is a required property
>>>         from schema $id:
>>> http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml#
>>> Documentation/devicetree/bindings/slimbus/slimbus.example.dtb:
>>> slim@28080000 (qcom,slim-ngd-v1.5.0): 'dma-names' is a required
>>> property
>>>         from schema $id:
>>> http://devicetree.org/schemas/slimbus/qcom,slim-ngd.yaml#
>>
>> Still failing in linux-next.

I was running the check against the the yaml file which missed this
warnings, I should have run this against the folder instead which could
have caught this. May be this is something that could be improved in the
check by pulling in the dependency yamls too.


make -j`nproc` dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/slimbus/slimbus.yaml


--srini
> 
> Rob, sorry for delay..
> 
> will send a fix,
> 
> 
> --srini
> 
>>
>> Rob
> 


