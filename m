Return-Path: <devicetree+bounces-238174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D041FC5808D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8E1673565AD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E966A221DB4;
	Thu, 13 Nov 2025 14:48:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF863BB40
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763045336; cv=none; b=ltfGDELjPVdQ4YXtVNuCW0Kl4s07ttHZrQtI9I1OoodeFXALSfe9RDrIyVCFpwo9+iya1PvPG4zkuTwLP+FHvwNwVFRIzziQVy5p3tcTH7x/rhfQ1ug6N9yaUOHFXhKyCijVftwARbovdOpB33+0u+NDhgh0/IiJTIronBQqb1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763045336; c=relaxed/simple;
	bh=yUTC0EvqYswBfkQQ6OYPcTdAct3w2ul1w7D+PC7nB1Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GBFLTqC75q7UxHPdkxCoNIRUlLgaMGHCz6tQLjUi6Tu0qsJdAF0RruV17aoF03n0Vbp0oS6+nAFn7C/kn5wHU0Q0mPqba6Y5v29+fmqlVjHypCvSFqU8/pccQFCJ9f1wyRw4GYFbUlCi97i9MLGYF7rJGuYRgXK/UEwbIPDRhKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9374ecdccb4so511899241.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:48:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763045334; x=1763650134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+9uOsoz58vq1sUJ8SvSSoBxDJHfhxT++1tWVBAE5aI=;
        b=o89TnCpWrxzcxICWpzCDzZaMRSrGvie2w5ENs9KPvf4sk8YN00AzBWltwmQoQ/EQ3Y
         oYaXVivLSJtdisLGAo8giQMrIxTCL0pE3cSTRfdbjssfFGvagvPZGHuoKxDpdBe6c4zR
         rLqbU6MgQwGtku3tTmTvpcC5JYWmoCeDMSGiCLp/wLynrzmJ+5Mmgs+9te16G2KTcxi5
         bnW0vOvFVu7EB9PJMACsh24w4e5yetqXqf8eTEvzx0oOGj+FkPrcJMBZaRAO8idGFnEf
         gO/OtXKh+7BLc64Fnfo9tZO/sXCaZou0zYjozRQis1z7iHIWwGPC91IactaJ1kJSaTb9
         PTUw==
X-Forwarded-Encrypted: i=1; AJvYcCVfPqZI0fDBohiLKkBvRbtIaRuwk63KhKKR+npXuZ19R6hA7CTzh78IluIhNY2QVfAeLmlgXi9YmM8Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxPmJMBdkx6OhJn4K7Fc1zkywJnUkPvVmDoUyzdz7zVKMZhWusE
	QkSavFlW7YBMfVYGozw9mCrll/Yy5L2e/clqJq2GSAwd/z2vSEzu2WLwj6j0RK0Pn2Y=
X-Gm-Gg: ASbGncsMjbbsQpenX61GZ740kd6UrSlRe8/1S6ul7l5wEJIogYJgGg5OG1vAZZQ1Gmx
	ohz/Gq063nxQc/dQe8UUHASxCUvnA5sBDyiVR37qs91o8kY6Ug0VIL5fSEH1LuqPyXe5R37ui7D
	QAyaXBuxXCR3pCIGaidchCqgeO/Hb2A2HaHKA5RwEZPYxnZsxedHsVFwLGdCso1vimQ/uydzwxw
	14NSu68n+F9RaC89XxDlXr8IJDqdtK5vJLhlN3pFD2fEW6rC1v/G77xn+sW1RQP+HhgQRjIeZ/x
	T//2SjPVv8t3Ndwhp6AuNubtjfamKy3ecMIx/xBtE0B3ay8QMqvpnXnYRC/0VKNZtt2q17unsOS
	ZXYmka0ycx/O3Tqo2sXw+tkd1QJrO/ZN5A2zrryONAOA+lE2T6E/M/+ppzUx3M031SLzyEonlav
	/HXR72TvFdo+DFJCrJt2Wky8W3i0vCv4LhlwPhMA==
X-Google-Smtp-Source: AGHT+IFXlVSARsSi7JCfaHiq6JSiP5CTyHBxYeai8oS58yhM9zJ2aqKnB+FdaX1OPiHeapU+bir4zQ==
X-Received: by 2002:a05:6102:2b92:b0:5df:b1f4:77d9 with SMTP id ada2fe7eead31-5dfb1f4937fmr1809960137.17.1763045333487;
        Thu, 13 Nov 2025 06:48:53 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-937610ce60bsm648487241.3.2025.11.13.06.48.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 06:48:53 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-93722262839so525537241.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 06:48:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU8TMAhTE17YUfCglMWNKV3Djkp3O26XNvZcboULwz11lZHXo1BBvv6EvUlkN6IIMmTdvZNEIZNE6JE@vger.kernel.org
X-Received: by 2002:a05:6102:5114:b0:5db:d60a:6b1f with SMTP id
 ada2fe7eead31-5de07e06ef4mr2746009137.23.1763045333120; Thu, 13 Nov 2025
 06:48:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027140651.18367-1-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20251027140651.18367-1-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 15:48:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXWwGo0bVmDpqxABH7aP0HcNDuqvv7D76xUv2Fa_48zEg@mail.gmail.com>
X-Gm-Features: AWmQ_bkLEJtOlbvS4476ZL74m55cEfNUL-RzWUnhLnjFntgzgnUJvf7opsRO570
Message-ID: <CAMuHMdXWwGo0bVmDpqxABH7aP0HcNDuqvv7D76xUv2Fa_48zEg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Add NMI
 pushbutton support
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Ovidiu,

On Mon, 27 Oct 2025 at 15:07, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> RZ/V2H EVK has a user pushbutton connected to the SoC NMI pin, which
> can be used to wake up the system from suspend to idle. Add a DT node
> in the device tree to instantiate the gpio-keys driver for this button.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> @@ -9,6 +9,7 @@
>
>  #include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>  #include "r9a09g057.dtsi"
>
>  / {
> @@ -34,6 +35,20 @@ chosen {
>                 stdout-path = "serial0:115200n8";
>         };
>
> +       keys: keys {
> +               compatible = "gpio-keys";
> +               pinctrl-0 = <&nmi_pins>;
> +               pinctrl-names = "default";

Do you need these pinctrl properties? ...

> +
> +               key-wakeup {
> +                       interrupts-extended = <&icu 0 IRQ_TYPE_EDGE_FALLING>;
> +                       linux,code = <KEY_WAKEUP>;
> +                       label = "NMI_SW";
> +                       debounce-interval = <20>;
> +                       wakeup-source;
> +               };
> +       };
> +
>         memory@48000000 {
>                 device_type = "memory";
>                 /* first 128MB is reserved for secure area. */
> @@ -320,6 +335,10 @@ i2c8_pins: i2c8 {
>                          <RZV2H_PORT_PINMUX(0, 7, 1)>; /* I2C8_SCL */
>         };
>
> +       nmi_pins: nmi {
> +               pins = "NMI";

... as no actual pin configuration is done here?

If you confirm, I can drop these while applying.

> +       };
> +
>         scif_pins: scif {
>                 pins = "SCIF_TXD", "SCIF_RXD";
>                 renesas,output-impedance = <1>;

The rest LGTM, so with the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

