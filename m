Return-Path: <devicetree+bounces-277162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFFaG8SNumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:34:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 183452BAE58
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 600463006B19
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B863C277C;
	Wed, 18 Mar 2026 11:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iBAEG9Tx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dji2kYph"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0EF399346
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833386; cv=none; b=WDUTRIokPBu6pwVk2wbpSCJ+GEpNLjRnXtux8njfc3NAEW9I3zOGy+w0ooEmfKDGbPBX0MlbVr93zzeAFAaT3Qyt6y+lZSZ1i7En4lkNd5reatMGj1xnLoW2zm1sa+07+obWLe7SQUqo+ANNugA6lwmX8Iok6Tt3bRqfd8dCwoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833386; c=relaxed/simple;
	bh=vIvLWzNaSaJ+TJyGFrAttctz3ButSBGXrVZWzeWg4Z4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I4QPUQjdj3rY+LMtYQXaqo50trSamBfND0em64NDVZYtKmD7OL+ZrcpzcoStjXJRlEDX0OEFSwvD+NUAwWant/3pci8BQtxSVPqgI4JXr48QyB0K4jWYm/VIxBoXvWyno93ttYwiXt1yY7pYC7bYyJYOIQoHl7hgrkhdSMG8hiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iBAEG9Tx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dji2kYph; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8IEM62789395
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:29:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8rt3Niom5zfDQ+BPSAeDMv86/pbN8GgM7nWLFD/powk=; b=iBAEG9TxsPEQj4/n
	lmZRrPuQwetiQXBh6MXIwbeUjKDFELFXoG36+4R9Sl1Y6dZoren4jFRbOVdkxPhf
	9MQV1lUpSDODnU4B8ZtOFIwwpR+qOM0JxOWCr9KOO0iby7dW0dccJohcU9nMp5g7
	0CIRi0Gm9TBLs/aBFspUu/cnJUvREA7AvqZRSXgeyPZ0Ry9nekp8dWg54vrST20A
	T35YEwPYtXViDLmM0nCSl9p5giWHVo9BcfNTeS9DcQEmvkXjzQ9y+1lKQpUtCJT8
	vgG6EA9UWeJXsdGTaeZg3cEdJFz+hHxvErj75WQKsX7osnbGKStbqzOodfFsQb/i
	Sh6CaA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4g2a7h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:29:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb39de5c54so436956085a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773833381; x=1774438181; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8rt3Niom5zfDQ+BPSAeDMv86/pbN8GgM7nWLFD/powk=;
        b=Dji2kYph/hf1fqaoiPGcluhGbd7soEoy+8qlZgNyf49uQPHFXIXgy7D/ULOhurFVqf
         XEW/bxyS9np9pHBNi3y7HK42w2Qt1CRqlfuynw7e72kT1aN4gt9nXldDsSW7j9vopwEi
         MjHfSuz5NtrmiVP/ijLEarT1rQnWJU4ao9dSSeXUJATXIvIXjh/VLBtwMKcNc9ibfokp
         BfeX2IjrbgGlqJuKz7vs6NtAL10Aps4QHRcXvrZF9BV/4mSdq9bBPeIAHQ6pCuphccrk
         Tx4uTkWYbbj+oVWnOvQm7dxTSUVTe5uL5oU+d2XVHlhzfGlfZK6SxWT0WltfrAJVikqk
         3tAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773833381; x=1774438181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8rt3Niom5zfDQ+BPSAeDMv86/pbN8GgM7nWLFD/powk=;
        b=oMmFic8rbaJnoHDnYDgVKsmNhMeqv0BJNkyD/yRdLRs0entDPazUmB9jmmZ2UfOV3I
         2j28+K6JC9hKv+yUW8yKXXZRn/rR9h7tUYXAW5d0psafKBhzOpg3u48PW/qoq4HEFjO8
         UK2iDz24nUOKQc1IBpe7cqGEFW7tRnMmEBsKc9/P+035tv4rb4rIixxsvqTYcpuExBlM
         ZobryIkDfUqE0pYgNIlZqh93mzduYpYFIZLQo6ro3BZHpw+BYqwLMUnRXvXXnVw4rkkq
         aT1hgCPj4WrhCWhz4nCs2K/rP9QFwewed+7Y5vu2rsM6aKsiY8nZnYlzDrclk8Sawrh1
         bTVg==
X-Forwarded-Encrypted: i=1; AJvYcCXdVDA5KyDrADH6XrAPM2zgeU0825HgrcIQ45f0PB8Pvnodzl4UN+615qtzLlKp0D0j/YBs4s9blkVi@vger.kernel.org
X-Gm-Message-State: AOJu0YzhVZHUvK/IF6519sCcY8SSQi9sQj9CLK83yl8qrkXL15FUm9K7
	D+ZI3pnF3GjRV0L9fSuPuGIiw3Vx2NZ0R+BcnFkHuVxlxkcX8UR3obm2vK+hEfSWVCz1QmtoyBh
	iTfU48Lm7NKISu0X42kJJPrr+2Rw7pxEjgrgqy9EpyPfRKH8TcG2KY8kGXALDG5Bo
X-Gm-Gg: ATEYQzyVlm+Bm9Txj9IrenC/LLqCYGKYcyntAmB3mcFks8PCUV3chPK1sCvNPkKMZrY
	NEjn1zk2GbjnZN2PWbpngsxgIpo63lHCr0WFDpxu9GfUbOAvUMrlBerXD2Xmmr1KFZptq6SYY4n
	WMdTHqXapZgh6NkXXvJxHReYB+LXvy9kaouoIfV0pe60fF8m+cZprrUAo9D49myQKvR9qhAwq48
	kjMG7ENssdNze3r9jDht1sGtP+/BOd4we5+1SixWh1vskpGvlzNgpQlMoWA1BgeaxtYogy7CsmZ
	mAk62WCotEQKJ4DaujgiCCi1KmrBMMaP9YoilCmDAxZ49rMYsULRWhBWy05Uezh4StSTdSGBgop
	a8daPDbIbFf9PCpdEWDp4PPKOQS5FPZc5VOURwYc54Z080FDnKNQsDiVrg6FbFo5uFhfitCucow
	SdwwM=
X-Received: by 2002:a05:620a:4724:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cfad2533demr297209185a.5.1773833380890;
        Wed, 18 Mar 2026 04:29:40 -0700 (PDT)
X-Received: by 2002:a05:620a:4724:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cfad2533demr297206285a.5.1773833380361;
        Wed, 18 Mar 2026 04:29:40 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667af38d891sm1582078a12.9.2026.03.18.04.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:29:39 -0700 (PDT)
Message-ID: <4ed72391-fcd2-4ad7-94da-45fe13012953@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:29:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS ROG
 Phone 3
To: Alexander Koskovich <akoskovich@pm.me>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260310-sm8250-asus-obiwan-v3-0-9ed8f0e71e19@pm.me>
 <20260310-sm8250-asus-obiwan-v3-2-9ed8f0e71e19@pm.me>
 <daa464f2-2052-4eb2-98bc-926ba174ecb8@oss.qualcomm.com>
 <nNinWyYOTp_1MjE-6JI6S4NPPxfZHvnIZLblp0x4t71DVOXn0ScH--kpAs-wHBQVUpgSvIZmOKRMmUVNzs8Vcm8PG3_4hFIW1jVx1RES2sg=@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <nNinWyYOTp_1MjE-6JI6S4NPPxfZHvnIZLblp0x4t71DVOXn0ScH--kpAs-wHBQVUpgSvIZmOKRMmUVNzs8Vcm8PG3_4hFIW1jVx1RES2sg=@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TPhIilla c=1 sm=1 tr=0 ts=69ba8ca6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8 a=EUspDBNiAAAA:8 a=SwhEMycmah-h3sa3uUYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: KiyTbVLoJaPSV5fY0gfajDODFEB06rmZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5NyBTYWx0ZWRfXzhZmqOCYZuIm
 CdEAY6PGWaZdYgjmYD4ZCTKMBGpTiopjr9WvdJ/t5CWFW3cVf7XhccgbYpC5sahZQH4N/uHXfmS
 f/jQpkqVR3Qvzg6VixPYr6h9/8QVcITkD+WX+duw9UQ4AgbWzaOlOfILTjHs7X6UJW2ZBa8rmb6
 HY2htCCz/eKXMbDDOC040hF70LkA4WqA7H/a5rh3UEM/+tQ25S0ZCop/SnJSJrZXYkqnnQpz3UC
 d8v8wTR9khfqtqRTi3xFlzwJ8ObFa24zRVGDBq0m46c3hTOcbKonuNhpoMPBo7Nb1TQ8puCAR38
 V+8z5ksoLHkTKvBRtgRnfqTg2Kz6Zyn+/rJBhQK2tvDkbQXdAJg0WnVruvsQAWw4totsVS6Oyyv
 onUD7UVaCZdBUmh1xu/OTbNd/Sf6vS7jIhTZci2UmbZw6b4dRuiBYA/QxbZRPuH3xvEGHEKjqh1
 AMoDoP9ESsmXCWYnxVw==
X-Proofpoint-GUID: KiyTbVLoJaPSV5fY0gfajDODFEB06rmZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180097
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277162-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
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
X-Rspamd-Queue-Id: 183452BAE58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 12:14 PM, Alexander Koskovich wrote:
> On Wednesday, March 18th, 2026 at 6:28 AM, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
> 
>>> +	/*
>>> +	 * There are also ER & EVB boards, but those have meaningful hardware
>>> +	 * differences that make them not compatible with this devicetree.
>>> +	 */
>>> +	qcom,board-id = <31 0>, /* ER2 */
>>> +			<40 0>, /* PR */
>>> +			<41 0>, /* PR2 */
>>> +			<50 0>; /* MP */
>>
>> I would guesstimate MP is Mass Production and everything before that is
>> engineering samples.. perhaps that doesn't hurt - maybe some curious Asus
>> engineer swings by one day!
> 
> Actually the unit I have is 'PR', it's one I got from ASUS when they were still
> sending out phones to developers. I guess the units they shipped out were preprod.

Oh, nice!

Maybe 'public relations'..


>>> +		source-pdos = <PDO_FIXED(5000, 900,
>>> +					 PDO_FIXED_DUAL_ROLE |
>>> +					 PDO_FIXED_USB_COMM |
>>> +					 PDO_FIXED_DATA_SWAP)>;
>>> +
>>> +		sink-pdos = <PDO_FIXED(5000, 3000,
>>> +				       PDO_FIXED_DUAL_ROLE |
>>> +				       PDO_FIXED_USB_COMM |
>>> +				       PDO_FIXED_DATA_SWAP)
>>> +			     PDO_FIXED(9000, 3000, 0)
>>> +			     PDO_FIXED(12000, 2250, 0)>;
>>
>> Both ports have the same PDOs - will this kaboom if you plug in two chargers?
> 
> Good catch, from what I can see there is zero hardware isolation. Downstream
> prevents dual sink by only allowing one port to negotiate sink at a time (seems
> to always prefer usb_1 if both are plugged in, guessing because its used for
> the dock), but there is no upstream mechanism to handle this as far as I know
> (not sure if this could even be done cleanly as it'd require cooperation
> between pm8150b_typec and rt1715).

Could you please remind me how the two were connected? Maybe we can work
something out. Sounds like it would make sense for the two to have *some*
sort of relationship described

> 
> Will just drop the sink PDOs from usb_2 and have it be only source to avoid
> this issue.

SG as a workaround
>>> +&usb_2 {
>>> +	pinctrl-0 = <&rt1715_mux_en>, <&usb2_mux_en>;
>>> +	pinctrl-names = "default";
>>> +
>>> +	/*
>>> +	 * Disable USB3 clock requirement as the bottom port only supports USB2.
>>> +	 * The USB3 lanes are routed through the pogo connector on this board for
>>> +	 * use with accessories, so will need to revisit this when we start to add
>>> +	 * support for those.
>>> +	 */
>>> +	qcom,select-utmi-as-pipe-clk;
>>
>> So, is that right?
>>
>>                                   ┌───────┐
>>                                   │ POGO  │
>>                                   └──┬──┬─┘
>>                    superspeed        │  │
>>        ┌─────────────────────────────┘  │
>>        │                                │
>> ┌──────┼─┐      highspeed               │
>> │ DWC3_2 ┼─────────────────────┐   ┌────┴──┐
>> └────────┘                     └───┤  MUX  ┼───────PM8150_GPIO9
>>                  ┌─────────┐       └──┬────┘
>>                  │ GPIO170 │          │
>>                  └─────────┘          │
>>                       │               │
>> ┌────────┐ RXTX   ┌───┴──┐        ┌───┴──┐
>> │ UART   ┼────────│ MUX  ┼────────┤USB-C2│
>> └────────┘        └──┬───┘        └──────┘
>>                      │
>>                      ▼
>>                     GND
> 
> I misspoke in v3, UART is not controlled via a mux it's just a gate. Was
> looking at the board previously and it seemed it either went to test points on
> the board, or USB. But the enable GPIO controls both. Have it renamed in v4
> staging atm.
> 
> But yeah that is accurate otherwise wrt the USB 2 mux.

Okay.. I don't know whether we have infra to handle it today (+Dmitry?)
but generally we'd need something like

usb-mux {
	select-gpios = <&tlmm foo bar>;
	// sense it via some notification?

	ports {
		// conn to usb_2_hs
		// conn to type-c
		// conn to pogo pin connector
	};
};

rt1715 {
	connector {
		// mux conn
	}
}

pogo-pins-connector {
	// mux conn	
}

there was a similar attempt (I bumped it up.. maybe it'll be merged soon)
at describing a pogo pin connector, so part of that may come in useful:

https://lore.kernel.org/all/20250225223038.879614-2-swboyd@chromium.org/

but in any case, that's a song of the future..

Konrad

