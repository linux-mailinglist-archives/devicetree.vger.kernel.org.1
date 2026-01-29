Return-Path: <devicetree+bounces-260831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDOMMsU8e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:56:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D76AF3BD
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 41A2A303D30E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3438C3816EA;
	Thu, 29 Jan 2026 10:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l3Md2GeY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NVV/fQ/0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AAA3793B0
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769683567; cv=none; b=KxDYaDC85Twd+BtDlqg5yVFEhnpzima2rTZSGArhnzpyPBD67KDlM2UTbUUpJ18NgbUN43t6ytZUomGX5rUCZPkgx59xfAPAuNsDOkU+xUNINZ3Zz+1dsY03U6D/NU0nkh7LwhmCvEeDKB1AqTdOTFw555MQYpHlNbkltbwA25Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769683567; c=relaxed/simple;
	bh=M9hwD51DRua13tgBisovfBN5o+Q6Oz87oGUYwYeztLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XVJrmS6Ea/HVQHOtIzqf30B0Sxb0rU7ojdenJFR457uoTxi0oX5drqD1dG4K/VERFxqRzlsLrtlPzsMmhX7dmhzvk9QaoNmK0Jt3RVEpv/QMowHQ9KnK87nNZcsxGic7b5yDEPyEgu7s55D5M0g9qGSI39+J3ba5/HW/XQToVxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l3Md2GeY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NVV/fQ/0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TALEpx1430095
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:46:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zEYbQxbNEs9Sxv6KsfqTMdDDr+rSJv9laSrcEDWZbmk=; b=l3Md2GeYYQLJKPv9
	Kiv9XtHOCIzZz4qL90yI29eTy0SWpgiKqznmiD3TIFIovUak/FyaGljrt6jBW5bd
	Jz8WrewoCLkp1HyD5XPha3cPYC2MfPAEP837yAK/lKFtGKbNK9+WC7x0HdIMqS27
	CSmvm1mi/HTFeGjR35ZWys8dhiM9/KyKAp3AqAABdO1WBnlqx9uKoYhrE2Mz9uNJ
	MK/c0ejbZHBXENCu4RUSQkj8Y3+VtwgB5UtQftFwyuYB6T2wCna5nK1VHuBQtyQN
	Zna8QdvChJ8ryUUF+RaV8Eknsoo7Qq1hLNwmNGkSRw5SMqVAENegsf52NabCZgjC
	LqElJQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byydh1abt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:46:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c522c44febso20100885a.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769683564; x=1770288364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zEYbQxbNEs9Sxv6KsfqTMdDDr+rSJv9laSrcEDWZbmk=;
        b=NVV/fQ/0juhdAQFAk5TXYewhXIV6hyQWgImbghLF94FmTnzltFB+/awhLkpp/vawK8
         /DdJ7wactwZgVPn5OCPpV0V7taFR6ieLm3HiMIsGjuFBYOAUJRR5NXvcA9jihrwef29e
         rs5mPcTrWBgh75xxf1Z7UZdEDLoF2lRf1luOOc2Xph3nL4+/YjLOdM5OnM/MebURHG81
         yIyZng1xIOVFdzKbGwf2CYBeUlsP/u8WVnF+FC2W71nlKlNjDrYEKMVS6v3NtSQlOKSk
         Xxa1bGFtWu/skCCQ0XleAe9FU8IHnh3DXpekQ2tyXVlFsGOTol9Nw0iwSy0UafdWgquL
         4g+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769683564; x=1770288364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zEYbQxbNEs9Sxv6KsfqTMdDDr+rSJv9laSrcEDWZbmk=;
        b=mSO3zPtcNyYXzOC3j66qvRXkvM0vcZeBqW/2yzzFdmnRxE9EvJ82KK660s9lG4GgNP
         AqCSujakoVDT4Y0FBu/uQMXsAVSxYrWnHpxZ2caE1n8rN1tX5k5S3Kq0xDqZSM16RODm
         4heJND1jUgp8mCZwfvR72ZZNGhpmi3MGlQ4xvAYswSOsliI0fk1piDHjfy3/cA86cyHG
         vDqUbYHErnIamzD1s2iEAeyGAMXZZPl4NdgbVcrPjTjNIYk9lexZCRlq+gk5m+v9t7K+
         qWFVK02E0WMAO/a/r2ZQfV2Qzf8dfCSh91f+lDOLnUU8QbTuOrEb0ZR0aYIeusM/YJJC
         GHTg==
X-Forwarded-Encrypted: i=1; AJvYcCUEl8rkJLETvcvYEQV5wB7tEP1WZ+2YUlD3mVzGduX1wFxFHSA1Bj7rL5RiYPuXrScl7OlWfj+v2eqV@vger.kernel.org
X-Gm-Message-State: AOJu0YwmbSeZOTJrkrBrrPU7oVzk/iO6vDldbA+lG0HbYqRsLgCxcSGT
	hEBOuxuTox4w9LUFxGswimYBiSdPDY+SQ6TUrfEYNpx0HqWHajPOzRKcQiJ9ezqhutA4b0RiPfx
	/tdsQDArIiJEAPZSX7X0JJov+H3HbspyeT0gGbTTdzkxCr8MsN2k8jCPfXR97/Bl+SOgVqSC1
X-Gm-Gg: AZuq6aJGSON4uuiq8A5kfL3T6W9Zq9ntkrAlv0dyef7020y72kjKTKo11IHY9G47FjS
	eNLDMTMx+ROBTrZdJiRAhbvntHcuFicCqR6Ch34qeNczPKjiCq1SfeMFEzl+Nb/0jCS+4xKXQOl
	l0X9QXrIudMDrrjsCrXZNx8I2zCIKGTutiazvdtYWNHyTyfkX12M1AH1xiJJR6Yb6stE2MBgkMk
	MIP0tgnRn0fP5nZhn6AltbGQNrDAGQYHfQt/lqPSm9rdMmWNGOwUZWIuT3XE8sIT/cFJ2AIYstd
	pIzSPJHiMb5ZTX4SBVEe+ycktI6698OygH6rrt3o6W8IMM8EAv0OAqFXVqvoj1BL4V7/AzZygCr
	5+b2TNofqqDFHUx0uZ8YqnCynnm3Z526rcoCH0oGlmOfIA9dmHW+pSsKQLp5Klz2wlwM=
X-Received: by 2002:a05:620a:470a:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c71ad44a08mr341315885a.8.1769683563743;
        Thu, 29 Jan 2026 02:46:03 -0800 (PST)
X-Received: by 2002:a05:620a:470a:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c71ad44a08mr341313285a.8.1769683563196;
        Thu, 29 Jan 2026 02:46:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8de46abf6fsm69085966b.52.2026.01.29.02.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 02:46:02 -0800 (PST)
Message-ID: <8360708d-5d82-4cbe-bf0c-31107ab07bac@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 11:45:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top Level
 Mode Multiplexer
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
 <dc0b7245-de95-4db7-bf8f-815ba60d7adf@oss.qualcomm.com>
 <pdxrotmxjiebyj2gqx6buwupkydngxki6jgv4e6l6fmodzc5v2@yxky3civt3yz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <pdxrotmxjiebyj2gqx6buwupkydngxki6jgv4e6l6fmodzc5v2@yxky3civt3yz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LLPLYzoaPySwySSYf_gAMQsPSgSOOCtU
X-Proofpoint-ORIG-GUID: LLPLYzoaPySwySSYf_gAMQsPSgSOOCtU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3MSBTYWx0ZWRfX+7rEMKPc8OND
 ehS/rGeyCn0MdEOg2HAzI8cJCMB4ynu9vX4lkRpFPy0V8F6PKOOoUTp3n/SNK9cx92zr1dm9pUT
 0kgwyv+iE6T/N9voD8p+pSsuAsXWhtwfYc8+FrfMoXUWqB+ZhavrekW2MyaAJClqFi1whp6BTYB
 127Vjd3cmaSeRyaliJufvuu4ubhBPILwYb1O23i9dN3DYz6MFfm4gagn9L6X/pJkceBlf2Vj1dW
 76lQysWQLJrdskkpo7II0yMFUXMLplhK9SRFY1vxFdEsG+RZt/QMMeqsg6ERApsgxAKM/28VyO5
 p/a8WadOc8hpEhske6a1kfbf5cgFDvrA8Kv0UCaWWcojM3o20y4dGKP5eVRxRRsrNCfu6x7iko/
 XuWntmJ5mjFJnzGJtZ+MEs9hptm1bC+aCmnohTFHAhSDkkzPY6Rzo8f+t09Vssz0tijBwfJf7Ag
 nfL1mlyuxo0MEQsTXhw==
X-Authority-Analysis: v=2.4 cv=Cs6ys34D c=1 sm=1 tr=0 ts=697b3a6c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GLEDbIXeUMAGdpgsvS0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290071
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260831-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 35D76AF3BD
X-Rspamd-Action: no action

On 1/29/26 11:41 AM, Abel Vesa wrote:
> On 26-01-29 11:34:07, Konrad Dybcio wrote:
>> On 1/28/26 6:22 PM, Abel Vesa wrote:
>>> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
>>>> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
>>>>> Document the Top Level Mode Multiplexer on the Eliza Platform.
>>>>>
>>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>>>> ---
>>
>> [...]
>>
>>>>> +
>>>>> +  gpio-line-names:
>>>>> +    maxItems: 185
>>>>
>>>> 186, your first GPIO is 0 and last is 185.
>>>
>>> Actually it is 0 through 184. The 185 is ufs reset.
>>
>> The UFS reset also happens to be a GPIO..
> 
> So the gpio-line-names should include the ufs reset,
> but the pattern not.

Why not?

Do you see a reference to ufs_reset anywhere in DT?

Konrad

