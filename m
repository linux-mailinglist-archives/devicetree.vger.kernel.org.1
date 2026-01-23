Return-Path: <devicetree+bounces-258753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPuwHX8jc2mUsgAAu9opvQ
	(envelope-from <devicetree+bounces-258753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:30:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAEF71BAD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 546633018BD8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 07:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E23A936072B;
	Fri, 23 Jan 2026 07:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="dWYxVf+U"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EC232939D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769153385; cv=none; b=t8VcZmWtxDBVVXRO5Qshyu6Vnu80HHNgVIQXSD+YPsh0OOUB8MsxVzXpIPSp7dsHbEZMSoUJ3zgSDSvomUY+MGHw81JI1IHZ1/DrL1fgZ2od0lHaC21Vuy9m2/22XeotVs4CJsNCxIvhfZpaBAUE/VYyA6moTJoMaxO+kohdwIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769153385; c=relaxed/simple;
	bh=G8iuiM8fIr7CeB7MRtGz2Z5+/qYbZCfKLGEVlaFQlg0=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=KFKPzPy7IEIZ6ZOA5djRfj4oV+JgXajtGKfzIC6dRopKMuTrRHxlwv/YOyt+vqXq15UN08OtBTSVTlHcqYGRpffbO3wYbXkFoZnRiQAkFnMH1yR67HhHgKVvw3rZnZ7KXwzuyfuZR6Tt5ep+5yvkI4TPeKkYSk6uStThf3f9zsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=dWYxVf+U; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260123072940epoutp027153919ed4e98580342662945768d8b6~NS6A8Fa5C3177131771epoutp02j
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:29:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260123072940epoutp027153919ed4e98580342662945768d8b6~NS6A8Fa5C3177131771epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769153380;
	bh=se6g0TattdJSbEIqCpX5SFJxKJzDqglis31YWPyUuk4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=dWYxVf+UFg5IYzT2GMxr5ENl71oKGOS4SGJ1kkT18bkT1UQa/CzM4XG93DYmfHy1L
	 dI7qwRYVIqajlfOaKHC/gEVCQ54n74gxim+oUEouKqb31/nvl3o1q0HOcgivLftFCh
	 krBZMx38CIml2Ypzxt5SJplKSj7S5rw0A9P0uMgg=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20260123072939epcas5p3d6ad87764073d97d7f64fb401b9b49fc~NS6AZm8OZ1589615896epcas5p3X;
	Fri, 23 Jan 2026 07:29:39 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.91]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4dy8hL4s8Dz2SSKZ; Fri, 23 Jan
	2026 07:29:38 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260123072938epcas5p35721c4fc75931b1ecf9a130ae0ee5b80~NS5_5T3N22035720357epcas5p3r;
	Fri, 23 Jan 2026 07:29:38 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260123072931epsmtip16ff5206b63b87f79870a973b080bbaa5~NS55RAmij2893528935epsmtip1A;
	Fri, 23 Jan 2026 07:29:31 +0000 (GMT)
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
Date: Fri, 23 Jan 2026 12:59:26 +0530
Message-ID: <000e01dc8c3a$05fa3df0$11eeb9d0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEa27yOGkcSyej7W4JCG0x5iKXFKwH8TUbRAqvnhIQBf1ky2raxgAdQ
Content-Language: en-in
X-CMS-MailID: 20260123072938epcas5p35721c4fc75931b1ecf9a130ae0ee5b80
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-258753-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,samsung.com:dkim,samsung.com:mid,infradead.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 1FAEF71BAD
X-Rspamd-Action: no action

Hi=20

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
>=20
>=20
> Best regards,
> Krzysztof


