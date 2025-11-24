Return-Path: <devicetree+bounces-241716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 15141C815E0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9EF77347D8E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 15:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62EA331355A;
	Mon, 24 Nov 2025 15:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ASyJtzs7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z2K+9K0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865F630B52C
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763998167; cv=none; b=rqscgaSD7N9bkRUjP98wurbZ8691Q3Xw0HJHhLcs8p4uMxE1o/2Hu+ZVYt78jEzr2szdxK8VOhY1lClTfXKV+3Enc9j3HYIZ3BaetNdM85Jx7WL64UICXmJuce7yCgaKzB6SWru78E+u2xgo84oBtjYd+/Hua6rWzXY5uR8/TGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763998167; c=relaxed/simple;
	bh=yj67WpdXgPciMv5YliCxD6tmkBa2cp1eaItRVjmfVTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TCu2EOnhaE39WRkY9nftHeCWrgE+PYIJpeOvwiJQJQvg/1NsGT7zUqEOe2ofKvrQnLcWV4N138LnJJ3/o1bGjGi757Wf87VqRNDNTzrP/JOYLihICXIzu7K/X6M/6ILs0z/yLR2PHT5MukioIynfezeenUJaPLl8XPrs7Jsur30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ASyJtzs7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z2K+9K0H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8U92g2282482
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yj67WpdXgPciMv5YliCxD6tmkBa2cp1eaItRVjmfVTI=; b=ASyJtzs7QCJAJq0y
	yl1J0mwJzXj1AjNKKXUMqFG6H67llGh4Od3QweM0oRUYOuXn7G+yOBRE7Toxqj9K
	Z/J6nbhJ4kBMCBnrd9gVmQ9IB5sGqyEweypmGacIZtg8DRbtHl2lMkMGYPwSH0SI
	NTgIZ0tlowZOfyiW9mtHCafo6wg0spBuxkefTQrwCvUyjJI7i8mRZywxe7vb5Xu8
	aMrJ6ovGqVaRMg1v11efSX66CLdSk8OT0CEYVtzsrfWcgVeG77PN6QnTSSXA/g0c
	WS66URjf2izU++Fw/02799sY4Yxfv4CzWrcQA7mI9nihL43TeGH6nWxA1vBXwizj
	TNxoqg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dwern-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:29:25 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295592eb5dbso98924185ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763998164; x=1764602964; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yj67WpdXgPciMv5YliCxD6tmkBa2cp1eaItRVjmfVTI=;
        b=Z2K+9K0Htn7Sdcqsadr02wrYO9vZfWB3I/brjsYKkZpOrUE9wdEDs9clh/+LamYnnH
         n3MgXNwiNuyZNXC5uCImLFTIIs4EHXcXE0Z73fs5i1Z6xO4Co+qjfHMGSBkG8i+Zj8sd
         wjUObl4d3hyOPplrUnuoRAD2iEF+hKuLdFm+FjXGIXN2pyIVrFZcOYSu4nfX6Mke3BbD
         ezlnfFbdxxmEkraBiQEAzeC9p0isZhwQKf0uyMCRfVaiRvuIUSOJtneKax7q4JAJqUjv
         2xZYHsYLlYQRu4YIsrfiZ/3icHJ63Gi24ObZLRxBYp2poGM7esXdW6JF3p54kMeLCfA0
         C/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763998164; x=1764602964;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yj67WpdXgPciMv5YliCxD6tmkBa2cp1eaItRVjmfVTI=;
        b=R3KWvIOIq98tjPfxny5I05xxfVyRmsF2V6f5sFL8kGg8yoSayS0F7jvZ9gxOPAkSqu
         JAzq5lshrf7AB9cP+S4twl+qtWAfgVLAjL0L5j9SNQIQ/Lg9Md0o2dXoCiSNIlW2uLby
         HuY8T03FWtx/cqSMG3E5nDLuCGJNu19lUzf8q7GnmF+UcazNSv8LOPavBQG4d8kCNmaV
         tHhPm6XpctuuqLPxpd9XhRurqvHFD/QBEp65EaXTjQ8fue5n7I/sTF4RjIbxmxatH+XO
         sJYX9Nvy45uHjpkeuiSJkqE0zcirlQF6p2aGKcAhMTQHDa/qVGzGH/HQ+E6Lwao1PR67
         Da+Q==
X-Forwarded-Encrypted: i=1; AJvYcCW25abVzLZHlxYt9nVY3ybBjAyzFWgGsz/++8RSaNvhdtIU89pgswn1yFf2/50iQO7tzjXHDCrA0xFl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp5uZcIeOe/RLwiDNsyndXsZ52uWIAdtvPzhHLFvlJh0wpaQAd
	dASQAOT8dZS2VUJZwLLMtvtQmtY2wVHMK08Rw+l2Qfw3FkCKw+QqrBywIe+wVMzCHi/Qb9HfV3j
	hkXyYQr/zSvIWeEo/bdFw1l3U1qtsnOaUxTh81HbuPpOhpayP3rVZf+de/MRxgsr1+WRgkq4j
X-Gm-Gg: ASbGncuTSahOPYF5ynT0m6j0lKBNhPqmLljIYoleJD+2FqrrSsP/88HnfYthVg3yvfc
	Z2uhH7PMmDctl5QBqfqKH01hOomrinSmu/sowKHBoEowyYO9B4cfE4YCikX4rokqUMEwlYbQKtc
	EKWNsEGylVby6QGDwF2Fa36MQRNgvWM12jioZcRoorXf6bMQKDDZZaPHHFfrJG7/Ma4Ajv8A8x1
	h6o6p6fcyqxYn6DBNWXfcF3E+LyFFCeFaAjDvI67KeyGt/uDYMFQTnX/DGWrwbfx1WhPHaCoa45
	EiZ957a3Sf55AufB8Mgn4jZ2tzlxfDBbZEAt7M6D2DwS5KaNLaPGURFNppb24Lwfv107vb9Jyc3
	8hX7ipaMlrGe8Nt5LpBt1FB8opWy9a1vf4VtJhh4=
X-Received: by 2002:a17:902:ce11:b0:298:49db:a9c5 with SMTP id d9443c01a7336-29b6c692349mr111544285ad.43.1763998164040;
        Mon, 24 Nov 2025 07:29:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFngXtSvzh8HbFmiaCMIUXyTtgCimz8ylmbbhZEYrDLV3jcaGA57eyBNwvauRkqSP27EtODDA==
X-Received: by 2002:a17:902:ce11:b0:298:49db:a9c5 with SMTP id d9443c01a7336-29b6c692349mr111544025ad.43.1763998163491;
        Mon, 24 Nov 2025 07:29:23 -0800 (PST)
Received: from [192.168.1.9] ([171.61.230.171])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b111650sm136021045ad.8.2025.11.24.07.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 07:29:22 -0800 (PST)
Message-ID: <51e5945d-e800-4f97-8e2e-f97f61b76fc8@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 20:59:17 +0530
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
 <f0c41563-dcd1-4cf9-8b73-fb9fedd52710@mainlining.org>
 <bacb6293-a4e3-4d23-8a1f-cf42f221ba4b@mainlining.org>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <bacb6293-a4e3-4d23-8a1f-cf42f221ba4b@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: krxnCRvzXZxb6nMbdQS3ezR9Z4oomMuE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEzNSBTYWx0ZWRfX13i5z6u9fBbR
 NMcRZa0yTis/Dv6QzcQI7f4KLjwYkLepGpQfOYYXoasHGEN498LmUSJaKEbhKKbotvgQiBvZpb8
 v1RopRWViYTzz7ind9Q/xmOpBjo1B+k+Nrn3A8GD0qSASPTPPsqHxbFyiYUD+96lnKr21XkZHkt
 K5qmydnXuluKIdNHf4neYXiEfvYnhSopCJf8ufjEOuHmU3J1EF+dzIOfx9iN0ivvBhKvfS8DeBk
 /p6NBxIS53eXpNDe7cRmDrUsp5Q6xU2R1ihVhVn4p+c/tfytMNhRZRnVox8ATqUsDtPk3OPeHgV
 9k4/glozkxleKMLlAKYNQ3T05qQuSTE8UI6KVhugQ==
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692479d5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=/vSWnVNeU9WElhN9+xZJOg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=D19gQVrFAAAA:8 a=OuZLqq7tAAAA:8
 a=0-YTveZDaAQcLkN9Q34A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=W4TVW4IDbPiebHqcZpNg:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: krxnCRvzXZxb6nMbdQS3ezR9Z4oomMuE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_06,2025-11-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511240135



On 11/24/2025 8:32 PM, Nickolay Goppen wrote:
>
> 23.11.2025 13:51, Nickolay Goppen пишет:
>>
>> 21.11.2025 15:09, Dmitry Baryshkov пишет:
>>> On Fri, Nov 21, 2025 at 01:41:21PM +0530, Ekansh Gupta wrote:
>>>>
>>>> On 11/20/2025 5:17 PM, Konrad Dybcio wrote:
>>>>> On 11/20/25 11:54 AM, Ekansh Gupta wrote:
>>>>>> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>>>>>>> 20.11.2025 07:55, Ekansh Gupta пишет:
>>>>>>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>>>>>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>>>>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>>>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>>>>>>>     * add shared memory p2p nodes for CDSP
>>>>>>>>>>>>>>>>     * add CDSP-specific smmu node
>>>>>>>>>>>>>>>>     * add CDSP peripheral image loader node
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>>>>>>>> ---
>>>>>>>>>>>>>>> [...]
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> + label = "turing";
>>>>>>>>>>>>>>> "cdsp"
>>>>>>>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>>>>>>>> + mboxes = <&apcs_glb 29>;
>>>>>>>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>>>>>>>> +
>>>>>>>>>>>>>>>> +            fastrpc {
>>>>>>>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>>>>>>>> + qcom,non-secure-domain;
>>>>>>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>>>>>>>> created for CDSP
>>>>>>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>>>>>>>> Is this property not neccessary anymore?
>>>>>>>>>>>> +Srini?
>>>>>>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>>>>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>>>>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>>>>>>>> it gets caught during dtb checks.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>>>>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>>>>>>>> compatiblity for such users.
>>>>>>>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>>>>>>>> the driver behavior was previously such that unsigned modules were
>>>>>>>>>> allowed (which was presumably fine on devboards, but not on fused
>>>>>>>>>> devices)?
>>>>>>>>> Yes, its true that we allowed full access to adsp device nodes when we
>>>>>>>>> first started upstreaming fastrpc driver.
>>>>>>>>>
>>>>>>>>> irrespective of the board only signed modules are supported on the ADSP.
>>>>>>>>> I think there was one version of SoC i think 8016 or some older one
>>>>>>>>> which had adsp with hvx which can load unsigned modules for compute
>>>>>>>>> usecase only.
>>>>>>>>>
>>>>>>>>> I have added @Ekansh for more clarity.
>>>>>>>>>
>>>>>>>>> --srini
>>>>>>>> For all the available platforms, ADSP supports only signed modules. Unsigned
>>>>>>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>>>>>>>
>>>>>>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>>>>>>>> The implications of adding this property would be the following:
>>>>>>>> on ADSP, SDSP, MDSP:
>>>>>>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>>>>>>>> - Non-secure device node can be used for signed DSP PD offload.
>>>>>>>>
>>>>>>>> on CDSP, GDSP:
>>>>>>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>>>>>>>     are created, regardless of this property.
>>>>>>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>>>>>>>
>>>>>>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>>>>>>>> be used for signed PD offload, if non-secure device is used, the request gets
>>>>>>>> rejected[1].
>>>>>>>>
>>>>>>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>>>>>>>
>>>>>>>> //Ekansh
>>>>>>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes?
>>>>>> I checked again and found that unsigned module support for CDSP is
>>>>>> not available on this platform. Given this, the safest approach would
>>>>>> be to add the property for both ADSP and CDSP, ensuring that all
>>>>>> created device nodes can be used for signed PD offload. I can provide
>>>>> The property allows *unsigned* PD offload though
>>>> I don't think I can directly relate this property to unsigned PD offload. This is just
>>>> defining what type of device node will be created and whether the channel is secure
>>>> or not. There is a possibility of making unsigned PD request(on CDSP/GDSP) irrespective
>>>> of whether this property is added or not. If DSP does not support unsigned offload, it
>>>> should return failures for such requests.
>>> Which part of the hardware and/or firmware interface does it define? If
>>> it simply declared Linux behaviour, it is incorrect and probably should
>>> be dropped.
>> I still don't understand, do I need this property or not?
>
> I've began testing the FastRPC on CDSP and the command
>
> sudo fastrpc_test -d 3 -U 1 -t linux -a v68
> has caused the following errors:
>
> [   60.810545] arm-smmu 5180000.iommu: Unhandled context fault: fsr=0x402, iova=0xfffff000, fsynr=0x1, cbfrsynra=0x6, cb=3
> [   60.810588] arm-smmu 5180000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x6
> [   60.810603] arm-smmu 5180000.iommu: FSYNR0 = 00000001 [S1CBNDX=0 PLVL=1]
> [   60.815657] qcom_q6v5_pas 1a300000.remoteproc: fatal error received: :0:EX:kernel:0:frpck_0_0:77:PC=c0117de0
> [   60.815684] remoteproc remoteproc2: crash detected in cdsp: type fatal error
> [   60.815738] remoteproc remoteproc2: handling crash #1 in cdsp
> [   60.815754] remoteproc remoteproc2: recovering cdsp
> [   60.819267] (NULL device *): Error: dsp information is incorrect err: -32 
Are you trying out only calculator or all the libs? If yes, can you please
help with creating an issue in the above mentioned github project?

On older platforms, I would suggest to only try with calculator as other
libs are not stable.

We are getting a better version of other test libs signed and will update
the project with new libs post signing.

//Ekansh

>
>
>>>>>> a more definitive recommendation once I know the specific use cases
>>>>>> you plan to run.
>>>>> Why would the usecase affect this?
>>>> I'm saying this as per past discussions where some application was relying on non-secure
>>>> device node on some old platform(on postmarketOS)[1] and having this property in place.
>>>> So if similar usecase is being enabled here, the property might be required[1].
>>> DT files are not usecase-based.
>>>
>>>> [1] https://lkml.org/lkml/2024/8/15/117
>>


