Return-Path: <devicetree+bounces-270488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGPQE3PfpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A451F0102
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2AAF303A8FC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF3642317B;
	Tue,  3 Mar 2026 13:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kalYhP+L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ExwPoVE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B585E344021
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543503; cv=none; b=qPIl0K591SowE7Z5rjKy1L1wSupnEwNAU3O/nzEn90VkJydGNO8UTVzrxSFf/VpRsgTjqrUH5C5sLkIPj3Q23Tlx2y1Vo9rY9bjaNy9T+Ap3iCLYvP44GO4cXT8qmiugaNiGgZAjAc0F/1YO7hp4MQBeOnoC25GjtxzMcSzxi5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543503; c=relaxed/simple;
	bh=ozN+qojTTgLnsoEN6uH9ZEIQmW3hWK859Xy3p8UVIPs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EbD3k6lKRboMrd/ACP7i1yJtGUeEb/V7d8Rkb9aFBEcbp7oZh3GzwOnmPglxAIvqfzrsPKnD56x8WDB3zPzQ1uUHV7WID6MUy7r5WWJC0i3bEs0D24r8ZH4bsMDf+k7nf7oLDO5iqZSitk+Sq7o1h08KNxq8FVNukMxsbrnr+PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kalYhP+L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ExwPoVE7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mhb33951769
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=snhnMYJDQkat9qXJwHdTGT4j
	0E3K9+24fQ/tGb/FHwE=; b=kalYhP+Ltoz84W/vWpoW3Ii5QCbGAfW/QxzwlkqT
	0llIux2NAdG/Lf8YjRtWyP/7DsUZFv6+ZMDvvxiJ0wWmFChR/GLxvaoAF4QGzyfw
	wQ6oHsOsCh12Tpt97Y4wG85YP4Kqgci4U0wLYuYK6hjj6OXSWDLHuJPTOFZlbody
	YUzJ/gifjsdCS9xx0Kmh1fSVttTEpFYg0nfI+BGjuuCZczSHt/UBePVHf9zEfr2y
	pCqIAH43GGnudV9Qt4k4gwLtYbZZVZZnxRpP+O5ZUItZK2NAp4ctxtooDyGisZj+
	bG2C2oPJNe3bnh9Sq/g7kCRnM69I1vrwVnEfAOTUtV7d9g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n93d4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:11:41 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70d16d5a9so3562463085a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772543501; x=1773148301; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=snhnMYJDQkat9qXJwHdTGT4j0E3K9+24fQ/tGb/FHwE=;
        b=ExwPoVE7oXf33LJOvA5EpC1pdq//bMnvPd3/cAdKzLIyM3006/M0jIlSpd0Vox8Ql6
         70syCR4O2PVwuR6raWk1RphR7JsF2q1CRbkkbrEHW+NomkX9sCO8PVhfEXMUuQXhPAz9
         sotSejxE0MNvlHAZ03oLwCRRDepQg50mxbXfwl9EXJP4iVa1oeKchU4S4DZej/QYUVdP
         25o8kF4kIbTyfFFa0elixRL3fBKRcYjREkd8bG6r6Sx+f18yylu/dutPgmU1ou6zBWhf
         YD4bhhoM/wj1FXjcwOHcynrfVa06ik2czcU5tN84g3IbdbAhB1gOOHYGMsgcnmV14HqZ
         GNvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543501; x=1773148301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=snhnMYJDQkat9qXJwHdTGT4j0E3K9+24fQ/tGb/FHwE=;
        b=q6xiGuiyHO33XcGQ0oBbdgXHH1MJXHwKAR7hQ6zVa7vmlCty7ADuOZQ3EYC4e8iIEE
         5pgs9qPfwMOwjFUHh311LdAN7p4GDylE9pSFUCiMcCdjRPdn5e1u5WxVDJ4UjH3Yr0CJ
         qHBYRSUANzGpTpuyDzJNct7Jz+MZpFG3Q5tDDE4xKzjk3832pdU8uGKw0yZyrfyAmB0l
         2/6u8djJnNlKbj5yIJ85P1vI35WlSBSh4hMOW8ZLCL4qPyB5t2romcUBGHu5y+qc8xvr
         8x/aN9nyDlImdS3Mz6MKH0WKAa2Afj8aGZAhzHeecQKcY1htR/8N69JMaK4Jr8a9y1Fz
         bMnA==
X-Forwarded-Encrypted: i=1; AJvYcCVIvaEq7cHwIBg1bJ5cQNXxA3vsfk77HVIiSLMnxtOpK92QfkJE9j7QIEEHWmhPddjDxX5LHgpmXx1R@vger.kernel.org
X-Gm-Message-State: AOJu0Yyri6yy9vVK1kw6b7+2bE4WJVQ1fUxlGG4Xp3PFluHHIrtZwWO5
	hY/WK0imec90VuBFW86eWo+JAchJdQLwbQ7HHuwT31XG7O31SUMhwVkJQEMRgLzmLPu4A0pKpHo
	hivzM46+KvA5pDakuAtUZ5fGa/UHZuKoZhSj2JU98YczNGy3uKHMPoj7wKspd/B9m
X-Gm-Gg: ATEYQzweJODB0oBO2goBwMYT15+KGld27L47fmeJGr07sR9gDpNIszEqLGAFktOP80+
	qw1prMpvi3lN/WsQNWdSqm1dL1uuzRP/Xx5jZiWenpmdYLXn7buQ5fLWVUGUpWEGqRRj18hnwDA
	rz70axI7+6LOjBtF0rRXV9Ajq7mtTlbVFN+Ru4amR7lybKGxpzz8jmhg/mE9CmEEZXF9zEkX8rx
	pirtwDmK1Yy3hXJsq1m5UDOfjmrkNhtEGOq791hp0WK5INAxQPUJz+c2fTtjDUSaOuIHppvZgQd
	5p8Qrx5OrkVac7cXw+Ak6rZfIiVZYcQw6g4Wbwl8rRoKVDMkz/RDT/Qv374yH3teG5fwr1eSGLm
	Ck3OrLzU0iu8RGmwUKs4XeR2LwdWxezCkDyon
X-Received: by 2002:a05:620a:1706:b0:8ca:2cf9:819d with SMTP id af79cd13be357-8cbc8d9a85amr2048340785a.26.1772543500780;
        Tue, 03 Mar 2026 05:11:40 -0800 (PST)
X-Received: by 2002:a05:620a:1706:b0:8ca:2cf9:819d with SMTP id af79cd13be357-8cbc8d9a85amr2048333885a.26.1772543500109;
        Tue, 03 Mar 2026 05:11:40 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485126563ebsm16384845e9.1.2026.03.03.05.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:11:38 -0800 (PST)
Date: Tue, 3 Mar 2026 15:11:36 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 0/3] ARM: dts: imx6: cleanup imx6/7 CCM related
 CHECK_DTBS warnings
Message-ID: <56f6t2u5peqndhfwxubvhcksusrgkxpqd5woz3i46gpl3q7vc2@5ykg5q6acn5a>
References: <20260121-ccm_dts-v3-0-820ce9b5fa38@nxp.com>
 <aaYKUC7pWjS1Xnpd@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaYKUC7pWjS1Xnpd@lizhi-Precision-Tower-5810>
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a6de0d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=8AirrxEcAAAA:8 a=poxx6UPob8T2UUUd9QAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: hq_ZsTn2B8IhS_LkK_bwok6pzJJ5PKnD
X-Proofpoint-GUID: hq_ZsTn2B8IhS_LkK_bwok6pzJJ5PKnD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwNCBTYWx0ZWRfXzwbQyvj8g71b
 2lVqnIJOqbB9801FR+KyiX56ngp3Zf9l7+dSsVMwhwcPKQaivimfgUXKEYZKeb8ogM1y2ELv62r
 yvHUihZkGR1uIOHy5pxnT1YXceDdHUY3w+MX5xgnKO7Wkqa5RVOAtwuoc7b9h3S+Qxh4k5rgPnu
 DgVlo2pJfPi4CXKHSFgUWjNcqXUe4LlPQzHAVkJ53PGIttdhgmblhlBEhGZHaln84W9ltxl8yn2
 0zqykr+6NNr05Cqi9Zsdz+OUBA4NKXc1O8TfJA/x964tghNSzOaIvDyUVlv43MJRU8Mhh4kCWrr
 wwjzqAqQ34i6Jp0n59DkX8/058XNwuhiuKhO7IFSuKtXPTOvmdGDsPeMEn1S2O5zKZ1pnQgyix0
 gt/iTLlKfO+UBwa2pOEVBVmSM/MlI7i96+bBPScgUeq2DlIfNO7CrskFO4LVyrqRT6c5KVZTOhV
 6nxT75GyqOoVrRXKNRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030104
X-Rspamd-Queue-Id: E4A451F0102
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270488-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,baylibre.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-02 17:08:16, Frank Li wrote:
> On Wed, Jan 21, 2026 at 01:04:14PM -0500, Frank Li wrote:
> > cleanup imx6/7 CCM related CHECK_DTBS warnings
> >
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
> 
> Abel Vesa:
> 
> 	Can you help pick binding part?  So I can start pick dts part.

Done.

Thanks.

