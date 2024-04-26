Return-Path: <devicetree+bounces-63118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FBC8B3C50
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 772471C2139D
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B857F14E2EF;
	Fri, 26 Apr 2024 16:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YFJOE3e0"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEBA149C64
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714147357; cv=none; b=Fjcgd3qQokxGJHrZVWaP6PDgYN2H1YKxhp+gl6Np0yRQO0Ne2mBk1MgV1s218RclRqEXqsyQCxysjCFwTHfZ7NIiP1deGIQFDdc36QfKa4GoUq9MQL+XAr/oERHpxYv4zBZEEg8zwfMrjmyRMvpXrKlzPHF4GJYN8yDMfRHTxUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714147357; c=relaxed/simple;
	bh=f9Ie7snLyWrk/ANtPP0kL44eH9CMiEnB29vxnKorvcM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ZOsjrE3HllzjgELdYo5L6OVOOZQYQeDWo0gka+T6nQDs+E2I94BzO6+Vj9XDGqc7prgqcDsFcvCtesVtRN9FMr8hhqtEeaZOlHG/5l1uxG+9SxQOEqyYuuf+2PFeivShWX0W1rSjBLuCzY2qmpewqZkkqm3rxI1olB31wBUGsG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YFJOE3e0; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5BD90FF806;
	Fri, 26 Apr 2024 16:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1714147348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uq9yi5NKN6ArvsQFbKMTgwcBlOAftfJTuKRqxMbmRy0=;
	b=YFJOE3e0oW6T2PvJ5xTbz7jmBKsuXcJbwuI+khZCbaGq9TaivdWzFofrcrcpu0HfktLUgb
	2/yLw2wlPDrjlfaSinzEiISC0Chm9T5bvmO14AaRgzXcJk/ZcXeJVSdrasKoKAbcqHwPdG
	XAQFPl2kZkSgiy80ONio/N/8FreAKWyh8a+n0DG5kpyDX+D3vs0Omh2Y20MSg5+R9UssLx
	o2kjf8Zy+w/VZ07dgQ3LeSzVv4NlWUWJRCRNWLKkU6cxSZ8C56PNs9ieKz2ZBmTQ3hh4pJ
	dcr5dfnkcYMm+2G4ioFqF/KSXxHVFTWboDoYwDTyMW8sSM5SZPEppKBw9rJfCw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Arnd Bergmann
 <arnd@arndb.de>,
 soc@kernel.org, arm@kernel.org, Andy Shevchenko <andy@kernel.org>, Hans de
 Goede <hdegoede@redhat.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>
Cc: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v7 9/9] ARM: dts: turris-omnia: Add GPIO key node for
 front button
In-Reply-To: <20240424173809.7214-10-kabel@kernel.org>
References: <20240424173809.7214-1-kabel@kernel.org>
 <20240424173809.7214-10-kabel@kernel.org>
Date: Fri, 26 Apr 2024 18:02:26 +0200
Message-ID: <878r105cz1.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Hello Marek,

> Now that we have the MCU device-tree node, which acts as a GPIO
> controller, add GPIO key node for the front button.
>
> Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")

Same as previous patch is it really a fix ?

Gregory

> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
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
> 2.43.2

