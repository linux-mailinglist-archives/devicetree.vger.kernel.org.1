Return-Path: <devicetree+bounces-266143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4N7OOi5olGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:07:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2017D14C63E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F94E300404D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9450B35A93C;
	Tue, 17 Feb 2026 13:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yg2j5Faj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MEq+Buc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C2935A94C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333610; cv=none; b=GUtnLFG+kweZQME5Cu4omLg4UsAEVWnnBgY9VKuP9TL+egnsep7b1u+RWxjImkWV5TC8ndxxMqmE+su9CYyIxIDetAVlccigGbnB8EQ1o9TDeUYGtQ/Eir4sJQiZNvTg2YUusVeHYi+LlHzZHHEAsLr4da7gl15TWftqSCxzWig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333610; c=relaxed/simple;
	bh=XGDYv8+ChssJeftiwtVClAwzyktY4ZH7V/vRcYP5oVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=iEVpRuG/n7PUSRK9QfWfUYVcu4BYVo1EwhusmZ2lopVY5cGkq/wtLkpPyqqgGBMTvMtFhkbVV68rDxuzFuVXVEEbxyrD1tuA4/dxb5fzk9ckPD0FMtzmhv90y1ctwzPMAE0vI583cn98wMEQIMX5DJHlg/N5fYQVrwg1uW1EVKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yg2j5Faj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MEq+Buc9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBCvmu006270
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=; b=Yg2j5FajEkyzhS/n
	+2ph6RNeY1ywq/V78j8DaUgd/yFVMoXmEcRlISNXYKvdQl6s7jBImNMmjy5sGBi/
	Jcgzb5Z1U3RfKV+V1h11LbeGdK3ZmSOqOpYcZYkjojdD5udjCDrnVCUM5CjCzXuZ
	Q0PrVayx+sE+PotecvOVIHL/vHJMvREgFZQhnI/f9Ayaz/QWqWufh7CrUNBghRJI
	QdgOTEVjn4sPlCJciGGdHk6y4AwKIMO5NVQiFw6KNsudJa05kI85KYUm0mRZDtgy
	iZuPmA5G/3DIQVsyUF0EjSahjWmEhbM1oMttUxPiPuD4CKEZU0SCKkvmPI3uUmzi
	xctIvA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5khama4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:06:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c710279d57so311749585a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333602; x=1771938402; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=;
        b=MEq+Buc9j0EccU5+q8/tKwfqpp3P/WUKuhe7lazsbPBS8Qb/SprV8oDNE+v3Ql7pW/
         8VE7QxG7VHxmTKm+kcaN6BLoP0oMc1Ke2PfBJxnuLYewt8F/GJINAjgv5blBfBTb8+Zi
         ri84xFVeRRWJHiBgQ7dzEJL3R9EOsYiZwA28ZQBDF+Etcpulja5ARxFhliLM5qTsCQ8D
         hI0nebjIA9Ajgefw96m5jH96G9axaAo4KY3TYVeiPQL0YJGcRPtzyQcsFgvI9c7eYEWf
         UgCpPw9qisTn/fpbyJ1eNr6D4f/4nNnhgMasXie79F+GUIEtu8I8P85k8oNSPFaSJWjf
         qHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333602; x=1771938402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdOaicgS1QlU9kJAG8SROo/OuWOziM8P6FqTRQFlr2I=;
        b=o+FrbojVUNYenDofnCkGuNLO+uX/gDsiV/3cQgydiuBpOvG0WQOyYs3BXvFAYHa3PS
         K5cgojjLygoq9UwB95JpNUMGKRw7YniWRHOCyl9BRPu0nVsJ7OkRiDB11wLX8b58IosM
         NglBNNT6xmHtUZO01QSwqqv6Kw4p8QtXrzptJci+sl0hg/ptjUeU/RH9TJmac+rx9R/G
         G8ae43aQ69ICmpSqUf/FxWIP7uzby0wrQZfNByVuCnC3x8Af2nZe/MaGGj5yYbfxrscU
         gyeKJFhgsdZDjQPM3Y1ZZ7S9ZTdUJjdiW3IOnX65X6HIKcw91PPhnmudvgxnUHTBzKkp
         NBjw==
X-Forwarded-Encrypted: i=1; AJvYcCVllVQHEpj7z7mc019i5Klk/S0iCNHgDZObQzfK7CbrT/OnokBrctrASm43Exsc0ZAlatJZQaGzB5fH@vger.kernel.org
X-Gm-Message-State: AOJu0YzImtnSH4OeGuzbXOkhNaiu41/xokYg7lSfZF1pORnH8c7/rS+M
	HWRYBhqDfAm6rqTFLzQYT3X1unWpagIv/Yp5asmrAZjNLBDiInU4NwZK5F3BItK3Oiy+MwhRI6r
	Ol1pGgBj4d/GBEvRsdfpnatpklCeE6+tLvj/VguUYC9YHJmG4K2Yr2FX9kPeQnMQ0NCXnEpkE
X-Gm-Gg: AZuq6aKKc/9VQumBIVFBli+0Vbv1fKFIIa97f2wA3zXH13Dc3pV085J6Oz7H0L55qe9
	toe73q2q2JiLD6FSjUwnT1g7kzqxhaixRUh6elQKKH/GgdfTiOZJxSycnhPdyoXzmPuO+QmaoTJ
	7YIHy0IIDqiG8oAdi1njUqtuD6gcJN6szdz8UHoYHW0XSXKnMkJQF31d0RQ463DW24aJPC9XxAx
	3/4D+ZGhv/kw8vlmw0kQ5Y3x3O+5fvuGlCWTGPdRRBebk0kG5/O2p18FQK+hT+2X8+bI1IosRgP
	3dqUhL3iRrZgDtMc64Y1UZj9pP7XXPao5127UhROWM6rpvqIQway84tKUb0bLVmyHTVvJkUJ6RM
	olkoSZwECfw61WhvdDmSxHd4+mrpg/jo5uxtUNpwplSuXBT7VaKWwepZRcdzwvytweu6yCDixpo
	rhKj0=
X-Received: by 2002:a05:620a:460d:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb4073e264mr1339104485a.0.1771333601811;
        Tue, 17 Feb 2026 05:06:41 -0800 (PST)
X-Received: by 2002:a05:620a:460d:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb4073e264mr1339100185a.0.1771333601372;
        Tue, 17 Feb 2026 05:06:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bace3fc4esm2497219a12.0.2026.02.17.05.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 05:06:40 -0800 (PST)
Message-ID: <1658ebc4-e8a2-4fd3-b587-918884181d49@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 14:06:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: qcom,glymur-dispcc:
 De-acronymize SoC name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217130047.281813-3-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=699467e2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Rh8BIR2qzSpX2dRZ-WwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: GGTT-E82714IAsYyhJBlsFBgRydZEGMO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX4gtuBptBVz56
 Y6K2OOOzID8NVvUBPXcjwXSJf09k0h2/C3CC9cJpUz4nViZC9D5QIguAWDK9NxFSriCDCDLlU78
 Zp07LT9c2ewVT41BZEetLE1prNg/RfU5FrdE3i7/dIVQ96WbQKvpfBUuHdoO15nu4VDAyP0Wypr
 SQ2CXF3RkTd/17PKz5ElHU3kXVACGNpnRS99E65rEJnAWr8oMEB0488cpw8SPWUDpk293jc3bAT
 OLuxmQ7rtl9esGU24uUwyBRTBYEmj9i8SvLjYvAa4aaz50QUaP8JbVFPa1SDUqNOGJnJw0XVvxF
 34VhlOCM40hEkMzpydTp+ftaeuH6L2fxuLO2lBEVgo08iLRq2x3sijIpt+kPaD6nmOaW5NObfHz
 RbtXFWmYsjcv5stmRSpXOUl7PQg4edu1h0OR4SqqUlHjQoNdDeh6s1+hIGYrQTYIzpLQfoRxEzI
 EqxLVqCkzkwmMRdtexA==
X-Proofpoint-ORIG-GUID: GGTT-E82714IAsYyhJBlsFBgRydZEGMO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266143-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2017D14C63E
X-Rspamd-Action: no action

On 2/17/26 2:00 PM, Krzysztof Kozlowski wrote:
> Glymur is a codename of Qualcomm SoC, not an acronym.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

