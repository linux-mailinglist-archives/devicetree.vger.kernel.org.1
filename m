Return-Path: <devicetree+bounces-61426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C58ACA68
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 12:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 496D2B21105
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2131E13E3E5;
	Mon, 22 Apr 2024 10:17:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCEB353814
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 10:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713781076; cv=none; b=UFzyg/eqfMQnMPyEtXz4y4dQQDh45pRAQFMrRNtBdoAhpGckeg6udPEExPWUoraE6I02o/JM9GOzY04p0CuXj1KA7G26Gm6ZAp6kjgPHgAGUBum4YytjlIVGZSJkZCB+2zUPu532oZH4ARRGe9TMr+LuEwNfS7UlNbmWTRxSQJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713781076; c=relaxed/simple;
	bh=svGyz4z6bA/8JnCaiSd6qxJ3uzjTs45F6QleoOPTf8c=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Rz0wFbSn2RiOKkqYPzL91c3aNZge8lDjrfE5E9zY+UmytIOx1wPDRFutZNRGRHWhayGr6im1fCqnRJwS58SBQ6khZEUPI2XRihVOAAYz1S16KwQ0hWA0tuPsamUfL/orj96aXMQPmjYSRnwUSYu9/CcDr4X2bHlH5RBBzDUINHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94D2B339;
	Mon, 22 Apr 2024 03:18:21 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E55A93F64C;
	Mon, 22 Apr 2024 03:17:51 -0700 (PDT)
Date: Mon, 22 Apr 2024 11:17:49 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Ryan Walklin <ryan@testtoast.com>, Chen-Yu Tsai <wens@csie.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, devicetree@vger.kernel.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 4/5] arm64: dts: allwinner: h700: Add RG35XX-H DTS
Message-ID: <20240422111749.1a08207e@donnerap.manchester.arm.com>
In-Reply-To: <DM4PR05MB9229B7D4654478D28D1BC2B6A5132@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240420104354.334947-5-ryan@testtoast.com>
	<20240420104354.334947-10-ryan@testtoast.com>
	<20240421020627.6d186f8f@minigeek.lan>
	<DM4PR05MB9229B7D4654478D28D1BC2B6A5132@DM4PR05MB9229.namprd05.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 20 Apr 2024 22:09:40 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

Hi Chris,

many thanks for chiming in and doing all those experiments!

> On Sun, Apr 21, 2024 at 02:06:27AM +0100, Andre Przywara wrote:
> > On Sat, 20 Apr 2024 22:43:58 +1200
> > Ryan Walklin <ryan@testtoast.com> wrote:
> > 
> > Hi,
> >   
> > > The RG35XX-H adds thumbsticks, a stereo speaker, and a second USB port to the RG35XX-Plus, and has a horizontal form factor.
> > > 
> > > Enabled in this DTS:
> > > - Thumbsticks
> > > - Second USB port
> > > 
> > > Changelog v1..v2:
> > > - Update copyright
> > > - Spaces -> Tabs
> > > - Add GP ADC joystick axes and mux [1]
> > > - Add EHCI/OHCI1 for second USB port and add vbus supply
> > > 
> > > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > > 
> > > [1]: https://lore.kernel.org/linux-sunxi/20240417170423.20640-1-macroalpha82@gmail.com/T/#t  
> > 
> > As mention on patch 2/5, this might be better an optional dependency,
> > so the GPADC part might be a separate patch.
> >   
> > > 
> > > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> > > ---
> > >  .../sun50i-h700-anbernic-rg35xx-h.dts         | 126 ++++++++++++++++++
> > >  1 file changed, 126 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> > > new file mode 100644
> > > index 000000000000..d62cf5cd9d9b
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
> > > @@ -0,0 +1,126 @@
> > > +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +/*
> > > + * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
> > > + * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
> > > + */
> > > +
> > > +#include "sun50i-h700-anbernic-rg35xx-plus.dts"
> > > +
> > > +/ {
> > > +	model = "Anbernic RG35XX H";
> > > +	compatible = "anbernic,rg35xx-h", "allwinner,sun50i-h700";
> > > +
> > > +	adc-joystick {
> > > +		compatible = "adc-joystick";
> > > +		io-channels = <&adc_mux 0>,
> > > +				  <&adc_mux 1>,
> > > +				  <&adc_mux 2>,
> > > +				  <&adc_mux 3>;
> > > +		pinctrl-0 = <&joy_mux_pin>;
> > > +		pinctrl-names = "default";
> > > +		poll-interval = <60>;
> > > +		#address-cells = <1>;
> > > +		#size-cells = <0>;
> > > +
> > > +		axis@0 {
> > > +			reg = <0>;
> > > +			abs-flat = <32>;
> > > +			abs-fuzz = <32>;
> > > +			abs-range = <4096 0>;
> > > +			linux,code = <ABS_X>;
> > > +		};
> > > +
> > > +		axis@1 {
> > > +			reg = <1>;
> > > +			abs-flat = <32>;
> > > +			abs-fuzz = <32>;
> > > +			abs-range = <0 4096>;
> > > +			linux,code = <ABS_Y>;
> > > +		};
> > > +
> > > +		axis@2 {
> > > +			reg = <2>;
> > > +			abs-flat = <32>;
> > > +			abs-fuzz = <32>;
> > > +			abs-range = <0 4096>;
> > > +			linux,code = <ABS_RX>;
> > > +		};
> > > +
> > > +		axis@3 {
> > > +			reg = <3>;
> > > +			abs-flat = <32>;
> > > +			abs-fuzz = <32>;
> > > +			abs-range = <4096 0>;
> > > +			linux,code = <ABS_RY>;
> > > +		};
> > > +	};
> > > +
> > > +	adc_mux: adc-mux {
> > > +		compatible = "io-channel-mux";
> > > +		channels = "left_x", "left_y", "right_x", "right_y";
> > > +		#io-channel-cells = <1>;
> > > +		io-channels = <&gpadc 0>;
> > > +		io-channel-names = "parent";
> > > +		mux-controls = <&gpio_mux>;
> > > +		settle-time-us = <100>;
> > > +	};
> > > +
> > > +	gpio_keys: gpio-keys-thumb {  
> > 
> > Is there any reason to not just use the existing gpio-keys node?
> > Either put a label on it in patch 2/5, and reference that below,
> > outside of the root node, or use an absolute path reference.  
> 
> I would also second just putting an alias and adding these to it.
> I myself as a preference tend to set the GPIO volume buttons as
> a seperate node only so I can enable key repeat on them, otherwise
> one node is best.
> 
> >   
> > > +		compatible = "gpio-keys";
> > > +
> > > +		button-thumbl {
> > > +			label = "GPIO Thumb Left";
> > > +			gpios = <&pio 4 8 GPIO_ACTIVE_LOW>; /* PE8 */
> > > +			linux,input-type = <EV_KEY>;
> > > +			linux,code = <BTN_THUMBL>;
> > > +		};
> > > +
> > > +		button-thumbr {
> > > +			label = "GPIO Thumb Right";
> > > +			gpios = <&pio 4 9 GPIO_ACTIVE_LOW>; /* PE9 */
> > > +			linux,input-type = <EV_KEY>;
> > > +			linux,code = <BTN_THUMBR>;
> > > +		};
> > > +	};
> > > +
> > > +	gpio_mux: mux-controller {
> > > +		compatible = "gpio-mux";
> > > +		mux-gpios = <&pio 8 1 GPIO_ACTIVE_LOW>,
> > > +				<&pio 8 2 GPIO_ACTIVE_LOW>; /* PI1, PI2 */
> > > +		#mux-control-cells = <0>;
> > > +	};
> > > +};
> > > +
> > > +&gpadc {
> > > +	#address-cells = <1>;
> > > +	#size-cells = <0>;
> > > +	status = "okay";
> > > +
> > > +	channel@0 {
> > > +		reg = <0>;
> > > +	};
> > > +};
> > > +
> > > +&pio {  
> 
> After extensive testing with a multimeter and fudging the regulator
> voltages up or down, I've been able to figure out the regulator
> assignments for each of the different power domains. Schematics would
> have helped, but sadly this had to be done the hard way. Based on
> past experience with Anbernic I would strongly suspect all devices
> have this assignment, but I know for sure my  35XXH does.
> 
>         vcc-pa-supply = <&reg_cldo3>;
>         vcc-pc-supply = <&reg_cldo3>;
>         vcc-pe-supply = <&reg_cldo3>;
>         vcc-pf-supply = <&reg_cldo3>;
>         vcc-pg-supply = <&reg_aldo4>;
>         vcc-ph-supply = <&reg_cldo3>;
>         vcc-pi-supply = <&reg_cldo3>;
> 
> On my board the reg_cldo3 is a constant 3.3v output, and the reg_aldo4
> is a constant 1.8v output.

Ah, many thanks for doing this, this is indeed very helpful!
There are more power input pins on the SoC, some are essential, like the
already mentioned VCC-PLL, but also AVCC, I think. The datasheet should
give the voltages required for each. So if CLDO3 is 3.3V, and ALDO4 is
1.8V, both right from reset, then there is a chance that those rails are
(re-)used for those essential lines as well.

Also there are per-subsystem power supplies, like for HDMI and USB. For
HDMI the binding supports a -supply property, but for the USB-PHY we do
not (which should be fixed).
So there must be some 3.3V rail supplying VCC-USB, and that's NOT the VBUS
bus power, but needed for the PHY, as USB 1.x uses 3.3V on the data
lines. And even though this line is needed for USB only, we must mark it
as always-on, as there is no way to specify the consumer, as just
mentioned.

> > > +	joy_mux_pin: joy-mux-pin {
> > > +		pins = "PI0";
> > > +		function = "gpio_out";
> > > +	};
> > > +};
> > > +
> > > +&ehci1 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&ohci1 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usbotg {
> > > +	dr_mode = "peripheral";
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usbphy {
> > > +	usb1_vbus-supply = <&reg_vcc_usb>;  
> > 
> > This is the dodgy USB supply chain. Any chance we can narrow this down,
> > to maybe one GPIO controlled regulator? Also, where does the boost
> > controller come into play here?  
> 
> I haven't figured out the boost regulator yet, but for the host port
> I've been able to ascertain there's no less than 2 GPIO controlled
> regulators in play. PE5 must be driven high or the USB host port will
> not power on at all. If PE5 is driven high then the port kicks on, but
> at 3.3v. Once I also enable PI7 the port then reaches 4.6v. I'm not sure
> how to get it to a proper 5v yet, I'm still working that part out.
> 
> Maybe PE5 is a reset of some kind that's active low, I don't know. I
> just know so far/for sure that if PE5 is low then nothing registers on
> the USB host port; if PE5 is high but PI7 is low the port sort-of works
> at 3.3v, and if both PE5 and PI7 are high the port works consistently
> and at 4.6v.

Is that with some power provided through the other USB port? Then 4.6V
sound plausible.
Also I would assume there is some regulator or switch that toggles
VBUS between the PMIC input voltage and the boost regulator. The former
would be used when the device is powered through a USB cable, the latter
when it's on battery. I don't think it makes much sense to always use the
boost regulator, even when there is some "native" 5.0V available.
That being said I have no idea how to model this switch in the DT atm, but
maybe this helps with the understanding of the role of those two GPIOs?

Should PE5 really drive VCC-USB and VCC-USB2 on the SoC (I somewhat doubt
that, though), then we must mark this regulator as always-on, see above.

Cheers,
Andre

