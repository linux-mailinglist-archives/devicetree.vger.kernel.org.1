Return-Path: <devicetree+bounces-99194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 819AA969366
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 08:05:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33C882841E4
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA401C62AF;
	Tue,  3 Sep 2024 06:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de [134.119.228.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EF817966F
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 06:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.119.228.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725343534; cv=none; b=rs2+J6CsATBQmIlBPY/7lj4/oEl7y7KzzQYmwpVdfmI1QFrN+qPuTP6NK7/TZWLJlEtTWpzgwuARPbhhsrYYryEvUWqZpX9vSz5TidkCzD8uy9gG7PMcHhMblnFlMswrQSBY0F8su/OtytkqEhSnkswYpv6ZPdb53dTywZb7eZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725343534; c=relaxed/simple;
	bh=itV8hUvtgMSwxoM1IxIt7M2jN87feBA1kt0KrTsHDIs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jFuqVhSjMA+RxtX2ZAxD2zUEIdaUiizSnPL10vgK7UdnNnWCP9sgjJ59qLWnuy1mkfE+TZnh+DZV+BGEahYTDRmB+L6wq48SHfG2aspjWq0LfJ95FKpybZ71pTuP4a+eTU9ivFWBlcRxYdme4xUcT0X4mC1VnetT3fFsLDGLEKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=KARO-electronics.de; spf=pass smtp.mailfrom=KARO-electronics.de; arc=none smtp.client-ip=134.119.228.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=KARO-electronics.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=KARO-electronics.de
Received: from [89.1.81.74] (helo=ipc1.ka-ro)
	by smtprelay08.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98)
	(envelope-from <LW@KARO-electronics.de>)
	id 1slMeZ-000000005e6-05B3;
	Tue, 03 Sep 2024 08:04:35 +0200
Date: Tue, 3 Sep 2024 08:04:34 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx28-tx28: Fix the fsl,saif-master usage
Message-ID: <20240903080434.57f5b9ec@ipc1.ka-ro>
In-Reply-To: <20240902181036.924188-1-festevam@gmail.com>
References: <20240902181036.924188-1-festevam@gmail.com>
Organization: Ka-Ro electronics GmbH
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Df-Sender: bHdAa2Fyby1lbGVjdHJvbmljcy5kb21haW5mYWN0b3J5LWt1bmRlLmRl

Hi,

> From: Fabio Estevam <festevam@denx.de>
>=20
> According to fsl,saif.yaml, fsl,saif-master is a phandle to the master
> SAIF.
>=20
> Change it accordingly, to fix the following dt-schema warnings:
>=20
> saif@80042000: fsl,saif-master: True is not of type 'array'
> saif@80042000: Unevaluated properties are not allowed ('fsl,saif-master' =
was unexpected)
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts b/arch/arm/boot/dts=
/nxp/mxs/imx28-tx28.dts
> index d38183edf0fd..9290635352f1 100644
> --- a/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
> +++ b/arch/arm/boot/dts/nxp/mxs/imx28-tx28.dts
> @@ -615,13 +615,13 @@ MX28_PAD_JTAG_RTCK__GPIO_4_20 /* USBH_OC */
>  &saif0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&saif0_pins_b>;
> -	fsl,saif-master;
>  	status =3D "okay";
>  };
> =20
>  &saif1 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&saif1_pins_a>;
> +	fsl,saif-master =3D <&saif0>;
>  	status =3D "okay";
>  };
> =20

Acked-By: Lothar Wa=C3=9Fmann <LW@KARO-electronics.de>


Lothar Wa=C3=9Fmann
--=20
___________________________________________________________

Ka-Ro electronics GmbH | Pascalstra=C3=9Fe 22 | D - 52076 Aachen
Phone: +49 2408 1402-0 | Fax: +49 2408 1402-10
Gesch=C3=A4ftsf=C3=BChrer: Matthias Kaussen
Handelsregistereintrag: Amtsgericht Aachen, HRB 4996

www.karo-electronics.de | info@karo-electronics.de
___________________________________________________________

