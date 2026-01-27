Return-Path: <devicetree+bounces-259822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLB1E3+VeGnmrAEAu9opvQ
	(envelope-from <devicetree+bounces-259822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:37:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5B92E53
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68D453043D23
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35E134164B;
	Tue, 27 Jan 2026 10:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c7EJIUzm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kW3zG4a3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6535B341AB0
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769510135; cv=none; b=vGfOZbBBS/z1Md7QXxJKkKk0pBscjXIxor4pWonB7JGukyphxFY2UWwF9WioTyFj41KEqn9lX0ES+Zd4aHYemUbz+QsTRZBXtHYu8gAfpqQW0a6Vpx5+4F3WFCos1rsIZc+ufXB1IJRAfkXykAFkAgZ2vBld5uO9oscMo1sbqHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769510135; c=relaxed/simple;
	bh=mtLol/jHhv+1FEQ1mPtW1J2pRoI70mWYLgxE5ZlnCn4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=puzxOI4O5rw/6PqAIB9gbJydpuaJV1xkm2gJegFP0pmXqyJYZ64jk4NTTpL6PDxWLpeTZsPYyx6AqfPy+eTzP7LpPT67Cg2Y002l5T/Lzf7P0LQeowssLPI4o0XEor6r7nkzNF6wimN7dnqK7Ef26mkq9PYJWmJQ9ZaSeaDnHkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c7EJIUzm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kW3zG4a3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAHwbd786852
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gauOSQaFbZ/xl2uCG2D3fPteHoO9nEEmlRg1TK4bxtk=; b=c7EJIUzmN2FBrqP4
	3X2rGMLftsXBrprvw9fFG8fNSHeazykmxu0qURen3rlPDfmB/gm5Za2m2RT5oBSm
	Djpd8CJplXHtk6CwrYozUflVZgBfodPH9frgiy7+DkqEJiAEfflQgCgcyVlF/hln
	L1vidnQM6hXEYw2ZfjE61qpq9L/y4d/VprkevPsvMt75TxrSsqWY1eEOdAfVQ0jl
	40AgC35tuoXDiD4K47cvHFIctpW8pEwazMZRjsI+ebE8I1c5YPXab1v0FrOYVBlK
	0aCw1K+i9vUOtaos44K5YilUcLJTuiKO2k5idPyEyvacJbsgHiCuSShIB1w/lo/y
	jMowhA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93j869-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:35:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c69fd0a87bso555269185a.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769510132; x=1770114932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gauOSQaFbZ/xl2uCG2D3fPteHoO9nEEmlRg1TK4bxtk=;
        b=kW3zG4a3RnmEgsMOT2g3hPXpIyB29GDxeKg14dMRYjITfdzmzXsxZMkkoH5A2k2NUo
         25dR2zuPpc+BxwseeQUiCLkFmKUhP/CJlJ22SH4vskrzA8MxuRFTLVMSWo5aMoZ31hyp
         3AgLVeJOg26N6XpMdm7l3af9BE8vk5i1N/BSJl7XWQY6BBhuYPDMhFlP6SNsW5oCXp9O
         138DHLOOG5zjFlafeQLkwjp7GQY5k4bMJZ3Jmjb6ARfr6HxIcQuunMuT3Fff5mOv5yxc
         xcPI+WugESt7bgvCIhWNtpvO/FtjMxJt/ECaKh4T7DniySr10ohp9ELHiUiMfIb3ukJj
         UiQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769510132; x=1770114932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gauOSQaFbZ/xl2uCG2D3fPteHoO9nEEmlRg1TK4bxtk=;
        b=Kmyr7GFkHFKEoIDQMqZ1a2nMPG9Z1f8H3mkLNJUFcT9md06671wxzsfyTxDD5hdE1/
         /JB6DdrE9kIXi1El/UiNWPivgV6wE9/7zzxdZW5NYAwMplX+Sji1Stx4SeJS288eFzPt
         VyOsblvMXTJqlxWv8txrZEV2NpAsrmqAtE2v6dIFe4kZyd/sSFSnQv2hnd0abGyat52P
         TQIrkEDbBGxC8MDcVFoDJtfjs9yvJQCSnT7ij2og3MLiEE0s0gh3vcgbNj8KmEhQ3gWl
         bIbD2vc++37GoTbn83wX8535OVAApsqWtulRjKSBlBNGdHtwHgrIDTic0hF/7pizW3hm
         JZfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+sfH4JYBBGp7KWzAR8hQCkJedJ4fevtkFoGF6WW3yFx1URjITdbAJ9uhXysDQN6brYelOOatTSzc/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyizsrw4ZmCGa99tKDynnPUKh+++8ntMcRwwChIPkDqweC1vPkj
	YICuh+N72t5rEm2rhIdiqs/M2weu5wtm/ZUmPGJc+DzOpYyGSR5ezmCpSj0ARB7/MguytgQgqlJ
	khx0r10ZY4l79ziwWM4uyilZk5babjJUg24fv8D+YFRc4udsC/0jQOIJ+V/sq2lqOCCxf3wjT
X-Gm-Gg: AZuq6aLnazscTykelJ21SbUxRFo7eT0F6BigpDFoBaQdisUR5uKtmG4RFyf0AYpPZgX
	OZ3F9E2Ndt0o7dCu5AhAUs4ImmK/pTEcgdF0HqSpulJOJ93IfnV3//M8Q/IQCeQrRMTdkWecC6E
	Iwn44eellPfU0ZyfcNE6F9g6Rj/+IwqS+39q+3AzJ1eBHvy3FUFf8RKuT1hXU8i/7Zqg4QxKoTJ
	bdNMxPNpfJC5q+x8V0W4SerBF/8oMkHXnz/xbZ4QOBwD3C+0LQv9OyHNwO71zrwz1JN8qSBdzfz
	XSVuU+YNFEoZeEJJ1glQlfwlRDPQgK0RH7BKc2+sLLn2N+6q0Rnrzj/6oo+5FloLb1/UdJlHKND
	upu7GV34m8CAQblwjup82W0qMarQClUykjIiglAShri1p7jmiXc1qYhjWvejouQbftaA=
X-Received: by 2002:a05:620a:2a11:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c70b99cc3amr86856585a.8.1769510132287;
        Tue, 27 Jan 2026 02:35:32 -0800 (PST)
X-Received: by 2002:a05:620a:2a11:b0:8b2:fe27:d2ff with SMTP id af79cd13be357-8c70b99cc3amr86855085a.8.1769510131783;
        Tue, 27 Jan 2026 02:35:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm798364766b.7.2026.01.27.02.35.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 02:35:31 -0800 (PST)
Message-ID: <64e7cad1-cb7a-45f4-913e-bdceeaa42fc9@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 11:35:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/7] qcom-tgu: Add TGU driver
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-3-songwei.chai@oss.qualcomm.com>
 <c5569d62-1dd5-4dec-8cb9-dd1c6e3938c6@oss.qualcomm.com>
 <54e3a23e-6426-445b-b5e4-43d727b88709@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <54e3a23e-6426-445b-b5e4-43d727b88709@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA4NiBTYWx0ZWRfXyQO7CKKDK0n0
 MiMKo0LLpb7J/FS/1k8QMzhVGxxkzSClsd9+J5VYl8iEYQZDwtePdyYc4A67d1Q4kynmAD0YR1b
 dCQ64f0kaZejKWsdu2FOjwkkbrEmEuxx5ow9twxavTqOaWJJfVDrDK4uE7SG1h7R4kYBKljJTlW
 CwONd2+iCkLl66VQAtJ8YB9+TKGscnLm7d03jio0ZTBpmGJSG/lRsnyv86DqGCenCn4tSM0Kycs
 VS0b9RSsFONl783iX/ykcJgGtIR90QA62RL0UHFppOwdMJAaxZYGFcCM+FRgw3riuU8fG/WU6CC
 mnkdQkKs92HY9RMLT9BnDf4kUVoctfVzigj8LJzqW9CtfeRMKuO62U/t0YKcdx0uB1rJIH4UcRq
 elXcLbAlZysingFFTFmuUDRcM7EdAs7drTTao6leUKBLIy+zPJUOO9FpsACRHils+nsGF873Omt
 pZWa7OjiregP8lJq62w==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=697894f5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PdAv3VS2nydJPQNW2zsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: sVaLkbqiy_hPrvSjLJdFt1JybNJ-Wbum
X-Proofpoint-GUID: sVaLkbqiy_hPrvSjLJdFt1JybNJ-Wbum
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259822-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A1A5B92E53
X-Rspamd-Action: no action

On 1/27/26 3:13 AM, Songwei Chai wrote:
> Hi Konrad,
> 
> Sorry for the late reply.
> 
> On 1/13/2026 6:33 PM, Konrad Dybcio wrote:
>> On 1/9/26 3:11 AM, Songwei Chai wrote:
>>> Add driver to support device TGU (Trigger Generation Unit).
>>> TGU is a Data Engine which can be utilized to sense a plurality of
>>> signals and create a trigger into the CTI or generate interrupts to
>>> processors. Add probe/enable/disable functions for tgu.
>>>
>>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>>> ---

[...]

>>> +static inline void TGU_LOCK(void __iomem *addr)
>>> +{
>>> +    do {
>>> +        /* Wait for things to settle */
>>> +        mb();
>>
>> What are we waiting for here?
>>
>>> +        writel_relaxed(0x0, addr + TGU_LAR);
>>
>> If you do a prompt TGU_LOCK()-TGU_UNLOCK() the writes may arrive in
>> the order opposite to what you want, I'd say this shouldn't be _relaxed()
>> and we should probably have a readback here to make sure the effect has
>> taken place immediately
>>
>>> +    } while (0);
>>> +}
>>> +
>>> +static inline void TGU_UNLOCK(void __iomem *addr)
>>> +{
>>> +    do {
>>> +        writel_relaxed(TGU_UNLOCK_OFFSET, addr + TGU_LAR);
>>> +        /* Make sure everyone has seen this */
>>> +        mb();
>>
>> I believe this should be a readback instead
>>
>>> +    } while (0);
>>> +}
> This lock/unlock sequence is intentionally modelled after the existing CoreSight CS_LOCK/CS_UNLOCK helpers, which have been in mainline for a
> long time and are widely used on ARM systems.
> 
> The barriers here are meant to provide CPU-side ordering guarantees
> around the LAR access rather than to wait for the hardware lock/unlock
> to complete. In particular, the intent is to prevent configuration
> accesses from being reordered across the lock/unlock boundary, matching
> the CoreSight programming model.
> 
> I agree that the comments may be misleading in that regard, and I can
> update them to clarify the ordering intent.
> 
> If you still prefer a stricter write + readback sequence here, I’m also
> happy to switch to that for additional conservatism.

If the hardware doesn't mind potentially receiving commands in the
locked state (i.e. they're not dropped), then this seems fine

Otherwise, I think this may end up to random misconfigurations

Konrad

