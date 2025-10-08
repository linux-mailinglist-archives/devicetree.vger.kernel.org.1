Return-Path: <devicetree+bounces-224477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BD6BC4376
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 11:54:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7382F402D60
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 09:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82E4D2F532D;
	Wed,  8 Oct 2025 09:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MxYQueV2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8152ED151
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 09:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759917248; cv=none; b=teOTcqsGIacKxXsarUhKUxr/qu6r+13iJly1O9Ml+7vsn+OxdzDRB/pCgz9F5rlzkEqVZlzfYJexv7/xWy/EkwEmZj04Jr5CVDrdrUzLQl+qbUGtjIb7lOhA0WNOEXdPED7VhbUNtYp3D6hC+kEkWcR0vO5Jt6SfPEHarCzun0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759917248; c=relaxed/simple;
	bh=1CQtlEWAmGoK1pKpKe15XWPh3wub4+1F2ckrxKV7f1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jO+Sxyg7VppAjZd0y857TceEZZ9SI3IcgsekUTVOwueF4jXQZ0CFw33NjPvdifpv6kuaHpRVL7Lymk/GXyFgzJ+fNs8yWnhbcHmNPkYv3/RedsqaYwf3/Z7uStQBUcU80KsYgAhGa6b8YQXI1d0Jxc4ySQWwJATVrKSDdTjRqQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MxYQueV2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890SMh009627
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 09:54:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aFIzjuGgDbnK2cw8+042MLhfbBNRjpqs1JtRKpKEdho=; b=MxYQueV2QahWNEQl
	sizcDke5goe/47DMk1wbY/Psl3FM+MfEEDbNA2Mn/in3AMLCqODCYWSqT3xiae35
	AA01bT2lmjt27LeUvwJVsqHi9DLiYDpInPHfss7SITUB/uchwOpwYBBKMso1+mUz
	uW1KoMg0cLSyuTDA6oommCf9mg6Xx0BXxnwfpFL3V1TVXgyS5xvjLU/bbqmYt0Su
	HrQpykT+EaeChT4VdTxavfiRocBhkeYnwgpLosvzcEzlzpY/XaFMco+NesB6VfXz
	6Two1fn5a1kpzSJUyr/+VXHJVnRg1cx5bnxmVnrYbB9BJItce3aKZ27Lbig2+UVA
	aOsLgA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junua1d0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:54:05 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-286a252bfc2so11402175ad.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 02:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759917244; x=1760522044;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aFIzjuGgDbnK2cw8+042MLhfbBNRjpqs1JtRKpKEdho=;
        b=l6unOZtDU13/YhiUYg9wwXmyg3jajD/B16kH7HYyQbVRYGPMyJJxq4fyoMFTsMHktk
         89gy66QcGjV/lW0X3W948Mt3+rB+1iaSfm2iJHElegySUyrTI1i4a94xWXIOzh6aQfBj
         xrHNgPdmhZ3YR1RtUhL4J38fV+Fbuawxui3/bSC8jKVtHmjzA2sccir6OhY8Ii4L9dM6
         1IJCpCMrIzyhCy2P4q1ZIhzGPFCJw71iQ00RDn2UXC17xoBGPFTB2EmX9XHB0epmEjde
         TBDHtLIQ2pY6Gn+VkGm5H6TLEWSjrzlVfXj4T3tqb8acuJhzkqKXei5uuMm6eFKCwXsE
         ntPg==
X-Forwarded-Encrypted: i=1; AJvYcCWH003v6nMrXQILKovSEfCci64plIYBHJOP3PZYVrG0+SiUasWcTAOc2T7szbChA+R6H7kVXD7FGx9V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+rl40WLLZFYRe0aPlr7nOLjQ4vTuqO2IF2S7MxlYNpHIlolvW
	fpWeEiJwHBfucJuxX+WyMRIevVQoqoBjwg5C+qlRZ8SfYPsZA0fqDUSKmarZDGsIWoZCu7G7IyQ
	9G4j2xz9YHzCCHYus5KmL1jp36HtnbGv5RoIEfj4ms8LVRa/lImkulIK6w9SBO+U3
X-Gm-Gg: ASbGnctzlID7Hx3Z87i7z5R1yHvIx2u0UhqYrTMSEnXhDoviaIUzbiVomQiSRzDQ0pn
	gCA//wgpToq1978fgeTYb+tPy9tqD7i9cOwGXrTFX8BV1ZW/W0dMq3Ba5b0PooTzC5Qs3/9kQjE
	lcS8kOY/zkyxbmvLUEDfeYtB1KzkcIdcJyhqzwxrILh1GrVnvUlWHB1/9xxvfXsG9E64wZ26r/m
	c6tgak1REFJgF8E8fl6KfJKYhAl4mDEw0nX8meRLf2m+3PalAYon0P3nPjIUQtr3B/M1r4eihiA
	OSSfvxL/UZtJrgAzwxHiMuYZQIP0D0ySVSMz0dLhzPGcJdE20T8MXhL4h7bOycfrPQXxXvaM9Ob
	r0Nal
X-Received: by 2002:a17:902:ce0a:b0:26b:3cb5:a906 with SMTP id d9443c01a7336-28ec9c97565mr77582225ad.16.1759917244048;
        Wed, 08 Oct 2025 02:54:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOjlMcCZKwjgYLPXDCXMSmausWa/VxmHFDQuPR+sRg5qtn01XXj7w6EtvhXg4/+h696ZfGow==
X-Received: by 2002:a17:902:ce0a:b0:26b:3cb5:a906 with SMTP id d9443c01a7336-28ec9c97565mr77582005ad.16.1759917243499;
        Wed, 08 Oct 2025 02:54:03 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.249.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d126ad9sm193842195ad.45.2025.10.08.02.53.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 02:54:02 -0700 (PDT)
Message-ID: <12edddcb-7b98-503c-c5fa-3acfd3bfe5b2@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 15:23:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
 <nuunkv3xwfes6wed5xf4re2efakndvvrfl4lhmenilkic4sjiy@5cb2f5ygegvm>
 <522d7244-0003-a42e-9be0-1d353df8d5bd@oss.qualcomm.com>
 <oimuo26ohcye74j6rl5hfbmd4ip5wzudhyiaibf74b5zmjb4vl@xh3dnp7gmvq7>
 <7c6ab647-0c54-4480-9eb2-5c2bbf5f857d@oss.qualcomm.com>
 <b5d465e9-e84c-fabf-f275-3d0a5abf764f@oss.qualcomm.com>
 <2ppixuzddqmpa2d7nkvwwbfn4dnt7j7voyqfqcqeokbkzjg2lm@mokv4cihiuw2>
 <27381eb6-18b8-774d-5171-6326dc6bd9b4@oss.qualcomm.com>
 <09d08a54-2a84-42db-bbab-050dc1487f6e@kernel.org>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <09d08a54-2a84-42db-bbab-050dc1487f6e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: eHABENDt95WXZkfghmji7tUhb448zGtN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX2RnQAha7Jr/a
 JGgWI2fYReN9XKnQyIbC7Kz4ssvFCslGam4c7durPNnOC3HnqxUHNukY/G+owV1PWDYREFwCvWV
 XBIdan6YdcktcPTkwXrKXtMtvGxsGffrsAHr9pvk+++iydan2J/a5k4AyMXhxMcP/INaqVu3fF+
 hYpbfWhrMLWTZmjz0VBu938V8aB4LHCBhjsNjqIP6xFcXQMsV/nMN+3qMgX3vNMJ75iP4xQaffM
 Jf4lqCDhqkiK5M5Sl7BVV4C0IhWUeOC2OHWP5CAaNJLIbZcWMiSe1lIoyMpVYjJ3Nx8/p7J4wtI
 3rMhN6kYpv2QhAiF0vdRJNGHTgAyQsoPKjURSEkchrftPJFJ0Wo0xTFICnY246aGtWtmQaS4Y8M
 bi/v14mrXkNDcbgLnDXdq3c9PNcGYQ==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e634bd cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Qj1tmCQJ68Tb3jnDqiTdDw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=xDDSp5OMhEVwG_PMfckA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: eHABENDt95WXZkfghmji7tUhb448zGtN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023


On 10/7/2025 7:28 PM, Krzysztof Kozlowski wrote:
>>>>     then:
>>>>       properties:
>>>>         power-domains:
>>>>           maxItems: 6
>>>>
>>>>     else:
>>>>       properties:
>>>>         power-domains:
>>>>           maxItems: 7
>>>>
>>>> Also, what is the downside in existing approach where we say that the hardware
>>>> can be functional with 5 pds, and 2 are optional based on hardware having them
>>>> or not ? So all combinations of [5, 6, 7] pds are valid. IIUC, the optional
>>>> entries are made for such cases where some hardware parts are variable, please
>>>> correct my understanding.
>>> Kaanapali hardware is not variable, is it?
>> By variable i meant the hardware is functional with or without those bindings,
>> hence was keeping them as an interface but optional. If that fits into optional
>> category, i can keep it existing way, otherwise will update to fix binding.
> You describe here how SoC is wired/engineered/created. Can you create a
> board with the Kaanapali SoC where the power domain is not there?

Not in kaanapali, so it explains if and only if the same SOC can be created
without those specific wiring, then it falls into optional category.

In the next revision of this series, will keep them under regular binding (not
optional).

Regards,
Vikash

