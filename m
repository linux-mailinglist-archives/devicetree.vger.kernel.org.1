Return-Path: <devicetree+bounces-245189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA9DCAD4E0
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 14:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFC43301C3F8
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 13:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B67F2C324E;
	Mon,  8 Dec 2025 13:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S2ZPVfNl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZQuz/Ya9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2B02F5A34
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 13:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765201248; cv=none; b=Pidb9U4cDhfpRVOL8yYJe4QSGkZZy01RwEI/ifzLp42jsUQSBqcrQnqWMYVqrOWYWrarYgrRbIt7exJTy2YqVQFzlBVqi8QhM/fOjAhydlJiKvrfQufg6QtuSKZwb0s9GO9ypq1G8n/f2ai2HSTBRPBD5E4spj/YXf2yKVELGfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765201248; c=relaxed/simple;
	bh=c03rWGellbVHJXYhUe7LbI0Fsb1v9e2LaGoYvPo9N9Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=PtVuxsZdEGSY4Cf7alt7BvlSuFb/sZedSVyvrsL/uDV1BByM6Ft4COL0OK3oTUiAkw4RHG3VbCTJbp6mUtG3gBQE2hqmb1LkP96vZY1PClfQ2SghtDR7dlR2G5nEj/EGxU9CRmVHIAmYMp/kGcjLmYBQTaOcsyqAqZI9kZFePZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S2ZPVfNl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZQuz/Ya9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B88vke64184472
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 13:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ng5jW/XFxY6TkKxsaL1XvkuCaD/iKRVXnFTAkSbhtgM=; b=S2ZPVfNlrJdqoRir
	iGLUEyqETeeL22xKtxba25mTF4epo1abrhUb6uWju5WlmuR257GKkMSbH1lyIJ+f
	p1QYgtd60xJrqFl58DVKR8DZdUsnkBo2IRY1HCrHDZKuKSS6+ShjR9RD2lmmeS5t
	4iBt6oULzncVqOxoAy4IFG7slTZobB0Dmna+5JXuDzR+NH3jYWZ8IptFFU4nEWkh
	OzH8KWJi2+tJtvUveiusfCoWnk7oSgO5T4Wv490v7f0xHmvDZQMjs2JfQkBZPLL3
	J1xqG+QNZS2Xzkl16GOs2M8PNHjIcyz5ixsE1Kh0jMm1xH3HJdLVYzrlFvfvN/jM
	xLwsLA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awume8t2c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 13:40:45 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297df52c960so90310005ad.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 05:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765201245; x=1765806045; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ng5jW/XFxY6TkKxsaL1XvkuCaD/iKRVXnFTAkSbhtgM=;
        b=ZQuz/Ya9b1qqGthKr/RQ5AQKxD4nMFGJoPznJO22awecSClYhoj2G+4HsdkkfdPfqz
         ahRHonexWsmRXneuc7SiuDASTzC03r4YhnOSNrUbjnXfB4f7JzMnL5IRvzqb8/PlgYP6
         G2CHqFf47h7wMQ8eLFJRE5Dxqud7UtWc2l0pWnt76F/deTmekGUa3yo3BzNDs8q1cu9f
         0v0esWRdgEoXNEgVr2eJSKVQB9A2sC4A3RhEw5YQs2duc61Osh+OeZ6JPhk6JAfhJzKg
         Lr040wSyrcqqHd98t/mnP3h3u+7+anfF9fvaW8o+p1vLkDgd/PaL0M2HXeUs+O6fxgtZ
         vTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765201245; x=1765806045;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ng5jW/XFxY6TkKxsaL1XvkuCaD/iKRVXnFTAkSbhtgM=;
        b=XA4D6LozRvHENBAO9SbeLaDfqC+Mpfc9zk5Slmlk0bCjblYbPSt8BALVIm+zIc7Z0x
         ODqEBr7587kzEMjd6v9b9gJe9VxYaaNuBCgEAWTAP3pLpik8SxfjCar7eDfJsDyZOLXh
         VgE+hw7xp1tFXkD+jtEOFg7tgVnkwQyo4qAwvCe3fac7btkKLn+LHxJPWmtvrwlt55of
         dM2f5AlOuyveRpcW0enaea3gMDqzSu5/i6M5S4sHl3tH44Uarly+w2EhW8n5kGH6FF64
         DlUOBgLVQyh6LSnDOOFbL/TMN4wcCrXThrn2/nuhpeWdEKHCusFp5MFuDPLowVR9VylY
         NBJA==
X-Forwarded-Encrypted: i=1; AJvYcCVd/E+7CTqrk7mMegZ8tjpQe2UNZCegfBE3KAK1xHsieybGL4Ui/Eni3/7HT8MUYsFn6Us1oHeFs2Ps@vger.kernel.org
X-Gm-Message-State: AOJu0Yws90Ck3fZAfbjEGKzoVy1TABcg85lLLmH+0iD5/WkZwlSowr7q
	Qr0jUjajZfSt4l2a4uVFOY2Q/Lw8S5vfhAbHV3GVlqBMQXUvyHotwcE+hsOpJehsRWhPWZiv7mo
	aLyP/Nz2QuIjoZhM6hkOOHeCj+8PRP7gBEZ0OQH4jXOxBrCmsmUHJsG0wPFzPQHKK
X-Gm-Gg: ASbGncvuDjjegYBhfl5BHGgSspA4538oRetFRn3r6mLqSfKW/EO0Nx9eBiZiEXdQeU/
	5jnZnS9l0RuJ96m7piqxCpcEFIHGRgFwxo2Y0EB1JGmZLuApOt5B5Xld3bAJtk2ximWapUAX2dY
	VqGBvBcVchLPcA6y9IlijKExdRqcwYmIVu2NZUZCLc0bPpdYDyeOKklBAKnSBijhSfHyCZn9gOZ
	vHx187i03t5Hq3/PLDH0nvvqb2iGlVdArWRQhHKHD7mdSng95m6nNJevNHjqEIVztn8zfR/b1Rf
	p1+0TPfgFoUepY57qd8nYzYfHG/0qmSOut96Z6KGBP30VDjBK76SlQxkszk2f5Z/TpxgML6CS6O
	NtzMP5nntH24Vrqv3dBEpEToYLLqQECN/Xp3CYA1n9EMZaA==
X-Received: by 2002:a17:903:1965:b0:295:5625:7e41 with SMTP id d9443c01a7336-29df57924fbmr76806175ad.22.1765201244970;
        Mon, 08 Dec 2025 05:40:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsFuiR54Gi4iuunMhcDxbWCnuzkSb4g0YincgSlJk3qleZrdBe8zXZT+yJe2Y4Hlr/EspoRQ==
X-Received: by 2002:a17:903:1965:b0:295:5625:7e41 with SMTP id d9443c01a7336-29df57924fbmr76806035ad.22.1765201244432;
        Mon, 08 Dec 2025 05:40:44 -0800 (PST)
Received: from [192.168.1.9] ([205.254.168.129])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf996sm128464715ad.30.2025.12.08.05.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 05:40:44 -0800 (PST)
Message-ID: <837be315-2eca-4990-94e8-6d0765a8ba44@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 19:10:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, robin.murphy@arm.com,
        will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        charan.kalla@oss.qualcomm.com, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
 <20251204095530.8627-3-vijayanand.jitta@oss.qualcomm.com>
 <75d44bf2-c518-444d-9b15-fca067e25877@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <75d44bf2-c518-444d-9b15-fca067e25877@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDExNiBTYWx0ZWRfX7swH9n4TMrIb
 76aOzrrRO63t9mannVKORVnMPPlWsLxJt0h2mPyYpCgc81XbdHjNRDXn/kSW5x63yeVbpFB40Yr
 U3kkrxNv87iuJeYzSCe61pKsklh/R4ooniH71ItbQxUNBIcXdVcPMxQlIc8hQwpd3W3waWuywNx
 JknHfgGxdv3gjq6LL+LfLiB3HHIZvOutLo66gHjmWETBV1ZpwLD+5v8mkqPSDakmoY7i33CtLSA
 HiTvgMwacm51lC2RIQSd+qw/bKxzC+sYLPRvsI/xPVn+kp5WseMBgpX9KMY8fLcon4fnhTWlXgs
 OUVINBW6uVeKtoBVYaUdZ/3YSCiYbZ4eXGb7GnaHjb7hHYHmNtVbeFySWedGOdjiXAbufhOP+2Y
 gPochEkhjvDDRfMWVB2BUNz53DFI4Q==
X-Proofpoint-GUID: DlZxoyVcTI0HM8ksXsRuxtMejo5It4ox
X-Proofpoint-ORIG-GUID: DlZxoyVcTI0HM8ksXsRuxtMejo5It4ox
X-Authority-Analysis: v=2.4 cv=SvadKfO0 c=1 sm=1 tr=0 ts=6936d55d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=qGVSFsv8/Tytdn00NEnLeQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GBqTS8oSEQGj30kF9o4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080116



On 12/5/2025 10:17 PM, Dmitry Baryshkov wrote:
> On 04/12/2025 11:55, Vijayanand Jitta wrote:
>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>
>> Introduce a new struct type where the optional arguments passed to
>> of_map_id() are in struct. Subsequent patches add additional arguments
>> to the struct that the caller expects to be filled of_map_id().
> 
> Why do we need a separate struct? Can't we use of_phandle_args instead?
> 

The idea is to use it for multi-map support mentioned in the cover letter,
where we need to pass additional context (callback, dev etc..). Having a
seperate structure here makes of_map_id() interface easier to extend.

>>
>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>> ---
>>   drivers/iommu/of_iommu.c              |  6 +++++-
>>   drivers/of/base.c                     | 31 ++++++++++++++-------------
>>   drivers/pci/controller/dwc/pci-imx6.c |  6 +++++-
>>   drivers/pci/controller/pcie-apple.c   |  5 ++++-
>>   drivers/xen/grant-dma-ops.c           |  5 ++++-
>>   include/linux/of.h                    | 23 ++++++++++++++------
>>   6 files changed, 50 insertions(+), 26 deletions(-)
>>


