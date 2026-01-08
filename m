Return-Path: <devicetree+bounces-252914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC0D0528F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:47:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5376F3043102
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762492E1EE0;
	Thu,  8 Jan 2026 16:51:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAB82DCBF2
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 16:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891079; cv=none; b=kZXCjhbyuwZXjHRQhvyWsWgKJ75VMf/QoYpm+pf32WcVyxDy5wQsuFyUN9C8aurBVOjSgaGnETBj9nbgbYYu+OUDn37RdwKedLGWS2njqMcZT7N5VSRjCiGRYevRfdKSvWg+MPakTEGL+cTpdwIndSd6ublqqy+wqw6l29T/MFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891079; c=relaxed/simple;
	bh=ubwXu+btsiX1PB4I4N5BYmf0b7pajCdwdkJ9TDT2OtA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VGOBPelrfqKrb/2LN/vMqs7C5ol/Uey2RqtA+SnmSGHJiQztEjKrnANdXVSB25oN/ruDQXeRs1ux64l+2/HJDCyY5BUWL0u194GtkBn5B3EcQeu0+s+iVxXRgnvZz8IryOqy7KTI6t0xyvOHB/MIMsrxdNVga9qlLfx1cLQ3968=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-563610de035so277285e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:51:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891074; x=1768495874;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C875+rgiQSif2Oc/xF4OEYxzU+NtNWW3c7tGrI4duZo=;
        b=dpLfCnduzKDLS6vmUMoMfUh+Lip+UVb3y2cX769R7MC1LmM1eb3QVnYGpwSDjcs7hW
         JF78rOGviAs/K1LINmHKQuQEyzCUo6TpNYZdpC1wwtfgFznnG+19rGt5B6AMv5tmuffM
         7YSFmZh2KXwHDL80R+wabGfRG74U2RaAFrN+ht0g0cB5TgplnRksOwlpLiNoh6qbR7Vq
         fPcYmpo+gvNRa0KKazgf4OcXGAPOb0MuOYiCCj/NGzzmpf4Eh1ZTyXwB7EEu2PO13eZ1
         vctFDfuOqGPwi7N0OSap/wJbrdWIP24mk9XILPt2TwZYCRIdpL4GwxH4e9rNXJfrW7qK
         wmfw==
X-Forwarded-Encrypted: i=1; AJvYcCV5jV1VsTLdE7Fe+VEPcAUAVedmcpBv3OjcdDQX29MsEUbkW92/VYfD0mpmrePX1DbFx4/iOfepM0Se@vger.kernel.org
X-Gm-Message-State: AOJu0YwKXGE0qFIs8N9cOTm3uBkSma0w/zh+h75yW4F02LGiOGcL1eHw
	ZoiQND866LvXCAETzkL3X7gstRXBQo0D3pNi/iCoES6ICtsa539P8LohJ9NcNj9v
X-Gm-Gg: AY/fxX7E63nP1nNBoXfFx0hVAgCLtAyVV2PIi1BpDi36TKnEtBG6ALUxZ/XM9RNBr6K
	gcQ0uP6Zb34pzcz9AmafTN4/lsBhJQ9RmnUuGVGw048r6KhznSs32HFAteUee1hxwAAgVdXzV+o
	EvubeyS4O8bkbkuTLRSYnUqMAYkd7NojbkXvCHUtQjtRP800+RmaRgS8shbav45fBpI9EfwKEIP
	5/EpHdYtJ7F8JR9H8+iEqfAcmCZlXjr89YslA2APx+55D2HWigk9cDM5H2tJNvfZvlKB9wGxJ9r
	fu6elmVfFPfLut8dassoC/o7H4r2ZXboft0CGY+TFm3Ma3pagWLQhCYnuZtrImloc5vTT6emAPZ
	Y6pXAM3mQirBKT0FZLcU2t1mHaeTosXK/htbGJDGKhkACw2RdtJVWR5nrfx56d8id/pHP8DhtBv
	IlriOqel2p+p88SOAl2yASx6kxduhVY1yO4jW9kxo+cdc6RGPp
X-Google-Smtp-Source: AGHT+IGFbWSv8x4PcRi8Oqu4L3ZE7FhcJtc2KVZyRTcrtS+0Xq1LkbSTEIBbAChSr5LsXquwEzoZMA==
X-Received: by 2002:a05:6122:1805:b0:557:c6d3:5c0f with SMTP id 71dfb90a1353d-56347fe3cfbmr2165593e0c.13.1767891073553;
        Thu, 08 Jan 2026 08:51:13 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944123fca44sm6319602241.7.2026.01.08.08.51.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 08:51:13 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5ed0bccd0easo1287093137.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:51:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVe6Q+EhJMNTavzg4pJqOGQRi5cm6s361/zngPypmE2M5qrQtM5g+euuNSUlMuP3wFiQ20ns+u/jsy/@vger.kernel.org
X-Received: by 2002:a05:6102:c0b:b0:5db:fce3:af72 with SMTP id
 ada2fe7eead31-5ecb1eadbd9mr3013232137.11.1767891072901; Thu, 08 Jan 2026
 08:51:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 17:51:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWV4uOMnz_FBMW4brWx+6snQ-WOQck5b_YXAxzHhjJgXA@mail.gmail.com>
X-Gm-Features: AQt7F2pQ9Vlmf7HToBPagR5k-XQIvskfUPMsiSefk36sh5QQiJyR2JQPpu4Zals
Message-ID: <CAMuHMdWV4uOMnz_FBMW4brWx+6snQ-WOQck5b_YXAxzHhjJgXA@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] pinctrl: renesas: rzt2h: allow .get_direction()
 for IRQ function GPIOs
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Setting up an IRQ would normally be done in the .activate() and
> .deactivate() ops of the IRQ domain, but for hierarchical IRQ domains
> the .activate() and .deactivate() ops are overridden in the
> gpiochip_hierarchy_setup_domain_ops() function.
>
> As such, activating and deactivating need to be done in the .translate()
> and .free() ops of the IRQ domain.
>
> For RZ/T2H and RZ/N2H, interrupts go through the pin controller, into
> the ICU, which level-translates them and forwards them to the GIC.
>
> To use a GPIO as an interrupt it needs to be put into peripheral
> function mode 0, which will connect it to the IRQ lines of the ICU.
>
> The IRQ chip .child_to_parent_hwirq() callback is called as part of the
> IRQ fwspec parsing logic (as part of irq_create_of_mapping()) which
> happens before the IRQ is requested (as part of gpiochip_lock_as_irq()).
>
> gpiochip_lock_as_irq() calls gpiod_get_direction() if the
> .get_direction() callback is provided to ensure that the GPIO line is
> set up as input.
>
> In our case, IRQ function is separate from GPIO, and both cannot be true
> at the same time.
>
> Return GPIO_LINE_DIRECTION_IN even if pin is in IRQ function to allow
> this setup to work.
>
> Hold the spinlock to ensure atomicity between reading the PMC register
> (which determines whether the pin is in GPIO mode or not) and reading
> the function of the pin when it is not in GPIO mode.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-pinctrl for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

