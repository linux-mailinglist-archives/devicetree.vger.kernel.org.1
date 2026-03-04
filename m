Return-Path: <devicetree+bounces-270866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C0WEI3cp2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:17:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C69891FB7B6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 88329309EE09
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7ED3537EB;
	Wed,  4 Mar 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aaN5OLfm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="enKfcnmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0BC73101A0
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772608594; cv=none; b=SrPOVCUXOqAYSj3vDNUZgGmJjyHZvgG6XGhYD4HH/QcyM366Wfaqb4X7YeMyS51UTEbSrZE+4Lwy7PIVUB6xlYnQ7T8N5iYGUxUyxe59qSIL4TMFctwtbmEraMxR8gxmFd1OrdIOClpEdu8Zsg19hAxZ75g4lHqA89oE2G39DRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772608594; c=relaxed/simple;
	bh=wEy36coH36XmcE7lr++y/8y9EQU+CDvTNz1l3wzsMLo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eYG+ZVUoOiL7qlmCK7QLEnbAtaZmZssKevDyXsWJOUel1QRVgqcE7Mf8M7AJIZKjZG8S3WU5/lALe8nW1p3HXciDxkITBPVBnjgtiyZZQjrLl9vxLkgOMLu4+05L1cvmVCFR2zj5L44cOzHEqzfWJWzkeMRlwal8jVAHvmxZ8iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aaN5OLfm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=enKfcnmJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SlBk1073120
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 07:16:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tnh4k5gg7ONmrfEMINIzh8amDVJJUP7VpU/aFTOrUWw=; b=aaN5OLfmeZlRTDaI
	J3DHDZMFNZNbod4bYHbNiACbdFAC7XHyCPIu4+8exGcowhgs06P6F1bBRV48YH6C
	q+fG+4UZN1AugHgqNyAGcDs+kxSzhMqIEAWw+VZ5E6BOOxB1LG5+NDNiDrpdJkp2
	P/oCoihAbug9GAO4k23ZENrSntseBjBmDvDdTg3c9M0xQs1aOilb3aDf5lkQQjSw
	EUKLfzLhN+bZHJ5KUjeueHbGIfEO+VeiqPbQjbN3i9ml24gD2Oi6RDF4fNxetPj+
	NB8QrUfPqiPXk8i0eLP3hKTij9IcsUW4rwu2kXeStM9jMWoVlgAhkx4TBYg6QtdL
	bcJJBg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfgm2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 07:16:32 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70d16d5a9so3907946285a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772608592; x=1773213392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnh4k5gg7ONmrfEMINIzh8amDVJJUP7VpU/aFTOrUWw=;
        b=enKfcnmJYt2dEv83rTzEi5DEPnpeUxkMHlc3S52jpD+X3EQqhzVQi+rpWMlmdZjp6b
         Ci2AI3t3P8PKjEGmr2iDWWqvK1rFy+tufDUU+q+aqgg1LS7CSDnWiOD5s+8h0J1hYYrH
         dEj2fSresuglQdfqCmtViwZm50ywKmOPlkTUWPGchylyFzc/EF6K3Funn1rPfoP8w8yg
         KtNXrbQebLgml/jsN5SKFtjqKIjABsuTkD8dZrUtPkO+BRvqA73VawwGWcdr9hRp6Vkz
         b0RBjPM28dLZgErrt3zw0+yBB/hpIpejBvcDy64wkAJo+c8IamDE/8baUGWudO2tr/SK
         F5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772608592; x=1773213392;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tnh4k5gg7ONmrfEMINIzh8amDVJJUP7VpU/aFTOrUWw=;
        b=Bm9p4vMWjvXiOD+h4GET+rYUq4OKGa6ngo5UARWNjZ/hvYQBNsyYb6f84KqwL1/sTt
         B3fzGJ5Wha5IqVf2XomuJSjxERFSpOEq0mnVVDDOt1YSxIUCiWW5KjcJlrgRJCGvmY+3
         PVpEO/iYcUjPPPq/2rebUN3lv/89EhyeUYG5W4Jesb+MhRjIecdliy4j/r5THEcFBOrz
         99AzDs/sr8ZB+CC6jY4DBx8VDcV6TT+rjqPOm9YowdVCh32EYeZySEa+X42OrYN5yVNw
         wGlmDB8T66XrC6WGHxjJL6Ii98o4fwEMUOhEAl9o8MET3vReVa4H24aMPDmp6Rn47sdr
         17hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmJFCKhZWQsCLDucEnBia6oPAC4/6yUtEHgAgjUxWVGWqCP+CGxgwj2KrQsVd2O6cBwtfvQKMbj3Lh@vger.kernel.org
X-Gm-Message-State: AOJu0YyRRFzP/14x0tA9s6GmDj0s67rDtMA0BXvmrShpeujO/Bkh+Zr8
	DW23gTwXdAeiP/HpIph4fq3mp5A68jMJjTGjOJQACcOfAOImE04cZy2NqXkpkUAI/KntDyO7kCU
	6BaNQXOMAr/H3EZ983/6lCMHS9qLedgA0X3flouIyE5WrynBC8hPwoH3qFNailpJF
X-Gm-Gg: ATEYQzyyKiOLrOr5SERoYGeovslgFCLAzd1VpTSQPC1O6/y+wdziylN2RrFfrubCfWy
	KEfO7721tleNdtZ7eg8+vy1pSSJIlxQpugXj5hIE2qmohwmLgls5Zwqjo+UUIlTl7tyrnDrwCKc
	LhUsrDNnLqG3vahD3ENsbMV79axjut1lr3W2orGN39JJvVsaNGFIUfCiyRStwt7HL3oHQsY2jb+
	gfRZqWmSb1dk8LkdGGx+F2w/VcuYwe5Kzwa8DtTDqCz7o3dH8Hp/1vbSu5J7bytmQxi8Io6HbcZ
	PdssCPT7XbOH5E65UlPwKaff058J/6H4rjBfeAlc37unL6LjYgM7HG6GJOlUebCeymPmZXEgJ52
	6cxio8A+S+vfACACYuuMau/AJfaJKTycZzknPManSjVtUKxC7
X-Received: by 2002:a05:620a:1912:b0:8c6:f411:5eec with SMTP id af79cd13be357-8cd5af817a2mr132830785a.38.1772608592040;
        Tue, 03 Mar 2026 23:16:32 -0800 (PST)
X-Received: by 2002:a05:620a:1912:b0:8c6:f411:5eec with SMTP id af79cd13be357-8cd5af817a2mr132827785a.38.1772608591557;
        Tue, 03 Mar 2026 23:16:31 -0800 (PST)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c6129017sm4559806f8f.31.2026.03.03.23.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 23:16:31 -0800 (PST)
Message-ID: <d259b303-8ffc-4d29-a8c9-2bdc96fd8647@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 08:16:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
To: Karthikeyan Mitran <kmitran@axiado.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "fustini@kernel.org" <fustini@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        Axiado Reviewers <linux-maintainer@axiado.com>,
        Prasad Bolisetty <pbolisetty@axiado.com>,
        "robh@kernel.org"
 <robh@kernel.org>, Tzu-Hao Wei <twei@axiado.com>
References: <BN8PR18MB29930D52F6533147F65C3CF3C97CA@BN8PR18MB2993.namprd18.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <BN8PR18MB29930D52F6533147F65C3CF3C97CA@BN8PR18MB2993.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ICXnaSnhqV2NG4GRRvYAWzgjXHuraX8e
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a7dc50 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=440cDlBIAAAA:8 a=NzJkVhNRsDn4JeGMu-IA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=d9D1X1bx8dWolqnE4HNT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA1OCBTYWx0ZWRfXyjj/nC+7apOO
 xZN8eqCdTPxIE68zOtKKDPRSN/lVNUl/9xxYYk8wT2RetZO1B2w72pMgNBtA5xWoRp0nq30UFGQ
 SYY0HZiZSr3728VCVFYB1IflguEUxwLKiW8na+RWMMbLSSO8Ho5S/5Tdx9Fa8wEcBYctkZ72ADS
 kPAzuS8LGCVmylScY8FPWaPx7HbaXEdMMC8IwZUIpU21NRuEvsIm/DmxFwpLOaMMVsRb6qy0d69
 hNUB/mFSXBkQ41EiNA2zCmRPFIQy61sgr/0Wcy1lR+cIiA3pnve3SZGJHE54UasNlTvvGyB2p1Y
 7VFFr18grKSMrF+vS33L/9vA1fotce58p0PpGqv4NeCVCwQb/mVB1Ua1znV51eK95ZRCILbb8ES
 1xWT3zvMcVPoRg43mAosZyPHbP6BaBN4Rhx8ancxu9kXRQIIbyRDLDgIXUfI692/mbHWrzoilkb
 yG67jxPsJ9wH3NQFlfA==
X-Proofpoint-GUID: ICXnaSnhqV2NG4GRRvYAWzgjXHuraX8e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040058
X-Rspamd-Queue-Id: C69891FB7B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270866-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,axiado.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 04/03/2026 01:22, Karthikeyan Mitran wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>
>> The DTS code coding style expects lowercase hex for values and unit
>> addresses.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Reviewed-by: Tzu-Hao Wei <twei@axiado.com>
>> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
>> Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
> 
>> It is not a big deal, but I just don't understand what are you doing
>> here with my patch. I sent it, it got reviewed, so why are you posting
>> it again for review?
> 
> Apologies for the confusion. We weren't sure if your patch had been
> picked up by the maintainer yet, so we included it in our series to
> ensure the fix was applied along with our related changes.
> 
>> What is the point of this posting?
> 
> If it's already queued, we'll drop it from our next version and just
> note it as a dependency.

Queued by which maintainer? Why your maintainer cannot just apply this
patch?

Best regards,
Krzysztof

