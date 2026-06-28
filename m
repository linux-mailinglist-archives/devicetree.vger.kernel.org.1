Return-Path: <devicetree+bounces-316409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uTHxHeEfQWrolAkAu9opvQ
	(envelope-from <devicetree+bounces-316409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 15:21:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2D86D3E11
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 15:21:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="X8b6/pTW";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=DEJUzswq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316409-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316409-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BC583022684
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 13:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95363A874F;
	Sun, 28 Jun 2026 13:20:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4363A7F66
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 13:20:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782652844; cv=none; b=pr41487+C6m/leWnsbBjbN0ZBbCsiQHHMZa8Q7W0juS/n60B5Vu+8x5tQ5RLaCd2wwkEGpYM19dRVmEbRn0lcnYZMAL9QqI05bP5Vw48rZThF/UDMemhj24bBz1au7G8315yLFLhIngtvb3uoBKJXgbf8TFKEm+3Sf2O+BjjJ68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782652844; c=relaxed/simple;
	bh=vXgbWLY4+y3P2AScEYP40daNhxf/6do7tNn3R0RG52w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aMRTkGTPDuJLpjZl+iUDRjiVEd1NWML5BvGBfDRaSNe2muhWddwJT/UqsZ04fIBbalVLQ92tmEo1PLFoq1uGA1C4xf+2pkLKSo1bhgPWYzA3kLUNUix02AgNZaeK6yYn90iJiL9tKV/pV+T6mVhUCvPNPxgfy+N02mJsIWTGPXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X8b6/pTW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DEJUzswq; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65S9Oss53594516
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 13:20:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HfvEQyPaa+6RDmpQjnB/uXWb
	MmtvKDAyWdpXPrmNtrU=; b=X8b6/pTW4/+BGRTue2/rWhz41bJ5/bX7nYBPotbl
	PA1j1d8zw1adhhT7XCFUxs7VcnN3XLlNCtWtH8CVuJ9IKcHaznAC1IF7DXrg4IVP
	atN2skdm5Ed/oXXswb97ChCQeWHAEUtfOw4ObSHi66Rnze/d93xZ6GA6D/GJVgNe
	UNL6uaJpGcA5WvFjW5y2solcp6Y3Le0AFRbRz2hpLAJj/nSvlQDfYqpJSGVWxgt6
	jI4rDb8VOlj6sOECQspBszTj4cpuagkttD5Ph7zXEsdUhPoebb7KNI1UfTUmn59S
	zaypIjVQ90bONv/dgxRFUpcpZyJQAWnoVTNNh8YkE37f6w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f2734ay39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 13:20:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92af3d5e85aso500499285a.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 06:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782652842; x=1783257642; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HfvEQyPaa+6RDmpQjnB/uXWbMmtvKDAyWdpXPrmNtrU=;
        b=DEJUzswqZxJ/1YhAATvihpt/T1ghS7rX5V2jg+XumBXAXibGjteVCTnlxIilUJ+L+q
         jPCFfLt1fPQpR96CDFkO3ClJADK6zo6vc22V6hP06Gtl4LctEc3bM4GS5Kx7CfmxOU/J
         7/yPyvltb5IQSnCIhzmh3goSsrV3TLWpOOPG7ZjnpbIIDH0nLuasRHc4IfpD5Uqk30PQ
         34SdGBafgY/RpiBKnrC3jnmeDGj29IAH1a+MXrLeNX35z1m8yNWsBdOXC0uWlkRkBLbl
         cCmwGFXnATN1/swqgRXpwIz1fmQAQubfax7a5jYElZTyTYi65BgA8+tT6pBaeKXKVhCn
         0IBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782652842; x=1783257642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HfvEQyPaa+6RDmpQjnB/uXWbMmtvKDAyWdpXPrmNtrU=;
        b=XJ9ZC6mMQnGyeqtlvgTAXMjQUdIMJDfw61hKMyW/3IEIvVosZae5+XpgeiBEKHIj7q
         KM74+ogyOriAJyW6Zdzc6FYuegeY6PYNWMfAOXUFwRZvtMYZOwWdgfcd7NICx6BR7BdB
         mQ0ULSYXVCw/3cDykzByfDgpw8Aoh+Phnq1NSvimpAomLko0uDb+aN+ZnjhAbg8zDhXN
         SH1A6IwlUoyIQgtAR52jEU5yhvs3AFD5YOiGGuLohnV6YOCwyZBcAxbDzWp+7QOUNakm
         8HdpFWfHl2PCdjKhpN7gi69L8579t+kM3GeDTon4+ofg3usNn8u284/X0XrOKBiivRSN
         d3pA==
X-Forwarded-Encrypted: i=1; AFNElJ9a/Tuwz2lXktx4GCnPAp8KKhT3Rr+dbMpSf46h4iLjnxxpi7v7jQdwH93EzzTN4Gng0Yr/dDJEQecj@vger.kernel.org
X-Gm-Message-State: AOJu0YwULanF2PNZiIbh8WPWkxfnJGcRuhQT4czxR7FxraBeQh4aJsMC
	r7zPD6Rn+NLvlkVOks4sZTHiK+PSbQML8d2hopAzVhS8jtnX4imaGlKGmXt+36EKgQOVHdr1mKI
	5PcWuM8UUM+rNxyDWlYGOrA6Aao4/5oVUg150tU50pQ8WQDXLJdiuzwz6x9Ok/3Jx
X-Gm-Gg: AfdE7cmfc5uARoAsD6AmJao76TnKj3nMI0Kz1OeNI7nDTJhqYHOfed5RcPddErKfHGk
	diRiqIW8gp3KVobSo9WfQ4gLEuk3cGqmnc+iRt9Z4wz9iR89+wBx1qzsYR/JsVTSPMn5Y/nY6pU
	nKdwTHDdL4kbjyN8MV3+HaoSGik4VmKlZ7xI0gVQnvmKIabwREuJIBGMBuHs5GEQnnYtgMpHd/O
	tpvLsPIdTTT+coaSW2IX7na9y7XOl280mNItdK/3ULpY4M/j2+7wkq6rFe/jtlaF1RR+qrkxOhW
	P4dALy/BPJ60zGBH6XoT82jJbQKh7tbD+2KgPtXIq+4PZaKbuttA7IpmGBOXS/fLJflwY1GrDma
	IAYq8PAoBXfd8rwi25JH3+FT5kug8fp8TyKq1CQZQ/c6YQxf4oGJCH+nOe0JXbVvrevQQqJ0kqu
	fOsmfwjitIdHre7nakDJ4G0yzL
X-Received: by 2002:a05:620a:1a20:b0:915:8055:3f91 with SMTP id af79cd13be357-9293c9e8124mr2059969485a.43.1782652841717;
        Sun, 28 Jun 2026 06:20:41 -0700 (PDT)
X-Received: by 2002:a05:620a:1a20:b0:915:8055:3f91 with SMTP id af79cd13be357-9293c9e8124mr2059965385a.43.1782652841281;
        Sun, 28 Jun 2026 06:20:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ad31a81adsm26997141fa.28.2026.06.28.06.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 06:20:40 -0700 (PDT)
Date: Sun, 28 Jun 2026 16:20:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] firmware: qcom: scm: Allow QSEECOM on Asus Zenbook
 A14 (UX3407NA)
Message-ID: <peinpqddb4t7u6bz6adn6u2yiar5zkvghayfrhidy3echs2ayp@fupvo2n5cimn>
References: <20260623-zenbook-dts-v1-0-3f80f680381d@oss.qualcomm.com>
 <20260623-zenbook-dts-v1-3-3f80f680381d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260623-zenbook-dts-v1-3-3f80f680381d@oss.qualcomm.com>
X-Proofpoint-GUID: YceS__u8zZxblLV5x19HL0SDZqFgGzoC
X-Proofpoint-ORIG-GUID: YceS__u8zZxblLV5x19HL0SDZqFgGzoC
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI4MDExNyBTYWx0ZWRfX1In9EG7UPnno
 TZ/2hwX8smORUAYjPnPZz9uRXekxqTRXXUYGe0vcK09b+JqjhQpVOinEB8zL3Z6PESHmOuFpb8l
 1sLK6tCr9k3nBJuhgZJKNGhSP0N13yU=
X-Authority-Analysis: v=2.4 cv=HYokiCE8 c=1 sm=1 tr=0 ts=6a411faa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=AirSDpfm_WjXHfc9IO8A:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI4MDExNyBTYWx0ZWRfXwh30mAJHZ5/U
 46GaVmKbBqKJeOpzMRCWEAeaRa7DOyah8rX9CriKtbNdPsW7dUdetz+NkjmGaxglblYWR1jp7I9
 rHjb9kvOd3eJ4uM5+ETwWNuRxnTVJNW3nJifmm0em/EM7tnegf9A9Muxlq0Z2tNccgLeORyTZap
 fUP++0ebsCbBnCdsu5loMJd7wE4tNNP6VGVF29n5IW4WMQvxuHUSBop3JHdWvwIpHOme7istFxo
 HoDndnVKa9agRaMaSDs7SuPD1jGE0eenrcF4SLkc2avZWKGdWCdJG8rCa2xQpmyz17ZgZY8g1V4
 BXhoHBiMbKLFa3ubkgwcd+ZVkx226hsoEMISRuqJ6WW1Li6EEVV29uYTGC6nB0PhnnW10E/k8fd
 6E6CPXX4lh+KkFZhUITrPcf6EgQTEd3DSpGSP3RK9X+/KLLhsVPhUQasxo+ZYZH8Cfu6yxcYVeA
 8zp2Bqb1E6yD8Cpi3kg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-28_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606280117
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316409-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:from_mime];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bjorn.andersson@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA2D86D3E11

On Tue, Jun 23, 2026 at 01:31:51AM +0000, Bjorn Andersson wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> In line with other Glymur-based machines, the Asus Zenbook A14
> (UX3407NA) exposes EFI variables through the "uefisecapp". Add it to the
> QSEECOM allowlist to enable this access.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

