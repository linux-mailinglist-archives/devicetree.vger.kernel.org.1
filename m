Return-Path: <devicetree+bounces-259227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEkoGyD6dWmwKAEAu9opvQ
	(envelope-from <devicetree+bounces-259227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 12:10:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE75B802B9
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 12:10:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A14E30078D8
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 11:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E8531961B;
	Sun, 25 Jan 2026 11:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cwQbL8M8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="USw4L/m1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A94731961A
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 11:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769339421; cv=none; b=I+PjKr8xzNPmbPCaIbdia6CMKwccMrVrhVpSt7GvUmMPCXTec6Y9ZrI3+yMffghjZz4NN160z9vug8qX3qqkH1ymziuj0eljAO/uUylI+Ax8veL94iPCzsBAvi2qvd2fp830WQo0FYEqxgn+V/kgmse+XVjuNiDeCiGsSi2HINA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769339421; c=relaxed/simple;
	bh=V+fk8sG8TlKVcwmlY+1GbHxHZA6EmLHYs32YWOPdyYA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iZ48aMqozxFM8/s9nmX6DugB6VPJDyGGngzW40hdVKNySRVn+UfwQ8hEve3IvmfdI4oqV/xznx9LHnKrzpRRyATWCj0/l8/rFyCxJmLUl2WwJZlMZl1AVZQPtjDn41RotxBS1VL20CHVGfo45yHAhrAJdlpSr3YxgmBDPzUcZ54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cwQbL8M8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=USw4L/m1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60P4pPJp285593
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 11:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hOQoJmnInnbcbRyG6h9dn/IX2oGQdNYDgb7ahNK43xk=; b=cwQbL8M8Rzf1XeYh
	301vf4xy3lKJh59lry4NfZalG24uqNCGnQgo7lUiad74ktj8JrIzZfxKOgd5jTZx
	UqWwAbeF0WKssozIuAGE6ZQCuZRxclbK8N45aS0AjEMzeAowgFydwuQ+u5W7hKeL
	O/RvcKd+LkCtO1qP5c8l/QUoBoxnaALgumCzgeZE3iwG27DVeah345qlEApumi4F
	HNBZsyf69L5a3T961yitahk9nRcx0xXK5NgYlCVggPGvbZdb/EZrhbJ7DTluRJGN
	vkm2cLbhxRCz2V+o2XJOSkOtjRp1kDltcv0wfi0HV9HL+wAuOawAcbYa46W9CNRk
	xmQRIg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq8dj0un-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 11:10:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso425247285a.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 03:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769339418; x=1769944218; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hOQoJmnInnbcbRyG6h9dn/IX2oGQdNYDgb7ahNK43xk=;
        b=USw4L/m1PtVwQ7TiAFhreK8zp+WiBSUdFT+oWvJAIUNqkD7XBtJ7WJLmIOKVtUdp4A
         llkYWkmMacTEd53nb+LPykWeGR4igGa+fyKi9gz2Jv/fNHAsKU4Z4EeizDBuF4A69xKy
         O0f3MDi96Ejad1C8R7xuJv/FmfxXH8rpesJEhus9yh9oPvUp5bP8dF+1JXFw2VVR78Wt
         xvthRPndPYZrFxtW7NqUQ7cNISMfiW7WwSJ7o+6DUcbnN+nivbUzOIhuC0ik+4BEO3Wn
         OuxXIr9y5C6HRfi5j3PvcdYWktwzBEvLrip0wVEVX1bICkP20kTrCqlCUADMXwPhZuyH
         AluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769339418; x=1769944218;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hOQoJmnInnbcbRyG6h9dn/IX2oGQdNYDgb7ahNK43xk=;
        b=sjKyQAKQQixK+J05jGLpsHCrYFhj/omWI1drQS/YXuLb2QNV9GrObMm4vl/d25shjT
         C771/twMn/7vW1JTS61y4/S1EwvLGxH/QcwPAIlOBxz1rHS0QzmbLL9JjOCI0kAS6+ma
         CXZCclIMs1NSa9syX1tANQe5D/Q1Ve1xWFXan5gfaBVSxEg/c9ppVBe6JBhtjHgds1FR
         CMzgLHTsJWwod+jkLCrkbB40D2yQ0vTAwyVuME6xPRV2FtpgqGz4LtoxZAsEh3pC3Axk
         oYSD+JaT0S+sGIAmTd+b/16ffX//4cUk0jK52S4IYGfMMm2XiqmVKr9Mi6/tl6zR/5fR
         ZkBA==
X-Forwarded-Encrypted: i=1; AJvYcCWR24wuJLABsKRHRMVa5HYWSwyTYuhWdVRdPjoo4c7prBkayX4pWJ21YNKzwXN+dvb2urQflTuL2cBg@vger.kernel.org
X-Gm-Message-State: AOJu0YxORcu96/NR4A5uRw2hx4h+6imVp7FhevWFC13fhErhuWvi9wzp
	7ulQU18T9hrNfcojUd5TLf+/xrq6aZbp1Rz9D+8+BOmH/Uue7XygvXoNduGVt3C5l/bk527wFJW
	Qe0bvuNN3WLLRxJtNARpQxNhVdE6gwCUwMYJKOVdU7OUe6A4uM1VkugBKN7/tCKCu
X-Gm-Gg: AZuq6aKnDN2A2q5MDpvQaXzwxWGGOnKqttHH1QqNMPvT/++4wDdFz81doBRorDzgE/h
	DM71GFMci6nhQ7Z2+qVUIIwBWxmRHTOrgwWeu2kHr0HtykJvEb4NsUi/8UmHQApVcYMUM48btDL
	pqVy1xlKKI5kGoKtXhvv67xhyqcqBcIDHI5sAmpsVVSddNBm/HVfXPElaM24hvmZMgBx7j5Qstr
	lv0zzFzNvmBlaof/2ur5zQTo0ocQJf2wyUB00CsU5UGJZkRDgqWclWzaORg+hQl2mHi6TfhjU/H
	H9Zi0WOypSSdHYqnVgNd3OqISnd+aZRTYlhQ/NAL/FDuGztHDM0VqSQ7jjAoo6WO9n7ngo83af3
	zqm9VK6TcwxuV/Sd7XqV1h/NTyTlsXqtDYKuHZqrelpu0xUFruWU1H+VzocvqFx40xzNWJuLoX3
	21UcDojG65nDDn6Jlcna8N/vI=
X-Received: by 2002:a05:620a:7102:b0:8c5:2ea7:b3a with SMTP id af79cd13be357-8c6f95850cdmr154645385a.27.1769339418547;
        Sun, 25 Jan 2026 03:10:18 -0800 (PST)
X-Received: by 2002:a05:620a:7102:b0:8c5:2ea7:b3a with SMTP id af79cd13be357-8c6f95850cdmr154643085a.27.1769339418070;
        Sun, 25 Jan 2026 03:10:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cd32sm1940574e87.100.2026.01.25.03.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 03:10:17 -0800 (PST)
Date: Sun, 25 Jan 2026 13:10:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Minnekhanov <alexeymin@minlexx.ru>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, david@ixit.cz
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
Message-ID: <kfjw3opjwwndocxqqjn4ya7sy575kpgo7otulsxqotznl5ctro@ewdaumkmstdk>
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-4-morf3089@gmail.com>
 <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
 <ac83f41e-08ad-4ffe-9f0e-02f8256af65c@minlexx.ru>
 <f8097212-6388-4c4c-8f5d-a91df99a18c5@oss.qualcomm.com>
 <e6bcf45e-9eef-4660-8630-a7be1cbca61d@minlexx.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e6bcf45e-9eef-4660-8630-a7be1cbca61d@minlexx.ru>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDA5MiBTYWx0ZWRfX1ohYQEgU/uXL
 r2cWdNKsosFbjQu5mn6xgWftIlxg3mnbGoEEE1MYsh2cfEDCYorZKRZasDjDgEb25CL9cl8oh8o
 GzcpvwGy7QymXgBNeyfY02qaFzUJ1IHWXVwMwp8LAYmQYuMAzhML+jc0AxlPbnmOHF3gTMoJeEk
 3Mw4QiC0ZGmMSNOYSaDgYme8THJEne3KBK6rdAp3oJ5qltJMTjCUh+N2YQKAa7DfpeQYYPqlg9b
 pFC3P9ofcdEag6dfFseYjzFU2BDKDcLB8RXLup9UnIlHUAzkxXH89nAYQhVImKetnNh8YrYVgjY
 ZTjfges8O2eQGwjJRSdtwC8mE8QV9yipUm8+VwdYedYXNa6iEoK9nWPeYVGBdtAekmixzUdtq30
 z2jcTNF/7HvlYXO+q0z2oT513G5TyI3Qow6sVArmHx5uXUsfPMEnPz23pufH2xvlHfFiQpsBGdH
 PKpbCVzs/tGO967ccxw==
X-Authority-Analysis: v=2.4 cv=RIq+3oi+ c=1 sm=1 tr=0 ts=6975fa1b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=3BCATF3MINd1TRnPacsA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: pPf6o0oUXX-fFlFOxXyhfj6ez-9ByB8w
X-Proofpoint-GUID: pPf6o0oUXX-fFlFOxXyhfj6ez-9ByB8w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,gmail.com,vger.kernel.org,kernel.org,ixit.cz];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,c012000:email,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259227-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AE75B802B9
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 11:11:50PM +0300, Alexey Minnekhanov wrote:
> On 23.01.2026 12:26, Konrad Dybcio wrote:
> > On 1/22/26 5:44 PM, Alexey Minnekhanov wrote:
> > > On 21.01.2026 14:27, Konrad Dybcio wrote:
> > > > On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> > > > > Fix regulator configurations to ensure stable operation:
> > > > > - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
> > > > >     PLL operation
> > > > 
> > > > The driver needs to be fixed instead, as it should perform a
> > > > regulator_set_load()
> > > 
> > > 
> > > Also change done by me in [1] with more detailed explanation:
> > > 
> > > Since the commit f05ab10 ("arm64: dts: qcom: sdm660-lavender:
> > > Add missing USB phy supply") previously untouched by Linux regulator
> > > l10a is now used, but it exposed a bug from initial porting: when
> > > booting with USB cable inserted, or booting without cable and
> > > inserting it later, board reboots.
> > 
> > FYI this shouldn't be required with the upstream driver, I don't think
> > the core calls .set_load(0) and RPM isn't notified of a current
> > requirement change unless that happens (qcom_smd-regulator.c)
> > 
> > In the power grid, I see (current values representing the peak):
> > 
> > -- USB2
> > VDDA (3.1 V - vdda-phy-dpdm-supply) - 60mA
> > VDDA (1.8 V - vdda-pll-supply) - 30mA
> > 
> > VDD (?) - 11.4 mA
> > VDDA_DVDD (?) - 35 mA
> > 
> > -- USB3
> > VDDA (1.8 V) - 14 mA
> > VDDA_CORE - 68.6 mA
> > 
> > +Dmitry poked at 660 in the past
> > 
> > Konrad
> > 
> 
> This is not needed e.g on sdm630-sony-nile-pioneer, it's booting fine
> without system-load with USB cable inserted. Maybe IFC board doesn't
> require this too. Seems to be xiaomi specific thing again?
> 
> Alternative is to not touch L10A regulator (comment out vdda-pll-supply
> from qusb2phy0 node and face the "phy@c012000: 'vdda-pll-supply' is a
> required property" dtbs-check error again. Which we don't want to do of
> course. And schematics say that vreg_l10a_1p8 is connected to at least:
> VDD_USB1_HS_1P8, VDD_USB2_HS_1P8, QFPROM_PRG, VDDA_APC1_CS_1P8, VDD_PLL2_1,
> VDD_PLL2_2.

It might be that there is an issue because of it being used for APC1
too. I don't observe any issues on my IFC6560 board (where it is also
connected to APC1).

I'd suggest adding a dummy fixed regulator node as L10A and documenting
that it is not to be touched by Linux on this device). We do this for
some other "system" regulators on other devices.

-- 
With best wishes
Dmitry

