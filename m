Return-Path: <devicetree+bounces-59468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E65F8A5842
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 18:54:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF8541F20C89
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 16:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C209811EB;
	Mon, 15 Apr 2024 16:54:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F0160EF9
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 16:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713200081; cv=none; b=RM8BMlLabsTyR8JvpInw+/t9OZ95Ia6Fqeg63htqxC1V9PD+lPYcUFrTnI7oMzpWyoMqmDIDNImf0QUwvxf5BBrh1LgCoJyNlSVk4XCY0NSKyNHW9ca6GW1pdPtdEccTogeagbFRK5XqqsYcu6rMofQhWwT2tDYirEs9HLCyCko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713200081; c=relaxed/simple;
	bh=ojz16jU98kBh2K+GGe1nJFbSANe1CVsWk2pDiHiRdIc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uoTAW9EdfTXXosOGB7MbDlpSs37BV+KbdZOvjIv/epfvtxTqcYoHB6K5jPzRM1QP1EVl+r7oIWJ6IWRqsBvk2PVwuNy+L1I6z0chju+T10VvhB1jmx1BVx/xRdgfaElWETESDUI0evkIOADytJ+uXaOdkUk99aH2hL55viwPGCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA0D22F4;
	Mon, 15 Apr 2024 09:55:06 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27F663F64C;
	Mon, 15 Apr 2024 09:54:36 -0700 (PDT)
Date: Mon, 15 Apr 2024 17:54:33 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: =?UTF-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Maxime Ripard <mripard@kernel.org>, Melissa Wen <mwen@igalia.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, Romain
 Perier <romain.perier@gmail.com>, Stefan Wahren <wahrenst@gmx.net>,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com
Subject: Re: [PATCH v2] ARM: dts: bcm2835: Enable 3D rendering through V3D
Message-ID: <20240415175433.6e63d40f@donnerap.manchester.arm.com>
In-Reply-To: <20240415160129.14149-2-mcanal@igalia.com>
References: <20240415160129.14149-2-mcanal@igalia.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 15 Apr 2024 13:00:39 -0300
Ma=C3=ADra Canal <mcanal@igalia.com> wrote:

Hi,

> RPi 0-3 is packed with a GPU that provides 3D rendering capabilities to
> the RPi. Currently, the downstream kernel uses an overlay to enable the
> GPU and use GPU hardware acceleration. When deploying a mainline kernel
> to the RPi 0-3, we end up without any GPU hardware acceleration
> (essentially, we can't use the OpenGL driver).
>=20
> Therefore, enable the V3D core for the RPi 0-3 in the mainline kernel.

So I think Krzysztof's initial comment still stands: What does that patch
actually change? If I build those DTBs as of now, none of them has a
status property in the v3d node. Which means it's enabled:
https://github.com/devicetree-org/devicetree-specification/blob/main/source=
/chapter2-devicetree-basics.rst#status
So adding an explicit 'status =3D "okay";' doesn't make a difference.

What do I miss here?

Cheers,
Andre

> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>=20
> v1 -> v2: https://lore.kernel.org/dri-devel/41694292-af1f-4760-a7b6-101ed=
5dd6f9d@gmx.net/T/
>=20
> * As mentioned by Krzysztof, enabling should be done in last place of
> 	override/extend. Therefore, I'm disabling V3D in the common dtsi
> 	and enabling in the last place of extend, i.e. the RPi DTS files.
>=20
>  arch/arm/boot/dts/broadcom/bcm2835-common.dtsi      | 1 +
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts   | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts        | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts   | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts   | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts        | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts  | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts   | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts     | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts      | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts      | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts  | 4 ++++
>  arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts | 4 ++++
>  15 files changed, 57 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi b/arch/arm/bo=
ot/dts/broadcom/bcm2835-common.dtsi
> index 9261b67dbee1..69e34831de51 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-common.dtsi
> @@ -139,6 +139,7 @@ v3d: v3d@7ec00000 {
>  			compatible =3D "brcm,bcm2835-v3d";
>  			reg =3D <0x7ec00000 0x1000>;
>  			interrupts =3D <1 10>;
> +			status =3D "disabled";
>  		};
> =20
>  		vc4: gpu {
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts b/arch/arm=
/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
> index 069b48272aa5..495ab1dfd2ce 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a-plus.dts
> @@ -128,3 +128,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts b/arch/arm/boot=
/dts/broadcom/bcm2835-rpi-a.dts
> index 2726c00431e8..4634d88ce3af 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-a.dts
> @@ -121,3 +121,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts b/arch/arm=
/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
> index c57b999a4520..45fa0f6851fc 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-plus.dts
> @@ -130,3 +130,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts b/arch/arm=
/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
> index ae6d3a9586ab..c1dac5d704aa 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b-rev2.dts
> @@ -121,3 +121,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts b/arch/arm/boot=
/dts/broadcom/bcm2835-rpi-b.dts
> index 72764be75a79..72ca31f2a7d6 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-b.dts
> @@ -115,3 +115,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts b/arch/ar=
m/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
> index 3f9d198ac3ab..881a07d2f28f 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-cm1-io1.dts
> @@ -95,3 +95,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts b/arch/arm=
/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
> index 1f0b163e400c..1c7324067442 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero-w.dts
> @@ -134,6 +134,10 @@ &uart1 {
>  	status =3D "okay";
>  };
> =20
> +&v3d {
> +	status =3D "okay";
> +};
> +
>  &wifi_pwrseq {
>  	reset-gpios =3D <&gpio 41 GPIO_ACTIVE_LOW>;
>  };
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts b/arch/arm/b=
oot/dts/broadcom/bcm2835-rpi-zero.dts
> index 539c19c10946..1568ddc78f22 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-zero.dts
> @@ -117,3 +117,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts b/arch/arm/bo=
ot/dts/broadcom/bcm2836-rpi-2-b.dts
> index 79918033750e..8fab6293d1c7 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2836-rpi-2-b.dts
> @@ -129,3 +129,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts b/arch/a=
rm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
> index 3548306dfbcb..dc45b56054c7 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-a-plus.dts
> @@ -156,3 +156,7 @@ &uart1 {
>  	pinctrl-0 =3D <&uart1_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts b/arch/a=
rm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
> index 2f1800cbc522..ce3a9f7ff529 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts
> @@ -161,3 +161,7 @@ &uart1 {
>  &wifi_pwrseq {
>  	reset-gpios =3D <&expgpio 1 GPIO_ACTIVE_LOW>;
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts b/arch/arm/bo=
ot/dts/broadcom/bcm2837-rpi-3-b.dts
> index 61270340075c..e398546d105b 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-3-b.dts
> @@ -149,6 +149,10 @@ &sdhost {
>  	bus-width =3D <4>;
>  };
> =20
> +&v3d {
> +	status =3D "okay";
> +};
> +
>  &wifi_pwrseq {
>  	reset-gpios =3D <&expgpio 1 GPIO_ACTIVE_LOW>;
>  };
> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts b/arch/ar=
m/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
> index 72d26d130efa..50471ada79b3 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-cm3-io3.dts
> @@ -94,3 +94,7 @@ &uart0 {
>  	pinctrl-0 =3D <&uart0_gpio14>;
>  	status =3D "okay";
>  };
> +
> +&v3d {
> +	status =3D "okay";
> +};
> diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts b/arch/a=
rm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
> index 85cf594724ef..876f697e7300 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
> @@ -132,6 +132,10 @@ &uart1 {
>  	status =3D "okay";
>  };
> =20
> +&v3d {
> +	status =3D "okay";
> +};
> +
>  &wifi_pwrseq {
>  	reset-gpios =3D <&gpio 41 GPIO_ACTIVE_LOW>;
>  };


