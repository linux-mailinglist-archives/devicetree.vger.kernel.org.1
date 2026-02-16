Return-Path: <devicetree+bounces-265695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEOyFFjykmlA0QEAu9opvQ
	(envelope-from <devicetree+bounces-265695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:32:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F671425F4
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB25A300D151
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5B52FCBF0;
	Mon, 16 Feb 2026 10:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fVYKLm9e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DIaPfYZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6B326AA91
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 10:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771237972; cv=none; b=C+NdX3zFvMWeRfd5Ood3GF6svh353wE11rKRtzJ8npdI9NrQ0oScPWbLhGJ2Nc8f7/Kp1D1KyTyLYn7DT5aEJ+O8NXn0uh5gsSg4LP3bt9weUp0F199VuQ5svcWWque3zvakhMrpju8sxJSB/pek7FcEWRqGj0yVJKtiorLZ2Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771237972; c=relaxed/simple;
	bh=slHLX6ermrbEdMU7Mb1n04AGY3NbFRMTGUVipYQQrFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TW1/UVC0Y+vcpQDMhCV2s4GyliSFvXhZu9eA/NYKvZXP+WTg0w0/4USj670nGSliKoD9MR7VMVu+rGtVEZpe92uBAFv1JXO1XZSaXah5N1NsgIci2L25ShvfBxGWtV6hx0W0CvZWBaYGMnri1Oe2xc6W8H8WaiIMwj9o9hajqr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fVYKLm9e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DIaPfYZl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61FNkfpo3701304
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 10:32:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ldz6g6SovUoukXhKXBWKpNMY3TWItCGCHJsYS0M0OHo=; b=fVYKLm9e9AFd3YZF
	VC+Meh0tnjSUM3KUbTciYtCtohTsVrxtGzqlmr1I7d4Nz6xbzMyBoWAJlJ5YPe24
	mDGj0jS8tRXdQMDcZ8v3KYp22wTvAC8LQaZLQcYJiCTqsoKFpTMycD+wGGKtcAGS
	ENLTMXo+bWa2tSayF7TNHOX9OFf2iei15VTHTf+sk0404M7kS4mmfJP5K7eZ+diA
	3VlzgDeO9hjoJQ4Qke195hm0KPv98Mmrtm4Wqtqy8F65sRSreLmSQ+gXiuos00jh
	8MSFf3nUER9e/VK0K6x3QaQVOTIz4f+OrMedlzf6CdNVsbFqlZdMHcLk3WmHb5By
	bAlmHw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24c9vf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 10:32:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8954adc2173so493003466d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 02:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771237969; x=1771842769; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ldz6g6SovUoukXhKXBWKpNMY3TWItCGCHJsYS0M0OHo=;
        b=DIaPfYZlNMgrfrhQVuw27fqalct9lBkBOyJJ3XghuaRbTjz4OdOh/hGTfBhqaX4JGs
         gXowvQ3sNtU+TADUmQ3orIW6NX/pdteqNQlU2m7mP7DbrC6F0KT9bmF6yn8G0iRqHuZg
         eJXc8Lqfsi7uPDWZs6q1SeYesnmICWVY9Xivqf5ntwDevk6MfhbpnG6E/NWDc7L9zXnM
         NFuI0nBOPjlJ4EK10JmYNwsXNOs9bmKbIOsP/AUDzOqTYQmYVkddbUo2jNJwMeER4njS
         j+3h75FROm0vOnPHWNkhc3rry9VimG0Cov3IP0ULESevx/ogSMatRQmhm3W3BPMrESFS
         IEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771237970; x=1771842770;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ldz6g6SovUoukXhKXBWKpNMY3TWItCGCHJsYS0M0OHo=;
        b=gr7ZfOPP+VzIWE2kQ8RQDUfjf0Pp1wmmDqz/5GK59wP2kc9wu4zVRy8yDOaoGRFEr6
         2aPS+BYxRtbcBBTQ+M/cr3THiQSGDq2qYGW+kH8po2s8FpVwt6URagV6r1RVcCnRU3ud
         xuHqDUKzMxw1hVN+jTllzX6Obxn6CimjWpciot8Q//tx002JV39/WtFe0vShfc677iHT
         /4ouUZtFjYKl1pWBtt0Chpi/0/qpBmmDps2KpDpgsp/lqNxdsI0L+duISnkTek715lY8
         q+VykSQ8ynxoQvESGgZO51nNSz9Ytc7hmQeWjBqa2f21HFPluxJsDaA7Kp3JFL9wL4M6
         7CLg==
X-Forwarded-Encrypted: i=1; AJvYcCWEu8lBPFHbeZDbunVJzaVzlTvy4zHSH0XIb/2tH7t8kvX5tfscLu7mlKQ0jyRKJgYecghgUFy8e9Pp@vger.kernel.org
X-Gm-Message-State: AOJu0YylwT2NKOIBL/GFBoLsXat7kD64vxVdTJnu6GLpbXnr9qK5bxJP
	EVv0BiN8rw3Po3uLSS6DW7mINkzm2CqUgBs8iCj1b+TDxabBfJ6OG5c1qBMOg76O0XitY0liI9H
	XfqFI/rXzMUmEd0vAIR4y/yrmOikQuVnXWjUoP2xPI0dbKfBT6tYqbFcE1DwLQF9e
X-Gm-Gg: AZuq6aI7Q9v9ItKJICUvI+ecFX6+WS6gFPtGciAkOZidsoSesKswKqRXOv0DsZNlCoU
	EwEI54060UwkGSMM+Uc7EKHw7Z5M06WGVBG0BTnYc/gQsp6YyKNbtI1GhHT6c865Q9oV9bhjOaf
	0KpGm6ihj6oKBxta+Ks2kvCEP1khkjCjYTaHxospjnATdUc0uhrgIctkGLQmQpaY+xf1huVhjq5
	7VsKyXZVhpGMZooEy/KAdpdBCUE//kAGRcGmhgbQILdyEkffMoLhZfqm4q9M4OFGBaDDHE2xAmm
	yt+ts4JmZ3wLBRfaqbTVCSbhyES2vxu/UIzIwTUn7WccJXJonKkIY8gU+EY7BwxtrC2y576u5YR
	C4Qcuq1nf7MnuNizRP7H+Y3YMBBRuuhvYl53V
X-Received: by 2002:a05:620a:4727:b0:8c6:a034:9226 with SMTP id af79cd13be357-8cb4c018c52mr990686085a.82.1771237969495;
        Mon, 16 Feb 2026 02:32:49 -0800 (PST)
X-Received: by 2002:a05:620a:4727:b0:8c6:a034:9226 with SMTP id af79cd13be357-8cb4c018c52mr990682785a.82.1771237968932;
        Mon, 16 Feb 2026 02:32:48 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm28469525f8f.28.2026.02.16.02.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 02:32:48 -0800 (PST)
Date: Mon, 16 Feb 2026 12:32:46 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: =?utf-8?Q?=C5=81ukasz?= Majewski <lukma@nabladev.com>
Cc: Peng Fan <peng.fan@oss.nxp.com>, Abel Vesa <abelvesa@kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/4] clk: vf610: Add clocks to support MTIP L2 switch
Message-ID: <jk6roonftm44qwnyxezhukdoqahrj2l7zaa55w35oq3uj4en4w@obfufdazx3wb>
References: <20260129095442.1646748-1-lukma@nabladev.com>
 <aYAEM8pcuumly+hc@shlinux89>
 <20260216101538.0aeae484@wsk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260216101538.0aeae484@wsk>
X-Proofpoint-GUID: CBKGgckka_L_lVWKf-Q__FTkQKK8iQvm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA4OSBTYWx0ZWRfX6SY8u0bqHZXt
 BrzXXMLCD98XSr/QHdH3af1gMyoehBRKIRao9+esSmgD6WU4xcwLAZP8BeZ1kf0VgJCp0z+LtZu
 qazagz/rXyyNS23QaZzyal35LYMBSom0xJMJJcpnegQCQBjZx9b8cNY8N5fKBhPX93YHrDsytdA
 b3szLwVRiagaCArl0dkE+96Q9u16kSYf20hT1rrfLElA6pr7EEqaZttn8Yd3G3I9BLw7TFNnawC
 Pp2hkxFkdzmoTpS94agZ/k9Q1SM5pnJzrX9dG6tC94AFqje7GPOM2Sesu98hxqmVO7o2ZYWEGl+
 5kWtwpbH+jfoWKp+jN5pKVcP6AE3ohRevvMuJ98qBupHjNoDel2nHo09iFeJf9dttn4YshnoaM7
 xx30uQ6CSnzZ/QcB5Ud6QISlxTZdatzkZkvS5kFUTMQ3OF58fFmWsp9BI2eSe/xb2ErlwNoRSm5
 hKGxQYbSAztAxjoliNg==
X-Proofpoint-ORIG-GUID: CBKGgckka_L_lVWKf-Q__FTkQKK8iQvm
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=6992f252 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=8AirrxEcAAAA:8 a=f3gpwmEmWHM1I7Tw-EcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265695-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,nxp.com,baylibre.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A7F671425F4
X-Rspamd-Action: no action

On 26-02-16 10:15:38, Łukasz Majewski wrote:
> Dear all,
> 
> > On Thu, Jan 29, 2026 at 10:54:38AM +0100, Lukasz Majewski wrote:
> > >This patch series:
> > >- cleans up clocks' setup on vf610 by moving VF610_CLK_END define
> > >  to driver code
> > >- introduces support for several clocks required by MTIP switch IP
> > >block
> > >
> > >Lukasz Majewski (4):
> > >  clk: vf610: Move VF610_CLK_END define to clk-vf610 driver
> > >  dt-bindings: clock: vf610: Drop VF610_CLK_END define
> > >  dt-bindings: clock: vf610: Add definitions for MTIP L2 switch
> > >  clk: vf610: Add support for the Ethernet switch clocks  
> > 
> > Reviewed-by: Peng Fan <peng.fan@nxp.com>
> 
> Gentle ping regarding this patch set...

Will apply after rc1.

