Return-Path: <devicetree+bounces-275212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPc/II8ItGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:52:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF3B28340F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D51433064B9C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835A637F8B2;
	Fri, 13 Mar 2026 12:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oPAp0SYR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jBwg/3xp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB1937B02A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773406349; cv=none; b=UaIOW2oZi4sfKk9TTTkpzDfwCij9j/pfYlZxG6pY5YURCg1qcZ7gDTqk7n2gAvEJX7fXrxjRJNRx6vW4U5b9ULc7sXjivcYyEXmJUk/uUHwZBfZCSnFIODAM/oONtIuqlUAwnNpLF59YPs2swinsMbAdCxRDEObPirJNxvBiBck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773406349; c=relaxed/simple;
	bh=wtDbhbmNnfEqEzyJzSlKLMntpH7AqiBe1ctdQmC+84k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EejgptPyuqsJw8XSTkWoF/qnyFNaQRVlcw01laBdePWNNyezKDCOF6uhgwKa3Md+MCSBo/B9Mp/mBtCoThrcgmv5GJZCCdmT04FTvImxMlNyJB0N1uad5vQ/MGxVYvzb4n8ng5vqyD3QTPtQRkiF544xuHNfVIGKhJRka1cfmJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oPAp0SYR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jBwg/3xp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DBeRWP3229800
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bfg4L5JUbKgcj3urNnjZrvnI239bwc+beH+6JvGVSxI=; b=oPAp0SYRNQn53PhL
	He7aTOT8HZrsHCQ7npPny19iaISjT1FhvOMwq6B1uoY8sZeIHdbmEccjPkqwLeUi
	xDJGsDbGzNCHJEHenSiG+1r1XN+vEShtyFmF7vyqLZnFN5ap/UtWUPNfd/Ajoysc
	KwaE640CMTwEFvC5dGxnqCmr0Y5WI1gff2bASYpVSdF3JDdJNuGwg6h33OQ5lsST
	8v2wDVzC/Tlz69SbkEMd24LLuIRHE0bBhZLsXu/+FKbMrWlOcgCIZNbVAC7GfDpP
	we561h7GIpCVnlc0NLOnzBQQlvz+C8HM2U+lNYoeXHa94r/bgKsPrTlCHGEKppC+
	TdWPwg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cv8n7j6dy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:52:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8954b9b5da7so15102086d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773406346; x=1774011146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bfg4L5JUbKgcj3urNnjZrvnI239bwc+beH+6JvGVSxI=;
        b=jBwg/3xpOz0MkqELLun8/T+PU1qphEmacZq40MjGitRx7Wa1/CXjOAJ5j1RYeroHlr
         8BIDWlD8B/qxHpsTu5TGuA0GdbaWo0F3FICMlUV9rRKEj4EFEGDHKpFXU2H3b90zsAYK
         guHefMnDZkhDjv4KezOiGXFZ1TIHN0qYpB2cSDv4c7L9hiy/+WJSwGfoSb1vlCvT1EJQ
         K/xOh+9kIYdFefjejSgEKVtv3Esh6k5cIEgkpUVsqU6/KNSt8cbm7wHy08ZvRRBz94Wj
         quOCVfLyHTbSa+GUVZm12bkgrheIatLfX7qVDZLclwtKx63oAOft8jmp2hOOijx8ZFcg
         HzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773406346; x=1774011146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bfg4L5JUbKgcj3urNnjZrvnI239bwc+beH+6JvGVSxI=;
        b=q2wa7PM/PlMruCbbWOgffai/5cgsALOpUsp/+me+yt6X/UV6OzVkss4AYKGEOHWcZ7
         OLcGnABUiX1kpXwGY8FAqAVxJKxFsdsLvWSD6AoujdEixJZLtv0MD5vyR6n9cP4eSE77
         3Fn4Jz6rIdSXyUdhGrf88er3Ybmdh5GRn6Xjzlg0GMSfJQGjfTvv4/icexY8NE+pcZuZ
         gGTJdvHZDpIuqsJIXhAZ3lbaT0uYvl9iMD2AfAJuc+9AE7UC9LdSzs9OIFK7jpH/kGmn
         t3BYC5Lb4EuCkXeQ4qKhfDo9KW+R2ubaL/IJkx4ja0A1cvmeOED/EeO/TNGcuyljz7TC
         G7pA==
X-Forwarded-Encrypted: i=1; AJvYcCVGm2t5KECIK4on4LHoQdN2JYfChyJ7uZs7pHo5jbjfDqHOTaRsLRUFl8ugH0LBn9kiNvUWwWWBXV62@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd5wM/F+FUW5JFkyb8bMe3tTYMi/8CIUwY6235D9yr1mcAkjhR
	UCzKqy4EX4blaq+yaR3UsbLk06GyOEVFlNvUbBiZD1W9YMYtxzDEKz2EclAZujqG4L/iRQpi3F6
	KTgqKS0IXxXdzPUqTDAOyl2neO9/WauL3TnhcgxGjcIMJPVwxsh/iXSBSzGyGsQBC
X-Gm-Gg: ATEYQzzzcuSwk+28VXlF50ayGieb/Btw6Tj+N6o0eG9LaoaUSJ2ZJxfTV29wLtKN9q5
	WMpyMBzeAO0/9h3lv1mP3kfQmeeGGiz5XST7Na6UVFZ070v+BaCdHBYxl8GPZRf+8co3+A+FLmU
	b6FJjs4vuRxfnnZWcleg8ak9Z2PaiUX/J+kT9yh7e3ycPqQRK+stlApG+sLiNIF/FE53mbgH4pF
	GBfq+hVUbignvW8oggCa5kHt0SOFphYcyo8nX6VZSGkuNVLOit17+DGxqmsrRoaLNJ3FFeNRajY
	a/jEtsH9MPWSO3LHYEpKXPwxt0ShpH+2GvGo/Qo9fuKxmru7Is+2I9oHnCXIJQIoEL6ANNTJvB9
	zNSzCttjkXHF8XCPkiccVzqYf4MFvb4gKH8G4V1Td68E8nV+3E8YzmF4Q/s8hGlvYq6XelMUeaE
	tYTrQ=
X-Received: by 2002:a05:620a:3193:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cdb5a2d141mr327694385a.1.1773406345673;
        Fri, 13 Mar 2026 05:52:25 -0700 (PDT)
X-Received: by 2002:a05:620a:3193:b0:8cd:923a:87a8 with SMTP id af79cd13be357-8cdb5a2d141mr327691985a.1.1773406345267;
        Fri, 13 Mar 2026 05:52:25 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cc29844sm44696966b.30.2026.03.13.05.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:52:24 -0700 (PDT)
Message-ID: <4e4054e4-6e5c-4623-a03e-2fdf1277a2d8@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:52:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add Redmi 4A
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260310-riva-common-v2-0-3bfc23996857@mainlining.org>
 <20260310-riva-common-v2-6-3bfc23996857@mainlining.org>
 <9b6520b3-aa43-4657-aba0-bba89af8a47d@oss.qualcomm.com>
 <37f385d1ad7a464771e641807d75f5e5@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <37f385d1ad7a464771e641807d75f5e5@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 1qpJo2ggXjgUU9fdTZHuOXuxW2-xmYEQ
X-Proofpoint-GUID: 1qpJo2ggXjgUU9fdTZHuOXuxW2-xmYEQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwMiBTYWx0ZWRfX5M/1PDG4Zs4W
 NqOMC9twJKDBi6awGfGZXNdR8Yvj0Yhe4mxB0FK7pH9hQenbfTQ/IxOpsLRjFMbGYH/a9g9U5/H
 4G8S+eyzA8Y5/POq7/y4m5Ew9EMdkZ5sun4gSLg+/lCmzJBMADGxnZe/d+qCKmri+hrpELrETmh
 ir1avPkA2ICBoh3uFX3C74ybDn+akf08VuHkxsot/NT9m/a9BwzeNaCCe08JYE+zLdemAkaVhbM
 6OGuzMlupuzc4OE4Mhwjf5KrOJTQsOHXOfV1WAyDOIVoA274WqjMyDgvvApA1DAsUMIJu4vyFHq
 7ZcgvUVtpfYZZQIQ5x/zflLIOiQEz/SQ4xEhHjW1hC42ylAer9sVwbotUOTurIF4r8KP8mjOFpy
 /kvier0ljeBS8UQOaHlRh7DJQYB6ojb4cGIktS+6AH4eM/jPRipyNWTnszI84u3bJN7GKHX1lXr
 zk3ZfCxv1+kTvZYJ/Yw==
X-Authority-Analysis: v=2.4 cv=CpCys34D c=1 sm=1 tr=0 ts=69b4088a cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=f6X2TnFsAAAA:20 a=OuZLqq7tAAAA:8 a=5Mg_qL-c0DIWtcCVzYIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=AKGiAy9iJ-JzxKVHQNES:22
 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130102
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mainlining.org:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275212-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EAF3B28340F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 3:38 PM, barnabas.czeman@mainlining.org wrote:
> On 2026-03-11 10:16, Konrad Dybcio wrote:
>> On 3/10/26 6:21 PM, Barnabás Czémán wrote:
>>> Redmi 4A (rolex) is like Redmi 5A with small differences like charging,
>>> fuel gauge, different speaker codec configuration and display.
>>>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>
>> I see the Go has some differences in regulator configuration.
>>
>> Does the 4A's one match the existing 5A?
> Yes they are same, l22 is vana l23 is vdig for camera sensor.
> riva and rolex is using 2.8v for vana and 1.2v for vdig.
> tiare is using 2.85v for vana and 1.2 v for vdig so l22 min-voltage also should be increased
> but l23 max-voltage increase is unnecessary, there is no reason to keep downstream value there.
> 
> Here is some proof https://github.com/Mi-Thorium/kernel_devicetree_xiaomi-msm8937/blob/dts/mi8937/4.9/master/wingtech/msm8917/tiare/camera.dtsi#L16C1-L23C65

FWIW it's easiest to work with decompiled DTs, as the include chains are
often very complex. You can then throw them into ./scripts/dtx_diff or
similar

Konrad

