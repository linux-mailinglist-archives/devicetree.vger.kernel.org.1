Return-Path: <devicetree+bounces-158705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 676FAA67C48
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 19:53:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 398B17A74E6
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 18:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4CB21325A;
	Tue, 18 Mar 2025 18:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MlkrNYcy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4751CF5E2
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 18:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742324009; cv=none; b=R0viTaZRI6TvoYryIJ0YslOtgd5rYpSY7Unhm5KvlWWBWunB5vhsQb50KShFHD/NsjbzFjUm9kgCKj8rvyd57NI3+vpAE2rbvn36GStvIB0MmdO3TyJ7aMpv2mRgAC4+nPBNXQXbqLKc/GrQWrKBbDMkvRxYIgJhV4V2Y6lDHZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742324009; c=relaxed/simple;
	bh=wAcLtNQ9o/zh9L9fmBOLmPpVjd28dTosIHtkS8e7msk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i9Ps6TViNlWjjZ/yL+5lC2GynQ8Lz+U6e+60vaN0HKUag2W5mTMBd+2/Nutc5S0b9AstMLlqIEBUSlrWpijVyFA3Bubh1fDG0QhSCYINIS6j7RwJXlKQdNLtwIkpJa+x0W5N46WfdtC3GYy1VowvjGPb0/s7StTQitYmkJWB+rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MlkrNYcy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAbhTh024002
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 18:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FzUJl3WHjhcEBJ0bAL4awWr4SphxOz4pTp92LYZRfvY=; b=MlkrNYcyX6P+NZu7
	S/IjSNcNXHDT1ZgF9dfbIUM7ZscfiVHKGBdlEEubNoQWMRqQbG4VGEAb8z4EPQGo
	TvYsEAJv251E0GKevM+62pMfPGk3rlJlidDoLJ0R/VLNATL94Y5BP94b7XNGeKK5
	oDSG19Qc1Q9NeBnGxdYMTWAaZT0hAxtVhMqxq1h1MYe6/6ln9x5s/AX6oxifMfSt
	+TNyNuxexf1kpW1/GCqngTiA6qqL022eG5dp4FzJYFbUWNBlwO+wInTcKn6iSuVJ
	FVYqDbPxrPqeezT3bu6ph7hT+2uqP87aDPjzMl0oZ1pzqhEdKHnkNiVkd8/jxo4b
	wpxN9Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbjvhv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 18:53:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2240a960f9cso94028385ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 11:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742324002; x=1742928802;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FzUJl3WHjhcEBJ0bAL4awWr4SphxOz4pTp92LYZRfvY=;
        b=tmLaJewlm9Qy4iZI80IaCe/u1Lrws3DO7OdP9vxpltle862YmwDNhQM2BMBKAmNC/X
         xVgXto1CUtJcV2NgVV4xrS4emss/e+o0bD4CIQ71UQJjmVY9tsbeZZHLc1nZrXZ+eRTj
         SPBI90UdpfCZlxqDrrlUAyErKBcRQsQnUU+gOrqCwDBhYQE08bqYDoIS702Lcd99/w1L
         +v/HvKzSUuqXxcjB1aY4wln9jzOGz6kQbRxETKkyUywnmtaS4Lnqy8DNxHylwA8RuS08
         l0/uFcW4xq54AY6blI5PKF17U/dfLl1zI4Vw+dVnvUF/EArEueiCYBhTDe/SwjTPopOI
         LQUQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3OHScYeXLI5Cn+A5KJHv119T8hqg7cMyMyQCG2fxrG0PcZrNBrXSmYxPSWbY8I/QqTwIGnR0kyyEa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0bT1/TmG3KNISLuHHO+MzuB2DDiXxW0vUYYXDFaNvUqOhfIya
	oN3uLngyVgiNT994aYOa1nroMS57em+RjjfZCUcgp+9HuM1VTGlKp5VDV1JU7MHKGeCuPHHFuQk
	ih0Nqk2yr8DXGxmhKZVy25ZJ/sxWh8GVPsbPVUuyNx7gFRgMThfUWEiRYz8wh
X-Gm-Gg: ASbGncup1EfvyP+Adren6CyehPyDGqn7MI92HxTSpBegZ4m2n5l7i7YFDaorR4NWzpF
	qwp+fKUuwJbcsN1k98+jxgm9czUH1GbxD9Px3o80TA3AXKWoLGHDwoTB8Lfj+BmeURQeomR21JS
	Xa2L0lbkjjp266DDmDGsETeYa4fvA63nnbfPls9eLjwzZZWt3mRohOAE8U4geYYY7XAgru9Um8v
	OcASZIDAbrQw6gHZRzi3gKFYTJ3GaxhIbyimKFTShdZ3oGyn2ruZvyMglPEfmAQ5U4KN7AExLXZ
	RJpL1IqFYuwrbi2tePdiC1AVrUoczND6ddxr90DaL2IpGXK3j0beQIwzrc62XBLQBKXoJCE=
X-Received: by 2002:a17:902:d491:b0:21f:61a9:be7d with SMTP id d9443c01a7336-226483de49cmr1686235ad.49.1742324002090;
        Tue, 18 Mar 2025 11:53:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRFs/PZj/vX5LmwWSynJGPcDMBE/XufCjD2tu+h93eucTtabPbXuyusrAdyiZO2jXqnhWxsg==
X-Received: by 2002:a17:902:d491:b0:21f:61a9:be7d with SMTP id d9443c01a7336-226483de49cmr1685885ad.49.1742324001687;
        Tue, 18 Mar 2025 11:53:21 -0700 (PDT)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bd7bb4sm98124335ad.237.2025.03.18.11.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 11:53:21 -0700 (PDT)
Message-ID: <8e5b0ae1-ea1b-4dfa-84dc-c53edd2afc42@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 11:53:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-next v11 08/13] wifi: ath12k: add AHB driver support
 for IPQ5332
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        ath12k@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Balamurugan S <quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>,
        Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
References: <20250317204639.1864742-1-quic_rajkbhag@quicinc.com>
 <20250317204639.1864742-9-quic_rajkbhag@quicinc.com>
 <683b16dd-a3e9-4cc3-836a-95f3747d3c0a@oss.qualcomm.com>
 <0da16aae-2fa3-49a4-bdd3-f08a7655365f@kernel.org>
 <f35a6080-8dbd-45ca-8fb4-d6b01a5bb007@oss.qualcomm.com>
 <332db13c-81db-42ad-afcf-3a4262344bf2@kernel.org>
 <31b4ca9c-892a-4ba5-b006-95deed6deceb@kernel.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <31b4ca9c-892a-4ba5-b006-95deed6deceb@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67d9c122 cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=fXXGRLuD1ZcmTYMWEx4A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: Oyulkd9apXmCkfW926DrKKrma7KRce0M
X-Proofpoint-GUID: Oyulkd9apXmCkfW926DrKKrma7KRce0M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_08,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180137

On 3/18/2025 11:19 AM, Krzysztof Kozlowski wrote:
> On 18/03/2025 19:16, Krzysztof Kozlowski wrote:
>> On 18/03/2025 18:55, Jeff Johnson wrote:
>>> On 3/18/2025 8:50 AM, Krzysztof Kozlowski wrote:
>>>> On 18/03/2025 16:44, Jeff Johnson wrote:
>>>>> On 3/17/2025 1:46 PM, Raj Kumar Bhagat wrote:
>>>>>> +	hw_rev = (enum ath12k_hw_rev)of_device_get_match_data(&pdev->dev);
>>>>>
>>>>> kernel test robot warns:
>>>>> cast to smaller integer type 'enum ath12k_hw_rev' from 'const void *'
>>>>>
>>>>> looks like others have fixed this by first casting to (uintptr_t)
>>>>> a few examples:
>>>>>
>>>> Cast via (kernel_ulong_t)
>>>>
>>>> But another point is that this patch at stage v11 should not have
>>>> compiler warnings and it's not our tools who should point it out. Except
>>>> W=1, all standard static analyzers (sparse, smatch and coccinelle) are
>>>> expected to be run.
>>>
>>> I ran what I thought was a reasonable cross-section of builds and did not see
>>> this issue. Seems this issue is only flagged with config: um-allmodconfig ??
>>>
>>> Guess I need to add that configuration to my builds...
>>
>> This should be visible on every build on 32 bit archs.

Yes, I'm seeing it now on my i386 builds

> Patchset does not apply neither on next nor on on mainline, so cannot
> verify... Probably another problem to solve here - some sort of dependency?

T:      git git://git.kernel.org/pub/scm/linux/kernel/git/ath/ath.git

The series should apply cleanly on ath.git ath-next branch

/jeff

