Return-Path: <devicetree+bounces-276592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFbUKx4huWkrrwEAu9opvQ
	(envelope-from <devicetree+bounces-276592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:38:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F15092A6F79
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:38:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CA0A30160DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78AE37104F;
	Tue, 17 Mar 2026 09:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bovXvMYI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dFwimHNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC56235AC29
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740126; cv=none; b=SupIOlFJsgTbSRtLlvYKLPQxCaLSq2mo93Eaj+UOw729/Nsf4Ry+5SGF9Wezc2YX0yUzh1WMaEwuUjO8jRBIUE2ENAcskl8P3PN5OiP7uIoKOOz0bO/cY3zVBdk5X2JEdFfHya9OCUTrYfKqyy3OwiunpQOtA3LpH4VomulnA+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740126; c=relaxed/simple;
	bh=Qmnll1BwZLfB8yh5FiiYkjB5mlzX0K8h5jsb4ze1FG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lSg4nI+qB0i/aY8mAauuqgcixF3Z0evk07rOBEt7rgsKtyk2al51dOHZ2uqj1xecEJOMXQ1T8X8gPr2VaNh0+Ahy+9NDWbkPMbukvaTl6iafmT9iDrRih48vxKMok22oh2viHryKlKLMgAT2FkdP79eyahsnQIRRBS27GHGsslk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bovXvMYI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dFwimHNC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H9C9IB3101993
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:35:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6zExcEEzBfTkqb8pf7I/waqPb5ZiezLnWRkWjRFJg0A=; b=bovXvMYIEf5Md21A
	Y6ehmThSsVx4lCGElm2vpCJ5wPGjGew48S9DC1y85CmRzuWKLjBrVXnO1Ozkk1Kh
	+s+igmiZ6Ybf2FqN5GEIWPeGHv8T2HRZ5t56iDj32ntD8cFlpigg2QL1a64mTRg6
	CH5PbmcKq4VZ8fZB7pMNYRcREo5NN2jJvQPeIQ58+J+u5lphx1uhTwEy/PL7CVUZ
	ieM897QgHkgqkCXL1mWDan95bLTix2wVMQ1PwEXNZzbMfbyhl1zkjJTFrZYqc4AB
	5+jw6/PdYui75S2ooAV//WmdrTyqWI4Qe4tYllMBRtlQOb2MRk7VoKM5Larxi4Ss
	0Pr+Sw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb7b63f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:35:24 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a01982dc5so51819556d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 02:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773740124; x=1774344924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6zExcEEzBfTkqb8pf7I/waqPb5ZiezLnWRkWjRFJg0A=;
        b=dFwimHNCInu6+sc57kqIRCnFLlTJ3dsIlzOhGJlsVCvlUav68ExX3ZCracmdW8Bo0D
         xKAJdislmVNU/feSdPcxbVB7yLhO0FS7WSlKVq0e79SRSNK4ZJFLsYW3EIcGS+Cm3xFi
         3WDMo77eOlUf06UhxJ7quUDRUslBnaqRiatNJLiM/n3TzhlN6wszpHAyZmPjMm8TQKAH
         xqTPrluqsK71rlr4DTwEo1K9gttk9DcT6tKSWiRny7EybJmegMqvWRT9X5FYkmVKt1i0
         xJ4qsiGk3byBsLsInwWMqK13wd7QADWaYHlbPVNW2+sfb/Pv7CQm8woiyxnYauxtkr0p
         t+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773740124; x=1774344924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6zExcEEzBfTkqb8pf7I/waqPb5ZiezLnWRkWjRFJg0A=;
        b=dY1PYTC0IcRTO3k6/Smvhaw8JHA7OtPT24pFd/pMloutfd/dXNDiZhVk7KCnUyfsMY
         K90AEVJwHMpLbmAjOKBNN+3omQp2ZxnpY4v2VoUsOKIjBQmq8JdGp6N7Fz8OwBBA/6CH
         o0rlbDHAjsdfmHDq/WXDydIc4lxYs9dCijsFivT9SSGGzcBbQpXa5jgRbo7KOPc3WQ8j
         OJfY5Y+Ps3BPPlSdGBshzkmSrmBOxJWNtZyKKDgfO6QcQuHOaqA41Rf7oE3/D2aHH4jc
         +/duzhi2Wwg16bxVoEpHi0jxi8ub45tYMZFaZpXGrTt5XnGFlu2yQi9ZEoI+i6QKHHkw
         cgng==
X-Forwarded-Encrypted: i=1; AJvYcCWXAxuZJk/S90xY5r5pIgnJ93tsfs4FfOoVavvVaccoZvUM7nAXATMfndZmvDH9C7rwDZJG3bveBvEi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdk0srJgSJEW1d7PQcLN9Ze5L2xfviuv45mil63BYmC0BYo23H
	B3I8Px5mMLFxXtw4kDQ31exK5YXqBQppXiTo8AAiG0kE6FpHHKwUyK0fm10Vk4tl3qfc1vDppJJ
	ACsdiZN7WImtMhMM8Z94fzi9ZqMOFkMopokYpDdRKttPvItzfPoRommzs4hwbxOEt
X-Gm-Gg: ATEYQzztpWtAkBRpxxhIn9he0+eOd96+Igx41yrGVOe6czqAAr2Spm8MRiGQ8Coafwr
	zxI8CIPfp23HPbo2wdIYQPnb8FmyAu32I591UralB0e/Y6VPIpaxZlGc2M2KQlo/wBsR49Ik3dT
	8P6PEZLtz8UDblFfRfY9TaVQDgUsXOnY85bX5dQdPuyogV/7CTO4iJPr2VkX9ajf8C2Pm6qS+EE
	sogKwPKU5cbJNRAKforBcqp7/eE4FvEcGCVg2looE1mDUCUCaDmQgGO5jDVH6a4HEA5dzsg0GQl
	ORaC1e3MIXDep0WcG68rK68bBwHK4jzO9PSGtxydrh+YuXeKT0T7tYE79Cg0x8BQT4ev26pQ2FD
	w9BZZy27p4S6e2lkp33UR7qhayCXlHQVh7lTLJgxTXNVtjgE+eo4q91Q/81W5KDMqZVXk2Dv1av
	X7SBE=
X-Received: by 2002:a05:6214:8101:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c51d024b5mr58058466d6.3.1773740123974;
        Tue, 17 Mar 2026 02:35:23 -0700 (PDT)
X-Received: by 2002:a05:6214:8101:b0:89c:51d0:20df with SMTP id 6a1803df08f44-89c51d024b5mr58058336d6.3.1773740123586;
        Tue, 17 Mar 2026 02:35:23 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6e4bsm709432066b.3.2026.03.17.02.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 02:35:22 -0700 (PDT)
Message-ID: <8f21a606-4f7c-454c-af28-7c3c322f6b12@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 10:35:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: hamoa: Fix xo clock supply of
 platform SD host controller
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
 <20260314023715.357512-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260314023715.357512-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4NCBTYWx0ZWRfX4lGxgVwZkXpv
 kPajb6xG+pqzt3Hq2GAXBxuO4uHNTbN69JmKC+b2f3EyWxMzBJoo26BXJPZJ3namgT5UIWgvl3m
 Gjqo6e12govbC3Npj/a0hNyuWf6LklDYFSmYubC10X/gBd8ZT6mBPoAaQkuhMC+xz4YcTCNgty6
 K4GCaWSjsrqfomW788Dj0mRpzKfhjchLL5jU87yGUuTqYH1pchn6U5/pwmHbWUavfPF6PTGmh/r
 0al8Iek0Mcy2Jqo2m8XHvML2r8eUCgtzwWIKHKsVtuQqC9T3+GoW6kkNs0pZ0nmKHqGJ2g/bLtw
 9MIKsSJQaHIJ0QS7oNeCRJ7WLep0dU8eHnPBsEySLpZh57TINhhFjFOblcQnYvjervAnyBwV/j/
 KEvltERo3jcklfdgLEsJkQrbcpHEyZqoYYhxCGwZ6yAcu7lq3m32C+REBZfmoyLU9Ez7qjhVfZ7
 yT5MjHXuksXLTyldkRQ==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b9205c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=gMOla9jSct7F-4z9eBQA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: xtq3wZ2SSgtQlhuV3vHxlg1XknCB-ad5
X-Proofpoint-GUID: xtq3wZ2SSgtQlhuV3vHxlg1XknCB-ad5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170084
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276592-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F15092A6F79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 3:37 AM, Vladimir Zapolskiy wrote:
> The expected frequency of SD host controller core supply clock is 19.2MHz,
> while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.
> 
> Apparently the overclocked supply clock could be good enough on some
> boards and even with the most of SD cards, however some low-end UHS-I
> SD cards in SDR104 mode of the host controller produce I/O errors in
> runtime, fortunately this problem is gone, if the "xo" clock frequency
> matches the expected 19.2MHz clock rate.
> 
> Fixes: ffb21c1e19b1 ("arm64: dts: qcom: x1e80100: Describe the SDHC controllers")
> Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

