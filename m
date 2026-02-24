Return-Path: <devicetree+bounces-267898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uId0BRyjnWlrQwQAu9opvQ
	(envelope-from <devicetree+bounces-267898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:09:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5C18765C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAB1B30382A8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3758539A806;
	Tue, 24 Feb 2026 13:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BZTHDVhp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J6EhYgCg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F473793A1
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938585; cv=none; b=j1w8GrRZed6KIqsNsJ4EYkz8/Yx5IoreK3vnIBTDnw9mALmHdht0uZcf1tnnb0e3IS+Cx9Wfj4cZDrl9k+F2rWlRegbbOrIK4efICgMsOzLvhd04gHHuFLsraGBgCCETsxl/pMmMWVCdc0/Qjp6ZnQ2gDvmGnbAFxr/opyooTFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938585; c=relaxed/simple;
	bh=4Xd9Rd5fcDqWMs44EKPbvgZw2SuUeIVBDTs0nOddwSA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iI6F5SVLgZ0djEj0DD2khl/1TavtWLK2Sfur1pzKGYWRBWC0ZUJuUuTRfUZw3mF32Vo8F/O/+I/icqbXsrWgNaZ8a4SXCMvHFPQFUSGhf6AAw2Y58PszpyT7v/C3pRo/Ni4necb2+7s0glUVyR79JZh+KfD6uCWjQQpX8k+HcCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BZTHDVhp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J6EhYgCg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFSfB1446364
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EVI6wmrp+q4h1Sntxg6BbQQrrPqfd5GRZaP08KzgdaU=; b=BZTHDVhpal3P2NWF
	HGj55DIT57SWPl08wh7WNP0x3VmLQt5Wwdtv9zAYjGvE3kKTPAWzWyD/6nQWa4CA
	seYAGViP3qz1xCwUbME7kp+kAdACWAVTIoSQFQyJjedmKaaOanR8UeziFuUcg7WN
	U1aClM6QaN4jW+wG2I1vC/obam2LIgbxa6F4MirASSP7RuMxsvOp5M2XxTWeau2l
	MyJgL/mx5vQBJiqRvGca18awWlPFwMdTblqQY/0MGaPXl5z4pAukC0iuIcSzajwQ
	tUuyBnNxZ/P7/dRntxB9TF5nl3kXlKeYhgtte7ISWzivIsmNhjUBYHzSqBB+pSjL
	PecFuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9u6h5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:09:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb38a5dc3cso546677185a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771938582; x=1772543382; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EVI6wmrp+q4h1Sntxg6BbQQrrPqfd5GRZaP08KzgdaU=;
        b=J6EhYgCgvngAUsjFDw/JrwbubRbR2+1SpfUvE9VSjy51fLXw1D4uBeGEpjPwo6AEuD
         bhksfdoRPfrAFiWTMgDgUlG1KG8CBnF6uo3onZAsY7T5jECByRX+ZwnzWD6581LXNOd0
         TjQixPMsKuAGEIgDkuoSZuxJc2s9SQIwymbZVbJqi1yD6L+EuxiSauRK3rc+9ZMwtxom
         +RtjePo9yV3VVn6A6Zn2voTqj1XzIJc7ggXLW3gvR4p4h5I4jJ1sntoVR965uyti3r9a
         phQKnhPacMbZ6UAoR/7cQPCEquKl4ZvYTID9WFbNdQcZn9t7l8Xeh2x0zhitQHqhphcV
         vwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771938582; x=1772543382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EVI6wmrp+q4h1Sntxg6BbQQrrPqfd5GRZaP08KzgdaU=;
        b=Pd8aOVt7sf55v+663tknrOHHZH1r1+jLYnvOo+z1NPpTR+I1ZQi9dCng7IJhAeRRzy
         W1hUIYrsQMu13CrWCf2ot1HbGLwt5cXRosQUPqDvMzhQi/wkteNirasNWwr5iHF5DxxZ
         +0w9SzcpYY2StQ5uR/Qb7axpsabUXXRc8QYpaBYdeDt5i+HxbrvJT27Nu6OukcoRYYwc
         oylKOJ1DAJUf5MCWNygaCMPKdWY6p1/cMj5wDeBA9Bgv9q6NwsgROYG1z5KDFl+ZIIJo
         5ijfQV04wfzB1Rs26wpOJkyJMGTscIKrhvd5+tbRF6X2BcRFqX8zTiEA+4k8YYpyfWcZ
         +Rhw==
X-Forwarded-Encrypted: i=1; AJvYcCWRykJLk1kSF5sCp5sMGjSRz9M+ynsSvDlaTjsXmCEok1xfKOn26+jlluSWZ2eJBVBR9lMvy1Xqxy5S@vger.kernel.org
X-Gm-Message-State: AOJu0YwfYqJP2aLiUKWOC27Of4dnaBFKeFDapRDmSgb4hr4IitZQO4Nx
	lXvVyU5pMe8EXc7zJqK5COk6AblBQLeiGp34NXjtSTpNCFMc3X0IX2jx/9qV+ZaclyK+G0jD/08
	QkyVL+CZ701Z+I2ih3ytwB4Dij/zeq6MIULzVbMHdoj+soB+FSScRYbSCHcUfVcQC
X-Gm-Gg: AZuq6aJGdNDIZbaa91hJwahiIrvNsYx1P2lxT7cdUDyfdtOkihxchOHIbAlH61F0Apf
	iUrIxvBZ7OqIGW2nH6yRqiCuG3klL0bg1M7oh71IYTB4DeX4aJLPWQJqPnB7qZzgGUN/ogQIg9+
	yt74C3grHyV23rogThR/IXRuE+ZpLKHTH+cNgos9r8UdmP08gJ2BxUsxJLon8MzYWoznqMboSmv
	bTyg2d9CvhzjXjVc2yZkU2XneeEap1iKnpuB+PSX55V/EpUx5zmL78swGmPnJ4qC6Ts1LtFB7BS
	bWFr1gHw1HjM6fBWZh4X6weoGjYSiV1e20ePN1k+t7S39Sh2Ww0XcjWYb0wZmdaeg3sLFEAvivH
	QzHsLav32AYR1NIUozuoLJ7nvnpYNLqJB/42aMrjANIwkqOTlMJX/KbMXL83mpnrq79J68SXG2f
	Ji9OM=
X-Received: by 2002:a05:620a:4628:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb8ca640e5mr1222345185a.6.1771938582210;
        Tue, 24 Feb 2026 05:09:42 -0800 (PST)
X-Received: by 2002:a05:620a:4628:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb8ca640e5mr1222341385a.6.1771938581656;
        Tue, 24 Feb 2026 05:09:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eaba2f978sm3529114a12.27.2026.02.24.05.09.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 05:09:41 -0800 (PST)
Message-ID: <8016eafd-9a6e-47d9-add3-3e3f31f1facb@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 14:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
 <20260224-eliza-base-dt-v1-3-54e8e3a5fe43@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260224-eliza-base-dt-v1-3-54e8e3a5fe43@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699da317 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=JAT1uLC0zqApebIviYYA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwNyBTYWx0ZWRfX8G2naOEJX8ye
 Hspr9vZLFJCE1QNrQAP4e/aF/DQmq0EZobfh/6/ll8Ln4Wn3XzsYljdnOT39xp6kqpCrlr3olcy
 E8ueBaHaGC2cpqT85exuItAwotAmZdAtkU7RpQWIWunn9qh5J3UAlL/woWol5lTCkbIrBIxHHYr
 aVBijA1FRefooHhUgvDdlF67/DkxjATb2/7hc/y/rqRMAk/vDN18s7SICswKM4NK6w85r7z+aNO
 45JvpQMM8Xg4FUI0mCU60xoIM5Ii72Jf9cUK4JtGQ2gQMOy7FsFC1SQ6MDeQFZWNmDi/HC/1+ZU
 ZijsIrlyqdxXXVIJu843CLUERvlZ5M1HW/26+qZfiG+Wz/5rYGd8TZCmUxYUcgyCIuWZlsMIF0Q
 7TvxEaPXswjxAWojPY7IyWaNZUwmTm6r81F+K7e5N4J5UwXgMOonJ8hh4q8sn4HvSHH5kDl/f2s
 SHEjmG0kguTUYPkK2pw==
X-Proofpoint-ORIG-GUID: k9pgYLnp7ZLiheVC47deq75gdo3aScf8
X-Proofpoint-GUID: k9pgYLnp7ZLiheVC47deq75gdo3aScf8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267898-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 62E5C18765C
X-Rspamd-Action: no action

On 2/24/26 1:13 PM, Abel Vesa wrote:
> The Mobile Test Platform (MTP) is a reference development board
> based on the Eliza SoC. So add dedicated board dts for it.
> 
> The initial support enables:
> - UART debug console
> - Ob-board UFS storage
> - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> - board specific clocks & reserved GPIO ranges
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

I didn't cross-check the regulator settings, but I hope you don't like
this kind of fried chips!


> +&qupv3_2 {
> +	status = "okay";
> +};

These are normally mass-AC-allowed for a given platform, feel free to
enable by default

> +
> +&tlmm {
> +	/* reserved for secure world */
> +	gpio-reserved-ranges = <20 4>, <111 2>, <118 1>;

Would you know what they connect to? Please describe (like in x1-crd.dtsi)

> +};
> +
> +&uart14 {
> +	compatible = "qcom,geni-debug-uart";
> +	status = "okay";

Please keep a \n before status for consistency

Konrad

