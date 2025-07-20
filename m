Return-Path: <devicetree+bounces-197972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D70B0B692
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 17:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53D1D1899E93
	for <lists+devicetree@lfdr.de>; Sun, 20 Jul 2025 15:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB17620D4F9;
	Sun, 20 Jul 2025 15:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VFjXZ81q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6041272601
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 15:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753024221; cv=none; b=MTTYdetwgIaBHyNWR0TCopPEguJMwLVnrWTSws/fG+TAl0TvVKD+oQRGXCrhAg5Bmd8I+KbNSAPX9r2K0VYKe2N9uZybuW1L1RI5GikX4L+9J+tg+lTLFiGuwvjLLLfDiMaRONmva1KL+Xsizlkuh+IaEuNhxPM8lua7MXHdbZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753024221; c=relaxed/simple;
	bh=mZot4AA9OBRbAVdYUyvlatmAoO6uLc0Fq85bLmE2k3E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=COMUUB8nY2hLafMDVKDyhvkwX5Y7DWbdmRgj4F0tA/jw6b2sIBWiJrVzATuWsuE9lDQN0qJT7+ZpRqNdDqh41qBLLEDGjq+kqTImmatU+xi9fI2Xz7Af2BKaZ3LI7w2l8eskn05ARnR0D+A2Iae2uB+xDrFt2cIpVw83s2G9xNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VFjXZ81q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56KEr7oN016506
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 15:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dKLtgtQX3iZ3UpPIp7o+/+MXGoHWHRgcps7bsXffPNs=; b=VFjXZ81qMdksJ9qg
	sO7UskCLArVv9U2QTu7Vj37DVJ3oKuJKcOHiXxfInJxzkNsDBqAxcgmLMu8XjW0g
	CO5olz9qOFp7fvh6lpJzIo1im9/4wSGz2hDrSAvxdgi+OfhWNS3/T/NkFb31R012
	sPDMyUraXprrNWFz6eSSGWvDN1uYUWLLEqf47s33VFOkY3P8t/+GArA7MstFOJyO
	rbobxXnbS6cAd8soW2pWTpCaEWZsrckDzg56qktvqdqRy2b1njFKKMvsNL3pYBrc
	yJC6tv88ECRMwqUuWGlKDqowV4JPi+BcNCOKn20tI6ueHR76xTEzQXPjdh9keLpS
	DL6z1g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045vtbck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 15:10:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2349fe994a9so28963705ad.1
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 08:10:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753024218; x=1753629018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKLtgtQX3iZ3UpPIp7o+/+MXGoHWHRgcps7bsXffPNs=;
        b=Vmfhnlp8iyZ8OOseUK0HSzFFhED7RF+MmGADubr4zbkI/2m58B7dv+faune/BebamM
         XVwc0MH07zsfEI0dVy4KLGOKnb6qXZilBmAD4rpk6/54r6RUWOGfNcVkOjAyResK/Wd5
         ae+k1gGF1eUg2sAJ2vjF4AGpu77y5t7MS4qkxhH6swuZMFaPnMCRFOcBMhW6LEuKA3U0
         RRVgZ5yX+2jEJgMIYxF1SocZUzKld1hvrpEroWYxKQfY1Iy0m4ssECvT8af1UVJVSGPf
         YTdZx2YuGuQ55oJDNPxUdXU0Vx5ZnyDmOGMsmgbX86oN3YmochODTtVFF5oqWMwdszo4
         c0fA==
X-Forwarded-Encrypted: i=1; AJvYcCXC3BQuU85cTv7Udg8RgBfUu8gS0iCO37Isk0Dgs3Tvyu2AGHN2weBwphyKOkVeehk0CiESDRv1sLSY@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp6HIjqaGbPrJjUJ1sxsMVXL66P3q8EkLPMdsYk751HVnIN+DU
	QETDnHGX6gr4WkkcFa5oU0rCJueI92483pUYdzUW+ytf1/jGpiq23yQKgtFHr9p1S6vbtA+d6nD
	h8pnXvUXErhVKmTPRyLsSUhtg4yNvPxa/HdzHJbVQ2d8bNdyGf1b8TmuGGXOjoD5J
X-Gm-Gg: ASbGncsWY7OCLwzKMUMdaSU4aONA9UgAW8jk4IRCP67wO71kuTNe1zPpYctJgcoSl48
	I6P427JK8lr5i3ednXC5FO0wFXZnZKNKclsyQBxAQ45FM12FKnuhUTkv+vXvUtsdyH853z0fFfY
	qMd4Dx4zzIQhv8WefOEjJYnE+9OWhVapl53TfudjcKN8YrEMvn8G09peOyOww3m9ssqso5CMLmZ
	Oyj/xLfgLgLcJ3BDiFNvyAHe2n61Af6HX6Vyt6Kw0fbV7lmW3Qmy82opC5CV6WGBbl3WiQ7rhvR
	5Km52MKSLhjnxxm8NcKKPsA7H26IKRVtooBYI1ys1YSRWGB0v6QjnlnJLn0eZTNHxK0v/tdHy78
	rZXEklA==
X-Received: by 2002:a17:903:3bc5:b0:235:6e7:8df2 with SMTP id d9443c01a7336-23e2575a8d6mr239688715ad.41.1753024218462;
        Sun, 20 Jul 2025 08:10:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkSMhA+5+f/w8vyXIDaab6OyFxzkO8tWGVOAjJDo7yRKJkElqAEiK3qX38BKPQSY5MIO0xrw==
X-Received: by 2002:a17:903:3bc5:b0:235:6e7:8df2 with SMTP id d9443c01a7336-23e2575a8d6mr239688385ad.41.1753024218015;
        Sun, 20 Jul 2025 08:10:18 -0700 (PDT)
Received: from [192.168.0.168] ([49.43.231.217])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6d1fb6sm42918305ad.160.2025.07.20.08.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 08:10:17 -0700 (PDT)
Message-ID: <877bba2a-b41c-4350-92b0-5904626b181e@oss.qualcomm.com>
Date: Sun, 20 Jul 2025 20:40:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: add glymur interconnect provider
 driver
To: Georgi Djakov <djakov@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: lumag@kernel.org, a39.skl@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        odelu.kukatla@oss.qualcomm.com, mike.tipton@oss.qualcomm.com
References: <20250716151535.4054172-1-pankaj.patil@oss.qualcomm.com>
 <20250716151535.4054172-3-pankaj.patil@oss.qualcomm.com>
 <y5mqsl7ix7y54v54hltt54n5f3ofzg33lkgon4aoayy2nnkojk@r4qlsjd5wdqg>
 <0a1ff771-17c5-44d1-88da-5dd54c303d14@oss.qualcomm.com>
 <ffc17695-25e1-44d4-843d-d06d17e8da32@kernel.org>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <ffc17695-25e1-44d4-843d-d06d17e8da32@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=687d06db cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=zhpjAwSWsGC/MCksz6s7dw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=eYMzjZcO36U7msNfEToA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: -DUT6ZOPq01skYr5DJrASiB74IMAxL-O
X-Proofpoint-ORIG-GUID: -DUT6ZOPq01skYr5DJrASiB74IMAxL-O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIwMDE0NiBTYWx0ZWRfXxHSMJqueQthj
 C2nGXxPzkgX0bs0x43v3DJyIW/6yTWOLHiLPQdx4Dh6Hn7XDfN6wiWHHkIWBNCNo5YmTieNZyaD
 NfZrEzhCcBwN5qhqTZiGsD8fWErqxUukGGQf5wqOnQK9glL40LfC6qDvR5dPtSD3urD3RFtjZCs
 DFrnnEsWulOa836BXQta+arDQ4Xwy8riODY0O438eopj4+7j8Fqfp8e17r0hPcTwjh1JgK0vWBO
 QtrS2aCyOZoH5aNKy3hXUm5P4D9Yrl/x85jLUMmnUduUjxIceSzd0ywLOAugUzUbKlmKWHJ15t6
 TgL/XBI/erl85AKdaic2ZXGT9gKxhLgCBARiEJwI3y8kDxIStPksaG4KQwlyBLyx04mlK02B8Je
 5BnOOdhdWxXGg12J60oNuvtsOVHXYsnW/Qv4NA4zHtMqpn33oU+ljjWs7nhEEL75fZ7u105M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-20_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507200146



On 7/20/2025 8:32 PM, Georgi Djakov wrote:
> On 7/20/25 4:19 PM, Raviteja Laggyshetty wrote:
>>
>> On 7/16/2025 8:58 PM, Dmitry Baryshkov wrote:
>>> On Wed, Jul 16, 2025 at 08:45:35PM +0530, Pankaj Patil wrote:
>>>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>>>
>>>> Add driver for the Qualcomm interconnect buses found in glymur
>>>> based platforms. The topology consists of several NoCs that are
>>>> controlled by a remote processor that collects the aggregated
>>>> bandwidth for each master-slave pairs.
>>> I'd kindly ask to rebase on top of [1] unless Georgi says otherwise.
>>
>> I think you intend to rebase on top of [1], but forgot to mention the link.
>>
>> Please provide the link.
> 
> Rebasing on linux-next is usually fine. But why not use dynamic ids?

Sure Georgi, will make use of dynamic IDs, also will rebase on top of linux-next.

Thanks,
Raviteja.

> 
> Thanks,
> Georgi
> 
>>
>>
>> Thanks,
>>
>> Raviteja.
>>
>>>
>>>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>> ---
>>>>   drivers/interconnect/qcom/Kconfig  |    9 +
>>>>   drivers/interconnect/qcom/Makefile |    2 +
>>>>   drivers/interconnect/qcom/glymur.c | 2259 ++++++++++++++++++++++++++++
>>>>   drivers/interconnect/qcom/glymur.h |  185 +++
>>>>   4 files changed, 2455 insertions(+)
>>>>   create mode 100644 drivers/interconnect/qcom/glymur.c
>>>>   create mode 100644 drivers/interconnect/qcom/glymur.h
>>>>


