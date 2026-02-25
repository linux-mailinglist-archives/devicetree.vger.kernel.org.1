Return-Path: <devicetree+bounces-268456-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CwNOnchn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268456-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:21:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A09D19A794
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A279307AFCE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89A73D4109;
	Wed, 25 Feb 2026 15:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sr70xsH0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BOGZ//lx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9595D2701B8
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772035143; cv=none; b=bmDTEjvmyG/rU7eedug98o8wOHo7QAgn9wBv7sY4jkEfSbz6ErRA4zjwSrAhmhFNL3DGRXL9JR76WGDcO7nE8dYJYj+16zIbhhH0YFh4CQn0lY7UlFyjZtioLT2yf4mno4exvnwwfKvCKNw6aL+qyNzhVzXhnqZtBPqXCe1RxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772035143; c=relaxed/simple;
	bh=bDYzfAQWDqGO5iB61dNgoMqj6s33qthAjJDdZr87f+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=GgdC+ZJr5FbdNwqzObLA+J2of2FiXHfTPN/M6koayzFalrEKe2PqEK4tCXUR2yRGETRLXj/OHrvH0yBPWKdDULkLd4RYCvxONZ8MwL3KId2F4R615pLw/cMxtbXONHqWo4gfuqaZJYaufN0u0fe2IbLeRGf9V9p6kZeFbhKQv9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sr70xsH0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BOGZ//lx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Sm5J1025514
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:59:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EE5GHRNu/zjqzOv3J2rYP/dw7RArwfR2uwWnJWhA2+w=; b=Sr70xsH0Raw/ugdf
	D3+U1cAx414LMzOT1voel2ovQzJXvTCWJFFmxq5dyTupVuIEbPk+pke6srd3DDCw
	HnHXSfsVhBb4IK61jF9Qa4zN3+btKgUeXk6CNE48JyzW1O4ubKkllldxzUD9Z2aN
	SFsoYWNLa7lt4BLo1m5SYHlpSexCQY9JXRzuPF4eanPSwznGPGC0nu1j8S3lZXx8
	bKZGGX3eLdmwS5TPEajRmM68hxNcZWvDlFyBRsyTADNgQkDjjmQLpLEB2Ia9bQHZ
	Qi1IM769eTnwTtHu3UnyiQZZijMqj1vE1XGDzJO6lBBAhbA25jHSkuUhHju7ehWm
	upI7iw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chq57tcxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:59:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89463017976so646190366d6.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772035140; x=1772639940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EE5GHRNu/zjqzOv3J2rYP/dw7RArwfR2uwWnJWhA2+w=;
        b=BOGZ//lxQwn3BQ3XbAMSNpZ/cQK26UOYCLQMBRnFcf6acDOvBWqkws7YqbwUF/gprg
         MR81GO0ppOkkrhfbGjI/gPUuPsTx6Z2c1O1Ly1MJ668gqBaftx2KdepZVKBTGUwzXb8R
         SrOuldcqdFmOutpClW5cod45fkTc+qwzf4yAIaJ8t3aFATOdK7yIzfPgw5z17Twlsqxw
         Y/j45DaiAPtY6NQhFw2egArTWwD4DdmBRl4bCUl6wi1XPjDlPhDPQxPDYHrBYvX0ac2e
         48oBRxB6Sb1t9RsU7s1gZIMtuRwwyEg6avY4l2wXqexK7jPgSiJ8ArKxjGi1w2K+jkJl
         aAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772035140; x=1772639940;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EE5GHRNu/zjqzOv3J2rYP/dw7RArwfR2uwWnJWhA2+w=;
        b=AC9CpyDTiNA+Kjfh1+r32JwEx3bM3Njr5BMb40xcbjzgIrWbw9/vXAb9ftUbDctUnu
         C0Rp/iM/RMOuPS58zcIgSgKG7Sg07pAQZUF5wFbg57twrdchmTjtD0mNsR2EU7yW+Zjb
         meOgrnBHNyeg0AM1s4HkXlj/0nEFF2Y+LJVR9w4MynRqij/9OyMyYC3jFoa8mQRkTslk
         tvBrmRoNygAOa0UPy6qGgwmTdFswtpnL38rx5z5abrx+ab938w239kNno0ebW8wBMtXT
         hX9wyHT1Qh9jCZPnI58UQhRFb6SsId79ZtqmbpfaHO1pVGgqSGOJSLCdUgfvaPuUjpy2
         B9oQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhz8VvpEvMEwwUUhYVTJBCvnZvmYx8G/Mcm8GwL9evjuRjYX79SoR3tV1NpyHGi8FRFsHAOpGiwYAI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9IRfNQrfRCuYpbdA/p3ksmly18RxSmCFZqOqC51OuYzVShTIv
	dsEIS8k1HsTTXXurjKE/dNVwWBtwwaFDUN5qcib2M+e8+bVA31M5osab8VXbe6XxVBUFz4/BHf9
	YCwQAuo9LvLp2WBvJzHL+SQC6ms9SB8f/Ev4/fSP9WHRNnNbDNPdtzMeFkDzxwaYo0bM5icLP
X-Gm-Gg: ATEYQzybGUfX1mF2njA9YDjq56fmq3N6G3EoSnLR1ntbVIYLGAiL9g9E8lYSfUyYCyV
	u/8BPJjMKW0JY3LJOFCcpGsCVAgT5WXm590TA8v1sNT6hJZgo0iYWgTTG6LRYAXQGRsJe8QkfXI
	vWKS+5Ui1iJfJT/3GwUwdfiItKxV0VWDnmE6g/DmkpOU5PD3DQcJeYPcyKHMkMLn34degmCmIQN
	Cx0VkhQqT3pwikBBe10ip9vMZvmLRp1P5qOVFqWkPqCeihXnNhxucIxVwiacOXCDwZl+K4xZoQY
	OC4xAew7txauOn+IcitfH4uuQITsR13fzhQBJq8FqRMNMRcZn1b0JWaBmDkPefMoZlvS1sxlCuS
	lo5PAiQ7PNeu9RfKQiRTKBenadK14hTizMpi27dPKznlGLZ/byA==
X-Received: by 2002:a05:620a:c55:b0:8ca:3e78:ef7f with SMTP id af79cd13be357-8cbbd035f39mr121511285a.66.1772035140188;
        Wed, 25 Feb 2026 07:59:00 -0800 (PST)
X-Received: by 2002:a05:620a:c55:b0:8ca:3e78:ef7f with SMTP id af79cd13be357-8cbbd035f39mr121508685a.66.1772035139590;
        Wed, 25 Feb 2026 07:58:59 -0800 (PST)
Received: from [192.168.1.29] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4398a09aad0sm10386560f8f.2.2026.02.25.07.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 07:58:58 -0800 (PST)
Message-ID: <15751da9-5545-4d07-9f60-b272dc2583c0@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 16:58:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt: submitting-patches: Remove possible confusion
 of combining DTS
To: Luca Weiss <luca.weiss@fairphone.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260225105927.35151-2-krzysztof.kozlowski@oss.qualcomm.com>
 <DGNZQA7LKJ3N.25LB4X3HW1N6K@fairphone.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <DGNZQA7LKJ3N.25LB4X3HW1N6K@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=faOgCkQF c=1 sm=1 tr=0 ts=699f1c45 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=GbNn2iNqt9Gd8zGAVE4A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: XiD9BKIlvSYgj42ZHLHX79kYYBeIlqa2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE0OCBTYWx0ZWRfX4q8qhFtryvO6
 uEOu+bojJzlXyOvbb4qmZvlw0npB9VC8yblckCJk16fC/p8am2d0uQoQrLe7LbPuxUWTejcaKnB
 pWsbooIqQ0bxRmIyehlsYyYZaG5R2mF8uucRwmfezze1iFMgTAUMSiC+QKkWzJp0Ul5kGgpgTRu
 Sgx1Adlns5jaM/c3cwuTHuscNn57XiNAJXth56BX63/XIAx70RYSEFjwEuF56cx5K4D7pl2rcf0
 NE/4R1nAotbcZMRFx9VcmdGv0LERxnKwAngAzeg6+fn0bhsw5XWsQyCUvLzGOdmhM62iUFQ0IOE
 eHPI2CGqeTozI55jGxLRLtQ+aTZl0AwXGRmj9XxGArFx84FDf128tmqtpgV8Tyjwaptor/YeEKP
 CybzHMaOEcvI5j/VQzs87UxVW1LFT77ilJ9NGm3ibMhBdB2cRJxPB+AvB4hdZNQmnTqK/SoElYZ
 riqpc6aqZMe4DdxnBnA==
X-Proofpoint-GUID: XiD9BKIlvSYgj42ZHLHX79kYYBeIlqa2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_02,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-268456-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,fairphone.com:email];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4A09D19A794
X-Rspamd-Action: no action

On 25/02/2026 12:02, Luca Weiss wrote:
> Hi Krzysztof,
> 
> On Wed Feb 25, 2026 at 11:59 AM CET, Krzysztof Kozlowski wrote:
>> DTS patches were always expected to be either sent separately or put at
>> the end of patchset, but the first part of paragraph regarding this rule
>> used a "should be placed at the end of patchset" phrase which might
>> create wrong impression. This "should be" about order of patches applies
>> only to the case when DTS is combined into this patchset.
>>
>> Suggested-by: Luca Weiss <luca.weiss@fairphone.com>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/submitting-patches.rst | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
>> index 81e27e50f905..2a5533f68830 100644
>> --- a/Documentation/devicetree/bindings/submitting-patches.rst
>> +++ b/Documentation/devicetree/bindings/submitting-patches.rst
>> @@ -64,9 +64,10 @@ I. For patch submitters
>>  
>>    7) DTS is treated in general as driver-independent hardware description, thus
>>       any DTS patches, regardless whether using existing or new bindings, should
>> -     be placed at the end of patchset to indicate no dependency of drivers on
>> -     the DTS.  DTS will be anyway applied through separate tree or branch, so
>> -     different order would indicate the series is non-bisectable.
>> +     be a separate posting or, when combined with driver patches, placed at the
> 
> "when combined with driver patches"
> 
> Is there some guidance *when* this is appropriate and when it's not?

It depends what maintainer wants, so depends which subsystem you target.
Several maintainers take everything or nothing, exactly for the reasons
I explained on IRC, thus for them you cannot include DTS.

Please understand that DTS is soc thus another subsystem in such
patchset, therefore, unless you send patchset to drivers/soc + DTS, then
you are always mixing at least two subsystems.

> 
> For example would touchscreen bindings & driver, and dts addition be
> appropriate to combine into one patch series?
> 
> From our discussion on IRC, you said a series covering 3 or 4 subsystems
> is too much and they should be split.

Mixing two is fine (with respect to rule from my first paragraph).
Mixing three is already discouraged, mixing four is too much, unless
subsystem maintainers do not care.


Best regards,
Krzysztof

