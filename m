Return-Path: <devicetree+bounces-258759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGggCsoqc2kAswAAu9opvQ
	(envelope-from <devicetree+bounces-258759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:01:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D528721F3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:01:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9B12303FFD2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5CC35EDD7;
	Fri, 23 Jan 2026 07:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="QfJDIxQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21A6320A09
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769155166; cv=none; b=kXr4gRu5KCsRocoGWHwlvDfVM+dcgQyvE3l3RKLZm+lZAt1yRaz7ajSsEBPjLeUOJgJGVJxWlKoTZtMK5EWiz94RUjJW6D3TBUuUNMEom+4REOkBzmxO6/VaLh64cToPgmWN95/2/HbjH45dyDABWEGz8WiHb5EwA15lcrW2aVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769155166; c=relaxed/simple;
	bh=B5WD10/zuQioqM6V+9ViNP8F7h11+pfute5x6Yd5BQI=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=A0bjUs0/NBAz62qhSf8ZVyx28vNx6SbCrYAPslUDkGAwpGhjviR57MxAtay7r6xOXOln+v8Zevrg5Mw7tz7PoGUWL1gKL4De3mzdAv6eZQPfLnXqatoZDlRWLpJxBlLdPzMlMJonIT6hb2bEJNGe0TNP397dw8w6fSwQCmvosgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=QfJDIxQF; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260123075920epoutp02e4e95357f896d2d980a23052f867c519~NTT7P3DPS2977429774epoutp02r
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:59:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260123075920epoutp02e4e95357f896d2d980a23052f867c519~NTT7P3DPS2977429774epoutp02r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769155160;
	bh=F+3k78bx1aX7CBbym1BrLkgKSsh2Cn7diJb826znBUg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=QfJDIxQFm9JlURO19h5MsBM1YjXfD2k+Tb4byGG7QcOLb/Fk1QupI1JK2VaaA2yiV
	 h5O/6i1+BaI8bm+zakquLqF4LUDuwKf50s7BpTEkjKzvxY2/PMqy/ZfqwkBV+Ue2dD
	 1rlqYBoC6euYYXkdx7zlG0+JH4N+YaUZaNwMdxXg=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20260123075920epcas5p1a8e1797ca9ca254f0784b76c549cc8d1~NTT6rkSWT0288002880epcas5p1b;
	Fri, 23 Jan 2026 07:59:20 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.87]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4dy9Lb0skfz2SSKj; Fri, 23 Jan
	2026 07:59:19 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20260123075918epcas5p44ea70a01dc6d73b60ce3276e189f8aa0~NTT5LwGGK3122531225epcas5p42;
	Fri, 23 Jan 2026 07:59:18 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20260123075914epsmtip2caf2751058022b16f1134256e4821cb3~NTT1XNrGb2636326363epsmtip2k;
	Fri, 23 Jan 2026 07:59:13 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <6f381f88-3a51-4fc8-844c-41b167b07628@kernel.org>
Subject: RE: [PATCH v2 3/3] arm64: dts: exynos: ExynosAutov920: Enable USB
 nodes
Date: Fri, 23 Jan 2026 13:29:09 +0530
Message-ID: <000f01dc8c3e$2b6dcf30$82496d90$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEa27yOGkcSyej7W4JCG0x5iKXFKwH8TUbRAqvnhIQBf1ky2raxgCUA
Content-Language: en-in
X-CMS-MailID: 20260123075918epcas5p44ea70a01dc6d73b60ce3276e189f8aa0
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98
References: <20260122130721.205664-1-pritam.sutar@samsung.com>
	<CGME20260122125136epcas5p2db0fa3d04671ddc915e60ae8c5bcfb98@epcas5p2.samsung.com>
	<20260122130721.205664-4-pritam.sutar@samsung.com>
	<6f381f88-3a51-4fc8-844c-41b167b07628@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-258759-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,samsung.com:dkim,samsung.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infradead.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9D528721F3
X-Rspamd-Action: no action

Hi Krzysztof,

Thank you for your feedback.=20

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk=40kernel.org>
> Sent: 22 January 2026 07:05 PM
> To: Pritam Manohar Sutar <pritam.sutar=40samsung.com>; robh=40kernel.org;
> krzk+dt=40kernel.org; conor+dt=40kernel.org; alim.akhtar=40samsung.com
> Cc: devicetree=40vger.kernel.org; linux-arm-kernel=40lists.infradead.org;=
 linux-
> samsung-soc=40vger.kernel.org; linux-kernel=40vger.kernel.org;
> rosa.pila=40samsung.com; dev.tailor=40samsung.com;
> faraz.ata=40samsung.com; muhammed.ali=40samsung.com;
> selvarasu.g=40samsung.com
> Subject: Re: =5BPATCH v2 3/3=5D arm64: dts: exynos: ExynosAutov920: Enabl=
e USB
> nodes
>=20
> On 22/01/2026 14:07, Pritam Manohar Sutar wrote:
> > Enable USB PHY and DWC3 USB controllers' nodes.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar=40samsung.com>
> > ---
> >  .../boot/dts/exynos/exynosautov920-sadk.dts   =7C 21
> +++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> > b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> > index f90f7704597c..5896dd69334a 100644
> > --- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> > +++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
> > =40=40 -160,15 +160,20 =40=40 &xtcxo =7B
> >  &usbdrd31_ssphy =7B
> >  	dvdd-supply =3D <&dummy_regulator>;
> >  	vdd18-supply =3D <&dummy_regulator>;
> > +	status =3D =22okay=22;
>=20
> You just added the node in the previous patch, so why it cant be enavled
> there?
>=20
> >  =7D;
> >
> >  &usbdrd31_hsphy =7B
> >  	dvdd-supply =3D <&dummy_regulator>;
> >  	vdd18-supply =3D <&dummy_regulator>;
> >  	vdd33-supply =3D <&dummy_regulator>;
> > +	status =3D =22okay=22;
> >  =7D;
> >
> >  &usbdrd31_dwc3 =7B
> > +	dr_mode =3D =22otg=22;
> > +	usb-role-switch;
> > +	role-switch-default-mode =3D =22peripheral=22;
>=20
> Why did you add incomplete node in previous commit?

The commit was added to align with the existing convention of separating=20
node addition and enabling logic in USB configurations. This approach is=20
referenced from commits such as:

https://lore.kernel.org/all/20250710-resends-july-exynos990-dt-v2-5-55033f7=
3d1b0=40mentallysanemainliners.org/
https://lore.kernel.org/all/20240429-usb-dts-gs101-v2-2-7c1797c9db80=40lina=
ro.org/

Please let me know if this commit to be merged in previous commit.

>=20
>=20
> Best regards,
> Krzysztof

Regards,
Pritam


