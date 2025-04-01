Return-Path: <devicetree+bounces-162297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC46EA77B91
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:02:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7286916DB25
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 13:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66A920371F;
	Tue,  1 Apr 2025 13:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="LOKHmYAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E413720371A
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 13:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743512420; cv=none; b=NFN/QNUbZPn+ybnrou7PhtnjdxrrZ+M5v/voiPGJ9/UIzwWKFEoyVNnQwFMuu0rJz4QfT5rgUo21uRuE9ZIUf6v5zR80K8GFUMI68dQBfzB+VHhrqXBX1b1JdnfmT9lxeSMdWekVuMGon+T2RPO7QTeLZz8GZyT44z6g3IfJd3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743512420; c=relaxed/simple;
	bh=DzC9bukHy47TjGfwcug8gM7evmzmuBLiRPZ4FYnSoOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SOD715skLt8kF3UmKTSxqzqKB9aCZd4zsNl9jhBjm7zbVWPZD8zEqJmZdfxv397ttscaqLAvi5ZWAXqZGKktC6GSk/erSslawcwGCcgOoec3XKq5ob5yxKsyfr45m6PastnVWS6q5F7aCYmY+xzB19MQSyrhO1v5CtK6/AciwBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=LOKHmYAD; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 06EA0240103
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 15:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1743512410; bh=DzC9bukHy47TjGfwcug8gM7evmzmuBLiRPZ4FYnSoOU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=LOKHmYAD92WGXRYddpx9klsLdIa724JsAZvgeQYdDVzxgFeVHQVircrF0Jg2GRDRO
	 t20sTFLJqDPmw9155QtOZ1Q4Z1roVmL/RFOxMYkrif9+oqi6cMHJIWxu3N9+12bTtX
	 70ioAt5Wez9Fissvl4aWiIy1WpaNucvTzDkLqv4uwiGB2r22uKxDeZMHgdFo365xUD
	 Z2oXanIvf0eGai3JG8orStMdKbhIoRk6CojNipN0QaP8u2o8XQENAmeJWpuaJ9Q53O
	 2RFwDOD5ESxHtEvKCG0gTnhG39w2EHSWkvM1LqPeHcPUkFXpapc09WOtwn4O75CtF0
	 Jmkng6GGUxR/g==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ZRp4m3h9Mz9rxQ;
	Tue,  1 Apr 2025 15:00:08 +0200 (CEST)
Date: Tue,  1 Apr 2025 13:00:08 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: j.ne@posteo.net, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: amlogic: Add TCU Fernsehfee 3.0
Message-ID: <Z-vjWFFWvo1gesCe@probook>
References: <20250323-fernsehfee-v1-0-2621341cd37a@posteo.net>
 <20250323-fernsehfee-v1-3-2621341cd37a@posteo.net>
 <CAFBinCD13CNuxRkrSoPXUMNQ9AJH7UV0gsOfdgeRKhkXsANgnw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFBinCD13CNuxRkrSoPXUMNQ9AJH7UV0gsOfdgeRKhkXsANgnw@mail.gmail.com>

On Sun, Mar 30, 2025 at 11:10:28PM +0200, Martin Blumenstingl wrote:
> Thanks for your patch!
> 
> On Sun, Mar 23, 2025 at 1:38 PM J. Neuschäfer via B4 Relay
> <devnull+j.ne.posteo.net@kernel.org> wrote:
> [...]
> > +               eth_phy0: ethernet-phy@0 {
> > +                       /* IC Plus IP101A (0x02430c54) */
> > +                       reg = <0>;
> Does reg = <1> also work on your board?
> 0 is the broadcast address. It's unfortunately something that we still
> have incorrect in a lot of .dts files.

Unfortunately not. I tried addresses 1 to 31 without success, which
seems strange; my guess was that the PHY should respond to one of them.
I get this error:

# ip l set eth0 up
[    6.806847] meson6-dwmac c9410000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
[    6.810609] meson6-dwmac c9410000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)


> 
> [...]
> > +&i2c_AO {
> > +       status = "okay";
> > +       pinctrl-0 = <&i2c_ao_pins>;
> > +       pinctrl-names = "default";
> > +
> > +       pmic@32 {
> > +               compatible = "ricoh,rn5t618";
> > +               reg = <0x32>;
> > +               system-power-controller;
> Here I'm a bit surprised:
> Aren't some of the outputs used to drive VCCK (CPU power rail) and
> VDDEE (everything else power rail, which also powers the GPU)?

Unfortunately I don't have schematics and I wasn't able to trace the
connections on the board because they're so tiny. So it's quite possible that
you're right, but I can't be sure.

Are there voltage sensors in the Meson8 SoC that I could use to establishs the
relation between PMIC outputs and SoC supplies?

> 
> [...]
> > +&usb1 {
> > +       status = "okay";
> > +       dr_mode = "host";
> > +       /*
> > +        * This bus features a Realtek RTL8188 2.4GHz WiFi module, with a
> > +        * 3.3V supply voltage that must be enabled before use.
> > +        */
> > +       vbus-supply = <&wifi_3v3>;
> If you want to go for perfection then you can use
> Documentation/devicetree/bindings/sound/xmos,xvf3500.yaml as
> reference.
> It's also an "onboard" USB device which requires toggling a GPIO and regulators.
> The driver side is super easy to manage as it's generic (meaning: it
> parses any GPIO and regulator as long as the USB ID is registered):
> drivers/usb/misc/onboard_usb_dev.c

I considered using onboard_usb_dev, but then came to the conclusion that
I don't need it because I don't need reset sequencing, only power.

> That way you can just describe the RTL8188 on the USB bus and assign
> it's vd33-supply without having to (ab)use vbus-supply of the USB
> controller.

This does sound reasonable. I'll reconsider the onboard_usb_dev
approach.

> 
> [...]
> > +               sdxc_c_pins: sdxc-c {
> > +                       mux {
> > +                               groups = "sdxc_d0_c", "sdxc_d13_c",
> > +                                       "sdxc_clk_c", "sdxc_cmd_c",
> > +                                       "sdxc_d47_c";
> > +                               function = "sdxc_c";
> > +                               bias_pull_up;
> This has to be bias-pull-up (dashes instead of underscores).

Oh, good catch, I'll fix it.


Thanks for your review,
J. Neuschäfer

