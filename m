Return-Path: <devicetree+bounces-242599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 027FDC8CEA6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E0DF54E27EA
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 06:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36858311976;
	Thu, 27 Nov 2025 06:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NoS+ifXH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cgmYtVOL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859630F80C
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764224791; cv=none; b=gEiChcQHSykFZK1LCZfufv7+s7n7nJA32lSXTqGcQFwPWDoXeC2rqoDQmHfS894GaL2MKbLYaOXMyy/ZV8g4dowLjBvoqFD4+ywVKmzMyGfFkn/q5ps0DxVHEzOZpAOINiTbjaKg1zR4XdqJjY0FyPQSklqeXLn7Id+vQ3WRelE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764224791; c=relaxed/simple;
	bh=QZfRN5EL7HcjaNcqCfhqBeD4PYZh7aTpR3OI6puE9gU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eDrkvpl7jBJz3jiDkb+OZoqknI9rWYXd0C3Cr7bbScs3CKhXI5qfVxfwEFCphZigM7gHYfWQ2GzM1ESYRR4wloM5YMVrcvqd+EQ297R4ZUCb8UlRCd89bZDsqSVXdXhOK9YjNwiZ2AwIICxqKXJO1mNSxWSlGMdpKuACwQ35U5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NoS+ifXH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cgmYtVOL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQN3TGF3332137
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:26:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QZfRN5EL7HcjaNcqCfhqBeD4PYZh7aTpR3OI6puE9gU=; b=NoS+ifXHSqZK+kzG
	dKKbcqJlt6wgMK5g4RzGe9KeLPpX63bLkeRYNLXAnse/1RfDYdYN26qgmgRLoHKz
	aHV6yZaDmchLdAFStAq470l72lTnXPnAieuvVMytqKgBuGA5gfHK3LucZqLtjQZq
	d16nEknY3hxn5/U4WGijVdiT2zjc6I3Iowp2+XQ0f+zTZfhaWErn5E1cAHWTHq0x
	eBghblPi+svfDSU335QahmaUSAL65XCTlqw5ZijBe/CdUjcFCgxlUmj0b7NtHhLA
	qS9wDWKQLSzv2X6kTpSjQw+wC3ZNM9Cl6jOeLg2DZPRrk4Vuhg/kNsb1orficqHO
	al3ylg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apavs0we4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:26:27 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a4c4eeeef2so1056644b3a.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 22:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764224787; x=1764829587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QZfRN5EL7HcjaNcqCfhqBeD4PYZh7aTpR3OI6puE9gU=;
        b=cgmYtVOLq5+T+lSiVnxFee3rE+5RAZ8cAQGWvxS35kqAu4AKACVv8G/1TVIZRBLTJI
         1zI8gXKMcQdY1iq8yAJd8P1LuMeL5CFqj3vzPd2IyXZ8RiLnTMK0zjGIfVAjRKXYw8MC
         ipNthn/GL4HHLJ4GxoSnC6W9JRyg8qo4vC75p+BMqZSeNzDH9rNKaONski98OrXZiAYU
         3wm877QKzq7lt9DTSlAwxnnxPL38N+FRYMHdAlvdCsJmbOqQ9ZdEzT9J99jwot4KdhHz
         IeXwwpXzhyH2XKQreZXKFFLXFOKqEF3haHo0xKQ5iAs1RoMEA/PX+IEF1cJ8d9EOsBEa
         8ZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764224787; x=1764829587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QZfRN5EL7HcjaNcqCfhqBeD4PYZh7aTpR3OI6puE9gU=;
        b=v6kJV3g14sxtD9oFeleonhxALwM/D5kE50CVstWexjPt5JBw27sF8IjhNTHLBRyOXN
         F6APfG7zXg/NmN++fySIOdazV7JAFQ8wst6FVCXhXoSGnxqKPZ1z9S9QKm7dtp4AQqS3
         GCoWuJJvIvT79oWUHgLi63AYo3tk3brxT5nXQDZ5Mk6mhzFbJVjwtgBMPwMJTjja78dr
         X/NENBGtinFxyUt25rkAG1eXnayJBZL1j7v5IFVhXxOj898pkkrJECP74klMpfRBoTgS
         eUe5UVCpZncI0SvVbQtJBFgtvGZNE8VvYvHTWJX4UwXMDuBbI0J/1lVr6xn/iqQ57Ebj
         XILA==
X-Forwarded-Encrypted: i=1; AJvYcCVT5R1Fbi2VxCV8SmfYPoYySDZFyYV2dBaZCvoeojZ37BxGM6Q0l4B55UTYFF/ecQ/KbcrYI92k3NsJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxRV6YSnqW2FbI1kf6SXdqOY2rkJ7DQIlSMeB2wODzwRTwwWrAJ
	XvanlXe+InwgCE5ZTr3liZ5/yDVYafwIhUHmygjb7mW/ZdOtme9xLrzsirY3fbsl6DXASaMWOkv
	+z4xoQk6/sn3TZnEtN0ihpj0Y5PZo1txKe/ndqGCaR+i15WxSZn0t077iTtht8z6Z
X-Gm-Gg: ASbGnctoRwdRaCwwD0swQHX5iorW5FXGzu99trkBwNbOLBVcPb2t99FwPgdv3w+sk+T
	lu766PuT1Zqsy8c0JxyEADRJVbzneCZMzzRpvtd4KQjMEpvSO8CniyHZQx8JHqDVauglDf9+X44
	vi5tzdozFYvYSpCn3nSMOaDbmf8GLNjYiczFHfL4XtXWJcyug7ehnWp5AoEllAsreSccbM9NGOE
	a9alFdKk0K6y8dl/Am+/crraGqas6+cnK9QIea6lzrZ+jzFq3+5cMP7D/mxOIsyOtAiRvZjQzA/
	ZXM8ExeYcPsSQKmV57CzyNL9LXun32Dwf1zJedaNRsLdlAPysbA6Fb0Qo0NvhGLMVeOsFiU2ELs
	P3VgW5w9jPcKHd/oPjCPYNJuqhe/ZWxsRS7JYj8n7
X-Received: by 2002:a05:6a20:19a2:b0:33f:df99:11d6 with SMTP id adf61e73a8af0-3637db29755mr8355488637.10.1764224786323;
        Wed, 26 Nov 2025 22:26:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2U8pgYyv6GZs6z45zcClYAJnelJyY70thdkG1EnwouwQ2XTtUci8EGM2vHF32igx/AajgEA==
X-Received: by 2002:a05:6a20:19a2:b0:33f:df99:11d6 with SMTP id adf61e73a8af0-3637db29755mr8355460637.10.1764224785788;
        Wed, 26 Nov 2025 22:26:25 -0800 (PST)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-be4fbb0094dsm778971a12.10.2025.11.26.22.26.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 22:26:25 -0800 (PST)
Message-ID: <bd19c2c7-7daa-4f19-b75b-d7de40113f8c@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 11:56:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
References: <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
 <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
 <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
 <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
 <24221ce7-24e4-4eaa-8681-ed9b4b9f2d6e@oss.qualcomm.com>
 <be4e2715-882d-4358-8575-374187f7ee2f@oss.qualcomm.com>
 <2h222ejvc37cldeno7e4qom5tnvdblqn2zypuquvadbcu7d3pr@765qomrwfvwl>
 <515191cf-a8b8-4487-989b-4c1736a67b2c@mainlining.org>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <515191cf-a8b8-4487-989b-4c1736a67b2c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: eeOC7LyuV_0H7itghGFQZ4-dP7bQgwFr
X-Authority-Analysis: v=2.4 cv=PYPyRyhd c=1 sm=1 tr=0 ts=6927ef13 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=D19gQVrFAAAA:8 a=OuZLqq7tAAAA:8
 a=m0NxkttUS1RG61Hf8JMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=W4TVW4IDbPiebHqcZpNg:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA0OCBTYWx0ZWRfX4NOK0b9zMLlp
 SaBGYKN6wTRfI9KDTMcnRXBYBE17R65H9QIag755V89S2aB+ZV/lG1N6YDO31wV3MF3mehMCj42
 PtaMdkLwz++ooq5d1PRL5dk9WMKLJsjYm9PHFyl2kz13eHRyhZrQWaAc98R12iHM8hYSPp/w8vU
 V9ayKCMtizq6bTkwp1fMVqiJcdz/t3G3QGD0fBezs3ogXW7kxyeXdqYLCr24nFeODFO4RnoqaTJ
 2O4iNwtIacms0eHKVMlmMg7Y1yYscO35M4KSNbKTIkJqNi1gXJPZScRwxcG8bkGDUUOHs4C/MBe
 yI2hIQ5zD80qti9pr/cQ7B05PZUgPf5fc2bm9+7IHPEtkAJ9RWg9xiO3YP0SUu+HPM7mnI7DDY9
 CmVyeSmRPYc53s5PNaK3Pa7NUmG93g==
X-Proofpoint-GUID: eeOC7LyuV_0H7itghGFQZ4-dP7bQgwFr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270048



On 11/26/2025 7:30 PM, Nickolay Goppen wrote:
>
> 21.11.2025 15:09, Dmitry Baryshkov пишет:
>> On Fri, Nov 21, 2025 at 01:41:21PM +0530, Ekansh Gupta wrote:
>>>
>>> On 11/20/2025 5:17 PM, Konrad Dybcio wrote:
>>>> On 11/20/25 11:54 AM, Ekansh Gupta wrote:
>>>>> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>>>>>> 20.11.2025 07:55, Ekansh Gupta пишет:
>>>>>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>>>>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>>>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>>>>>>     * add shared memory p2p nodes for CDSP
>>>>>>>>>>>>>>>     * add CDSP-specific smmu node
>>>>>>>>>>>>>>>     * add CDSP peripheral image loader node
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>>>>>>> ---
>>>>>>>>>>>>>> [...]
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> +            label = "turing";
>>>>>>>>>>>>>> "cdsp"
>>>>>>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>>>>>>> +
>>>>>>>>>>>>>>> +            fastrpc {
>>>>>>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>>>>>>> +                qcom,non-secure-domain;
>>>>>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>>>>>>> created for CDSP
>>>>>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>>>>>>> Is this property not neccessary anymore?
>>>>>>>>>>> +Srini?
>>>>>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>>>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>>>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>>>>>>> it gets caught during dtb checks.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>>>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>>>>>>> compatiblity for such users.
>>>>>>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>>>>>>> the driver behavior was previously such that unsigned modules were
>>>>>>>>> allowed (which was presumably fine on devboards, but not on fused
>>>>>>>>> devices)?
>>>>>>>> Yes, its true that we allowed full access to adsp device nodes when we
>>>>>>>> first started upstreaming fastrpc driver.
>>>>>>>>
>>>>>>>> irrespective of the board only signed modules are supported on the ADSP.
>>>>>>>> I think there was one version of SoC i think 8016 or some older one
>>>>>>>> which had adsp with hvx which can load unsigned modules for compute
>>>>>>>> usecase only.
>>>>>>>>
>>>>>>>> I have added @Ekansh for more clarity.
>>>>>>>>
>>>>>>>> --srini
>>>>>>> For all the available platforms, ADSP supports only signed modules. Unsigned
>>>>>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>>>>>>
>>>>>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>>>>>>> The implications of adding this property would be the following:
>>>>>>> on ADSP, SDSP, MDSP:
>>>>>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>>>>>>> - Non-secure device node can be used for signed DSP PD offload.
>>>>>>>
>>>>>>> on CDSP, GDSP:
>>>>>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>>>>>>     are created, regardless of this property.
>>>>>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>>>>>>
>>>>>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>>>>>>> be used for signed PD offload, if non-secure device is used, the request gets
>>>>>>> rejected[1].
>>>>>>>
>>>>>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>>>>>>
>>>>>>> //Ekansh
>>>>>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes?
>>>>> I checked again and found that unsigned module support for CDSP is
>>>>> not available on this platform. Given this, the safest approach would
>>>>> be to add the property for both ADSP and CDSP, ensuring that all
>>>>> created device nodes can be used for signed PD offload. I can provide
>>>> The property allows *unsigned* PD offload though
>>> I don't think I can directly relate this property to unsigned PD offload. This is just
>>> defining what type of device node will be created and whether the channel is secure
>>> or not. There is a possibility of making unsigned PD request(on CDSP/GDSP) irrespective
>>> of whether this property is added or not. If DSP does not support unsigned offload, it
>>> should return failures for such requests.
>> Which part of the hardware and/or firmware interface does it define? If
>> it simply declared Linux behaviour, it is incorrect and probably should
>> be dropped.
>>
> When I've removed the qcom,non-secure-domain property from cdsp and tried to run hexagonrpcd via this command:
>
> sudo -u fastrpc hexagonrpcd -f /dev/fastrpc-cdsp  -R /usr/share/qcom/sdm660/Xiaomi/clover/ -d cdsp -c /usr/share/qcom/sdm660/Xiaomi/clover/dsp/cdsp/fastrpc_shell_3
>
> It raised the following error:
>
> qcom,fastrpc 1a300000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: Error: Untrusted application trying to offload to signed PD 
This is expected. With the property absent, Signed offload is only allowed with /dev/fastrpc-cdsp-secure.

>
>
>
>>>>> a more definitive recommendation once I know the specific use cases
>>>>> you plan to run.
>>>> Why would the usecase affect this?
>>> I'm saying this as per past discussions where some application was relying on non-secure
>>> device node on some old platform(on postmarketOS)[1] and having this property in place.
>>> So if similar usecase is being enabled here, the property might be required[1].
>> DT files are not usecase-based.
>>
>>> [1] https://lkml.org/lkml/2024/8/15/117
>


