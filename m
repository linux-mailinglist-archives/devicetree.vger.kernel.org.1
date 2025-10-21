Return-Path: <devicetree+bounces-229176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0FBBF4BA8
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:41:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C0BF4E1F4A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 06:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6F1265CD0;
	Tue, 21 Oct 2025 06:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="duoJSdaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay04-hz1.antispameurope.com (mx-relay04-hz1.antispameurope.com [94.100.132.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646722638BC
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.204
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761028867; cv=pass; b=E1HLQaCssSO+1LU7rtdYqbCzZMMDPFL4/LG114tJPRaCpI9p82F9pIlXg5anJLzh570sDizxxRLQB2ZVevWcES1fEch52H201XXSVWVQhD6m07vkMoCXzP8BDgao71LLpt4BYnCIdncruHLB2I01qTQtCXLE4UpvSGT/1Viop1k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761028867; c=relaxed/simple;
	bh=SpnaLSUzd6z9CIBy7sLsPvKdsKrn1/W9eLsKA1qBApU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FT2FQhJh6DK1v0URIeqDlltW90KyNXwTyM2lvoc7DLl1G4/yNStwCHA2CJfD6hE69Zbtfz0ahU1FtLdofgxt/H54Rh9LXEomCmCP8O3ruf+XIjzO/hFg/1oinLVbaAPH+2+FSIT0Dz/DYC3fPE5SPrKZq0apKZ8mVnL4WEDzlUM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=duoJSdaq; arc=pass smtp.client-ip=94.100.132.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate04-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Z2BoxPYyqOK4bolIbnOAqTEAwN1RnM0dwCy8BYozWgc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761028812;
 b=tgu0rCWeLm+iVZC4aj6aXmDUBClCF2mEugeByUgLAQnxgZC2AxPZlhWpb4esBKRucljxZdZT
 vD/oJVPc8UQ/EazEHgsr+GzVDXFefZKpNQ4qrHLz8SqoIjyt6/S5hjl9ZK+hl64cGcpPMyhc6Io
 3zW3XgBgUSbbboy5TQzMVzW1cy5u30FfPieF+rs7SomVev/eR8549W1jzga4qL3wKj2fQ1gWChE
 Woe337diPZk1wTBNNikOQx8N+7Uk42VtOKGt84e0+k+14eyVPENBCtjRhOVeMq1wEdHFu4OMfUF
 Dfy/xCdOLls0/66Kqj8So36CRNj9qz0aE+1espNgr6B7g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761028812;
 b=YpM+GjRQHGa45VytJbMhhNIXwIichud7EAkg9+2bVRuMveEossSMvyM3/DMgwqE3b1jpLT1P
 i3xC+DMjuP/ttEY0UWWni/6iXaeV24C6jWKSppxUGDTK8zMiWXKh/8s3z1HBF39vvQhM8DhFf3K
 EZ/XeQpA29DTlxDO19KUcI11KtS3ZLt43MgU293k+WLf5aTVoilFUqO7LtdQAxx3NAzVP1/4JMa
 AFp4kCNnzzl0kT1ylJB0r6HsvIRNYQHn7kArEVVo99Gg3SlGCHUb6pU68TaTGMIgFGDGyatRJ28
 lVMllinKmzrvG9dVlsXXlFQYodqYD6/vvJeZRxQSuhbQQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay04-hz1.antispameurope.com;
 Tue, 21 Oct 2025 08:40:12 +0200
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 82D03CC0CC7;
	Tue, 21 Oct 2025 08:40:05 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: fsl-ls1028a: fix USB node compatible
Date: Tue, 21 Oct 2025 08:40:05 +0200
Message-ID: <5053235.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <aPaXaFigEh50sdZC@lizhi-Precision-Tower-5810>
References:
 <20251020133754.304387-1-alexander.stein@ew.tq-group.com>
 <aPaXaFigEh50sdZC@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay04-hz1.antispameurope.com with 4crN2Y6qXhzRjXw
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fc7bbb2e0881c9dff808c6ef9b35ca67
X-cloud-security:scantime:2.297
DKIM-Signature: a=rsa-sha256;
 bh=Z2BoxPYyqOK4bolIbnOAqTEAwN1RnM0dwCy8BYozWgc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761028812; v=1;
 b=duoJSdaqFI79+tbzs8oAxPLcD/GhwT5ODA9DQ6Vcru9EWZZVViO4UteP5hY3s45c9qr4GlRS
 tr6Q+k6rEN9/rmvpU4ps52RgbJLlPkwXskElOzvGPC4L+lxJpu067tjWJVM8+EIWnPkmNsgjNOu
 +CCBFxFe+pz36JvPXznWw0GW1acyxCmhhmP6OqHR9DzkeSr6WqfeeQeaeWRontbckA+z/cjJ1xH
 VF/4wCanNEOMXz7cEYjDLz1HrjwIHZYDI/zde0rReIQoJ1Q5JtOBsnsx0usf4NQngElth5yKbUX
 GgwfqLLgBao8K4UXJEYYcBdAsAkFjsyGCdStHuyZbVLAw==

Hi Frank,

Am Montag, 20. Oktober 2025, 22:11:20 CEST schrieb Frank Li:
> On Mon, Oct 20, 2025 at 03:37:53PM +0200, Alexander Stein wrote:
> > usb/fsl,ls1028a.yaml says the compatible is just a simple
> > 'fsl,ls1028a-dwc3'
> >
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> Thanks, but it is similar with last patches of
>=20
> https://lore.kernel.org/imx/20250929-ls_dma_coherence-v5-4-2ebee578eb7e@n=
xp.com/
>=20
> Waiting for shanw pick dts part.

Ah, I missed that. Thanks for the link

Best regards
Alexander

>=20
> Frank
>=20
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm6=
4/boot/dts/freescale/fsl-ls1028a.dtsi
> > index 7d172d7e5737c..ddfb007dda920 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -613,7 +613,7 @@ gpio3: gpio@2320000 {
> >  		};
> >
> >  		usb0: usb@3100000 {
> > -			compatible =3D "fsl,ls1028a-dwc3", "snps,dwc3";
> > +			compatible =3D "fsl,ls1028a-dwc3";
> >  			reg =3D <0x0 0x3100000 0x0 0x10000>;
> >  			interrupts =3D <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
> >  			snps,dis_rxdet_inp3_quirk;
> > @@ -623,7 +623,7 @@ usb0: usb@3100000 {
> >  		};
> >
> >  		usb1: usb@3110000 {
> > -			compatible =3D "fsl,ls1028a-dwc3", "snps,dwc3";
> > +			compatible =3D "fsl,ls1028a-dwc3";
> >  			reg =3D <0x0 0x3110000 0x0 0x10000>;
> >  			interrupts =3D <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> >  			snps,dis_rxdet_inp3_quirk;
> > --
> > 2.43.0
> >
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



