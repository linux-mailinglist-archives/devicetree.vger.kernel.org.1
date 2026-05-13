Return-Path: <devicetree+bounces-296924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMV1O3GYBGpiLwIAu9opvQ
	(envelope-from <devicetree+bounces-296924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 17:27:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F9E536120
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 17:27:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEB41310BF14
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 14:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4C3330D34;
	Wed, 13 May 2026 14:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UxU3VWSe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF122CBD9;
	Wed, 13 May 2026 14:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778682589; cv=none; b=gJ+ZtiCwXmo1azf/jMtOz5TSLJ1+gn3sjgRTKzpnB3D5f5RS9MvMM7hx1J5VxC9SZVsqPh/S9zALwGaLnhwmuePrHsJaWhBXTr0mPIWERHtOlOuNqFdmKyYSeDp7T6ThmNDJcF+PGmAv5OfJGwF3b2lSe/Ad8fsTL8GcEyrJ+BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778682589; c=relaxed/simple;
	bh=GeR3iF08ycBzV98BGKHM08u8wIRaRdn/y1FRS6LHvBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CMPbgIu8/MVb1aTHTr8Q4U4i2ZxjfJdmSzFWtgXILZ4Hf507OCZurOey7iF6g8V8h4z33p1AkvmsvYJo7+SYefiiaOYDi509IXFraBOFlwf0yBTxlS7d7SrdR7gT8ZM8DFvo4+HsOQul/t+Abgs3uHIAOLy7/W5aEYX8HVlIcqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UxU3VWSe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64D9jgE73007391;
	Wed, 13 May 2026 14:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dzi0WqqpoKiwCDZK2vIon9CGDsy/Ns+F9BdTazJ2ZUE=; b=UxU3VWSeDby+kzON
	k+ImhcO3hhopOLl/85NxVWqssyDzp4sJL3kbv2Zqt7EWecXs0TkBtF1+A1n5dBxj
	WssRMB9JOLTmNWbHz+nA31WsXGg9dtmi8fw4049foODyEPFgQ1rc7qkEPKo7NpSQ
	uZov1RSxtPhNsFzn6qmEWfmhvj7xLUKw1puwdY62Rg5cuv1w99R9dAUMtSSmfdEm
	7859rlIyV4sdHDwr8+ekK0dixexKqxUZzHLxWPVkQcJzMHAG8dkrO2KW8mkdwsEJ
	se7OBkZyX1MEx73TstSpsK2JHwgeKVVcGJmWgFZzBNt6xR5DVDzh0lXb3jaE/qU+
	IUzJaA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4py0h17v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 May 2026 14:29:40 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 64DETbh0017668;
	Wed, 13 May 2026 14:29:37 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 4e1x0jrfau-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 May 2026 14:29:37 +0000 (GMT)
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 64DETb0j017661;
	Wed, 13 May 2026 14:29:37 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 64DETbNB017660
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 May 2026 14:29:37 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 9EB92B22; Wed, 13 May 2026 19:59:36 +0530 (+0530)
Date: Wed, 13 May 2026 19:59:36 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: sashiko-reviews@lists.linux.dev,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>, robh@kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        vkoul@kernel.org, olteanv@gmail.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Shikra CQM SoM platform
Message-ID: <20260513142936.kauwa3czigfs7qs5@hu-kotarake-hyd.qualcomm.com>
References: <20260512-shikra-dt-v1-3-716438330dd0@oss.qualcomm.com>
 <20260513042836.073F9C2BCB7@smtp.kernel.org>
 <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <t2sw6owdxy5iyodjqsldbw6bfaqnezhgvc4hhylxuyrrbjkjto@iwf4dr5nmot3>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE0NyBTYWx0ZWRfX8gDSvfk+iXn5
 ssL2+AGXpcMb7LcuUAZ4vbhPycr5aRHDrBo4+ai/3d5ktYm56fLxTGv9K7naiigVk//5o3UuVnd
 y96Y3WAweQXBKmvCnXU1wGJR3PUVjelLGqJfXyiZtvjG70XK19P/VPPpOvJsR5OEahbgogAj9FL
 XmxNxew8n9EWVp7b/Tq4ysYfauGgxMmHm3fVt9jDcvjGODbY6FdVGZKq6VO1XYTpBCpZOuifsFE
 IUr7YipUlGyjHzY4w8Nh+ho66mHfStR+vXn0DUDjhIjuU6mCMvQbi8p6errBmdKVyPli3PZ4hX7
 vWccjxFmGZY2NF010B3x+a4dcw1fqTW79nbyfWZHYoJVxznD1io+u9uRXOAVEPuBgDapFcYjrZI
 S9L7GOmp84wHgGzZ5++2Jm3Th3pkSrDVZYD8DxvFxbPQY5lv+Ta+zgqY8VRzdVZHT+E0kccAj2U
 t3C3JkiKUWHo4jxQroA==
X-Authority-Analysis: v=2.4 cv=XqXK/1F9 c=1 sm=1 tr=0 ts=6a048ad5 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=8nJEP1OIZ-IA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=c92rfblmAAAA:8
 a=EUspDBNiAAAA:8 a=JfrnYn6hAAAA:8 a=VwQbUJbxAAAA:8 a=di-1_IvPOJKa7E1frQIA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=GvGzcOZaWPEFPQC_NcjD:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: vFY16SLsJwzj4ERAqKfxsgIzzrCp98z1
X-Proofpoint-GUID: vFY16SLsJwzj4ERAqKfxsgIzzrCp98z1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130147
X-Rspamd-Queue-Id: 55F9E536120
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,oss.qualcomm.com,kernel.org,lists.infradead.org,linaro.org,gmail.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email,infradead.org:url];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-296924-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 03:01:47PM +0300, Dmitry Baryshkov wrote:
> On Wed, May 13, 2026 at 04:28:35AM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > - [High] The PMIC regulator definitions omit their required input supply dependencies (e.g., `vdd_s2-supply`, `vdd_l3-supply`), breaking the power hierarchy.
> > - [Medium] The device tree inaccurately hardcodes the `compatible` string to a different PMIC model (`qcom,rpm-pm2250-regulators`) instead of explicitly identifying the actual hardware (PM4125).
> > --
> > 
> > commit 457abf6e7ac410430c866842e08e602ec3daaa51
> > Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> > 
> > arm64: dts: qcom: Add Shikra CQM SoM platform
> > 
> > Add device tree include for the CQM variant of the Shikra System-on-Module.
> > This variant integrates the Shikra SoC and PM4125 PMIC. The DTSI includes
> > the common shikra.dtsi and adds PM4125 PMIC regulator definitions.
> > 
> > > diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > > new file mode 100644
> > > index 0000000000000..401e71720519d
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> > [ ... ]
> > > +&rpm_requests {
> > > +	regulators {
> > > +		compatible = "qcom,rpm-pm2250-regulators";
> > 
> > Since the commit message indicates this is a PM4125 PMIC, should the
> > compatible string include a specific identifier for the actual hardware?
> > 
> > Using a specific identifier like "qcom,rpm-pm4125-regulators" alongside
> > the fallback allows the kernel to apply specific quirks if PM4125 errata
> > are discovered later.
> 
> This can be ignored. The compat is a leftover from the historically
> incorrect naming.
> 
> > 
> > > +
> > > +		pm4125_s2: s2 {
> > > +			regulator-min-microvolt = <1000000>;
> > > +			regulator-max-microvolt = <1200000>;
> > > +		};
> > 
> > Do these regulators need to explicitly define their input supply dependencies
> > such as vdd_s2-supply?
> > 
> > Without these properties, the regulator framework might be unaware that the
> > PMIC regulators draw power from upstream supplies.
> > 
> > If the kernel dynamically manages the upstream supply and its reference count
> > drops to zero, could it be disabled, causing an unexpected power loss for
> > downstream components?
> 
> And this is a correct comment. Please provide missing supplies.
>
As per the Qualcomm system design, the parent-child supply relationship
is managed by the RPM firmware, not the Linux regulator framework. The
RPM ensures the parent supply is never disabled until all subsystem
votes are cleared. 

regards
Rakesh kota
> > 
> > [ ... ]
> > 
> > -- 
> > Sashiko AI review · https://sashiko.dev/#/patchset/20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com?part=3
> 
> -- 
> With best wishes
> Dmitry
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

