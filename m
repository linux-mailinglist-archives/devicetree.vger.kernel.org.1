Return-Path: <devicetree+bounces-259961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDOsMeHSeGmNtQEAu9opvQ
	(envelope-from <devicetree+bounces-259961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:59:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D02D962EE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F686300E0C4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC83A35C1BA;
	Tue, 27 Jan 2026 14:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCuADkyw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MLkqnPKs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB5E354AF2
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769525508; cv=none; b=KGhWSDRZbagxdWXbRQqdupAucFGMF/7uli1npWKocSC75tFtSnaHWKSyKiwNiEUjzAl9pSyo9rmCs1nFtZS7iDHKznsZjWhsulAWCfsbnNmZ1dAUivup4yva/zfI7PTw/iNeUS48rciAnjbS/kN7iXP2XHR7PSkJCF73gflF0S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769525508; c=relaxed/simple;
	bh=U+38FF6aEMgZeOpbDPv4WqDn8gpMxTsQuXNhCUp6Utc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NsHe8iQBcsVlgyabudrTi2ZQGepD8ubAPfsQxxWJNAJK13RZdhWJYxgz7vEszxq72lTV2WDzuH1yjGv+5ZHvXYBL8q/12evbmk6WRelnALAIuvxCbvXJvqXJt2ilMK9POdxUkxXblk7NI8VRS3y8RXnrr36/knI1fHpGz24DCU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCuADkyw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MLkqnPKs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9qZMl171364
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:51:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3f3IK4MOfniqkAkGkyLgogaC
	73+XOhuDYsdZ5+Cky8Y=; b=CCuADkywl5ikDoVanG3M8TUuNGVNchLUXloIYwfX
	8G7bksXhVJINjzlccOaFPD6CfVWs6cyCMI8g5jQKvuz121Uz8m9kO3+t4zaXegiU
	/deium0poeRt8W0VejetG+rqXN1iXIdfx5GfqCVN1hlL26Fce7mKN9A7bPlCDqeD
	1+J4cvzP67Up07z8gzxuWYRIyfK74FttEwr6A5LxbMT3ZzD9vwbVN6lDOG9PE4M8
	pUA9k56BLLi9e6cO5uUpgFthUAWBbnACY0DZRanCyTDe+6z2O3yCe0ixaoQssYzE
	z9vG52EFSqz0LEidz1fl9d398avCkvjYILjil70PzoEOew==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a36yk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:51:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52fd47227so1025858685a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769525506; x=1770130306; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3f3IK4MOfniqkAkGkyLgogaC73+XOhuDYsdZ5+Cky8Y=;
        b=MLkqnPKsVfrg8m8S2GJpLurYggGGPY6LYtGVRypuOymOgjvpjWzwSM9T7gZ1xGz8mT
         k39afxtm/fW/xke9EFNBh7T++cve8EW9a0spHn9RU9h/bssV+Tx8zk9e5b5Ms/LTKs39
         ss/S8kGAHDFdg3VFVHLfnwmR1Ju7S/52xrVGUluUn4zlMTDd1THw1UM1mQ5L8SWHwH7w
         CKawdQYzb/egUY9aXG9GB+za3uJvYGQ3nP0F+fybHwliwBeFk2k6Rv7wl4JQ/dHaBKgb
         bXL0lkFJGdKfPycsgdYdrFdXzBgqFrqTiIw5T6/R+wx8JKvFTW2NvJNbFrtpNSDHj8Ix
         uWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769525506; x=1770130306;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3f3IK4MOfniqkAkGkyLgogaC73+XOhuDYsdZ5+Cky8Y=;
        b=jC8rXVmd1xEzDsQY/VmWXG0t+n6cfQUSHomawZvNkW85zL2eQss2Hfi/7NPBHkxf1v
         KFGBoYyRzlkBwhR8EQXiibA2QJlHuBdsHfYP+s0Zl7CSnW1gC5MOr8jo+g3StWdHAOXi
         tvRa/ezh50ksvxzj1MQxPMhOBt9Gy8HCXSwQRSGHAPNXO1T/MUOs25lYrgWAXZ2svStW
         qqdboCGYa3koSkbHNITEjchWsilwwf3nUERSRblOiuRlM0huOH2ENvnUdyxjJBY7bi42
         gYfQAl0Y6d2n5zswJtCyP56ybtULZVb+MSkw2MtNeVRlly/T8qPxCMpONcsP87bq6IOa
         hPQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA5S/5we/BNJGLguqVrWdsWPnPmRp6X3FJb2L6l1BRqACrzbR+dmYYv8o56hvxVJCSmj+LgiUo4te1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1pCiz5ZQOheE1ELOPu4feVBFE+yw49Nr/PbQCawFA4I9oalmY
	04gevrBp2ng5Dh2dGp+UYxMqKRQmOsRT68bmnmwjN8LsUmuxF8piS8ayMZ014FMVMuC/f1cLHhn
	YG8MH1AIBl6pe+zRGm8sCZOQKNp8q42oU7tHkYYsauj5YNlbVBZ+6JZkTFjFxCXMZ
X-Gm-Gg: AZuq6aIhOImNGYYoVEH62MaYfAllBt4AO+itGYKO9oBRb4d/lDExqwYYRXzaFo3axY4
	acHUqMmKG64+rDXeIXVTbzJ156/CnDg3+EUqaNRS0OjC/1wWXIiTBKAYm3VT21QW1aoB5j+QPM+
	o/yfk8t1Vm4uhhdK7N1jB2YAjh11VOEsNYxQWtRXnbhcidGO0ZfC0s1F1QgzttVZocUTFsdwtCi
	0mNwIgn4XcM30VFBji2Wb/SgRLhdY0/+7IYNTv2hyH1/o8UYYbHvKX1QlEesqThkcD/kDjK2Vrg
	u3jXNUlo6sRFbUyXH9CeHCJ4ygF2hbDgQjIcAsZh+O1BtMM0RnRKZo2A/8uz6Y8tusDgHuOC/q9
	aqHDL+IpGh76r8k6asdqcGNMQ
X-Received: by 2002:a05:620a:46a9:b0:8c5:390b:6eb4 with SMTP id af79cd13be357-8c70b8e5f84mr208881385a.42.1769525505636;
        Tue, 27 Jan 2026 06:51:45 -0800 (PST)
X-Received: by 2002:a05:620a:46a9:b0:8c5:390b:6eb4 with SMTP id af79cd13be357-8c70b8e5f84mr208876685a.42.1769525505004;
        Tue, 27 Jan 2026 06:51:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d61f1f8sm133530425e9.5.2026.01.27.06.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 06:51:44 -0800 (PST)
Date: Tue, 27 Jan 2026 16:51:42 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Peng Fan <peng.fan@nxp.com>
Cc: Frank Li <frank.li@nxp.com>, Abel Vesa <abelvesa@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: imx6q[ul]-clock: add optional
 clock enet[1]_ref_pad
Message-ID: <b3bv7uevrk7c2argbhyxohhbcn6xtxvrj5fa4jwjdp5ymtinza@k57crjsa4yn2>
References: <20251106-ccm_dts-v2-0-12fa4c51fde7@nxp.com>
 <20251106-ccm_dts-v2-1-12fa4c51fde7@nxp.com>
 <aVwV8/rg2h2x4OwN@lizhi-Precision-Tower-5810>
 <uilxikzky53j7sg2barmsu6fkco2fiwgak3fh6eqc65iggmbge@7oogboikthae>
 <PAXPR04MB84593733B9B971529DB368F58893A@PAXPR04MB8459.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB84593733B9B971529DB368F58893A@PAXPR04MB8459.eurprd04.prod.outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyMSBTYWx0ZWRfX0WJbCiDoDQBn
 X9Pl4tE02z1pWl0XzRjBL6/46opGm2k4wkBI4MnDb/yU2+8gFTxBoEplFQZmPp/CklhRKyjeZJF
 IwhTHnadJaOiXmuDyJK8tYUOel96JqR1rQsmo6u6v770Uo79vP+mDNn4WzqkI862A2WQhKynPLx
 2wrH7igK5vlMC+H2cOxoMkQuWeduIr6sjm7+shl3wOjJdanKbRd0vaKHQKjqDMrpIRCImEwdXaL
 P6j9VgSx89HxxpJh1eoiiC05IQxR/P7wpZyh5zRrrm6Jb33iG0dTzUvvBFq1fGdSB4IANST+MVN
 VbVpn7UW7mycpN4vNLdomKFFv/d95m0ZqdxCf6WXWljU8bUnHRsPzZ1M9a/c1u5gavlSi09mfjS
 sdjSc56d6grbLcSeuOd9mtNzOpETxwZvcLF5AGvuU1w+2HZCgdts79H5A5fIUTQWaETtJPbNDQD
 yr9DihASAh1KMwmRNFQ==
X-Proofpoint-ORIG-GUID: 31RTHnxS0vRMseEIAZY3kVdeM0Qi96oo
X-Proofpoint-GUID: 31RTHnxS0vRMseEIAZY3kVdeM0Qi96oo
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978d102 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=XYAwZIGsAAAA:8
 a=uB1rFwlgQs9gonznhjAA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=ST-jHhOKWsTCqRlWije3:22 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259961-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,baylibre.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6D02D962EE
X-Rspamd-Action: no action

On 26-01-26 23:31:12, Peng Fan wrote:
> Hi Abel,
> 
> > Subject: Re: [PATCH v2 1/3] dt-bindings: clock: imx6q[ul]-clock: add
> > optional clock enet[1]_ref_pad
> > 
> > On 26-01-05 14:50:11, Frank Li wrote:
> > > On Thu, Nov 06, 2025 at 02:57:21PM -0500, Frank Li wrote:
> > > > Add optional clock source enet_ref_pad for imx6q, enet1_ref_pad
> > for
> > > > imx6ul, which input from ENET ref pad.
> > > >
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > >
> > > Who will pick this patch? Abel or rob?
> > >
> > > Frank
> > 
> > Missed this one. Sorry.
> 
> Just see that there is V3
> https://lore.kernel.org/imx/20260121-ccm_dts-v3-1-820ce9b5fa38@nxp.com/

b4 will pick the last version automatically.

Thanks.

