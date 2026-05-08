Return-Path: <devicetree+bounces-294761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIRAKcF1/mm7rAAAu9opvQ
	(envelope-from <devicetree+bounces-294761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:46:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 021FE4FCE27
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:46:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D1083024C9A
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 23:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2CA3128CA;
	Fri,  8 May 2026 23:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9bM2UFO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DFC299937
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 23:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778283966; cv=none; b=uTfhU6H2Z6aXIHRgGNjFv3O52RI824Hq8FqdyReGGm9tcYIrRRgWkg0ym/yKagkCms+FIxVKHTjljpD5fjt/OyA+1QRCW220HHBQLYznbJHn1vCuRYgvAbs5e+0d22kxnnWI/i1jOA4BgATtNFoy4kAaTmXFFwjXZvcus84ZTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778283966; c=relaxed/simple;
	bh=FGqW/+f0NMwSR+SG6jz7DNZVjgb5Af+l+3eNM49NZU4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GSLGg3p+HgK1apQqOp2NAn8zDEZ8GYt5BaZ82CB3I7Bbvf6VS4qE9MihQd5xOskitKOgIADmM3UKuCuAfDabIRhStYxH3wUlW987H8cN2iuE9BKLtC/fpRa6brqnMLVGWZ5ysvbjJbv4jYuAH5ky0JIKxY9kzUG7qbMj+eQTk30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9bM2UFO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E666BC2BCB0;
	Fri,  8 May 2026 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778283966;
	bh=FGqW/+f0NMwSR+SG6jz7DNZVjgb5Af+l+3eNM49NZU4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Y9bM2UFOZduqIg7elVnmEcWokrbFIloNglQ3pLujw3vDKuxrY+hblTfHUuRThS52R
	 LqawxCWSEWjugvvq6DcL3pZHVTut0x0FXklerjw8Xwcxb9EQHg88/l0Fy4yp6P42C6
	 xYHUyQpiAgLf1AX8jtNFet/EzDnW4CWcyJwnBy96wFxa0muQf3KIM106I0I44T6C21
	 wVtKJZXjPKuAmoSyuTKsOrBQ8+NkMXv7TeNsKd9/BgRZsoL9J33EYA1bOyBSZuKwlu
	 X2sgskZggfoOaR4hNoUxkea/O3i4smDXBCz+GSTlQwpcd4iMMSnpVDqqCfzjNAzEE9
	 jM/2RNeDS1IRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: ti: Add k3-am62l3-beaglebadge
Reply-To: sashiko@lists.linux.dev
To: "Judith Mendez" <jm@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260508230341.1891450-3-jm@ti.com>
References: <20260508230341.1891450-3-jm@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 23:46:05 +0000
Message-Id: <20260508234605.E666BC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 021FE4FCE27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294761-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TO_DN_SOME(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.709];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: add header
X-Spam: Yes

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] Incorrect muxmode for MCP23S18 reset pin
- [Medium] Invalid PWM period for multicolor RGB LEDs
- [Medium] Over-voltage input configuration for 3.3V load switch
- [Low] Device Tree schema violation in `microchip,spi-present-mask`
- [Low] Unnecessary address and size cells in `sdhci2` node
- [Low] Typo in gpio-line-names
--

commit 7f076ae76f17c0b92ffa0b772d551d80e949dbd9
Author: Judith Mendez <jm@ti.com>

arm64: dts: ti: Add k3-am62l3-beaglebadge

BeagleBoard.org BeagleBadge is a compact, affordable open source hardware
single board computer based on the Texas Instruments AM62L3 SoC. Expansion
is provided over open standards based headers including QWIIC and GPIO
interfaces.

Link: https://beagleboard.org
Link: https://github.com/beagleboard/BeagleBadge

> diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-beaglebadge.dts b/arch/arm6=
4/boot/dts/ti/k3-am62l3-beaglebadge.dts
> new file mode 100644
> index 0000000000000..2bbced7bc2c9d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am62l3-beaglebadge.dts

[ ... ]

> +	multicolor-led {
> +		compatible =3D "pwm-leds-multicolor";
> +
> +		multi-led {
> +			color =3D <LED_COLOR_ID_RGB>;
> +			max-brightness =3D <255>;
> +
> +			led-red {
> +				pwms =3D <&ecap2 0 255 0>;

Is 255 nanoseconds the correct PWM period here?

This translates to a frequency of ~3.9 MHz, which is far too fast for LED
brightness control and provides virtually no duty cycle resolution.

Was the max-brightness value (255) incorrectly copied into the PWM period c=
ell?

[ ... ]

> +	vsys_out: regulator-0 {
> +		/* output of BQ24070 */
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VSYS_OUT";
> +		regulator-min-microvolt =3D <4400000>;
> +		regulator-max-microvolt =3D <4400000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		bootph-all;
> +	};
> +
> +	vcc_3v3_main: regulator-1 {
> +		/* output of TPS62A06 */
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VCC_3V3_MAIN";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		vin-supply =3D <&vsys_out>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		bootph-all;
> +	};
> +
> +	vdd_3v3: regulator-2 {
> +		/* output of TPS22965 */
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VDD_3V3";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		vin-supply =3D <&vsys_out>;

Should this load switch be connected to &vcc_3v3_main instead of &vsys_out?

Since it is a load switch, its output voltage matches its input voltage.
Connecting its vin-supply to &vsys_out (4.4V) contradicts the node's
regulator-max-microvolt =3D <3300000> configuration, causing it to pass
4.4V to a 3.3V rail.

[ ... ]

> +	mcp23s18_reset_pins_default: mcp23s18-reset-default-pins {
> +		pinctrl-single,pins =3D <
> +			AM62LX_IOPAD(0x00a0, PIN_OUTPUT, 4) /* (H21) GPMC0_AD10.GPIO0_25 */

Does this pin need to be configured for muxmode 7?

The comments and the reset-gpios property of the mcp23s18 node expect this =
pin
to act as GPIO0_25. On AM62Lx SoCs, the GPIO function is located at muxmode=
 7.

With muxmode 4, the pad won't be connected to the GPIO controller, and the
GPIO expander will remain in reset.

[ ... ]

> +&gpio0 {
> +	gpio-line-names =3D"","","","","","","","","","",									/* 0-9 */
> +			 "","","","","","BOOST_5V_ENA","VDD_3V3_SD_ENA","","","",					/* 10-1=
9 */
> +			 "","","","","","MCP23S18_RESET","BTN_SELECT","","","",						/* 20-29=
 */
> +			 "","BTN_LEFT","BTN_UP","","LORA_RESET","","","","","",						/* 30-39=
 */
> +			 "FUEL_GUAGE_BATLOW","LORA_RFSW","BTN_DOWN","USB_HUB_RST","MIKROBUS_I=
NT","","","","","",	/* 40-49 */

This isn't a bug, but there's a typo (FUEL_GUAGE_BATLOW) in the line name.

[ ... ]

> +&sdhci2 {
> +	vmmc-supply =3D <&wlan_en>;
> +	bus-width =3D <4>;
> +	non-removable;
> +	cap-power-off-card;
> +	keep-power-in-suspend;
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;

Are these #address-cells and #size-cells properties needed here?

Since the sdhci2 node contains no child nodes, this will trigger an
avoid_unnecessary_addr_size dtc warning.

[ ... ]

> +&spi1 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spi1_pins_default>;
> +	status =3D "okay";
> +
> +	mcp23s18: gpio@0 {
> +		compatible =3D "microchip,mcp23s18";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		reset-gpios =3D <&gpio0 25 GPIO_ACTIVE_LOW>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&mcp23s18_reset_pins_default>;
> +		microchip,spi-present-mask =3D <0x01>;

Should microchip,spi-present-mask be formatted as /bits/ 8 <0x01>?

The microchip,mcp23s08.yaml device tree binding schema requires this proper=
ty
to be a uint8, so keeping it as a 32-bit cell will trigger a dt_binding_che=
ck
validation error.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508230341.1891=
450-1-jm@ti.com?part=3D2

