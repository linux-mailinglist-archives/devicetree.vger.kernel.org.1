Return-Path: <devicetree+bounces-265722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB25OcgPk2lO1QEAu9opvQ
	(envelope-from <devicetree+bounces-265722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:38:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B77B143603
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 904DC30013AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD9E19C566;
	Mon, 16 Feb 2026 12:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gbL6T15s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R+APJMWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87F718024
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771245506; cv=none; b=ZDi3yfUZZKOlwXlJ6lOselmBq1Bzer43MvgtVB+yO/JA1UHG9D+8QNmAviqapDre+FTsOQ/mewLh0hA9+SS6PN7IFVlga7cDMFFRaEP1R638CheoIZK/lqVxS0cUbocE8L7pqtOUXow/GqRxNVIBAHmcyNBMNlDrcBejBikE6KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771245506; c=relaxed/simple;
	bh=9VRJwY6iRkDsQtNMB2nDXFF8e0kuihJq65MDPNcoThs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gSkKIrGaC0fLJ3UW3mU10LK3wsMIAxdslk7BO5F8KLvvSFPn0aC7DEuVq66b67Q1cbI5eMVgOy0yd9qvEyM0eXHz+lq8abzNnJtYj0I7Un7Q30gQBZEIvq08UBRjmlzEeIYM0m73xg2EI5Z3EfRT9AIlVP5FpqV5mI3uOrqWpLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gbL6T15s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R+APJMWu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GBeIeA2339506
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:38:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UShD8Uz1Mv9kGLbCfZTe1a7JofET5bcN3YTFLcFt/1s=; b=gbL6T15sqJc0Tsdr
	uD2SJ45kZp7gEYZTO7k6JB4S3W7oaoGb/igiMo0dYJNGCk9vswjloZhJakdGNu2F
	KAFnfov3IuF7El3XTNAlQ2Dk88IJkz0rdrwUmitq0x0+58+lXfRZEiWyRepmptsQ
	Zo5JS2zg1Y8DTyi8cJyJIz6LnpuyDk+usm/3kVLoWEYTAJ4PlaVlm3318bPseh4n
	sKzGs3J2blz9TDsncTFbTQwyWTPDk3si+9OT86eRC185UHfR2RiBEwUQsvRgyVXs
	xcKCp0r/nwPwZ7ggmLFqL+oCnVjCHmIKagL9itk3sNaAYc6kbcQitsU4QnVzeMP3
	/W4/JQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caerc4s5w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:38:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c710279d57so222695385a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771245504; x=1771850304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UShD8Uz1Mv9kGLbCfZTe1a7JofET5bcN3YTFLcFt/1s=;
        b=R+APJMWulXxAeAB5m+ptvqo9/ofj4ph1jenxeDMzMMsPFo0llMftuqwIG4NQedOXRu
         msDBls4wy7SfWLm2PXStDokihP5XnNgxatmspZKgDq0rmeDYYGzFEC45BCPr27/p4M5a
         UvMnWf6bNrFZuEGi/Ndqw+8GRiL03eiVEX7Sk/sILQehSmmm3CiA7b3xcJsP9s44dRgG
         9SapCj9StDHaZnG8HwhhCRiIxyMPzs/EkkSgxi60xWeaA6ITuqN63HMMog+TuLMBOGAb
         J4tm/tBsXyToYZSPkvwGSiD1NEdUBnvHuk2QKjvTr1zM08B2zUB/pYrlQ8SDbH388dzh
         B5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771245504; x=1771850304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UShD8Uz1Mv9kGLbCfZTe1a7JofET5bcN3YTFLcFt/1s=;
        b=vlUBzHUeRdTZ+E1+kwTMmA3WojAK5rAWcZqbA+1i0+waGBo4cB3Sq1oNH6sU1PKCyC
         /acrouom/dBDllT2gzRhYc+i7GfTgnjz2emsXAvY7sbHL+NmIlykX/aXLE/2HzYJeuSV
         CI8E8VrGXXG1V0GqzMnt5wK/642o4UfWfFRWsYdrTRwCkShQYJi2LUeBPO5ygpwgJvpA
         1QeNHVUrssOpg2hKcFs0W3KhAHk3FK0HubaluYPHKUDWtPIKKthrkyN/Tr0oiKsxDXmf
         SwkAysatlwNacXVRcjWtNnxhPN65XyELRA7Xo4jW02Fe2nxJfCF4/eC3bE39cRKPTkhv
         E3Uw==
X-Forwarded-Encrypted: i=1; AJvYcCVeEkPpCC8XQxmcJmnKjXrLgCn2FSTOyJrnE8eLQv6dlMfaVK8IGv5vQD0oRbjD/3WlvUjIuCkaOXZC@vger.kernel.org
X-Gm-Message-State: AOJu0YxaBj+KbgHJ+HXURrqe0esqaJ9RrjfJPfCBzUqSNvFmuyGFJjop
	CLYNqngxacT/yISspoeoX25fN155umXTk2ldwJxdx3BKmDvL1zhp0s8z7lQsYHd+yfZf0bhe0ZR
	b+NlSAJvbfy8SuMmEOAj50gDQybYIqVn99ujDAbGfDmjNz8MvwlYqEUUGs16KcdtO
X-Gm-Gg: AZuq6aLwn6ylqOVTj59/1RQ/RV0CbBAjh0MYhFjbbOUaJAWoqxRwABKs4tvpRBu64YJ
	fKCu0eeEHa+YB82AlskqzxIG5f/6rlFKr6/oLjd87XmWtgthrdEMKm1wPB3ay/fos7MwRRiXYve
	8vCuRaFzfPleVReJ7zNkTG1f03jrzc6koeuPDr2uc6Y7uBYexT4ufAMUCKbsBcivuh9y0wLjeoQ
	SMBIRAMjzun5RXdXZVAo+qul+s1E3/YzoKAIUY9wFv/T2JdIpdZBXkbBx7zFg18GMd6PEQQpF1w
	mtIEda0t4cWIdUpXPPYpYmLyeUHawqDeBHrYzNcEIX/p/AMHWHW2nZ1HM92rcm9ZZvjGQn3janf
	dO1FC9VbEuBKpmpDMNzJBhbRWhyp9xeXPl1foTUHF64Peqq/9jA2DgdaEPjL9JaVEagp/qTL5iO
	ihMsg=
X-Received: by 2002:a05:620a:2905:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8cb408ccb63mr1015964785a.9.1771245504033;
        Mon, 16 Feb 2026 04:38:24 -0800 (PST)
X-Received: by 2002:a05:620a:2905:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8cb408ccb63mr1015962985a.9.1771245503673;
        Mon, 16 Feb 2026 04:38:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29df12sm1924858a12.14.2026.02.16.04.38.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 04:38:23 -0800 (PST)
Message-ID: <5fa8e2d0-5122-4ff6-b0db-b6e31216cdb8@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:38:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
To: Stanislav Zaikin <zstaseg@gmail.com>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260216120715.3432191-1-zstaseg@gmail.com>
 <20260216120715.3432191-3-zstaseg@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216120715.3432191-3-zstaseg@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZJraWH7b c=1 sm=1 tr=0 ts=69930fc1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=yr-2ec9jEi1U7REnfNwA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: i0p8uywP3QtvMBU0SoQl79W46GVJmsKc
X-Proofpoint-GUID: i0p8uywP3QtvMBU0SoQl79W46GVJmsKc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEwNyBTYWx0ZWRfX9m4NGIGrL0LM
 Vy1zU4BNhrZOdcmeRMl69UDfv3FZlTUk2Rcdj3vW6nP/pdHnQp2VlT08kiTZE8u3GNi2v0bxgP4
 PQ9N5zb9FJkOlHbBXmzrpbNFlIrO7GmPZO7hruv1qozOjKDqjTN1tjsg78ThhLxBev+NfdQdnqx
 KUcK7N3TJpp2Jx7iRKjusvRFU1+Kwn9rI6U7hFfJ1s2tYr4iTpNMT3A6/CdnAGUiXDTaih4i1kw
 OaofwfZv2ArL8V1lM3IyxYggjcGVHD4t6j6D1P+OP0ZX2/ilG2RMlBLivulAaxeaC80gOUTfHZd
 ZSJTwqh8Hr3ksuFEX81OqnzBB0Y35mUVCeRCVPPmxxwKPqfLKiL2dAVxooKSToaFZcf6htgsvkt
 Nj2qBxGZSS/sD1A9UcVg/j1JM6hFjbLTwSorOl0WoR9fudmKpdOpAsKRVZolgx9jMSRP6nTzE4V
 YfK45HhRdPGg3UL2xWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265722-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B77B143603
X-Rspamd-Action: no action

On 2/16/26 1:07 PM, Stanislav Zaikin wrote:
> Xiaomi 12 Lite 5G is a handset released in 2022
> 
> This commit has the following features working:
> - Display (with simple fb)
> - Touchscreen
> - UFS
> - Power and volume buttons
> - Pinctrl
> - RPM Regulators
> - Remoteprocs - wifi, bluetooth
> - USB (Device Mode)
> 
> Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
> ---

[...]

> +		framebuffer0: framebuffer@e1000000 {
> +			compatible = "simple-framebuffer";
> +			memory-region = <&framebuffer_reserved>;

Since this no longer has a 'reg' property, please drop the unit address
too (after '@')

Otherwise lgtm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

