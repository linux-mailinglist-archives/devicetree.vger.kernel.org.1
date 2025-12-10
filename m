Return-Path: <devicetree+bounces-245559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D50CB2565
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A8BD3026AF6
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 07:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B2D42E2DF2;
	Wed, 10 Dec 2025 07:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="FV9tK3GH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9502D1F12E0;
	Wed, 10 Dec 2025 07:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765353576; cv=none; b=syBS1sH3OQG8tH5+nP9NK1+qiI9iowz1awqWxsxgXPx3Eb8qaIFXXzdbHGah492Sye64aKXRxM6/3Ba2CxKuFL6cxC/LG4Kw46eBDjRGy7hlAgEWKvs4FY9c2U9vPJggUeDxNXEVt3fMzEj30d5DdJQoS6SgdHL9MXYOK5RYoI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765353576; c=relaxed/simple;
	bh=Xolxt+QrhaS9hz2X8iVtg4ETZGnI8hZfmTwleP2LN90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C07k2ITdxTfqAoQbhote1Fy2jQCnX5rBg/vrCJmGh08lOQzwCJSnBkgiSviqDhjm56LOFPgWoJIyO1ci+x7aqPQ+VBxgXWcWwLeAbCZzgr23DxotRCdMQjkMzYEMEilqBsv8VdCDnfbDPMOa5E3nhVi9xC3fVh8HdhzKrIqf3u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=FV9tK3GH; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id E40B91F928;
	Wed, 10 Dec 2025 08:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1765353572;
	bh=igHAM7gpcqVQ023jKZCGrSxBPCfNLJIiGNDNPhqNs6g=; h=From:To:Subject;
	b=FV9tK3GH9+oCoarJLRn2k2gThBeYpH0UtYAnzjnzrc+jMwk/3CQRKfr5y9zSvoR2v
	 yuY/U/ohMm+p9M4yvn9jbnNd7H9vbX7/pL7qf+zudusHBIQTjTCaIftiu/mWT+px1q
	 tRhfubMoLByJVVJw0QPH2drk874uNOS9xu1/44lJVwFVDrfyElZj3gYt45i2eKLz4J
	 NF/pZSp7Et9vS3zywYn+57F2ZzuHPWFwz1E3RCuRqm06z7fOc0hxAB5NEk+HeP7fX9
	 aJL8tk/maftlYWT9XAlBgH0ylXwT21/JCE/x+mn7ah3BIqZ1E2EzjYtRIPpPpYxTxW
	 CrZhRaKUw2duA==
Date: Wed, 10 Dec 2025 08:59:27 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Lei Xu <lei.xu@nxp.com>
Cc: Francesco Dolcini <francesco@dolcini.it>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, justin.jiang@nxp.com,
	qijian.guo@nxp.com
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx95: Add support for i.MX95
 15x15 FRDM board
Message-ID: <20251210075927.GA13526@francesco-nb>
References: <20251207-127-v1-0-5a2eeb69f150@nxp.com>
 <20251207-127-v1-2-5a2eeb69f150@nxp.com>
 <20251208065707.GA15128@francesco-nb>
 <aTkbyAHjrwzTsfO8@lsvm07u0000156.swis.us-west-2.aws.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTkbyAHjrwzTsfO8@lsvm07u0000156.swis.us-west-2.aws.nxp.com>

On Tue, Dec 09, 2025 at 11:05:44PM -0800, Lei Xu wrote:
> On Mon, Dec 08, 2025 at 07:57:07AM +0100, Francesco Dolcini wrote:
> > On Sun, Dec 07, 2025 at 05:26:06AM -0800, Lei Xu wrote:
> > > The i.MX95 15x15 FRDM board is a compact and cost-effective development
> > > platform based on the i.MX95 applications processor.
> > 
> > ...
> > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> > > new file mode 100644
> > > index 000000000000..61e815c858b8
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm.dts
> > 
> > ...
> > 
> > > +
> > > +/* Default settings in i.mx95.dtsi are for i.MX95 19x19 package.
> > > + * Override here for the i.MX95 15x15 package.
> > > + */
> > > +&netc_bus0 {
> > > +	msi-map = <0x0 &its 0x60 0x1>,	//ENETC0 PF
> > > +		  <0x10 &its 0x61 0x1>, //ENETC0 VF0
> > > +		  <0x20 &its 0x62 0x1>, //ENETC0 VF1
> > > +		  <0x40 &its 0x63 0x1>, //ENETC1 PF
> > > +		  <0x50 &its 0x65 0x1>, //ENETC1 VF0
> > > +		  <0x60 &its 0x66 0x1>, //ENETC1 VF1
> > > +		  <0x80 &its 0x64 0x1>, //ENETC2 PF
> > > +		  <0xc0 &its 0x67 0x1>; //NETC Timer
> > > +	iommu-map = <0x0 &smmu 0x20 0x1>,
> > > +		    <0x10 &smmu 0x21 0x1>,
> > > +		    <0x20 &smmu 0x22 0x1>,
> > > +		    <0x40 &smmu 0x23 0x1>,
> > > +		    <0x50 &smmu 0x25 0x1>,
> > > +		    <0x60 &smmu 0x26 0x1>,
> > > +		    <0x80 &smmu 0x24 0x1>,
> > > +		    <0xc0 &smmu 0x27 0x1>;
> > > +};
> > 
> > If the 19x19 and 15x15 i.MX95 requires something different you should
> > have a different soc dtsi. Probably creating a new imx95-$something
> > dtsi, that includes the existing imx95.dtsi and override this property.
> > 
> > This solution does not scale, please fix it.
> > 
> > Francesco
> >
> 
> Hello, Francesco
> 
> The original comment is misleading because this configuration applies
> to the board rather than the SoC.

If this is a board configuration, why it is in imx95.dtsi in the first
place?

In addition, I am interested in the topic, can you explain in more
detail why this is needed and what is this achieving?

Francesco


