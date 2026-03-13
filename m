Return-Path: <devicetree+bounces-275274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBKWG1EXtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:55:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A526284515
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA9013076855
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6AE32E137;
	Fri, 13 Mar 2026 13:42:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1000329E40
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409320; cv=none; b=UcrVASJ26jDSakjK/M9uqYRQD1YpeaOkbd75KzC7w0rppVYY1bWV02BZRm2TCl9iU1RG2liOFNcCiuQGb0uFEyhu1FOa//unr8khM3HrmWg0+jrqGgduKHROqcCpW9R+mqItUm/3YSTf4nKUWykmXggpDo86ejQ/nWgaovjsfxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409320; c=relaxed/simple;
	bh=OGNsVHE+rPU9IIEJf0KsqvOCe9Unep2HqD7hopOQMw4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IRB3yJV69GiqSdJXKbTDwLmzHFyY40rBfrYsz7LkjQLj8Uf01xNnZ9T1iIdIF7CmJ9PnYxCYOXJofHC9axy7+9+B1g0tilAcg2Blx0jgLAx8msyj7vcFfBRUKJp+FwSdstR0r9yXyNsfK5N2lsR4YhDRTCyoF6lmq1EwI4V/CUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94dea0e029fso597239241.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:41:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773409318; x=1774014118;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Zh9SwmJLErLffqJi20ruMX+mG5Ur8/4eLKTNuwkM4k=;
        b=rf/ZZC11SK0B2MnAA4dQHjzhr+dc6mEWw5Jiwg9bKuSqkw+PjWcNlJqgf1IOQlQr7T
         e5OH3fF48hO1lxfSO9IIgUK0UZMS+cXgOHIw5jvaeJIdaROM4afDyXyTZiHmtJiVAday
         NMbgWDfBOVCO5Wtv/j4474qqhJCMIwnzHUwYrVdFSkD1Wkk8D2dyop78++PEEMj8v763
         05kOZ3GnpYQNucSEvygx1cekN/euLWATYo1MK6wx+9ukJ5eyFI3tZCRGUgoLshh05Q0x
         vo0rZiqu42560GKTwNNVno1vZWeie3l4GbBJuMxXWwBH4ep7J3ovTwruDgnODpR8zo2A
         LN6A==
X-Forwarded-Encrypted: i=1; AJvYcCVx8yOIo5M8z5RL7YGLdBKJzUYd9f3U4s0z2VEJG7EQeKMGia+aCDqN9+wYsQgjRClNIq5qsx8xHWiT@vger.kernel.org
X-Gm-Message-State: AOJu0YwI3RtnNs4s2y6FQlZQDGELLmzSbF+moAHwzhl9gxAT9GxhKM9Y
	9WzeJM+QI95LNeBHUe5LVLe7F6MLfukFCcqSs7BEClabAhOeO5abqhisMvf9B8tu
X-Gm-Gg: ATEYQzz/liAPc0ppQnJ6w1ms/5zoJ/EDns8fxkXk+jVMvgKhn38vqGTDNRbWliX79/D
	/16pemADsfKG0TKoFPpb/EpnQJaW04VEfD/89WRkV4eAN7wwE6afBF6eziri7OJVUtAwV/jQWi0
	vO2YCWbQZPPJRjDT2osIHhdDoNO4bD5IWR4CanRv1veG/6E6vNj39OiimqsZO39PKT6Vls3qJEc
	czYXSmJ+5LdLARmRgidZRupkzWxrCwu3nEAdkJogyQMkHomcFkOC7bfYV582eo8vPNBolA71Pad
	PyMbogPsQiGABr90/VmlRX9j4penQmQFLQ8P6mQTk+yAYVwlsL6byJj2fHNX4jpP+yWkNT8mWAD
	pIBnJ3BEsatBFCHxr+ofGHImKOpYqodPSilTq2dEaEoktyS6WhuGErPnvaCxFxZR+UaAbBGeHhk
	Q80AibOQbNNOJZhSmCy4JsFgqayCSlD3Is5EaLPKFinrR45zfh7y4KQe+E9ywyuaxP
X-Received: by 2002:a05:6102:e0c:b0:5ff:cee8:660c with SMTP id ada2fe7eead31-6020e55a5e2mr1301492137.31.1773409317507;
        Fri, 13 Mar 2026 06:41:57 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601dea9f6ecsm3140591137.10.2026.03.13.06.41.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 06:41:56 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56afbcd8adbso933270e0c.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:41:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWUxX64z6aVf7Ju7wXD24rkic85I1w4d1zwOiwYw4Clrfb90GxylZKt5J+4ZRBCsjcZozinbzGXuoq6@vger.kernel.org
X-Received: by 2002:a05:6122:4d83:b0:559:7294:da85 with SMTP id
 71dfb90a1353d-56b6291a626mr1203002e0c.12.1773409316609; Fri, 13 Mar 2026
 06:41:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260124163611.3279104-1-onlywig@gmail.com>
In-Reply-To: <20260124163611.3279104-1-onlywig@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2026 14:41:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWsJ7NW18XcT2TQfSZx4HUUzaBUm2N=BhCoD6k0QTeqzw@mail.gmail.com>
X-Gm-Features: AaiRm51nMJlxLSRZWLZq4dQPaTyi4ba_gzu-eXdF9xFF9cEF32Y6CVSfd-O4ZFA
Message-ID: <CAMuHMdWsJ7NW18XcT2TQfSZx4HUUzaBUm2N=BhCoD6k0QTeqzw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add pixpaper display overlay for
 RZ/V2H Kakip board
To: Wig Cheng <onlywig@gmail.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[bounces-275274-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,glider.be:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 1A526284515
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Wig,

On Sat, 24 Jan 2026 at 17:36, Wig Cheng <onlywig@gmail.com> wrote:
> Add device tree overlay to support the MayQueen PixPaper e-paper display
> on the Renesas RZ/V2H EVK (KAKIP board). The display is connected via
> SPI0 interface and uses GPIO pins for reset, busy, and DC control.
>
> The overlay configures:
>     - RSPI0 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
>     - PixPaper display device with proper GPIO assignments
>     - SPI frequency set to 1MHz for stable operation
>
> This enables support for the Open-EP Community pixpaper-213-c module on
> the RZ/V2H platform.
>
> Signed-off-by: Wig Cheng <onlywig@gmail.com>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
> + * support on Renesas RZ/V2H platform (KAKIP board).
> + *
> + * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>

This include is not needed, so I will drop it while applying.

> +
> +&pinctrl {
> +       rspi0_pins: rspi0 {
> +               pinmux = <RZV2H_PORT_PINMUX(9, 0, 1)>, /* SPI0 MOSI */
> +                        <RZV2H_PORT_PINMUX(9, 1, 1)>, /* SPI0 MISO */
> +                        <RZV2H_PORT_PINMUX(9, 2, 1)>, /* SPI0 CLK */
> +                        <RZV2H_PORT_PINMUX(9, 3, 1)>; /* SPI0 CE0 */
> +       };
> +};
> +
> +&rspi0 {
> +       pinctrl-0 = <&rspi0_pins>;
> +       pinctrl-names = "default";
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       display0: display@0 {

The label is not needed, so I will drop it while applying.

> +               compatible = "mayqueen,pixpaper";
> +               reg = <0>;
> +               spi-max-frequency = <1000000>;
> +               reset-gpios = <&pinctrl RZV2H_GPIO(A, 7) GPIO_ACTIVE_HIGH>;
> +               busy-gpios = <&pinctrl RZV2H_GPIO(B, 3) GPIO_ACTIVE_HIGH>;
> +               dc-gpios = <&pinctrl RZV2H_GPIO(7, 4) GPIO_ACTIVE_HIGH>;
> +       };
> +};

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1 with the above fixed.
No need to resend.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

