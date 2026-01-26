Return-Path: <devicetree+bounces-259414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xiGQMg85d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:51:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9583186352
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F62430022F8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A68AF32E128;
	Mon, 26 Jan 2026 09:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QOOd5YW9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bx6vw5rm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B7132D43F
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421064; cv=none; b=DaCNYiv6WOzqaF3a5aHlZgk9pwIITG04FoM/zuw13uUHsMi07UoJShRy9UFxEpauJNJtjiEW8uvkqk40LeB9NTZV7HPeZPT1lmTZWURldgE0IxOtr+CovpJ0bVfmFHIHBYzteoeENLFdOfwD2okicWsBy7lAwTJYkIQkMUn0o7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421064; c=relaxed/simple;
	bh=sSozEWyPD9E8tRmAxWkBSVSKT+7zVIdFfdbbV+uIE8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cdMgXvhVfYVOPHn3b3BEAZnjZq4Z5WwdfIpEU9F4+eAHtkVIwa8dv8SZlMuNZEdrtfUZfWiJjvPB78t5dvM+DU3MtvpzdFX6MjGuof8tWKuxflfrzwlLSQyNVveszWkueQQDlLpFqFcgl6QnLKBua0V+XyYcuzhAohQfU29MQZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QOOd5YW9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bx6vw5rm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q6T9oV054682
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+0Z4ecieM++BnFcQ9BBCwF1hAvC96nTLpNXFYvDDz2M=; b=QOOd5YW9qAS1lfir
	JeNu4Tcw3fdSJICNH863peGS2F9av1PWwMW4H0cIngxAEPflfwQqtXFIOxc0NWxo
	OEV5p5Ya+oKPD0LG7NcSo6F43rNDERTZS2DhmXI1lJxAjUbNU8u/Gr3PCUuAKVft
	huGPdv/bEmprwyjO9rICxNKKMKubShr3cKVx3m02ryf1ULUxFFfh3JrCrFy9lZQ5
	3feDKm3jbTZ+GaypCGSLixqXRuyUHUlg5K2CpwN/iRsW7/e8UvIYHBRyteQ9qHTY
	vIruQ/RY6yyMqR8yWauapbrhTQNPGvKfn1dDlUC9dzRfxK6CDwUD/t1xE+zXyimu
	5Ca6tA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq3hc3v2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:51:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2fdf3a190so77762385a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769421061; x=1770025861; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+0Z4ecieM++BnFcQ9BBCwF1hAvC96nTLpNXFYvDDz2M=;
        b=bx6vw5rmfE8jkPyftZTwUjzGELMjQuKi169YpCYyt2ftelPBBTjtxPPubVGdMFBbmj
         QwACb9LMpI2S9Ex7/uPvD26mxgUUD08gYWXtmFP58uQsb9UgxO0PjDaQz2TX66NDvxS2
         Oy6sTcovf9TyVq86Sl7W/5je39FsHTS61UFQsyoTEd/36McRzQCni6trj10OA+eg+anI
         DTFblIGUVQBl/RLMschKJaiIut/L4BrT8N8QzdJrMwDuKZ5pfkBCR0NEHZYy0/zeL5/R
         DhZIBL7iUUYmjVY98WRttsTjyfEmjkoN6N36AZ6WzBfcTkzKS7TbTipnZMIL0DaeOZ2C
         NHiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421061; x=1770025861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0Z4ecieM++BnFcQ9BBCwF1hAvC96nTLpNXFYvDDz2M=;
        b=gWkTGECQHsCz+2yNNDNzV+SINSt5cw7NkDgWEkGrFxC21YyA9Ygfp8TSPWpcSGlAGy
         qVV6Ni8ChK2uSy6fiDosIA2SE+JOOWjm8VZ7pOqASlGCFiTiD9HeCHGQpi+bjU83T5we
         6f99WR/4InsLMXfkDy3TaYOg8qzPbfCw4Tuu4nmKK8G0yfA8BaDqV86hfBFDHUPTBLWK
         AUQ2efFQMn9u6s/dThn0KjOzTp/mz3nhFr+QHA6m2FncCjed/T1AwuVfb/L+QoD9wT4+
         ZrKQkgE7p4OPfd0svrfMhWYPwMkO0BN7AS8iQlg34kaBXMaHnAg0S5FH+vAhKHvzOxbb
         +ziA==
X-Forwarded-Encrypted: i=1; AJvYcCUP6wt+RSzYowIKdlRNaJum236M3pCGMQW09HkKrDF4BhW4kTXYIi6S8niF671dVDD74+IlDQ/k6Mhh@vger.kernel.org
X-Gm-Message-State: AOJu0YwXv4D2Xn8lJ5b+xBK1CFYDG8FnFT3hsokKYjksIM+cgkSU4rx5
	3mk2gOHWTBWlIdDhOrPxbz3zt9topTJJWZ5Afb6Dml5DdAujMJlOkHo9CB0DkY9Qnru8SzLvTPf
	fU02Ts+1M8mZyus0oXO+6gPpK26pNjo5qbpIr3ok+rLt74N64hj/KjrEBEYPz9UFQMl9aa4QX
X-Gm-Gg: AZuq6aJl5EQlD5EufiqDbHR3W+o8byRNDjTgklcEgbGH4MJl3Fuh5fOx05wnS15UOZ4
	gFxPdy+vOb2FCBnn6pG9NqOhhAEmpts9/8fIADFAiAkMd7HoQCkeAp+vnVBWpFUTTnTh2AINBBs
	/Rrxed5yUaEu64dVsLmCnRh4YcUPC6kzQYjJjMC6NWYyPElUTnQmvw7HSJJ8Ia1QFH2hczRZAIG
	gQwaluNWYjYt7df7GQfsvLTGOgatOa3UOoPbk4UAverDysNrrRU2THUyPhby/b/lxX6yKLq/jj1
	k0hXcZoJewkydzQwJOClvZg1ibAKK2Uue8EVgWFw3FFom9MTmdjWIzyDbcYQ6X4jOtMgFj67tnp
	XMUrmy+8lFE9a7baFX9xbgS84P1TlT/bmRkH/7cWMs7vAgcwy8VhcfDfuKphomKF/wW8=
X-Received: by 2002:a05:620a:2546:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6f9621f2cmr351183085a.6.1769421060705;
        Mon, 26 Jan 2026 01:51:00 -0800 (PST)
X-Received: by 2002:a05:620a:2546:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6f9621f2cmr351181585a.6.1769421060179;
        Mon, 26 Jan 2026 01:51:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8877581a03sm465896966b.43.2026.01.26.01.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 01:50:59 -0800 (PST)
Message-ID: <b9fb16db-8a16-420c-bb55-850c39301f1d@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 10:50:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] media: iris: introduce SM8350 and SC8280XP support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4MyBTYWx0ZWRfX6jUxjWdfq4bL
 x4bQyd8UYKPH/5z0TivmT/C3vUOr/DNq62m7veZFD6bhVA47Vh1hJj0lJsyug7Aj8imDT4RYt4Y
 n3RSc1xGHKkE++niCHrgyqU802a4pcy8VzfH3oFbEh0oscZIHENm+8bJDuZ7X1AmtMWEcwEUV9d
 oIIMF3p3xf1R7xuxzL7fpfIdPQzteQc5dVM2gC8PazeH0DN+wV5hOh1sWpqu9/t6qeSKPo7RqSv
 IlqSCdPnEzK08sPhkUe7b44K9LX1Q1AzpAQmC6Ulh0ddGT7OSJ6DGu8s/bVNqHDO9PNkJM3CClG
 d0t7HRMaygaVe+Vem7rMegIo3i41T/mbxf3Id3/nrT9UMDdfkDYuXjYooYa9ZCS06IeI7FW8F86
 4s0L7j10xULs8qdoQMK63T8p9YuSIu42RSO6Pt1VkO+7gDla1B5edbinQrN9e3HHvKeGYGnkfMh
 J8p2KjTCQxOE8NtXihQ==
X-Proofpoint-ORIG-GUID: o58-s8fuy8ucJMLcNUsWc44wKaTW3x8f
X-Proofpoint-GUID: o58-s8fuy8ucJMLcNUsWc44wKaTW3x8f
X-Authority-Analysis: v=2.4 cv=c/imgB9l c=1 sm=1 tr=0 ts=69773905 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_HA5okAFcYk4mzHm3zUA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259414-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9583186352
X-Rspamd-Action: no action

On 1/25/26 4:32 PM, Dmitry Baryshkov wrote:
> SM8350 and SC8280XP have an updated version of the Iris2 core also
> present on the SM8250 and SC7280 platforms. Add necessary platform data
> to utilize the core on those two platforms.
> 
> The iris_platform_gen1.c is now compiled unconditionally, even if Venus
> driver is enabled, but SM8250 and SC7280 are still disabled in
> iris_dt_match.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +static void iris_set_sm8350_preset_registers(struct iris_core *core)
> +{
> +	u32 val;
> +
> +	val = readl(core->reg_base + 0xb0088);
> +	val &= ~0x11;
> +	writel(val, core->reg_base + 0xb0088);

Can we "open-source" what this write does?

Konrad

