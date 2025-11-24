Return-Path: <devicetree+bounces-241711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A161EC8159E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 65C463486F2
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 15:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3A1314B91;
	Mon, 24 Nov 2025 15:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ug6GFXTH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f0OsDX8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E4E314B7C
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763997929; cv=none; b=l+PfbLS0YhJeEZYTDbw3+wFSmKgEJucgl2o/RTyE8F+60m0gH4Oz7wr4HgJK3/BuIfIY6rXAVYuDESl5euN4JPhhJNlj/MiLcaPrSVwbou+ssOytqej+O9IUGqJBZnceJ1kwuRC6/KG6/QNlqmCE+hrzphotXwSuy+Og2S8Wa4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763997929; c=relaxed/simple;
	bh=5/lHI5yajYMCIskZ+L8AbLPKUrXegjDAEYSTDPe7tf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tk0s04Fzr3TDLbwoRL0PIi6Y6xO0BbBZv4ROPInyDvepo2jYz33NSI5RobwdSasni3pozwJ5jLK91weupjX1N+C5i9kcqbYfyf5zwqGjPtf8D9/UtYv+7G88dcKrI8fWUSyiRqvG4YVnlIo4+fJ00gIWnk9x5wzZ6g3sRVL/Mk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ug6GFXTH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f0OsDX8b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOB2xAL3884557
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5/lHI5yajYMCIskZ+L8AbLPKUrXegjDAEYSTDPe7tf0=; b=Ug6GFXTHQX2I7hA+
	Y/M5BHnZ++Mo9XZfoByxxDCoscORmc0NRhsIfdypcjsyBbNbyXC7BYF/ufo6ILP0
	9hCOYi8XR43Jj55OOrOzcp3ViSvvSJeHvC5jIHi4UMmH02movgdW/Xt9gh1XlO/M
	r4HjeI68ceaE7i1IXmS4UOz9ayVY/ixnvdrtDqR6gdu+eEPsd2llAdK94op1vK1L
	HMj0MhEF6L9xkCCG7ZHiie8HO9jv4Rzx946AfA5rNMJTWMnqDS49uLHlcR6r3X+P
	B7Wzx9r7/aNEwndMHedUlIbkh80MTeTRR2EC1oe8Rhj8te3T5kxqddCxglADefgd
	FRTn6Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amp568pph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 15:25:26 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34385d7c4a7so2775640a91.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 07:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763997926; x=1764602726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5/lHI5yajYMCIskZ+L8AbLPKUrXegjDAEYSTDPe7tf0=;
        b=f0OsDX8bMD1PvymoqfXsoBPF0deLnaipxPL6PNW06fzewLt+hKf1A4DtjmJi0L4S2Q
         s4n+XPJk2x1XPy5OlhBcf5cMzsnurgREKDxVPyPB55BmzhP+uILrAxsKZBDxbC7FagAW
         T3pOprnUQmFLXh40Ktuhk491eYxr3clqy9Y9j4XCAV/zeJCx2aGOyEHjv1K6arq6GZ/d
         z/m+ylxFuNDkMUB788KoMQ2/Ea/1POVdWd3qcS4YvcUx3Nv0V6yjvRvwAwi14PY37IIm
         iKn12a0GoG+kB7wmSOsoj0trnDd2/ra2WIvWrCzTmzBXvsRuc8oNRrZfR4DOaqYPUsyO
         GSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763997926; x=1764602726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5/lHI5yajYMCIskZ+L8AbLPKUrXegjDAEYSTDPe7tf0=;
        b=K5o6QRrkAbISSKtsImvs7nWB1f6YgVHEY6gCcl1O9jq1JHH/hQq+920ki8FGD5/Ktc
         ojS+v/JVlCAv86uu4H5kvk0+whfZYWD+gcWbli2b2Y5aAnVBMU+rEUkOXYYj6I9zt2cE
         FLi8mMbf0A+1pNrUr0GbvDv/+mKRn3m9PJp60ryLalls3vpAziR6EYbeX1oYbxYQPKO+
         gO9GAYa82nNo39NAm+ScCH1L/oytmiLmj9kcv7QV3TTi4CQqlq4q+xRB92+GnBdzjj/n
         rS4Kw+/ul0vDg4ZfBYfFqLx2Y8TDsmOvsCLNiu7RKPQKcVTV7VreuUmLt0dSUFBL2oyX
         6XvA==
X-Forwarded-Encrypted: i=1; AJvYcCXdLaw8bBfTDbPhnU40WwsadVf75QA05UyxHkOPCaFdkUIdHctPGxWvjK8CRPA59Am8PESORDnM0iDD@vger.kernel.org
X-Gm-Message-State: AOJu0YzlkB5MzIS2NOqjkuA56stlC8Ut1LmIAPaySP3PG5KdExTV9rgD
	+m8tBjGYawQHcqyCQI012lGbNFY+6WcKSCg78yHufl3nZY/vEo8de/hT6DFlpGnJ6rQkeTF3Pm4
	6dWi9k78ggK+yc2gZyll6JsKyrwHO1gwgojmn1Pdy2MAEFZG2weXEsQMIO71fbt2h
X-Gm-Gg: ASbGncv36PwqsnmBAsp8cTUeN5DKZ0y8DnH+JbqYQySj9ETkgXli+HHR1dwIZlR7xgZ
	+XtbL4sSwtpfMQg/ZITkXpscoovzjtO3LwEfJ4BgBl8S1KRdvFNEz7CsxLjsi7Zs7qNnxKVicsS
	3bQac4c9IhVZXuXnZBk6/GHaS+YF6n9AmhwfzEkMG4t994SoStiW2D53pObnL4fpbX26UIEESjn
	9CkK8uAF4084Q9L/RQSHJfOWILwTsKbPC30QFTKf1Ww1bnFCOHdziZ5Q4erXH8OiuOcsEdXhMwV
	y2DMbW9Dzn1bhpGiUBTMRkV5/d/N8Gmuw0WZ5yR8kjzrdYWAEozS8yfueN4ou0Eo6Z/7MCg+Khi
	CDctyVXVIGSCa5eIJCnPGFtngGyScvKCYIdPi3Gw=
X-Received: by 2002:a17:90b:4f8a:b0:343:78ed:8d19 with SMTP id 98e67ed59e1d1-3472985089cmr17378400a91.7.1763997926044;
        Mon, 24 Nov 2025 07:25:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElv3dsylMB7FJPkP/DZxGQJekuW/yFSzIbtDtowJVi9bPD8PBRjAzZoK8OxKd1gZB8hCKnqA==
X-Received: by 2002:a17:90b:4f8a:b0:343:78ed:8d19 with SMTP id 98e67ed59e1d1-3472985089cmr17378332a91.7.1763997924947;
        Mon, 24 Nov 2025 07:25:24 -0800 (PST)
Received: from [192.168.1.9] ([171.61.230.171])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345b036a282sm10654221a91.4.2025.11.24.07.25.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 07:25:24 -0800 (PST)
Message-ID: <ab5543f0-e05c-4d3d-9fb5-d4a2fda6b9a3@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 20:55:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Nickolay Goppen <setotau@mainlining.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <ab054cf7-83bb-452d-aa52-d431672c63e3@mainlining.org>
 <d5972f14-6558-4e7a-9b1e-8e899ef72fcd@oss.qualcomm.com>
 <vlvieye2nwrh77l74rxlusuc2cwos754b7c7a5hfrjl6eothsb@4xftv36j7utj>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <vlvieye2nwrh77l74rxlusuc2cwos754b7c7a5hfrjl6eothsb@4xftv36j7utj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: zzwcb-Vw_5_PLqNAxSAkW6bvcQUpt7mE
X-Proofpoint-ORIG-GUID: zzwcb-Vw_5_PLqNAxSAkW6bvcQUpt7mE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEzNCBTYWx0ZWRfX6geahYIWuzbc
 iXzwUBMEYNz3XdDCfNC/hDU+an3WKxjexBas4Li1Pc//Lmz2yFIKBXv2ADBHEQU5SHVm4UmS7B5
 NEZY+hk61ae4xV53OFdoV+cSU19NN1rPzy2X5EnJgU4Tm1JMBKZx6nhtVS1R8Cry0wrQ5Qr7JAi
 MI4qGC5RshlkJlXqMmvj6G4k0L7lvjj3o3QusApi4ek4LeGMkZE+wLtQCdj/Aczcw3Dxpyg79aC
 EGwadBRc8RidNVt48Dd7EZC0xNlKdYH7Hrfj9OAvge4z0+qQ/8iVM1obQgsLk9RClmPguVoGRRh
 UVdiDX8V6huN5LYE6+c5zn/S+tCvZ8gVkfXg7OncxFSUIiUG4zDCYLAbYIAiqJLrzR2YOf3wvWJ
 BXOQjlNqjdjlsSqUs85y1YpuGgjKLA==
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=692478e6 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=/vSWnVNeU9WElhN9+xZJOg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=OuZLqq7tAAAA:8
 a=9zUj9r8C_vlciBZ8CnEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_06,2025-11-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240134



On 11/21/2025 5:36 PM, Dmitry Baryshkov wrote:
> On Fri, Nov 21, 2025 at 01:28:09PM +0530, Ekansh Gupta wrote:
>>
>> On 11/20/2025 4:52 PM, Nickolay Goppen wrote:
>>> 20.11.2025 13:54, Ekansh Gupta пишет:
>>>> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>>>>> 20.11.2025 07:55, Ekansh Gupta пишет:
>>>>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>>>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>>>>>     * add shared memory p2p nodes for CDSP
>>>>>>>>>>>>>>     * add CDSP-specific smmu node
>>>>>>>>>>>>>>     * add CDSP peripheral image loader node
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>>>>>> ---
>>>>>>>>>>>>> [...]
>>>>>>>>>>>>>
>>>>>>>>>>>>>> +            label = "turing";
>>>>>>>>>>>>> "cdsp"
>>>>>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>>>>>> +
>>>>>>>>>>>>>> +            fastrpc {
>>>>>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>>>>>> +                qcom,non-secure-domain;
>>>>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>>>>>> created for CDSP
>>>>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>>>>>> Is this property not neccessary anymore?
>>>>>>>>>> +Srini?
>>>>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>>>>>> it gets caught during dtb checks.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>>>>>> compatiblity for such users.
>>>>>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>>>>>> the driver behavior was previously such that unsigned modules were
>>>>>>>> allowed (which was presumably fine on devboards, but not on fused
>>>>>>>> devices)?
>>>>>>> Yes, its true that we allowed full access to adsp device nodes when we
>>>>>>> first started upstreaming fastrpc driver.
>>>>>>>
>>>>>>> irrespective of the board only signed modules are supported on the ADSP.
>>>>>>> I think there was one version of SoC i think 8016 or some older one
>>>>>>> which had adsp with hvx which can load unsigned modules for compute
>>>>>>> usecase only.
>>>>>>>
>>>>>>> I have added @Ekansh for more clarity.
>>>>>>>
>>>>>>> --srini
>>>>>> For all the available platforms, ADSP supports only signed modules. Unsigned
>>>>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>>>>>
>>>>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>>>>>> The implications of adding this property would be the following:
>>>>>> on ADSP, SDSP, MDSP:
>>>>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>>>>>> - Non-secure device node can be used for signed DSP PD offload.
>>>>>>
>>>>>> on CDSP, GDSP:
>>>>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>>>>>     are created, regardless of this property.
>>>>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>>>>>
>>>>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>>>>>> be used for signed PD offload, if non-secure device is used, the request gets
>>>>>> rejected[1].
>>>>>>
>>>>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>>>>>
>>>>>> //Ekansh
>>>>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes?
>>>> I checked again and found that unsigned module support for CDSP is
>>>> not available on this platform. Given this, the safest approach would
>>>> be to add the property for both ADSP and CDSP, ensuring that all
>>>> created device nodes can be used for signed PD offload. I can provide
>>>> a more definitive recommendation once I know the specific use cases
>>>> you plan to run.
>>> It would be nice to have some testing instructions or how-to, something simple as "hello world" to be able to test it, to see if it works at all 
>> There are some test pre-builts available here along with how-to instructions:
>> https://github.com/qualcomm/fastrpc/tree/development/test
>>
>> You can try running calculator from here for basic offload testing. 
> But this would test the signed binaries.
Yes, binaries available here are signed.
>


