Return-Path: <devicetree+bounces-253884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD9D12490
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D5B930B554F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F224D3563F9;
	Mon, 12 Jan 2026 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="FCTAkUpT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED133311966
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216928; cv=pass; b=PgbpOZXuygrBBkpDOncbZYyqsUes4CpVvw/e68olUDqUgXtNO5ZRpFhMV5aruRTFJI+DT2JDB7S+VFdhLdWNXzg1BDEcx/IqGhXIDrCTyut5sxthLhJ7UdWhPmAScWkvN/cQyafQCMlagXwLiUoqu9w2/2a8TewUp93fi0JHoBs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216928; c=relaxed/simple;
	bh=bNiYili71PAbnu7ejGQwhFC/zvGTK+ad8EJT2VjIX4Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R+zoiY76ywcWcAAAhM2SKJ/01IVOQb+nMWNgngi/aSXG218Pt/deungXKULawxM/Kvea26B3PnwY0gE52FLw2juHglGNiCqj0mnBL58ZaKHMDJg2/10zO84DuH1kShtkXRpmhz5mXs5ssHxP+fa13+m1BqHzUVPWxI2mBjqSXh0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=FCTAkUpT; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qqgHi6LM2GBcY7CEojYrH5XX5uV5q8rOKITQKEaMliU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1768216885;
 b=pVpmnl73nK6XK20ea9pUy0rlVFHTl1Kb22/Q5xMpZWcCLQLH34h1t+rLpJsxZQ1iBl5kQB0x
 zns6Yg9c828a5O3DZNZYIyLBpCekW00jtcbFqs+v6Gw6VpOkM8C2vE483J2yurdOQmntBzdtZNL
 RajLI2t5jdbki/uVdqbflNKnulAyCiR+ya4byUJ6MAnitDbihkl8ptFMmajVlHdCyby9TVMBVJk
 WTo2AGT1Md06P9AdFOFHVv0R5CIZ3jTUQ7yk2/Cbn7wtYY/jLrSAhTqSuRuxlAwUIBdFpMNYHo2
 KA7pWFihvFczZjELo4Z6Po8Pwr1VlEkDimHQpqZO7LitQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1768216885;
 b=hiWV6V5obqOm5/ra+XwRXf8aOlQYkHU1nP7uFHgVhASqMtYCpZpXEKLMp+P5yRvb0IH9k4wz
 /o6CYx2ta5vUfUonhxBCNZStqNoQuPPzY2PSRM/sbRUXLa0RLNs5JjWPlI04WpRTFa83IKaE1Bn
 kR0zvKAdC7/mYrs7iK9ZTM80b7/SEyPWMnuHvQ6fsEh1tp6nk7YxODy53gid7A3v8UsQa1QMI9B
 QDQJupHSPbfKBbJEELvejYZqBqxZYoP+wVUkFkvqbr13WoQ50w7bC8o9C1Jj1jTqSf5rEVfv43/
 mHVdR85StvulLmYzm4uDe6JQGCPFIx/6w/7gmTadRKy0g==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Mon, 12 Jan 2026 12:21:25 +0100
Received: from [192.168.153.128] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AE1545A0EB0;
	Mon, 12 Jan 2026 12:21:16 +0100 (CET)
Message-ID: <b5eec4417133c2802a5fd716aba6a0f7f02bb0ba.camel@ew.tq-group.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and
 MBa62xx carrier board Device Trees
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Kees Cook <kees@kernel.org>, Tony Luck
 <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Andrew
 Lunn <andrew@lunn.ch>,  linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org,  linux@ew.tq-group.com
Date: Mon, 12 Jan 2026 12:21:16 +0100
In-Reply-To: <20260109195912.c7wiyzj4qtdlxkh2@tumbling>
References: <cover.1767627010.git.matthias.schiffer@ew.tq-group.com>
	 <5df62f37eb84daff28008b8f9d5bd544b2f3a6a4.1767627010.git.matthias.schiffer@ew.tq-group.com>
	 <20260109195912.c7wiyzj4qtdlxkh2@tumbling>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dqVLj3d9vz1kNh4d
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:909bbf5fc5c76c56937484f23808076f
X-cloud-security:scantime:2.047
DKIM-Signature: a=rsa-sha256;
 bh=qqgHi6LM2GBcY7CEojYrH5XX5uV5q8rOKITQKEaMliU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1768216884; v=1;
 b=FCTAkUpTmOCyMN8+X00Bxwrc8MRu+bs7ehA+o8kDGpNJGA6iMkdBWFJnOmJX//cJWk9V2Xme
 y+exJG8ezH3ZK2pGFKP9ABWed5LKQU1/zIONlADbc3fUSwRV/ti4menAfzf88q31906qnU9CUgX
 OOJWucXnOHqhluKKiR+HhzkY4lwjd1ZEruRvYyJgLOYDLnhEhA+2JG7LYZ4PoIt/pykLF70MchY
 yL5UTivb+bAB+ObRQyvngt2ViSDQFQtRzRHD2MpjXkomJziRK+HpMvBr84dMy3ufYHy/ixd1AvR
 Z4T7cgJYyPPjimgOdJQMz1xXcNMXyqeddduUaq6Mqvn5Q==

On Fri, 2026-01-09 at 13:59 -0600, Nishanth Menon wrote:
> On 09:14-20260107, Matthias Schiffer wrote:
> > The TQMa62xx is a SoM family with a pluggable board connector based on =
the
> > TI AM62x SoCs. Add DTS(I) for the AM625 (2x Cortex-A53) variant and its
> > combination with our MBa62xx carrier board.
> >=20
> > Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
>=20
> Few clarifications below..
>=20
> [...]
> > diff --git a/arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts b/arc=
h/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
> > new file mode 100644
> > index 0000000000000..cca8d0018504d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
> > @@ -0,0 +1,930 @@
>=20
> [...]
>=20
> > +	backlight: backlight {
> > +		compatible =3D "pwm-backlight";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&backlight_pins>;
> > +		enable-gpios =3D <&main_gpio0 38 GPIO_ACTIVE_HIGH>;
> > +		status =3D "disabled";
>=20
> Document why disabled?

Will be enabled by DTSO for different panels. This will be added in a follo=
w-up
series, so I'll add a comment.

>=20
> [...]
> > +
> > +	panel: panel {
> > +		pinctrl-names =3D "default";
>=20
> Missing compatible? thinking again.. Should'nt these be part of some
> panel dtsi?

We tried to leave as much common configuration for different panels as poss=
ible
in the base DTS, so the DTBOs aren't bigger than necessary. I think it make=
s
sense to have this in the board DTS, as the signals used by the panels are =
part
of the board design.


>=20
> > +		pinctrl-0 =3D <&lvds_panel_pins>;
> > +		enable-gpios =3D <&main_gpio0 36 GPIO_ACTIVE_HIGH>;
> > +		power-supply =3D <&reg_lvds_pwr>;
> > +	};
> > +
> > +	fan0: pwm-fan {
> > +		compatible =3D "pwm-fan";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pwm_fan_pins>;
> > +		fan-supply =3D <&reg_pwm_fan>;
> > +		#cooling-cells =3D <2>;
> > +		/* typical 25 kHz -> 40.000 nsec */
> > +		pwms =3D <&epwm0 1 40000 PWM_POLARITY_INVERTED>;
> > +		cooling-levels =3D <0 32 64 128 196 240>;
> > +		pulses-per-revolution =3D <2>;
> > +		interrupt-parent =3D <&main_gpio1>;
> > +		interrupts =3D <30 IRQ_TYPE_EDGE_FALLING>;
> > +		status =3D "disabled";
>=20
> please document why disabled?

Will add a comment (disabled as our starterkits don't include a fan, and
different fans may need different PWM frequencies).


>=20
> [...]
> > +
> > +	reg_pwm_fan: regulator-pwm-fan {
> > +		compatible =3D "regulator-fixed";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&reg_pwm_fan_pins>;
> > +		regulator-name =3D "FAN_PWR";
> > +		regulator-min-microvolt =3D <12000000>;
> > +		regulator-max-microvolt =3D <12000000>;
>=20
> Just checking.. Did you intent a 12v supply for fan?

This is a standard 4-pin fan connector as is common on x86 mainboards, whic=
h
includes a 12V supply.


>=20
> > +		gpio =3D <&main_gpio0 62 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +	};
> > +
>=20
> [...]
>=20
> > +
> > +	lvds_panel_pins: lvds-panel-pins {
> > +		pinctrl-single,pins =3D <
> > +			/* (N20) GPMC0_BE1n.GPIO0_36 - LVDS0_RESET# */
> > +			AM62X_IOPAD(0x0094, PIN_OUTPUT, 7)
>=20
> Could you follow the comment convention you have elsewhere? please follow=
 the
> same in gpio below etc..
> AM62X_IOPAD(....) /* (N20) ... */

I tried to avoid making the lines overly long an adhered to the regular 100
column limit where reasonable. I agree that the current inconsistent style =
is
not so nice... I see two options here:

- Consistently move the comment to a separate line
- Break long comments including pin name, pin function and board signal fun=
ction
  into two lines


>=20
> btw, panel node uses it as:
> enable-gpios =3D <&main_gpio0 36 GPIO_ACTIVE_HIGH>;
>=20
> isn't RESET# meant to be active low?

As an "enable" pin enables when active and a "reset" pin disables when acti=
ve,
an active-low reset is the same as an active-high enable.


>=20
> > +		>;
> > +	};
> > +
>=20
> [...]
>=20
>=20
> > diff --git a/arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi b/arch/arm64=
/boot/dts/ti/k3-am625-tqma62xx.dtsi
> > new file mode 100644
> > index 0000000000000..1b7d58cb7b936
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi
> > @@ -0,0 +1,331 @@
> > +// SPDX-License-Identifier: GPL-2.0-only OR MIT
> > +/*
> > + * Copyright (C) 2021-2022 Texas Instruments Incorporated - https://ww=
w.ti.com/
> > + * Copyright (c) 2023-2025 TQ-Systems GmbH <linux@ew.tq-group.com>, D-=
82229 Seefeld, Germany.
> > + * Author: Matthias Schiffer
> > + */
>=20
> [...]
>=20
> > +		regulators {
> > +			reg_buck1: buck1 {
> > +				regulator-name =3D "V_VDD_CORE";
> > +				regulator-min-microvolt =3D <750000>;
> > +				regulator-max-microvolt =3D <750000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> [...]
>=20
> > +
> > +&a53_opp_table {
> > +	opp-1400000000 {
> > +		opp-hz =3D /bits/ 64 <1400000000>;
> > +		opp-supported-hw =3D <0x01 0x0004>;
> > +		opp-suspend;
> > +		clock-latency-ns =3D <6000000>;
> > +		/* Enabled by bootloader if supported */
> > +		status =3D "disabled";
>=20
> This (bootloader enabling just this node) wont work unless vdd_core
> voltage is configured to 0.8v as well, no?

Correct, the bootloader patches both PMIC config and OPP table.

Best,
Matthias


>=20
> > +	};
> > +};
> > +
>=20

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

