Return-Path: <devicetree+bounces-299794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOVXNvoNDGrRVAUAu9opvQ
	(envelope-from <devicetree+bounces-299794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:15:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC47578CEA
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:15:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FAD63072D53
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D2B33B6340;
	Tue, 19 May 2026 07:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTHPqkxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8343B52F5;
	Tue, 19 May 2026 07:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779174611; cv=none; b=Ajs50P1xO2o6x5hh/3Gmc5W23rAkITan0szvwY5lvI6D4xeOyJB/Tw1UDtP8ZlXUbu0aKkYbzZyjj3XrbCqsuG/8ot6LN6vwr07gAlGZcZjx3hXckz9GklXb9Y8BI5nUBLO97jxatVHHtwL0YRcUxRZUl2yw2PEq9Yv6ht2FT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779174611; c=relaxed/simple;
	bh=SNK7F3haMWlmkX9HnfIcT8fwpnfyNXlNzv5iBQCQCDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BQhJLUn6M2qoisBjVGzOyWQG81CYF9/eyvPZK3FNCvBR9i5smxfaYuJlYVV5HP90i2lVawDQXceIK+OHmgvU1akfbF2pNB4jTYgQ+UF+o4LPT0WtZQ3svC82SYilb7oyXt5Ssv4TQMYrulQZ8YD1GS4cNcHfpIkL8IXaaEOE3Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTHPqkxE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J5Jkct2482391;
	Tue, 19 May 2026 07:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PxrK8tl2uJw6EcrSPVFkDMWf0SzRs0O5rIb+htk9QGU=; b=XTHPqkxEB2V8HWrU
	qftlFwukOn7VlhNV3yLGlu+wyHYvcJRbADRs+PflKMKvoS1HJKixf6B+i2W4Kaz5
	erG3SCwDKYkS0zhLiY19nfnSCS6B1wTca82zUtlJ+kkOpbWCIsK2aGkPCqfiBVMW
	eJpiLuVBBhFqaPVWm40xEgmtkdO6/o3v7KRYy3CFlLgqrHnImNzQLy52QRqf1Zrf
	Z++jSmFKPEtCEePmr9Xyd1qcsFYSDYUw8eVBTgtqFeZjVmgQ1ZQ5zjZ2xc7P0Tum
	TX79VjaEuBQ+q2IkQN+XJHwXfUIsjCXVmfhwA62NZ4TA47qaadJt2t1S1SHADqvE
	xAc5Og==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e81rvkxdj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 May 2026 07:10:02 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 64J79xM8031487;
	Tue, 19 May 2026 07:09:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4e716dc0qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 May 2026 07:09:59 +0000 (GMT)
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 64J79wPr031479;
	Tue, 19 May 2026 07:09:58 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 64J79wmw031471
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 May 2026 07:09:58 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 10027B04; Tue, 19 May 2026 12:39:58 +0530 (+0530)
Date: Tue, 19 May 2026 12:39:58 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        jishnu.prakash@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: pmic-glink: Document
 batteryless property
Message-ID: <20260519070958.vsoyrwr4iqmhzysi@hu-kotarake-hyd.qualcomm.com>
References: <20260518-add_dc_in_support-v1-1-31fbaa329879@oss.qualcomm.com>
 <20260518135957.C942AC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518135957.C942AC2BCB7@smtp.kernel.org>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA2OCBTYWx0ZWRfX0cxZj8PXeteC
 FIZChFBTaMBH1ifpUkHi1bNdrHewkcDGPbOBsOPdMO2QUFRzZD0aTccSJZ93Seem/YbrKAvXzqt
 tV75ePhlTWQYPc8C0vaagAAd4h4fV/39I9a9RMrcTZXYsaLmhY/tUCh7Vv1uQsw77xByWQZa5Yv
 vkOw4TqqjnHYi9gnpNeodaIVMIG2s8yGFCeStxTRWoXxKO6PHDrhd26oV9YiRIDaP/yqSrFxIJA
 /QOS/MEZ8kLvLqjojLJQLQuWWH4C1MErMlgOXNkrbcITphEdNMnEzBHQLPLeKHgS07KyFv6XgZL
 5xCnPmBB8KORSiBxIAnP3859/bYzqP+gf755N7RxmFmurPI2ADNuoMC2xDe9eNlSo2e8InYKuLx
 fCZUx6yMkRwK74zQ5mcGSBr0ORYJbXihrrzSvXjYgX899miz1GbdmgDFO0r2z768eIf1cjJ3Rgj
 CtjyQSiVvYNm9XqJ8MA==
X-Proofpoint-GUID: _152B0j1IBG978f8GwCG2AMv0lDL0i7r
X-Proofpoint-ORIG-GUID: _152B0j1IBG978f8GwCG2AMv0lDL0i7r
X-Authority-Analysis: v=2.4 cv=Lf0MLDfi c=1 sm=1 tr=0 ts=6a0c0cca cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=8nJEP1OIZ-IA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=c92rfblmAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wDAayJjozdVIbgv9XzIA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190068
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299794-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 3BC47578CEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 01:59:57PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The device tree binding description references Linux-specific subsystem constants and dictates OS software behavior instead of strictly describing the hardware.
> --
> 
> commit 27eac983fdf61301b30bef6fc60e922a67eecbbd
> Author: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> 
> dt-bindings: soc: qcom: pmic-glink: Document batteryless property
> 
> This commit documents a new boolean property, qcom,batteryless, for the
> PMIC Glink battery manager node. It is intended for systems powered by 12V
> DC adapters rather than batteries.
> 
> > diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> > index ff01d2f3ee5be..5f7b90d37ea09 100644
> > --- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> > +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
> 
> [ ... ]
> 
> > @@ -72,6 +72,14 @@ properties:
> >        - const: charge_limit_end
> >        - const: charge_limit_delta
> >  
> > +  qcom,batteryless:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description:
> > +      When present, the battery manager registers the power supply as
> > +      POWER_SUPPLY_TYPE_MAINS instead of BATTERY. This is intended for
> > +      12V DC adapters, where exposing the supply as a battery would
> > +      incorrectly trigger userspace battery power-saving sequences.
> 
> This isn't a bug, but does this description reference Linux-specific
> subsystem constants rather than strictly describing the hardware?
> 
> Device tree bindings are expected to be OS-agnostic and describe physical
> hardware characteristics. The current text explicitly mentions
> POWER_SUPPLY_TYPE_MAINS, BATTERY, and userspace behavior.
> 
> Could this be rephrased to focus on the physical hardware state, such as
> indicating the system is powered by a continuous fixed DC source, instead
> of dictating OS driver behavior?
>
You're right, thanks for the feedback! Will update the description to be
OS-agnostic and focus on the physical hardware characteristics rather
than Linux subsystem internals and userspace in next patch.

regards
Rakesh
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260518-add_dc_in_support-v1-0-31fbaa329879@oss.qualcomm.com?part=1

