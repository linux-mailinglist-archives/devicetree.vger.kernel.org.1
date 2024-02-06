Return-Path: <devicetree+bounces-38937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8612684AF36
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B881E1C225B9
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A00912AACD;
	Tue,  6 Feb 2024 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="VSiCfY9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EED129A8B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707205833; cv=none; b=CbVBEDKUO3SBxCI7g5LmxHusfi/kjyEzUjXj4xXVcOWNoURrkIw8Pmy/WgAM5aE1GmPMcWFLpq0ppDI1MiFiwcX83+r/QHw4xccG4g7V5ttfZ56BXmyCvH0jewmCFd/nNPIk844JP8HEzMFYj/jH517QNVa51p0VKUDLT4TzrJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707205833; c=relaxed/simple;
	bh=JCBcUNoMdIHWN3uJmLxl2pq9VOZCktY9kB7skKbg65M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OAIeScc8m6XA1vQFgfFqZz740H3mSt2JHUw+LBOPtGBruDl0JY/s7HX2i1yirqa5s+GKDYUGpb4ZS5txa7XyPoQGT51nYVSTKXTiKW98jf45G5uYyUf2oqi/23c7g2Fspr9VL/Hv6r11ELWo1xMwaWbej3UdRa/N+kL3EOjW9KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=VSiCfY9o; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707205830; x=1738741830;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=zxC+ukvDyW/Jeowql3c1BGxhU5Td/3VxaPsWNrzQwkE=;
  b=VSiCfY9oXDr3EwUFujLf0OFMsIt1KW6h+Sang+GyzkW82wEVGGEyjjgZ
   lDugvi/nhRQIqQmaR7OSOqOSm/fe4TOW5qX5YPyJKSUnPhEPcBeiv3Vj9
   U9/SPPk5RS6kiLVHWpNe1BzcNwESOgfN7wkqb+cC+uEsgp2Si30p5Iw0O
   gzw+8nleP58X9AsVKwCf2++LWoIOjkuHuFx/HpZ95RCQR8Gv0KiZVzlW+
   a4E2FbMpzJMRK7jFn7EeRPeXJqExpzExt/DZL021ZbTMpFw+rdu3YwDCo
   eHU7N7Qh8MD5clhERYInuL9UTaMXYQcZdknqmv0OaP4Yu3AVLzhb3DfBC
   A==;
X-IronPort-AV: E=Sophos;i="6.05,246,1701126000"; 
   d="scan'208";a="35261519"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Feb 2024 08:50:21 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A9C02280075;
	Tue,  6 Feb 2024 08:50:21 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8: Fix lpuart DMA channel order
Date: Tue, 06 Feb 2024 08:50:22 +0100
Message-ID: <3282920.44csPzL39Z@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <ZbfdsY8MkQrIzOqG@lizhi-Precision-Tower-5810>
References: <20231219123439.3359318-1-alexander.stein@ew.tq-group.com> <20231219123439.3359318-2-alexander.stein@ew.tq-group.com> <ZbfdsY8MkQrIzOqG@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

Am Montag, 29. Januar 2024, 18:17:37 CET schrieb Frank Li:
> On Tue, Dec 19, 2023 at 01:34:39PM +0100, Alexander Stein wrote:
> > Bindings say DMA channels are in order Rx, Tx. Adjust the DT nodes
> > accordingly.
> >=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >=20
> >  arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi index
> > a180893ac81e..0f48796e32b2 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> > @@ -93,8 +93,8 @@ lpuart0: serial@5a060000 {
> >=20
> >  		assigned-clocks =3D <&clk IMX_SC_R_UART_0=20
IMX_SC_PM_CLK_PER>;
> >  		assigned-clock-rates =3D <80000000>;
> >  		power-domains =3D <&pd IMX_SC_R_UART_0>;
> >=20
> > -		dma-names =3D "tx","rx";
> > -		dmas =3D <&edma2 9 0 0>, <&edma2 8 0 1>;
> > +		dma-names =3D "rx", "tx";
> > +		dmas =3D <&edma2 8 0 0>, <&edma2 9 0 1>;
>=20
> edma device bind header file already merged.
> Please include <dt-binding/dma/fsl-edma.h>
>=20
> Change "1" to "FSL_EDMA_RX".

Thanks, I was not aware of that change. Meanwhile I noticed in my patch the=
=20
flags were not switched as well.

Best regards,
Alexander

> Frank
>=20
> >  		status =3D "disabled";
> >  =09
> >  	};
> >=20
> > @@ -107,8 +107,8 @@ lpuart1: serial@5a070000 {
> >=20
> >  		assigned-clocks =3D <&clk IMX_SC_R_UART_1=20
IMX_SC_PM_CLK_PER>;
> >  		assigned-clock-rates =3D <80000000>;
> >  		power-domains =3D <&pd IMX_SC_R_UART_1>;
> >=20
> > -		dma-names =3D "tx","rx";
> > -		dmas =3D <&edma2 11 0 0>, <&edma2 10 0 1>;
> > +		dma-names =3D "rx", "tx";
> > +		dmas =3D <&edma2 10 0 0>, <&edma2 11 0 1>;
> >=20
> >  		status =3D "disabled";
> >  =09
> >  	};
> >=20
> > @@ -121,8 +121,8 @@ lpuart2: serial@5a080000 {
> >=20
> >  		assigned-clocks =3D <&clk IMX_SC_R_UART_2=20
IMX_SC_PM_CLK_PER>;
> >  		assigned-clock-rates =3D <80000000>;
> >  		power-domains =3D <&pd IMX_SC_R_UART_2>;
> >=20
> > -		dma-names =3D "tx","rx";
> > -		dmas =3D <&edma2 13 0 0>, <&edma2 12 0 1>;
> > +		dma-names =3D "rx", "tx";
> > +		dmas =3D <&edma2 12 0 0>, <&edma2 13 0 1>;
> >=20
> >  		status =3D "disabled";
> >  =09
> >  	};
> >=20
> > @@ -135,8 +135,8 @@ lpuart3: serial@5a090000 {
> >=20
> >  		assigned-clocks =3D <&clk IMX_SC_R_UART_3=20
IMX_SC_PM_CLK_PER>;
> >  		assigned-clock-rates =3D <80000000>;
> >  		power-domains =3D <&pd IMX_SC_R_UART_3>;
> >=20
> > -		dma-names =3D "tx","rx";
> > -		dmas =3D <&edma2 15 0 0>, <&edma2 14 0 1>;
> > +		dma-names =3D "rx", "tx";
> > +		dmas =3D <&edma2 14 0 0>, <&edma2 15 0 1>;
> >=20
> >  		status =3D "disabled";
> >  =09
> >  	};


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



