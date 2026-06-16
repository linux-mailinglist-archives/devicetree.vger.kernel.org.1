Return-Path: <devicetree+bounces-312487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fdW0GA8xMWqMdgUAu9opvQ
	(envelope-from <devicetree+bounces-312487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:18:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B987668EBBA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:18:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=Lseo6HLi;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="hDkncOs/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312487-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312487-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59BCE301325B
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79BD243C041;
	Tue, 16 Jun 2026 11:13:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0762D438FEE
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 11:13:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781608421; cv=none; b=PrhXhs/tJmYnscXvXsd2tU3M4AYlkuHaNsMQR3HBviwjM/PGgj/HS1TJazGayAy2z5DRZ28C8qGM0xu5Gp58l/N1lP/F7+kP7pYsyI9muOtOcOVbXuqeINVsuX7LGxX598f4xwQD/GjdYvfz2OfkrPW4cz8/Gw1p0IwJCWgFV5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781608421; c=relaxed/simple;
	bh=55ncl2+pNbNqu+wEL/BWAxYJSg/Eb/jmWeFv/fJjbr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qgt4Knjho+64EEi8ol+NTBP4Wz1bvVGqKQ4thTQNqHzPABXaMDFaaRB44CqMLL3+NTdhDTGOIIU3QA/8l8imZyeFjI6/IIWzYiD8biTSkKpJzFDIbxJtMddyL8ThPWjtaJVt+EFEWk9neNWqhHA3BbEvQZ21hzaVM9+634j2P4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lseo6HLi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hDkncOs/; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GACPg33456285
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 11:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iSr8MoasSHBE8JNNqOM36HV9oQteT/dMFprDB+IKzdo=; b=Lseo6HLiLxDnepYo
	dStkJc6pCcLu+CuV9IburIB/oYCviQbeg6XIMCB9Dha/QS2e7h5rFC0Pcf+2S5qk
	nx3SaNtkhNDJOMwygLHnkv6JUqYo0wdYyXWsQ/4pYD/1LupBk5mqVUl/VMcIK8YS
	Ne20mjXBBY4Qbyi02BqJnd281ILMo3q9I54yKddglu8+ad8pSpLKVCQr7iJvttNW
	E1CppnylcPShLDUgnOAQuxJ9QtJB/dyzGhOMJ03YXdFfKEMxt6fGPt1vjcPTf/Uz
	in/LD8J64uyZiKCDAFYM1LJs8lTEh9uohm5XZ+5kIHQkDgKlHmASHq25ImLKS/Cj
	1uxndg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu4dkg9y9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 11:13:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-517647fbff1so12536211cf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 04:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781608418; x=1782213218; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iSr8MoasSHBE8JNNqOM36HV9oQteT/dMFprDB+IKzdo=;
        b=hDkncOs//ouCDfkQmpBjeKez7HD+KBqszxB/5Pv1/0QYXBPO0Kws4l805m1XiYeA0S
         XD35WchftmCtjxCGWmeHanVE62+HvdijG35mpVHkLq15r5wF9dqMsemAUd+OVfBN59lx
         exaK1d1SGWE9ZomqNEfxCjhVRtO6s5yrEfOKN58FUNlLuL5bf7DiLXM5ovwv2xJwrJJN
         hkTGAMTZdRcoH4KIg4M9fynGr5ckH6nLyruB3ZryB4kb0xatwiYtvb9kdNMsEnvuYYSK
         5jJYS89+dSauhDm2iR6sm1Tvp77qSvxqaFRllh71WMG3aMHXDonEr06yt9mKo8ZGfs6b
         +6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781608418; x=1782213218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iSr8MoasSHBE8JNNqOM36HV9oQteT/dMFprDB+IKzdo=;
        b=nuBSiCByeIduNQKb2SSMD+AzWyOB7fhUolWqJAy8iHGt5bpvFCvZsf12bIK036kprI
         qZqWM4h2hWi7mAdue23/o5Qf2CxSHLm6ulFGd4QuHHgByreKmWvYTDtdTNl9vrXnnX2L
         HNasUJ1WgiINz7X3crFvtdylw1Nr5E9LGWjkZvmWqSzeWjaiWk0qFGyCy006hT3DI3JR
         080a7ZOsjgxMq4QZKPjs0ys7AslWHXC35W41aQhAtOKkT/u6fH0NIjvExEPiIZTZOLSw
         C9ARe/oSgV0i5rH4mL3H9OFGGXyuEiif+CUKonOEW/xYycgGbp8i6qdKo5EfVu+27ElM
         jRmw==
X-Forwarded-Encrypted: i=1; AFNElJ8CdHCrjEn2JUeB5o0L9dF5+nrxOqj8gpuv2u0mgktLuLK7jhyD4ZsKALi7gPJ69XwYEfGhUflJOiic@vger.kernel.org
X-Gm-Message-State: AOJu0YwAyCM6hLqVh8VvlYeI2p8npfGui7me9qcUuXJ8/Of5tER+tnz6
	Fyl2olo1warrUJ16tUchByowyn/Gl/FeycENAGq/F7o21IbTL7i00ONbSGj1X2YekqFadEZceOH
	eW0i4K0NVqjLm4h7Fey/4/4Mrm1rFBYTQTDu2N6MEACO8/CAjGLWlIPdi5eCP6Ogf
X-Gm-Gg: Acq92OEeJDoAIGesxP4zUlJ04EF2YTsKtuku4S3e6JDz1zXOi75FZer7Ai42Iy6OUQJ
	SZhy1278MAP+Z6Z0KBuqM3kGQJvQtrYukcggwtH8V4F11GZgHFbHArPVLbCexgYqV7TQYkrO74A
	g8jiKHEzdGYDJeqN13JX52/so9oSN52zkS2f+LCmRWWnRTAgaZ7unPEOsaPLqGgd0LShpB07gl2
	lWQ09O6cm+k2tQC8ugHatpLNfESdd6/jsnlI6i9u8zVBdd7+hIqMFGsiRtftrUPmBCG2RuV4QuC
	QtNgf6g9wpZHElEjSSYmVsYhrjwOCduqSbBV5D+wP99FYIql1ARgzTxAg8AlrJAYqsRrxHG3meq
	jehqRHWsPxeJrHKGVB80GkaqQKynWbagDwWurJVkgRNpa6g==
X-Received: by 2002:a05:620a:458d:b0:915:769d:56e with SMTP id af79cd13be357-9161bab4498mr1747054785a.1.1781608418340;
        Tue, 16 Jun 2026 04:13:38 -0700 (PDT)
X-Received: by 2002:a05:620a:458d:b0:915:769d:56e with SMTP id af79cd13be357-9161bab4498mr1747051785a.1.1781608417897;
        Tue, 16 Jun 2026 04:13:37 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb7b6dbbcsm648217766b.32.2026.06.16.04.13.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 04:13:36 -0700 (PDT)
Message-ID: <12b8d20e-06a3-45c3-a02f-bde79f31e8ef@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 13:13:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs615-ride: fix sdhc_2 vqmmc-supply
 for UHS-I mode
To: monish.chunara@oss.qualcomm.com, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        ulf.hansson@linaro.org, nitin.rawat@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, komal.bajaj@oss.qualcomm.com,
        jsodhapa@qti.qualcomm.com
References: <20260522105020.3588377-1-mchunara@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260522105020.3588377-1-mchunara@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xKwnRqs3rU8XS9s_SUWoFdv7eOgnjoL7
X-Proofpoint-ORIG-GUID: xKwnRqs3rU8XS9s_SUWoFdv7eOgnjoL7
X-Authority-Analysis: v=2.4 cv=Ibi3n2qa c=1 sm=1 tr=0 ts=6a312fe2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=6BLkkuY0k0j_y3qHMkoA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDExNCBTYWx0ZWRfXzUPGTp8ouJDQ
 YgTwOsxYypgJEWhAv9m5Gi6emYMqLTxdaBP0CH+qbUUNxWjHf+82IFBHjBmeq08bSD/fktRD+zy
 fYIVuc4rCyn0zPxj6/TkZhO06Am3M7Ad1RNz6IxzG4TbvcmojFLURuLru1lcM9pk6gN2wYXwoKp
 JIIwI9RK39i4W0fgdq/z9iN8tQDiJJ2GHRKwa2I9FBKUTIFvQFtfIwCw26njdceK59yrY36x3fm
 umr5Foz0ZNDowPEBPjkbXtS0lxqFHykt4FUEoGlNl0Fi83wjHtsB2dEvbkO+AXRSHFhwHPweY7D
 fLKbkyrsYbknPL5WbIzoTEi4LvXSA00/cSf9u8MXT7DTWWY6WHxvuxIwmTPDkMXIShMWmHJ7Esl
 +xOj+j2itvTlyB4AhGi562n6tyjYUk9A2yD0MuplhQmR85fVbzYU57n6ALf9z2c+fI62ifs7asH
 uyvNocRHrAQeNW+qkAg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDExNCBTYWx0ZWRfX3WXNqNg2KX4o
 Px6RZQ2dCeTKK/ateXnvapCOrt9pMVHeTSrldJqxFrH+zyguqRJjkJqOiJI4RCFmCMwSeg9d0vV
 Lvrv/IoPG3zqVNfIDDx8Fe5sxxhrauQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160114
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:monish.chunara@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:nitin.rawat@oss.qualcomm.com,m:pradeep.pragallapati@oss.qualcomm.com,m:komal.bajaj@oss.qualcomm.com,m:jsodhapa@qti.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-312487-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email,vger.kernel.org:from_smtp];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B987668EBBA

On 5/22/26 12:50 PM, monish.chunara@oss.qualcomm.com wrote:
> From: Monish Chunara <monish.chunara@oss.qualcomm.com>
> 
> SD card is detected as SDHS instead of UHS-I because sdhc_2 was
> configured with vreg_s4a as vqmmc-supply, which cannot switch
> between 1.8V and 3.3V.
> 
> Switch vqmmc-supply to vreg_l2a and update its voltage range to
> 1800000-2960000 uV to enable proper UHS-I signaling.

The way the commit message is worded almost makes it sound like
switching the supply in DT rewires the hardware power grid.. 

anyway

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

