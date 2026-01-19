Return-Path: <devicetree+bounces-256824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30404D3A68B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 586E9307EA1E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C0A3590B5;
	Mon, 19 Jan 2026 11:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dTPvTQ3r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EP4wUmR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91AE835504E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821168; cv=none; b=k1rs3rAEhZHwKbJyo7v8GOHy1Tcf4PThydTo6aK72RUHZAYlI+VP9F897aH1tpRf4ojvFLerqIsCJDat+m3PMIBdpUCwtATIkfocuoW2pPXmlg71ixl316pQDHRIj9vIPHO3+LIKkip9v5tzl3jwb5lwBP9tQ/lRlsmARjsRb2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821168; c=relaxed/simple;
	bh=NAWd+G5PHqugk5rVc+Vtp3fGk1G1MOjKv9Rt3MY43UA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A4lDHDseqF31xpvKdm/JnggLEm+tPC/hG2sW2smMZx3Dy9/PJQ43Y/CuOaxvCU+FBD9ouAEC9C2uCk3qN/jJ8Bdm3ujnDXggTkdDTxQNAy0pvgVygcl7VrZJVB8vhKK+E0IejQ4x+Z9dF4hYMX2hYKKSfmwT0RGspoZEZa8ppGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dTPvTQ3r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EP4wUmR2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JAJp801531330
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:12:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	blou3OX5w9Hr31fW2jR5qax8yr3Sp5IDn1xyqgrppG0=; b=dTPvTQ3rNOjSIL1O
	7qpBbL4BxQprwKK0uQh/bSIdFqkkjQebXQ9nF57559QWWmFe1BFE43TjsXLQMRXA
	miNKObFnvK1l3MACdwlslPBY+/9lLFuye2EyiW/XNljTTzkfANnKtiQvjSQxKC0D
	65//kDk43WFUESxJeUexYG0VGDsmz85aWrXQxaQATJyNy60FUEFvSh0XwF02WhNc
	WBKWG9UED1Ls3/N7LsjSLtDYrpigy9GNGjf/9YU1l1m1awtADZBJVILzK8OTa28g
	4qEUr/guz2wDu0v+qdURRWU8vPO/oBV06J+TzyvXlS1KQShS56zSgS0+fV/wIlz9
	DOQVaA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjrxr58x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 11:12:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52f89b415so1036972885a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768821166; x=1769425966; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=blou3OX5w9Hr31fW2jR5qax8yr3Sp5IDn1xyqgrppG0=;
        b=EP4wUmR266ElBlJvHOtmhSBOSL7b4wUz7o7gnlt+3f5fu0mR7NEB4boDhV5QxoDl/Y
         bPI4fJh+8mgrd1nzl4OZxYitnERCT7tX7R7Jyv2NQS+ggZ0y4lkDvOX3h0nQSrPN01Ev
         eZ23NgHAdJ/seBLHDhyoEXLrgsLsNNfIFduvXD9O7dBOjli/IPj3S97RxbYRNaZU1cMv
         kt+cEaQfrrES7ZgCfmp77NsGJu3KgK0LiAEODKhvPulhqunNMRbsNCu8aDmZrxbYPkpY
         KZbbJsX+u83ZL935hpMrep9vsJ+a7Git125mb4DjumwHRJ05ttjPRMLaxx9SBzK7eRPG
         GtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768821166; x=1769425966;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=blou3OX5w9Hr31fW2jR5qax8yr3Sp5IDn1xyqgrppG0=;
        b=DMXBC69aI/MQQdNJKl71OFRia+E7J8pxXWf96LQEE9U/28jJdB4nlbwGbkS+DR7Xoa
         cmSNS2BWCHtyCNePjIT6V5mC9eHTiPzonpgutcxLlK6n9iAb/E6ut+Opp5Op2inTywwl
         DfeSafUpIuj2CGduAbQ9PWC89d4m0T5DKhjPr4bZgqTaGTW4dcxqNVFROnV2t7FnAVz8
         eaaqGAG7ptTKsxgyS6xhxgyWPmcLIr0jL2ZkoE50z+oCwLT0MDkgK8yRb/NIoY6DfpUh
         CsMl4lGqWRW7xRpMtiy1KBk58Fk6AkXkJswtpsu2qgsFkw7UMVpXECqGPNLUJqqQcTZj
         b6Xg==
X-Forwarded-Encrypted: i=1; AJvYcCUAwmT4dJzhh5Mfr9bRQ9uncel4adDeSvA/Sfcn3/l0xgNfLA9bmQdERBHLGcDmM9qOmTTbzbMRH0GA@vger.kernel.org
X-Gm-Message-State: AOJu0YxBMAbCsmpQsGXsXyyYQMnLDttGSqsThuGkiY24koNiJOBLrHC4
	YdoMg5z6DlhQWEnFNihk4X9mUS1andyN32540xw2mHWo30UrO/owgKYtTnNLPwYu8Zi+9HhFE6c
	JZRhRywyWxCgJA/jvksvnkw6beNB9YW/WPhPrTTVuQQHK/hnhSMshkTgf5lQSrjdg
X-Gm-Gg: AY/fxX73yx0AZfUSjVxGV94sxzmsdHwHp7VyOzuQz2HCzVESyk09yD97JtzxYZRSpXn
	pGaSOs9t3oIZBeM/YgrWZi4W7stiNLdukas4sc72ZOjqzdUaU1OFb+FDRoz76zLqSnMzjG4Pd9t
	Y38q8Y+yp1H0s4Dto4zNpgYvu5XGO+EHgqySGUVmfO4G41tjt2QhxiRB0mlgpYYNlMYutbHRbtx
	2G3zDannkI2zmtPhISqzApD0F1ebV7lbluiW2L+UoG9pXv41TIAzbVeZA2oxwrWgeUwasvvrbv8
	qNYL/qnxoxQurBhIp1yqQjZ6W7OZFmYRBN9FB+VbEKtpmnyXyIi3AWdgUVQaTaQaew7VU/INzCz
	H2gy+iZDALOPCD7Ssx73xOUfm2BYQPXVNp1Fprg==
X-Received: by 2002:a05:620a:3189:b0:8b2:e922:5297 with SMTP id af79cd13be357-8c6a66f717amr1430382885a.21.1768821165955;
        Mon, 19 Jan 2026 03:12:45 -0800 (PST)
X-Received: by 2002:a05:620a:3189:b0:8b2:e922:5297 with SMTP id af79cd13be357-8c6a66f717amr1430378985a.21.1768821165510;
        Mon, 19 Jan 2026 03:12:45 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997ed8bsm22696868f8f.36.2026.01.19.03.12.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 03:12:44 -0800 (PST)
Message-ID: <bc1591d0-ee80-4fa7-8bb2-8f14e1c4e7f0@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 12:12:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: qcom: Add SoC ID for CQ7790S
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260119095907.172080-4-krzysztof.kozlowski@oss.qualcomm.com>
 <e4761a54-a172-4dfa-9223-0013913bea08@oss.qualcomm.com>
 <f41a692f-c3a4-4948-8179-4628542f90f6@oss.qualcomm.com>
 <e0147302-66ce-419e-b421-fe850f8489e4@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <e0147302-66ce-419e-b421-fe850f8489e4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA5MiBTYWx0ZWRfXydKJcMcDYSOU
 t8fxONdP6QXpf94YPAn4jd4xR4wEc51rv36YZ/QcgWzaBdZx+3zoowRFdWe0G9aTBXlC66BwMMG
 m73EsxjexFVjGqNi2uRuwEILBW+MClom8UYGUk4o/Bxxmu/DEwMc7D2m4Xd46ZV3sIkfp5zHkCQ
 5lDAC4VeCFx6b/Wtluj2+3r/TLzNcTgTaJVtCP87bqp1tNExDitcNQ9Zb3Xopf0QLkpI54S3t8u
 z2FDNxcMiOQCWWQC3LU8yOlZwSFjjP4cJA/zqEUvYNmSEfefRee9NLCY6jwpAIh/rrw4Nrvt0CZ
 lW8sOY1UwBL3egs3VYLQESXVl1HjRrTaUgaIt+fJ9pr9BPQFpZdzl2eFlO7Z+8+PlnE02BGjsM3
 X6iAE2y3v0rn+2Haym7/rGkhwEuiPXO6BZvIEqbVK+2CpI10y+uw42Zawt3BiGQJYQoAEVnbQe3
 Ao2ynTnr3lnmTuCf7zg==
X-Proofpoint-GUID: ssoybQyJlqqfYVUOM6dtLlAHkWkNn6-n
X-Authority-Analysis: v=2.4 cv=PPUCOPqC c=1 sm=1 tr=0 ts=696e11ae cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=GUv7ld5KVjKNMH7Nm5kA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: ssoybQyJlqqfYVUOM6dtLlAHkWkNn6-n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190092

On 19/01/2026 12:10, Konrad Dybcio wrote:
> On 1/19/26 12:03 PM, Krzysztof Kozlowski wrote:
>> On 19/01/2026 11:50, Konrad Dybcio wrote:
>>> On 1/19/26 10:59 AM, Krzysztof Kozlowski wrote:
>>>> Hi,
>>>>
>>>> This is early and first/initial posting for upstreaming Eliza SoC, e.g.
>>>> CQ7790S IoT variant. AFAIK, there is also CQ7790M variant with different
>>>> ID, but I do not have such hardware, thus only "S" goes here.
>>>
>>> If you're sure about this marketing name being assigned to a specific
>>> SMEM ID, those *never* change after they're assigned, so it's fine if
>>> you just add it to the list
>>
>> I don't know if I ever going to work on the M (modem) variant, so do you
>> want to document it just for completeness?
> 
> If there's no internal reasons preventing you from it, sure


Sure, I can add it. I will send a v2 later today or tomorrow, in case
there are any more comments.

Best regards,
Krzysztof

