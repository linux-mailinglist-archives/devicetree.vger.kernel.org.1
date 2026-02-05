Return-Path: <devicetree+bounces-262912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOuCCsJehGnS2gMAu9opvQ
	(envelope-from <devicetree+bounces-262912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:11:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF0BF0616
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:11:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9EA9D3065400
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966A63382E8;
	Thu,  5 Feb 2026 09:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gyfF1qTV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LSovyTSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6453A0B3A
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770282318; cv=none; b=UOUjDbh720Wjm/QhNDkmvBIOM+Mru/2vmtEpyzaGpVtZmROStBlaqx/TmSk5mH/Rqy3DJjb+Ad55KP3fUbO2nDBljiMgMvO0xXizOkdOJ5W9BT1K9G8u/h6rUYQdo+SHz7wqvwBV66TU9fnQ3b2ZYAXooqO0DuS7nxTfpJ6xfms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770282318; c=relaxed/simple;
	bh=anLO55SwKY2JU/D6EdJkspS/WXaI34Yc/1S0BY14WTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S7kwwdupvcWufcmOmdtcO3f/FOVmoxUxxvsmKmfH+4AS+5zwgBv+i4x1EoDlO+tg7LaxhyPXLuwAUaHLeVIot8ehyLNt8iSKxkMTtrjN1AxvaIBXQLpFU/ew4+7lqQE26UhHnGl5o0hDeXYv36SNqb7+sdcAmK2hmYTSPvQ50T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gyfF1qTV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LSovyTSe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6155qlfr4166987
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:05:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HXzW66qwAeMlnOxMmTGmYciFEyFaFIMfICLtoVtwxos=; b=gyfF1qTVeIUOT0Yi
	7YoAQvAU05QnJNbT3iDy+9DXrtj4d1fMLALepRDkmhzRIW5jW49SGuZejJT/CIL6
	m6Sk8MJcafVXZ55ckI4JGrmADpcdm9x23i1M+sxgTvsRHF2Xd0V6ec5u43t8i2pg
	+LrHC65SjhKhrYQXA7P7WYFfGuhXbiSXYu1OjidCy0CZnuVHkXokLLUq47HCCYyl
	jggT//PkINvk5hL1HPLrfv/CG9P6dv+wYP4SYtalPkkpuPYA/nRp/1GFS0ly/PkQ
	cabG7rt94b03HsyYhvJ69b/fMG5bDVCsooRes5/iuQ/zreeYRgfF63PcqTIsgDbq
	M4B87A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4neg8jsm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:05:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5061cf31fd2so3757321cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770282317; x=1770887117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HXzW66qwAeMlnOxMmTGmYciFEyFaFIMfICLtoVtwxos=;
        b=LSovyTSeDEvBLQ0e5i34vL0OmH9l+DFzWaPEXALQ8FHzcVDFAeL/9DSRYoE/dZs9Lg
         HayjY+mokbvARA41MTDVIK3VZ2v4l4rTpO1GbX6nAUAaOhdtucsMng4HyzOclckcY6lO
         U4OF8btBgXYqqMx1fgcUrpdEIU5AbghoaaBWA6N364rH24Aq+wks6unNtz8dpsHeUbuG
         eDSup0INpGgyT6b+CXGxtYCmaG1bmft+VWVHlaURfVgV+3CyKwigzeWh5UjMXAn135op
         Wc5hVmqfVWOaPDl/fCkzjH3kc00z84iLUO/wVmxLWLn75J8LPUTDfPVjrh78U0fLKdup
         sNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770282317; x=1770887117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXzW66qwAeMlnOxMmTGmYciFEyFaFIMfICLtoVtwxos=;
        b=vSOYVEMlwvog0wuxWWqWXoBxg65MhpFiDNp3CaYxkjk66VejZrj+3/t26TonzmVRVs
         UDAlBMf7tL38UdgajpvFvHLoce6UgP9KjIEG+l41FzOe53cYnNvLhuLXymvSvel3XgES
         m9ZqJvSiMjmi0q2GILEEJ5odWF39J2T/Vdi3ztmnzRGvza2xiEQhdIdKYe1PUI67CJuv
         C3L+H7G2xt7KpTy1tBc1fYGitEwkYuwYwC1dyFkeS7b7OWpN/Hhtu4pru7eg4J2fqGjT
         DS796E3CoCmPJyMZQd+nyMlCLrFK8x2k1/JRcS3c2A7c8DgJ0Thn4+esC+SDlNqHFsws
         FiFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt+MAr/SrMo0a5ZFQ0UeJf+MSI7CgzpWec1QOI/Ptt4xSZrNcsYbTCmoknuPJqsQjKPW0M6irPIphS@vger.kernel.org
X-Gm-Message-State: AOJu0Yza2BlIdLJXrKHDn2QLt2vlH+D9nABRQM2tc5AZUvBk1ePvw0lx
	jZzKEf72QpTaqJgnz+pJ+LkIz2uButNARvDk718FxEZ+WIjtljroHP3CLcAyP9R6orOxjkzwa+q
	O0Opk/3CyGyb7VNTPzmTfNmY3BN/rEjyOd3rkTj9An9zIwyQjXq0FIo3LWmNFlc6v
X-Gm-Gg: AZuq6aIfVsHbWaYjVUEgkYI2L/xh69u3HfDGVsihBWou4CXTMxSSfDz7ant9RApkb9t
	C0t2bVsLzn9Jd1n0J2E54JwN6q0s3TXGXj7+K8PqwgCSp3Gz8BYWwAoS9i2Kj7wJAUgw4c7M+lH
	cbmNH+JbsxpuDm9AWlGbzR3tQZuR+qoIOMQeUlTI/miTCEYjRxsaJgi91iczq/wC1nFIv027L5l
	J0sxJSbhJJSkP5GniWvs0fnvJNhxHu/ANNwX3ALvVZ22TGkpDzTEgARqEo9IH09r9kkqnHClssU
	csuVisqqIF9mbPqsgiM3VYgWXJ2hA6+vDFwdLPpZbbvXZtHp9FX3kekwEvKp2KrziLe4LCMGGsm
	AvXkizBNDi+aEOcx7qnLjN1r82BsclbOD0YgXMRYqFTAO6JhlWPGph8UJyRiJZNLZ0/E=
X-Received: by 2002:a05:620a:172b:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8ca33156b6emr493912985a.8.1770282316574;
        Thu, 05 Feb 2026 01:05:16 -0800 (PST)
X-Received: by 2002:a05:620a:172b:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8ca33156b6emr493910685a.8.1770282316183;
        Thu, 05 Feb 2026 01:05:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9feeff51sm199400966b.39.2026.02.05.01.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 01:05:15 -0800 (PST)
Message-ID: <d800d5cc-0e57-401a-a62a-42e9c40125f6@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 10:05:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] testing! arm64: dts: qcom: decrease WiFi antenna
 regulator minimum to 3.0V
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20260204-oneplus6-wifi-voltage-v1-1-ee6fd47f9d02@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260204-oneplus6-wifi-voltage-v1-1-ee6fd47f9d02@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NSBTYWx0ZWRfXxJ9FxYqbsusn
 uzY2h1afC8W3IeZl557QBEWfibrmjwaUQegM3fe961+9Fc2XR3liL4ZKzQuXkdIAWIvRRgXG+wn
 ykv8ERMM8ORSc26ltIQoSIMCQ8bwv7ansk82+V6QegpcKGu4frIFUN8BMQskmA1imL4wuUUkGzU
 5VBSIORqsYy52nVHDB5Ht41My4T6nq8SpfF0oo8ws/HP7ElDLyGksYmRPU1nfATJwxjpSNWjlE6
 iuX07mPQGAdbwM0XpfMukNs4hdvkETBTX/UeueSF8nFQFtzS3MI6HQZrgV2Zat0ZjPJVel+r3Ft
 lWuzDGc+SaBKw+8Dbr77pf1SwPnKmq0J1Q5vMA48EfrX+wKC6mHJtHxQODI+NgnY001Bj5EKEsd
 QB6yGiZkpauebEkFDzDShm3r25p9+NtAdftNAewj8G1bCe2dqEmnW5Y9FJctG0Xbi5sDSTUuX6P
 0gfOmE0899v/Qneo8nA==
X-Authority-Analysis: v=2.4 cv=ZITaWH7b c=1 sm=1 tr=0 ts=69845d4d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=o67kmj3H2-0caDlAT-4A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: qp3HonN5Cbl2PI8RY7iJIPYn8CxrPFwo
X-Proofpoint-GUID: qp3HonN5Cbl2PI8RY7iJIPYn8CxrPFwo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602050065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262912-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ADF0BF0616
X-Rspamd-Action: no action

On 2/4/26 6:03 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Downstream defines minimal voltage as 3.0 V, while when OnePlus 6 was
> introduced to Linux mainline, the value was fixed to maximum 3.3V.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> Tested for ~ 1 month. Seems to work well, no visible issues anywhere.
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index 5b121ea5520f5..e950db41ce25a 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -307,7 +307,7 @@ vreg_l20a_2p95: ldo20 {
>  		};
>  
>  		vreg_l23a_3p3: ldo23 {
> -			regulator-min-microvolt = <3300000>;
> +			regulator-min-microvolt = <3000000>;
>  			regulator-max-microvolt = <3312000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
> @@ -320,7 +320,7 @@ vreg_l24a_3p075: ldo24 {
>  		};
>  
>  		vreg_l25a_3p3: ldo25 {
> -			regulator-min-microvolt = <3300000>;
> +			regulator-min-microvolt = <3000000>;
>  			regulator-max-microvolt = <3312000>;

A datasheet tells me this is out of spec for this wireless chip

Konrad

