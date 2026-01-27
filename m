Return-Path: <devicetree+bounces-260060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AFXBG3yeGmGuAEAu9opvQ
	(envelope-from <devicetree+bounces-260060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:14:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A2E9851E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 235E13015454
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DD33624CE;
	Tue, 27 Jan 2026 17:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K6n2kADB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WCrXuTsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692C833B6CD
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769534040; cv=none; b=A7jLIKB0ynPZbUXm5FLMVALbXFK9bqkKj+8cmc42/07DBAP0SMbhxrAU0PMZIBCr76CKHPlqQlbPL46pj0pR4ec+Q7ifCTlvhxUAydHuS3t3t0wS74gAhjd0euOZKJ6kGKc51Ihfr76ZSbWN+qJhOVyzAORJFGJHXTh3if8Zu5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769534040; c=relaxed/simple;
	bh=2t1Vf6UpwTpD+0yC35m+4bzwOPrmuwtJstpwaHE5UVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LnlL5An9ltGHadYPCskJ/4tjJm4pSFCC8WaWiVKL9ybx6WpLMsVCdN6jgOQV/2MG2rUtJTY7co8vdT33gIlPSywDpjAM79VRPHekkMocJ4hf8RTjXGxf0DHO7exz4It4DrFTepkd1YUgGciXSFVEB0QaNYpJa1HLTKbQ2BUeR+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K6n2kADB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WCrXuTsD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60REZegg1065891
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:13:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/yMpzSpDxVs8Dh/5bLKNN0uh
	ExC8+G7Y0mffS21qSd4=; b=K6n2kADBvWEbbY3qfHQzc3TXO6nTFmIANR6lkle1
	som8Zx9h8VUNn8nT/CDgUBEf3qBqw9lUmBikghudNIvEHhlOKndEwPFz0/yzmdGG
	Gnwgthf5phgSjsqOzKDgK3abjT/eCjWyzBAOKLpkp0NWKjw3LuDQqkdQdhMtCbCx
	j7BAz5VsWZFWNg3L1eeRx9YXCz+mus+v+BuU5KBDD6bwhzSQwNqyHGUZA6nIeo6x
	1W6z5YWTt95LkQJUCuTqd73Z43fhcsmfGkLbodwmpzgBeCPY+EL3LB+hH+t5xW+I
	CkFAbT6mCmROKovjoc6My9LO9ai4nXT/vWd6Y1XerXml5Q==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxy8x0m0c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:13:33 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9412512e9abso26023972241.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769533826; x=1770138626; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/yMpzSpDxVs8Dh/5bLKNN0uhExC8+G7Y0mffS21qSd4=;
        b=WCrXuTsDzZTZr18/Tzga8rXgKDH20EMd8dLfFmeFH7VhT1sRcYnF7w6o+iJJkyEpn9
         1vnhzY8P4FXQnqkxt/7DEPqYdu1oqPIK6R5bHC7EIRyuUOAWu+o7+D2wLqNb6EbloJhW
         BATys/j2V/ROkWlA+4XC9Z57lgcclzpCkL9tUYnN5Pea1VqgL+92MgT3mYPnF/QQdUZ6
         oR3+dvmYgxIuRbfdGx3Cy0hCmeQzKANOSqEQ01XGLANGBEcUlKU0ai6dpjrn2YNfYlaP
         XyjN6A9bX2TdI4by4oIrn2APnWspUk55b9ORRTB6c4RJj1vKDQaXdMRWw/R5vH58uN3e
         geOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769533826; x=1770138626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/yMpzSpDxVs8Dh/5bLKNN0uhExC8+G7Y0mffS21qSd4=;
        b=Woho2dbaOgCmjxfC9HHk5sPRO+an9BB97hT4bKH4Si1jNq+B8kzTvWmJ5zNSREpK+4
         qEvQi34fX6S4zX8cEVPI9yR8HU5F+BzmXgTKYMhtKqbIZztsXzPAySTNLvPXHf69Oy3g
         iyzbFhEylRJBSd9Q76Xi+UXs10EZ5AYiBD+ER+nThs9aj8vaCzRVqJHLJVya4/MRG7/X
         RtndG0PjFzNLOP+iZBP1Rjtd6GrHNrt8JLTFq9XyWeYYeReQWWZxYKeNqvHyc8YWX/2D
         RzAbgLhlfUYgRDBPiJNErTl/UfK51MfpwBFL8YrLaLxIsWLNeVVcatBSemav7ETNYrQ/
         KKzA==
X-Forwarded-Encrypted: i=1; AJvYcCUMLQVsGkaVgXTQOiO2j6f96hNXtmNkY/UpbD4+vojPSJQuRCbAR709ADmxMoD+bp63hbkqfdZsT0BO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1VOKyvmi38dj7GljR3SlgT5g3eoY1XxVw/y5KJGB1lltBVr7t
	yEiTwHaIQY5pNrVyvoHZnZsgjgI2cftog8MMTUeWXuEC59LuLmfMtID+qlv8LWklBNAKwe7kG3b
	u5zv2acjTwWMiEFnNlduZtb7LZzzAJmKUqk5X1G45PR9eomZbKcDLv7G3lMIGbgvE
X-Gm-Gg: AZuq6aKeKD1U4rBM76gvwKlHRMSv8yW+rSBR5NRskzPIVHKYu1QwA4DG42d8tiH3i8w
	UKuXVCxdI/qk7BiB4T33WUjVekTRhXYHHwIfX5w37DTif360Pw/1EQrd9Bnp0AjhWiVLUKRsqIm
	DK3dzzRAy1qr6nAPOFuaWCse8aaJitneb1twElDUB0yIatm1zm8YskSqmM4nMOImBFURe+H/QwI
	w2M+E97PF3rTU2v8m7JNjP4UojAsPE+EWHK/Jyo5U786BgT9T2DQWenbO1Fc62TlfjpHcmcee6C
	0tls4/1iPdDeaEP0TrzSUlo8xB14jirc4xOVWTZn/Q0cz97rfA47CTkmT5HksRMPs4pn8uQRIrg
	fCVRdXZywkUB/a44uFM4Xs6/3lyeavT36Z4FdmRROBreI6s0tkrFnpWDHYPohLta/tu+TRpDrG0
	keXsqvAoRSRUr3zs/u7QYvfc4=
X-Received: by 2002:a05:6102:2911:b0:5f5:2b1c:7551 with SMTP id ada2fe7eead31-5f7236f8f1emr1322136137.19.1769533826141;
        Tue, 27 Jan 2026 09:10:26 -0800 (PST)
X-Received: by 2002:a05:6102:2911:b0:5f5:2b1c:7551 with SMTP id ada2fe7eead31-5f7236f8f1emr1322121137.19.1769533825707;
        Tue, 27 Jan 2026 09:10:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bdca0sm49577e87.94.2026.01.27.09.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 09:10:24 -0800 (PST)
Date: Tue, 27 Jan 2026 19:10:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/6] clk: qcom: Add support for Global clock
 controller on Eliza
Message-ID: <snwge2tfgbn5l7nvaez5v6h334hfhsaeh2piz56zuponxkxypo@73ar5opadfjb>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
 <20260127-eliza-clocks-v2-5-ccee9438b5c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-eliza-clocks-v2-5-ccee9438b5c8@oss.qualcomm.com>
X-Proofpoint-GUID: f7V-OWXvVRI-m4t0IfeLC8QAEoGpJrpQ
X-Authority-Analysis: v=2.4 cv=OcWVzxTY c=1 sm=1 tr=0 ts=6978f23d cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=F7eGajQwVCTwq7oO_cwA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: f7V-OWXvVRI-m4t0IfeLC8QAEoGpJrpQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE0MCBTYWx0ZWRfX5Jt/iWUyw3LB
 VSZriVjefH7F5pkHpGbjGx5hg1bs6wqM95U5ftjGyVoAlrWApTRXJbl3PoT5QTDqG+qndDpnL7b
 SpYqwxwXFN+4LhGLyrVX4+TRi5uPv2yR6pa2riZ7yWvWvmBnfYyW3IKrfyjW/fmEL+dhf/1AYpS
 SqyONrx0PpfCPjxWapHybEG4762zvQ+D+WM3NOj6RnQoszB3gvV4+YEU+mLYW3K0TMOL9HGmtrc
 TYbaGdJ3hXd1D/WtIbLhi6WfVhjjxvpwUfwZMcK4Y7utwMBVJuHbKlWXCSGy+Q4tCSKpV8dWsgY
 5+vLvzyIm41Bai49lLV9Ig+ItNFCiyWqfnnxC3JzY+yVj24Us/cFI7N3lE9ln6/tl+gW/wuECyH
 AV2+shzXfE20ulKL/0DMpXIADooTqzH1eJqDvF9Qmc1Nrdzl05Bdh4a/LN24r3j/8EROqC1ac4i
 5hP6WJY3nI4z4+/Y30A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270140
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260060-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 66A2E9851E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 05:03:23PM +0200, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add support for Global clock controller for Eliza Qualcomm SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig     |    9 +
>  drivers/clk/qcom/Makefile    |    1 +
>  drivers/clk/qcom/gcc-eliza.c | 3160 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3170 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

