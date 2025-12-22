Return-Path: <devicetree+bounces-248886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4040ECD6513
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:05:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AC27030170CB
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7F62BFC7B;
	Mon, 22 Dec 2025 14:05:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C30F29E0E9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766412342; cv=none; b=IivkKeI5ok+QkGP3frZTfsjCLWWKX1qyoJ/J5MycMY85U3D5yCKdRRlfjxSk8MTvt7sJzccRNELKgcb0Qa8Jf9CqSRduF1G8b6W58vMGqQE+P30wSwBCC0cOZ2OLjW83GWRvDU8U8zJWojbrcjUm1ITdhUo2gmUt2E0CHvcz2Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766412342; c=relaxed/simple;
	bh=bTIKHcqn0C6gaQNho2yhzTYPlbw5mXBtl6Xpga087bc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qOmqzhvSCYs27956BAjlu+QeUnFt3fWoVJpZ5FNw0JtADHZfLaR/q69Tj5n0lGhCz7BBNUCa5uLsq4wF75Hv46NLkK25DHq6OV92zfFc8YfKu1Io9EXTxjWD0HqDTy9/aknCEHaGWDbJRnRdoghX+sFUNnl3bEZ09KI+Wv+KB2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-55b104727c8so1098773e0c.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:05:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766412339; x=1767017139;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICwOHcWbMK0sAN8WZ7Ku00mtmBrZPHA5/DlsAdljbVM=;
        b=Oc7LbCsnNkdDDCBrOwu5+WcjwbCtyz3RjDmQvrSvsJgN5LoicsqnM5I9oDZS08owwX
         olh+qFYyzdfLJFxZ9wyRjt6cgzeWnAGPHLYCIFUCmI1iyoEo/wcu/q1KES7myAiljTWJ
         5VbH3VJAXK/o5EN39FkTrOcGcV0/R7+omFHdVaGIyVLmJn1KO5zOzX81fNTR8TCYFQjx
         3ZgrMuvvZFux2VmaYzG7W0zzExLhK3bhw1BLlhuHaDhR+xWl0mezr6e/rpvmuEFlm+UA
         4FWdPsPcmIxcXE4LNT3+9VZi/lt6UUiK4VIVKLqaqbhSKLiY2nzMhyO3mBl55ZZzPG1D
         vSrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZZ1NT0hbIuNk/OZYQjYDIsRyEc7wRWLIT7eyC61kwJzka4CEu7G4s0WIqiOBBA8CQgnW6/W8WClRd@vger.kernel.org
X-Gm-Message-State: AOJu0YyRfblgJb7NGGNR8oL8zFMXIXE4CU1AM1Lau/9rCpkiodf7AQRE
	NhpdZVGM4Vv8WknQgYInIRfQ2j/N0k4pkv6y7lSbnEF/LCAaQJzuwKeKayVd8LGf
X-Gm-Gg: AY/fxX7yJp09oASpwULZ1d9YjU4ye2g/rhU9A6oF1W7qqY3Rp0jR1IeCMNX3OZKIPUI
	85LDFmUFnzkov3316sDVX5c+cVaaQho9fiYNXGvBmFglxO9jSDPTrjDQ7ehdLSs4FKtug6NUeUI
	3a8Q0K4UxTts4/Jh6A7yvk07rV/EXsLO+jRQHA76fX/yAGOxGOqQn6NVw0ExKRVT4sXcFGxPOgI
	DgQ52m8UTJhMDLMqD/qhZou2UmuAfcu2EnjU76rQpAWCciinMd0NTPaZDQCPPDTed81KXq2cchS
	kpo/rRtVREoHi0s10GdfbW2nIYM+4UW3+X5JpzRtvXn9Q+VoNk5N0uBn3qznunLyH4rDsYsWuHj
	bYJjgXAVqOoI8xK/FJCfJ9n+R7Wm5+N9NDe7FOUeRUvtIIhlCqG2356EVOQe1FVuMNGi1yQNsUK
	08bCZpAToRaqxeEnCBtgswZTt+ABzwvVpz/d50Cha6X9swgSNfdUup
X-Google-Smtp-Source: AGHT+IHiEAps4eDWes8OBhwkqc3TDi+rZ5hI3egTJnwClogQ60nl2sh4CMUoEtKD42lhYei8qDoNOw==
X-Received: by 2002:a05:6122:2a52:b0:55f:c41f:e841 with SMTP id 71dfb90a1353d-5615bed1815mr3290762e0c.19.1766412338923;
        Mon, 22 Dec 2025 06:05:38 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d16c900sm3382725e0c.22.2025.12.22.06.05.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 06:05:38 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-559934e34bcso995583e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:05:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU2X65/2KUJBBUBDkpU07DiD3lKgZ9a5tzU/e1CG0ssP85R4aieUfvRbqhPIwORd/uDriV3ZTa5C0+f@vger.kernel.org
X-Received: by 2002:a05:6122:2a52:b0:55f:c41f:e841 with SMTP id
 71dfb90a1353d-5615bed1815mr3290676e0c.19.1766412338007; Mon, 22 Dec 2025
 06:05:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251129164325.209213-1-biju.das.jz@bp.renesas.com> <20251129164325.209213-4-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251129164325.209213-4-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 15:05:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWpsjQ=cL1z5vMX39TwnfWsfEhMOktBPL-zF0-QJug-Xw@mail.gmail.com>
X-Gm-Features: AQt7F2oETRYAhevlCJEPv5BI6M299_NGlsvNoOTDm0Qmrwm2Eeqa8eGBJP7zVJo
Message-ID: <CAMuHMdWpsjQ=cL1z5vMX39TwnfWsfEhMOktBPL-zF0-QJug-Xw@mail.gmail.com>
Subject: Re: [PATCH v5 03/17] serial: rsci: Add set_rtrg() callback
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

On Sat, 29 Nov 2025 at 17:43, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> The rtrg variable is populated in sci_init_single() for RZ/T2H. Add
> set_rtrg() callback for setting the rtrg value.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v5:
>  * New patch.

Thanks for your patch, which is now commit b346e5d7dbf66961 ("serial:
rsci: Add set_rtrg() callback") in tty/tty-next.

> --- a/drivers/tty/serial/rsci.c
> +++ b/drivers/tty/serial/rsci.c
> @@ -151,6 +151,22 @@ static void rsci_start_rx(struct uart_port *port)
>         rsci_serial_out(port, CCR0, ctrl);
>  }
>
> +static int rsci_scif_set_rtrg(struct uart_port *port, int rx_trig)
> +{
> +       u32 fcr = rsci_serial_in(port, FCR);
> +
> +       if (rx_trig >= port->fifosize)
> +               rx_trig = port->fifosize - 1;
> +       else if (rx_trig < 1)
> +               rx_trig = 0;
> +
> +       fcr &= ~FCR_RTRG4_0;
> +       fcr |= field_prep(FCR_RTRG4_0, rx_trig);

FIELD_PREP(), as FCR_RTRG4_0 is a constant.
However, this can be combined with the previous line, using
FIELD_MODIFY().

I have sent a follow-up patch: "[PATCH] serial: rsci: Convert to
FIELD_MODIFY()".
https://lore.kernel.org/ada3faf4698155a618ae6371b35eab121eb8b19c.1766411924.git.geert+renesas@glider.be


> +       rsci_serial_out(port, FCR, fcr);
> +
> +       return rx_trig;
> +}
> +
>  static void rsci_set_termios(struct uart_port *port, struct ktermios *termios,
>                              const struct ktermios *old)
>  {

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

