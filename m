Return-Path: <devicetree+bounces-276703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LhnNZBZuWnYAgIAu9opvQ
	(envelope-from <devicetree+bounces-276703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:39:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8E72AB085
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBC7C3067753
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6197629ACC0;
	Tue, 17 Mar 2026 13:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hXLS83YA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kvhXY8YJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160C2989BC
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773754749; cv=none; b=nXfm4L/XHTy2v6p6OLDBvF666tNS4L05CGR/kd/HaII4Tp3V3dFEvV/xXfAk1QqYW495Eys3fa3llclI+HH3QBrKguiA8aUSsb4PgzELI4FvwuiPeH8+e0hOEggfcZCGM9/mKk2n2LNHBxPcsBF7+WSroTgl+KT2VVBcim5VTqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773754749; c=relaxed/simple;
	bh=hme1pdUdnARARBjqIPJ0lEuamRhoIyqKzcDow8o81FU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qYhXzjW2EFoZVKBugBMvZUMdEMjNH9+AbMp5nXgls7MwQPvtZlX9xORIQK0eLb8fKTYffuEcJiS9zVFTwuf4VSkrNrKa+W/l3C5vURZJbvRaMZBi23l6zRv+t4Aky8IAtT3V6awDbk2d87/y5rIuEPAo61TDFQyszoRRP5AkSUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hXLS83YA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kvhXY8YJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7JOGe3124391
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tiqn1hYEybqvSAgAW09DBPRL
	5xUcQVjxLZzZ0CfFxRc=; b=hXLS83YAUMcVKHwA4zQOYsjFGneYXsQZhwwwnQv7
	fviVY1ymhDxOAK1GVkuGg8ty9NbwGP2n3Nn7VFtCaOA1S7UBso1+ie7S3EC9Zbjf
	BUYCqiEgzNQguxSj3pntGcwkIe4knjPfbXg8TfW7wK5m4cfIoplDvPk4U11neK+8
	jtE54WBVJ9E7sKr0ToDJh7k518qbxDs6V/tiCu9Sfk4aTCclOciOtGmnMtdWxqOu
	mvvZfIuiAQEF/nC0apTbrtiePZaHB50k93pjs+7jUpe0l8NKDuYlISy7HpjEmRD5
	oRVB6SDm/+z4Zi1mFLqY6upyHeVQb/Zo3y6Ds6nEfEAbLw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2fbsbhn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:07 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b04959ec10so17914775ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773754746; x=1774359546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tiqn1hYEybqvSAgAW09DBPRL5xUcQVjxLZzZ0CfFxRc=;
        b=kvhXY8YJJ9+bhVoWsA2fPxPK4IOiirG5r3kmsdq693a5WCsUDqywLLiHZ+NSaFc6vp
         bpzqqS2ShzFgyq8W2JqL+weHS0YlWl12wP7VBMrUtvLgXKzOZjtBrhLOk6m0Y70HBsva
         KwBXwG+O/rXWzwMhdXQYHC7YxL8R4NSSDdxFKbSYKkGJXndedoU4MGsq5VoP/fNt931e
         iwelr45VTN1L+m6FbAn0rw8aBkDPirauNfd4HWE9EcPpWsb3t8Yj+xhjo8wLrpR0OlS+
         F5MVqy8H2QR1N3KYIbt9Ni9FhmdPHUHqOWamopoHTj1Dq0IJ7Ah1PngnncHypXaxmq2t
         MPFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773754746; x=1774359546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiqn1hYEybqvSAgAW09DBPRL5xUcQVjxLZzZ0CfFxRc=;
        b=kTnVyxgYJVp+eGr0Cl+ZF9w3D9D0umY2bAWPKeluFtiE5lFWpDz0j1FUC0iGrEPcsA
         dhyp1m8B0dqN5NGIpmvK264VzK9kJt2KqBspN77Rowsb/LogViem4b9ZA9YifqV864xV
         td4RGiknlGQGFd7ay726a6B4vM+NflqwX3K3lQW9bFmt1/iSuUap47yneNGwvFGNlcsu
         SR9eoqgv6fPDCHd9oBgUCACZdtNhI6tvjogc3LvI0Lm11SHKWkpKO3RLeXoKHw1cSNCq
         6N8zO3IY+ZvSHJJGIdjA7zaAxjI/xJrlD+kbJVqpClmZFrVD554RS38fBzW4/rmeJxJ5
         IIDg==
X-Forwarded-Encrypted: i=1; AJvYcCXkzhMBHNOz/kLUM5cHx6UX1XgDgGzCoxlWNGEgXPFlLqq/Fak8Idq4Z1o9bvp4iCYAWFy7vvKA4cHh@vger.kernel.org
X-Gm-Message-State: AOJu0YzclEdHtwSc6r46pQY+vMBAsEvjbSk9dvP1TYcjsXeT6FoaNMHv
	sJbZP9DH0IzwZJ1q7gv8UAq62Y9+1s7UmIaSTRZmcLl6ec1EXyjXYobNW2OQjTvsKyO8cyCbpfH
	U9h3cizWGmwwGdhpxPpoIrgc2DZg0S97v4rkrkeiL08nBed6GvmQE4nH9XbnkXlF9xHlZccec
X-Gm-Gg: ATEYQzwOhlVuQi3xSCdJwLU1N+D4uWkbqf2DVPco/6zXszYnnmQjfdJqnQGpqR2BYrP
	zQTMwdtY/RJtcp8BSmzKTp0zQ7cseDlyXa6Q4mg46uWaww5jQaYiCrcQrswVEsXgsaRK13yathR
	mjFSeNYxCoVsE7cSzOJos+/dG14trPk3Qn2DISXpnxE10wQtlSJzOGyU97WHKrCu1e+hZfIRsTc
	GAsks+xM78oC1bEBO0B53hT76sHMoRDGfO3zb/8qFl611ITcopEuQPNCI7lGQqX6gJKvxMrDRq7
	zYQGUrgkefLUPux5oRGEDznmsrESWF5InS1j/WFc8pFpLBaK+F114f0A7v1gZOIyKtPUIoW512X
	/7InorMABUumQ1zN9R3QN9rHS5DcDGycdWJywvU4v/WEWNdXy4hIR2WFr2jOD4PRYwFFalY6IuN
	xU6itaqf49cQSJYSk6bVOCUdJ0HLmB1Rb3G+so9XXlMA==
X-Received: by 2002:a17:902:ce91:b0:2b0:6365:219f with SMTP id d9443c01a7336-2b06365265cmr23483985ad.6.1773754746034;
        Tue, 17 Mar 2026 06:39:06 -0700 (PDT)
X-Received: by 2002:a17:902:ce91:b0:2b0:6365:219f with SMTP id d9443c01a7336-2b06365265cmr23483655ad.6.1773754745549;
        Tue, 17 Mar 2026 06:39:05 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ed6cfsm182174245ad.59.2026.03.17.06.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 06:39:04 -0700 (PDT)
Date: Tue, 17 Mar 2026 19:08:59 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Message-ID: <ablZcxUIJDrrs9Vb@hu-vishsain-blr.qualcomm.com>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-2-8195fa931ff1@oss.qualcomm.com>
 <56829589-1c56-4c96-a9de-505058467867@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56829589-1c56-4c96-a9de-505058467867@kernel.org>
X-Proofpoint-ORIG-GUID: ojzRAm7cXSJm9aVrjEQ5bT-cCG1OQE8n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyMCBTYWx0ZWRfX3hly3v7zFl/C
 uPeoZSuuku7coHoZvd+j0QAmBw0p0eMdXD97MVmwXJfAXWUT5gFedS8vr9zvsdhLm9hfLGaqjEd
 ln/V5xEgV+7BOGXbJazLCTn5WlJ7HqsZrZFPIZZSHdZkWHAFKjRj7Rg7k8Ad83lLuTdQLwHkt1f
 IbsGsD1e7EmEhK5IV94hCruodNFbMj38IWNku7zfpz/sJ/qiwg5DHIqw6cv18GOEGSWKMpyqJtG
 +ZIJU9eeP4sqUNEtAQ2blJdL56ArOqnm8BIKzVR8VeXnjxwMbyr7lutNaXRtnzksR5hA/saj31s
 AuXDm7RynQA2kGx420Zhk/QQNfbXVoCHZIBEWwsXaFbktZVPyxbSmhrqZ7jeJKgiwyYPPQqCurY
 /id583NiTZORlwzycbZDm2F9srHj6CPweO5Hhe01QnkA6B629NUU44K4aZsSfKF8q1mesP/oUQy
 kW3fPHapfd1SzCS1Iyw==
X-Authority-Analysis: v=2.4 cv=fa6gCkQF c=1 sm=1 tr=0 ts=69b9597b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=To2fBN3JI1N_F502tiIA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: ojzRAm7cXSJm9aVrjEQ5bT-cCG1OQE8n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170120
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-vishsain-blr.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276703-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3B8E72AB085
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 12:44:05PM +0100, Krzysztof Kozlowski wrote:
> On 17/03/2026 07:03, Vishnu Saini wrote:
> > Lontium LT8713sx DP bridge hub can be found on a Qualcomm
> > Monaco EVK board for converting 1 DP to 3 DP outputs.
> > 
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 1d967a81b82a..c8f89c87672b 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -1002,6 +1002,7 @@ CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
> >  CONFIG_DRM_DISPLAY_CONNECTOR=m
> >  CONFIG_DRM_FSL_LDB=m
> >  CONFIG_DRM_ITE_IT6263=m
> > +CONFIG_DRM_LONTIUM_LT8713SX=m
> 
> Wrongly placed, at least at next I am checking now. Look at Kconfig or
> just run savedefconfig.

Cross checked this few rescent changes were added configs in same file.
verified added config is present in generated .config file and lt8713sx driver is compiled with it.
Let me know if need to add this config is another file or at different place.
 
> >  CONFIG_DRM_LONTIUM_LT8912B=m
> >  CONFIG_DRM_LONTIUM_LT9611=m
> >  CONFIG_DRM_LONTIUM_LT9611UXC=m
> 
> Best regards,
> Krzysztof

