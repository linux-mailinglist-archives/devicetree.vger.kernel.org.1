Return-Path: <devicetree+bounces-259500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM+bCDhtd2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:33:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F56088E14
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55DCA3012BEC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B043382C1;
	Mon, 26 Jan 2026 13:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VbDFLtp0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JQ7Zd8ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECE332ED3B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769434421; cv=none; b=BaB6KUPj3MQQh3w1L4iw/goTUaqvRmKCyK7U3wnBPwOm+haJl+ySRNJbTqHCiM0goAxrFYO9cGWm0ogRdeujl/i2fFxzpC+MTZZmXYtvFciRMCzegPTSPp/exoVNRttBCoTye78tbUJSsZIphcRBQjkBKr8il7RuV7JeN8etglg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769434421; c=relaxed/simple;
	bh=Ek0lCnCJwsf2F1AX19ArDWXdm66DnHRHDg/0GLFvI6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M+nMC7ENTeEEuXOA7leN5XfhdxLTgSqvjaHypQ2mvdCSmyzkoN8eL173MmUit4XvWraSOJyqaQdg4Vef5Ee1lauxTTQKZ8pYO3l3PiG/KR6QWsdO4vB4YxIVuOyS+XHS5XmkaUEG7d0BXAeTpo1CBvjBJC4pTLWHYiuH3pmw560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VbDFLtp0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JQ7Zd8ps; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UFUo1018994
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:33:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mwZj9Z+9l4jOxcaIYwel+p8a
	o48f/ky9KmTuOH0r8i4=; b=VbDFLtp0KHOZWJsaTb/Y8Xm1HafZiNK/V0Mn9nU4
	gSLE6QSLV/CPv4IKH/N42G7UQnBmQv3vMP4d2S3nuTJxOjMB5jI5nMRY+rSsoqMn
	PZWpVzz0+226hcZcm7UolsGIufMhyiJGQHylJLZ1G3IKSczfrne20MNBSo+28FmB
	GXyX8VWJICv4Y3zPJkSHqUQ4hvxWm3hbXDrxcWQB/WxpywaDub/jV/XK3k04kWO2
	O9ebMQL0tsJpKHGQGGJgnwRE8XIfY1Nhtkk9HbY8Vh5cPjSHYEtBJ7FTNzuWzKcT
	dRWLvXfsCvMP8g5K+1bW00tMxWa3/bIBJ+pyO+y+U3ZUag==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx26814qm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:33:39 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f57cdeb11so6896687241.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769434418; x=1770039218; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mwZj9Z+9l4jOxcaIYwel+p8ao48f/ky9KmTuOH0r8i4=;
        b=JQ7Zd8psehkJSI1rsJQfAtfY1etOcfTXC7RQPahs2obc5QsVQhX7otaQ+44FA5OkC7
         C8uLmQOrhjL3ynxhHAhCnnka/0EnbH+pKueSRfvI6ZXa2RK+6mnAUjWqTFojxRqEn0Ae
         hxl/gcIF5/Tmx2wZcaGIKjCr+bEWJCMBcSfOI/EY00jKNCKDXlloJVjmtfoSwPO8Oxb8
         kHkkPA39u3GRI5dIjwgwyz34BZGOyxA/gO9iAd9ME3Rahv+hwHIzZFicmM15oofiyBNM
         sZC3cBHfE4N/VNancT60BvjU1/2xW7vVf+JnKBjZZND/BAjYaFAj8YwEjbnMrK4FAKkh
         VDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769434418; x=1770039218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwZj9Z+9l4jOxcaIYwel+p8ao48f/ky9KmTuOH0r8i4=;
        b=HM668Msop5Qs6zxgYh2ykVfTT2UoUNbs8FmA9Rl9Gnl+3b4nRU8iBc2zBWRJiEVVjh
         0a3tmQyw3hw9AOol0EBK9zNEFb3japgkozZ0y0oKeuxlazs/hvTohEU/oqB0/B70wfdu
         3U8vU7gk31HR6yzvCzDmKuZqzIp2Clt7br2KnoE68qZRsNROqj09r/mtZNoxicf75N9o
         QF5NOVa4aQIrsZgIcIh2A/5qznSn6NbVJFunrFqvpd1zgh9g3PDo87MjaBIICPbVOxep
         7v57HzzBM322LSRKvH7fmBcn5Z69hcw+0RYAmE+K7Bpw1xScIX74ebyRZuKal3r/zDTy
         ztEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOqwgKcL46DVzoo3zcLT+R2tXn6Vy+FyOzFjyk1PQG7HHKZl5C3wJpHi13U1TST2ofgNVzWVTMWtAR@vger.kernel.org
X-Gm-Message-State: AOJu0YzYl55PUvf8hkTjVRyAzfVhmS/DLLIg1IBz5j7qeublnz/wVyFH
	ZIhwU+TTJ1pJ9mIDThaDlE0h4SEO+2Vmd4U8tXuVmpOP+wYwHNJfrwfKaJRxjBYc9QeVwetw8mS
	EEY1+L2/Cpf2NUFQ7M40xhlhBAk6w8zikgv8306TaZIb1ezzLBVdkhXwfsMi8XXoi
X-Gm-Gg: AZuq6aKA9S1iRJC0JzOB6kGGTf1mppOSpS5cLIGbKcunX28LK+bYrz7f3IjK4Rustrd
	LFxX5WWN8fntBsrFZnkcM7CvD8cTud/trsBWpzdLXAgIQC/jILme74Xklb/SWp+Tq9O3ETcc/M1
	h1caPlFzBa2Cq9BFv8sKH5A9ORY8eGzvecM+iMYyZ9QKKTUUftRmlgOorBmQUpl+n/ZnNCUrrkG
	wyX2M0xUudGZn2DgMUjZNTrikGI5nJ0jm1a8DmZl3gFE0hXSasTtRbXhwTeOiOAzRf5B91y5TEs
	vCbJ0Wwh2XpX+3B4TCVRI3bU88kkYc0lT8tfQ0T2vf724kcOOAd3t9aIZ0rtmkqR8iBTlXcWL7z
	/f47mwlJleLQtPqy6If851TPj6PewC8c0ybAudy4zCSrua+IZ6183jFs3Ed1rdfewSgaPiNMCgI
	aZXTVVCbEYUHvMLCd3JGJI5ZM=
X-Received: by 2002:a05:6102:3752:b0:5ed:675:e355 with SMTP id ada2fe7eead31-5f5764b036dmr1049635137.27.1769434418580;
        Mon, 26 Jan 2026 05:33:38 -0800 (PST)
X-Received: by 2002:a05:6102:3752:b0:5ed:675:e355 with SMTP id ada2fe7eead31-5f5764b036dmr1049627137.27.1769434418109;
        Mon, 26 Jan 2026 05:33:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de48df6c7sm2724433e87.16.2026.01.26.05.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 05:33:37 -0800 (PST)
Date: Mon, 26 Jan 2026 15:33:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lijuan Gao <quic_lijuang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing clock-names to GCC
Message-ID: <tw2lcfppz6lrmnpcfm5yh5j6iln5amedo2fxbyapx5ralclhjl@tyiretqzszcm>
References: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69776d33 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3eHDywHgAMhqHhNdZ5MA:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDExNCBTYWx0ZWRfX5Zq+mZZ6mm58
 i5Ovazv2AnsGbvr0bXtm1jAcmRUIP867WWcvO5aT4YYCf7l3WAteNJ/E09qLx0l7TiabdYJoeN5
 B/eNw1AmNq0E+e2mM6Q90ngygzBDfxV+suCx7m46j8HnZtYRLT32XN0btur/SQkuxxn4wz3aRU8
 klfAmk1wL6bC4rQdmYxs37Cwpt0TgOC3SzM0t0bt2B/VNjZApL3ZLzaXuZbnGGEUIpzMQoVuVdt
 PuRpX7BRVo5DJ+xtqsTGQhqv0kHpCe1EPK9f5mHJDNQoBKYDzIb6RXmtbj/8Rofnoeq/5GASK+b
 TpHEqlY86XWUFc4rYUfdNhrs0NQd59RhpUXcD9eozwSS4bTzeT/cCyTGzw4IbNORfaJgHVYEMNk
 cypY+7dwrRWAUpWMSUOipfvAkWWLQEDFwMYGKKZMGqm8ohdaulnFHU8kOUa8q2Oq3OHkehVTwH9
 xiWsArfzbNZVKdEiFnQ==
X-Proofpoint-ORIG-GUID: YnLBzmSooZ3TyCLcuu_83lm59eKbwNQO
X-Proofpoint-GUID: YnLBzmSooZ3TyCLcuu_83lm59eKbwNQO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259500-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6F56088E14
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 10:45:03AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The binding for this clock controller requires that clock-names are
> present. They're not really used by the kernel driver, but they're
> marked as required, so someone might have assumed it's done on purpose
> (where in reality we try to stay away from that since index-based
> references are faster, take up less space and are already widely used)
> and referenced it in drivers for another OS.
> 
> Hence, do the least painful thing and add the missing entries.

One (me included) would assume that the presense of clock-names imples
that the clocks are fetched according to those names and become very
surprised if they are not. As such I'd suggest fixing the bindings instead.

> 
> Fixes: 8e266654a2fe ("arm64: dts: qcom: add QCS615 platform")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

-- 
With best wishes
Dmitry

