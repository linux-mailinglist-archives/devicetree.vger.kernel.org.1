Return-Path: <devicetree+bounces-224578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6536ABC56C3
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 16:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DC1D3A9FF7
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 14:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003DC2E7BB4;
	Wed,  8 Oct 2025 14:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QDp66+LY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384772E92D2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 14:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759933249; cv=none; b=L9ivC5L4dAF6XCGwcXIblMamQIlgpUuIg0A1RiQP7xTBbf3DIA6hWCKsPHx1bWOElG0nYYGxyq4RCNBzpIA2CNi9WynIeLP8d7SYb3DfbZPvEYf04gNHwc+qNdi5enF1ZOLyUEYxZWXWa76DMS3icMnYMslM+OQxyPd33+tIdM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759933249; c=relaxed/simple;
	bh=ogVrD0uTLTGMHdtliGwCwN+ClgfrGrSZ+Dkn7g0gOoc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tuiHLaO06E2uTACW+wKN5CE7+1rC9gYbszflV438DEqe0VbbEmxptSD10YuXI0WGYfqaUljJE2UgNz5QuhNAL1HDfpl7fZO4+QSVeWvJrr4LEUK9kjAjaUVoViuJnwVB+umK/EyeWf5VW/ZO+WtxlPvoOfM044FU1p4wCBfeais=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QDp66+LY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890Or3028852
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 14:20:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lz+mS6MZ/rvjqUHxrGonwzbwHQ0rOQOZyEdg73FnsuY=; b=QDp66+LYc7Ey9J9J
	KfqhiFLBeK+NSDCnP9WmCY/oOwqilBBuhvJGAz28Q4xiNrTVxZYjJY14eAa1l6qN
	QaGkm7jxCkcjBmCNCy/jZa1ZKoBOldXS3/XjkOCesmLMb2pIDnmPNTgbQ84J1lvY
	snV7ku/Fy6FA+YR2AXLUfo8hc2Dv1lWy7WykDF0W94zeGGmfWpvs9tYiGFUzxipk
	v91MK3DQlQrtKi1bszdLF2VdbC5htJc0j1cmbsRgxB5DnMmtX+n0lrv8XIXfoMKz
	If/DJsOL7Y4Iy4z+V80/go/yrVJkAzFK9ToDwTPn1ui9rSmhakgK/ucksBkKMLYu
	C8V9Ow==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e30u8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 14:20:47 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269939bfccbso89782665ad.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 07:20:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759933246; x=1760538046;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lz+mS6MZ/rvjqUHxrGonwzbwHQ0rOQOZyEdg73FnsuY=;
        b=PgozAxkMUqMuYKgxgexquIjyl7ZHnKZSsjXd5cVbGLtBKe5o82xWjzWGnuF5ZMAqhk
         0foBb88ye+XHelVSk8vfPgPM5dIJRnDZeXhiVdFd9JgpT6s6odE2BRXB1X59nPRbeNYI
         ZP5bqtv3NYABTWcttXXT8dMLFxu1CNfhZC2ca/syV8newrc7AoNejt73LPEZAddkh/Oo
         4OIPPox/QLn4ccxMnfMnh1PApCt/KAuXAwn58jiRAVIs9X98rBRU2iX9xBNB+TyM54oP
         IwJj2thyHMq6iUchdUTlaKM7gLnBPrknXxHT5VkB3Nncnsgr/2xK58JOsNtr/tK+G3bn
         jgBA==
X-Forwarded-Encrypted: i=1; AJvYcCV9UoMRHV67DqpgkERgFBD23y9cGMvJL+kMOR7BrP6KEYoxf9/RB8HhDYAISAljR02ZiiVuCL28WoRM@vger.kernel.org
X-Gm-Message-State: AOJu0YySh/wd0fttQdT9jBYOHzd+M4a6dQDdlWZLLq83Ak2/IYfamyeU
	IcQ3wQjBJOQ6/gi9DLZKCwcKdBMYw71ncOAaG4lnenDvd7p33Mccfde6+wA53iHgOY31pifjYZ9
	MbAv78jeEVTzuMQtO/4DT/qyrmBRlCcIPLMo5cJOsYTQ7Zo2vzXqV6FsiiGQIYBW9
X-Gm-Gg: ASbGnct2dQGxEouG4x5oEGLaT5RydF17WnZD4LYo+GhT6RzjAfkrkNVjqyq6QZMduTi
	MxP3aLujESsF98bVnb5Db5PZJYIwBs3imRItXCQF/BHi6B2NTJx90n6V7MwIw94qHDfThkOlaJS
	uSzhizAZwJzsyphbVC9Y/WQwjddnztdXKGfjvbKag/9m80AOO9FGClNoFrj6IecTHkmVEnHanMb
	1OBr952s+jQRu/+5VUzxAX8p7iJvH9ffsVDvKE8WZ1/ZRQrocsGtyqCGwIuMRzxqVTs1F1121Om
	WGIEIhM8y1jmh8L5P2IEBKCzuK/k468uEKfCO2TIlduEWztWvrfBlybGEVKCExah1VeI4FhOMEV
	zXQ==
X-Received: by 2002:a17:903:a8b:b0:265:89c:251b with SMTP id d9443c01a7336-290273ef081mr47036205ad.29.1759933246097;
        Wed, 08 Oct 2025 07:20:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHr9LK963P5BA7uXceHHrVsADE8b2KBpElj7O1ory5mflnm4HtE6Ymq0IImskdB3TNDjo+0PQ==
X-Received: by 2002:a17:903:a8b:b0:265:89c:251b with SMTP id d9443c01a7336-290273ef081mr47035815ad.29.1759933245508;
        Wed, 08 Oct 2025 07:20:45 -0700 (PDT)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d584esm200797495ad.107.2025.10.08.07.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 07:20:43 -0700 (PDT)
Message-ID: <31bd08ce-823a-4a71-baca-a9d1e02fcb6a@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 19:50:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V7 3/5] dt-bindings: iio: adc: Add support for QCOM PMIC5
 Gen3 ADC
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jonathan Cameron <jic23@kernel.org>,
        Krzysztof Kozlowski
 <krzk@kernel.org>, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, agross@kernel.org,
        andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com>
 <20250826083657.4005727-4-jishnu.prakash@oss.qualcomm.com>
 <20250829-classic-dynamic-clam-addbd8@kuoka>
 <5d662148-408f-49e1-a769-2a5d61371cae@oss.qualcomm.com>
 <4e974e77-adfc-49e5-90c8-cf8996ded513@kernel.org>
 <a0e885be-e87d-411a-884e-3e38a0d761e5@oss.qualcomm.com>
 <8c90cc3f-115e-4362-9293-05d9bee24214@linaro.org>
 <5d4edecf-51f3-4d4a-861f-fce419e3a314@oss.qualcomm.com>
 <20250927144757.4d36d5c8@jic23-huawei>
 <a3158843-dfac-4adc-838a-35bb4b0cbea4@oss.qualcomm.com>
 <CAGE=qrrCvq28pr9Y7it-CGMW=szKUnU+XBj1TmpoUwuASM05ig@mail.gmail.com>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <CAGE=qrrCvq28pr9Y7it-CGMW=szKUnU+XBj1TmpoUwuASM05ig@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e6733f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=AgmdEbom9n3Jum9HLqIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: PhLMRozvlAe82Kpqrl9Q6s6W8qLHBVvD
X-Proofpoint-ORIG-GUID: PhLMRozvlAe82Kpqrl9Q6s6W8qLHBVvD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfXwAXjMuyE+gqX
 JBxcKWU1sQSmCgXKvyfu3HrLhnV+PHOJ2y5gu6jpaIzBHR6NKidlHXeoyCDn+5bBKbz770VoR55
 kytUu2eexfdq/lGX+m33QFr9sZxcX//wFj+i4GLKTQxtmcYhDCmDtZUYmde/X9fNTQPHHsga0R2
 JYbk6PJNP1Ehm2SBGrUc1hAxybfDuHCNeZB3SFZ7HXRzAbm/GpqAyiXI6SWA7bWeoRFh0EwKbgY
 x1ng2GH2kfCtU7/0sAYVdKSWcI9U4z8T5XTl2pFuuyQ5zIGFmBEzQickxerGM23SzmnSWBaocjJ
 tyPkCWfOQ/X8dPovYmA84ucRjyOPfXlkFo940XwPpKe7OvhoDMp59NIauwOzaeaX+SJvey4Vp/+
 PMp9ulHKWETM8F7o7VVIz5C3vz+qJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

Hi Krzysztof,

On 10/4/2025 12:22 PM, Krzysztof Kozlowski wrote:
> On Sat, 4 Oct 2025 at 11:42, Jishnu Prakash
> <jishnu.prakash@oss.qualcomm.com> wrote:
>>
>> Hi Jonathan,
>>
>> On 9/27/2025 7:17 PM, Jonathan Cameron wrote:
>>> On Fri, 19 Sep 2025 20:17:43 +0530
>>> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
>>>
>>>> Hi Krzysztof,
>>>>
>>>> On 9/18/2025 5:45 AM, Krzysztof Kozlowski wrote:
>>>>> On 18/09/2025 04:47, Jishnu Prakash wrote:
>>>>>> Hi Krzysztof,
>>>>>>
>>>>>> On 9/17/2025 5:59 AM, Krzysztof Kozlowski wrote:
>>>>>>> On 16/09/2025 16:28, Jishnu Prakash wrote:
>>>>>>>>> You cannot have empty spaces in ID constants. These are abstract
>>>>>>>>> numbers.
>>>>>>>>>
>>>>>>>>> Otherwise please point me to driver using this constant.
>>>>>>>>
>>>>>>>> These constants are for ADC channel numbers, which are fixed in HW.
>>>>>>>>
>>>>>>>> They are used in this driver: drivers/iio/adc/qcom-spmi-adc5-gen3.c,
>>>>>>>> which is added in patch 4 of this series.
>>>>>>>>
>>>>>>>> They can be found in the array named adc5_gen3_chans_pmic[].
>>>>>>>
>>>>>>> Really? So point me to the line there using ADC5_GEN3_VREF_BAT_THERM.
>>>>>>>
>>>>>>
>>>>>> We may not be using all of these channels right now - we can add them
>>>>>> later based on requirements coming up. For now, I'll remove the channels
>>>>>> not used in adc5_gen3_chans_pmic[].
>>>>>
>>>>> You are not implementing the feedback then. Please read it carefully.
>>>>>
>>>>
>>>> Sorry, I misunderstood - so you actually meant I should remove the
>>>> empty spaces in the definitions, like this?
>>>>
>>>> -#define ADC5_GEN3_VREF_BAT_THERM               0x15
>>>> +#define ADC5_GEN3_VREF_BAT_THERM 0x15
>>>>
>>>> I thought this at first, but I somehow doubted this later, as I saw some
>>>> other recently added files with empty spaces in #define lines, like:
>>>>
>>>> include/dt-bindings/iio/adc/mediatek,mt6373-auxadc.h
>>>> include/dt-bindings/regulator/st,stm32mp15-regulator.h
>>>>
>>>> I can make this change, if you prefer this. Please let me know
>>>> if I'm still missing something.
>>>>
>>>> Also please let me know if you want me to remove the unused
>>>> channels - I would prefer to keep them if there's no issue,
>>>> as we might need them later.
>>>>
>>> He is referring to 0x14 and below not being defined values.  So what
>>> do they mean if they turn up in the DT?
>>>
>>
>> Thanks for your clarification. To address your first point above, the macros
>> added here only represent the ADC channel numbers which are supported for
>> ADC5 Gen3 devices. If there are numbers missing in between (like 0x14),
>> that is because there exist no valid ADC channels in HW matching those
>> channel numbers.
>>
>> For your question above, if any of the undefined channels are used in the DT,
>> they should ideally be treated as invalid when parsed in the driver probe and
>> lead to an error. When I checked the code again, I saw we do not have such an
>> explicit check right now, so I will add that in the next patch series.
>>
>> And to be clear on which channel numbers are supported, I think it may be
>> best if, for now, we only add support for the channel numbers referenced in
>> the array adc5_gen3_chans_pmic[] in drivers/iio/adc/qcom-spmi-adc5-gen3.c.
>>
>> There are only 18 channel numbers used in this array and I would remove
>> all channels except for these from the binding files. During parsing, we
>> would use this array to confirm if an ADC channel added in DT is supported.
>>
>> In case we need to add support for any more channels later, we could add
>> their macros in the binding file and update the array correspondingly at
>> that time.
>>
>> Does all this sound fine? Please let me know if you have any more concerns
>> or queries.
> 
> No, it doesn't.  You keep ignoring my arguments and responding to
> something else. I prefer not to store hardware values as bindings,
> because these are not bindings (and you failed to prove which SW
> interface they bind) and it's really not necessary.

In my previous replies in this thread, I missed mentioning that the macros
defined in include/dt-bindings/iio/adc/qcom,spmi-vadc.h are also used in
other places than the driver file - they are also used in the PMIC-specific
binding files added in this patch, for channel definitions. Considering
one channel for example:
 
We have this in include/dt-bindings/iio/adc/qcom,spmi-vadc.h:
+#define ADC5_GEN3_DIE_TEMP			0x03
 
The above is used in include/dt-bindings/iio/adc/qcom,pm8550vx-adc5-gen3.h:
+#define PM8550VS_ADC5_GEN3_DIE_TEMP(sid)			((sid) << 8 | ADC5_GEN3_DIE_TEMP)
 
And the above definition may be used in device tree, like in the example added
in Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml:
 
+        channel@203 {
+          reg = <PM8550VS_ADC5_GEN3_DIE_TEMP(2)>;
+          label = "pm8550vs_c_die_temp";
+          qcom,pre-scaling = <1 1>;
+        };

Referencing the same macros in driver and device tree should also help with
readability and lower the chances of accidental wrong configurations.
Based on this, can we consider ADC5_GEN3_DIE_TEMP is a valid binding and keep
it in place?
 
If not, and if you want the ADC5_GEN3_DIE_TEMP definition removed from bindings,
I can see two ways to do this:
 
1. Keep the PMIC-specific binding definitions, making updates to them like this:
 
-#define PM8550VS_ADC5_GEN3_DIE_TEMP(sid)			((sid) << 8 | ADC5_GEN3_DIE_TEMP)
+#define PM8550VS_ADC5_GEN3_DIE_TEMP(sid)			((sid) << 8 | 0x03)
 
and use the same macros in device tree, like above.
 
2. Drop the PMIC-specific binding definitions completely and update reg property like this:

-          reg = <PM8550VS_ADC5_GEN3_DIE_TEMP(2)>;
+          reg = <0x203>;
 
Which way would you prefer here?

Thanks,
Jishnu




