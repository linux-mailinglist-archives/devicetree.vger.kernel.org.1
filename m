Return-Path: <devicetree+bounces-238652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 95022C5CFC2
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F402D4E01D9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D8E316901;
	Fri, 14 Nov 2025 11:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HQ6QKvYN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YzaIjVdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F087A313530
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121511; cv=none; b=HShaM3zvRNVvomkATBt8MKyyHMqIx60afNXTGyqMrb3zgInU67W3UpgrgI6lLbmMm6oQzmRcXIMIY3/GaAJpHELlVdZvuRyauOF0RF/kLO6qmDjC55N3Ls00bA8u6oJ7pXbscQb1qE/8EbK+wxFATEFfMBnDW5cAlaQz1UKhyMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121511; c=relaxed/simple;
	bh=Dt3uOy2VtoFbOLkUEu1yu90om6ClwTmbRrXAEUFSbIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b05PmJWMmKsX1byx3sFMRdbgnX7utEy6EBNcmRScNGepTLjVo5Dko3m64S41ArM2+HwnmKvQQImu0Z0eH0vKQ4/HV7WjiPKjzh33kMa2XRsw41kEYZI/AJUUmUMdJl91fJujYV5myqO9K3Y1pPvhs8tBQBerMetPX8c5/BBdBeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HQ6QKvYN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YzaIjVdm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8SEun1616711
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:58:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GRBPuTN4gFHBJkftAyq/mOmIDHNhSyqYwsTcoxYmiII=; b=HQ6QKvYNoWqSK2sP
	/PBXAg78g+s2ZxJ/KSthVlkOY17b2ymCBtgWtOyLzXKET01KsSsOV6/uif8Ck4fk
	ZoXvgzi3pTNy1KuftGT+HpP3g7oCZUVrU/Geti8UI6VtCAMAeApGkUDxFGM3aIjy
	+1YUCWLxzH9DwwJpqmMuVlxgxH09jCWk5W4Eyl5KL+98xn4+jRx3g1bT3uTlaT58
	FXbq8ovnJGl+2e71eiLpLKUkxDXgTdQl+dNvYsitVeYlAHZAykEC3t8o7mFk2NPG
	VEy1uMG3ko5pLdZqryc2rCW0U4viKhfPLv4AMedDZx3WN+VW7hduMwp5jvWNKrRg
	rDxqlA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h21gj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:58:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3418ada9e6cso2456778a91.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763121508; x=1763726308; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GRBPuTN4gFHBJkftAyq/mOmIDHNhSyqYwsTcoxYmiII=;
        b=YzaIjVdmCEp6TuTzeQvXMvWMWJ/yt6+J/pxGEhcXrMIHHYpx2a/UnIWPfyYlOzHU8D
         SEmJ17cKwQi5ST+A8J9MNTq0vtlngTHwTPPBf8/L/b3h8DgFR8Yn2VO8JrSLvpeFLLtk
         +k5MEUfRVE73l/bNGiH+sULGYH6iD4XK//QaKvttILRrCC7FmdS2+5l4vgyP1i527Puo
         YcEl4U8HeMlnpSz44hCeIUYudtd01Usi1KlHEGjUJpzN0o53rBBnmqSPhuaBj2V2SAqE
         MUmydRK+x8UA7FONLmbNzgXKnodP1BBYF9Xa/Z4yv5Sc+b5WQaomwSpn1sb975ukNYy3
         2u9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763121508; x=1763726308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GRBPuTN4gFHBJkftAyq/mOmIDHNhSyqYwsTcoxYmiII=;
        b=NzSRtZLef0yrekx7lcfV5g1GVK7sgIZUCeTExp46i5CKiqCu9n718le0LLiUlHF9fk
         A3cbwZd+uvdBu4SMIfgGqWkXjty2uHpGbIIzwHn+Bo2/qJmvUH4W2L2GpcMacvMpfuQv
         Bbdwabi9Cdx5N45bXs485Rh38Rv/0CPAYWXnQ6TcJC7wPTVJQRaDZnQ8MjShN9HcT7Jr
         sBKKMRWLK3ZxWSlMUfCvIQjEi4c0UI/ZIl/IPAfIfQO9QokrqBzHy7HLSMMLf7DkYU2b
         RWyqHKwA8ND2eTJ+qkQCYpaFHFUxa7rBmNMWtQsuaB5BiH4yfmYsN3I2I7dp2KRPGeqH
         cOGw==
X-Forwarded-Encrypted: i=1; AJvYcCUantP1O8WPR0ztH6LI47NwUPVP2PvG4gk4moaR2z1neB2jiOfzTwZjhOrd0nzDfFUYr91b/7hOEIcQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjs2QeMxtOrRaCFYykh9EagxEZqupAkjQ7COoafSTvZRSTZbfF
	iJcNpmo7ztFld06uVfjFadAxM8BPc+zRE1a1u2o6ShuVMQ4T81q8fCqhHtK2XhmKPQy7p8VhgdR
	DMKk/nON+UBsY9sjp70M7kqywnP+NmDZInmhJ0YQ9ACjH/F1NhriA4N6/K1TlTtCp
X-Gm-Gg: ASbGncuunJG6n4+EPQNblFw5v3QAMgnKIax/hnqKPJY7l/SDGdjRVuI8n2ZqK7E/pBs
	lWX0890jS4GYuepTFlp2CYa0/+3v3ArrrWMvkBDziAYH0DToO8wWQ7ZCnWExpGDzpTxFqI506MW
	g7bwJBk62JseWJbF8pzfScfUU5rpcJKpzwmQfXBo/LqN/1IofJ1eRVJlZE/gfuXJk6rDfR4NbOu
	II6LNta9Z6ih/5YV49lwrDTgzCrJzay8uW0ju0vvn2BapG1Y2nUDJdhd87AaV9knyFzxMHR8Mo3
	RPP29KRLtNDqrgFqY1ao44OZiCa+TxNe4y7nhUlBoOYmXhC9OXojvOz6Pbvyb9o9vyrla5xn2Zw
	v3Gk3TjQlKiDMLXGOAKcmWe8=
X-Received: by 2002:a17:90b:5803:b0:343:653d:31c with SMTP id 98e67ed59e1d1-343f9d901bemr2963722a91.5.1763121507770;
        Fri, 14 Nov 2025 03:58:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFHpQSCtLNHukFVLbxrD8xU34y4COtLfmBvJC0TqavNqnfl88QPHSsjjzeWJeLQ2nAehx0+Q==
X-Received: by 2002:a17:90b:5803:b0:343:653d:31c with SMTP id 98e67ed59e1d1-343f9d901bemr2963689a91.5.1763121507270;
        Fri, 14 Nov 2025 03:58:27 -0800 (PST)
Received: from [192.168.1.8] ([106.222.229.203])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-343eac93449sm2826717a91.3.2025.11.14.03.58.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 03:58:26 -0800 (PST)
Message-ID: <6ebe07ad-cbfe-47e2-99ee-06ad7670e699@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 17:28:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: display/msm: gpu: Document A612 GPU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-2-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251110-wise-lurking-roadrunner-f0cec3@kuoka>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <20251110-wise-lurking-roadrunner-f0cec3@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GX--alMi1p1osEUclpV47Wt7-Bb22Da0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA5NSBTYWx0ZWRfXwHR1e29utFzD
 2r58+Za75YQk3BIRRpgcEGUgOqePiyh3S3HS8n8stUvNnVq+nd+KcJ9HJaVW8m3DLzdliI9axsc
 whkIufFCooqxW67MJZ0KVdPL6j8Oa36L0B8fQmRdAE8igI9xsw9MzSIA5iUzQBzY8p63Nr5757p
 xLPPwfW5s7mIomeyG2B1PTu54dcbRBJHC3yXyEEBbnaivYgsdOF/Txd/wdqRZtZ9dz2H3HO2RMH
 hLp4MxbHGP4kBUMv2R6q1GBs6Tku5Cr9djjqMR30wJ6rhqUdPnJAz5fekVV8NY4/9+Rb2c0YQqX
 jdu0mhPj1LRkaCM2qU+MLcA2W7TszVsezossN+KUx2xWpHlWPgC1ip9MvPZ9IdJwwSXx7pBOrzB
 pBDejGoicY4NIfGOJrKr9cJ3dOgVCg==
X-Proofpoint-GUID: GX--alMi1p1osEUclpV47Wt7-Bb22Da0
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=69171964 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=UUXEStRZTiKyGgBwSCQbmw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PLUc99ambSscJNFV4OcA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140095

On 11/10/2025 1:18 PM, Krzysztof Kozlowski wrote:
> On Fri, Nov 07, 2025 at 02:20:07AM +0530, Akhil P Oommen wrote:
>> A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
>> which replaces GMU. But it doesn't do clock or voltage scaling. So we
>> need the gpu core clock in the GPU node along with the power domain to
>> do clock and voltage scaling from the kernel. Update the bindings to
>> describe this GPU.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/display/msm/gpu.yaml       | 32 ++++++++++++++++++++--
>>  1 file changed, 30 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> index 826aafdcc20b..a6bbc88e6a24 100644
>> --- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
>> @@ -45,11 +45,11 @@ properties:
>>            - const: amd,imageon
>>  
>>    clocks:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    clock-names:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    reg:
>> @@ -387,6 +387,34 @@ allOf:
>>        required:
>>          - clocks
>>          - clock-names
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: qcom,adreno-612.0
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: GPU Core clock
>> +
>> +        clock-names:
>> +          items:
>> +            - const: core
>> +
>> +        reg:
>> +          items:
>> +            - description: GPU Reg memory
>> +
>> +        reg-names:
>> +          items:
>> +            - const: kgsl_3d0_reg_memory
> 
> What happened with the second entry? Please describe the hardware
> COMPLETELY (see writing bindings doc).

We can describe cx_mem and cx_dbgc too here. Then it matches the common
schema described at the top of this file. In that case, do we need to
re-describe it here or we can just remove both reg and reg-names
properties here?

-Akhil.

> 
> Best regards,
> Krzysztof
> 



