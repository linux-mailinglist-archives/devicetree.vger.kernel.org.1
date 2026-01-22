Return-Path: <devicetree+bounces-258295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGajNUAAcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:47:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B746576F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:47:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 955636A2F9E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506F03C1FDE;
	Thu, 22 Jan 2026 10:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="qt1l22qt"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF27B33E35B
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769077925; cv=none; b=aQOD8IoZ1u8PWJSF0kSPHW+C7iCVxdU7BwZ9Z06RdL8XApkIKJnx03KqrnIOoYmes3OlGEi7UmsSBe3lNH5vzz4OiJwUY5a4k+SloHpw95Wttx1RiJaKeNut7xiwTVGbfOI6Djzb6FWg470rVT+sa9cdtZmc3yoh3HRv4Zf4cZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769077925; c=relaxed/simple;
	bh=4HGEOJdYofceavveyNvK694CLL+JytPY9nkr/yVGMk0=;
	h=From:To:Cc:In-Reply-To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:References; b=FYQGSqCRjKHgKwYwkqFEPjMJ2XmCnvCrWVWCVXezpK5fMqMUZznsCD8gj2kNd2B0EJOzddaM8ct2aLUnlB9y08RlLDgXf93QK7PJrnCYHfPcKa9ah0uOqurCSXzs4eYpPhkIPDbTft2fkdnP+BtpP0fFrOEUybkC0+1p+qJdY+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=qt1l22qt; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20260122103200epoutp043e24e69596c317009ca71c4d08be036e~NBv7yaAsI0323103231epoutp04r
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 10:32:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20260122103200epoutp043e24e69596c317009ca71c4d08be036e~NBv7yaAsI0323103231epoutp04r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1769077920;
	bh=tnRCYwReWiwurhPWhltxwYGFpC/0m//wbHgfZbzv9Kk=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=qt1l22qtdWEmi6By166P8BM1Bt4oRzDLCZNeTMSjLVGjwnM+vcKoYqhxgoMNVr9y3
	 IRHYW5/yQez6zyEWQDj/luX+fwWuxnbbPEd+3uRQ8VLt1iFtHyXMUT4IA73Cd3aW+a
	 ukcOhlfg+b5gF+3GSKqy2pfTUX81GU93R6gw6XCY=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20260122103159epcas5p30f2fcd4a52671b2b064775d618b9dc94~NBv7EUo_I3092930929epcas5p32;
	Thu, 22 Jan 2026 10:31:59 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.88]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4dxcnC0Vd2z6B9m9; Thu, 22 Jan
	2026 10:31:59 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20260122103158epcas5p4e3fdf02aa0032bde16aefcf8f7896ef9~NBv5zye7J2850828508epcas5p4P;
	Thu, 22 Jan 2026 10:31:58 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20260122103156epsmtip14657583bd1d596454c150368232302b9~NBv4DErW82162221622epsmtip1U;
	Thu, 22 Jan 2026 10:31:56 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<alim.akhtar@samsung.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20251024114845.2395166-1-pritam.sutar@samsung.com>
Subject: RE: [PATCH 0/3] Add and enable USB nodes for ExynosAutov920 SoC
Date: Thu, 22 Jan 2026 16:01:51 +0530
Message-ID: <000001dc8b8a$543269d0$fc973d70$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJC10xQ5cnsV5/dezQFmmCfFyZ4QgFqW1wVtIYQSwA=
Content-Language: en-in
X-CMS-MailID: 20260122103158epcas5p4e3fdf02aa0032bde16aefcf8f7896ef9
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251024114018epcas5p4e09ca8ea47ff2295a08a162864a47284
References: <CGME20251024114018epcas5p4e09ca8ea47ff2295a08a162864a47284@epcas5p4.samsung.com>
	<20251024114845.2395166-1-pritam.sutar@samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258295-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[samsung.com,none];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,samsung.com:dkim,samsung.com:mid,infradead.org:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pritam.sutar@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 88B746576F
X-Rspamd-Action: no action

Hi All,=20

> -----Original Message-----
> From: Pritam Manohar Sutar <pritam.sutar=40samsung.com>
> Sent: 24 October 2025 05:19 PM
> To: robh=40kernel.org; krzk+dt=40kernel.org; conor+dt=40kernel.org;
> alim.akhtar=40samsung.com
> Cc: devicetree=40vger.kernel.org; linux-arm-kernel=40lists.infradead.org;=
 linux-
> samsung-soc=40vger.kernel.org; linux-kernel=40vger.kernel.org;
> rosa.pila=40samsung.com; dev.tailor=40samsung.com; faraz.ata=40samsung.co=
m;
> muhammed.ali=40samsung.com; selvarasu.g=40samsung.com;
> pritam.sutar=40samsung.com
> Subject: =5BPATCH 0/3=5D Add and enable USB nodes for ExynosAutov920 SoC
>=20
> This SoC has 2 USB typeC and 2 typeA ports those are DWC3 DRD controllers=
 and
> amoung them, one is USB3.1 DRD combo phy and three
> USB2.0 phy controllers. This patchset adds and enables USB and USB-PHY no=
des
> in dts.
>=20
> PMIC driver is not implmented yet, we rely on USB LDOs being enabled by t=
he
> bootloader and used dummy regulators for now.
>=20
> To drive vbus for host mode, it needs GPIO pin to enable vbus regulator.
> GPIO expander is present in the dts, we used it to enable the vbus regula=
tor
> using GPIO.
>=20
> USB ports are configured as OTG, and default mode is configured as periph=
eral.
> These configurations might be changed based on requirements.
>=20
> This patchset has dependancy on schema and driver implementation=5B1=5D a=
nd role
> switch control from userspace=5B2=5D patches.
> =5B1=5D: https://lore.kernel.org/linux-phy/20251010070912.3758334-1-
> pritam.sutar=40samsung.com/
> =5B2=5D: https://lore.kernel.org/linux-usb/20251024085455.789555-1-
> pritam.sutar=40samsung.com/

Above dependent patches are merged, can you please review the patchset?=20

>=20
> Pritam Manohar Sutar (3):
>   arm64: dts: exynos: ExynosAutov920: Add USB and USB-phy nodes
>   arm64: dts: exynos: ExynosAutov920: Add regulators for the USB
>   arm64: dts: exynos: ExynosAutov920: Enable USB nodes
>=20
>  .../boot/dts/exynos/exynosautov920-sadk.dts   =7C 160 +++++++++++++++++
>  .../arm64/boot/dts/exynos/exynosautov920.dtsi =7C 162 ++++++++++++++++++
>  2 files changed, 322 insertions(+)
>=20
> --
> 2.34.1

Thank you,=20

Regards,
Pritam=20



