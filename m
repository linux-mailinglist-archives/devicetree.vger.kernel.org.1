Return-Path: <devicetree+bounces-201744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3FCB1A9B7
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 21:38:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 707A317D5C6
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 19:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AA322B8C5;
	Mon,  4 Aug 2025 19:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h9bdvuKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D70204083
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 19:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754336281; cv=none; b=uB2O3XW2aOQSbYpF8yRY7voqdWBHYtBN5FoINO1064Sz3k8xJ/Ep5XBfbDSiFlRj5jCv2ZbceXN+t8djzFxOB8MChRppxhK5V2NqT5ONE4COnDDnRhAZEg+YLe8uetjKvR0oyZpT51t9kts4ikHVtcLsBz3RTRz3o+1cTwUZ2qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754336281; c=relaxed/simple;
	bh=gMNa7ghysRE0GnTzj2DIg8E+Jw4M+z2ED1KRbbrmldw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DURiC8ooY9qPqgX6sYuC5GhVBAhge6cXzFyYkGjcJ3HOkjg6Ncg3XPIsV0EK65iUZFbV9vdt58xcv6vqet1ZEvIO9F3lHl4NFnA9sj/DGNIP3/f13oGvnTIcpdUHBLDvJIgO52CL1x384/NSLYxp212bRe7JrqOouLNQX+s1IW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h9bdvuKm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574H1m4G015496
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 19:37:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZhETA39faQ5nTi2zmiEubPl3YqYzVEJnQSXgNm1akj4=; b=h9bdvuKmNN1pHB6D
	6/S6iaiA3kebkj+3OBMN1l8fKLNXd3v/6xNZ4J8JQu/KYQTicGIfqudUZmYhOdaR
	+UatLFVjmTXQDIavXf3Xt5NADVn5DO1iznFm9UHtMzndaggB/nShF2sLsGNBMPd0
	n6Sd/SQWbRS+qBVUkKpauOZGL12+Xr5knN+wmTwcFgzWtpuwlk0UShiItN1ODtyu
	DNZ5pjuHmv35gr8ijhjFOW1FRfmaDdxSg7KHUnyTFHtiCVtMpkztMFrNmO3i1Mi9
	2nw2GdUQyIfLj8y/Gcm8FS+L77n34tIoMhD38lXira66iLtmXP4Xp3QZLyWgj/NF
	OWbifQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4898cjpc3b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 19:37:58 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b00e4358a34so2357786a12.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 12:37:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754336278; x=1754941078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhETA39faQ5nTi2zmiEubPl3YqYzVEJnQSXgNm1akj4=;
        b=mlE4wYLCAMNqRq94k29lgkU281Uh0fww8mt7LK72SjdvTf5tpTc14h4AhBxlG4sBh4
         XfVgu4iut5dFj3BXOd5u49GE0t0tVei8emqWUK88OPDWQ3z1b4YfPUSds0E4JgFziJ+m
         O8JQ+SRoLe0GltAJJkM0j+4+KWHiVolUIj4tim+v/0kZvvo6mUzxbUWoHKkX9C5N/riZ
         t5uKRZ2Vdsq0fTZbnO5wkkoll++E8+NVM0Mnh7ModEYOEXFVebPJ0prBlGSAVgaNO2F8
         QX2GmxL0mZYZQz31PshdjXk5WuT5sx9zhqcyXDL6TB+KF/uxwGU/cnf9N88HOIaY2lsV
         NfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpvjEipknfgrOok84usLgouuKRiVW0LwOuYTTfHSPO5Si4GUIcjCaRqq/FBOb2YZheONd26FcRWk5F@vger.kernel.org
X-Gm-Message-State: AOJu0YycjFeOd3BO4a44/jxO7m+2mjsh4DXIRkiDK/TNl7N6WiG0KenA
	DQGlQrmh5z5nPL7RENVUQFO7WeUChJ3Ka0g/egamAyqLqCzT7nQQAI/QPtYJ4ApCVXZnPGdWb5m
	Si/r8zJxOL6thuFwm2zHQlJmofuwFCgEgu+3K7oU7ADksFnwGEqzYS5AhIr8AQPdPkgpuI5zt
X-Gm-Gg: ASbGncvUhWs4bAGiM7lEOgb492RfVralU99r5ZZrpu11xAO7kBvb9GmtH2bUeC379ss
	Pqq7uAVGsffWaYJNznUy4+4qwMKBJwioVpqfFKH7GsIWZzi1WxDS2E2V+RXLTvN97wuLbSlrGYi
	H+7gEqgBrV5z4J3P0GGXJXG3RgLhg/Mko2vIrWIGX7+VXwV3/uSN+Otw2xFqppyDCvNQfJGex5y
	W7qeoyxbHDUuMuPj7gCgezqqWfsyQ3+bTiEFFq55Ie4JnkEJDi58elPsM19VtPUOjxV3DvtNFOZ
	3fqI3BK3iGZIvXZa9SrTtwS7hWlIVA7YGYtG7b7UUWNtF8OmiAL6tOkRJfxbumdeLds+cZp4wYg
	UP3p4SFaThNYxcrzk2NdncM+G6taZ
X-Received: by 2002:a05:6a21:32a8:b0:240:af8:1784 with SMTP id adf61e73a8af0-2400af81b60mr6755152637.1.1754336277823;
        Mon, 04 Aug 2025 12:37:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjZtGErtEqr0mN/bYFEtV8ckk8GVvca6gvVir73rQPTbuaRSj7qE7ZcUwxOg9STp9FAz1DkA==
X-Received: by 2002:a05:6a21:32a8:b0:240:af8:1784 with SMTP id adf61e73a8af0-2400af81b60mr6755113637.1.1754336277347;
        Mon, 04 Aug 2025 12:37:57 -0700 (PDT)
Received: from [10.71.110.42] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4252b83822sm4242439a12.66.2025.08.04.12.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 12:37:56 -0700 (PDT)
Message-ID: <4becbced-8e88-4588-9de6-06f98eae0736@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 12:37:39 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] of: reserved_mem: Restructure call site for
 dma_contiguous_early_fixup()
To: Rob Herring <robh@kernel.org>
Cc: m.szyprowski@samsung.com, robin.murphy@arm.com, saravanak@google.com,
        quic_obabatun@quicinc.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        william.zhang@broadcom.com, kernel@oss.qualcomm.com, will@kernel.org,
        djakov@kernel.org
References: <20250730002956.1812694-1-oreoluwa.babatunde@oss.qualcomm.com>
 <20250730224132.GA1822233-robh@kernel.org>
Content-Language: en-US
From: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
In-Reply-To: <20250730224132.GA1822233-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MNBgmNZl c=1 sm=1 tr=0 ts=68910c16 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=Q-fNiiVtAAAA:8
 a=U-hEzrufn-yrS9YAMqUA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: sZ51S8EvylWpQP-gu1yeDKJbzkqiCwqU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDExNSBTYWx0ZWRfX7Qy+6lkC+2ix
 l2ws3LFnLsCHy/qL+j8tQiZnjbpvPDYQgmpSmUsYa2iFvBTkGP6cbpzZH2uOStwqx5pr/v0FpMR
 bvUX35n0kEDF21ykzCc87e9BKHR7FboqtzQUgKJPo6QxMPzR0cg4RI7ATUH7XFM9ZAmMM1s05Qz
 KHlKLzHSx0xBnYQs9TQYJck7YkIVZWXvgWQBUSXhPzVhDeNyqeYk4IjdQhW1jkc4UBJx4U7uoDz
 b52+UtqNoY7hRKEW9drbLf8swxL1t1Bx6oxFVOtqSrkpLaJyHh3E6Qf2cXp9mXYXG2NY7dzHeq0
 fe4PnfkkD5c5LMqzb8+27n17W4AoL4zzDIldYXDLIEfbka3NqhOd6oUw35cVPkTfAwYMW4NXrOi
 E92+irh5OqUeRfdb7vDio5MsZQS3LMc5l+dQFo3hCVrlDIj4eUJHa2mInU6i1D1Zic7Ok53w
X-Proofpoint-GUID: sZ51S8EvylWpQP-gu1yeDKJbzkqiCwqU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_08,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=545 suspectscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040115



On 7/30/2025 3:41 PM, Rob Herring wrote:
> On Tue, Jul 29, 2025 at 05:29:56PM -0700, Oreoluwa Babatunde wrote:
>> Restructure the call site for dma_contiguous_early_fixup() to
>> where the reserved_mem nodes are being parsed from the DT so that
>> dma_mmu_remap[] is populated before dma_contiguous_remap() is called.
>>
>> Fixes: 8a6e02d0c00e ("of: reserved_mem: Restructure how the reserved memory regions are processed")
>> Signed-off-by: Oreoluwa Babatunde <oreoluwa.babatunde@oss.qualcomm.com>
>> Tested-by: William Zhang <william.zhang@broadcom.com>
>> ---
>> v3: Wrap the call to dma_contiguous_early_fixup() with a check for
>>     CONFIG_DMA_CMA to fix compile error seen on x86. The __weak function
>>     definition introduced in v2 was not sufficient to prevent the issue,
>>     so remove that as well.
>>     Also add Tested-by tag from William Zhang.
>>
>> v2: Add a check for the "reusable" property to narrow things down to
>>     only cma regions.
>>     Also add __weak function definition for dma_contiguous_early_fixup()
>>     to avoid compile errors on architectures that do not define the
>>     function.
>>
>>  drivers/of/of_reserved_mem.c | 20 ++++++++++++++++----
>>  kernel/dma/contiguous.c      |  2 --
>>  2 files changed, 16 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
>> index 77016c0cc296..cfffecb91c3a 100644
>> --- a/drivers/of/of_reserved_mem.c
>> +++ b/drivers/of/of_reserved_mem.c
>> @@ -25,6 +25,7 @@
>>  #include <linux/memblock.h>
>>  #include <linux/kmemleak.h>
>>  #include <linux/cma.h>
>> +#include <linux/dma-map-ops.h>
>>  
>>  #include "of_private.h"
>>  
>> @@ -175,13 +176,19 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
>>  		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
>>  		size = dt_mem_next_cell(dt_root_size_cells, &prop);
>>  
>> -		if (size &&
>> -		    early_init_dt_reserve_memory(base, size, nomap) == 0)
>> +		if (size && early_init_dt_reserve_memory(base, size, nomap) == 0) {
>> +			/* Architecture specific contiguous memory fixup. */
>> +#ifdef CONFIG_DMA_CMA
>> +			if (of_flat_dt_is_compatible(node, "shared-dma-pool") &&
>> +			    of_get_flat_dt_prop(node, "reusable", NULL))
>> +				dma_contiguous_early_fixup(base, size);
>> +#endif
> 
> Add a static inline for dma_contiguous_early_fixup() instead of having 
> an #ifdef.

ACK.

Thanks!

