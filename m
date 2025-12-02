Return-Path: <devicetree+bounces-243589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE60C9A603
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 07:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B94103A3113
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 06:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547FF2FFDFC;
	Tue,  2 Dec 2025 06:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bLNh7lhO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fHAwoCuX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B520A2FFDD8
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 06:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764658497; cv=none; b=Tr86rvsbmf82hwYGBuAOJqO7v6cxadt6aMCYPEAUiK48U0RGTBaZKKvfu+tz4po2YYytTrJ4/Hb0jO2JwkO7W2rIgKddI8DeKhdf2LJ2Vb1icImaiKiIEFjTovwlDuJQTS49X+S4jfm5Yxjec8zhj5Ih6dbnUWLZYJBXQDFSZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764658497; c=relaxed/simple;
	bh=MFtxmIFFIX/mIzJYmrdf6PNdSBetj/enrg8nGxDBprc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UfPfReLTFnctiYaXk0d78yB5EdjoVqmUd/xdK1X8nC1JrNuI1HhmUkbtDS7LcvcxT3ejmSGzgsacGIE2EfhcTrhbCMpxUzvDcp1lzMTb9ZO6oJb8ooN6cjVpNr6Z7kP/BLw7vy0K8aY2KqPBQssEF7c+iUEc8HJ3mQujn745C/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bLNh7lhO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fHAwoCuX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1LsFxO1492350
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 06:54:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	foSQ4s+N0Lrk9DxVWQCN2BFZwRi8jbvinMpgh1jOiG0=; b=bLNh7lhOX1lDxv61
	nhWO1KrLqleF9siuA/XzbfNdg7TNT9zWizgL2yTlUxy8wPW2OZLrJ+c9sFYXLLgG
	DeIPwVICvWqQML/WZNWi4X+gfrC4T0YwaTL4s1TJI1Zui7ey/U0urvHwSSe32Kpi
	lOYqXbZcFhOVGmBzjizCjo6k3KRD9ImsMAQmJyUyQXbc662TtFuVYEdoEWUQs3rF
	XNXcqeo+B0Z40NICrCfVwdlPaUrT0w/xDTpvRNa2eb0GXh2KCLmd5pNgafu68NGb
	1IfB1WfKWDGc0PEkyAdBmlrzoW1/1QUPmpK+5lTsyYsLDUQpknINbhT9hfssse3p
	dlBdXQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4askbd1adu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:54:54 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2a467c4e74bso7081021eec.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 22:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764658494; x=1765263294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=foSQ4s+N0Lrk9DxVWQCN2BFZwRi8jbvinMpgh1jOiG0=;
        b=fHAwoCuXI8xzoquc1r/qVs4mXmhhvXhgnETwxQriXP+BzYZfym6o9UIFp+aMCqCx/y
         JRM5q7kdWz1uNzUbDU7srwXKZLWsrrSmOMVkPkphgDr3UsTPMJMUpMmlHFx1AmrARzz9
         fQPEDNyWf3FeeJ8k/GCY1J2BOz/i/u+hkpqbGQuySNWlaXSwRTZXgQqWGcsMq0SaA4mK
         J9DUzBXR+9aZEGCCDwcmtyEDGp6WL6LqZtMEi1hqxbVH3PTQ8YZsrZ8/65pUJxWj/xNA
         Nu/szI8D7IT28W4Ov11nhqBXtAwUYbnxP9jJzlD8JzPbdPCU+Sdd3DNa0rUA6bc9l5ES
         a16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764658494; x=1765263294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foSQ4s+N0Lrk9DxVWQCN2BFZwRi8jbvinMpgh1jOiG0=;
        b=lvUwRsmvESsiBDwUulqRSqlcdlJEbICUsP8E10cD6zOPtrwPMguOctRSImfaC8At1M
         Hd2xBhYMksQtSu88WcOxwiA4HZ/+klwq28Upr/7onT+yN3vZ+4c3yyOMqx3T6lWGn4ci
         LWnlvHN4Bl5f4MoQm6g1kYGU/cGLSmKbgRKElc9AfPrjZQOyUCMDDA6JG0Dm7CWC+Iy5
         uaS1w8X/bcEHFJ8ytz22Ngg7Y7bAWEntU6GIUlE5V2iA65CuC7vCiXDYJcyCdp7tapUv
         BpeKboEFvxufrFPepQMc6+kDVuckSDf+SBMLwMpbCBNKBhYBl0PJBJOOv6yret0d2jxl
         gqqw==
X-Forwarded-Encrypted: i=1; AJvYcCUk/nMpk1VkFuSQ398/JWqulR9Or/uz75MmsOGO3Gt4qgoTJCPBPdqIUYmYGbzWl1qVPLulIQB3XTfj@vger.kernel.org
X-Gm-Message-State: AOJu0YxsoN5DMuo/bQLDVP+mo5kTfOKVq3Om9xlf5+JomsIBolegNy2C
	KVJJ8ftLnBsYccSNvdodTbzW8QedjavLE1/QHaMhtPb1s7Rc8VuBXKBx5Ln2Z8u7XgHF86UakBU
	vfmI1KKXLU5Y8oZqDi0SOf0yFhDScVhn1LVLJiiJNC1f8Dk/zcJ9grlTlYBfvHsRI
X-Gm-Gg: ASbGncvzfedTZOkhEbjELQ7MeoIk16UIHghumnke9mUF+Uh3dE7cVEDyW0QPdWjPSFi
	47zaCki/QhRN3C3EAMY/N9DEeqNqvQ2FoDS1DipWNbVuv3lu3hze0rINtxIosD2vBGIL1z+tonT
	iH/HnGCP+A2yXsWFhTyGty1IPcWqv90NBqnsdgRG/WW1uys4fJIFnIfpbZfiSU+w9LIjgFeyYJ8
	fY/vT6GuehTfrrl1lAKbz70XOSaJDftgvdTGr3dpclly4qW6fT3L/ax+jzqyrQ5i64JbpPxwT8O
	jT8HuuVMi4KjyT+f5j0bbchS+C71ghMGJJuCoJUpuswJTO1JLB7tqAoC5TVz0XmXFZS4vSt6F6O
	YulXR7G2OshNxZcwqWddp8z5bqu1H73YQf6OUfYVWf2qSVu4=
X-Received: by 2002:a05:7300:df48:b0:2a4:626d:5c38 with SMTP id 5a478bee46e88-2ab7e7c42aemr952887eec.17.1764658494076;
        Mon, 01 Dec 2025 22:54:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwtS+5CXK9Uchenjq5V8PVop7wPp/br98GZF8Rgn7RGu2+Zlt5rF78efpYSo8wSviNZatOtQ==
X-Received: by 2002:a05:7300:df48:b0:2a4:626d:5c38 with SMTP id 5a478bee46e88-2ab7e7c42aemr952869eec.17.1764658493452;
        Mon, 01 Dec 2025 22:54:53 -0800 (PST)
Received: from [192.168.1.12] ([70.95.198.110])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a9655ceb04sm51337998eec.1.2025.12.01.22.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 22:54:52 -0800 (PST)
Message-ID: <ae7e7a10-5aa4-4381-a878-101af19714b3@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 22:54:51 -0800
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
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <be70bdc4-bddd-4afe-8574-7e0889fd381c@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: _QUKPl44yDJfAvunylQlH0Zx3DvBS7Ul
X-Proofpoint-GUID: _QUKPl44yDJfAvunylQlH0Zx3DvBS7Ul
X-Authority-Analysis: v=2.4 cv=fLg0HJae c=1 sm=1 tr=0 ts=692e8d3e cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=46YzWcEg/N/3maUrm97V4A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=Q-fNiiVtAAAA:8 a=1SuC3FrLUNVSS-YJPQIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA1MyBTYWx0ZWRfXwEuSP87L8kHm
 HR7nuVA5jLeMJ/C4yOVtCDFyDt1NMjU6c3pSIOomjQjKO2BzleHgLVfbCQW4+dKl4TcDCSLTjUf
 JetOnjPzk12P4AnR/w6WOB7FL7zTn3UmwPtnqswVY2XeAot0GIYoyjZQ4xytRNhdBxZ+/P2tMG7
 zHy/l8oy53owTL44waczbk9/eXnIqk+BV7ovTCzXsw1MiHygqEZv+JmAQvt7zljG6gn+4ZFYgZ3
 38yT7rzdOm/Z0wcZjCHhFvhLG0HSDXZoNSxFbS5KQOhaYPJrS9aF5qx0Y8XSuEtHlwpcE40Gt34
 B/6yk828zKnYM7fNjNSAVwnOew8/luC9YdVZwgvXkvXLe7z6ghtw5EZpXPOKPmW6puneSEyOu8o
 SFliLbK7icMyeq48A1dSomIuA4NeHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020053



On 11/30/2025 11:51 PM, Marek Szyprowski wrote:
> On 01.12.2025 07:31, Oreoluwa Babatunde wrote:
>> On 11/28/2025 4:43 AM, Marek Szyprowski wrote:
>>> On 26.11.2025 02:37, Ye Li wrote:
>>>> On 8/11/2025 7:07 PM, Marek Szyprowski wrote:
>>>>> On 06.08.2025 19:24, Oreoluwa Babatunde wrote:
>>>>>> Restructure the call site for dma_contiguous_early_fixup() to
>>>>>> where the reserved_mem nodes are being parsed from the DT so that
>>>>>> dma_mmu_remap[] is populated before dma_contiguous_remap() is called.
>>>>>>
>>>>>> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved
>>>>>> memory regions are processed")
>>>>>> Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
>>>>>> Tested-by: William Zhang <william.zhang@broadcom.com>
>>>>> Thanks, applied to dma-mapping-fixes branch.
>>>>>
>>>>> Best regards
>>>> Hi Oreoluwa,
>>>>
>>>> We observed this patch causing kernel boot hang on iMX6 (armv7)
>>>> platforms if using "cma=" kernel parameter. It only happens when the
>>>> size assigned in
>>>> "cma=" parameter is smaller than cma default size in dts.
>>>>
>>>> For example, we use "cma=96M" in command line and below reserved
>>>> memory node (160M) in dts.
>>>>
>>>>          reserved-memory {
>>>>                  #address-cells = <1>;
>>>>                  #size-cells = <1>;
>>>>                  ranges;
>>>>
>>>>                  linux,cma {
>>>>                          compatible = "shared-dma-pool";
>>>>                          reusable;
>>>>                          size = <0xa000000>;
>>>>                          linux,cma-default;
>>>>                  };
>>>>          };
>>>>
>>>> The root cause is this patch moving the dma_contiguous_early_fixup
>>>> from rmem_cma_setup to __reserved_mem_alloc_size. rmem_cma_setup can
>>>> skip the cma reserved memory if command line has cma parameter.
>>>> However, the __reserved_mem_alloc_size won't do it. So this leads to
>>>> have two cma regions added to dma_mmu_remap, one from dts, the other
>>>> from command line. But the reserved memory of memblock that only
>>>> records the cma from command line is inconsistent with dma_mmu_remap.
>>>> The dma_contiguous_remap clears the MMU paging for the region of
>>>> dma_mmu_remap firstly, then create a new mapping by iotable_init. For
>>>> the cma from dts, this causes incorrect memory mapping cleared. Then
>>>> any allocation from memblock in iotable_init hitting to the area will
>>>> meet MMU mapping issue.
>>>>
>> Hi Ye Li,
>>
>> Thanks for pointing this out. From what I see in the code, if "cma="
>> kernel parameter is being used to configure the default cma region, then we
>> should skip adding the DT defined region to dma_mmu_remap array.
>>
>> I will work on a fix which does this and share here when it is done.
> 
> I wonder how to avoid adding more such checks to 
> drivers/of/of_reserved_mem.c and making this code even more tangled and 
> spaghetti-like... I've briefly scanned that code and it is already quite 
> hard to follow, especially after commits 8a6e02d0c00e ("of: 
> reserved_mem: Restructure how the reserved memory regions are 
> processed") and 2c223f7239f3 ("of: reserved_mem: Restructure call site 
> for dma_contiguous_early_fixup()")... I wonder how many reserved memory 
> regions are used on real machines? Maybe instead of complicating this 
> code even more it is enough to make this configurable via Kconfig and 
> restore pre-8a6e02d0c00e version?

Hi Marek,

There was a change which attempted a simpler approach of increasing the
size of the static array:
https://lore.kernel.org/all/1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com/

The comment from Rob at the time was to revive another thread which attempted
to dynamically allocate the reserved_mem array like we are doing now.
Dynamic allocation gives more flexibility because we only use the exact
amount of memory that is needed. This can save some memory if that ends
up being smaller than what is specified in MAX_RESERVED_REGIONS.

I do agree that adding another check in of_reserved_mem.c might not be the best
in terms of code complexity, so I'm exploring other options on how to keep things
simpler.

Regards,
Oreoluwa


