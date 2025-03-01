Return-Path: <devicetree+bounces-152921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 03570A4AA3A
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 11:32:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD0AB7A7210
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 10:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC7C1CBEB9;
	Sat,  1 Mar 2025 10:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b="HyXJ9bEX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f97.google.com (mail-wm1-f97.google.com [209.85.128.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6605223F39D
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 10:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740825138; cv=none; b=awnCsZgW/AFR1VNu9aeAZed5rwtP9nYlcKWNwfWo+tsQBe+LjA2uttl6ZEC5SNE/y45cUlGMK7/G1sfDdpZIrT0rn9/7slULfObaDEbbsnx/LfozM4pmSI5agxBqxTufRAcJyES/3AnNZDt+IiRzyY/R08ZMKInTfpjh+yxw+1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740825138; c=relaxed/simple;
	bh=8HH7jEtdEC7zgqbFFep3WMh8bKMeTTz0cvfxYubMB9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vy9Nfj4MOq3QGQ7lK3sLq4c8BAgueIt8SLtGeVE2dZrPYEJ8KiH3lfAQ/LwYPJRwUR7XhuD7mLtDM6pr/Q7oQY4PZAphTishqaEQaIzjwEQm9GFfs8SWG6sFU0CxkOgFR0iu9/TEuGnKt95xhAiEqRutYgQROjyOggmYYKHD/j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se; spf=pass smtp.mailfrom=blueri.se; dkim=pass (2048-bit key) header.d=patrick-wildt-de.20230601.gappssmtp.com header.i=@patrick-wildt-de.20230601.gappssmtp.com header.b=HyXJ9bEX; arc=none smtp.client-ip=209.85.128.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=blueri.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=blueri.se
Received: by mail-wm1-f97.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so18627385e9.3
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 02:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1740825133; x=1741429933; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=284ud8KZgsvJe3kKyqpcZEuN7Tvtd5nIkzcKwoRr0sg=;
        b=HyXJ9bEXKj8geypGtl5kcWIQQpwGx+Gf2fBN2aT3UWxGpjgSmrU4A1zceZJyix/VIZ
         psBnPU1v9IjnddYmRCoLHegSPmjkldNJ+drKdg5JKsDuWHo7XeXiOAXtPG2oGg4Vca/8
         mG/1PT2GWs5N0aTfeTArmdOWBiDEffeR9xXGkWz2Wjb1Us9g7Syw2YPuvgXwfstPYiNk
         eFFTWrTEhEsDVj7vB/pI71DzE5vhVCPxYs2aTNDPrDja0wIrBnLjWgL7e1ts7r8/+bAs
         H6QZBULIYyOnI7AxlEjJE6MWYYivRnoDDMolTDRpYkaI62wDImM8YUuuzJyuLvmM8thb
         fmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740825133; x=1741429933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=284ud8KZgsvJe3kKyqpcZEuN7Tvtd5nIkzcKwoRr0sg=;
        b=wv+QFEqNPVTaNZ8K5fCnEgtJcnDe3lif19C8a55U1W12EwLRKHYW6nI1YAtJux1bzp
         x6d7qK1Lq1mnYzmyn/N+Fk1/Su35PPVEoOiLWqOmPF5PtsTO5J+LxY5N3BLkrErX5tjO
         ouVwyFvif/Pegglb8JMN3sivZnfCHYus7hPrN8Ha6nai4+ovf1hBj8N0phRqmI+C+ZrI
         HRSAyXR0io4vUQ7VqM779t4l5+ENJwr1qc6jlPuDDB2Zf+ogGWC/FXJbBIBFxL0Sxb+m
         Gqmgm7awbUXae9a13mwWIlreAiILDVLV2f+Wt6OG4LZHB66ldFKwrMZnH7Pr8bs8FwOy
         2Csw==
X-Forwarded-Encrypted: i=1; AJvYcCVuhN/8K5QwuBd6FaOmJQo3pLBIq6yYhQHgbQFyUT5b45WLAxJ9OJPWt8OytxCm110xSMZuNzNht6xH@vger.kernel.org
X-Gm-Message-State: AOJu0YwOM9I7ScWSGBbmA+XCaUT+ce1X7C8rNOddn/2QpwJke6KjEv1y
	Qloe2V48tGh2IY1aovrw4d1G24CF5JwgZee5Qtd66C2wCgBzqkeSTB6v8G5ZAvtGfmoMXvo+C2Y
	JPCo4e2JOffA/oJKfToVPHvJfol7VAJD3
X-Gm-Gg: ASbGncvQT18QNGSMsNDEqIRYLMzLkndFWHsaB7hLuAddtYqCK3TqzT1ZUa60RRetcHy
	F9b5eUC0wSQLvXKGMSpeTDMTKc4r0jimHNWV5gJU8j0clw7cyH2igzA1u9W/3zFahXtSn2k5JmP
	+bdtAriDf4nkHT8Jm4mCBW4/gAzWY1uZ24Zq2RsVPGmuI7tA97oqz3SSTp50JcSWkDrDw8oLSPe
	byLEgaHfgcdQI2dH/Yv/mk2Vx4sRp1mhpKGVOXAYOj72F3vCzrlSzTZEiUqwwHHUuS8P2Wnp844
	+FRYmB0eH6YKIPa5kWpDSnpE5c94FzB2VfVhAxRRxFw=
X-Google-Smtp-Source: AGHT+IHrWDWJfyJus07zvqX5oGbCjo4A7NTax9luZq+BhbhEr0aXxJ5c0xg7yw9lm3Lg0IMqKXRt7tZuCCjr
X-Received: by 2002:a05:6000:401f:b0:38f:38eb:fcfc with SMTP id ffacd0b85a97d-390ec7c7fefmr5243899f8f.7.1740825133251;
        Sat, 01 Mar 2025 02:32:13 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-43b7a28b278sm5090285e9.45.2025.03.01.02.32.12
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 01 Mar 2025 02:32:13 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Sat, 1 Mar 2025 11:32:06 +0100
From: Patrick Wildt <patrick@blueri.se>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add MNT Reform 2
Message-ID: <Z8LiJgNkurF3xt3k@windev.fritz.box>
References: <Z7OaTzIpeJ-IACrl@windev.fritz.box>
 <Z7OahO_OtwYSmtmQ@windev.fritz.box>
 <2700899.tdWV9SEqCh@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2700899.tdWV9SEqCh@phil>

On Sun, Feb 23, 2025 at 12:38:40AM +0100, Heiko Stuebner wrote:
> Hi Patrick,
> 
> Am Montag, 17. Februar 2025, 21:22:28 MEZ schrieb Patrick Wildt:
> > MNT Reform 2 is an open source laptop with replaceable CPU modules,
> > including a version with the RK3588-based MNT RCORE[1], which is based
> > on Firefly's iCore-3588Q SoM:
> > 
> > - Rockchip RK3588
> > - Quad A76 and Quad A55 CPU
> > - 6 TOPS NPU
> > - up to 32GB LPDDR4x RAM
> > - SD Card slot
> > - Gigabit ethernet port
> > - HDMI port
> > - 2x mPCIe ports for WiFi or NVMe
> > - 3x USB 3.0 Type-A HOST port
> > 
> > [1] https://shop.mntre.com/products/mnt-reform
> > 
> > Signed-off-by: Lukas F. Hartmann <lukas@mntre.com>
> > Signed-off-by: Patrick Wildt <patrick@blueri.se>
> 
> bureaucracy question, what is Lukas' relationship with the patch?
> Two options:
> (1) Lukas initially developed the patch, then the "From:" should be
>     set accordingly
> (2) Both of you developed it together, then we should have a
>     Co-Developed-by: Lukas F. Hartmann <lukas@mntre.com>
>     up there
> 

Thanks, will send a v5 with Co-developed-by tag added! :)

> 
> Some more style things below...
> 

Are there further execptions to the alphabetical rule? For regulators
I often see min before max, which I think makes sense to understand
the range but isn't technically alphabetical. The same for pinctrl-0
and pinctrl-names.

Thanks,
Patrick

> 
> > ---
> > Changes for v4:
> > - Added chassis-type.
> > - Removed unused nodes.
> > - Sorted nodes alphabetically.
> > Changes for v3:
> > - Split DT as it's based on a Firefly iCore-3588Q SoM.
> > Changes for v2:
> > - Aligned with bindings and schemas to appease DTB check warnings.
> > - Aligned with format of other RK3588 boards for consistency.
> > 
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3588-firefly-icore-3588q.dtsi  | 451 ++++++++++++++++++
> >  .../boot/dts/rockchip/rk3588-mnt-reform2.dts  | 336 +++++++++++++
> >  3 files changed, 788 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index def1222c1907..88381d9a20e3 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -145,6 +145,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-firefly-itx-3588j.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-h96-max-v58.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-mnt-reform2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> > new file mode 100644
> > index 000000000000..898a7b29692f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> > @@ -0,0 +1,451 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +	compatible = "firefly,icore-3588q", "rockchip,rk3588";
> > +
> > +	aliases {
> > +		mmc0 = &sdhci;
> > +	};
> > +};
> > +
> > +&cpu_b0 {
> > +	cpu-supply = <&vdd_cpu_big0_s0>;
> > +	mem-supply = <&vdd_cpu_big0_s0>;
> 
> you don't need the unspecified mem-supply for the cpu cores,
> that is vendor-kernel voodoo and not part of the upstream binding.
> 
> Same for all cores.
> 
> 
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > new file mode 100644
> > index 000000000000..936dd959524f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> > @@ -0,0 +1,336 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + * Copyright (c) 2024 MNT Research GmbH
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> > +#include <dt-bindings/usb/pd.h>
> > +
> > +#include "rk3588-firefly-icore-3588q.dtsi"
> > +
> > +/ {
> > +	model = "MNT Reform 2 with RCORE RK3588 Module";
> > +	compatible = "mntre,reform2-rcore", "firefly,icore-3588q", "rockchip,rk3588";
> > +	chassis-type = "laptop";
> > +
> > +	aliases {
> > +		ethernet0 = &gmac0;
> > +		mmc1 = &sdmmc;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial2:1500000n8";
> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		pwms = <&pwm8 0 10000 0>;
> > +		enable-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +		brightness-levels = <0 8 16 32 64 128 160 200 255>;
> > +		default-brightness-level = <128>;
> 
> please sort standard properties alphabetically (compatible at the top,
> status at the bottom, rest alphabetically)
> 
> > +	};
> > +
> > +&pcie2x1l2 {
> > +	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> > +	pinctrl-0 = <&pcie2_0_rst>;
> 
> more sorting
> 
> > +	status = "okay";
> > +};
> > +
> 
> > +&pcie3x4 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie3_reset>;
> > +	reset-gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
> > +	num-lanes = <1>;
> 
> again sorting
> 
> > +	vpcie3v3-supply = <&vcc3v3_pcie30>;
> > +	status = "okay";
> > +};
> > +
> 
> > +&sdmmc {
> > +	bus-width = <4>;
> > +	max-frequency = <40000000>;
> > +	no-sdio;
> > +	no-mmc;
> > +	no-1-8-v;
> > +	cap-sd-highspeed;
> > +	vqmmc-supply = <&vcc3v3_pcie30>;
> > +	vmmc-supply = <&vcc3v3_pcie30>;
> > +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> > +	disable-wp;
> 
> more sorting
> 
> > +	status = "okay";
> > +};
> > +
> 
> 
> Heiko
> 
> 

