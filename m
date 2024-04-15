Return-Path: <devicetree+bounces-59206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CB18A4667
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 02:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3382E1C20EFF
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 00:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B48A639;
	Mon, 15 Apr 2024 00:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="JJCwfSnh"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF851134A5
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 00:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713142452; cv=none; b=YX50s0KZYd4HoZ2RDsmWLl5Ecrpkfvl2V9NHKIJcqcuXVTDw/l9CQVqGqJVHGe/euIjIxdOPsYPbMoc6iKgqoBQdWhQ0DSg9jyCE+9EID7pLfsZQC8LGyPrv9jrbtwAcDeGrqGgeTG+vjYUl+Ht75ARlLqwwfWVNcHC65k4iOL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713142452; c=relaxed/simple;
	bh=uDI5ag+UYyQ6uUIKn2HnErW8TfnD3slgt4bV8o5JNtQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tElvwnZqQsVktVQeRnO+9N0F0Aik1dgn1Qi74Ix/QAnhgXcl3Y76wE1sIxxZOt7Q5udFBMzMAyKygEqbeYh9o/SpXN5Q/Fh1+aV1sY3aqxuH55nB6MKz+SQBEIQOrB5dKaAAVNoaCDdqEvB0uHwpi3yDXfrZbv5HidP78FA7rbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=JJCwfSnh; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 1BE9C201BD;
	Mon, 15 Apr 2024 08:54:08 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1713142448;
	bh=obtxTmSKvgPXEQa4POBsx1nO7wzpz7LF4Uo923gf2K0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=JJCwfSnhnSVvmpuEJ5zdraw7TH40sS5X/WIOoIvGzmJFUiyg3KVO2b3SvZ4uvFOZT
	 +RSdzZ2a8d4871p4WM1OKqkclyFcgxE8ogk84R16VIWfjne6j8eiVRihxJf8v6E7tr
	 UxLVYSb8tKfYoxExPNctJ73CzPUzjAhyNF1ahJmFnBnE22R4fb2lVXcZZYHcAJ3O7q
	 idE8139o9L50T9UwgUiQUniQfhi6BJhZeaqNT/cI7J7UgSSSuOtUezOxl8R374brv2
	 EzBDb1iuTIo/re+oIf2C+uyFx9JzF9nxFBKMiLb8w1PWLNhKikc9Iyc9718C+3sR3c
	 aA1OlOFD2vnBg==
Message-ID: <5c6f58cc13492988d307504d55cc5d31a512ab8c.camel@codeconstruct.com.au>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: Update Odyssey SBEFIFO compatible
 strings
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Mon, 15 Apr 2024 10:24:07 +0930
In-Reply-To: <20240412144358.204129-4-eajames@linux.ibm.com>
References: <20240412144358.204129-1-eajames@linux.ibm.com>
	 <20240412144358.204129-4-eajames@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
> Set the new compatible string for Odyssey SBEFIFOs so that they
> don't collect async FFDC.
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++----------
>  .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++----------
>  2 files changed, 64 insertions(+), 64 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts b/arch/a=
rm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> index 214b2e6a4c6d..3a2bfdf035cb 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
> @@ -2545,7 +2545,7 @@ scom500: scom@1000 {
>  						};
> =20
>  						sbefifo500: sbefifo@2400 {
> -							compatible =3D "ibm,p9-sbefifo";
> +							compatible =3D "ibm,ody-sbefifo";
>  							reg =3D <0x2400 0x400>;
>  							#address-cells =3D <1>;
>  							#size-cells =3D <0>;


Bit of a drive-by comment as I'm not really holding any stakes here,
but did the hardware actually change?

Would it be better to request the behaviour by a property rather than
changing the compatible?

Andrew

