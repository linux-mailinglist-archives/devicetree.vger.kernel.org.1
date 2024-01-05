Return-Path: <devicetree+bounces-29903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B43EE8257CD
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 17:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D594B1C228CE
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 16:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF1C2E832;
	Fri,  5 Jan 2024 16:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mecka.net header.i=@mecka.net header.b="rjg0gFzn"
X-Original-To: devicetree@vger.kernel.org
Received: from mecka.net (mecka.net [159.69.159.214])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1BC2E626;
	Fri,  5 Jan 2024 16:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mecka.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mecka.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1704471069; bh=scRaWWoI9TurorlydzlbrmexlJ5AF4ZUMgBpMJ6yCQ8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=rjg0gFzndNziXNNA+a0FA5OO8jv9mYpGi8AEo/Dcv9PBAl46InjVt3ZqXfv3ZufAj
	 OznAyeCsh0+RRIlV0VHSNQLhtBk9d4OuNePZeyBsUf7UXLwKWDqASCxGoTIzJfhgDq
	 p/pznipJe/LUAYkOqnc+F9gns4AdpwXQWdPGXZfLzoAAuPCQjfdC5W70v0RtXsiDap
	 vaOb1eE+uEEswJkI/Yy3OFRRA3UDXkj5ueis5S2oFRoSIK9bR/9mzWTOyU7gdP30ZO
	 8O3qH7tfn4XwOUWaEOIaP865Lj+rQCrqRHmMGNLckrCbTyY7RFr7gkoxwE6kX6hR1V
	 uyXkJyfECEnSw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 4ADCF37C331;
	Fri,  5 Jan 2024 17:11:09 +0100 (CET)
Date: Fri, 5 Jan 2024 17:11:03 +0100
From: Manuel Traut <manut@mecka.net>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <ZZgqF5hLO8UThPep@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <vj3elmkt6czisvwqouv2hhvut2va5jw6bbj5kjyxawvrnrdfwm@tlpo3dp3qcyb>

On Wed, Jan 03, 2024 at 10:42:54AM +0100, Ondřej Jirman wrote:
> Hello Manuel,
> 
> a few more things I noticed:
> 
> On Tue, Jan 02, 2024 at 05:15:47PM +0100, Manuel Traut wrote:
> > From: Alexander Warnecke <awarnecke002@hotmail.com>
> > 
> > +	leds {
> > +		compatible = "gpio-leds";
> > +
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&flash_led_en_h>;
> > +
> > +		led-0 {
> > +			gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> > +			color = <LED_COLOR_ID_WHITE>;
> > +			function = LED_FUNCTION_FLASH;
> > +		};
> 
> This LED is supplied by VCC5V_MIDU, so maybe this should be a regulator-led
> supplied by gpio (FLASH_LED_EN_H) controlled regulator-fixed named f_led which
> is in turn supplied by VCC5V_MIDU.
> 
> https://megous.com/dl/tmp/9bf0d85d78946b5e.png

regulator-leds are controlled by turning on or off the regulator. However
VCC5V_MIDU is also used by other devices (USB, HDMI, ..) so I guess this is
not what we want. I would keep it as is.

> > +	};
> > +
> > [...]
> >
> > +
> > +	speaker_amp: speaker-amplifier {
> > +		compatible = "simple-audio-amplifier";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&spk_ctl>;
> > +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +		sound-name-prefix = "Speaker Amplifier";
> > +		VCC-supply = <&vcc_bat>;
> > +	};
> > +
> > +	vcc_3v3: vcc-3v3 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_3v3";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc3v3_sys>;
> > +	};
> > +
> > +	vcc3v3_minipcie: vcc3v3-minipcie {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio4 RK_PC3 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pcie_pwren_h>;
> > +		regulator-name = "vcc3v3_minipcie";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_sys>;
> 
> This regulator is supplied by vcc_bat: https://megous.com/dl/tmp/4ec71a4a2aea9498.png

correct, I will update this in v4.

> > +	};
> > +
> > +	vcc3v3_sd: vcc3v3-sd {
> > +		compatible = "regulator-fixed";
> > +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&sdmmc_pwren_l>;
> > +		regulator-name = "vcc3v3_sd";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc3v3_sys>;
> > +	};
> > +
> > +	vcc5v0_usb_host0: vcc5v0-usb-host0 {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&usb_host_pwren1_h>;
> > +		regulator-name = "vcc5v0_usb_host0";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		vin-supply = <&vcc5v_midu>;
> > +	};
> > +
> > +	vcc5v0_usb_host2: vcc5v0-usb-host2 {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&usb_host_pwren2_h>;
> > +		regulator-name = "vcc5v0_usb_host2";
> > +		regulator-min-microvolt = <5000000>;
> > +		regulator-max-microvolt = <5000000>;
> > +		vin-supply = <&vcc5v_midu>;
> > +	};
> > +
> > +	vcc_bat: vcc-bat {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_bat";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +	};
> > +
> > +	vcc_sys: vcc-sys {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply = <&vcc_bat>;
> > +	};
> > +
> > +	vdd1v2_dvp: vdd1v2-dvp {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vdd1v2_dvp";
> > +		regulator-min-microvolt = <1200000>;
> > +		regulator-max-microvolt = <1200000>;
> > +		vin-supply = <&vcc_3v3>;
> > +		/*enable-supply = <&vcc2v8_dvp>;*/
> > +	};
> 
> There's no vdd1v2_dvp in the schematic on the camera sensor connector, or elsewhere:
>
>   https://megous.com/dl/tmp/fd95f003d8f3fbfb.png

It is on page 5 in the power diagram on the right top.

> So I guess, you can drop this, entirely. Maybe it's VDD1V5_DVP but I don't think
> it needs to be described in DT, since it's pretty local to this camera sensor,
> and nothing else uses it.
> 
>   https://megous.com/dl/tmp/7fc384e196c5428f.png

dvdd-supply is a required property of the ov5648 camera, so I would tend to keep
this. But us vcc_sys for vin-supply instead of vcc_3v3.

Regards
Manuel

