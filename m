Return-Path: <devicetree+bounces-230736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB12EC05487
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 833A74E4762
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B00F0309DC0;
	Fri, 24 Oct 2025 09:15:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276E72749C4
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761297335; cv=none; b=Aw6c4Ti/xsY9AW4Qd+BF230hXHA+iKI6oF+x+XKiyDP/OX/W2szloqIjmfo8NPMQaDCgK5ZoD4D0ijDlTGBbnvvk7ihYdWFOfSBx0+wLxrPFkC42HvPmFlKmUa9n/p1FVhHAc6g+9eHtFh4KjAlozP4KecPaOQIcb4sfjd5rbw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761297335; c=relaxed/simple;
	bh=J8mSVI/f12nth1gkWB8k+uvzYuiJaePL/O3be6q4RNY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eZCqUNNzdPD/6zEvDqoxb40au74oMxgzLJTgykCVB7WukqJArCXD00PIHJKb96sSIJ3TRsY3YuyQSeYXmXEI6ANMGGyWvmCFUYhSvb/OesvjunBuXXszi8SYPYGDJg6sC105K+f7hOu2ej83VGkkCu8N41SyZVSAiotZ9gcclxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5aa6b7c085aso2364907137.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761297333; x=1761902133;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BrBpEYe9bLey+4S4JjtKCcOIac4hS6dnR1uT91EPVAM=;
        b=BM0UoxWitbPdsjbahl9j2f+Eun2RzN2TXak30bwzSOyTJz/81Q/OtZabsLbe/+UCQX
         Z2mtpoC1c8+XjUPA8XIwqC2ZjPUfINg7PHU8FRVWPuKHu9+vwIKa/zoqDewTOPpMSYZN
         KXaV1aeW0Qak6QNB4wHqB8HA+wPvcwISJkf+K+xh8v3JEFYIJjfwNhG/IGfJ9k5UKr0v
         KGXzegF7YUeSSHiIvx6C/rD29sQjTRRkQUke9f5CUwKuNltC5pkSC+MeavCjsXlhYSsD
         JZWxizwS81Hry2n7bKxL5EmyTJHaKM2cn7gVJlJJc905MZmYHPuuepMKBc4h3tfjKJSK
         crPw==
X-Forwarded-Encrypted: i=1; AJvYcCXC3Ea3cEt99knXETBJyxoymx8YsH+0HWSIq45HuO9JhDvvk0MIyT3EM9J0rSpdiN6UmGpD7J8IioFt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw64alSUMpjgFqCDH+KnA6USLl/7B9MyifhecxWCdB+Gs+rDn32
	aMEGivBTe2Kx7yrB3gg9rPXkXVe0Zmp9huwM4qF0JGK06rd2+wLuYtJD/X5KEL9K
X-Gm-Gg: ASbGncsS6W6+j/HP3fT79vJXSG1jDasRvitjUGHp6qZLWCvpLLPBnhEbkADTPi4MMaC
	1tF3Jqb6HzNsnCR0tlVjxGw9uO6WcqFdpdhg0/Zg51I1KLDVIV9yWDOd3EoI2QnfFaeo0dvMuEf
	79g8WIYHyhPF+9jMCnlYbU4QzbfOd7AKc2Te7+qd/Ru7lSJ/03AvE7afvcbg2v1vRnCvd/Ylqga
	DG9wTnXxdlKu3Gyow3efuMEcEzKmxjU5VuoIjn74JdF7Tsa8M7zQX/BhudRz8Q6izcT6pth3o8E
	OWqsmZVdK17FQiWm9g2Dmerb6+8y2ccts11gAgfAq4tQi411h89Tnt+3b88anpzg62sFIXcLtux
	GtXDouDbyXnTnv4JHg3ufqSL+t1M7GjXKBsfKVHZd5RdqiMbEAYlI7FlYJQhj4EZ5/oVoLcRrCJ
	fLfBU2Jx3XBcdiUPj0VbaFEySqGifWgU+HPsKGVF8UHaGDXgcy
X-Google-Smtp-Source: AGHT+IEHNHQJqUZCM5UO8db2TqF4pEV+LGT1zirvNC9ujVbT4ZdGLdzGiux9rc19LL/e8QjA0NKX+w==
X-Received: by 2002:a05:6102:82ec:b0:5a3:5b69:b963 with SMTP id ada2fe7eead31-5db3f88a639mr270292137.7.1761297332701;
        Fri, 24 Oct 2025 02:15:32 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934aba937d6sm1804990241.3.2025.10.24.02.15.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 02:15:31 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-58de3ab1831so1779620137.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:15:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWPMLhKs6/Qsb50BxXwr0kTvCL7WlUbcx6LobWMT2cNItBo4HcNQUilqVy+vs1cvhN5IjNKdFbUOXBz@vger.kernel.org
X-Received: by 2002:a05:6102:12d4:b0:59e:a2d5:2945 with SMTP id
 ada2fe7eead31-5db3f88a5f3mr252149137.8.1761297331043; Fri, 24 Oct 2025
 02:15:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com> <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 11:15:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
X-Gm-Features: AS18NWAoeA07bJLB0nX88rm2l0IWTdjwxg2U5L-RZOoaf-8oTt8PVHt9R1PDCKg
Message-ID: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Claudiu,

On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable USB support (host, device, USB PHYs).
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi

>  &pinctrl {
>         audio_clock_pins: audio-clock {
>                 pins = "AUDIO_CLK1", "AUDIO_CLK2";
> @@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
>                          <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
>                          <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
>         };
> +
> +       usb0_pins: usb0 {
> +               peri {
> +                       pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
> +                                <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
> +               };
> +
> +               otg {
> +                       pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
> +                       bias-pull-up;
> +               };
> +       };
> +
> +       usb1_pins: usb1 {
> +               pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
> +                        <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
> +       };
> +};
> +
> +&phyrst {
> +       status = "okay";
>  };

This node should be located before pinctrl.
No need to resend just for this.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

