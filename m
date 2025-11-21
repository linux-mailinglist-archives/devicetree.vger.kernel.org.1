Return-Path: <devicetree+bounces-241208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CF724C7AE26
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A5D9C35762E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B1D2E7F03;
	Fri, 21 Nov 2025 16:39:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490DE287506
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743180; cv=none; b=XuAHg4JrEzcA6vmkQcOvvwzE3iWzUznHOA7HyGWZ72kRrAfM2OluEbDZCs2hlrIwBgjhscjn+mTWeMKSJ8H8ozqnprf0BJ3HnpInTLi5iXsE0rwLUlaSfkLLWM0G1LE9XlNIRjhwtXmDHxOMrjxm+MfEhNk9vvHJs6j5r4mUboI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743180; c=relaxed/simple;
	bh=Bmgoopsu+0H9XAtez17h1igzsNM8F/VgudfpujlL6Rg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t1lsfAYH3/4EQCJn8PmQzW2RNTNzSL4oS8+07AnqoshoLxvJ+HLS8CUl8pTzptYf3r/BphbwOmqAAubkKhVbsfuc8qHGiq6dFwYYF6f5m7CZ7+P2BLzAhLB+TxKGoQhyMXpOg5bhxpjlUpJPvSNisSFJtayHvGwUOkCay4CRrNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-55b265f5122so604115e0c.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:39:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763743178; x=1764347978;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZ30K5c1Yy25S+FIha2zG0Xwf4NQrvz4vEnETFtA7gE=;
        b=a08QMtB/mTKpRW8NYIlkqUUmXEJncs2f/IqXocE9kNrS0yCeqgWOaoGLMoiE28dE9d
         v0gzxWuKVYH5RqrOO90ToZudRWRuK6M3P8H4nFFjnljQ4XsTKeK5prk6ozz3qoUySs8f
         mQBWY7qe7ngwwGnXWJPYzXGtyMP9EDuqwg+0iCdyFb2732EwSBMBTDTvcYF9wopzAtkW
         AYnTBDUO70AYuFpgM49s4NGz4i8jw61h/L7OBkPDIvUc2jcfKWeFGNhgRVC/7Sp0FZfh
         QRTMtgZtYy/2q+2fUF+atN/2AUUa67fyqxrHA2no5EwoFrx5thFmkjkLpW0Bpce+FGl6
         J+jw==
X-Forwarded-Encrypted: i=1; AJvYcCXO0hIElF0dRpFTTBpWs/TLSXjqQTIIvtqA9XIWH9B1CIGkKEl4Cx8uydgPu3kupW+xDpgsGhKA+H6M@vger.kernel.org
X-Gm-Message-State: AOJu0YzBQcCmV/GuUOnSENfePNZpMHGl/pNTFXCTXcwnKQldQCz6dXdy
	iRUL1Gy1jgudTbR2Op+AC3F+93fp69jTMQlNHOnFTvKovHRATim5Pw/kZRI/VkPk
X-Gm-Gg: ASbGncvzzZUZC9g2yVxEyZHejJ3Uj8eO6t2AVY3sHJ6fN+0kaNFzxGOyjTZn8U/IHCY
	f+zpIVYsWeEyf6PsO371nO5BYjixUR/APSxFjYiCmQ94m2AP43jneJo9RVk3iONHIQeVI4RNz8y
	Q+43OkdnlCNqopHqTrwppFUKe0G+QUZbHjgiNmYIOhDl5tzevH3eCQrKdpJL3b1DazaBK+retd9
	VYxvTcy6wEDdwdHleXr1yQMMCnORMUnbFG4s++lPredLfCCx7rEUmlXlOc223ogfsKhG4FbSWIl
	lVpQ55I7pDZpgyuCTU+5TyOh3sv/w2leesQbjguOy2fbMmWLLtAmMHo5VbcKQsDy3CKTOZfg8ky
	xdiATilOYjsHPw9HfW4cP3L72ju8xSDSpu5rvAmNuXyG50GGNwRQHLurocQ2GAUr2bIQXc0nMq2
	q9Cz+MSs6OkIxkopzTSE3s7oV9IEuixd17veD21TzKeVl5O1EReiZ0jU7jMeg=
X-Google-Smtp-Source: AGHT+IEr6x2lglBt0ZMZeB56CTAOnyI3adNo6Imj1rQu+NeyvL6yfSeWwoBxK//0+Itz7Yef+XKAog==
X-Received: by 2002:a05:6122:8b8a:b0:559:6d45:9a1c with SMTP id 71dfb90a1353d-55b8d6bc669mr1171258e0c.3.1763743178059;
        Fri, 21 Nov 2025 08:39:38 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f7763dfsm2486742e0c.13.2025.11.21.08.39.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 08:39:36 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dbd9c7e468so928450137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:39:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3Ipogm2ideiV6AY3EPLEBMzsg+D2xGTqPlryl0d0p4/Zt8w+M5Rfkyzgqvg40zhh0/cDvf2/RnlJl@vger.kernel.org
X-Received: by 2002:a05:6102:5805:b0:5db:ca9e:b57e with SMTP id
 ada2fe7eead31-5e1de3d432amr902123137.43.1763743175773; Fri, 21 Nov 2025
 08:39:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-10-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-10-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 17:39:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU_fUhM2-gxhYN3jpzj8F5FOHFYjYT+ahrVs=bsLVBZGw@mail.gmail.com>
X-Gm-Features: AWmQ_bme-X7bQANEGBcax-aNmIv7U30_kjwDivwBpQq02aokr8NTPYQMva5IKq4
Message-ID: <CAMuHMdU_fUhM2-gxhYN3jpzj8F5FOHFYjYT+ahrVs=bsLVBZGw@mail.gmail.com>
Subject: Re: [PATCH v3 09/13] serial: sh-sci: Add support for RZ/G3E RSCI clks
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> RZ/G3E RSCI has 6 clocks (5 module clocks + 1 external clock). Add
> support for the module clocks.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/tty/serial/sh-sci-common.h
> +++ b/drivers/tty/serial/sh-sci-common.h
> @@ -17,6 +17,9 @@ enum SCI_CLKS {
>         SCI_SCK,                /* Optional External Clock */
>         SCI_BRG_INT,            /* Optional BRG Internal Clock Source */
>         SCI_SCIF_CLK,           /* Optional BRG External Clock Source */
> +       SCI_FCK_DIV64,          /* Optional Functional Clock frequency-divided by 64 */
> +       SCI_FCK_DIV16,          /* Optional Functional Clock frequency-divided by 16 */
> +       SCI_FCK_DIV4,           /* Optional Functional Clock frequency-divided by 4 */

Perhaps reverse the order?

>         SCI_NUM_CLKS
>  };
>
> diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
> index 2da36e8ce555..3b03d3d3f2c7 100644
> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c
> @@ -3172,6 +3172,9 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
>                 [SCI_SCK] = "sck",
>                 [SCI_BRG_INT] = "brg_int",
>                 [SCI_SCIF_CLK] = "scif_clk",
> +               [SCI_FCK_DIV64] = "tclk_div64",
> +               [SCI_FCK_DIV16] = "tclk_div16",
> +               [SCI_FCK_DIV4] = "tclk_div4",

Likewise

>         };
>         struct clk *clk;
>         unsigned int i;
> @@ -3181,6 +3184,9 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
>         } else if (sci_port->type == SCI_PORT_RSCI) {
>                 clk_names[SCI_FCK] = "operation";
>                 clk_names[SCI_BRG_INT] = "bus";
> +       } else if (sci_port->type == RSCI_PORT_SCI || sci_port->type == RSCI_PORT_SCIF) {
> +               clk_names[SCI_FCK] = "tclk";
> +               clk_names[SCI_BRG_INT] = "bus";

pclk?

>         }
>
>         for (i = 0; i < SCI_NUM_CLKS; i++) {
> @@ -3194,6 +3200,12 @@ static int sci_init_clocks(struct sci_port *sci_port, struct device *dev)
>                     (i == SCI_FCK || i == SCI_BRG_INT))
>                         return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
>
> +               if (!clk && (sci_port->type == RSCI_PORT_SCI ||
> +                            sci_port->type == RSCI_PORT_SCIF) &&
> +                   (i == SCI_FCK || i == SCI_BRG_INT || i == SCI_FCK_DIV64 ||
> +                    i == SCI_FCK_DIV16 || i == SCI_FCK_DIV4))
> +                       return dev_err_probe(dev, -ENODEV, "failed to get %s\n", name);
> +
>                 if (!clk && i == SCI_FCK) {
>                         /*
>                          * Not all SH platforms declare a clock lookup entry

This function is becoming a bit cumbersome.
Can it be simplified?
Can we avoid looking up clocks that are not relevant for the port?

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

