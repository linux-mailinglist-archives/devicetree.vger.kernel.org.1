Return-Path: <devicetree+bounces-246984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADF3CC2794
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A885C302DCC0
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91CB93502AC;
	Tue, 16 Dec 2025 11:48:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57A7350298
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 11:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765885691; cv=none; b=GpK3QpqGeIGuktjWiy/erV38xiqXNF/ZFk6dzKWTMqbgCfLjvPZ+22xtfB38JxYS08XRB83NArnxujKrHOoBj/de8oHQm33hn2bk4BUjV0sZ2x/GJ1V/6mo3yhW7Wu1X4lxT4tt2Q1ZIs7NThsiupAykhbaNx5Z6HkdXkcM6lrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765885691; c=relaxed/simple;
	bh=Q64M6yTlY/4csK3Tn1gXsYntWJ0EMfk2HD87lk8BPX8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V6heRPhmfsjaf2G/TLzygY7VAaXuMUHD82rfyJEL2oVEqNUEEIZDx9MDrFuquIQdL/yEXOLlZVvUnDmjNiNINAXilKQOmR4fq2CcqyjyR5ZyeS7lsMQpCa16rrLnsWZwxX830lveZX+/LiJxQeLH4Ey5zKZcpkIsprUFqMNXJ1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-93a9f6efe8bso1116156241.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 03:48:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765885689; x=1766490489;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXQyigt3jbZ06RFmtuZpK+cBrkyIX4s9E7WO3JpZ47U=;
        b=X79TCx5osYy+AQpdvUjgso3Z23Z5fQB/UxNSEgwlPGwuoSdYO/+d81Qw7OVN0nJfX9
         VSLsCzXwaXFlPC61QhAAlKg+iKVmN9Wtw0YmOZqJOeUM1iLB4JTk6W8mspOm1oDEraSx
         cqYilg88d7F4vyLyQOVGWnc5uShQ4abgfQtmJG+/0Rbtuk2qsUF/5PtS0FwFko4nQt/n
         NgazbEOCuPykShuqtmtuIdPARWxFaOfg0IKY5txs6ekIXA38sZhe0Yo6ZzqCZEoUSEro
         MJf78enbPpRp5a6cfk8X6p0/l7GuR3V+UFHJHG8zd3GiVDwLc5bc8iIkgEhGQCAusiEo
         oJ3A==
X-Forwarded-Encrypted: i=1; AJvYcCXtokUyn20j2Jb3QR/8gLJdu2mszKRptpQl+sP/7HPfhWbWHAMrhIgTtsK9DXpMW8zTk7fC49lCnGN+@vger.kernel.org
X-Gm-Message-State: AOJu0YyTq3AlfYj8dghg1nxQhNIZljS/m3Kr600TfClyyNYE0Yku6DGo
	Dz5prLe7+PIqAALjhXZrCiWIuHwnzzBftzHlBR/C3GBBnmx89Iur4EKNn0HiToYf
X-Gm-Gg: AY/fxX4mNJHAtClEasgMzynE9ArG9HnCL35jeyXyPvrq3tLgg38tV/CQcu6F4W6FQtM
	EGx2jgmzQPG7n/y1U9/jddOMOfW7CLsHajp321uc0Gdzh/1ehL0bMc7EwlZTCQdeIaR2EFUzmSI
	UtOZEE3xBTI+gL8udpmTcTDiTO+t4tW7wzBUxhG5ZqVklEifT7lbcJe6xULkO6olJ1ft77GRfdz
	Uthye8JVMmbQZdp/pIZUPB0nSylxVqh+LhvZjGeIicpitMWZ9m0lWtSxo71pkQUpv1MxQ3+IgkR
	hTwO7ddOLgpcXj0BsOJFTidVRIux3aOixTEel+SWVtWzWrmolVwTNcqnCbbNULVPy+KfrrJY/LD
	lbdhlViDollLw30KxW9DhXvbswL+56P/20VUrKNTzxC5CRh10B5wVil6/RsRj4ivPbT0Fef/cqE
	aCJLjZJjAbWw05aTPRmOi9NeFpE5m7T1vPE3/+dBjqdSGEVfMD
X-Google-Smtp-Source: AGHT+IEhLeOHMDYPh/oVPxCQKQRmzh7x/WJs0p1cnVbg+HDREs1V9W31UmqSp+GYAQ09cFLnUGWwuA==
X-Received: by 2002:a05:6122:298c:b0:55b:305b:4e39 with SMTP id 71dfb90a1353d-55fed66591emr3666395e0c.20.1765885688552;
        Tue, 16 Dec 2025 03:48:08 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55fdc63a58fsm7366341e0c.9.2025.12.16.03.48.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 03:48:07 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dfc6be7df3so1615646137.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 03:48:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWfGjhASITVHVwlrVPcwuPT0NmQQaVmZobxg9EZ0edtZ6T2Y6AsOqa8hPB1VmjL1UUUP2oOIJtnSYQv@vger.kernel.org
X-Received: by 2002:a05:6102:5e8c:b0:5df:b085:835a with SMTP id
 ada2fe7eead31-5e82780a8b6mr4764738137.30.1765885687047; Tue, 16 Dec 2025
 03:48:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201112933.488801-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201112933.488801-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201112933.488801-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Dec 2025 12:47:56 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWY7QLfag8szj24Oo8ghfZn84msRHREAvrB_A2inA7WrA@mail.gmail.com>
X-Gm-Features: AQt7F2qJx2KIAwNW4AUKTYzXnNB8ZFWGeQMqIrBInpr7vZ80jygJQc6gJtqLNTs
Message-ID: <CAMuHMdWY7QLfag8szj24Oo8ghfZn84msRHREAvrB_A2inA7WrA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] irqchip: add RZ/{T2H,N2H} Interrupt Controller
 (ICU) driver
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 12:30, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and Renesas RZ/N2H (R9A09G087) SoCs have
> an Interrupt Controller (ICU) that supports interrupts from external
> pins IRQ0 to IRQ15, and SEI, and software-triggered interrupts INTCPU0
> to INTCPU15.
>
> INTCPU0 to INTCPU13, IRQ0 to IRQ13 are non-safety interrupts, while
> INTCPU14, INTCPU15, IRQ14, IRQ15 and SEI are safety interrupts, and are
> exposed via a separate register space.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch, which is now commit 13e7b3305b647cf5
("irqchip: Add RZ/{T2H,N2H} Interrupt Controller (ICU) driver")
in irqchip/irq/drivers.

> --- a/drivers/soc/renesas/Kconfig
> +++ b/drivers/soc/renesas/Kconfig
> @@ -423,6 +423,7 @@ config ARCH_R9A09G057
>  config ARCH_R9A09G077
>         bool "ARM64 Platform support for R9A09G077 (RZ/T2H)"
>         default y if ARCH_RENESAS
> +       select RENESAS_RZT2H_ICU
>         help
>           This enables support for the Renesas RZ/T2H SoC variants.
>

This change should have been a separate patch, to be routed through the
renesas-devel tree.  In addition, you forgot to add the same select to the
ARCH_R9A09G087 entry below.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

