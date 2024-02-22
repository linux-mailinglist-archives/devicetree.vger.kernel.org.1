Return-Path: <devicetree+bounces-44950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 235DE860371
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B84381F24FA4
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 20:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610666E5EC;
	Thu, 22 Feb 2024 20:03:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B44B5490D
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 20:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708632194; cv=none; b=FqarTKXkT2msbVqECFvIvum7JLNurszk1klRe70HIs4SZEzSV4ZOpOny9hUqhL39w7ePKutnU7S4CvD8zmvk2TZZl8avMxMkMdG0E0IpktG45GcA2ujC08ClfnNx7pAtbUfgs/yZwnd5KUR6wWJ8un+6YjreqyOg2K/DQ69yl5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708632194; c=relaxed/simple;
	bh=CX160NET1Fcfq2rMl6x/JBoCh5EQAykHpH7T6BBqCrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=owE4/u+D1tk3IkxaqW+B6B+1CHcSNFi7wa6ixjzJR/5/iavnHZeGEmx1OWmt1wOMbgmgdw93VgClHcGWffR2zeoshe0Qehx+FT84vBTp6JZUwbElj/IScV5L+uYBpE5Bsqz9acdht4vAkQIIKf6l95cqXK5YIG8jAMTGMi0n338=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdFH6-0006yI-D8; Thu, 22 Feb 2024 21:02:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdFH4-002I2v-6x; Thu, 22 Feb 2024 21:02:30 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rdFH4-002rcW-0M;
	Thu, 22 Feb 2024 21:02:30 +0100
Date: Thu, 22 Feb 2024 21:02:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: conor.dooley@microchip.com, v.georgiev@metrotek.ru, mdf@kernel.org,
	hao.wu@intel.com, yilun.xu@intel.com, trix@redhat.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: fpga: microchip,mpf-spi-fpga-mgr: document
 CPOL/CPHA support
Message-ID: <20240222200230.ulhguouu37nm6inu@pengutronix.de>
References: <20240221191247.3643671-1-m.felsch@pengutronix.de>
 <20240222-rotten-truck-cf5e4b681ac1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222-rotten-truck-cf5e4b681ac1@spud>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-02-22, Conor Dooley wrote:
> On Wed, Feb 21, 2024 at 08:12:47PM +0100, Marco Felsch wrote:
> > Microchip FPGAs can communicate in different modes, so document them to
> > avoid dt-validate warnings.
> 
> Are you sure it can "communicate in different modes"?

No I'm not but I didn't found an overview within the FPGA datasheet [1]
which modes are supported. What I did found was an note which says:

"""
1. Parameters are referenced to the active edge of SCK, which depends on
the configured SPI protocol (for example, Motorola SPI mode uses rising
edge as active edge if SPO = 0)
"""

Therefore I thought that this can be configured somehow differently.

[1] https://www.microsemi.com/document-portal/doc_view/136519-ds0141-polarfire-fpga-datasheet

> The documentation actually says "Motorla SPI Mode 3 is required to
> communicate with M2S, M2GL, and MPF devices using dedicated system
> controller SPI port" with mode 3 being SPO = SPH = 1:
> https://www.microsemi.com/document-portal/doc_view/137543-spi-directc-sp1-v2-0-user-guide

Thanks for the Pointer, there are plenty documents for the Polarfire
FPGA.

> I suspect the answer is that it can actually communicate in different
> modes (because I don't recall setting those options), but the binding
> should enforce the correct way of doing it IMO.

Sure, I will rephrase my commit message to:

"""
dt-bindings: fpga: microchip,mpf-spi-fpga-mgr: document CPOL/CPHA

Using the dedicated system controller SPI port requires Motorola SPI
Mode 3 according the SPI-DirectC v2.0 User Guid [1]. So require the
spi-cpol and spi-cpha to be set.

[1] https://www.microsemi.com/document-portal/doc_view/137543-spi-directc-sp1-v2-0-user-guide
"""

Regards,
  Marco



> 
> Cheers,
> Conor.
> 
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  .../devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml   | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
> > index a157eecfb5fc..bb9a7d16db60 100644
> > --- a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
> > +++ b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
> > @@ -22,6 +22,9 @@ properties:
> >      description: SPI chip select
> >      maxItems: 1
> >  
> > +  spi-cpol: true
> > +  spi-cpha: true
> > +
> >  required:
> >    - compatible
> >    - reg
> > -- 
> > 2.39.2
> > 
> > 



