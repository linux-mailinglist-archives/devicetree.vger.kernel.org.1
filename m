Return-Path: <devicetree+bounces-245496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C4CB17E1
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:29:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B78F30EC77E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C94D31A9B24;
	Wed, 10 Dec 2025 00:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LXacSh1x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XOpzo0x5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA471A2389
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765326549; cv=none; b=aPnKrhuldbtjTYKp6Vjw1/d0lVKz6c0332qwJATXO/g4YozEgXeKeub24eb21kGj7mmSXmQC+q4g9wgPI947eT76ozDo0NmYWEMbTZqgkC5NCKa42kn48MLLGmo1oJpZDRkxWkzcBDcWSchDZc4Tw2YdHufKd+aelIuiaztmfco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765326549; c=relaxed/simple;
	bh=DmbHOJzDGgP3zinDpUhdWFndWqr7KPrrGjBLOi/pilU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bNTHTLOpxhmv68ZTZShySqa0Vrhu95LcQAc1+u8pWboYWLs6BAtfvMAzGB9L260/yBmKgXV5EFSX/1wYKlic+yY4qR2aDwJ40aWbcAUfDyRsQnUEgLxsz+i30F3XmUqybodXvhErOWh3vuCJ+ORrxMCS6vprXNP4qM1uLWt+6bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LXacSh1x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XOpzo0x5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA0O3oW743238
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1m/PxXI6rT8YrX7Kv/BU7N5+AWAw6oouRsa46G5QXRQ=; b=LXacSh1xfCz35EhV
	I1c4pPHiiUJIH1TEdyRmArMFjBlUjhhu6EdBjURBikLOfw+yDNQ0S0dEexojKEpW
	9wk2e0eckh7eE87DItezlVDiJdz9SIRrMH4Rk5aFycmCA8DCLYeft78cNeRBuVGU
	mh7ZltfH1StlOhQIAYdM/QfEw5g5mX1cpuBX0S0nZfBId6f0ipBP0IOynRp9iMsB
	8EJH64zxWznvk//YTQ4HfKSDdJ3QWegbwySsadtiOA/FEF83qvLkVO+9BKKEBDAi
	aZI3sg64ZPq0f5TYnAlSQfUjXfhqu7XRtW2jlY6xpQe4sP2vhbAA4NxBMqSz6Huo
	8MA2zw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axgqrardk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:29:03 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b471737e673so7535420a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765326542; x=1765931342; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1m/PxXI6rT8YrX7Kv/BU7N5+AWAw6oouRsa46G5QXRQ=;
        b=XOpzo0x5kl7XE8obOtdz/CvGV3VCturcwJGStV4gs7VluYqq+9FBq5cdbru5o2ayGE
         bP1VO3Db29ImiVF3qHILQzSK0vyTBBM7lS2E+JmnixOz0/SNT1jXRNMihuvDNGNOELwK
         oacKy6peSiELWDG/17nG6P0zsAEzP7LV56mkJpWmGs5zmJCXyCQsVrJH4WIW1XEP4kSu
         hfwlxdCt1dwy1m7EKFvHJU99G/PJUSr8lNTlwHOviN8Y4jvomCWkY9Z6g0JFj71dgYcs
         ccS9XDsbASuNMXwrk1Xux++tyCtZPQDJ/37aPzis4jUSg5lXuAwuw517x2dvEgQsM2mN
         5I2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765326542; x=1765931342;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1m/PxXI6rT8YrX7Kv/BU7N5+AWAw6oouRsa46G5QXRQ=;
        b=md0QfjZdpFFAC2EHGIDpN3gL0d738gaRQ/g5NTn+tPz8PWrhiAfrGI2z+g+d8dnmAY
         B74on0PnzuHrWBEFsNRwWL8BmzbmvJKoQZrgA2yGhEaLZ2zePbfs3CUPH4euY4ssaq+j
         gxlTfL07+LHJmXzEyDyLNSsHk5Qlfd7HOprD53/ylH6mWftjlXINqB3vbZDK3CiZqpz3
         DZpzaVsIbYVOVOFt3GMd/e64VTABMohMPCTyeYE32YzP1L73c+GFc8G3mQ7fDhXIiV7e
         BfJHFkKLZ6Rrsxy1rEqZY54WSbcepqCa8mmMlIP9K/0BkSGGOM88TOtQwsO+2vpE1d6M
         6vkQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6GQ0VCae2Len+YGhvNe08oS0I/tkBVITveoIi4ktN9WSrLFYOnp7vz7WIzP63gMHlQSwf6evX0OPa@vger.kernel.org
X-Gm-Message-State: AOJu0YwGwMAnP2jo8xuVtOM/w4yGxGuliaFTj/b6DMRnDRIE1pmgsD3C
	kraphqK3RoQZYpdm2bcy3MqdveUH9C9gTLL4N1f541vy2oEloNcnZEkoOvEc6mhDbmkjK5l2AMf
	V1QQqdNtVNLwD8YMfdMtZJCnYf2KTUHUuVSfYSwklAF9Mv++uppLh0B7IJ9K1gy/1
X-Gm-Gg: ASbGnctdZDekuoiZCJyas51WkChVAEk77r7B9bF7oWTKoMTTyt/8x48hVj+Z4ZxSE3Z
	SjqMJP0kDNq3NFn5nAxhcZrpj1/9ProhaSLCrTh4LXJbCpLzNpt7DQQjHduzvOZh4EDlY1ha7sQ
	Htyk6yrUmFiQ6phYQ5jwL++98a7dmSiys5LjpSKdo4WNaWHRK5A2XM4U7jEvIiFgSHpvAO3dfnq
	aAGt7ed7kllYQhVrLXG6zbPaS8c6SwUyBKGwl6hlZOEpx2RqTxfFHbryHg7aI3CykOLfjyLtqie
	VNAgLX54PenC+aLgCKrgptNaysgsK0oV5vgY/Yicv7Lvz1SAIOl/lXGerk1cxzXTK3yPdKwXtrX
	2IxJijXiK+jczl25eU+7mQv4iiDCRdAE20zVW57kX+QFmLA03ybdeJGSe8V08QQ0eJPL/wtOZ/w
	==
X-Received: by 2002:a05:7022:4299:b0:119:e569:f626 with SMTP id a92af1059eb24-11f29689922mr488016c88.31.1765326542348;
        Tue, 09 Dec 2025 16:29:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEy5keNfV7FkPtPxwGz50EOX7i55BO+dFaKFElM7BkmefsV2JDIwhim0Mttwnnmyd7Y2ySIGw==
X-Received: by 2002:a05:7022:4299:b0:119:e569:f626 with SMTP id a92af1059eb24-11f29689922mr487991c88.31.1765326541703;
        Tue, 09 Dec 2025 16:29:01 -0800 (PST)
Received: from [10.71.110.87] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7573508sm54609303c88.3.2025.12.09.16.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 16:29:01 -0800 (PST)
Message-ID: <8b8c2b0a-3629-4cde-afa4-18bc20e0f5df@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 16:29:00 -0800
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
 <306596c4-cc91-4500-b705-50e619e9f38e@oss.qualcomm.com>
 <be70bdc4-bddd-4afe-8574-7e0889fd381c@samsung.com>
 <ae7e7a10-5aa4-4381-a878-101af19714b3@oss.qualcomm.com>
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <ae7e7a10-5aa4-4381-a878-101af19714b3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JaKbbmsGzOETJ9nVg2csE00pSFK3JvFr
X-Authority-Analysis: v=2.4 cv=UrBu9uwB c=1 sm=1 tr=0 ts=6938becf cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Q-fNiiVtAAAA:8 a=efuEfnpHt8x5uVf3ZYYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: JaKbbmsGzOETJ9nVg2csE00pSFK3JvFr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAwMSBTYWx0ZWRfX4LoY28mCD60f
 QqYEtSLpeOkjLGXtWc4vca+hqJmLOoNhKWSVl5Ms35YMhXpkWbUX5Esf8ZreLyQQvj9boY5x9RD
 0jJdDSoDV76de4tXPOXrfL3UmBq+Hxii26zuQchgvQzuQFgKeQCB3MbkmMhWnvuxis8FllC3MMh
 ccrWXk3UifH7qjvT/jVAAI4Hr3YmixqggUeVOOcIVdmO4BUodCIe5IS+c5ext7y2JlUKfBOOgVH
 JbRwoS9cGD8nIPLHkUeZ9jormYDYtqyZepY6hUXnvbUQkHY0OLy8PrGIV8ZtlqSf5OsQipnYkdg
 fgz9F07JXINtATn7mQC2hfqZqk8pkJSFCnMUQNx6BY1sC1pQ8sEo5hw3AiIq3urtJlgVPhlt82e
 zKENQRpOtF0nfV8hhlzxuQApbo0ZGQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100001



On 12/1/2025 10:54 PM, Oreoluwa Babatunde wrote:
> 
> 
> On 11/30/2025 11:51 PM, Marek Szyprowski wrote:
>> On 01.12.2025 07:31, Oreoluwa Babatunde wrote:
>>> On 11/28/2025 4:43 AM, Marek Szyprowski wrote:
>>>> On 26.11.2025 02:37, Ye Li wrote:
>>>>> On 8/11/2025 7:07 PM, Marek Szyprowski wrote:
>>>>>> On 06.08.2025 19:24, Oreoluwa Babatunde wrote:
>>>>>>> Restructure the call site for dma_contiguous_early_fixup() to
>>>>>>> where the reserved_mem nodes are being parsed from the DT so that
>>>>>>> dma_mmu_remap[] is populated before dma_contiguous_remap() is called.
>>>>>>>
>>>>>>> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
>>>>>>> memory regions are processed")
>>>>>>> Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
>>>>>>> Tested-by: William Zhang <william.zhang@broadcom.com>
>>>>>> Thanks, applied to dma-mapping-fixes branch.
>>>>>>
>>>>>> Best regards
>>>>> Hi Oreoluwa,
>>>>>
>>>>> We observed this patch causing kernel boot hang on iMX6 (armv7)
>>>>> platforms if using "cma=" kernel parameter. It only happens when the
>>>>> size assigned in
>>>>> "cma=" parameter is smaller than cma default size in dts.
>>>>>
>>>>> For example, we use "cma=96M" in command line and below reserved
>>>>> memory node (160M) in dts.
>>>>>
>>>>>          reserved-memory {
>>>>>                  #address-cells = <1>;
>>>>>                  #size-cells = <1>;
>>>>>                  ranges;
>>>>>
>>>>>                  linux,cma {
>>>>>                          compatible = "shared-dma-pool";
>>>>>                          reusable;
>>>>>                          size = <0xa000000>;
>>>>>                          linux,cma-default;
>>>>>                  };
>>>>>          };
>>>>>
>>>>> The root cause is this patch moving the dma_contiguous_early_fixup
>>>>> from rmem_cma_setup to __reserved_mem_alloc_size. rmem_cma_setup can
>>>>> skip the cma reserved memory if command line has cma parameter.
>>>>> However, the __reserved_mem_alloc_size won't do it. So this leads to
>>>>> have two cma regions added to dma_mmu_remap, one from dts, the other
>>>>> from command line. But the reserved memory of memblock that only
>>>>> records the cma from command line is inconsistent with dma_mmu_remap.
>>>>> The dma_contiguous_remap clears the MMU paging for the region of
>>>>> dma_mmu_remap firstly, then create a new mapping by iotable_init. For
>>>>> the cma from dts, this causes incorrect memory mapping cleared. Then
>>>>> any allocation from memblock in iotable_init hitting to the area will
>>>>> meet MMU mapping issue.
>>>>>
>>> Hi Ye Li,
>>>
>>> Thanks for pointing this out. From what I see in the code, if "cma="
>>> kernel parameter is being used to configure the default cma region, then we
>>> should skip adding the DT defined region to dma_mmu_remap array.
>>>
>>> I will work on a fix which does this and share here when it is done.
>>
>> I wonder how to avoid adding more such checks to 
>> drivers/of/of_reserved_mem.c and making this code even more tangled and 
>> spaghetti-like... I've briefly scanned that code and it is already quite 
>> hard to follow, especially after commits 8a6e02d0c00e ("of: 
>> reserved_mem: Restructure how the reserved memory regions are 
>> processed") and 2c223f7239f3 ("of: reserved_mem: Restructure call site 
>> for dma_contiguous_early_fixup()")... I wonder how many reserved memory 
>> regions are used on real machines? Maybe instead of complicating this 
>> code even more it is enough to make this configurable via Kconfig and 
>> restore pre-8a6e02d0c00e version?
> 
> Hi Marek,
> 
> There was a change which attempted a simpler approach of increasing the
> size of the static array:
> https://lore.kernel.org/all/1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com/
> 
> The comment from Rob at the time was to revive another thread which attempted
> to dynamically allocate the reserved_mem array like we are doing now.
> Dynamic allocation gives more flexibility because we only use the exact
> amount of memory that is needed. This can save some memory if that ends
> up being smaller than what is specified in MAX_RESERVED_REGIONS.
> 
> I do agree that adding another check in of_reserved_mem.c might not be the best
> in terms of code complexity, so I'm exploring other options on how to keep things
> simpler.
> 
> Regards,
> Oreoluwa
> 

Hi all,

Apologies for the delay in pushing a fix for this.
I've uploaded a fix now:
https://lore.kernel.org/all/20251210002027.1171519-1-oreoluwa.babatunde@oss.qualcomm.com/

I ended up adding some checks in the reserved_mem code to skip initializing
the default cma region when the "cma=" kernel param is being used. This seems
to be the most straight forward way of fixing this issue.

Also, this way makes sense because it allows the reserved_mem code to skip the
default cma node and not add it in the reserved_mem array since it will not be
used as a cma region eventually.

Please help me review and give some feedback.

Thanks,
Oreoluwa




