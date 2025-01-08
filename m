Return-Path: <devicetree+bounces-136526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D4AA05785
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F1BD7A0378
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5EE1F6684;
	Wed,  8 Jan 2025 09:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="B4rLdW2y";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="VhHicdg4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B811D932F;
	Wed,  8 Jan 2025 09:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736330311; cv=none; b=QDRc6BixVSJtXjxsK/j/qTQeJwaD8mAbSbX/A9yIPRwNXo+AYH2F5CTJqCKJgafRA5NQA6X7JRSRR/X9v3EjYFKVV9gzdys6igHAIO5SR1H7BTuHFCGejzNd8hwimltqntxIdGfTCBrAqzvONcJ4tmRnx1knr5hCYAeqb3QEOj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736330311; c=relaxed/simple;
	bh=Gm9Q3Og1HQw9DpUDKux9PlH/Zq75Mxcxnafl2q+CW+k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FzgrKSve3oM46EfDO3h0tB929YIRa5x7vKBYe0qPjWCQrIdalTUi4bQSS3F7ODNS5uzk/Ss7lyCg0U2PYcnhX0FcV8JfjbnYmXQk01bi97jkPgstOn96F/5ifxCuB/nEAodYcpUxRIH3pUL/2IT8zFDh+G97zYMBbYxoXcgGC0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=B4rLdW2y; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=VhHicdg4 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736330308; x=1767866308;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0u83Xgz9I4bi5xsbhIsloF0YqIhh17FKuV4H0UoU5ww=;
  b=B4rLdW2y7kTnQVYti32j4CI+3/3h5EADx17BVLvS6DcYGXuLcOAXljxU
   3QgqLFuLjHLmH5CG7pXTxqK8mx4xrUhCJZmDS+pXpQFfoIL/+uw1SGnkq
   v1t2XFAnKpj9UjcUJLvmCKG5wYPH1f+RTb9Mjh8zy6GjTx1C7+dwP/Dfa
   eddN+5TfMMMHtX5A4/Cduu2WEAtUtC6d7S8p4QTsWPNirzkaeFAxzvhFm
   HPl9dwMKCd5H5bH+DwDVE4pTkMCgWIklwWtYIneyxnd1VCTUqRiyKiWVT
   wHh/Svt5nZa0tmAkHU6zDW5Ap3bQ2yGlOGJtSuMiMldTqlMcy8Tip5rST
   Q==;
X-CSE-ConnectionGUID: YHZAKEp0Ra2+QZ47KMTTEA==
X-CSE-MsgGUID: pbHsOkChQeqHt4VZdYxmHQ==
X-IronPort-AV: E=Sophos;i="6.12,297,1728943200"; 
   d="scan'208";a="40916525"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 08 Jan 2025 10:58:25 +0100
X-CheckPoint: {677E4C41-17-3C670366-E45AD810}
X-MAIL-CPID: 192DAC510A0192EB7D5B2486BF7B0BCE_4
X-Control-Analysis: str=0001.0A682F25.677E4C41.00A7,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D5C9A1651A1;
	Wed,  8 Jan 2025 10:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736330300;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0u83Xgz9I4bi5xsbhIsloF0YqIhh17FKuV4H0UoU5ww=;
	b=VhHicdg4cmMlIa1F2X9CupLrQLbLLmjPr7NpJeQ6MIGrHnX3sVq1Oc8JLQjCg7hTvCWKw1
	boqifhwPmry6Q3YELoOPMAXOjLrw5P36Pr0KZukXukZW8TOt64mHzzxZobSkbxkQlx1DTn
	a0GlsV8T0PLUrqQKM2hEoF6k/m1wXZk4/eBH/SjpspIsNQugy32eXtL+VjSnNrezWhFn9Q
	JT28YcOSbxLoqHFO11I7Vf0kd0/gBRwfYd8brMjJwpcBDjJoaQAGk7NHniltA/aUdcSD9W
	IQAU05XItLYZepfTWjJLIPnDaJVFUjNKK5Kxn6O2mRbffo7NIKScywhvQO0qog==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/5] arm64: dts: imx8-ss-hsio: Wire up DMA IRQ for PCIe
Date: Wed, 08 Jan 2025 10:58:18 +0100
Message-ID: <4427798.ejJDZkT8p0@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <Z31KrdxPULx8K5ao@lizhi-Precision-Tower-5810>
References: <20250107140110.982215-1-alexander.stein@ew.tq-group.com> <20250107140110.982215-2-alexander.stein@ew.tq-group.com> <Z31KrdxPULx8K5ao@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Frank,

Am Dienstag, 7. Januar 2025, 16:39:25 CET schrieb Frank Li:
> On Tue, Jan 07, 2025 at 03:01:06PM +0100, Alexander Stein wrote:
> > IRQ mapping is already present. Add the missing DMA interrupt.
>=20
> PCI host side have not use bridge's DMA yet although hardware support it.

So this is a driver limitation, right? So IMHO the device description is
independent from that and still correct, right?

Best regards,
Alexander

> >
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi b/arch/arm=
64/boot/dts/freescale/imx8-ss-hsio.dtsi
> > index 70a8aa1a67911..4bdfc15487cbc 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi
> > @@ -57,8 +57,9 @@ pcieb: pcie@5f010000 {
> >  		ranges =3D <0x81000000 0 0x00000000 0x8ff80000 0 0x00010000>,
> >  			 <0x82000000 0 0x80000000 0x80000000 0 0x0ff00000>;
> >  		#interrupt-cells =3D <1>;
> > -		interrupts =3D <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
> > -		interrupt-names =3D "msi";
> > +		interrupts =3D <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
> > +			     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
> > +		interrupt-names =3D "msi", "dma";
> >  		#address-cells =3D <3>;
> >  		#size-cells =3D <2>;
> >  		clocks =3D <&pcieb_lpcg IMX_LPCG_CLK_6>,
> > --
> > 2.34.1
> >
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



