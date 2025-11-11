Return-Path: <devicetree+bounces-237188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C53C4DE66
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38B5F18C3FF7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:48:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD8F36B065;
	Tue, 11 Nov 2025 12:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pOiyXfTS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JyK8nfge"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F723A1D1D
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864350; cv=none; b=r0c3NLnZw+9ONCzhpV3ceYqr5A6Qn+duidjbd3aISBVepwAi+6+m1sW64/Tt0noXBxjeqXpwrc5HdWuALp7XfAugVjm0CpJoeum6xv2QEEmPftPPbjUWq2L4pizKOhLK85rgf4FolwFb7+P36nRp+V0Nn55DI22wSF03wOLBcv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864350; c=relaxed/simple;
	bh=uMxXOjJXaWW5Jx0Nm2V04BCLZlkXJIu5lhGx0yBPCag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J+Xpk35GaCwtDBHnupLihz47kG1JKnLlbkxVOhdoBOlIonqNdEnqXbN9F+wNJYs+QZL0bDQZGztSdnxyzPyJ+E4iEC96PC6WFPdd7NGZ7NI3WG4LpnSh01zljkOmR6rEvykY2qr/K+hbd6N8jDZqTuc9l6N7yuDGPTVz7g45AmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pOiyXfTS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JyK8nfge; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGBjm2048415
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:32:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=h8DUvR1H6dSsGWPpCOhKkZ2y
	qS1zJBTq22Qwh3D/TRE=; b=pOiyXfTS4T80C9spBigWSNNHyC+MAApS9mtn03Xr
	TkadIToCC9c01KmX65m9g+1i7iIJ7XfW9dGhcSZcYnyxLl3O9X3LdkHVsrh7xMU1
	mKT3SDO3Fia3ohYjL12Xi4Gb6N6AFiy61zdF6dkptdx8x/Bq3Ni+ouvfXp8ttt3S
	ifhPKNYphh84/LWarDEUabz3e6lQ/vOIS47t1nvuDDsc1h52SLA1Hr+y03uSA2sv
	p4EQLxOKZ4GirWg7KNFjp026XcYwAb4l9ZSPIDFsUnusigwuln7OMX7URPCJauIQ
	qF1rJmJQFyApPTLCvNxSpEB4+bCuPo4XBJwMvR8D8yDQwA==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ac11x0sqf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:32:28 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-3c966724910so6788055fac.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762864348; x=1763469148; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h8DUvR1H6dSsGWPpCOhKkZ2yqS1zJBTq22Qwh3D/TRE=;
        b=JyK8nfge/pG97+0Ug9gqZZNA/PyXE6zQ2+t1qnkUAvibhkfR0BZ2wJ3j6TBWrb5Urw
         reY3BNl04Njn4etkoQGbwpoWgcFKeeFk/kyhp7lIwwqBlDuoW7krnGtT2iyjE4nmHBQe
         TL1FV/YcNhF94C/1kRRVXjbwtFDWwePdiBK3dP0bN5QGaEL3WxSXqV9BROfU9PFsruI1
         AOnsJzWJVVrm0CxBQdvPQLby33VId1FflRfENhdqkI0DRVwyxDO2+Tkv3mO6+636LH96
         GfGH2Db4nuU4wWhhrMXRDXRzfHuTn4GRRc2QQiQ3If60ZXMu1Aj5wLnzmTl5NlzRR95u
         INZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762864348; x=1763469148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8DUvR1H6dSsGWPpCOhKkZ2yqS1zJBTq22Qwh3D/TRE=;
        b=ncDGOAEJncXX8iNI4ugDbUG4aep7Jlg6JIZPq3oL0fmWYiIAIXRSDZ4/4lfsF8PE6s
         6HCOAqj/AURd4lJpSWM3vy3KWVb9pI6a2c0tWlNRX7C2aV/aImiZhjk140+w3OjK0UcF
         YrgvqunVmh4lDcU3eAoJ8tCWjQ0PrrYFtcQwQ50SJdHnqlYUnZeHZIxArKamHdIE5kpa
         BafkLNoGrzE02R6GaJOrJuyI6Sr1lJxNGogfVG7k54NGsmBQP+ZxINrBQxCqjEGmLRB2
         QSGCP+ekpSRQoUzkAiLFmw/fVwWXO/eNODUdT0AOV7ARrqfl/LnTBz0GR/1/DgIAydI5
         znmg==
X-Forwarded-Encrypted: i=1; AJvYcCXkKKFFWlaCnnRkvLdywQj/z21hCrm1nFAD9tdfO2NMlCysZP3dvexIGTpnAyEnBCsl/mVencR90tpv@vger.kernel.org
X-Gm-Message-State: AOJu0YzIsWlAGh/2l/LN1nL58GdYb4orXqtfBBNaInrJy36P7X5FzW3v
	meIye5k1ZNWeNqrTsUYsoSEKknAXqB5Hnz6eQz+dFe5cHbTd6/uVzS3GIPMqvUghsomiPNEtqD/
	wE4e+kteTUZ/rArtzgSrkK59lR3ZVN0YEvM4CAZ62uAoa6quTGva7kq4gCwohDaEr
X-Gm-Gg: ASbGncvAMyl6tO5P/aU78g9Z5NC+i1oUlGDOj3QW5pubqKEFNwFutedXyib/3zvgbxp
	PXl6hwlVKRxW/XPnfnC8Md/7YVupAo1WDByVH3gAt4ncxBr1sRakixxn31kK4NPYVA9kRs5+cjx
	r9xbGvI/uA8zo5o0Tl55QvZ5YUa6frVaxat6URqA6MXItpmmUgxsZ/P1Lp4w5VqCfQ+NJbJEAkK
	HesPTTmNT6vmsljJuV4S7RrNdJkvYO4I9C+g0Rwko1vGrmcltvd4PfIDSVwPxM9BAk0Fbz7Z33c
	8s2gz8/dLS2T8nNOGKHk3wkF7sNGPk1DvAEgez4V2DXl98LrC3wpIQjppC/stWhKsXYqYATjb9L
	xn5j2jl5oDee36woUyQouIj+/zOAWX9k6siRecHY60zZIvTwGt4EQOqiNXxzan7mulSddBRkj1V
	mHmtC78b1AvllV
X-Received: by 2002:ac8:5808:0:b0:4ed:b06b:d6a5 with SMTP id d75a77b69052e-4edb06be774mr109131351cf.4.1762863740988;
        Tue, 11 Nov 2025 04:22:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqlE6SPjHtKXlVAFeEPtooYjb0zreq0QgU5VB8K6LLCKt/01Nkgp4mrx5FBdtNHHl5wrpKww==
X-Received: by 2002:ac8:5808:0:b0:4ed:b06b:d6a5 with SMTP id d75a77b69052e-4edb06be774mr109130881cf.4.1762863740423;
        Tue, 11 Nov 2025 04:22:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a019f8fsm4832974e87.33.2025.11.11.04.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:22:19 -0800 (PST)
Date: Tue, 11 Nov 2025 14:22:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        hrishabh.rajput@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 1/2] firmware: qcom: scm: Register gunyah watchdog
 device
Message-ID: <zbwcg5pkdspkcnvaitac6y5iko346qyuzuipqhkoedcaqm2dpa@zmszuwhm5q7z>
References: <20251107-gunyah_watchdog-v5-0-4c6e3fb6eb17@oss.qualcomm.com>
 <20251107-gunyah_watchdog-v5-1-4c6e3fb6eb17@oss.qualcomm.com>
 <hbxtbaoavlsw7pbmg3cfkbyx4nacjfiikckhqgpvlggbh6hu5b@jyporqecfzni>
 <263d1390-eff5-4846-b2c2-31f96fc3248e@quicinc.com>
 <3794bb0e-5e2c-4d5e-8d81-d302fa36677c@quicinc.com>
 <56aqammkwte3tcdzni2unufjp4t4yaqazzdkigrwqsxp3ghcqe@ppe2pjwg3hrl>
 <60583236-692f-4605-9f56-f7dadb46558d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60583236-692f-4605-9f56-f7dadb46558d@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDEwMCBTYWx0ZWRfX1uF15W3N8mCN
 NRS7Dm5Y7YY1HwCstvQWI+mL21o+vUae5Ux4i6ot4oAiVbvULPyiDgmrlk2H5pFm9zH8AJISGPv
 BFncjZxFGDwSuhYKtqn4iVyHtgmpSIsMu997stAWnzmUjrpodiq0x2+pOt2/3N7+zn4LRDfTEAf
 /U9kE/i5FVsE6tqwduajAdPnDu2+cNVnZu0VuKOLMpOQYDaGy4Qzpu4J3/eJMV5IB/csO0s84OM
 CxZXFM65nE5WbKcJRn+5N0pyT2kCFgrFXWLcpMKfGFHa1KS5Xh29jOxD+/Ehi4xG1xccv4EpFPc
 hkbd8yoP9PTXSjvKLWAYlOW48EpgZVh3NgWvQV9YJRiFU5gsAEAHlxh3X21RtRMwPqE4ovSaD+j
 GMROLYFT8DCg5pzP9ag1k2NG4h6Izg==
X-Proofpoint-ORIG-GUID: Bz8vrfqYfczvjqWTQ-K4ByPT5icOau1L
X-Authority-Analysis: v=2.4 cv=L94QguT8 c=1 sm=1 tr=0 ts=69132cdc cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=mhC3O9B1GX6jFu3mhFkA:9 a=CjuIK1q_8ugA:10 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-GUID: Bz8vrfqYfczvjqWTQ-K4ByPT5icOau1L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110100

On Tue, Nov 11, 2025 at 11:41:51AM +0100, Krzysztof Kozlowski wrote:
> On 11/11/2025 11:34, Dmitry Baryshkov wrote:
> > On Tue, Nov 11, 2025 at 10:51:43AM +0530, Pavan Kondeti wrote:
> >> On Mon, Nov 10, 2025 at 09:43:53AM +0530, Pavan Kondeti wrote:
> >>> On Sat, Nov 08, 2025 at 07:26:46PM +0200, Dmitry Baryshkov wrote:
> >>>>> +static void qcom_scm_gunyah_wdt_free(void *data)
> >>>>> +{
> >>>>> +	struct platform_device *gunyah_wdt_dev = data;
> >>>>> +
> >>>>> +	platform_device_unregister(gunyah_wdt_dev);
> >>>>> +}
> >>>>> +
> >>>>> +static void qcom_scm_gunyah_wdt_init(struct qcom_scm *scm)
> >>>>> +{
> >>>>> +	struct platform_device *gunyah_wdt_dev;
> >>>>> +	struct device_node *np;
> >>>>> +	bool of_wdt_available;
> >>>>> +	int i;
> >>>>> +	uuid_t gunyah_uuid = UUID_INIT(0xc1d58fcd, 0xa453, 0x5fdb, 0x92, 0x65,
> >>>>
> >>>> static const?
> >>>>
> >>>>> +				       0xce, 0x36, 0x67, 0x3d, 0x5f, 0x14);
> >>>>> +	static const char * const of_wdt_compatible[] = {
> >>>>> +		"qcom,kpss-wdt",
> >>>>> +		"arm,sbsa-gwdt",
> >>>>> +	};
> >>>>> +
> >>>>> +	/* Bail out if we are not running under Gunyah */
> >>>>> +	if (!arm_smccc_hypervisor_has_uuid(&gunyah_uuid))
> >>>>> +		return;
> >>>>
> >>>> This rquires 'select HAVE_ARM_SMCCC_DISCOVERY'
> >>>>
> >>>
> >>> Probably `depends on HAVE_ARM_SMCCC_DISCOVERY` is correct here.
> >>>
> >>
> >> Dmitry / Bjorn,
> >>
> >> We are debating on this internally on how to resolve this dependency
> >>
> >> - QCOM_SCM depends on HAVE_ARM_SMCCC_DISCOVERY which means restricting
> >>   QCOM_SCM compilation than what it is today.
> >>
> >> - Adding #ifdefry around arm_smccc_hypervisor_has_uuid usage in qcom scm driver 
> >>
> >> - Adding stub for `arm_smccc_hypervisor_has_uuid()` which is not done
> >>   for any of the functions defined in drivers/firmware/smccc/smccc.c
> >>
> >> We are trending towards the first option above. Please let us know if
> >> you think otherwise.
> > 
> > The same as before: 'select HAVE_ARM_SMCCC_DISCOVERY'.
> 
> HAVE_ARM_SMCCC_DISCOVERY has a dependency which is not always selected
> (e.g. ARM32), thus selecting it might lead to warnings of unmet
> dependencies.

Then `if (!IS_ENABLED(CONFIG_HAVE_ARM_SMCCC_DISCOVERY))` might be a good
option here (and depend on GICv3 selecting it).

> Whichever they choose here, they need to be sure to
> actually compile test it, because existing patch lacks that and reports
> are proving lack of building.
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

