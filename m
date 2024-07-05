Return-Path: <devicetree+bounces-83487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A6F9288EE
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 14:46:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70284B2223A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 12:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435DF14A619;
	Fri,  5 Jul 2024 12:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RLdlFXBc"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F87148FE1
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 12:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720183584; cv=none; b=psSG7g52aByTp9nEmKOTOIU1thuEuVXwtgVGI7guCQJb88+Qtu8j2GQ5uPz3O2phd1qgHK+uo6WFNFaOcHES6TxmN4sdZdSKBr1R+7UxKZFONLnAnKuA/VVGgiJFYABoafE5DqYE/nRYYDodxK3RmOW6VAv7kaPeSfyO/O6UoYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720183584; c=relaxed/simple;
	bh=9IILC667MZy6wZxJn0arvMfC67drkFF8jbRJI/RCW0s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iXLH/MTFQ8uf8prunXM4vSexbaSbL6ibRqf2GM4fOkfDX8KgLoqPXBCjRbnqmmLzaeRPLCrYKxaVMTqq1rn4m/aK8nnifw79+BtwDhIgZ7DhY45orR/b9WwJKraIuSXUTV2EIz/28yXO80aoxhZsfoVfngvn1Ci9wyRr1YdnkGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RLdlFXBc; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 59334C0005;
	Fri,  5 Jul 2024 12:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1720183580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Kj1eSZAKDwhk5vAXRl97uoZ1Sujr2CBBYFjFpgU8/A=;
	b=RLdlFXBcMRAxP1TiU23Cj/PfqhnwgiMMeW56JcIewnO4hNHI3QTWP7+MMlprmIZQUSXXa7
	WGPsg2RaqpymqUDtEFyNpggh/ES9OB1g7QS9KHXyZckOyM7X7Q+3rDxyIa1w4cXTvVJFlu
	cW5UZSCDFAivUT7UdQ3zUjqKTWa2xBq5KJy5p5GcTBIdCEmREf3x1fwP7IQjhpsq5yRTna
	++5a/fDwcZZDi0oV6twzbFaHX/puOaO0Vz1yj54pYce0wJb00NKxsmpojBJ3VqDKDgFkbh
	HRgxD6zzB6ui1My8hCNanGSSZVwiWKMuvDPfX+TXR+oBAFe4aBVDHuLMWJTK0Q==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Arnd Bergmann
 <arnd@arndb.de>,
 soc@kernel.org
Cc: arm@kernel.org, Andy Shevchenko <andy@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>,
 Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v13 8/8] ARM: dts: turris-omnia: Add GPIO key node for
 front button
In-Reply-To: <20240701113010.16447-9-kabel@kernel.org>
References: <20240701113010.16447-1-kabel@kernel.org>
 <20240701113010.16447-9-kabel@kernel.org>
Date: Fri, 05 Jul 2024 14:46:19 +0200
Message-ID: <87cynsj9b8.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Marek Beh=C3=BAn <kabel@kernel.org> writes:

> Now that we have the MCU device-tree node, which acts as a GPIO
> controller, add GPIO key node for the front button.
>
> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>

Applied on mvebu/dt

Thanks,

Gregory

> ---
>  .../boot/dts/marvell/armada-385-turris-omnia.dts    | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch=
/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> index 59079d63fe27..43202890c959 100644
> --- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
> @@ -112,6 +112,19 @@ sfp: sfp {
>  		status =3D "disabled";
>  	};
>=20=20
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		front-button {
> +			label =3D "Front Button";
> +			linux,code =3D <KEY_VENDOR>;
> +			linux,can-disable;
> +			gpios =3D <&mcu 0 12 GPIO_ACTIVE_HIGH>;
> +			/* debouncing is done by the microcontroller */
> +			debounce-interval =3D <0>;
> +		};
> +	};
> +
>  	sound {
>  		compatible =3D "simple-audio-card";
>  		simple-audio-card,name =3D "SPDIF";
> --=20
> 2.44.2

