Return-Path: <devicetree+bounces-300497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gD3LNaeKDWpKywUAu9opvQ
	(envelope-from <devicetree+bounces-300497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:19:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8774858BA05
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 71EED304E967
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA8578F2F;
	Wed, 20 May 2026 10:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cNDLLpc6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71B237267A;
	Wed, 20 May 2026 10:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779272328; cv=none; b=iiTZDIPkhn4ZCTLG36YnvRN3raN8skulAdbjJGYFkgfEwUkKK2YZqlTiD2PgD21M7f/bliTXV0hWdPq7fPF9ADLVbIiU8d3NnAXlR8Rqvz21jODdPAq+Q4CEe3cs9nhH5Rk1fGFOtPSCH91yQOSdhT5HlKZDVgsD4QTkZYalSIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779272328; c=relaxed/simple;
	bh=N3wj2eFWvwFJ7H3b7NyNKLJ+MVPAgJq3NlFvvViQ1p8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/9CIh1uR5E3PZHk/JKqajj5cLhohGoNyWvIpVYUSFT+cM0TK/kuk+kH639nZ4aoDDSUIdmlPkh1y89Jmgmk7c+9qzzYRo5uLZof5uezET0OSTcySWHtafBP9t6f1uG62prL5NaRjTgn/Q3QhRO3hqW+vTdmo99qzPEbKlA1bUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cNDLLpc6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64K7WnXR1953980;
	Wed, 20 May 2026 10:18:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MRwPNNERF4787miFgmIa13et59huZ8GxHsLMeQw5pC0=; b=cNDLLpc60fJYvDyj
	yTUrQkvCRTfFCZsuWmPtMn1iJwO0+Vigq1/xBswIC4k7n7PBtSVPnlTevQtEfyLx
	XMDGXX/qLkN22EkXsMyb5tEN36hazwZUuyX0YFKrUwkCFjPo0hcM36B021l7M409
	nR/fhmS/ZAvqOzbDNfnRAUuoC6vFlIlFo/LYA1CA1MC0P6CkGhZhVJcF98cmfebG
	9b3N0NR0tXhej+MmXk5+55mBPRvUEdFKHhB2jxL/o4LnPtRum25YiByReiSTjnx3
	bPL5Bs3tHs/x/Seh04lU0hKC9rGoRwQeYRQV+FOzWOUn25uZBRFIyOpXg6PLsdLg
	QqOhmw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8t3xv915-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 May 2026 10:18:36 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 64KAIW0i014893;
	Wed, 20 May 2026 10:18:32 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4e712fy3np-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 May 2026 10:18:32 +0000 (GMT)
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 64KAIWt2014887;
	Wed, 20 May 2026 10:18:32 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 64KAIW6Z014885
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 May 2026 10:18:32 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 69E93B2C; Wed, 20 May 2026 15:48:31 +0530 (+0530)
Date: Wed, 20 May 2026 15:48:31 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        jishnu.prakash@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com
Subject: Re: [PATCH 1/2] dt-bindings: regulator: qcom,usb-vbus-regulator: add
 qcom,pm4125-vbus-reg
Message-ID: <20260520101831.6lxc3cutuf2cfi2y@hu-kotarake-hyd.qualcomm.com>
References: <20260520-add_pm4125-vbus-reg-v1-1-f6d15d7dbbe8@oss.qualcomm.com>
 <20260520092017.DCBEE1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260520092017.DCBEE1F00893@smtp.kernel.org>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Authority-Analysis: v=2.4 cv=WaY8rUhX c=1 sm=1 tr=0 ts=6a0d8a7d cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=8nJEP1OIZ-IA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=c92rfblmAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=a_Uv7Olcw8TIjJ-zfmoA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-GUID: -Pn6xUsefE59uu_a6OOaQz16quRw0rU9
X-Proofpoint-ORIG-GUID: -Pn6xUsefE59uu_a6OOaQz16quRw0rU9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDA5OCBTYWx0ZWRfXyixGcislSs93
 lqaAJMrMqSitzMVnxmV+SWCKMBLtAyIBvzIRWiIivBKmX4Bb8STisPKL3XoUkhsYOz0h6dxAJlv
 BT4A6qZEoYPE1IbFwH7tL6m+DOeQIbUy2Lw88dSQ1Kw+iqjTcUA8NekSTUNMq2TTrfCjCsJzOD0
 1APDwWkhjItYTGn+i/Vsd6baX6iovNGGTmIJhrHg90wdBRh40ezaIEGQO5m0hpc+gZ9OztUOq+c
 AVEI6C8Q0/I9BpCAzaaBP6cQSTZbQDqWptRbV+e9inI3wXPB7voLR4VHKMK1jwyIjr6wDra0MwT
 b1Cv8znOy3ilELof6qGQeo7+YWZN1SzOTMnM3IYEpUon9Q6cSTEfSR2GQnsJxAqJEuorK1afZOt
 zctXcH0umlqygEABGHECFWTTUeeSvgIJIwVo+6Jw4sEVlJUw0Iq3uvAGgeePSUdANHgjNr35vcE
 DE+BUJUVfots9j/9Mgg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605200098
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300497-lists,devicetree=lfdr.de];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,0.0.19.136:email];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.4.76:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8774858BA05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 09:20:17AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [High] Removing the fallback compatible string for `qcom,pm4125-vbus-reg` breaks backwards compatibility and schema validation for existing device trees.
> - [Low] Unit-address mismatch in the newly added pm4125 device tree example causes a dtc compiler warning/error.
> --
> 
> commit d88778938ce0889e7c6904b04eca901125a815cb
> Author: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> 
> dt-bindings: regulator: qcom,usb-vbus-regulator: add qcom,pm4125-vbus-reg
> 
> This commit moves qcom,pm4125-vbus-reg from the fallback items list into
> a standalone enum since it has a different register layout. It also updates
> the required properties for this variant to use microvolt instead of
> microamp, and adds a new example.
> 
> > diff --git a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> > --- a/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> > +++ b/Documentation/devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml
> 
> [ ... ]
> 
> >  properties:
> >    compatible:
> >      oneOf:
> >        - enum:
> >            - qcom,pm8150b-vbus-reg
> > +          - qcom,pm4125-vbus-reg
> >        - items:
> >            - enum:
> > -              - qcom,pm4125-vbus-reg
> >                - qcom,pm6150-vbus-reg
> >                - qcom,pm7250b-vbus-reg
> 
> [Severity: High]
> Does removing this fallback compatible string break backwards compatibility
> for existing device trees?
> 
> Previously, the binding allowed the compatible string list to be
> qcom,pm4125-vbus-reg, qcom,pm8150b-vbus-reg, which is currently used in
> arch/arm64/boot/dts/qcom/pm4125.dtsi.
> 
> Additionally, the required properties for qcom,pm4125-vbus-reg are changed
> from regulator-min/max-microamp to regulator-min/max-microvolt. Since
> existing device trees like qrb2210-rb1.dts rely on the microamp properties,
> will this cause make dtbs_check to fail for existing in-tree device trees?
>
You are correct, I will include the DT changes in the same patch
series to keep things atomic and ensure dtbs_check compliance.

> [ ... ]
> 
> > +  - |
> > +     pmic {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        usb-vbus-regulator@5000 {
> > +            compatible = "qcom,pm4125-vbus-reg";
> > +            reg = <0x1100>;
> 
> [Severity: Low]
> Will this unit-address mismatch cause a compiler warning during validation?
> 
> The node name specifies an address of 5000, but the reg property specifies
> 0x1100. This usually triggers a unit_address_vs_reg warning from the dtc
> compiler during make dt_binding_check.
> 
> Should the node name be updated to match the reg property address?
>
Sure, will fix the node name to usb-vbus-regulator@1100 in the next
version.

regrads
Rakesh 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260520-add_pm4125-vbus-reg-v1-0-f6d15d7dbbe8@oss.qualcomm.com?part=1

