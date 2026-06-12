Return-Path: <devicetree+bounces-310715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PCqbCjGyK2rQBwQAu9opvQ
	(envelope-from <devicetree+bounces-310715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:16:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C1267724E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:16:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=p75pE7jF;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=bqKB1S2F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310715-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310715-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3995A311D9FA
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B653D6CD7;
	Fri, 12 Jun 2026 07:14:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5C53DC4AF
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:14:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781248443; cv=none; b=CzhbYqTos+I6AOWj4SbAeyuuFg/KvRekMMtyqy7+lMFWu1sAToP546xk+LoXoBlazCyNRLXw1bFPAhOCQ6UcxhN3L9YQ8teYmSbQZsrMvj3YhlvkPOX02z09RYYstt+n500GJ/FNysNlE26mqAjDG8r5qckXJbj70u+BsCG13ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781248443; c=relaxed/simple;
	bh=2B3SJbQnXClKQApByVSCMZpv8MYsin8uu1bf5ddKuZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p1QMQBmfh1TP7PxAKzVptrtJPov5v6H5/R9/CFNnojHgFUmVnuoxL/UtzL+7SkMhBfR4Q2pK1Vg+myZrZ6edBRYPPAWy3iARzf3cT5kOmaYth8cB074ncoyvbqYikJXCZ9vQJOWFipAJ5sVZHltctfnLn8tFDe4o7niOlhz7mZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p75pE7jF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bqKB1S2F; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C39W5q2502700
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:13:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GOzIs+N6R8tJwR5cBJ70QHca
	fwj9Yt2lfriysx6gKgc=; b=p75pE7jFSli9mi432IjOZK+1LKwTQiqGSEgRZTws
	oDsT69Xj4eprdprGA4GocJGhgunFsQb1HFPvmcrKDNy2BenRmKs2/9ol99xrBHUI
	P6MCn+/FDxaHgwcPx3r0Hxoy9Rv1aB7WlKAl9c6xdJRPnaC6+QnhJjcaoBsRjEpp
	96/V0+vKHb/MNs0wJf8F0SvEN/1Kf5uC7Sp3+u3FQHdczpbXCnxgKSm67YrFNJNk
	RUawcwdVwZlfwtJSTkmJF2yeksi9iH7hDBwRDI8ne9ynSIp/S2H+Me2NCX49M53z
	ZF0DSJnOfBqkQIw+jlQXerk3KkrYhtTldGsfztjoZZvmIg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er0xd2m9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:13:59 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6cfe512e871so320854137.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 00:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781248438; x=1781853238; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GOzIs+N6R8tJwR5cBJ70QHcafwj9Yt2lfriysx6gKgc=;
        b=bqKB1S2FJ6Ryhpu7aOO+VrHYFlfaTaAK6iofSS8ipVOGwfzN3A6g4P3nQcJ8QEUEx8
         w1e2ptYQSQ/I+eekGTLuPt2E5WXSJqaG04PWXS10YvGmo79jVMST6KPImVxtUnyGHbfM
         pGZlf45LqJP3G1SK6XgERUy6mpukVAyHN1tZxGIEdEB54KViErBkqvJbjQA14HfrPUPE
         82LMVy0vhAzmDSQX6REb/l2ezD9SjrLZ4J9GrK6ig4tDPH4am44qXL+JaMBL4mLN86Lm
         oz0z8EKbMEyo7tByVNQLupCww1CqfSLBkE05wvBRi4OarnsAIXV29K4dEEazbS9uRrXE
         wF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781248438; x=1781853238;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GOzIs+N6R8tJwR5cBJ70QHcafwj9Yt2lfriysx6gKgc=;
        b=WCMyXbRM6YpuMi39GV/f6VPsQ5CZJdbXRj9JwjvHteUON4Kn7En+2G9dGUJpwGYhuz
         bBgD2ObJr2//qHtmmiaK/F6Cb5VFCGCrpNlN+FjSAiAFcxNYpSalX7CjG6jcIeSbG8lf
         PWHaBmo24kV+4/ZborDPaEZ6GnvVNnoLhdjxrU0h3/18TN7VsFdkTpbOYcL+kfMLOUbP
         1gM+pH5Z2nRS18bkokwCcaJu1dlNiyx1/93CvceT5Cs9GcGT3oOouvqHlhdSrakX1ELo
         ZcCNubZJbPc3Rf9maPnqj45233MSoHCB6WODUiQ5QM2hIw3T4dsjCIBGFv2wSbehZNd4
         Ogwg==
X-Forwarded-Encrypted: i=1; AFNElJ8OcRo7oQoXsNAKxc8I/SyEC9YtY+RcJ5Lw4OKg9J0KCgcdcTRYK5JXKDwuc8o437lQ3MwVkZzvFCs7@vger.kernel.org
X-Gm-Message-State: AOJu0YzbGsxCwv4c9f+0xgZK9MsK+71OHohgjKZdB4iTmY5ta7t7iqXU
	gpxShVBsIbopeDufYH+O22wm/Ap3rXNTyHqEFbGofv03djSjIPSn9ZL3Gov7YEdQj3OfwxIVySf
	M88HZCt+HcGXuk5Td1rZOg83CBR3L2RZ/aANINR2Vf7ENeGlBzl/r9iiCGoJLLPJVcC9K2VPm
X-Gm-Gg: Acq92OE0BLtzjYYJFIcAkn4YA/uLir8+gfCfM8Xft+/bLUGIqL54u5PSmQsrde3LOTP
	UYocHUbvzpYP7y/EqDQHIpenHsyAEZw9avNBrxDpcf5E9B0SDXDc63DCvpTtWUDC/mCmMCZVatn
	9+EhBL1WgfWWJ+RHnHD26IilvMuP3bANstkhXHZLr5K4xLSMtOkfiAcgtVt622fDPKBXb2QoVlX
	LdP1tA+4tcWrtO95Qxz3o0MqjyUfzzRzodtjY0bV0ZFw3dvDWLHDoLapkbAK0D/17jaWnipmz4R
	fHxzRkLDPtCWJD8m6wdXxBA0grCxGEWaPbmQkIClFaAq260nysIJY1FTEz439r13hp18tLAocOC
	8ClduHsFIBEAH9ceUZrJsC8QNHmmyM/YdexVXYZMyB6ogZCGAMliav8WI8ho00xrvx9/4sTbWBP
	UPT6r5YdsqPfn2dpukyLevJVfWWyCzOE+XbdQ=
X-Received: by 2002:a05:6102:5f06:b0:607:5cd7:d7c0 with SMTP id ada2fe7eead31-71e88c7de78mr557137137.19.1781248438326;
        Fri, 12 Jun 2026 00:13:58 -0700 (PDT)
X-Received: by 2002:a05:6102:5f06:b0:607:5cd7:d7c0 with SMTP id ada2fe7eead31-71e88c7de78mr557125137.19.1781248437927;
        Fri, 12 Jun 2026 00:13:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929c2a00dsm3756161fa.7.2026.06.12.00.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:13:56 -0700 (PDT)
Date: Fri, 12 Jun 2026 10:13:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe
 phys
Message-ID: <ka5a2ku45rc6nmvju5scku34xc7lmpf423qxhs6anpdtik7aw6@eycvpfcrbnvc>
References: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
 <20260610-pcie-phy-v3-2-334011b378d6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610-pcie-phy-v3-2-334011b378d6@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: edMS5QDZIGHK0cX-PqrVENrNP47whP7T
X-Proofpoint-GUID: edMS5QDZIGHK0cX-PqrVENrNP47whP7T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2NCBTYWx0ZWRfX0K23Fzcqo8EF
 SoGbvFBAqQ+rb0ExNbiqSfPGztRip/rRRO0TOoEcD8NSBYZF2fg7jz+Xhfsyq+L6gVnwzuPNBV/
 ikjyUnc+O4gD45+ccR8xZia/uoobZIC3ShbVCFDY3G3tW6slW477jq+5raKZ4l0fuH6eI8zZTin
 eEYyUD8IL/8LxLd4Rd20yXIhF3KP91l9zx6Knlt9BgllKU7uonfq6kw9nPgYn6f6y7a8yKihyrF
 78dp4flO/DkRNVHydSw8g3P44gLZGtLUgWZK9jGH+tjSKZPejHxtNpZCCLXZWJiIkQ+UcMX0TvB
 QZRcuX2b9pCACnL6aumEz35+ICUXY526mksrCN7xuLpQBU1OnmvxOF3lRjLnvQbHv1ZaGJ5iezn
 7rQE1vOJo4dD8HgkpPRO7fmiKmF5KOsCM5R4jOKEkPTs5imU4IPTRTw9WhB+qsUGfZp7Jb90GML
 dkj3/Y29vTDLWPCwYig==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2NCBTYWx0ZWRfXy6K+ZmcYFJ6e
 LUafFrjp4L9+Q3HBJ44RdKAU1hWKxxiyKTfe7gCty8b1I3QwIJCqh2lNlPTsdLY0YuiVZucotgU
 HB7f2zCtCY6XhVq/mQHf/0nkOjRbZL4=
X-Authority-Analysis: v=2.4 cv=O6UJeh9W c=1 sm=1 tr=0 ts=6a2bb1b7 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=Sd8SiyjhHEPRc7XwSKMA:9 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120064
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310715-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:varadarajan.narayanan@oss.qualcomm.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3C1267724E

On Wed, Jun 10, 2026 at 04:46:09PM +0530, Varadarajan Narayanan wrote:
> Add support for a PCIe phys found on Qualcomm ipq5210 platform.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 +++++++++++++++++++++++++++++++
>  1 file changed, 129 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

