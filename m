Return-Path: <devicetree+bounces-234782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 03891C30A24
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 12:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C295F4F9875
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 10:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FBAD2DCC1B;
	Tue,  4 Nov 2025 10:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Eef/FjtS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GIAmqPjd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D602DA765
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 10:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762253844; cv=none; b=aGfGZ4O5QYYx898bs+YHN31W1/u5WXOl4k4dHKR+7vgZghH2Jh3pVI8eY7Rk85zuSN6F7eF/N1WXlFwHK0iknK24LA67DUFTGJaDUqKyyZJDiKpzqKnpoRO3SD29OzbYYHAx68lubxnDme7Zqv/o3d5iZJT0hOhDIwiAXK6+jL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762253844; c=relaxed/simple;
	bh=xD40Qn7ySb+G4ifOmdQ3plBa87zSBnrJ9YWsryZpG9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CW6au6eoiRNKBdsdiPsgf7kgloeV+e3Ur9U2DKaoDYSAz6GpDPwRqIL06kzFXJq4fTCzC+4ilODFtnoHhSafwhpLobDf5BLNbqA8YDMYtuw3rMnDMfLQyICZu4MKWDchbHjGRw5AMX8vIA+ibD2geShYMSiGDSyqlEYzAM2ii5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Eef/FjtS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GIAmqPjd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A48fvQf1489412
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 10:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	17iSZ0rQq9YOzSnIopSJVXFyQroZzaAj5ZsSQQp9i8A=; b=Eef/FjtSWHTDe0pl
	nB9UI/jxuKZvowzXTbsRmCAI07UniPq/9bJ2pFTZDTGO6wc0Xqb7mAk7FxQP4HfU
	RffICIUjQ6IkcOX9PsakdnXepvGebd1VQa1PXawQt9Ii5eOpB0f94Qju87IZBpzU
	+B3dEy+jqRrUpsJ1RPtLVwPrCyoYKXYWYah9Z6YJNrzy7FiBxrAu4tL+E4/w3Kwh
	9iXqhsXxY7xESbNpGA/t3b0Y65ESGDIFbWPJ7YBVvwYbzWfNI7gNrTGj7MnPBKJ/
	kjCq0KEsA10Dw+kyzkNCG7BgjdH/YHXD+ymBYE87Uah9WvqDTw0iWCM5NVtshkwZ
	+xbyiQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7c7jgrvd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 10:57:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a28961ab86so4535759b3a.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762253841; x=1762858641; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=17iSZ0rQq9YOzSnIopSJVXFyQroZzaAj5ZsSQQp9i8A=;
        b=GIAmqPjdwnEfc86Vv+d9dAtSN7A6DCWL5G/sOVYLaZK25Qx12KkStQH9Bi6Ol2iETq
         ULCj+WktHw2Xw6QO4N/XAYSIyN5618VkxW4VUqLJAZrCLBru/VPKdmERrJVwrL6hkZSL
         DZ1vEggZ8B/HHA+QCubpPtQyg2bVLCia8HUmkAGdPmcCWfAmWTOg0JGBWirYTeO/0wax
         QChk5i3tfliS2dzGCUQMGaruVCJAWoe/XWX1AwdVm8UjjHNQFsSXTlIxV9mHOFRu4Akv
         NHlcOH8R+P7oXJ1kfZgN0uXQEja7rNA6OtMgxbnRJFAuCnMVffdpivjrnsQNkASj837A
         szRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762253841; x=1762858641;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=17iSZ0rQq9YOzSnIopSJVXFyQroZzaAj5ZsSQQp9i8A=;
        b=JKmzRW2V1FuqzeW3eUV29OMSpshA8fPJoKDFAmxOyhWcj7CJ0LtezMhwgKG3NvmTuu
         iH756AMGvFuAa7qSJkUD9Szs8wBjPC6GpczO/hqNXN81cMxbhS/urDWjcMvdXTqurRhV
         eiBo6H0kFjTIxMgYU6SLBrw7DkIaFpAzzuSoHr7omSKQ5sk167H46SEhZ5d2qMO/KtWC
         I2EMRf3MFMxtrHgLLyj7mOfRS1bOI+3NbvJ2mn+6cqgeSn3CGoH9Ijx1baaNUlGucMrG
         NPsBHMSBPMJLj6P2+igEzNSCq2wzn7l1FmqJbGFbF1tKf1nIRNL/KGkfi8dWr7d0F0q1
         DShA==
X-Forwarded-Encrypted: i=1; AJvYcCVjn8Br3iWX3OB2gE54H12FZQdx+8jg1RJH1mKkh24c9lkJ6ghS738sIFoR6F3hLQ3OCNS/1wfdkKa5@vger.kernel.org
X-Gm-Message-State: AOJu0YwW2rOlT2lGT2Fs/v2xah6uO8GmobhXSAl/JmteHX4K6BUs0CCA
	0bojUYjB/LNv6y1U++/jzhfbs4DNSXF6MsSD2VlyxqbN4uSeE2ERchSy59/TBH0JnhCQfU6r0Dt
	VpjeKMXlxi/rnLMuWXyL7u8KJ/f8hfkets7ofU4VW122O5+9eltrmQU9uDcfO+Tif
X-Gm-Gg: ASbGncuCt4ilxEOhB0F9kZp6F4DB4qRQQfRPS4aJjib68b8kMydC1em2qBaP2LIQr6G
	/O2W2I8wt7OI7hyJu3OIQcugMVydjcL26lpEOpyKNFpwdB61/W0502eMXj1UxrjarHIoR4+9not
	Cz2AxCahzhShckLPt/akNhtJaWbUORiVGWJoEB3jzofVFCjF3txw+C8gLOefyUMQ8wnngcsDcQ4
	zcSIjzgigi1ZXLYffN2JINFLJB/xq1Ot/wYA8v5ad2dFn6MtsdIncAhC1djtkaBtlVH8aopEO8E
	ipGDAtsBFYJC3JAqmvTwSUY5++HGKfpBdn1gDcGJ2g0FztvRNDW/3m+nmUjkSO2S9IvZBYTUacq
	w3Tvc7hQO4gI69lJKZZ6z61ADOE4=
X-Received: by 2002:a05:6a00:28cb:b0:7aa:4b8:179 with SMTP id d2e1a72fcca58-7aa04b80436mr8377804b3a.1.1762253841070;
        Tue, 04 Nov 2025 02:57:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHeauPRKvSaQfwjZoWhPXPVkD5UEZgsLll5lxQv70Owt2nEGVc1ASjz7ivNXbz+Pbfiny4nw==
X-Received: by 2002:a05:6a00:28cb:b0:7aa:4b8:179 with SMTP id d2e1a72fcca58-7aa04b80436mr8377780b3a.1.1762253840541;
        Tue, 04 Nov 2025 02:57:20 -0800 (PST)
Received: from [10.219.56.14] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd382ad96sm2563399b3a.22.2025.11.04.02.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 02:57:20 -0800 (PST)
Message-ID: <2dd128f2-d41f-4eda-a393-260098749a07@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 16:27:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] of: add infra to parse iommu-map per IOMMU cell count
To: kernel test robot <lkp@intel.com>, robin.murphy@arm.com, will@kernel.org,
        joro@8bytes.org, robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        saravanak@google.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <74d4ddf90c0fb485fda1feec5116dc38e5fd23cf.1762235099.git.charan.kalla@oss.qualcomm.com>
 <202511041853.IxYgvWlc-lkp@intel.com>
Content-Language: en-US
From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
In-Reply-To: <202511041853.IxYgvWlc-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA5MCBTYWx0ZWRfX7W+b7hFel1SP
 JZAORELf9fha/b3kFTDtkKOOjNOgLu5kKOJy10qj0n2sdgULCS9nJueOM1ONNGa2EuU4JCKiT5G
 xCqjwQEEJLlnexnHR7k2vCIWwWO6Y2Wd0QnBxbyfty2uaL5df+1Si3eSPYkR2up8oJxn1PkNPN2
 z66Ac9kljLbjapf4usFK0XE8n1VkGpAmR1F2LxiLwA8oyMYbwUjRZWxJbYlsdk1SV2wT0LalJLJ
 0fmbAIoMBLt9ZqGsB0fKFVvwUw8BVrQh4p+XRXVWf/U5BxmxPq9cU9RxZgfJDeQXMyWJyQEfCHd
 tFx6UJq+q9eCZ2qhl1b5cFdjclQXaF4O/qFKcXUly3p8rbj+2PAwqRgTccafimGjGQGogbxHXhy
 rClBUlIas4/G0qVeo6SosMgyZodXCg==
X-Proofpoint-ORIG-GUID: Vq7h4vjIYyLxftFsBqSUquxhBxynPHif
X-Proofpoint-GUID: Vq7h4vjIYyLxftFsBqSUquxhBxynPHif
X-Authority-Analysis: v=2.4 cv=DvNbOW/+ c=1 sm=1 tr=0 ts=6909dc11 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=yE59AjuNBYSqEwnZTzMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040090



On 11/4/2025 4:16 PM, kernel test robot wrote:
>>> drivers/of/base.c:2127:6: warning: variable 'legacy_iommu_cells' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>     2127 |         if (map_len % 4 != 0)
>          |             ^~~~~~~~~~~~~~~~
>    drivers/of/base.c:2130:9: note: uninitialized use occurs here
>     2130 |         return legacy_iommu_cells ? : of_iommu_map_id_actual_cell_count(map, map_len, cells);
>          |                ^~~~~~~~~~~~~~~~~~
>    drivers/of/base.c:2127:2: note: remove the 'if' if its condition is always true
>     2127 |         if (map_len % 4 != 0)
>          |         ^~~~~~~~~~~~~~~~~~~~~
>     2128 |                 legacy_iommu_cells = of_iommu_map_id_legacy_cell_count(map, map_len);
>    drivers/of/base.c:2125:24: note: initialize the variable 'legacy_iommu_cells' to silence this warning
>     2125 |         u32 legacy_iommu_cells;
>          |                               ^
>          |                                = 0
>    1 warning generated.
Will wait for additional comments and take care of this in the next spin.

