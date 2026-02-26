Return-Path: <devicetree+bounces-268887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJSoEoNboGm3igQAu9opvQ
	(envelope-from <devicetree+bounces-268887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:41:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B331A7C23
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B92430557FB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B853D4127;
	Thu, 26 Feb 2026 14:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UGfFXn/y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j3uX/2Hj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C533A63E0
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772116578; cv=none; b=IfTck49C5ujkPqtmmdNZk4KV1g16u2pOYUutN7EsN6YkvZECeQs9Rg3J/ylKX7vdCmvO80xxDHRNNdXX3y2Gj2958RnYZ9SzTb0jBf9XkLoPUXbsYo4bZ8zY8H7c/JAp1L7D1I7z9Umm9AhPt/DlYYNwuHlIy5jj5gJRP4Zets8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772116578; c=relaxed/simple;
	bh=3GyQDEcDUInAD8wptu5W9Mda0bLcOy4n9r+e/8VHmzI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XZZ9nOHfRHeD1wSI7TH7+umQmvRW0pBUg9+qfI+a3cNURVummXKKedYI2rORVuYAyXbpP8MEJkHTzDhE8vY3gGgvfUh788ZBga8Vyx6BIcovmUYLZ2IZAdBzYbeFvryDeiZptqL1wdu9HQDVnPT2QmXcUJKBLF7+MgJX2hBkHPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UGfFXn/y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j3uX/2Hj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QB7Axa3853562
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:36:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fPj2E0LEbv6NHZWAliOKMrFcs9XFNVrC+tkL8C1PQc0=; b=UGfFXn/ywG3dUUsv
	oL8LNsBGR5Ha0Fz36R1hV5IMHzAsUsZjsXqBaSxYepykZGwsYWI5rx3DKgFGxDw+
	qVr29NS2jqzFhIr6bfSVAZdzeGOMB/n7PZ8wYzp0uH5c+R5OKH3e5sX/RKM76Pkh
	HOzmphaBvuErd5aICPFLMBWTcZ4rXuyJOOYRSCZOvCAMIHifolC2O5RUAHP6xl3d
	NQj7ALFE0WX1Xuzz75ISUXaHQ8OYN52sLHVCKHtdTjUOwdSUHLPwsPQWrZsaql1y
	CS7jEgQ54vtyaWNzFBS0bp8qqtSyiGDqc9VRx1m5vu9Y5yQ8+RXkZLapB2AaPtHd
	eotwJA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjn0x0htr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:36:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso75566085a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772116573; x=1772721373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fPj2E0LEbv6NHZWAliOKMrFcs9XFNVrC+tkL8C1PQc0=;
        b=j3uX/2Hj+yyMcnSvye+foDINptGuCAcexirB/KZX7jILSzvR78+2SGL9xmvQARRGcq
         W4oWbp1tDo3A7Fre329TncqjJXY7slLuAQehaW7OBI6wij6atYYLiy496gZ9iqt18nF1
         hsJb53ffzqVveexhMMtefaL5+p8Z4hGNfKx7NFR4LxY9nbHIsM7RllTbvxKUWEw+28kp
         IJhTw9XG3oK700EkT4/Hk0D2tQ4Vx5gpoK/qRNweiJ/dAi3SCbfb2t8ldX8t+wF4hXN6
         uACDOYmJ3+X6oMcVv4LNPIrb9AC3sTXfyD+meVYRn9IIVOblZ5kwZP6kWsDWfLAEL4YH
         0NiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772116573; x=1772721373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fPj2E0LEbv6NHZWAliOKMrFcs9XFNVrC+tkL8C1PQc0=;
        b=h3mYe5M/IyTNqb0nXI/ZwtW023awEXP9/04nijy4zhy+536VArerxkrH2HPFT7ILZE
         0GhIiCf1gzp/LFS7fP5nPXPWEC90VfHEfa55wU4DBwrQJ5Zlyc/D7YHLtj3WlkU+JI3r
         AR4O43PlYm/lobuh2VaGUKXkW3/w/pO/v1+ZBksKwGP7mzepE1wdqc9lJ7yLvdtiMged
         vsMxF7vVqT0BsIeLMkivb5U6w/kqB5sG0evK+dnw325IQJq0ZvsicT+R39Y8I/5lSeU4
         ZNJzasFtQxmKKRWWKJispE+tIZl+cowmUdDjgnwd7hG78aV1nntnAy51H0y6I74eajcJ
         HO3g==
X-Forwarded-Encrypted: i=1; AJvYcCX7SefVPazZeds1d0f+tOY0TFqs5pPnLsEjO5rlJVqepuW1Olp6SSXwR+M2MJAkrr1R0C3VLp582Edv@vger.kernel.org
X-Gm-Message-State: AOJu0YxtgTdeC3uh7u1PyXj/i1yrjytsHLCT+vVj43Co9BXfjMZnTR8v
	yy2ESuqGYgeOcOOqK4WY3UMtXgq4PH/a2QMF7ygI2ecFEwOCSpmOuPJjaR2LpYeuNBoYDx8gVdh
	s+i7mhIjhYH3lHRsJ14SGaosOteWneNP645B9ChDgT7FRSuLMcykMR7pUXUkqy0ql
X-Gm-Gg: ATEYQzydGOZ5wJ1PvNwgEkT6tpJNFgUexy9ysrWzPoDO1Tw/SJ2V/Pa7y17uAuFdnxJ
	rlrzOlk71x0uAxQ53knGVyrBiYedGDXcbzgmzSLWwMCKbZkL2udS/Mq6L1oWwb1gOB0ntkgQNzB
	pBPfKrKrule90UXZY/rP3uL5uFjxpLaN5fdXnfHTgssPpn/yETiXagqGIKZE8qTPc3fv+29BIku
	XxPjIkLOBQMiqmSw+sFUEWejTPU+yKjELZSxRE4zTW0V6Np0zU5BRzyGR92zTU5veQaGwErlWjk
	Z6aUS/PLWOi6i07qs7VV3WaZaOuunIxtSsqHimO9PD+g6A/78oZ/48GR6fdKestNS0GjrpysVCj
	soO8eDbEyThyQ4fiB2J0C9F4uuU3VSpW3r8RzMBICk3X/4lK2hi+BIWrqHjICOPrN+chvxUELq6
	KGBGY=
X-Received: by 2002:a05:620a:4628:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cb8ca65f96mr1975466285a.4.1772116573204;
        Thu, 26 Feb 2026 06:36:13 -0800 (PST)
X-Received: by 2002:a05:620a:4628:b0:8c6:a719:d16f with SMTP id af79cd13be357-8cb8ca65f96mr1975462485a.4.1772116572668;
        Thu, 26 Feb 2026 06:36:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ab13d64sm66282566b.8.2026.02.26.06.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 06:36:12 -0800 (PST)
Message-ID: <b321921b-aa75-4c2f-ad2c-7ac34989a54f@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 15:36:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: add missing denali-oled.dtb to Makefile
To: Tobias Heider <tobias.heider@canonical.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>,
        Dale Whinham <daleyo@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260226140429.232544-3-tobias.heider@canonical.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260226140429.232544-3-tobias.heider@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kT74qtWiVycn4bz0aCSLeTldNFxmSHJ0
X-Authority-Analysis: v=2.4 cv=I9Johdgg c=1 sm=1 tr=0 ts=69a05a5d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=DfNHnWVPAAAA:8 a=EUspDBNiAAAA:8 a=zBF0mF75Ukjo73aVmcMA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=rjTVMONInIDnV1a_A2c_:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDEzMSBTYWx0ZWRfXwd4pWzAf2pPp
 8+CMOxRhEYedwqddsjOQzjMkq8terOhDQI82N1p1rs5iJXSp5aO0Cs12s9WkMSlS54Mx2f/S9JR
 7VkjnCR2LSOnMXWBsDC6iw3Y0VG0BxdifA9RFAUPZoNdtBSvJeqOAtAmGU1s98Y3jGJAzcX0oE/
 PnYMSc32nSYXcQToFeFJTWCFE5C+FuKPXIdo5QXVGHQLGS+YhwNgXuCuvGbm0dtH+j5uKex9Qkn
 Gce8FRvG4a/npRppPjkxAzIyf7sGXIzVWq3WAT8gNfkKJ4FsPg4z9EXkPFwKgzsSdi6YPcvSTFC
 fkTBVKLWXqZaijvRLdQcF21aS/N3p6PIIYS80xOp+KGvJKcc40VY3JCU2YM7rakHjnygg6b1ojA
 LTO+YPxkoIcQ1dPXDtPRiz6cvDRBYgEAy4dFn4gbZvs7DEGoJyCMg/dJUyOgW7Z8xViUdZmjC6V
 Y1FJx+usUbw8Ggnnq8Q==
X-Proofpoint-ORIG-GUID: kT74qtWiVycn4bz0aCSLeTldNFxmSHJ0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260131
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268887-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 98B331A7C23
X-Rspamd-Action: no action

On 2/26/26 3:04 PM, Tobias Heider wrote:
> The device tree was originally added in
> 0d72ccaa1e840b4c8723a929b2febbedcf5f80cd.
> The original patch on the mailing list also added the new device
> tree to the Makefile but that part seems to have been dropped
> (by accident) when it got merged.
> 
> Signed-off-by: Tobias Heider <tobias.heider@canonical.com>
> ---

Fixes: 0d72ccaa1e84 ("arm64: dts: qcom: Add support for X1-based Surface Pro 11")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

