Return-Path: <devicetree+bounces-17309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C34D67F1FFE
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 23:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 000E51C21235
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FC23984B;
	Mon, 20 Nov 2023 22:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="CJrXAND7"
X-Original-To: devicetree@vger.kernel.org
Received: from mxb-1-390.seznam.cz (mxb-1-390.seznam.cz [IPv6:2a02:598:128:8a00::1000:390])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C7E95
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 14:11:04 -0800 (PST)
Received: from email.seznam.cz
	by smtpc-mxb-76bd9fc5fb-rdwgf
	(smtpc-mxb-76bd9fc5fb-rdwgf [2a02:598:128:8a00::1000:390])
	id 1a92834201000e961e773ac0;
	Mon, 20 Nov 2023 23:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1700518247;
	bh=MjQZX9/S8EhP9X//EN9IoZDKoGrgEpctrHCDADiE8aU=;
	h=Received:Date:From:To:Cc:Subject:Message-ID:In-Reply-To:
	 References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=CJrXAND7TASXsPvVAPnAQUPKwNssV5nl7dTLpUXxAGdfLXzWcrKlFK5RYx+2GdqJK
	 jMDJ5/U52fkzH/oNgqUeyVIJq2ZbcYbuXXCydDq/CqyMXT4dXiVWxaos0hfiRvFKtF
	 TgQKZ4C7v1RrB1KR2T1hUdsgxc4+0g9MrXZ7pYZjnR9lonf3eTs7FzPSiOaglRFW2T
	 pV81fJ1N+IkWiP0o4KL6GOFAgB5FEwnH6hvISdkHcCxW6+gz8oiKdQdjQc41NR9/e8
	 /fHgGSV2YXWB9AJu1zdsa+7nODWKL+tC6Vg+GfhCcvNA1P/HmxyGXxjitrQUtfWt4M
	 7xN6DgQnlRU7A==
Received: from alena.lan (88.146.114.74.pe3ny.net [88.146.114.74])
	by smtpd-relay-5846f595f5-w6shr (smtpd/2.0.15) with ESMTPA
	id 6b37a110-0d92-4bbf-8ce3-f4760895605d;
	Mon, 20 Nov 2023 23:10:45 +0100
Date: Mon, 20 Nov 2023 23:10:43 +0100
From: Pavel =?UTF-8?B?TMO2Ymw=?= <pavel@loebl.cz>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: h2+: add support for Banana Pi P2
 Zero board
Message-ID: <20231120231043.56af2ce6@alena.lan>
In-Reply-To: <0294f35c-2408-40f9-86ac-aa855ad85b46@kernel.org>
References: <20231118111418.979681-1-pavel@loebl.cz>
	<20231118111418.979681-3-pavel@loebl.cz>
	<0294f35c-2408-40f9-86ac-aa855ad85b46@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 20 Nov 2023 10:18:30 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 18/11/2023 12:14, Pavel L=C3=B6bl wrote:
> > Banana Pi P2 Zero is H2+-based board by Sinovoip internally similar
> > to Banana Pi M2 Zero.
> >  =20
>=20
>=20
> > diff --git
> > a/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
> > b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
> > new file mode 100644 index 000000000000..f963051d8ff5 --- /dev/null
> > +++
> > b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
> > @@ -0,0 +1,290 @@ +// SPDX-License-Identifier: (GPL-2.0+ OR MIT) =20
>=20
> Unusual license. We usually do not want GPL-v5.0. Does anything
> requires such licensing? If not, use 2.0 OR MIT
License was copied from sun8i-h2-plus-bananapi-m2-zero as it served as
base for this DT. It seems GPL-2.0+ identifier is deprecated. So I
should replace it with GPL-2.0-or-later, probably.

>=20
> > +/*
> > + * Copyright (C) 2023 Pavel L=C3=B6bl <pavel@loebl.cz>
> > + *
> > + * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
> > + *   Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> > + */
> > +
> > +/dts-v1/;
> > +#include "sun8i-h3.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/leds/common.h>
> > +
> > +/ {
> > +   model =3D "Banana Pi BPI-P2-Zero v1.1";
> > +   compatible =3D "sinovoip,bananapi-p2-zero-v1.1",
> > "allwinner,sun8i-h2-plus"; =20
>=20
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
Fixed for next version.

> > +
> > +   aliases {
> > +       serial0 =3D &uart0;
> > +       serial1 =3D &uart1;
> > +   };
> > +
> > +   chosen {
> > +       stdout-path =3D "serial0:115200n8";
> > +   };
> > +
> > +   connector {
> > +       compatible =3D "hdmi-connector";
> > +       type =3D "c";
> > +
> > +       port {
> > +           hdmi_con_in: endpoint {
> > +               remote-endpoint =3D <&hdmi_out_con>;
> > +           };
> > +       };
> > +   };
> > +
> > +   leds {
> > +       compatible =3D "gpio-leds";
> > +
> > +       led {
> > +           function =3D LED_FUNCTION_POWER;
> > +           color =3D <LED_COLOR_ID_RED>;
> > +           gpios =3D <&r_pio 0 10 GPIO_ACTIVE_LOW>; /*
> > PL10 */
> > +           default-state =3D "on";
> > +       };
> > +   };
> > +
> > +   gpio-keys {
> > +       compatible =3D "gpio-keys";
> > +
> > +       power { =20
>=20
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
Replaced with switch-2 to match schematic.

Pavel

