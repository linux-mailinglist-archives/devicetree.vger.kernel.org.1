Return-Path: <devicetree+bounces-243248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB31C95DC5
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 07:34:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC27B3A5342
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 06:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADB427CCF0;
	Mon,  1 Dec 2025 06:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="keHPIo8S";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L7DRdSGw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EBE1FE45D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 06:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764570697; cv=none; b=q/FQQrwc8LcUaglu43gLZ37k/74c8OTG7PeYM0RWlH23w1uJs17zT1JF2Sfwcz+gp7P3jFUXnbM1vOWTZrcEpbOOEbrS/Lo65jroESlxjxjSoUss4oF3+dHvVowDcn56qZLvhZiiNhouiLeVJZpZEEryaw5CwQ3mFolTLch87jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764570697; c=relaxed/simple;
	bh=CKrfcpTP+RSWd/fvl3u3MIbrTp9/5nNjgOwlMIgeCSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hNFaWCqCMdwJImx7+/JGimDtwGBlY+N5PiJr/QiXNe4Jv+cJBNnhY/+qGSG/0jyOoIaLksXvhRe1VZpG3sNIyKNTLcudU21AF4NNm+UlQilfdL9IurmkE8Sa9wUaQjYwDLZOBTGQ2L/bv3sd+q56jaVW2LShEBMbSeDxetQcHCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=keHPIo8S; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L7DRdSGw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AUN0xq03301533
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 06:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	STmhNXFTBwG+hnEDAKZ8sPKTo1Pq34YKzzGNKO+nYBw=; b=keHPIo8Smn1LOD+I
	9RmpnCfXaBrdhqNKDfVbY2H9omNp2NuDOt0fsX11rb0+J+LySaBsSOdC2jo2GvCZ
	61Vsnp28wN7wYIVihAg4GZTBkTF0N3S1yhNIvxkfIzJoVtV200pn/maaelL2CCeV
	HzVTt57iHKv8uDs5lKotwzgW7YWeSofGv99Nhh9WhU031GvV3QbEO3/FpLQaGzTK
	n73COUXETZL2b268Fu6tDSWD+RSOlWc1hB9BvmgVIDK5CFo38OzTpFKbRT1E75Oz
	JUXGybXJX7500aSjeWrKBhqd5BS1iE0/6mqSUPN2Ah8CO8LMRCTKbLJ0/KKBmmIw
	XV2dbA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqqu63rqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:31:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b9ceccbd7e8so6823452a12.0
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 22:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764570693; x=1765175493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=STmhNXFTBwG+hnEDAKZ8sPKTo1Pq34YKzzGNKO+nYBw=;
        b=L7DRdSGwrOC5up6nbUGTk/oqGZb1RvmNZpnDGstzqetXUV8qKDoIMEzHyS9W05TLhy
         CDZ3un13v0ncDZPl7lrdJTrKhadjClSazJeQe2vcn3Q46ma0ROttU43P4kppBPR7HLoP
         Myo0NN5e6/lZV7es3nzNFeT4GiAyTelwJ5ejQLMdFBcXWY5S7Jbin2js9jxaUxQlePyN
         de1S6QDPb4lGeSwNQ+eSTHzT9geGZ8ahCRqS0G4o3QYMTLnpgvdRO9Tufz0S8U6JUswy
         xeh8AxAVyd7km+lpc1NzGUJFUAliNiMFa96ReWhGfED+0S7jD/guxUoODvvAYl6LkSQv
         2aXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764570693; x=1765175493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=STmhNXFTBwG+hnEDAKZ8sPKTo1Pq34YKzzGNKO+nYBw=;
        b=uAYIO/60zm8OWOcoBuD3NScbHF1IR7ZneAX4eUncI7/iMSth5TooPO8qHtQykXq3Mg
         mGP+N9xRHbyiKXxZ026hDsMvOenTMUw8JMYKwaulGRX8YkxpZG6vwY8ng0bt7lClTlJC
         r1JQ0CYWuvxenC3BXJeMt7nrew6xdC0GjPPpjY5pOkiRhQRMc7UqYlFs3UcBrO8GH4NF
         kMrO3LnM9w1GlWLEvPwEicHIysJkNHARO7vk1x03VWdfRQOLL0+ECpmhXeRiFykRD561
         IgqrfzE/6uRXigyFEwbp2pkR2ZPnY8cerpPPjOYEjS62OnMZeZtbqUuAAXkI2xeuFsRS
         PRng==
X-Forwarded-Encrypted: i=1; AJvYcCU6gR3IP6SKuDtQ7xobOy+VUdc1R9u5l3CihoxqL4NacSG9PNnlffjL2rpVTf959QlWFXbJI9yaByRy@vger.kernel.org
X-Gm-Message-State: AOJu0YyyeH8YJ0PcgxXWetKreC3lpjdev0IJsZZlI9JRm4LXXnPKgE0/
	SkJk1/7DjaYc0XPQ05g6vsY6+B0V51QyGR1RbGV7e4vcqZZX3rfKVXD51dCFL40RPS4OO5eXXAm
	IvSZWm73SlpmqNF+xP+SbLxhkS+8rVX18ixrnJWRyL4br9wKBH9wNQtldf7sG2RNf
X-Gm-Gg: ASbGncuKRxAjHJ51gHiw3akJohmiK7xlcrPD54mYoPuX8qfsvzNqpQrNKec14YLtMtv
	iGX8DsiFuSzK8YmQqdSbZ8J+2PyugqplhjDYg946UpfTwO5RWTAj9s9RRP68WuZ7Rd524lqUXrS
	87wFJxCEuOk3p5VXFwOEUHZHl1Q1tfYHIrCm68vZ6oJ3s4EE/slXe/b2AATKVBF3f297Jd3djpV
	FJwkOQ3PkvyMwGbyOs5FvOk99nMWtkEV/jH9Xf0yrvaYRO8oiYrR/TZj5J9mvQsw177LIwV64R6
	MHS4fLlpRFhL2AzAbtN3r0zRNWK00qQ0uQxelCb7RBWKZRPzFK1De6cI0ZIo2AZslXcShFSFlb/
	7Wc0zzvFYB/z12vQMltY+RfcUGPFsIXuuU57+yiD4nrV5egM=
X-Received: by 2002:a05:693c:401a:b0:2a4:3593:969a with SMTP id 5a478bee46e88-2a719279e30mr21303233eec.23.1764570693131;
        Sun, 30 Nov 2025 22:31:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHq25E9R36CuT3AgjBKOaRQJujlghzIDuiLwY3y65LSvd45sTEgzm6NR9GN/sTVrOwajY87Rg==
X-Received: by 2002:a05:693c:401a:b0:2a4:3593:969a with SMTP id 5a478bee46e88-2a719279e30mr21303218eec.23.1764570692586;
        Sun, 30 Nov 2025 22:31:32 -0800 (PST)
Received: from [192.168.1.12] ([70.95.198.110])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a965aafd17sm43254443eec.3.2025.11.30.22.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Nov 2025 22:31:32 -0800 (PST)
Message-ID: <306596c4-cc91-4500-b705-50e619e9f38e@oss.qualcomm.com>
Date: Sun, 30 Nov 2025 22:31:16 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] of: reserved_mem: Restructure call site for
 dma_contiguous_early_fixup()
To: Marek Szyprowski <m.szyprowski@samsung.com>, Ye Li <ye.li@oss.nxp.com>,
        robh@kernel.org, robin.murphy@arm.com
Cc: saravanak@google.com, quic_obabatun@quicinc.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, william.zhang@broadcom.com,
        kernel@oss.qualcomm.com, will@kernel.org, djakov@kernel.org,
        aisheng.dong@nxp.com, joy.zou@nxp.com, frank.li@nxp.com,
        jason.hui.liu@nxp.com
References: <CGME20250806172503eucas1p264d6731c73592fcc380b0dcc21cdeadf@eucas1p2.samsung.com>
 <20250806172421.2748302-1-oreoluwa.babatunde@oss.qualcomm.com>
 <416dbaed-a68f-4edb-a20c-94cb4c53c748@samsung.com>
 <cef8f9eb-88aa-4771-b25b-2cfd1ac2c387@oss.nxp.com>
 <3b0cc36d-0f7e-4d07-949f-fce670170247@samsung.com>
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <3b0cc36d-0f7e-4d07-949f-fce670170247@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: kTUcuffN2XqaIqjDnjy8DJCd4DV26XHo
X-Authority-Analysis: v=2.4 cv=CM0nnBrD c=1 sm=1 tr=0 ts=692d3646 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=46YzWcEg/N/3maUrm97V4A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=Q-fNiiVtAAAA:8 a=EUspDBNiAAAA:8
 a=dCyIEBchpJQOD_9XQmUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: kTUcuffN2XqaIqjDnjy8DJCd4DV26XHo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA1MSBTYWx0ZWRfX8NjnCrb7ZEhq
 4QXIWvS9p+u0grahlMiYxwWdrJfvxkTXMvdXZUwjG79sqG3WVDnpPrQW1CIFxzJJWSGZBC+Zutg
 70h5vsqJaUl4uEm4/y+ZWk/2kmf++gLSALth7nMk5ns9lBbqQIwu+8xpnKioI4rkDKrOToglSh8
 mKe/UMLHwIL9aEoeXsZ4H55ylUQFnfjIzlar94XUvs27cu7B3ju/VoJGwIv1ZQ7Bg6BBV8SRykT
 ZnfKUDMEoCU61nUySmBFHPc1BjS9UQ8rItQsNJ5wZpKuM5rYzsBBbjGeQzfJ5NBpVo2zJCOWz7z
 SZUzRMoLezv48CE9XjtYadmsksXWvDiZ4cUu5cF8CF69JczdNNv+IdELWW18GVmHzMA+Js2ocHj
 5RshMKd9KWcLUOvBT1jotM9jxnp3TQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1011 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010051



On 11/28/2025 4:43 AM, Marek Szyprowski wrote:
> On 26.11.2025 02:37, Ye Li wrote:
>> On 8/11/2025 7:07 PM, Marek Szyprowski wrote:
>>> On 06.08.2025 19:24, Oreoluwa Babatunde wrote:
>>>> Restructure the call site for dma_contiguous_early_fixup() to
>>>> where the reserved_mem nodes are being parsed from the DT so that
>>>> dma_mmu_remap[] is populated before dma_contiguous_remap() is called.
>>>>
>>>> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved 
>>>> memory regions are processed")
>>>> Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
>>>> Tested-by: William Zhang <william.zhang@broadcom.com>
>>>
>>> Thanks, applied to dma-mapping-fixes branch.
>>>
>>> Best regards
>>
>> Hi Oreoluwa,
>>
>> We observed this patch causing kernel boot hang on iMX6 (armv7) 
>> platforms if using "cma=" kernel parameter. It only happens when the 
>> size assigned in
>> "cma=" parameter is smaller than cma default size in dts.
>>
>> For example, we use "cma=96M" in command line and below reserved 
>> memory node (160M) in dts.
>>
>>         reserved-memory {
>>                 #address-cells = <1>;
>>                 #size-cells = <1>;
>>                 ranges;
>>
>>                 linux,cma {
>>                         compatible = "shared-dma-pool";
>>                         reusable;
>>                         size = <0xa000000>;
>>                         linux,cma-default;
>>                 };
>>         };
>>
>> The root cause is this patch moving the dma_contiguous_early_fixup 
>> from rmem_cma_setup to __reserved_mem_alloc_size. rmem_cma_setup can 
>> skip the cma reserved memory if command line has cma parameter. 
>> However, the __reserved_mem_alloc_size won't do it. So this leads to 
>> have two cma regions added to dma_mmu_remap, one from dts, the other 
>> from command line. But the reserved memory of memblock that only 
>> records the cma from command line is inconsistent with dma_mmu_remap.
>> The dma_contiguous_remap clears the MMU paging for the region of 
>> dma_mmu_remap firstly, then create a new mapping by iotable_init. For 
>> the cma from dts, this causes incorrect memory mapping cleared. Then 
>> any allocation from memblock in iotable_init hitting to the area will 
>> meet MMU mapping issue.
>>
Hi Ye Li,

Thanks for pointing this out. From what I see in the code, if "cma="
kernel parameter is being used to configure the default cma region, then we
should skip adding the DT defined region to dma_mmu_remap array.

I will work on a fix which does this and share here when it is done.

>> From commit, I don't understand what issue does this patch fix. Can 
>> you look into the regression and provide a fix patch.

Please see below conversation for details on the original issue this patch fixes:
https://lore.kernel.org/all/5aa94f41-c689-443b-8665-c6913ff5ba8f@broadcom.com/

Thanks,
Oreoluwa




