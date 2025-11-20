Return-Path: <devicetree+bounces-240653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CFED4C73CFB
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 8A96330501
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 399EC32E744;
	Thu, 20 Nov 2025 11:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gsevl2vZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bt4JJvlu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BB9302150
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763639279; cv=none; b=X3eqyW0zX2D2vejNvwmEv5XeXhilgvHrL2K8DZxv0ZJZHNDFj/Ov9///3+ppIwfCkziHz6nUFRYVJ9LSfWbgibeKVXZJpJdYbK+r2S26rEpcClBd+L3Ol83S4zxAsLBgpyNP4MSmRaKnwgQBPsoEMvLJEIBnMDEQbb2efohz80Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763639279; c=relaxed/simple;
	bh=EZ/NZj91wZH2T2vAvj3ZsOBgnYXe06hjHyPiLOwcqSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rHtu9An3BHbkGLpSb+x8fxdDkWkl3dEqUTWOP2NnPELiXTh1VckVLFVTCyOJm96EMg/Y6dSkrpQy/tzlHWXiElW6dqZcQURU8Pyo1zAyeuFXAUfl6e8XEKByrhSa2Qhh/v8CGIOwvJtoDgQ0bArH7HUXJ1TzqrwJnrqp8MTStZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gsevl2vZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bt4JJvlu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK64LfV3926092
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JxyeXwffx5hTKSMh7esokKl8lA+PQtUsPeK/qG3TCgI=; b=Gsevl2vZdd2UySeh
	XxaACt3zJTWwgdGsJqK87M0bd5xGlfOkgw7gukoSVvTUkKXOrlLvYGVb7yIF/LOY
	H7NiGKev6buu1TmiomW2nc6Gsb6Yhz0GTgnT5UhovAf/m8m/wTMB56cl9diIlBTZ
	K17FDXhE45EZCVuDWjPijC0ituG3bluEpbrCti8b0Nz7ugT25XdNbMRJPtlN7CYs
	hVCXH/XbEGTxs1vnTVC53Q6X+/ui580oMM8qdF8lv61oRi+NUPKTP2G1ZpC4BRHs
	zRg+u7NNyQh+J4WdkdLDnjWtGpIli/bFj3jf78vUFP0hcBuR/Gsy+QUjbCK5W2TY
	BDyBPg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahwd791w6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 11:47:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so2531321cf.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 03:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763639275; x=1764244075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JxyeXwffx5hTKSMh7esokKl8lA+PQtUsPeK/qG3TCgI=;
        b=bt4JJvluYiOZpZ8ra3UA4aBmPRg/f1ETrUpXARWWs8uO8s8ckyA1ZQMx1JgiBSbIfT
         9VI3Gph9r+3QyWUKw2c+LCdjnwGxCifpSXlWMFCJX4JCiexiSVHE3Gymv2emK2swqTVi
         v2VPTAJjXhecv/fycI22k/zxA8+P9wbsEJxDDIEKQwnt3FNDuHb8RmwrFO8TORI8nFcd
         t3BfLFiMtD9zzIf2Q3DT3aaKgvJ46VyJukq6zPJVNww6Xv/eNLImCIgSPZjON5Xwi0cz
         tYSGIqzV4LwNnu0Vh0oH2XySJEMyopUlUFCPxBmCZqxn8ltXjy0HwpXPgqSQ8I3whQjM
         NSvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763639275; x=1764244075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JxyeXwffx5hTKSMh7esokKl8lA+PQtUsPeK/qG3TCgI=;
        b=KEIgGwgeMQmsBXYz2uImml7+3KzZOcfsKRPdwv6q5RmmnDZ0gPrbCxZ+iKjFL2gnUt
         ISgBR8lfC8cjByIEsusGCpwP7iUjq+uSH+c9ma4ni3S/wZj2he/BVwAWedBNo5xXafDI
         ju0MmkH+8OkAsBJzkvMMDYXzlZu4ZViOOfHLWoIgUPF3d+cIRv2JAUuhIIDfTILHl2m8
         vn3VOLMJolCi6/dBeg/vxUvHy4SWwOSINygx1gaosatt9MJjaUYkOwk+OaMy3jhYQZ3c
         56IiMGSh3pHT+Yn9k30J4+ahHSsFpsueCCGMMMcUpSmng0MsXJ8Op9IY8dQBWTrSaCM1
         WezA==
X-Forwarded-Encrypted: i=1; AJvYcCW8xHxCCwo2P5OX2yR1QAvwEIMqcOJl+Gg5jhJ0hCwPHzGuFzusY/M2DNNHSVCneqB2jlTtZYTcGsBa@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj2fgvm+Su311fS2Anj6K5BFF/3UNYyG9NZWrQeynjbIIY4tHY
	8oAsRJm01MOh/blWiZ+0B9Bx8Efuh7gtXIJw6Zg6x/S8GsUO7pRbBctOn/pPPvJB4A5QTmFDwAD
	WYhfxGeUMC5nhqKKmdsr2pDMs/OSIRP44r0SBHLMHxPT5MaQZLQJD4AleK7+xyaap
X-Gm-Gg: ASbGncs5BCB+fAaeOht8rQCYaobFP3bQBDW5np606/fXjrfRox/gB502gDHmmrv4j3H
	1dqYMsEjKyy1aZ+LgEbBQo+k11BY0VGRuGH0si2saf1FW0MO4O4zEvpJmFUx4YwafBwetu0qVlI
	cyq/ZfDrLlR51VPkSg2yoUCQy81rOq99V6iADj1iLuVbWZ2lQWumEgTNRgAlatGAKc8nqzbm3Kd
	WWa680MYOpj3C7oiIqwpUCCP/0sDmwTpJTuGsN57znuMz/c4ZvodgALqEolHbentM99lVZlvaNJ
	Y+uCq51eH/uwbx6HO8dR5un4cW2g+udQfjvr5LddZDfU07Gk+rxgXjhhe7wbgX2y46iE6OrIJc4
	b1rV8Gi9JPs7CbAlgnvaKNqp+w2dc/0Gkxvqy4noEc77VYtn2SGBaowSrEgvMMdJghhs=
X-Received: by 2002:a05:622a:1208:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee49456b7amr24661021cf.2.1763639275295;
        Thu, 20 Nov 2025 03:47:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4Z/1QKTPQfmoIuUIOYna7Jmfp/wXBj5aE67cYkKmgIdTUJbMVnedKZ0kWLzAz7Hk+98vkfw==
X-Received: by 2002:a05:622a:1208:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee49456b7amr24660841cf.2.1763639274820;
        Thu, 20 Nov 2025 03:47:54 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cdac18sm186405666b.11.2025.11.20.03.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 03:47:54 -0800 (PST)
Message-ID: <24221ce7-24e4-4eaa-8681-ed9b4b9f2d6e@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 12:47:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
        Nickolay Goppen <setotau@mainlining.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
 <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
 <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
 <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=691effec cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=hDfUAWCtjtKpYJbaT9cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: TdHv8me0RHpk1HTXDSq6eze9R8AWj2YP
X-Proofpoint-GUID: TdHv8me0RHpk1HTXDSq6eze9R8AWj2YP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA3NCBTYWx0ZWRfX0JKO+G0WPj5B
 G+UyU9wHAk5T7r9dyLqKamCT9I6DJP+QIs893SrXTCd/8FDVefNC2VK5FGbDVfnZjlh7HSdNiEY
 zf1gtM6XX9t4FfQMRML6QMAHtMjg4CLc5vAn2+141KdvaAFJB3CtY3Y38dNQuSv+p0W8wi5Xqxq
 rdpKyP/i/FhioVkt5FnBuRz06d8domCYiYq5gXZgrYftRmLemhdaEXnaq++E+KMYh+pfH1p/ghm
 58/v0e0CPCFO5Y8E9VAKKHHJ8OO7sD8yE3MCyLO6SS75Ijp3BDBGBWPz9IT+d66Efa2tkypwMnA
 aAyvuczMfjdcoso7v3X+uydCqcUeOjKuKf9pt/zjbuAhW74IJ/iSBsNJnqI24BXcyeSgb1aCUEC
 wurGZl6YwZW5Ywf9oqXeG8JSSbdk5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_04,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200074

On 11/20/25 11:54 AM, Ekansh Gupta wrote:
> 
> 
> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>>
>> 20.11.2025 07:55, Ekansh Gupta пишет:
>>>
>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>>    * add shared memory p2p nodes for CDSP
>>>>>>>>>>>    * add CDSP-specific smmu node
>>>>>>>>>>>    * add CDSP peripheral image loader node
>>>>>>>>>>>
>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>>
>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>>
>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>>> ---
>>>>>>>>>> [...]
>>>>>>>>>>
>>>>>>>>>>> +            label = "turing";
>>>>>>>>>> "cdsp"
>>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>>> +
>>>>>>>>>>> +            fastrpc {
>>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>>> +                qcom,non-secure-domain;
>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>>> created for CDSP
>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>>> Is this property not neccessary anymore?
>>>>>>> +Srini?
>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>>> it gets caught during dtb checks.
>>>>>>
>>>>>>
>>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>>> compatiblity for such users.
>>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>>> the driver behavior was previously such that unsigned modules were
>>>>> allowed (which was presumably fine on devboards, but not on fused
>>>>> devices)?
>>>> Yes, its true that we allowed full access to adsp device nodes when we
>>>> first started upstreaming fastrpc driver.
>>>>
>>>> irrespective of the board only signed modules are supported on the ADSP.
>>>> I think there was one version of SoC i think 8016 or some older one
>>>> which had adsp with hvx which can load unsigned modules for compute
>>>> usecase only.
>>>>
>>>> I have added @Ekansh for more clarity.
>>>>
>>>> --srini
>>> For all the available platforms, ADSP supports only signed modules. Unsigned
>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>>
>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>>> The implications of adding this property would be the following:
>>> on ADSP, SDSP, MDSP:
>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>>> - Non-secure device node can be used for signed DSP PD offload.
>>>
>>> on CDSP, GDSP:
>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>>    are created, regardless of this property.
>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>>
>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>>> be used for signed PD offload, if non-secure device is used, the request gets
>>> rejected[1].
>>>
>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>>
>>> //Ekansh
>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes? 
> I checked again and found that unsigned module support for CDSP is
> not available on this platform. Given this, the safest approach would
> be to add the property for both ADSP and CDSP, ensuring that all
> created device nodes can be used for signed PD offload. I can provide

The property allows *unsigned* PD offload though

> a more definitive recommendation once I know the specific use cases
> you plan to run.

Why would the usecase affect this?

Konrad

