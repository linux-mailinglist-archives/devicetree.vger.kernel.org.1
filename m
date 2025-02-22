Return-Path: <devicetree+bounces-149751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C35EAA4057B
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 05:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD174422CC3
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 04:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D718634C;
	Sat, 22 Feb 2025 04:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="E/dlZ6D1"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC94F4FA
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 04:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740199002; cv=none; b=YlWFYIwtddNZ9+UivxTuSQ9NJcVON0CA/Gb8DFeOoOEbclgV1+kij3jMVDAjKPP0pdvZd6EazPdyRqOQUIOb+8JnazIh0XU49oxiAXEmtCKVp5llfJau1zUGKPOOBYvCIngV9OKcaktODX+I8DYuKy4tuNKf+YqkDwMFHhm4A1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740199002; c=relaxed/simple;
	bh=xw1MYUehC/PqWz+FBsCYkD4o1jder8YINF31oJwP4jo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJVfqkk4hKAjtmcuBuxKOW2oeuv6NXGNeKLSzngoFR06vnSwrf6ciFjhD/a8iiflDEh0Xt7XGbQkrBtF9hDHmjWBVIMIdO+b8P/l3/Rwmo9xgbod7AIu7Sj6/mF0R5l44X4FNGK9F6H59jAqzTArouHVsGFGocdIUz17G2U2Fqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=E/dlZ6D1; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 6B4318A0A03;
	Fri, 21 Feb 2025 20:31:38 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 53B7B160036F; Fri, 21 Feb 2025 20:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740198698;
	bh=JVPXaGswn6h9CQME9YRi+phZaOE/13SLpDLogchJANM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E/dlZ6D1Arf0WodgxXqPt7bEWnIj0uZOjyg5MC8RpBmWOdzP+vhBPGysfC826Lk6c
	 CR/F3LJo6ghe6xix0waGz2pVBrcmgBBZ4ZCLo7r7o4PGUvANoq5eX+UhShO0yp9HzY
	 10uZfly67E3E8fptEz2mMXBCggsZshbeEPq9JA50=
Date: Fri, 21 Feb 2025 20:31:38 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222043138.GT16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Feb 21, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> On Fri, Feb 21, 2025 at 5:13 PM Johannes Erdfelt <johannes@erdfelt.com> wrote:
> > However, neither of the USB 3.0 ports work. There are no XHCI messages
> > during boot. I confirmed my kernel config does build XHCI. I haven't
> > ruled out a mistake on my end yet.
> 
> Does your kernel config have CONFIG_PHY_ROCKCHIP_USBDP?
> Both USB 3 ports on the Max/Ultra ports are wired to the usbdp
> controller and not combphy2_psu controller.
> It'll be set if you're using the arm64 defconfig.

Yeah, we came to the same conclusion. I noticed this was disabled in my
config when I was looking for potential mistakes I may have made.

Enabling it fixes the USB 3.0 port problem.

> > Also, the green LED is constantly lit even when the trigger is set to
> > none and the brightness is set to 0. This made is a bit harder to
> > confirm that the blue LED was working. I haven't ruled out a mistake on
> > my end for this one yet either.
> 
> Checking the schematic for the Max and the Ultra, they both use
> PWM4_M0 and PWM5_M1 to control the blue and green LEDs.

Some brief testing makes it seem like the LEDs are inverted.

If I set the trigger for each LED to "default-on", then they turn off.
If both are set to "default-on", then only the red LED is lit.

Also, "heartbeat" appears to be inverted.

I tried a new DT with this patch and it appears to work correctly on the
Ultra I have. However, it raises the question why the Max behaves
differently from the Ultra.

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
index 87090cb98020..ed51a4763318 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/pwm/pwm.h>
 #include "rk3588-orangepi-5.dtsi"
 
 / {
@@ -62,13 +63,13 @@ &hym8563 {
 
 &led_blue_pwm {
 	/* PWM_LED1 */
-	pwms = <&pwm4 0 25000 0>;
+	pwms = <&pwm4 0 25000 PWM_POLARITY_INVERTED>;
 	status = "okay";
 };
 
 &led_green_pwm {
 	/* PWM_LED2 */
-	pwms = <&pwm5 0 25000 0>;
+	pwms = <&pwm5 0 25000 PWM_POLARITY_INVERTED>;
 };
 
 /* phy2 */

JE


