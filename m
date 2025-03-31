Return-Path: <devicetree+bounces-161969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC3AA7635B
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 11:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25E333A9E3A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 09:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E29571DDC1B;
	Mon, 31 Mar 2025 09:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Zj4lLPhK"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEE81CEEBB
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 09:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743414177; cv=none; b=ctu/sekObitZ/jjnY5o+c4XuDGhnNsoGlcZ5x5Gk4IthYq6U0aGaJDFNMFo2FCdpSs3F+CIA1GC9ze2NshwOFerj/z5/S+7d1SXz+ZsXxb/cQ1PF1R5rsoJtVt0OBDiEQOhxFlkVWN4fjaVaRIYfe/OKlgVPBNi9ld834gKv1OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743414177; c=relaxed/simple;
	bh=Nmi7UbM33z8k5ksfYFNIrINXvPainAPDHCjJCN/ocRc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QuFHr9Ag/LoGDBtXdkn4jknm25yHgrAayJDQ09hycPkqVLkRy0qhRPYKe/LNI9vOzofDMRQH4oaRB3WDGOlOAgIo2FncAtXFEDn94Q9Td7OZvCpTDVadQYkpb2CquLun/bWI59rveESFbbhjRwEV5e5zaYEFKT+BRfsg/Ogxdrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Zj4lLPhK; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0D9E74322D;
	Mon, 31 Mar 2025 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1743414167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JGUJHSEu1hIQgWU0nYHBosEKyRVcYuqWM0xfY1Ki/Rw=;
	b=Zj4lLPhKAt6zS5h9ISrWTFiLmzINzzkKyLaBzjodr6cS3OltZ3ExxB91azsxxAZH6RoPCX
	q5RIDyazeuZMT3xRWu07vJtvEkFyIM6IyLckbpz8ZbpfAo2ZQikqiWBEukjD2E/nzLzwbX
	wcVBhJWibinhK4kxKik8uVuPRZagQtoF4LTNOAuICQRG0voJ2kc0po7fpJ50hnZtK2/BBz
	eitfsUVrNAoHfly4I4REfInyRdMpixfnp06HTb55mYD2POFngYrFrXsM0hYBk56GHbLw/0
	hzY60JDIQkFkJLICg51Xr1JC/pyXZWHMjLtJdOuAVv2SA/QcWvLKycOt9M7jjw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] ARM: dts: marvell: use correct ohci/ehci node names
In-Reply-To: <20250330193833.21970-8-wsa+renesas@sang-engineering.com>
References: <20250330193833.21970-7-wsa+renesas@sang-engineering.com>
 <20250330193833.21970-8-wsa+renesas@sang-engineering.com>
Date: Mon, 31 Mar 2025 11:42:45 +0200
Message-ID: <87a591bkoa.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddujeelheelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufgjfhffkfggtgfgsehtqhertddttdejnecuhfhrohhmpefirhgvghhorhihucevnffgoffgpffvuceoghhrvghgohhrhidrtghlvghmvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgffhgedvhefgtdejvdethfdvieekgfetuefhueekteetgfdvueeutedttdekgeevnecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudegmeehheeimeejrgdttdemjeelgegsmegshegttgemvdekfegvmegutdekleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemtggsudegmeehheeimeejrgdttdemjeelgegsmegshegttgemvdekfegvmegutdekledphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhepghhrvghgohhrhidrtghlvghmvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepledprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomhdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrr
 gguvggrugdrohhrghdprhgtphhtthhopehkrhiihihsiihtohhfrdhkohiilhhofihskhhisehlihhnrghrohdrohhrghdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthhdprhgtphhtthhopehsvggsrghsthhirghnrdhhvghsshgvlhgsrghrthhhsehgmhgrihhlrdgtohhmpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhg
X-GND-Sasl: gregory.clement@bootlin.com

Hello Wolfram

> They should be named "usb@".
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  arch/arm/boot/dts/marvell/kirkwood-db.dtsi             | 2 +-
>  arch/arm/boot/dts/marvell/kirkwood-dir665.dts          | 2 +-
>  arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts | 2 +-
>  arch/arm/boot/dts/marvell/kirkwood.dtsi                | 2 +-
>  arch/arm/boot/dts/marvell/orion5x.dtsi                 | 4 ++--
>  5 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi b/arch/arm/boot/d=
ts/marvell/kirkwood-db.dtsi
> index 6fe2e31534af..8bacaeb4f4bd 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
> +++ b/arch/arm/boot/dts/marvell/kirkwood-db.dtsi
> @@ -39,7 +39,7 @@ sata@80000 {
>  			status =3D "okay";
>  		};
>=20=20
> -		ehci@50000 {
> +		usb@50000 {
>  			status =3D "okay";
>  		};
>=20=20
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts b/arch/arm/boo=
t/dts/marvell/kirkwood-dir665.dts
> index 2f6793f794cd..36394d1ab3e2 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
> +++ b/arch/arm/boot/dts/marvell/kirkwood-dir665.dts
> @@ -129,7 +129,7 @@ i2c@11000 {
>  			status =3D "okay";
>  		};
>=20=20
> -		ehci@50000 {
> +		usb@50000 {
>  			status =3D "okay";
>  		};
>  	};
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts b/arc=
h/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
> index e3b41784c876..051579fc36b8 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
> +++ b/arch/arm/boot/dts/marvell/kirkwood-mv88f6281gtw-ge.dts
> @@ -63,7 +63,7 @@ serial@12000 {
>  			status =3D "okay";
>  		};
>=20=20
> -		ehci@50000 {
> +		usb@50000 {
>  			status =3D "okay";
>  		};
>  	};
> diff --git a/arch/arm/boot/dts/marvell/kirkwood.dtsi b/arch/arm/boot/dts/=
marvell/kirkwood.dtsi
> index 815ef7719d13..8a1338e672b3 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood.dtsi
> +++ b/arch/arm/boot/dts/marvell/kirkwood.dtsi
> @@ -263,7 +263,7 @@ cesa: crypto@30000 {
>  			status =3D "okay";
>  		};
>=20=20
> -		usb0: ehci@50000 {
> +		usb0: usb@50000 {
>  			compatible =3D "marvell,orion-ehci";
>  			reg =3D <0x50000 0x1000>;
>  			interrupts =3D <19>;
> diff --git a/arch/arm/boot/dts/marvell/orion5x.dtsi b/arch/arm/boot/dts/m=
arvell/orion5x.dtsi
> index 2d41f5c166ee..939259c57e05 100644
> --- a/arch/arm/boot/dts/marvell/orion5x.dtsi
> +++ b/arch/arm/boot/dts/marvell/orion5x.dtsi
> @@ -146,7 +146,7 @@ wdt: wdt@20300 {
>  				status =3D "okay";
>  			};
>=20=20
> -			ehci0: ehci@50000 {
> +			ehci0: usb@50000 {
>  				compatible =3D "marvell,orion-ehci";
>  				reg =3D <0x50000 0x1000>;
>  				interrupts =3D <17>;
> @@ -218,7 +218,7 @@ cesa: crypto@90000 {
>  				status =3D "okay";
>  			};
>=20=20
> -			ehci1: ehci@a0000 {
> +			ehci1: usb@a0000 {
>  				compatible =3D "marvell,orion-ehci";
>  				reg =3D <0xa0000 0x1000>;
>  				interrupts =3D <12>;
> --=20
> 2.47.2
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

