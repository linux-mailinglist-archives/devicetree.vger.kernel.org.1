Return-Path: <devicetree+bounces-262669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEs1Ji1Pg2lrlAMAu9opvQ
	(envelope-from <devicetree+bounces-262669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:52:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BB4E6AEA
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B2F83029E4A
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABAA33ECBDB;
	Wed,  4 Feb 2026 13:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZKU1cwhJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DbuAxVSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642D33D5228
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770212869; cv=none; b=Tfcht6bDaq4vjIlchklz0jDZb0Kw/GFv/ePivXcz/u2osmLMdWqxMb1wFbpcvDebYu5Ax6OiCtGAkXQZaCuQYH6ocgpmPxKVNgqQqQbxGoV7UY2Vd0fvMY54vIlcrSCgIVoThKeNzR9RdDVw6dnHH2JZwwRiYuKSGoBlTVqvU0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770212869; c=relaxed/simple;
	bh=yu9L+d/NKnOZPCAeoijRwUSB9NsZEdGlJw0gmHRRJmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=clWBqzyhhqsnLzoNLbc80Yt2EJylgu28oNpqowCCegxhWEAD1GKMGuigLxsw6jYmLGW1TlSs3Jd3B3W6XPTWwxpnAiUWo1ERPOh1nbeOaZsx9L7ACeZCj7EVLdGoEDYtxrQfWXhIjwqgbfV21XrIM5oew5ePGeFnSC/w0aZvGvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZKU1cwhJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DbuAxVSM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIWrq200212
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 13:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WmQjygrGvlInql0/zrmdguNNjU0MyhM6vQvuIR3ecsE=; b=ZKU1cwhJizuA4SgR
	VtNfQ1Vmcz1PIeepUNPH7Y6/mljCSC3IcvOIx7wWdzDqxl6p3a7+jmKaUD4x5ZsQ
	8qQiWUkQxrkenuRs4ifxZrVOJSoXvejSoyDKHJoUVJfCI4uTFxwyRPuxCqYBGZr2
	4nbdu/su4XZEZIyTquipK8Zt8Qc6FVmx7EniU+P2btc92jKNQ3qb3/gykZ8QQycC
	sJRnj/4MsrAva4MlJhPVSoM/+6VdkgssxqdyEgX5nc/0PFaT3gziTTfVxsXfQnkm
	mzZGkl05b3Xgz3zuapnBhKM+8BVlSUuUFCWRLHiWqQPF3T7jAZe03ePo/1y1CrYA
	rPe4JA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3yp59fg5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:47:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a182d4e1so132598585a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770212868; x=1770817668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WmQjygrGvlInql0/zrmdguNNjU0MyhM6vQvuIR3ecsE=;
        b=DbuAxVSM2ABQMEI8n9x+g5cFkyigksf1P+6X97zQdWBVOGpUFAJX2btDs0k5lysBhK
         71pgvx9Ig0338fYVikyHLbZuiA02HHltmdyV/ozcEB61rliUxU3wTDt11FZt22XM0+g6
         /Tj2bKOUICxNPmAo5XeJTMcmNR5YA6qF3mvagJ0cadNLy/73kZsvG3aP0WbS3sUOm/GR
         C5ArQIOHY/g23H517dOqKvOzvFDEjQL3jeXOoTote9piw3nUyLUWgzJMC3GjoOJ8oUqL
         HLs4YFa/Ft0WenQVMo75nnZiRdYBXkEJK5zJWHQu9bfq6FD5L7GEk/g5bDdGg67Ff9YW
         WgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770212868; x=1770817668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WmQjygrGvlInql0/zrmdguNNjU0MyhM6vQvuIR3ecsE=;
        b=RYtlsumbPii3Cmm1iHv6k2p1Qe3r/1EGLcMNwiBTbTaRO0mlQdDH8tLr7Gfeajatp0
         6CtMCgBpqyRnZzabeqrCqjherkq8bQO0g33/WzzSon8JnEAgNs1wjzndrwFZ8znkxoVM
         +qjMZ2l7YE6r0g8+ixqx4I7u/R7ASYldMRwzdRH7rjo8jlA7Fr5J+NCATvd8zPnQV5o2
         NuHtamJaB/aAKgX6Hms1hdctd4MR2QTvfxsP4TXmkyK7aKv0Gr4TIebkrpxKB3kbGkbQ
         q5xIyhhisokimRLOLMlvSGjkiROWs9K1zg4jnnRQpQBZQkFAOzH6Cr9MuxHd33Tgh/eq
         BiMA==
X-Forwarded-Encrypted: i=1; AJvYcCX25LaTAZyM7thWW606UOyGsQP1nNe0SQvhQXNAW/cl1oSn1ZXfixZTXw27HsgMNU917DGxuCiqC0LT@vger.kernel.org
X-Gm-Message-State: AOJu0YwPgOutSPD8jaV/hjz6qD1WBXo/OftpfRrTsx3o/90wTqT/+Ce4
	CPAhmm9AGT9/TuWFoUVPSJ1jY0dOuKG5OONhgeOnU/qSUbINowNueG42g9NeqF5AiCpxc5Ci5nT
	7ZlqYqUgPcGb0aEqbNtbf2TlJSs4C5UQu5P49EK9fKFhBE75e0L0yK6onD9bxIoWF
X-Gm-Gg: AZuq6aIT6/SN6tA6TTcTaQK52Fe989H6J3P9WnaB9tLdKsnPuV7UL/bIdvj4rzhLXSO
	GKO4OrX703iq+Bco8iK6MJ3Vmi2xf7ovcBfbGtcerJLSKcy3emBbOGRnjGR5UNNDImlaRmN4k6Z
	rvj9mMLAI+soNIj/+CHGX/GFY8d93XRtgRuZFkrLS4oU1kamFKK8sTTlr8E6NDWPqZWI0PGH0MB
	gWtpNV/JdPQkXwjK8x3CgyjU+6pFK/9J2lW/Jku23ZxlnwQABb66QpC6UQxYGppkl17eYAeqqP4
	3yMH+xaGmPVZJ8q2lOqLAf32kOj2VRPuEVWzHuMt01qKdhxnFJEHO0Qwu0ZaND26UYbEnTFdslQ
	Z5qq/orgepF1jnWbFYnMgIs6UpxV4/CS++1yc7LJAi7u5qG8yLvvewxCl8XrDf1/OoBM=
X-Received: by 2002:a05:620a:288d:b0:8c0:c999:df5a with SMTP id af79cd13be357-8ca3311995dmr181099485a.6.1770212867845;
        Wed, 04 Feb 2026 05:47:47 -0800 (PST)
X-Received: by 2002:a05:620a:288d:b0:8c0:c999:df5a with SMTP id af79cd13be357-8ca3311995dmr181094885a.6.1770212867196;
        Wed, 04 Feb 2026 05:47:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ea00250f5sm119002366b.52.2026.02.04.05.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 05:47:46 -0800 (PST)
Message-ID: <37905097-ec5a-4922-a34a-7cf0ddce33f4@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 14:47:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-13-praveen.talari@oss.qualcomm.com>
 <df7cbe46-153e-4959-911a-14600b3bea21@oss.qualcomm.com>
 <cf2b7624-eaf9-4ba3-9b2e-81be3adbb53f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cf2b7624-eaf9-4ba3-9b2e-81be3adbb53f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: gsNbEsJbD92OIfJzWRbsQOgXTOW29Gu8
X-Authority-Analysis: v=2.4 cv=cquWUl4i c=1 sm=1 tr=0 ts=69834e04 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DvpAP8q0oNssZ-h8920A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEwNSBTYWx0ZWRfX1SiMREEeg32R
 TWAL3UvY0f9qTaXrA/6x/xT/lXdaPCcUoxoOdpzp5ZdaZw0dBg6WX2tvnYdeH8piJg9Xr8IvNYY
 z9UVB2/0ATl488jkXODJ8DhC6cLRyhNaFUQMJZUmqzZhUpeWBHgYXeGKzoDR11LKl2KlqYRjhAM
 jnoCD8WVqmvVWtS64+VpbvJrKKmalWqb2srmqeJwSXKlC8VEshQROpxbK0xH5LxSIAeSSUDpZ3Q
 DYuYwllVRpKTieOt7OaBoOtI2xeeMShvHIuDRxeEhfP0G+PCZ5sjNRn8se94l5gi136bEZ6Egk+
 x58zpNgra8CnKlIYev4Kgj6GbnLQPZg5OQi50TQ6lZLZFZFcWQ4S/eUzK3AnJQ1/bxCUX4Gqn6/
 0JFZU8x8WF61z/x+DKT95qNeFAeyRnVeY2JdTrHIlgxX6df6htvZXVzeP+l1GMwS4KGYPYtKy+6
 P83YylgYZAQ94Jh1IfQ==
X-Proofpoint-GUID: gsNbEsJbD92OIfJzWRbsQOgXTOW29Gu8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_04,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262669-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F0BB4E6AEA
X-Rspamd-Action: no action

On 2/4/26 6:04 AM, Praveen Talari wrote:
> Hi Konrad,
> 
> On 2/3/2026 5:55 PM, Konrad Dybcio wrote:
>> On 2/2/26 7:09 PM, Praveen Talari wrote:
>>> To avoid repeatedly fetching and checking platform data across various
>>> functions, store the struct of_device_id data directly in the i2c
>>> private structure. This change enhances code maintainability and reduces
>>> redundancy.
>>>
>>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>>   -    desc = device_get_match_data(&pdev->dev);
>>> +    gi2c->dev_data = device_get_match_data(&pdev->dev);
>>
>> Because you dereference it unconditionally later, this should be
>> null-checked
> 
> Initially this was added, but based on Bjorn’s comment like there is no possibility of getting a null value here since we are already adding the platform data to compatibles

The ACPI match entries don't have it, which I think gives a good
example of how easy this may be overlooked

Konrad

