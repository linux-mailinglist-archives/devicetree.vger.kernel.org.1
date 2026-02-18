Return-Path: <devicetree+bounces-266407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNgqGG+ulWl1TgIAu9opvQ
	(envelope-from <devicetree+bounces-266407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:19:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0783C1564ED
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD114301DE1B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8117F3126A8;
	Wed, 18 Feb 2026 12:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bMoP5oE4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VZJNVONi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4112E2BDC04
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771417191; cv=none; b=jf1lD1spw+lVQrdqhmB05yidndazxZp5rweSGffzguwlgkTezyZ8P+mqCcXmDgMChuStDK19w1D+ujMdSYW5xAX9HRxH/ipfDyMhzDbRVsuvoSpAYrqpxQlIiPGqrVDvWglSAa2RfWW6hJGeMuTGj59WAo5YzQgf2Gl1E1Hz7GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771417191; c=relaxed/simple;
	bh=rsZMi0nsGJlVJa/dYH729vbp6CbvoUdknRZK4S2Fdck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fSEUNtvhgK8qdLaFz/rHwx6nRFvXEeUkDI+FZjZ39NSCqVQRB6A444BqOAaP4BaxSW+vM1IFenyQ5zb8/aI3RmnYYNJo25KHWCxwBtUi0R16O9UxVJFIrTP+fP7NecpfSE+CeJud4a+Q7xowbCY9qKmxUBhi6XIIDRg6szod1Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bMoP5oE4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VZJNVONi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IBJrfF1029729
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:19:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EldQfKGsERa9GHmaQSG79cYN
	ixp6CtFRzfqpNjVM0ns=; b=bMoP5oE4t6e3ANDdBHuDoSej+Bc1hGHKowgnwTs7
	UmoUe2DLsLfuRGYB4wQ09xTrwM3Ldx+TApxHW2iJwQW+507Hg+z6FOa/YZlW6fU0
	ZTQzKqYLm1UO6xo0c1DQUueUm1dededEreFWXOdFacVf5hbnr7kAyDFN68+QQ5xv
	K5S5egdjwKBcynz+GrIrrFXUhigSHR30TwMYsWdCePwb0vqqepjxwsDEDerOWN1B
	VY6v0OORUguiSCGUoHZc7Fen3pr/AEL7GaODrgzMGUGjYZReE6YLRnZZzwmULaYs
	gUjk7Qk88b/wZQi5RJ+cW4pHVRq93m6QHGVF+a+36OQheg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd13rst10-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:19:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb3ad1b81aso5394855685a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 04:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771417187; x=1772021987; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EldQfKGsERa9GHmaQSG79cYNixp6CtFRzfqpNjVM0ns=;
        b=VZJNVONiqh4Bwn/43g4RDS3U9Lqv3uKMh8G0xOMSn2eWN3kPUQtt6s91S9Q3wnsG/6
         zZNGLND4uk2zCNWZCohG/7pxITnfz/XTrKEZNbFTDnivUT5Eb5Zk3xmodQ00jBTKEPvi
         K3BhyPLJVAb6qjYK2Tp1devHoqMf4leFleJ98zyfGFh/MocVlxyYpCQamj9upvA7+yvY
         KBiYcCGWr0A3JUTlThFFeePkhpa9iGAeX831kZKTq9fFny9IW7a4dN3AgntdtRVBnxHY
         wqQKQaUvFl+axd5CA3FB9gCEJC4UORR2IJ7fzIdDT99GohLcDTrLEJG6Zp1q1EvPrJ9E
         PvQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771417187; x=1772021987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EldQfKGsERa9GHmaQSG79cYNixp6CtFRzfqpNjVM0ns=;
        b=cmmoMkYwPiB70reOU2AbYJHYQihOjWtBhdeuWzOGOplTQtDcSESNQMaFeC5efr8Mo/
         4L8IwmI0zFINNTw6NW9IjERqcUZdDn+rUd7AeVCrhXWki7ULG56VfrsG6hM5oo3m4N/R
         i+sIye/1QEtV7hRirwnQnT8w+0GScympVAhoUYc3aBYDIvYDhfKncfONkakoaPk6tOLV
         EMt67kCWM05MizOY8yEJLpaGdI3iSAt71hU8J2SptZkcGYjBqCPLQIFOpyW8MejpNHeO
         e5ODbdlonV59RvJp6Lao18+lDWcfrG/DwCXQ9pql/Mfk1gM8FCv0AZGGmEuXSgpTHs+k
         xCLg==
X-Forwarded-Encrypted: i=1; AJvYcCXYB6SEmgENk+TDD5jOjQNYyBEkIYUaM1t6/pWVhP4isVz2KBuJp8bU+0DIRgHS4Jvf0ITJ5W4N5hHl@vger.kernel.org
X-Gm-Message-State: AOJu0YyPevakCaCtD8meTZYR1f/RDjrgy2GqaHwKcZNLuMK7K5g3/efI
	cn1dOOOvkKta42sIGPsPnWJJWuzZZSEsxcYuZGxng4xmxlaupJGLxi4jPVxqNoIkSCkWh2RA89F
	GxjeJ7h2R2rN4HTuMyTBt4DloRM4DaaFSH27bLYTdI8f+jxKX2mpZsyI8KE0ssT7E
X-Gm-Gg: AZuq6aI2OiaDrn3lQTAYBwZoFPtg3Jx18iXkJG/AeTzshiSFTIfnyO9oE+Ye5eDfseY
	ceKFul8hwSg9NvD80pS9Idct+ENuFwXK7CLDnEkAp3av7tCGaTysyGP5UWnWmG/w1g4IXKaTLfB
	GgH5aiS6jb0RPLVKpaHv2qThZRe/j3bzcaa1zZJYWRHfb293B/qd21DECbZbEGfnFbeQDQeI0JL
	2i1Bb2g92pY0OngEDJAuOfjQOVTaZ8LJKVNw/s/2F2X4GWvbM10GxlF7ZeqLhX2pL0nVlw/kWab
	u/H6pD1E8ec5eKbj9+v+XbEyDj/1mknTQHp6ggYVMzcjV0redbnLKWU0EMuSfhQQfS53j5Gsv0S
	4jorQl1q0Vmt41MF9ZDraq9ReyIVXhUVG0cvWP4s7XQGSAvlG6tPqzlvG9UmLaoq8i48hqsyWX+
	wi+bfvyoanR69EpyDN9z92E/GE+P6I5CyzWHg=
X-Received: by 2002:a05:620a:31a2:b0:8b2:7435:f5ef with SMTP id af79cd13be357-8cb4c014729mr1696398485a.41.1771417187474;
        Wed, 18 Feb 2026 04:19:47 -0800 (PST)
X-Received: by 2002:a05:620a:31a2:b0:8b2:7435:f5ef with SMTP id af79cd13be357-8cb4c014729mr1696393985a.41.1771417186837;
        Wed, 18 Feb 2026 04:19:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56fe99sm4594024e87.36.2026.02.18.04.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 04:19:46 -0800 (PST)
Date: Wed, 18 Feb 2026 14:19:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm845: Add missing MDSS reset
Message-ID: <zmutw7pdwzm6olugmdcmtmwhqtybx65hsk6heba2nsbpffd7op@5ngfvuhozute>
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
 <20260217-sdm845-hdk-v1-3-866f1965fef7@oss.qualcomm.com>
 <590f75c2-6418-4d39-ba7e-589acdf98786@oss.qualcomm.com>
 <e43d5bb2-bdbf-4439-933e-36591dcfd3c1@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e43d5bb2-bdbf-4439-933e-36591dcfd3c1@ixit.cz>
X-Proofpoint-GUID: SoHiTblL2jGtl-AlHGRms6h6KTqwnZdI
X-Proofpoint-ORIG-GUID: SoHiTblL2jGtl-AlHGRms6h6KTqwnZdI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDEwOCBTYWx0ZWRfX3hmLTZCQ2m2h
 cQDIL9KUohGopFuayBTveJZCyM+aurMnfvv9SAKUzkWiu/AtrJi8MKEBn82g/6symPjudVk/9o5
 vp3NOJDho14JT0YvPX8nODO9sNT0VPQp8N4pGdTUaERbBON9ved9Lib8IVYCGbyBqDVhtJ1YBNI
 fyPnQSE9n1OE1eThq+2ssbGq6D8QRVigwQgLbvYYYZkcoL5/lovgp+sXTkjJzUTq0/tHt9e5ypT
 T3ESMfMLg3PWPDwrwB8Uclcp7Tr8SjCQPN1O286cvYXKFZ7urDO5UD3thcd8RBqBCPaoD0tGcHm
 HJaZ1g5Rb2TVsgx9of4Ey77sbNjfewgw7dR3hX70ulVznddMxOgsHx0Db53hAs5BRJFt5Sg/PAU
 C2+CR7z+OdmUs+xSFXxralWFooh1okhJc08MtkY7cappKCNwrxCFdKSmHXN+UohwRGBRLx+MkUU
 FECcz7SHpdz7fbpFqwQ==
X-Authority-Analysis: v=2.4 cv=Q8rfIo2a c=1 sm=1 tr=0 ts=6995ae64 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=SXzkmgPmAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YFRkW6z6EKuh0dvUfuIA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=EWLf6cg6Bh5aS0AxDgDu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266407-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,codeberg.org:url,ixit.cz:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0783C1564ED
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 12:18:39PM +0100, David Heidelberg wrote:
> On 18/02/2026 11:30, Konrad Dybcio wrote:
> > On 2/17/26 10:20 PM, Dmitry Baryshkov wrote:
> > > From: David Heidelberg <david@ixit.cz>
> > > 
> > > If the OS does not support recovering the state left by the
> > > bootloader it needs a way to reset display hardware, so that it can
> > > start from a clean state. Add a reference to the relevant reset.
> > 
> > This is not the relevant reset
> > 
> > You want MDSS_CORE_BCR @ 0xaf0_2000
> 
> Thanks, I prepared the fixes [1].

UPD: touching that register resets the device. So, it seems, we will
have to live without the MDSS Core reset of SDM845.

> 
> I'll try to test it if it's not breaking anything for us and send as v2 of
> [2].
> 
> David
> 
> [1] https://codeberg.org/sdm845/linux/commits/branch/b4/mdss-reset
> [2] https://patchwork.kernel.org/project/linux-arm-msm/patch/20260112-mdss-reset-v1-1-af7c572204d3@ixit.cz/
> 
> > 
> > Konrad
> > 
> > > 
> > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > ---
> > 
> > 
> > >   arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > index bf2f9c04adba..75c192eddc57 100644
> > > --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> > > @@ -4550,6 +4550,7 @@ mdss: display-subsystem@ae00000 {
> > >   			reg-names = "mdss";
> > >   			power-domains = <&dispcc MDSS_GDSC>;
> > > +			resets = <&dispcc DISP_CC_MDSS_RSCC_BCR>;
> > >   			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > >   				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

