Return-Path: <devicetree+bounces-269205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Jj2AGmEoWkRuAQAu9opvQ
	(envelope-from <devicetree+bounces-269205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:47:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5341C1B6BD0
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:47:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF099302DB7C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8A7286413;
	Fri, 27 Feb 2026 11:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ACGQXBod";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fg/BBeIq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC3C45038
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772192870; cv=none; b=JacZ3vswYKFwJ3+HdRnMZsmVRrWINd0ck4YewpQ9AKAZT3g1A3FIWOvziiK0+xDN95RPkjA/C9E1paTyaglK7MosR31hVBNZD+Yo67ynlRaR3mEEYAdpmzzy08Y7q0Z9fjhE+p4P60U0WE1ScNKycKuKMgUuKDHlQ/b+7xrKmXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772192870; c=relaxed/simple;
	bh=Vr3kLQOkLsFS+EwADjRYVEC2XRNqb23/sanrkgmmKkY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A4dsWgz23IzMtvZBP6oh/mzzY3uB/J9l6AOTokTN/gnG+GYwbxOHUz8HWTbUvkg2rkKIdZaVcUtQ1Ophu/FrpJE2u+1NAgckv5PFQ0xPB2xEeUPtu96JN474axeXay4nrEFWjBxjJqZu8s5Xh1IY6/8PoHUSnrJFsYycKOJUJTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ACGQXBod; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fg/BBeIq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9kBM33945768
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kMnhYI/cWhNEBcvWEDoxgb1v
	XD98lOKjXsWDD1pfSa8=; b=ACGQXBodRVbC5jdhVrtz0HFoKekkGUzpbeYb0DoD
	5dsFbM61H/bjfrJfIohiaetuwGJQk5OMXLUOpISZB142U1fJ2PLXZyMFb6ZzoI89
	amcM212CWEz7h/gBwuOO8Zj6lSwQjTCrOtuu04KKHE0NZvTmk2WGEJP0Fc21eu8S
	kgjAzOomI2xuGnD1U3PiCJKw57JJ6UU51DKXTZpvYDEcivKCyzNglqPDywcukvQL
	aFnzkX4bI4em0b+8L4EE9AT5qt+QQih6AtjQzhqqak/c+KeKLpsPMHkPWV+STB4u
	ofhKJjgiIXUxLqOnSKGaITOYJsJTtTHuyCT1Z9fVIgCFZA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck8x88bfe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:47:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71655aa11so2380944985a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772192867; x=1772797667; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kMnhYI/cWhNEBcvWEDoxgb1vXD98lOKjXsWDD1pfSa8=;
        b=fg/BBeIqmHchOf2FreMlHTI6Z/O1wDpO8xrS2FcCmzoYC44+Rry+kF40Urh9KxAp21
         ZBBsT6ENBXn8BnN+AlZZsHgSrREkwteZ7nj09oLUA4u5Om+p9NCCYkDk3JqWDk418pTw
         GINRZp+4UlNnyMoEmdNww40OtA8LjX1rqYT+/fPscy4K8H/O839QDxNzQzSZuO5oavjL
         lzltlnmNfZWk134UqtSP5Do99ihygu9TPjDGfzw4ySOzTmPH8UuC8M22/N+YLBZCx2xT
         ikRMnV5pTBGcRFghGxpsayzKIzS4BcF29o0Mx3cDU4w5i53f0fZAcRsQhqYqJOvo/Ik9
         NNTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772192867; x=1772797667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kMnhYI/cWhNEBcvWEDoxgb1vXD98lOKjXsWDD1pfSa8=;
        b=wOiMbys3hwFeuBZpWFxrBrv8KB93kKXvpy4nU7H8zuNFyWnioN4qhBNX9y+hz9DLLn
         DNWuTZScRWJPrwU9YSS4R3ZCOw8auVCG8VPqFmPHb+TgSCRBQMixS+xC6Bo7n5MnyVrl
         Q1qguEQzCHde7h6Yog/9PgWpzEeFzmZ5vgO9wr8ejuVzMJrLTeKYHy26XeJT5nmY34M/
         bhpcdpx4bey8v2y7CsyRVutkhg2FwaqVaPK64aahwBhh2eNZQ9nzVMykPQcscMF/2L27
         HT63oezZ1aik1r43e/oYp/c+i5Zdmfp1u83YiJ4ZgVy69WqV80K7r8chwfDWXbPkiDVA
         tzog==
X-Forwarded-Encrypted: i=1; AJvYcCWtOmFzCbb0+PClepvbxWGjJkrFVQOIrkangdpXVRQq0HX3lqHb8z03Lo6LV+y/+k6Ehsd2FFMgokGW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9ljUdgAKeDvqZKoBcZkTtWcbhSMZSRfK+qV1sR8e28yTQ4vag
	dVf9IOF5RJF2PTl2zG1Eiu8HgADSQLlMVFvvFjAZ6wMUrw6x0OUd6bfJTX/euaYFMOd0hGSGHZ4
	XXmZyqLaPzQKfOrnW3ipo6oCNIvhaMFlkdGiAvWnfFhPclZYpo5YJwh2tDHSdfiP3
X-Gm-Gg: ATEYQzxInye6W9LpxCv2c7aS/Sks4LNASsx2g24qKkiWjP7H75JLiDuzkLenhpO9HC3
	QU71dkBupYiBwUnAW5cKAPC736zayNOoqU0NnyRyJ8AGAfxthluosMYp+nMJnE5Bks51KAKOrbX
	wpEU4RjzP12PsI93RYUFi4JX5/TGsN86pmr6Mq1at4JRcGnq0ivWvC6cufw9WRyxceFoztx5qAl
	sEmH5W9pVa0i2/oinp/RapaAyP/X66a+5wYeu+Y0MtsOVgwIrBK4BXSN96llOiUm9nW/1sEYpNC
	MOybR+VCqP+goAQVcUzCJC1xoqK1R+x+my60ExK0Zb3iONZ9c5za7V9ZD/ey/3Fb5NHeih+19cX
	R4PWmKpqDfo4LH0eAHKZ9GAbM5K0d4gAGDqu8
X-Received: by 2002:a05:620a:4509:b0:8ca:44c8:3540 with SMTP id af79cd13be357-8cbc8e78817mr291262785a.64.1772192867081;
        Fri, 27 Feb 2026 03:47:47 -0800 (PST)
X-Received: by 2002:a05:620a:4509:b0:8ca:44c8:3540 with SMTP id af79cd13be357-8cbc8e78817mr291259785a.64.1772192866551;
        Fri, 27 Feb 2026 03:47:46 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3474dsm99290655e9.1.2026.02.27.03.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 03:47:45 -0800 (PST)
Date: Fri, 27 Feb 2026 13:47:44 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <m4kxd3kww4mihirzpoef3fa74sjtaifm6y3tvemwiloq4gybi4@zjqwiqqqy6kz>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
 <xkrlyk33bddfwjxh7n4bplubbegmvetxqukcxmpbeqncosdb4v@fpznx4z6noc3>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xkrlyk33bddfwjxh7n4bplubbegmvetxqukcxmpbeqncosdb4v@fpznx4z6noc3>
X-Authority-Analysis: v=2.4 cv=WZwBqkhX c=1 sm=1 tr=0 ts=69a18464 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=O-BRc_vsYpTQEQB79n0A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEwMyBTYWx0ZWRfX8j9HcQeaPGXj
 ojYiJmZwND9AGX9gzxpwID+aS7gIJNMIfy3FwVQwnmFblCd1Ye8B5EubLKTBaGzCS7Ip7lyNqNO
 rJ8KULD9vcZhZdfEpsX2kCyqUXAtEd62DJWGioWo9LxP63m6SZB/iI4ItbaFuzpqegTPa6Ej7ci
 YEZcQsKNz3pb7r4XqlgtFWIScm8IY6glLktPi4BnmmgZrskloFBE/yw5YMFip0CZcrnQ2/J7uA0
 zkHTuFPzLOYfRz3GUxtbtAU7nGOnwEcHuKMWIbpsAa1iHciuY/1cYvjPN7cligWEYllfkzVVvu2
 w6egRexS/AD/XKuQso0XiaDY8wGzknuI+2lVLO6FSb8lVxrGCaYYeOrdtLCx0AO0udXUyi7zwjO
 P7+lCFWE6awLpbJkTwVfM0Q3nlWnY88Z1K46MdzS9daeaXWVU9erpYpmNy8no2/o079CZtY3vSp
 Z+aQ+IuWOY3Xqsv9tkw==
X-Proofpoint-ORIG-GUID: iL4oaQNbY3ikwhSlo0tMR4exQeoDXd8m
X-Proofpoint-GUID: iL4oaQNbY3ikwhSlo0tMR4exQeoDXd8m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269205-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,linaro.org:email,oss.qualcomm.com:dkim,af54000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5341C1B6BD0
X-Rspamd-Action: no action

On 26-01-13 19:48:07, Dmitry Baryshkov wrote:
> On Tue, Jan 13, 2026 at 05:00:05PM +0200, Abel Vesa wrote:
> > From: Abel Vesa <abel.vesa@linaro.org>
> > 
> > The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> > controllers. Describe them along with display controller and the eDP
> > PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> > clock controller and link up the PHYs and DP endpoints in the graph.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 423 insertions(+), 8 deletions(-)
> > 
> > +
> > +			mdss_dp0: displayport-controller@af54000 {
> > +				compatible = "qcom,glymur-dp";
> > +				reg = <0x0 0xaf54000 0x0 0x104>,
> > +				      <0x0 0xaf54200 0x0 0xc0>,
> > +				      <0x0 0xaf55000 0x0 0x770>,
> > +				      <0x0 0xaf56000 0x0 0x9c>,
> > +				      <0x0 0xaf57000 0x0 0x9c>;
> 
> A quick look at the memory map points out that you missed p2 / p3 /
> mst_2_lclk / mst_3_lclk. Is memory map incorrect?

Sorry for the late reply.

Will fix.

> 
> > +
> > +				interrupts-extended = <&mdss 12>;
> > +
> > +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
> > +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;
> > +				clock-names = "core_iface",
> > +					      "core_aux",
> > +					      "ctrl_link",
> > +					      "ctrl_link_iface",
> > +					      "stream_pixel";
> 
> This wasn't actually tested. You have 6 clocks but 5 clock-names.

Well, that's why it is RFT ... :-)

Will fix.

Thank you for reviewing!

