Return-Path: <devicetree+bounces-258066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MqTHdIpcWniewAAu9opvQ
	(envelope-from <devicetree+bounces-258066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:32:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 378395C3AB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:32:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7FDEE82D050
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BAD47DD67;
	Wed, 21 Jan 2026 17:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V+smpT2C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H55LiwS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA642DB7B0
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769015027; cv=none; b=qymmbtb+NyHcwfyyGs+iJgJpsRMLLQWyPSOozo+XhO5mWlRuURytCNUuCLlhY2jOEQdvh96UC2L/7BukqQPZmEyyWG8ffmGtVsrGYyAqBQru01VURR3JxU3Ni63aIq8A9p1NqxrsfoyDHJnNoTisHWUbFOqvDJA6tlkTbMOBh+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769015027; c=relaxed/simple;
	bh=fjO9j7NpXzRG+FLDAkh6xibgdxMTf2nhnI7rVklt++k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ji7KaBbdKAj82WhX2qy721h/HETQG5tA+GA952T5FB0tqm0o/Sex9UNIXu8XAZN17OFm8V1Asyp916yQYhLKbAlA4yuDOvAWkU4e6zltnf0LksceNFeVTTmd77HZ8n050/PQKcOv2eLw9Re963n1VkDKfo2jS3oLGHC6MuO4kwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V+smpT2C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H55LiwS4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9pVSC2452247
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8xE6fvhDYaR5vEy22iV+diftMONfSSkqxS8Q9Xe9dHM=; b=V+smpT2C3bou6vMz
	nejqxUycDfXNgosh18b0lOPk+tmnrcrEyr1ulA1BswBDuXRvgI1LOtS0O8TzT17a
	7aSs8mlOrGwHtml3NepDy7KKfh7QKkOtIbVHMv2BOC9bBo4GdJgM3Yh6kH5Ca14c
	n+tsC5xRJlTe/Uktyu7oP6gC1Kp0Zq1284J/GIv61IEuqAeRO4f6+7R72YFjFuJv
	C5/qbq+gDdz5aeYy5u7F5ylMn64bSXhgb5OQWfT8fPQ3Tn9kdaai+t80VM0HDldE
	kQKwY3vbbTj/B2pih37cBk8uReW3Rka/uQyfT/K18v2oMcH/VQ6GIRHHcfMO5JYi
	V+cOEg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btvhqhdpu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:03:44 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ed0a070db3so7371137.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 09:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769015024; x=1769619824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8xE6fvhDYaR5vEy22iV+diftMONfSSkqxS8Q9Xe9dHM=;
        b=H55LiwS4w05aKNsttigOqPGrk7pk2I0GaUhD7PrKL7G9oYtcdaRqwK24aMC54QZzKp
         +Qv5gFrrQay/NczkQik6ccr+QubSVor8IUSemR8Z1nPqUFwsSJFVrV626CzbJ9n8VBRj
         4agsfX3jjcf0itzFd/Xq4Yl477GvOQQYQf6l0aYFHiifKacIZMpxX3U/5o4UlSsqeeB9
         SKHwlebjkKS/5i66Q4y79FlV+WOaZrYdDqZc/Y6qqwr8bNpSeZPqBTvDpUE0+WGjSRoN
         FTmD80NCAY0laNjSo/5/8L0TfnYZ2s+f773NJgEofgS7yAWLiAAZAn2OI8sbasaH/VYU
         p7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769015024; x=1769619824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xE6fvhDYaR5vEy22iV+diftMONfSSkqxS8Q9Xe9dHM=;
        b=BFCL1k96wyJMvmB9iGHGkGXaq/QMNqeVtFvvt9FmW8D/k2YMSdrpOemBL7joJCBUf3
         U/rD6J7adNWwGHcWyJYEt+BlJRt3ns1S4ObtewTugP3WUD0FQagUyKbr7mupm2OUei3L
         XZCSPXp87Ffu9x+nhdFRdodw7402QqV1ftwL5cBbhZzaK0sbeGQSEt+1KwvrgNz5XXJj
         /zZPwPFIEpB2gVRjRRFRvZlm3tDLbDqp/epYLNDUPKp0hQNq7DThbZq/JrUvxGmL6Xis
         Cj+g3TwnEgC/68hEPEWpDf8QcXSmappLltShzYMgU4knJ1nAn20BqwQE+wduxb+Fqs/t
         +c9A==
X-Forwarded-Encrypted: i=1; AJvYcCUd0IbrOaMZSyclKBxJjGviN/eXV+m/z3QAo0fH+iX87ecE1Wyv+3GqM1knOjPonCyjNYFGNi8jGhg6@vger.kernel.org
X-Gm-Message-State: AOJu0YzWb4y3Caeb9LR9fVz4Bapd42aIU+0wJcr+yIKqFlJRkgfqxYUF
	/q7+pL2GhpJ2/T3LjkjafTQtsFwE1wWVP9WKt4Az99iI0UVk3of5LIMxew9VyXGsTLhnHWYqxay
	nwhOR6H1ioyf1pX70RnXreSrpg8XeAuFB2KbfPvvzmRZdpEToLc7WFIveRsG1mSUn
X-Gm-Gg: AZuq6aI8MsTL5zCe94ngTvh/U+Sirj3lT5P5VFs1AMGxaQZUreI6huo2ksbAnheavIQ
	BDwLt7pJHw3w5LAq2YZdZJA1vVkvUdxY+gvdCG0ID5By+x9vdmV4Z9Puxx012auUardD4Ye3xdY
	dlZUm3nOCHjZcESbm02gMWw7KxgdAIOBmjP2tVbepl4nabffHSc4eDEu6BKznERCxqvyvRSEiTY
	sCBCEwAvS6wL/Otw99N9E2ADlTDPNoQddutws2LFXielCfGO4hGSRnBxiqAcYHgsRyo3k4wg5WP
	URioUJO3WkZyKaqwhTT/BdOQNuqsqptGBCgTgJiQo6LwwpgSFDYBQJFyyrMJ5l4s1THujw2OWRa
	dDj1fK10mEDmkG9O5XRvadOdLV3yPz4olzBYg3az7aJT1fDpaROl1L+76uzPyMCpJkUI=
X-Received: by 2002:a05:6102:5ca:b0:5f5:2b1c:7549 with SMTP id ada2fe7eead31-5f52b1c7713mr238021137.4.1769015022224;
        Wed, 21 Jan 2026 09:03:42 -0800 (PST)
X-Received: by 2002:a05:6102:5ca:b0:5f5:2b1c:7549 with SMTP id ada2fe7eead31-5f52b1c7713mr237977137.4.1769015021280;
        Wed, 21 Jan 2026 09:03:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795169721sm1611734666b.24.2026.01.21.09.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 09:03:40 -0800 (PST)
Message-ID: <678a9105-663d-481f-8286-f74762e09e8f@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 18:03:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: pm6125: Enable RTC by default
To: Biswapriyo Nath <nathbappai@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
 <20260121-xiaomi-ginkgo-features-v2-5-fb3ee94922d0@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121-xiaomi-ginkgo-features-v2-5-fb3ee94922d0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDE0NCBTYWx0ZWRfX3xagVj2ltH5D
 mMJaoEzcy5rIk4aZMeC3So00A3OqNXIOQGufCuR+m7WeGV7f5G11KIAyNPNmqDPaUczTcZypWKl
 WrIxUxzlZHtLde5pqSThaTDXOQE0fTayePFyj/1uwOvv0S6Dxfligibt1WNWHRBjTAZ/WOUCR8Y
 EJOnwluMweXnAvPFVG1dmLgnRwefgCXxpGo4RLe0bQznlgZIiLBrAe5v+Rd/nVln24+3mfji0kK
 3UwE6ckxB20gAc8nHzLkpy+lOl8qdT/ZDTbM75CIikNVt3pFFQrJFjvyS8M/iwwmSue4/RJAt89
 OsPtWJdGjtCsJRECS6vZBbp+tN8FxRGxuo6d5RGKjlyYV1ZbeI/pBi05RMo1RgfAVvMLaCkWVFv
 GQFl1LxLOaycc2QNRIB2ZRtSQddiDJvpCtbrc0ZqzEaXNfIII8sJp9zjMvuu+h4LrtfxSslmO2p
 l7r+2QncUUwIYehWUbw==
X-Authority-Analysis: v=2.4 cv=S5bUAYsP c=1 sm=1 tr=0 ts=697106f0 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=7acBLAuPG5nW9c0efqEA:9 a=QEXdDO2ut3YA:10 a=fFR93BqyA14A:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: CF3gZ87orBX5CNL_bP1mMOoI-kUk-4Ae
X-Proofpoint-GUID: CF3gZ87orBX5CNL_bP1mMOoI-kUk-4Ae
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210144
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-258066-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 378395C3AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 2:26 PM, Biswapriyo Nath wrote:
> sm6125 soc uses this for real time clock.

Bit lackluster, but I suppose it does contain the "why" for this
commit..

> 
> Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


