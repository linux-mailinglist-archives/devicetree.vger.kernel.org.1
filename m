Return-Path: <devicetree+bounces-234919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D0FC3227E
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 17:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29FD74208F0
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 16:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BE53375CD;
	Tue,  4 Nov 2025 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g9eRI008";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q2fSv7xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6694333426
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 16:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762275212; cv=none; b=MYrsGOCXoscHChitmO2EA8Ipugr79lszT4YhYUfFylKstm0X86gpLXiZqHXOTSw8cQQAtXcGJ0mwd74J1hBFJe46ZPY1b0flDZBB2Dxba28kq9XN2SHjBbuk8MjD+wEEr9qsvbnpHrr7w6N0esIdETLZopaWT+w9d1Dw83kmg3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762275212; c=relaxed/simple;
	bh=7P7W731zeNvxsQqEWXDnrHlI5KkVRc5xJVwTpnzTHCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rLNwufgaI8APFmdlpAE4U/gl3GBveTld9DADoDOcv3v9nIQFsia4aJnqqq8rqWIp9KpKQ/ES3G0rppdl0/rNVu/dsnRTsqlH+vkRlCRUEJT1IavHenMcUbSDNmLtZQ4rOFblbWxvVOduPEYDycVK08xRrxReg++L3lMv6lk/mf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g9eRI008; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q2fSv7xh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4GgNM82483500
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 16:53:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R+O3Oa1E8J1GUWFxBhezCIckqOm9wrjtwYcxUezuXF0=; b=g9eRI008jL4pPcOE
	+46sWq0PdagmgdVM9YjFa+cqeq/LIPFKqs/Kz5Nr3yFGW5YteUwtQ+cPdaeibsAF
	MAjpSC9C+BS0vVDp4rfCzLQ5HHkcIT/RNDQugcdPR2R8i4cQOMANnm2WlfPArnh9
	AcpO8b8zvqBDbp6BQ0ekadUFwvPnnCChB1oHc1EQHRlFolx1LF6f/Uk/cuMZeGcd
	SE7oRdrl63ICzzXcPtR+1yZwrJJoEjZeNQNxch3XGuoIkDro4vloWI98D6v6NFyM
	fDjIw8i13OQpF4BJ+uzqLQIHYNAIUTSb5wO/SdWBNZi07o5QeQQqrwekb4b/re6K
	Btp3tQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7heagse3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 16:53:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eb9f5d6a75so10849481cf.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 08:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762275209; x=1762880009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R+O3Oa1E8J1GUWFxBhezCIckqOm9wrjtwYcxUezuXF0=;
        b=Q2fSv7xhdgE2nHrAX/FuRVq0vW1wVQHoZYA5mzXRrsl9xaokWb/kiZZ5vOzSqUt7V4
         PHQJNqZL6DtapGIa46s4FlZIKp2rN+rKX4HraBHixypABkHQA0gkOBgtS2bAQhgjzZZG
         NgWt5Jb+uymR/PSZru0RDFx+wvrljbwwQ/Un5BGa3++DPrfZfe+GCJ+tieaqtc2/6/r1
         DyYQxwT8/tyV6FlZbJvp82RWXDN34BvWnlwjTzTikYgLdAgXUGQD9njIEXyl3xEkf1mE
         Gmc3kuwHyKOSmtjiZuMw+m+EU1wGbQ9yvFloeE251E8VmGTHo80BI+wICPiAmb5PZlNO
         J1Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762275209; x=1762880009;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R+O3Oa1E8J1GUWFxBhezCIckqOm9wrjtwYcxUezuXF0=;
        b=qBqRxekFfVAIXLfxu7+trXhY8bHJ98hlISzNXkPsFI9i4V6aB8Yy6MJ886peM4aoEN
         pIrveH+7z/PACdfadgthh2LodpVSE+rgX4YPUfMbjvUJ42SVzuHRXDw8XvCxeNuG+HW5
         0TLwJIDBj8ruCy9dCq6x1H/A6GgX4HAIQCV0W/RcCxyDipgEMJKQRvNEw2A2gVUDSIjS
         jFLZ9NfRH36V8ecYuhzntnevvTL+2rwb2aT3vOfimNo1VVpA0PBJKv9X4PFpeS8RmRbo
         bf8WN/onLyQH9K61tisTUz9fFM0qRzAmr44AINDGqKKEQdB1o85pzR6oJ9tDg8pJdj7Z
         X0Iw==
X-Forwarded-Encrypted: i=1; AJvYcCWOSGK27GjE0E8BD7drYAhbdLljsfglAAcXef8EhOVn39Qild/uRS7TLN1Bsy1L8hJM25Fmc5OvK7IG@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ6P2/w2/7grt65B/Od0O0DWzRAbyGYIIW17mJfuWA6y/TIEKZ
	axd67rwMnQBy0TK1acWvb99BQClqseJaCioMNY3QY1LgZ8XtlFtN8XCtLZ1fFznlDyhRUsXumCq
	6NPN5xIna3f2fqSQjxALX8BE5K7j/WM0Z9fmvKPRTIslncL9A1kMzteWiGswo/CYg
X-Gm-Gg: ASbGncv198lA/u2A2Zwz4JW/13/DRwhxcDZGMAFrQVYY8lrgZOtXrTKFQdJDsrM5Kg1
	Rw5RuszXCiDDngq5Fiif2g0lVCs3KA5vE+/bUABu7DtNeMdJ3I/wG0bC/1vAemUIYGmnKjQcBXj
	hYX58oU1miFR4oTF6TaZjmkwdoPVQHJ0FonexL3FeM1OsVwuxBE9Pr6GBBYsvdmq4CpATkpbomN
	CRxYtbzWaYrta4my4xkF5Uj9u9pS8ERNDeiCDLnKFRYfEWMKH0N4S8xLR6yazD2sPeMmPczZcNc
	v5UM3xhoYbHkq2DB3aaL8v8QYDkLuOdSyxOTVxjS0w6gGVm36W2lfeCBF4spYc/4EGtcQa/gqOZ
	THOHXTvh38UM5jsECWF+pwgPze6GkDY91DIDxfER8T2U1OaxAjhvYY4oP
X-Received: by 2002:ac8:7dc5:0:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4ed719178fbmr2058771cf.0.1762275209096;
        Tue, 04 Nov 2025 08:53:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEN2skvlMhiQhF0AzCAsR1RRCaYjN6hvzSRCOly3Dh32Qg2SQPxamGM3AJTpIbTuiUQBYBplg==
X-Received: by 2002:ac8:7dc5:0:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4ed719178fbmr2058521cf.0.1762275208621;
        Tue, 04 Nov 2025 08:53:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6a71559sm2413634a12.31.2025.11.04.08.53.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 08:53:28 -0800 (PST)
Message-ID: <89aae84a-f779-4b89-81ca-ab42a595d196@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 17:53:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: monaco-evk: Add firmware-name to
 QUPv3 nodes
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250925042605.1388951-1-viken.dadhaniya@oss.qualcomm.com>
 <9b887bc5-eaa4-4271-8770-3458efb528bf@oss.qualcomm.com>
 <f016d47f-919c-2944-ab8f-68e450e5836a@oss.qualcomm.com>
 <be816a6d-c4e6-4cf1-b5dd-fd59515a42ef@oss.qualcomm.com>
 <f2ea3da2-4582-a2d7-9a90-8050b3e8a27f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f2ea3da2-4582-a2d7-9a90-8050b3e8a27f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GekaXAXL c=1 sm=1 tr=0 ts=690a2f8a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=kXeBfYxH--zQBEzzCVoA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDE0MSBTYWx0ZWRfX/HlD8WezBd7A
 V9QbtJABAOaXolqHthksfhqgQRwjm2/8N6HyqcwoPR/qHNSFc0FPLGJcS+t8ybJLsMz5yiKjxRX
 LZMYAMBxWZxSGMMO/J2ng+g4sTwn+o0dqzNJprnijrMLIurRltomAJN1VlD/zvmcHPOyjf7oVaE
 YZXCYu0gI7MpObYy03EGkV1gI6Ynm7CH7adPpiqqr2v+HNPjxiZjAhAe3MThg6KTQNE3yv2lBwr
 PHnDCnKvgamG1Z7rXmAw0QBla/8yA/gU89J2sY0cKN1ar9JCTdMZLZmLOCYkQGRrBT6tdRqYN47
 41PxZsgHkISS4iNo8L4KgK0KN8doJOjcJxtLh5jeUpXWiQ6tP3xp+j45fIwjRoJbIOgmy0+T6Xe
 JebbRFPraBHmHpZE6BDToQBzXPT+Rg==
X-Proofpoint-GUID: OgArNyG3PcKYRlY-ylWYwV0e-QRqWazT
X-Proofpoint-ORIG-GUID: OgArNyG3PcKYRlY-ylWYwV0e-QRqWazT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_02,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040141

On 10/24/25 1:37 PM, Viken Dadhaniya wrote:
> 
> 
> On 10/22/2025 10:30 PM, Konrad Dybcio wrote:
>> On 9/26/25 8:43 AM, Viken Dadhaniya wrote:
>>>
>>>
>>> On 9/25/2025 2:22 PM, Konrad Dybcio wrote:
>>>> On 9/25/25 6:26 AM, Viken Dadhaniya wrote:
>>>>> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
>>>>> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
>>>>> ensures secure SE assignment and access control, it limits flexibility for
>>>>> developers who need to enable various protocols on different SEs.
>>>>>
>>>>> Add the firmware-name property to QUPv3 nodes in the device tree to enable
>>>>> firmware loading from the Linux environment. Handle SE assignments and
>>>>> access control permissions directly within Linux, removing the dependency
>>>>> on TrustZone.
>>>>>
>>>>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>>>> ---
>>>>
>>>> Viken, you've posted a lot of patches like these lately for
>>>> specific boards.
>>>>
>>>> Should we instead push this to the SoC DTSI, to limit the boilerplate?
>>>
>>> The firmware load from Linux feature is applicable only to devkit boards
>>> (RB3 Gen2 and EVK), and therefore, it is being added exclusively to the
>>> board-specific device tree files.
>>
>> Do we expect GENI_SE_INVALID_PROTO to ever show up on hardware that
>> can't make use of fw loading though?
> 
> If TZ (TrustZone) does not load firmware for any SE, the SE protocol status will
> remain GENI_SE_INVALID_PROTO. In such cases, Linux can load the firmware to
> initialize the SE and set the required protocol.

So.. where is the problem?

Konrad

