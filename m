Return-Path: <devicetree+bounces-108806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3A7993F38
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:23:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E926CB20D8F
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 07:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8281DE4D9;
	Tue,  8 Oct 2024 06:27:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de [134.119.228.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E09B176FA7
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 06:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.119.228.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728368867; cv=none; b=qq2XxhrqzU6I0YsDIRLfHb9ayhB7rE6rnyR6Psem7FaJ1V26L1w03P9zLdDJN/VS6CbXHRPvsmnCdctaI8JNUslgO8oA4QP2yl5MvW+/hML4jWIPDJ2WCY+shTyJ1rVTHapH3tVO2T82QsD2Z6LHUtJ6tdkNciZd4vjM6GUhqJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728368867; c=relaxed/simple;
	bh=lQgNncUCNZYPoYqXj4JckgYT5Ma13RVVdoIOR61SGfE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Pvu9gpFiHCvCwP1oiWbpsEmQw7O0eQtXPaF8u00TRLJziNMEtHRU5H6K++63ZHYu95K8jZMUosM7hOElWTqzmCQd9JRk1OvFDJbdUXa6VScrfz4uFrOj2avOckmRek0HDr21HPwtjMZWkb/8BZUO8xtRtZFtkbuq/goFu/9xTQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=KARO-electronics.de; spf=pass smtp.mailfrom=KARO-electronics.de; arc=none smtp.client-ip=134.119.228.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=KARO-electronics.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=KARO-electronics.de
Received: from [89.1.81.74] (helo=ipc1.ka-ro)
	by smtprelay08.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98)
	(envelope-from <LW@KARO-electronics.de>)
	id 1sy3V0-000000005os-0CxN;
	Tue, 08 Oct 2024 08:15:10 +0200
Date: Tue, 8 Oct 2024 08:15:09 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6qdl-tx6: Fix 'fixed-clock' description
Message-ID: <20241008081509.21df45da@ipc1.ka-ro>
In-Reply-To: <20241005125824.2037222-1-festevam@gmail.com>
References: <20241005125824.2037222-1-festevam@gmail.com>
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
> Per fixed-clock.yaml, it is not correct to pass unit address and
> reg to represent 'fixed-clock'.
>=20
> Remove it to fix the following dt-schema warning:
>=20
> clock@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
>=20
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/linux-arm-kernel/172808887941.121658.5039=
774358299826312.robh@kernel.org/
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Lothar Wa=C3=9Fmann <LW@KARO-electronics.de>

> ---
>  arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi b/arch/arm/boot/d=
ts/nxp/imx/imx6qdl-tx6.dtsi
> index 5a194f4c0cb9..2fa37d1b16cc 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
> @@ -70,9 +70,8 @@ clocks {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20
> -		mclk: clock@0 {
> +		mclk: clock {
>  			compatible =3D "fixed-clock";
> -			reg =3D <0>;
>  			#clock-cells =3D <0>;
>  			clock-frequency =3D <26000000>;
>  		};

Lothar Wa=C3=9Fmann
--=20
___________________________________________________________

Ka-Ro electronics GmbH | Pascalstra=C3=9Fe 22 | D - 52076 Aachen
Phone: +49 2408 1402-0 | Fax: +49 2408 1402-10
Gesch=C3=A4ftsf=C3=BChrer: Matthias Kaussen
Handelsregistereintrag: Amtsgericht Aachen, HRB 4996

www.karo-electronics.de | info@karo-electronics.de
___________________________________________________________

