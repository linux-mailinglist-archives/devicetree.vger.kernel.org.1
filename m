Return-Path: <devicetree+bounces-158732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2396FA67DA1
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3848218985CD
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 20:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04D81DDC30;
	Tue, 18 Mar 2025 20:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BBmVxCLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5181C6FEF
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 20:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742328213; cv=none; b=F3w2ceKnAGA4nLo+XbObmg34k47fHNfjGqRrepIcRe1kxB6odnKaXPZBX4oPG0BjvoupLcfpeTLVi45pxuhqgHjH9J7mKA1oamRG92nTyFxyJAQqWjYuJpjSPlou/bGLaVxmUvdRuTNu2ixgf5AuzWyD5tVS68hmkul7tTRUyWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742328213; c=relaxed/simple;
	bh=yitJU5HZqof/pX8NIh5/zha/AdJ3yoGk3GqqpscLWXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bnwgmXVPVSpeE33qtpXSzLwzUou5hGsuIFzQGIzsy5xmGJPqpObvGrM7BrqkEikQ0LUj4jBw0A2TJ/NECOMVUDnU0sLg8xK29Y7L+562Euggp6GPFRm/NE5BKhtdfP4f6Nw3vjOh7xiKU1l+z2cy0FeviQNLQbMbNr4gxPAcawI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BBmVxCLU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IH9ACj004742
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 20:03:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dIviajEdCOBgiCD88+lBOgrVsyUY4qffh1cnELJmUSI=; b=BBmVxCLUKsP+ATsH
	jDgpU3DQM3izD+t3/G4Jsu+CTmR3raL/5NWe4yEdQswam7PtQ2VhOAoU35LFSjYf
	cq/s4FUtbuDXhSNedgAdKH8+IrquN2lueHuZ28ewYbzB8esAbP5Gt/hJVTG2Qq8B
	iD+ecNz4vvmNdDmIqUc7/SvNeLPmuuwZrnaNXDrEfHkgmfzUSyCzDE0nv9Bqs3+n
	KUmgcpbuFnimzty4c9uNmtlOkw1FtTgJQyCMbhQz26ZMhAsd/zlX7LDh3ddMQ5YT
	8qp8RvVsCMdS87e5ChgSPxhAz/ZNF3sAb567OAtNeVoU/jQuiUaNSuR+Tet7iLtg
	6Tx5Qg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbup4j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 20:03:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2242ca2a4a5so82641695ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 13:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742328209; x=1742933009;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dIviajEdCOBgiCD88+lBOgrVsyUY4qffh1cnELJmUSI=;
        b=piuWyHpSosiP5oPuOgslOGyovh1Ua11BTxCvlNQRAKWGCw8JLsMt7z1KYgvpkOP1CU
         b4bPU2uOce00tJ59q5tajJ7eRxRtqkTMKYwQ9S7vsXe+PpGSj5LsUoxcYD2LJaPyjTRR
         Niy1hVGokQwINuUBmx6ENvpGmw/w9VraOfBNv1XqoOGYvQqRmPg7r4LM8ZHOPsjJ3Vs1
         TfHdNfjmoDsnMrRIRdcjvKAIUxHygikJAJURi5x61WwgDfxE9J3RvHNq2/fP8AnffxQ+
         +8z8rw2q8GznCD053R9m9Z8tV2zcehrobUhPVAvyT7gI23XRkCa6Fl5REJdljPkvoV1K
         Hy5g==
X-Forwarded-Encrypted: i=1; AJvYcCXxVjQ7aqM1xXmM67dYWsypC+zHVEDirdAU28Uklwo08azoYpNActv+A7hc5PAXIhmJRBZs2Uq8LvV1@vger.kernel.org
X-Gm-Message-State: AOJu0YxXq5czf0FvzG7hikU6ZWSVgQkHuhRuAGMNrEqPATgANDd+dw+v
	mdMjAsAslgAyjr7QIKqs+1Gs8nIGTlbNkcnPLPU1tEzY+zG1BuxdK/jQfd/x0N1Mg+G43NrAmbX
	aTtu4lQRXKTajvpNQU3WMfoa3I9nGVita/gfQlhKPRn/lmnIuoPuPXc3Tae5S
X-Gm-Gg: ASbGnctFyrRw7Ch7GsW+Lw8rQa3oE9MHOzbIl97q2otUp1YtjGrqPbj6mZetwpRepf2
	9Ygiu512YtsbUhd3vjY9p9GF8GzjN2UqF+p6UzQN14iHprGTLhhrsDF/+AhZc8p/R+tR8WQImzG
	NO4h6Xil4jzw0BKBYCDeBkSMWur5F+1F+E/IfEEQUwk+1wH8AzVMxBBwdP2KKKwYrzbo6Ltr7MF
	zt4qnyq1psKm08xn6kNXr3owjnOtAOZ+6msnD+WXSDS7Nc1D8x4AxESMrEHVe7TaDHU0lYUgnUD
	Pmpl69WlLk3X7XEkM9U6UP20mxL4T7yCdXEtEU5HO2bfdQEV93OHqN/WyGnCnWWVvcM7Re4=
X-Received: by 2002:a17:902:cec4:b0:215:b9a6:5cb9 with SMTP id d9443c01a7336-225e0a5212amr238093535ad.5.1742328209341;
        Tue, 18 Mar 2025 13:03:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwWbfqKKFOuVPqA3GS/o1rSBUsBnCbC6YlfZXuqGv4kJNVWRit7JjQXIrfwspkZnXcFQrRlg==
X-Received: by 2002:a17:902:cec4:b0:215:b9a6:5cb9 with SMTP id d9443c01a7336-225e0a5212amr238093175ad.5.1742328208921;
        Tue, 18 Mar 2025 13:03:28 -0700 (PDT)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bd4de5sm99117575ad.230.2025.03.18.13.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 13:03:28 -0700 (PDT)
Message-ID: <26eeef33-ccae-4483-a0db-78b120ffb960@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 13:03:26 -0700
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
 <8e5b0ae1-ea1b-4dfa-84dc-c53edd2afc42@oss.qualcomm.com>
 <551018bc-26e2-47f4-8fcc-9478834b9199@kernel.org>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <551018bc-26e2-47f4-8fcc-9478834b9199@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VaOe6xeJm03K-Da35WQge9WKn_ZCohNG
X-Proofpoint-GUID: VaOe6xeJm03K-Da35WQge9WKn_ZCohNG
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d9d192 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=DgR1PzNg5l75-NxZnrAA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_09,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180145

On 3/18/2025 12:06 PM, Krzysztof Kozlowski wrote:
> On 18/03/2025 19:53, Jeff Johnson wrote:
>> On 3/18/2025 11:19 AM, Krzysztof Kozlowski wrote:
>>> On 18/03/2025 19:16, Krzysztof Kozlowski wrote:
>>>> On 18/03/2025 18:55, Jeff Johnson wrote:
>>>>> On 3/18/2025 8:50 AM, Krzysztof Kozlowski wrote:
>>>>>> On 18/03/2025 16:44, Jeff Johnson wrote:
>>>>>>> On 3/17/2025 1:46 PM, Raj Kumar Bhagat wrote:
>>>>>>>> +	hw_rev = (enum ath12k_hw_rev)of_device_get_match_data(&pdev->dev);
>>>>>>>
>>>>>>> kernel test robot warns:
>>>>>>> cast to smaller integer type 'enum ath12k_hw_rev' from 'const void *'
>>>>>>>
>>>>>>> looks like others have fixed this by first casting to (uintptr_t)
>>>>>>> a few examples:
>>>>>>>
>>>>>> Cast via (kernel_ulong_t)
>>>>>>
>>>>>> But another point is that this patch at stage v11 should not have
>>>>>> compiler warnings and it's not our tools who should point it out. Except
>>>>>> W=1, all standard static analyzers (sparse, smatch and coccinelle) are
>>>>>> expected to be run.
>>>>>
>>>>> I ran what I thought was a reasonable cross-section of builds and did not see
>>>>> this issue. Seems this issue is only flagged with config: um-allmodconfig ??
>>>>>
>>>>> Guess I need to add that configuration to my builds...
>>>>
>>>> This should be visible on every build on 32 bit archs.
>>
>> Yes, I'm seeing it now on my i386 builds
>>
>>> Patchset does not apply neither on next nor on on mainline, so cannot
>>> verify... Probably another problem to solve here - some sort of dependency?
>>
>> T:      git git://git.kernel.org/pub/scm/linux/kernel/git/ath/ath.git
>>
>> The series should apply cleanly on ath.git ath-next branch
> 
> 
> Yeah, but next is fed with for-next branch, not ath-next.... and
> for-next is 10 days behind ath-next. I assume for-next is what you send
> to the next merge window and ath-next is rather next-next-merge window,
> just like DRM people are doing?

we have for-next which feeds linux-next.
normally for-next is a symbolic ref to ath-next.
but when we issue our last PR to wireless-next before the merge window, after
we are pulled we fast-forward and hard branch for-next.
so from that point our contributions to linux-next stop while we continue to
contribute to ath-next.
when the merge window closes we remove the hard branch and reestablish the
symbolic ref.

/jeff

