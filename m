Return-Path: <devicetree+bounces-178504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDE7ABC0B7
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 16:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AF043A76C3
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 14:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CDC0280001;
	Mon, 19 May 2025 14:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AyjLQwJW"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA0E26C3A8
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 14:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747665078; cv=none; b=SfC7hE/nU4U7eW0l8TRgFeTyAvJs/bz+kej+n/PcLCnb4qctK3FBZg6MfmuFhNLw+Eh80bNFDVbpTjEoxuW0PO/EWUmBOMH96PA1iMJu4mJwkgLXx3iHhYsRfjGQ/ZXiupVX1DGPUA2aIERY+WMBPdI8vZvBs8rmtth6e3z0Gvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747665078; c=relaxed/simple;
	bh=ZxTBM0MkL9yr9hXjRrNUgMWqreSQEDbeIhiat7GYnuM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KdQxXed1UILwL9JL1iNX0DIgqJk6FpUbJ3xvB8HcAHMREgN+8Nehs9vEbEB4KvFm0XftxWoKyo+eSze9RzFPjRGlSQApzupv3n3iBMPu+qOEPDnfRVwe7/vIRVfKxnRgVOWJPJPEJIZ78+S8ahPWfCLOo9vyeal8lXHZdxtiO5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AyjLQwJW; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 43B2A43A59;
	Mon, 19 May 2025 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1747665074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7p77ze5zoo7hs8NG8yNFWbOWv/K/k6K+sWR4S5HDBE4=;
	b=AyjLQwJWGcKUmZ6VaNk5ITKrFlhDRR+c8R3gN9SFpsJd1QrDAjYpDS6DisqQrWl8tZaD2G
	HOjNhJu89qWQtct5Och1x9MJjr9G3QicjuSGVzX3icRZNC74Q5tHQ9y/kNHHYDvG3qYvEt
	x9t2lBlrwavkxkTuFtVsmgjjvf19KXEox53TddBZK2Teunada8WIESJhokZf2JfO8Z91cs
	8/BJuJDURo3fAJbtA5daLcEhduOUNeBmG6SYUWtXWHq4jpXyBCvczcXIilzSAXS6/R2TUW
	7fbxS/B2r4ojjoOwyRlp1pT3weMN1IEEq7xTgUlfirUikKer6qLZTAbbbzU4pA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: marvell: kirkwood: use recent scl/sda
 gpio bindings
In-Reply-To: <20250519112107.2980-3-wsa+renesas@sang-engineering.com>
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
 <20250519112107.2980-3-wsa+renesas@sang-engineering.com>
Date: Mon, 19 May 2025 16:31:13 +0200
Message-ID: <87h61gpt8u.fsf@BLaptop.bootlin.com>
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
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdefvdduieefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfevufgjfhffkfggtgfgsehtqhertddttdejnecuhfhrohhmpefirhgvghhorhihucevnffgoffgpffvuceoghhrvghgohhrhidrtghlvghmvghnthessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgffhgedvhefgtdejvdethfdvieekgfetuefhueekteetgfdvueeutedttdekgeevnecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudegmeehheeimeejrgdttdemudeksggtmegtvggrleemudhftgdvmeejvgehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemtggsudegmeehheeimeejrgdttdemudeksggtmegtvggrleemudhftgdvmeejvgehuddphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhepghhrvghgohhrhidrtghlvghmvghnthessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepkedprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomhdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrr
 gguvggrugdrohhrghdprhgtphhtthhopegrnhgurhgvfieslhhunhhnrdgthhdprhgtphhtthhopehsvggsrghsthhirghnrdhhvghsshgvlhgsrghrthhhsehgmhgrihhlrdgtohhmpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-GND-Sasl: gregory.clement@bootlin.com

Wolfram Sang <wsa+renesas@sang-engineering.com> writes:

> We have dedictaded bindings for scl/sda nowadays. Switch away from the
> deprecated plain 'gpios' property.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi b/arch/arm=
/boot/dts/marvell/kirkwood-km_common.dtsi
> index 52baffe45f12..259cb3d5f16d 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi
> +++ b/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi
> @@ -27,8 +27,8 @@ serial@12000 {
>=20=20
>  	i2c {
>  		compatible =3D "i2c-gpio";
> -		gpios =3D < &gpio0 8 GPIO_ACTIVE_HIGH		/* sda */
> -			  &gpio0 9 GPIO_ACTIVE_HIGH>;		/* scl */
> +		sda-gpios =3D <&gpio0 8 GPIO_ACTIVE_HIGH>;
> +		scl-gpios =3D <&gpio0 9 GPIO_ACTIVE_HIGH>;
>  		i2c-gpio,delay-us =3D <2>;	/* ~100 kHz */
>  	};
>  };
> --=20
> 2.47.2
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

