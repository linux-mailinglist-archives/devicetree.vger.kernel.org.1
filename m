Return-Path: <devicetree+bounces-256698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDE7D3A00B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A2368300096C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B041336EFF;
	Mon, 19 Jan 2026 07:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JtdQcObv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YAN9OGbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBCC33033B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808200; cv=none; b=eXcTLJu0H8qoChwU3VQL9p7qwgmLBu3Nf8U8tSQWszOORATNfSK8Yd6Z+YWr+zCk/vO/pn/lKVlv8hOp2gBdPDYrlcPOziS6jgegRI7czbhEJxe3w89Ukz6silIGS6Q6iW20W34m7ReyC47SV3UWxg8b2hdLK1IpPDvR8eIhwlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808200; c=relaxed/simple;
	bh=rjH9EBJjnsTLG6mQj5j5983rfdayM3mJk1uhIwBlYyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nBTqEVlROE0SdOdny2rZDMiw6sXS/sO3ug7qvqscMYlCl05NfPteEMEzsaWd7rD5CRhsWQc3mjzk3TgyjjsFZlOMeM0bScDqzv7ozkQ+uMCMxDNVnkJQCieU03LQT7Yl/FApMkG7HsFnQT3hz3NZYfCKTrO93rTpW6ZzoNTg2pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JtdQcObv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YAN9OGbs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ILNOB44071393
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:36:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	niXb+Ms2tUibq0tveFSnX+rpPdxCeIikMFq3shCx9m8=; b=JtdQcObv4ZXv2HG7
	m8K+6qpHZFv64b7I4wn1aZ5gFNhWqnndG4ErEKrNt2BTkHAwcuf33nCPT+atiyUi
	aUiVL654zESJdmDJP2oekkugJMZnqkFOnze7mosYaTi51uwpReWDkeZNRhZiv1EJ
	FUOH9TqQ0czrYOTza2lqVcvhKAJchtOVz9prYsdCrJkRGY0/dfFCTxQttf53Jr2v
	GEKd1KF71xktwYAxUR6codMV1yTo0gQE/YUBGeIy9nv0nFREc0s/Rya0SFAsRdHw
	qt4yUuf7z3/rCQsmt+7Vcl8RKsLkJki26gOZFKTrASv3m0rxfQc3efH8OvRb6SVw
	grbJTA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1cqc9b5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:36:38 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2ae32686ed0so6370333eec.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768808197; x=1769412997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=niXb+Ms2tUibq0tveFSnX+rpPdxCeIikMFq3shCx9m8=;
        b=YAN9OGbsdGijDGMQmltjvObcbCtpOSYVBMrU4Amth23MVVxgTEbTjZNmwtDstnGeHC
         +lRdZmB4+sasXLX4u2qXaAoyhgp1xl5BFEvFy/2b/6DUWiJoamPPIvTt8riAJA6koT5U
         3j6cEwBHali2UjCk7DjF+iSOBaV+rLCgrIHtZW882sRLMZqlrfPGv2ZvfKngt9qGW4B9
         bsP2KCUtBWNWQH/FArLIh6c/wdoIu6U3xBUFlDA7qmZRXsA3IXe4eaeR9yUaHJDMmoe/
         Lv0QuVPUxiSW1qXu0zcFINkWMF9mK1SNdCfBV969ygJCWeAl7U3R3ptRyYEFGG7gSCL2
         D/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768808197; x=1769412997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=niXb+Ms2tUibq0tveFSnX+rpPdxCeIikMFq3shCx9m8=;
        b=UoffU1EOMkSjKeyxMNeXMUBvO2+qB5bPZsPWGOh5RyLsYydxALmfsD7NNQq6q+cJ/D
         UbIYMfkSZLqNZrVJl9ipXYfcHsUHNQTQMJw12afLxi1VPYJ1A9g/B9Rc7AUEVp4oOi+G
         Lf1lSNzTTOVhGqFTkJSzfyd04ITCdGF5+s4oc2OyDMCgnId6BYoS2coPzkSxSwfpdx+0
         5x1Te5qXrfXOQOpVPRz9GXSOYfGpEhuP/pyaegsHKbgJma+EeK537RyF+ibF72XDe/+W
         8sow+m5BlmalTnPPDhethMAAabPD8jmEBNepq2+ppgemARsdrdu3zHJWZDD4XVO9FVep
         AA4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVCtoQ+AjSzY6iZ5ZxSDPI2BCgaqV0ulNqavDG3/mgNVF190CCx5mmxnf4R8Uan+kv8cOf4vvHupwER@vger.kernel.org
X-Gm-Message-State: AOJu0YyvPaccoFcW44GX5b/Qg+mRt+cF5X2f/o8OJbEtXrHOxs/33o5M
	Ol5cd4AOObGtJ1T6vhKxuOZVXwd7jr37+S6LCiwvN/lGb6EuEDKK4Sm37ww/9e3oLxxeYEBx0PQ
	+TrA20tuf/5HnYSzkLy/BEZwIXaXwOSLkDlvKPlZfsh5MstG1/QXj+HJ0Htn2E69h
X-Gm-Gg: AY/fxX4L1eTFBBbg8ytQ5FJZ8s4AAwACJdHtiZvyRdZ0RISr4JQb5oTZBOXNMkQ1vjL
	/09bV2Qhone+MDvS61vLcB7QcX6GnP9iQSgPuLXOzx9v/A9/u9O3h29A4Z97a5NhpbgBvH2jdMC
	9I1rvWHD2C6RytZxgfSDroGWJ9juSR+faWeuaGDN3ig7l6YkECOdfgUhitvYRZhzd6/nhXnxK7V
	HeGoitVSHVjC9eyWEHlXM/XDE5v/iRfJGMl7nluxmSpRCMua3XZ+fl7gzCDOebRNkT51o/kI/mY
	C2sObeyKs5D5CMdmENeVm1pHjrLfxFTC2ae6Aop/6q7ifUNGbjzjpumz/18mTFNpQQh2Ia/uDLH
	+RU/oAQ0HqhyItSEL5lgI7l/d/1IPGUBggQ4yo5cuchYTSQ==
X-Received: by 2002:a05:7301:d8f:b0:2ae:5a73:23d6 with SMTP id 5a478bee46e88-2b6b4053d20mr8038995eec.19.1768808197242;
        Sun, 18 Jan 2026 23:36:37 -0800 (PST)
X-Received: by 2002:a05:7301:d8f:b0:2ae:5a73:23d6 with SMTP id 5a478bee46e88-2b6b4053d20mr8038964eec.19.1768808196649;
        Sun, 18 Jan 2026 23:36:36 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3682540sm11721042eec.34.2026.01.18.23.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 23:36:35 -0800 (PST)
Message-ID: <f2a9a7f5-f406-439e-8d86-94e98b2e18e9@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 13:06:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?Q?J=2E_Neusch=C3=A4fer?=
 <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin
 <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com>
 <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
 <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
 <CAHz4bYtYMZQSdw4XKSB06fT2MzZHu=AgdXGrZ73XVXi1sMwyyw@mail.gmail.com>
 <zkvwy56jkya6eogwqlmbhoo64zlzatxsdtkhy4hqfudoqtfbkg@fwiy46l3c337>
 <CAHz4bYuE6LS=+3272x2qat7EyjgVuODC7Otz_f4zP78ZQ=BWDA@mail.gmail.com>
 <53dojwu2xfshqaii3dzmglhjsne75jyf5r6ycerbr32w4v3rlf@umkbjczudotn>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <53dojwu2xfshqaii3dzmglhjsne75jyf5r6ycerbr32w4v3rlf@umkbjczudotn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: iUZvqcXh1-MukikZDoULOS6BCAauaIQx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA2MSBTYWx0ZWRfXyM5ZEIgotuQU
 F05hrvRgYy83L8kdogTl+zikybL/0zWq48C7YzxFYQQTNopEsUN8Pk2z4OZ+c6rupPCkqv77s76
 RvKa8bFcga3mJEh6TZgw4511LIofhfhMAClks22B4ztELa84WS5tZYmXjy26EQHHt1RsivtnNQT
 G6v6wcIv26dJAzA0SXkP4OMgIVnE5kXDDfU7fapyUUCq8Dtp7JQlPGOkmPclTAbbsAH+DcBbzO3
 WmedJ5zckdtK6LlDAltcQD9z2OmYqNMnGZQTtoHTSHYWIeVl81QtsK26TQEI5H/mTzd5Ss+XW/m
 1dQMR3x3aFooFbVePWB1mFkzmTM0Gmz1Y6TCFt/qiswWVcFCAF2j6lkGVB2RNvnn5vfRXPVZHeA
 k2FpFZ9Q1g/OJJc9K1aiv4bN2EIdMtE2ez7cewpMfIjxCYF7+gt+udGFwhLl3V2TE3eL8zOkFtm
 3zAVh3r3a/Y7QijTt2w==
X-Proofpoint-ORIG-GUID: iUZvqcXh1-MukikZDoULOS6BCAauaIQx
X-Authority-Analysis: v=2.4 cv=NfbrFmD4 c=1 sm=1 tr=0 ts=696ddf06 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zYNpofc-SOyKt3YyfrMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190061



On 1/19/2026 12:01 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 19, 2026 at 09:42:03AM +0530, Swati Agarwal wrote:
>> On Wed, Jan 14, 2026 at 11:39 AM Dmitry Baryshkov
>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>
>>> On Wed, Jan 14, 2026 at 11:10:26AM +0530, Swati Agarwal wrote:
>>>> On Tue, Jan 13, 2026 at 4:59 PM Dmitry Baryshkov
>>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>>
>>>>> On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
>>>>>> On Sat, Dec 20, 2025 at 9:47 PM Dmitry Baryshkov
>>>>>> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>>>>>>
>>>>>>> On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
>>>>>>>> Enable secondary USB controller in host mode on lemans EVK Platform.
>>>>>>>>
>>>>>>>> For secondary USB Typec port, there is a genesys USB HUB GL3590 having 4
>>>>>>>> ports sitting in between SOC and HD3SS3220 Type-C port controller and SS
>>>>>>>> lines run from the SoC through the hub to the Port controller. Mark the
>>>>>>>> second USB controller as host only capable.
>>>>>>>>
>>>>>>>> Add HD3SS3220 Type-C port controller along with Type-c connector for
>>>>>>>> controlling vbus supply.
>>>>>>>>
>>>>>>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>>>>>>>> ---

[...]

>>>>>>>> +&usb_1 {
>>>>>>>> +     dr_mode = "host";
>>>>>>>> +
>>>>>>>> +     #address-cells = <1>;
>>>>>>>> +     #size-cells = <0>;
>>>>>>>> +
>>>>>>>> +     status = "okay";
>>>>>>>> +
>>>>>>>> +     usb_hub_2_x: hub@1 {
>>>>>>>> +             compatible = "usb5e3,610";
>>>>>>>> +             reg = <1>;
>>>>>>>> +             peer-hub = <&usb_hub_3_x>;
>>>>>>>> +             #address-cells = <1>;
>>>>>>>> +             #size-cells = <0>;
>>>>>>>> +
>>>>>>>> +             ports {
>>>>>>>> +                     #address-cells = <1>;
>>>>>>>> +                     #size-cells = <0>;
>>>>>>>> +
>>>>>>>> +                     port@1 {
>>>>>>>> +                             reg = <1>;
>>>>>>>> +
>>>>>>>> +                             usb_hub_2_1: endpoint {
>>>>>>>> +                                     remote-endpoint = <&usb1_hs_in>;
>>>>>>>> +                             };
>>>>>>>
>>>>>>> Are all other ports disconnected? If so, why do we need a hub?
>>>>>> Hi Dmitry,
>>>>>> I didn't understand your query, can you give more context to it?
>>>>>
>>>>> You have described one port of the hub. How are other ports routed? Are
>>>>> they connected to outer ports? To some other devices? Unconnected?
>>>> Hi Dmitry,
>>>> I would like to put it this way, USB HUB has 4 ports but only one port
>>>> of the hub is used between SOC and Type-C controller.
>>>> Remaining 3 ports are used by other devices.
>>>
>>> Which devices?
>> Hi Dmitry,
>>
>> For Lemans EVK standalone corekit board, there are 4 ports as follows:-
>>
>> 1) p1 is connected to type c port controller.
>> 2) p4 is used for the m.2 E key (NFA765 Bluetooth) on corekit. This
>> isn't used on a standard core kit, only if we optionally replace the
>> wifi card with the NFA765 which uses USB for BT. standard kits all use
>> UART for BT.
> 
> Nice. Hopefully Mani patches will be landed soon and we can describe
> this one properly.
> 
>>
>> Remaining 2 ports will become functional when the interface plus
>> mezzanine is stacked on top of corekit.
>>
>> 3) p2 is connected to another hub which is present on the mezz through
>> which 4 type-A ports are connected.
>> 4) p3 is used for the m.2 B key for a 5G card when the mezz is connected.
> 
> Please add a comment for these two, e.g. routed to the connector ABCDEF.
> 

Hi Dmitry,

  Thanks for the review. Can we send v4 with the following changes:

  Add 4 ports each to hs and ss hub nodes and link the first port to 
Type-C connector and add comments for the other 3 ports. When M.2 E 
conncetor comes up, we can link the second port to it in a different patch.

  Let me know if the above is reasonable.

Regards,
Krishna,

