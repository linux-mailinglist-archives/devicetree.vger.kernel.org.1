Return-Path: <devicetree+bounces-59558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9328A5F18
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 02:06:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA8B61F21930
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 00:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B1617E;
	Tue, 16 Apr 2024 00:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="F7ppEKB4"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5342368
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 00:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713226001; cv=none; b=OXpglBezNnvzLrlmDg/0Arz/jwemYSqoSuceaLmPELXBxjxLkQAPtU7i0sOWQDoWg3MbAfTCa4K7VclH41yud4FUUmUdQFh6Fah6gsJyM2CGjOPfhASz4XHb4qZIQnJL9ldS4MEsiuhjiVqekIyQmugGT1yix6sopSiCXwIL3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713226001; c=relaxed/simple;
	bh=QyLSFMnLyZTrIWne2uMliLaXgUgntV6qCH3ej7zG0OU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZTEUWL1xuMk2mz/zqE6H21lPYE7aIzbt8zTjMm5U1DaZS6gwF5at2IskxF+YJk9+YKuD1vJ0f9qp7JguwLuLQa2iaYPoVlvYOY9kO1vs3EDqMt+N0kPLnoCz2UW/m8EYVkmvQEPZF6Qh70dx0vZMb2eWaozzPJ7LXDYHpJInwHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=F7ppEKB4; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3ABAF2014E;
	Tue, 16 Apr 2024 08:06:34 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1713225995;
	bh=lucw5bYPMKim02N7+BLRIsslY3z/uvlzvsW9L8FAaGs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=F7ppEKB4GVQLh/KID1aQWiKJEb8DiewFiRNVnIK80203H2NhDPgdojBLjQSBAFi2i
	 klI/tjeUeeyO7Ej6/xlwcdhuELj/peyQRHBz7gvZzoXw3Uy1NuBHDgJjJHrXvWxOsm
	 +zrSp35DoBDuTK3P4T+cB1WDNN4CahIRfZ2OcJTaanOf8ftCnihUPFumQJLOPG28/H
	 Uxqx7imIR6UFdDYAcVewAdMbKZdx6ylEiRE6mrwrEJ4zND6GFzZMyoUr62u7Ad2NHe
	 o+DrYQ2eUdZ8LP8o4ojPxHiVCw8iH3EHSgmDfStBjPFKYpECGrdinSMNsW7AOzEia7
	 pWgATpfkOXq1Q==
Message-ID: <90ced7e271213da481f7c0ec883d0189671563e8.camel@codeconstruct.com.au>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: Update Odyssey SBEFIFO compatible
 strings
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Tue, 16 Apr 2024 09:36:33 +0930
In-Reply-To: <0363badd-f5b0-42bd-bdd5-de6e7b5ee8c6@linux.ibm.com>
References: <20240412144358.204129-1-eajames@linux.ibm.com>
	 <20240412144358.204129-4-eajames@linux.ibm.com>
	 <5c6f58cc13492988d307504d55cc5d31a512ab8c.camel@codeconstruct.com.au>
	 <0363badd-f5b0-42bd-bdd5-de6e7b5ee8c6@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-04-15 at 09:59 -0500, Eddie James wrote:
> On 4/14/24 19:54, Andrew Jeffery wrote:
> > On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
> > > Set the new compatible string for Odyssey SBEFIFOs so that they
> > > don't collect async FFDC.
> > >=20
> > > Signed-off-by: Eddie James <eajames@linux.ibm.com>
> > > ---
> > >   .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++-------=
---
> > >   .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++-------=
---
> > >   2 files changed, 64 insertions(+), 64 deletions(-)
> > >=20
> > > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts b/ar=
ch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > index 214b2e6a4c6d..3a2bfdf035cb 100644
> > > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> > > @@ -2545,7 +2545,7 @@ scom500: scom@1000 {
> > >   						};
> > >  =20
> > >   						sbefifo500: sbefifo@2400 {
> > > -							compatible =3D "ibm,p9-sbefifo";
> > > +							compatible =3D "ibm,ody-sbefifo";
> > >   							reg =3D <0x2400 0x400>;
> > >   							#address-cells =3D <1>;
> > >   							#size-cells =3D <0>;
> >=20
> > Bit of a drive-by comment as I'm not really holding any stakes here,
> > but did the hardware actually change?
>=20
>=20
> Yes, the hardware did change in the Odyssey version.

Should there not be a new platform DTS then? Seems a bit puzzling, but
again this is a bit of a drive-by comment.

Andrew

