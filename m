Return-Path: <devicetree+bounces-247958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CACCCD331
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:36:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F4D6302357E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67053064B5;
	Thu, 18 Dec 2025 18:36:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8348E303A0A
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766082986; cv=none; b=WP6T2pXCzBBXN+4v/EB/3AIjkMFQXUffgttccnWE80ZhuOqzZqCG/ilZOBTQLTnz5ePmx9vN6jjIiOBFVCXFuc/8i0Hj9ai+UzcAMw81oReqUcxDBbPNYuKsKjfOT9uRbLwNC2ypRShMbp2ZaB0cNFZD6ZL4ZKhFg2rcakz/LOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766082986; c=relaxed/simple;
	bh=f9vnFO3ZAr0ROjj4iO2mIyqQF6HfJIBfN6MUQuNhK9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e3SKwLhvd1FGa08t9akGxEBF9/scEVLAk2sTgGFFFIuBBhDvM5ATsVPrePZllp+prEW8QBhh1QT07vvpVk8YwY1aZ62uA6K/xxN/3p/Zu/UKpxhwilhBEp3gyQNBWjlQn50u2bOZKzF2SVr74C+JDuNcirMRzWVr6fw9nqVuaFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-559836d04f6so575850e0c.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:36:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766082982; x=1766687782;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUIzj6tuJEWWz1NJlvcpUJodOdc/whg25y/XKksTcLU=;
        b=eAcYy+hnfWZ0or72iueS68YK+fSGZTmR0n8/aneQGby4bOikhWxycaCR78Tepd4VO0
         9VWsGPs+p8dn/DLjRp3WqaRxhjcRciMDdIfASNtVhqeS1OJgWqIYwTP3UNY6E7O6Myhu
         eoTr19IASqHbkNoqLoAH1aJhE90cD+r7zFgBpPbdjFM1TBM/A1qagqJ1M9jZ/vFQGqUC
         xAZ3OhlzqvV3qoRoM8xeWJRigEfEFQ1fXgAJTyHUfk1vyQdAZwF9nK0sokw1aXpANgut
         surcjvmjBE3hzrVIT3gdIeFMrFIh1j6iS7rvkFefe/BfN6JENHskw4rU4Xe9sK63U8YQ
         ZuBg==
X-Forwarded-Encrypted: i=1; AJvYcCXW4eupPHQdBD7AjM82mUWccMI/ea7tIuiFQB1K+q7tDDql7q1YmQTKBf3wMaPnuhDJp2Z1W80DCfli@vger.kernel.org
X-Gm-Message-State: AOJu0YyCdS+AYzYFRs0muOt/TqEkO/obR6sI0fcJpfPqVgdV9hPYyCtV
	SD2kSgCW8OYmHVc/S9lD/LsrwFtExk4GW9mJv/i88T7x/YZi7W5P4KIbwsYpWJpA
X-Gm-Gg: AY/fxX7onoJTG3VXSm4IJtxtoLouxRXDk2JViCbQsgcecrHP2jTpAXjMaFjbgi/kTvP
	MmTb7Dxmg19MyBUuDpxk6eci5iqcw2FXAh2SskP+bvYf5OuUVlegHrzQbxw3eIs2GUWS8ggQNMd
	kAREnATk3ysiluRwrbADm0V1Sdfg0uDWv8AOYghNgYR88OcXA2Yng7nHbs1ZwPEEO+FyeVAmo2Z
	x+Z/vUmSwV6YGO3taa3VXZfd4tyPYGAqCgX5Lz9AXTC2ZRIoWADDK9gkTcszWvBV3LfLpmjuwgT
	UK8DtLqDqjxcTU7mIR2CIWKyWEv6Do7qrgJ1r3I25rNUSChgGJUdjyTYXAd4kyu1lGzh7g1WeZ5
	8nLPgeOFNofgu7NybTNErJvuJZMAm+J0MlQN3lJkLPRyaeehJIfBIae4llyN5sJP3tzVTLXYsRh
	+J2InTUe8EgGIU/gcoSCJm2s4BnDKJ8KOUrAMsUbMavgCoSDofziT+
X-Google-Smtp-Source: AGHT+IG3hJw6jGpHu2fZk/YpBJe8eH8hyGVLpUzXQa+Uv9KjHs1nzrTqWceooGXsj4L6P8n5obji9g==
X-Received: by 2002:a05:6122:3197:b0:55f:e790:fdf3 with SMTP id 71dfb90a1353d-5615bebdd03mr212039e0c.16.1766082981804;
        Thu, 18 Dec 2025 10:36:21 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d04b58bsm8639e0c.1.2025.12.18.10.36.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 10:36:20 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5598b58d816so622492e0c.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:36:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUCocKPuMbEtC+WjmFVYIj7tYuORmY7py1Wt3ZIjD2M9u37bPho041CsRRDaSxe0SUevF+p+5ZEtlbp@vger.kernel.org
X-Received: by 2002:a05:6122:7cd:b0:559:6e78:a434 with SMTP id
 71dfb90a1353d-5615bbb613fmr287845e0c.0.1766082979838; Thu, 18 Dec 2025
 10:36:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-3-shorne@gmail.com>
In-Reply-To: <20251217080843.70621-3-shorne@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Dec 2025 19:36:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
X-Gm-Features: AQt7F2re0c6O1zn3_Tpesl3XSo6xjfJa4z8L5_DxCBrXJH-PmZ5isCD3kETTmI4
Message-ID: <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Bonn <jonas@southpole.se>, 
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

On Wed, 17 Dec 2025 at 09:23, Stafford Horne <shorne@gmail.com> wrote:
> The de0 nano from Terasic is an FPGA board that we use in the OpenRISC
> community to test OpenRISC configurations.  Add a base configuration for
> the board that runs an OpenRISC CPU at 50Mhz with 32MB ram, UART for
> console and some GPIOs for LEDs and switches.
>
> There is an older version of this floating around that defines all of
> the hardware on the board including SPI's, flash devices, sram, ADCs
> etc.  Eventually it would be good to get the full version upstream
> but for now I think a minimal board is good to start with.
>
> Link: https://openrisc.io/tutorials/de0_nano/
> Link: https://github.com/olofk/de0_nano
>
> Signed-off-by: Stafford Horne <shorne@gmail.com>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/openrisc/boot/dts/de0-nano-common.dtsi
> @@ -0,0 +1,41 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +       memory@0 {
> +               device_type = "memory";
> +               reg = <0x00000000 0x02000000>;
> +       };
> +
> +       leds: leds {

Move this up (or down), before (or after) all nodes with unit addresses?

> +               compatible = "gpio-leds";
> +               status = "okay";

Missing blank line.

> +               led-heartbeat {
> +                       gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
> +                       color = <LED_COLOR_ID_GREEN>;
> +                       function = LED_FUNCTION_HEARTBEAT;
> +                       linux,default-trigger = "heartbeat";
> +                       label = "heartbeat";
> +               };
> +       };
> +
> +       gpio0: gpio@91000000 {
> +               compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> +               reg = <0x91000000 0x1>, <0x91000001 0x1>;
> +               reg-names = "dat", "dirout";
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +               status = "okay";

"okay" is the default, so you could drop this line.

> +       };
> +
> +       gpio1: gpio@92000000 {
> +               compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> +               reg = <0x92000000 0x1>, <0x92000001 0x1>;
> +               reg-names = "dat", "dirout";
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +               status = "disabled";
> +       };
> +};

> --- /dev/null
> +++ b/arch/openrisc/boot/dts/de0-nano.dts
> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/dts-v1/;
> +
> +#include "de0-nano-common.dtsi"
> +
> +/ {
> +       model = "Terasic DE0 Nano";
> +       compatible = "opencores,or1ksim";
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +       interrupt-parent = <&pic>;
> +
> +       aliases {
> +               uart0 = &serial0;
> +       };
> +
> +       chosen {
> +               bootargs = "earlycon";

Do you need this?

> +               stdout-path = "uart0:115200";
> +       };
> +
> +       cpus {
> +               #address-cells = <1>;
> +               #size-cells = <0>;

Missing blank line.

> +               cpu@0 {
> +                       compatible = "opencores,or1200-rtlsvn481";
> +                       reg = <0>;
> +                       clock-frequency = <50000000>;
> +               };
> +       };
> +
> +       /*
> +        * OR1K PIC is built into CPU and accessed via special purpose
> +        * registers.  It is not addressable and, hence, has no 'reg'
> +        * property.
> +        */
> +       pic: pic {
> +               compatible = "opencores,or1k-pic";
> +               #interrupt-cells = <1>;
> +               interrupt-controller;
> +       };
> +
> +       serial0: serial@90000000 {
> +               compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
> +               reg = <0x90000000 0x100>;
> +               interrupts = <2>;
> +               clock-frequency = <50000000>;
> +       };
> +};

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

