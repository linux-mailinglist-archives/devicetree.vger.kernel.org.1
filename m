Return-Path: <devicetree+bounces-257939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALqXNdjNcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:00:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F36573FC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1557C9E0817
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF538480DFD;
	Wed, 21 Jan 2026 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VTJtBKpj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MdRSmx3W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE73848125E
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768999548; cv=none; b=czk5zxzJKALUGwGx/NgLHrQ5kUmmhN4ajvQoWWhM23N/STEq6m9YTs9qlKkpqlRzb+6cTOQLzCRYuHrZ1SRm18vh4Xy/T7RXVbivsKqW2bwb9lG2lxaTEYc8QMD4UBrhymND396jboPwdg8epR6ZjmQBmJ50l+c08pmFBCfxXCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768999548; c=relaxed/simple;
	bh=G4+FPG7lsr9cdLya5zE4pmWXyJuqYHbmPTf8gMOA978=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s+cNi3BPnluHI3qQrzXR7z1cNp+3oca9G2iSVWUdY04JJJWUnDvPDj/O+YI6T55srIoky5BlMtNP3vVmLubs8j0qKZzPiyOEZpOjtabueEIiQuqr25eOsnLYnP7H5KyrzENnVuV+XOTjxDocHi5ITdkP8A5Bv4B2cQIRk0DawiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VTJtBKpj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MdRSmx3W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L8YYOc2065687
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0wgyzjP53pDYgT6DSPTCMkOEuzt2+jWBFYYtjNfK5Wc=; b=VTJtBKpjm3UfYAlB
	WgLTF1zHVtwEyzLcJ/XLLJSClBLfQRMhP54ePxyYwFbrefPau/1Xq44z2213AYpg
	EG+QCR5Nr1rZXDZkul/KOEiG9ZxX97NWhPZ4+9glhrdhG5bjxXBD+K25jy7Npg96
	sPCoZu+maY9YmED3y5FvhJ8pRi3cZr0b4HczKYDBkfc0Ib4qVS6c/xRKVAz27CT8
	eyjSP7cqGdvgMgkRVZ6zukHkMIgvTJEZDV5isRsFAyFCbq9MwbESgJU26EglQz5w
	eKw6e31nFY/tzix+gmunzHWrGR/iRCF4Ehu4wnx22Dbwh5ZidFjYExkxmja+VeBz
	D0Q1lQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btudp118d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:45:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e518fb75so85567785a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768999544; x=1769604344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0wgyzjP53pDYgT6DSPTCMkOEuzt2+jWBFYYtjNfK5Wc=;
        b=MdRSmx3WtfGVoifwUjsFLk3r3JDAOtVggCiDKzx899VggytT77OnOqmEQq1iucySd8
         QK5gfusEP2tYoE9q0fi7x5aavyrRvnvEC1fcdWVzAQAho8IkisgWEVv/2+rGT/nNcqAH
         XzVlNlwYD8CUf2gob7IfLZH3GrSXjDb2md5f52Ih3gCid0GOA+PwJn2ryUu6my0LNG2e
         XJ7ry/fMW/ISSXEpvjtT2q63kmSp8lip4EjgTM0oo9wTmkuTrlN8NgxijYGS3lW4QXdP
         J+3aDrWTYb1nCHOFPf4l978MdstteHH7HB+M7qgnWmzIwc3O++RTWhzhYScmrxa8h3Ci
         Zlqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768999544; x=1769604344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0wgyzjP53pDYgT6DSPTCMkOEuzt2+jWBFYYtjNfK5Wc=;
        b=S0FsIloEqkVgM/GMPbJ09apAgrXtieRx2/t/sv3POECOGRhQtTvBTJ4XR8CCbXfD7Y
         SfBMCON5frOzHySn6dkbvEixraNqMhd2OKaQ8yyWbUDT96yqlZU1i369RE+GdxuesBHP
         LO4kxhjuRjoxF/cPpycBFACXq7mD573RXrULeusgKYmiSRP969T5ZC2GTFvGbnnN9Y+B
         Cg8o4I7yEAKeMevG/yo50pvtAGSRc79A24MYscIrkEYMjJl7GbNqZVNrCwsI9HgcMdQb
         tF1MToqg3cbqDEDp2OZZNwS3VINJtB17nbx9mnpMT96ZUH9fpQ+u4w6WF9EkKpvgdBOh
         YYog==
X-Forwarded-Encrypted: i=1; AJvYcCUQsNpUEOYJLoUtFTWvmV6HKr1G9UefGngm6r63GHYylWGZkgo8ODhtTJbnlXHTHxSogTsFFMhMWTJj@vger.kernel.org
X-Gm-Message-State: AOJu0YwiqdAXopeSHYCofnEdxfAZaoiJ8+8Zd9uOT9iGQlDedv869JPb
	GgOdIieTKvMaXinnll/jdbn6XjDfdTYC4dAVsn6Z9RTedHTc/U6V8+kuUzHKAOpSNyMf/oqAjHW
	jzq8fiuKYqlTyOtivkMWFUuI58KaYAbHRRsLFSIN7MVX6FywMG/jTLulUoOvvU8Fv
X-Gm-Gg: AZuq6aInoAot0FlL3ugRcwyVbZz1YoKCn7Km3gWowg5HACnJq2BVSm8Tlwg8r3cJh8T
	jmWiOixbQJOTaEjUcinnda7e0+B7kEHDCykNYyLPhEi/o5mODr9YtlEsOqtXohNb9/v/n+gHnmq
	P5ogWEHdxgOgpzivRDMab2k1VjNgXER0I6QMnY9EqV6/tV2GfOCFXCWmEK7DzNwvFjKEqLgkOKj
	m1SxmxWMmlo2PhLm+V7TvRjdNZLVd4p4fzbTvlpMKPRBNxQLx6v0BQVd/XuvXyzVQidEMdrOVuc
	tRNKwIbGrjcaKboEijv2Z0IrBYnkw6QrZJUJg36oU7j7LsF1sGjkpOTdTMx4pEq8RP1X9HhGPxH
	63IGekxBgvrOkgM6ecbaS/gJMmlJtddIjbDGPcFMNIO6U1OZqz7XeSE7JaOOBnt8gt/Q=
X-Received: by 2002:a05:620a:198d:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c6a660afdemr1968715285a.0.1768999543870;
        Wed, 21 Jan 2026 04:45:43 -0800 (PST)
X-Received: by 2002:a05:620a:198d:b0:8a3:9d53:e1e5 with SMTP id af79cd13be357-8c6a660afdemr1968712085a.0.1768999543386;
        Wed, 21 Jan 2026 04:45:43 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9763sm1487409866b.35.2026.01.21.04.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 04:45:42 -0800 (PST)
Message-ID: <01d254f7-8c62-4061-ba7e-f358f1904ba5@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:45:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Correct
 reserved memory ranges
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260116-xiaomi-willow-v2-0-4694feb70cdb@mainlining.org>
 <20260116-xiaomi-willow-v2-2-4694feb70cdb@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-xiaomi-willow-v2-2-4694feb70cdb@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ETjcprl5pSd41B98EfcpSLJRSfbHd8Cr
X-Authority-Analysis: v=2.4 cv=DJyCIiNb c=1 sm=1 tr=0 ts=6970ca78 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=xRCo5Bcgn4OuC-SBfZIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEwNyBTYWx0ZWRfXw60rmdSRuq7N
 LSHOwJA0FjZ7fqxlIOFQPwPpFboBxUAqfjJg2Fjopx4Sts3akDCR5PrUpLLpJ1R77X+/W8Sks9O
 q0yc5sblJ1MXHU5GnT1aVTsw8IY7i4fY1sco9QKCWcMNOAyQa0UHMSZbAnzPix0CLTCcYAPGvGH
 KtaVBfLniCklZrJE+nWocMjzWm8sxgKtFtOGKv4sDrubQzdUg86lZZ67NBL3OU19w8bAN6bLkwh
 P1N84B5F/vguAO5z/brWrzAfU2XpCh4c6BcazMVJ6oSEb66nVVPo4RVLn1cT24h2jRYisPRxcWl
 4vyc9pDu31qsk2FDUBPe82XjzxL9Ux8mVeF7gNQQs5s2xl8U3Y28u90js1BuPH0gkkYkpYURRoS
 s/ExKbg3JGFb0gypVpsEmwLH7Xxd/kOGglQTYtI9G/h9bkOnp3GgWIDDSaco5L0jt+e5o89QMKA
 C6PrcBmdaXzBptreNxw==
X-Proofpoint-GUID: ETjcprl5pSd41B98EfcpSLJRSfbHd8Cr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210107
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-257939-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[mainlining.org,kernel.org,disroot.org,intel.com,igalia.com,gmail.com];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,mainlining.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 56F36573FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/16/26 4:54 PM, Barnabás Czémán wrote:
> The device was crashing on high memory load because the reserved memory
> ranges was wrongly defined. Correct the ranges for avoid the crashes.
> Change the ramoops memory range to match with the values from the recovery
> to be able to get the results from the device.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Have you verified this new and improved(tm) map e.g. by booting up
the kernel with memtest=1 in cmdline?

Konrad

