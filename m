Return-Path: <devicetree+bounces-321587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IhkJAqMlTGqUgwEAu9opvQ
	(envelope-from <devicetree+bounces-321587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:01:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB01715DE1
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:01:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=nXloEUAu;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="Dl+GgkU/";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321587-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321587-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0267300D76A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCFD30BF52;
	Mon,  6 Jul 2026 22:00:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BFA3A1E80
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 22:00:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783375232; cv=none; b=UoSI/dZSSucbEASmQKBPzUXG6A+OoZIJEKFK4TLOwHHFgX3uli+5B212bnFP2JqDv1MYL4baNG5R+36t9dfVIIM6i9b/cpcM3sqDs0cAezKTBglgsD6rfYWAP+3Q72WXNK41uzPozdvU0Sf8HjwOe+oQufynX0nzyEcyzGNOD0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783375232; c=relaxed/simple;
	bh=MR//AUJFpSVzyxokXobc1Pj3ojV9uirrrJFh0I7MFXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4LPmq0lxzrLfNkKyhxponwu0pb1JVwj3q5KNKYLjq1gh52It3Uojn2uspZjnVKMktwbZBXLw6nxK7hzRR+ogDVwbfb1SXWi6ipdOaiEW/T615uxXnT0RZw7MwkVT1uOCAKGVldC80koTsxEF1Zbt0PAdA51OWUPdweQpOgmcTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nXloEUAu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dl+GgkU/; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666KDwft1478003
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 22:00:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UJ9CchBYgkba1ighCLzdrX5XHMqvhwflUCwUXgnlH/8=; b=nXloEUAus6N2V2gO
	A1DO4owpicH2FzAcrxJEyykSEBlIYqyCSXQsYFhlOY3ekVtKlmFjCwGDAHl+EtHq
	98SRm2L5V43Ueuu/GmeTDoJd2lQJ/0sjTRpiz+3bYYs5JeZ12/FNmy/jsPMXAU4e
	5PRAEAi+2m/qIJHwvyXpy8ZSI+XeRWvH8HTqvvM4q/WWGD4zqZMtX0K0iQ0ZsUP4
	pfP8AJHTtruE0TAYsG/HSVdadfx0nKINjL++ym6AkwUdSjxH3DKrF7SkqA6tuzs+
	MOo2jrIpOfdwVmlFBHPn0FtH3N+YRp/zYhGUd7828HyJIeeM78i2FOrdk9RdJnt3
	vyGHqw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88hsbh3a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 22:00:29 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c89704da8c7so5608511a12.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 15:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783375229; x=1783980029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJ9CchBYgkba1ighCLzdrX5XHMqvhwflUCwUXgnlH/8=;
        b=Dl+GgkU/e/+omr9s3k8UoOmk2pXfeIeSQLuCEJTRRUPkzrFlv/Zq7Dp2e815bx+PgG
         218Fx0IavusKN7ZNv8Wsy6jE0VMMV06ttqNSwSYNtZwFkf008SD2rp2c/otWTb9bAsCX
         fk+dSDUUcEi/Jo5uuZ3zuDi11xMKVtomTajK6EpnhU28u5m0fRk2C21v2IdHvfJbHugU
         pscZUwUM96yljiOvyM9kZw1+LmhYbGcl3PD422QFGqgdLJ+KRWD0B0UBvzH1GoYqGMKW
         pKS+hT7lu06+mcnFhKtXdSVstzcQAcM4BLDNDm5G2AZcf64kqVlmcjyQIk5CR1/dnCGa
         lUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783375229; x=1783980029;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJ9CchBYgkba1ighCLzdrX5XHMqvhwflUCwUXgnlH/8=;
        b=eCO2J+KbSF9UeOkSQLK25Z4hoHr4sqXDlYbTmMdrDKHP5PqqVsVjB6bTeoLv8jyvJU
         rfLLA/jL9wW+xhfHpj71Bg4Yn97aNw8TZFtN8hJPpp6Xb+RmuPKKmhYuNqeShKYwaAA6
         4nsFFpwwdXCdWX06SqMwNIMcQMUmDyk3qb/g19Jr313jJLujPGxH08j//x9m729jygLo
         ePdc3GOnCBpjhQLBG+x8X/DxxmMiZgD1Lz/rkgTV7SkcaypN6+wXWDfPCoYAslDPeko0
         oIPvub1+U8MxHt9UpqVFTuNVYuw0CvXg5WY2DEesocE3Ep8G6M2/OAZe1HBfzHTIFlyK
         WyxQ==
X-Forwarded-Encrypted: i=1; AHgh+RqP4CuqSCL5xpvJnEjgdeAuXs/CEN9lKth7XEOkTrIkLM4urVyr0XGAgS3EBObWUrW58W2M9kp/TLVF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8GAbjgMXNpOeFen7seQugvIp4//fiB87w9URIKSb4T79rg7S9
	1ZKm1IxTz1w4XaxcAE8LKkPYC181wggL00FGEE6dsh05X2i0Evdt8WA80s0DENpuJK25ImmAHae
	MXiq+Miv4K+lMAtdPrh7U3HEl1Y3fVrnoeeqYhBicvIL9QiTdAKIXYb+wfVKRHj8q
X-Gm-Gg: AfdE7cmmpI2fiktBn6Ngk+7Rl1EP0ILmRAcL9dkrnu7Mc4hDXjwvgZEEkN5xl7sizUz
	uOVKfzOB2dZYP2y5kuo3WAoJvodeufKqmQqlXS73ecNBrwYRZvGTZdrzkAgqrLUQBOzzFHzzXVc
	FSmvNkkf+aB+uPgy+tXpCaf9Ddo1X1x/1uw0IUcza+LtTZ/t112No7Yx5naxyMGnLV6sDRmCfB4
	AAT9ttBT5GcknjdAig5m8rMcaKQ4trknPXX3EATsjgA3RXzNjsga7lZ819Tk5ydABUkoCgdOgHm
	xblsTZ1jGrJRPLgTSYnMSGcqqiakfpl/7PGC5YkUiCCppIDt6e3WtnzaElGpNiwa3OWoHELFaSR
	Uv+y9U01PpGJkhWRb/oJMQ3Vuos58OwVqX7M=
X-Received: by 2002:a05:6a20:6a0e:b0:3bf:a0e5:99a5 with SMTP id adf61e73a8af0-3c08ef84c1amr2736377637.47.1783375228960;
        Mon, 06 Jul 2026 15:00:28 -0700 (PDT)
X-Received: by 2002:a05:6a20:6a0e:b0:3bf:a0e5:99a5 with SMTP id adf61e73a8af0-3c08ef84c1amr2736318637.47.1783375228354;
        Mon, 06 Jul 2026 15:00:28 -0700 (PDT)
Received: from [192.168.1.9] ([106.222.230.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659c8665sm693268c88.10.2026.07.06.15.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 15:00:27 -0700 (PDT)
Message-ID: <10e4f102-3dc9-4fb9-a6ba-2dfc23a16df3@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 03:30:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 00/13] Enable LPAC on a7xx series GPUs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Anna Maniscalco <anna.maniscalco2000@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, iommu@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20260705-descriptive-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com>
 <mn7dmfbyt2hnvlb7u2vnxurqef3w45rrjanhkd5ei65sgasfnl@l73s4c6yqxbe>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <mn7dmfbyt2hnvlb7u2vnxurqef3w45rrjanhkd5ei65sgasfnl@l73s4c6yqxbe>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hmxRAGKTA-4m0KsAeQqzNUJF_I55xS2x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDIyMiBTYWx0ZWRfX/++My5633hBo
 su1l27VMT+OwZPdG1RcMQ/LjVDFmKH5TdqBrJrkRBEK0snreyTWzX6NP4V9CYAXdwrLIxi6aiqL
 Wv9Lzx2csT0qU4mh4WLyhL9auy8uiU2LoE7CqI0X8UVhdVVCWGBMfwLz2vF3yzQCMz0GXPv4kA1
 GRPwKTbtosRlssimcS78thzHbyeOaMIWMUo7w3ijVV3vNSqGhfoXF9FhQyB/RpL1dHEZogAUbiQ
 KwZnm3uhLagpohNMIOhDEN0HOYSLZ/FUdJupehAM/K62f6yhvuwHZCqLi1gDcLafzMxcFQofbCE
 EFmM7Ge+GzFtxjo4cXMCY8lxK44ZesDfJMehAjdSDw9J2QWGE0EHpT9Xd58TA2Zxt9LWxrsLTG0
 qlx0XqfpPJArIxkLRlT0UUWUlDNQpEfCnY9mtGLk6VCm4zYo36vhBrMML7kZGNPeqFGb7/g0dCr
 wbNngXrLXBDc/pFTNcA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDIyMiBTYWx0ZWRfXyVYlNL/pnOGf
 OF8H95Y9qw4QUQx7BRiGvqhQgFOLsdMm4FkaQ8z4jSCmGCbwFBN/in28jZYUR0ccPuPyiLh3lUn
 Me1+uFMcfz4egGTn0wXKVjNo6P2Oqbo=
X-Authority-Analysis: v=2.4 cv=XIwAjwhE c=1 sm=1 tr=0 ts=6a4c257d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fsdq8dFr2Uux402FS9br8A==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=TH67rrwzn_JHXtltAFAA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: hmxRAGKTA-4m0KsAeQqzNUJF_I55xS2x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_03,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060222
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:anna.maniscalco2000@gmail.com,m:robin.clark@oss.qualcomm.com,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:sean@poorly.run,m:konradybcio@kernel.org,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:andersson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:iommu@lists.linux.dev,m:linux-arm-msm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:annamaniscalco2000@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gmail.com];
	FORGED_SENDER(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,arm.com,8bytes.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,lists.linux.dev,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AB01715DE1

On 7/6/2026 8:27 PM, Dmitry Baryshkov wrote:
> On Sun, Jul 05, 2026 at 09:13:34PM +0200, Anna Maniscalco wrote:
>> This series enables LPAC on a7xx GPUs
> 
> What is LPAC? Please explain (or at least expand it once) it here and in
> the first commit goes to each subsystem

Low Priority Async Compute.

-Akhil.

> 
>>
>> Currently hangcheck and recovery are broken as the patches to make them
>> work depend on https://lore.kernel.org/linux-arm-msm/20250911-preemption_aware_hangcheck-v1-0-974819876819@gmail.com/
>>
>> The series also depends on https://lore.kernel.org/linux-arm-msm/177919116291.814652.1720687887970998122.b4-ty@kernel.org/
>> to work correctly.
>>
>> Signed-off-by: Anna Maniscalco <anna.maniscalco2000@gmail.com>
> 


