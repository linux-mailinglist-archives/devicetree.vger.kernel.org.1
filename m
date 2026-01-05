Return-Path: <devicetree+bounces-251631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ACDCF5238
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 19:02:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B662307CA7F
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BEB3246E4;
	Mon,  5 Jan 2026 17:56:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926E33EB0E
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635766; cv=none; b=I04jn4+CR2EI4E1r1/B5l/vYXUUwbgb3zuDbKVCjzg+QgQ55ZfUAMBxc4hRjDCIHXuaxTOgzkpYbdEwwTRELZllW93wSueVnBlGQeVOdxWMm/56y3zMKHTdP1Hm1Z0o17sybzrwo7SbXlPYyp8QOcmN8CZFNa/1GQlfjRpZSqqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635766; c=relaxed/simple;
	bh=2cEm89txnQgoj7rxkpfgPP1gnt6bocXkebnPmm6x4bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YpnvRSQs8NDr/fcgtta+0jK1KKg4vxULv02wgt6JjBjRgL5bHx1hTymagxr+iCWUH7rXqpdxCsdmUhAkyc6nOAJhSiV3ZsphI31+fyosxSeIUI/IZa/heMmayyScE22w8ApNoHfc3WSwIEw2r6fLMPYteC/+uCk8b/6oY50aieg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vcony-0006UG-VA; Mon, 05 Jan 2026 18:55:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vcony-009DOu-28;
	Mon, 05 Jan 2026 18:55:46 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vcony-00CYZL-1f;
	Mon, 05 Jan 2026 18:55:46 +0100
Date: Mon, 5 Jan 2026 18:55:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp-skov: add pinctrl-name 'reset' to
 fix CHECK_DTB warning
Message-ID: <20260105175546.i2d6bfhqt72xbpfb@pengutronix.de>
References: <20251229165127.4006134-1-Frank.Li@nxp.com>
 <20260105111448.slm2yqiwivx2t3vh@pengutronix.de>
 <aVvzKQKjaZUVs5oi@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVvzKQKjaZUVs5oi@lizhi-Precision-Tower-5810>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 26-01-05, Frank Li wrote:
> On Mon, Jan 05, 2026 at 12:14:48PM +0100, Marco Felsch wrote:
> > Hi Frank,
> >
> > On 25-12-29, Frank Li wrote:
> > > Add pinctrl-name 'reset' to fix below CHECK_DTB warnings:
> > >   arch/arm64/boot/dts/freescale/imx8mp-skov-basic.dtb: switch@5f (microchip,ksz9893): pinctrl-names: ['default'] is too short
> > > 	from schema $id: http://devicetree.org/schemas/net/dsa/microchip,ksz.yaml#
> > >
> > > The commit (e469b87e0fb0d dt-bindings: net: dsa: microchip: Add strap
> > > description to set SPI mode" force use two pinctrl-name 'default' and
> > > 'reset'. switch@5f doesn't use SPI, so it is safe to use the same pinctrl
> > > setting for both.
> >
> > please see:
> > - https://lore.kernel.org/all/20251112084717.ea7fchu7jcz6dzsi@pengutronix.de/
> >
> > I stumbled over the same warning, but came to the conclusion, that the
> > dt-bindings should be fixed instead of workaround broken bindings within
> > the dtb.
> 
> I have not seen "the conclusion" at above thread. I think patch 'reset' may
> be reasonable for SPI pin, which used for stub at reset. And there are not
> good method to distinguish under SPI or I2C.

The linked-linked dt-patch from Bastien adapts the pinctrl-names
unconditionally for all KSZ switches, while he writes within the commit
message, that only KSZ8463 should be affected. Therefore the
straps-rxd-gpios was added only for the microchip,ksz8463.

Furthermore the pinctrl-names should be either:
 - default
or
 - default
 - reset

since the 'reset' pinctrl is optional if no strapping pins are
connected.

So IMHO the correct fix should be a dt-bindings fix.

Regards,
  Marco


> 
> Frank
> 
> >
> > Regards,
> >   Marco
> >
> > >
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> > > index 020f20c8ce667..7d2fc5fdd3bd1 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi
> > > @@ -373,8 +373,8 @@ &i2c4 {
> > >
> > >  	switch: switch@5f {
> > >  		compatible = "microchip,ksz9893";
> > > -		pinctrl-names = "default";
> > > -		pinctrl-0 = <&pinctrl_switch>;
> > > +		pinctrl-names = "default", "reset";
> > > +		pinctrl-0 = <&pinctrl_switch>, <&pinctrl_switch>;
> > >  		reset-gpios = <&gpio5 1 GPIO_ACTIVE_LOW>;
> > >  		reg = <0x5f>;
> > >
> > > --
> > > 2.34.1
> > >
> > >
> > >
> >
> > --
> > #gernperDu
> > #CallMeByMyFirstName
> >
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

