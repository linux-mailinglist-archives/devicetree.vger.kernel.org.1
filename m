Return-Path: <devicetree+bounces-265812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMwQBaEvk2ke2QEAu9opvQ
	(envelope-from <devicetree+bounces-265812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:54:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD99144DE3
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3E0D6300728C
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7580B313E1B;
	Mon, 16 Feb 2026 14:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MOfAdO3i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JqRI4ML1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF91C313272
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771253622; cv=none; b=d8metjj0VcgbIK4Ri+QtO10WbuTbHHVRkPLXkZGejSfy3Y+uLv+UlDotgZaX1j69O9f56YE+pmH37jGK+okr2/pQgu0IQ4gyArwQJohrxHpOZl/dDt98zP2y4sLuGWzTBcbvuF36EmwUQkERzcKHsV0XgPLsyezi9Hew4iHEa4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771253622; c=relaxed/simple;
	bh=2rxaVjGu4XpdOg33udkiiQxYeZq0jcqJlk+U72irDE8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g0N2Hg++cScNlt9+sLGaL3X2IvQvsEOVuk6rTZ5I3fu+K8bZE5utAUf0/odxGrX7dR2W1xDn4SIDvs113e1/FB0h4/sKKuFUmIjEC/vBzVpOhjD0NJnoUYjG73CDx7DGx+U6Z+kC9WOht4jv9ysWmuBYmxPRuCttLf879mPwFzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MOfAdO3i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JqRI4ML1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8hgiw2805007
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kovETaFhNl90oBKEgZpok7n0YsCTyTL0lxrKHwRVzWQ=; b=MOfAdO3iTzIx2mDH
	NIv5rt8qhAwITi7+7nzuLhpcXzEfJRSOYTRlOPe2zQU0+TiAeAcAva7eZb7qhtD+
	RDf/UXiNvxhvYUl7DjnvDGjrdwhVIlJVqRxlEJZ/yx3YfklozdNyFUydUqL2xayK
	qqGh/0Z+Cf0klQ3y/UGJ18uWG9X9ri9F0yd3zGFtxal4SBa5yjbNr2vpQWwy2fyy
	XutEly/1f0Eg9MRrHfvkPItVCbbiTCe5P3J8/f8Q8GX8hKmPE+9SYoauFJp7StWi
	aDhdPQQUUZXY3w9wQsqLRSnv+r6hJynLq9oSHfj05pt8byl3QXQ8vFK64RBkwkXT
	42ORqA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxugw6r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:38 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8954b9b5da7so22423956d6.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 06:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771253618; x=1771858418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kovETaFhNl90oBKEgZpok7n0YsCTyTL0lxrKHwRVzWQ=;
        b=JqRI4ML1KaCDRE6kObv7RiNqq187QTfOye26MBuUrZlHtBC8KCD1/dGx2aMpSPEz3y
         2OVUjeW5Uq1bynctwJzoK7yw/HNcKfWqWTib+fHrsHltNdrSw9kic/C8F1Qh+skVCCMv
         ux0C8J0pfszIkuTPq605ZB/jyS7OWyXM6m6DB0mHKCLL2x6Lnt9OgW5EwWJPVftpuDup
         SF2i+IyFDelmIr3Tk3TM5+xFJHQBzY5vMygH8I5rQVyNHxlWvi6gPZQ9FRWDyDp2rcuL
         X3iwohJC2Vf/16Yc9wVXeOEXbejw1DaMq2quWsmODNUNh5KgsURwtVLW9WliTZ+3axpc
         jGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771253618; x=1771858418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kovETaFhNl90oBKEgZpok7n0YsCTyTL0lxrKHwRVzWQ=;
        b=j02xAKvM/55MG9DPDrqD42dY/ZfjcbOo6/2cF5zZm1UWqaxFx7C62r1fvXUkAoCsfS
         1nRFQ52YIJZNNCO9h0FyHemJ1aaDpGN2lUNnixddDTjPS7Z59LQmlOnIid2gO1yjUo1c
         tGaDJoNAkOCjW35/cuajtybSJKyiLCdN88YHPAd5B5KYGisXeAGC6DmrDrrTOwDuTg7R
         8RrQBr+02EEBzSOhesDEhVUTdiMIDcOgeb6eOK7zqFQnaS25BgTjUW2o8Ye/nYFifQNl
         +23ljdDb/1KVqJVYVqTlVR3kJaLzsP0y2fvb0A9E42OxicDbazWV0M3192+1UP5v+Adg
         KmAw==
X-Forwarded-Encrypted: i=1; AJvYcCW1ot4NMy4mXB9Q569JNPN2sGtDVWZMPC67LaI/9bB3yZxhxYAhfNYCS+m5NhrfJJNvlmqLP7ZtSVEH@vger.kernel.org
X-Gm-Message-State: AOJu0YxGkph3exo+hEvDpmEx+ZW1NwWrSaUuV5crUpEh+cs/qL+llixa
	EqRe5MbW56OCzNSCnl1dn1g+Bv33+B1pRcwh4948WtEptXUxDUWCK5PQDL8HIgVF+rhBqrZHCWR
	Ry+kklqAXVQgRnvfKleApvh6j9yOY2Nxhq5Y8m3vkCtYKl993VmeMP0deILFXGM86
X-Gm-Gg: AZuq6aLOwVJgSvTytToT8SKDKyOTchorBD7vKW/ueEqe9za6XpibuFGdGhtufecpCtX
	0sTLWoc5aGNSd2EBUibYkXfI82J5Beo3EMLkjKwZjrFW4hmHonG/17AGCrSeBNi15Hx7ndihEfA
	AbHBI3bNBy4fDZbHMUr79KX0rxppobW9tsFFFjUK5DxlyHOf0jW3Jce8HEb6LOwqwBGurncrK7I
	dVHstjoYQJ3ZydtNNoCXqCS1rvp0cmSVgc5RszjMIZgOCUVimHT1+eNkZUDNtxwsieQn4gkpURA
	h/CIYby4YHHlVQqe1ChxLLha2ElPsY4bumdtoxe9lrMeLLkPKYGtRaiBu6bfbVVAjS9gNcTCwqU
	BWXkr1yYRQEyfXFHpa4Mf7gcMQXfIIQcKxtA8P+4fohm12lj+5crJnOn2bIejLJApW4mxcu2/cd
	3cg0o=
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr114524726d6.0.1771253618257;
        Mon, 16 Feb 2026 06:53:38 -0800 (PST)
X-Received: by 2002:a05:6214:8004:b0:895:4afd:5dea with SMTP id 6a1803df08f44-89734625af4mr114524436d6.0.1771253617732;
        Mon, 16 Feb 2026 06:53:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc766579asm259615066b.54.2026.02.16.06.53.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 06:53:37 -0800 (PST)
Message-ID: <ba6a9ce1-6ef0-4921-83dc-751b037d0e7f@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:53:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com>
 <20260216-eliza-pmdomain-v1-2-c51260a47d6d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-pmdomain-v1-2-c51260a47d6d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pqzw_C-ToXGkEJrnxaCp15a087F0ED-x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyNyBTYWx0ZWRfX5YPq4gUq9+tm
 tfh8iAllVHg3xqHODVnPLIJAUOuVKAPNJ6326cZgpnvVXqs7Y/E93QVOUtINI+9Rdcjny/AXnwy
 4PYbwTnuTV2Lbdq9CpffqeM7sncWHr+gw7Jz1ZyXBsmvkFhMKhi11Dggr+CENm0rWsgjJPlfxlD
 3l/nr7quUX9A8jqjKUX9xUp4Yy1luHEyW5XMDlUGxKT7OKpX+QG6RF+z/bcuHJtluEF6DSHlwSj
 /O8o11aR2AeKMKpAQ2gqYx6diz7olVVJU7hGcO0ptgDFAt/LqCJ9bhoUDWwjwrLdNbsVq1TT2zn
 nSC5QDVjCEsQcT34Q/pAgPlardCGMiNuvMHFKLRJQV1NoM8Xy/pyeM9tF3RLsldaz4vCxwlm9Z8
 H3YFhCnghQvjVZ5El3QDWH9M8si7uQUDYNdZ/lSzighaIbkQM3FBNk0Mso5kICi2WfTdd+Jh10k
 XOf1RH9N8uCbl9KjwFg==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=69932f72 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=T3cQ91Bvcxg1os4lQNMA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: pqzw_C-ToXGkEJrnxaCp15a087F0ED-x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265812-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7BD99144DE3
X-Rspamd-Action: no action

On 2/16/26 3:23 PM, Abel Vesa wrote:
> Add RPMh Power Domains support for the Eliza platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

