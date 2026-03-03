Return-Path: <devicetree+bounces-270536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CeYFEXqpmnjZgAAu9opvQ
	(envelope-from <devicetree+bounces-270536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:03:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E53741F0FC1
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:03:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CB86319ADF8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E216336656D;
	Tue,  3 Mar 2026 13:53:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E3C36495D
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772546001; cv=none; b=X5jZjLswcCztZuy/TMBBhJsab7WdsP7nn4pL+z03EmYnU0Xbw+EaYX2+bZz5mbvtxjrQeJtX1xte/EEmR/7RxPCVokgJ+FJFX4260j+8oEoozdp8381zjtXRj4Yqznw6m7Vbkt5kH2Brwc7pibRMj6D0IkrK3ne3BJPZuTg+iqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772546001; c=relaxed/simple;
	bh=CLpy3oVfBpno5pNtd654a0t44zAg8ABNYi8W5CRKakE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gvs+qj7KIgmd8RU0+LgVbgQGzZ1opDL0INwoI9vwUxstbaM50FRrWn945yv6kYv77aRE7dDGPeQ7AaFl55MJ2bWT7K33ilIP93TTiF8mzMwfADRD9bZDV2zu9rAzaOL/YhVG12tw3mt0kLaYEqYcPpmuSvapj9trYIpCeYYUjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56753dc51baso2422320e0c.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:53:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545999; x=1773150799;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ftlyiDWQ8XObPCVS8E03AqNdtSao1cmOMFUjNen6Yhc=;
        b=LIvMxSYwGaBkWqyz4haX4SoW5yD7GM2iTXHqj8YFb6Da+0tKZuUxjBIl7Y5kFjUjyW
         fTHRuaUQMXf+Kx4qnTLwCy3u8TWY9BUQ8M7lSZLg9qZdoH9ZEmQCNRzfs9YUqeqw9wYy
         4OONZR+0gA4cBDADTSK84VCEV20RViT0qCa5OtBBpwO8osn8nrFd4IAOu7dUed3KSRTS
         f/JNhehjP1uwicDxTqYu2gSahAp6+FSuFaWGvczzcmfcQYhaO2CVcZRQl/R94z1BIHGC
         8OzwB5Q3wv6olMDIXYwSQqHHY/ElXa9LCAYjs3fcQhW/M2+CpdGMwoacJjfsSgxQqs1H
         b4rA==
X-Forwarded-Encrypted: i=1; AJvYcCW0iwYrxNfy3KqZXcOzbChzQsJx6QoUoa7e9j1tUlxzCpqJhX3sGnxaTJ4EjDEfDPWP6BQi8EufOtJl@vger.kernel.org
X-Gm-Message-State: AOJu0YxvuXT6SW835cj/r+YK82dys334z0eVND6twVM0dw+MbqEs0QYb
	kJBHizSGcikaMiLCo2/iTRi2det7IID+wgiCBsEzsFKfm1cnbMv7lpoynYHH2o5y
X-Gm-Gg: ATEYQzw0sTRiq3hBxALM+046zsI/Pxpu+VoDLmLljHgek24k1uxXvkwVTj2+j6TdGBg
	4wztrIXRS9YeGT1soID4uP6AV24gO194XlKMVxHOJOPwYSflMihNljmUGMMUAJEIgVKPeyVd3Io
	DhPDkytGcPs/0Z02XOJbrWCBccB2VI/tkHQnuGV5Gd3HGXWbOtr3QsRiKkgbcjEl6M95USfqmIe
	tTX8hR7H02QzmlT80KvIRMpm5Jd4Y6nSJFmjbU0VgbhmucjZ4HUbDJdkb8zRG6AMhkOUOLSNdBg
	DsjvHUAf15nkC9rx1S+EaqWcj0LO69Z0Vr4GQX6ZW6Kest+Yz8/ls7ZdztJVSs99SSG8eyNEWQu
	3VsRfBNLqwH84D59s/lJfGOM2Y/cXgwhicgch35sDUO/8FqDIh6UVBgl3dmD618t1ZTsJL/X6Mi
	N3NBgq0q8E+17e08Lh+Y36G98/CaW3nXHHdiNWluq7LWP3tRufrsN+t0SPzjidtoeo
X-Received: by 2002:a05:6122:3782:b0:567:499d:1fb8 with SMTP id 71dfb90a1353d-56aa0a9c30bmr7401380e0c.13.1772545999499;
        Tue, 03 Mar 2026 05:53:19 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a92175e87sm19128150e0c.15.2026.03.03.05.53.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:53:17 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56a91a5e64eso2178873e0c.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:53:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW8cI0w83h2Pt5Sepz9nEGwf59XOjNHA2QcYLktGnG3tViRVEoFcalrALCQg2cBRIV1Hohf8PfxSZlN@vger.kernel.org
X-Received: by 2002:a05:6122:7ca:b0:56a:9401:11eb with SMTP id
 71dfb90a1353d-56aa09f0b38mr6440166e0c.2.1772545995814; Tue, 03 Mar 2026
 05:53:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251014191121.368475-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251014191121.368475-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:53:04 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWQeOa5L9QAMDMy-KSH=HiZeOpLnq+VewSTVbvWHosygw@mail.gmail.com>
X-Gm-Features: AaiRm503CgavmHGHdjX0Ja6Qo22cAvLU4FN50HhU_yNMMdgGQ2R4xUYUTQ3hqfw
Message-ID: <CAMuHMdWQeOa5L9QAMDMy-KSH=HiZeOpLnq+VewSTVbvWHosygw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: renesas: rzt2h: Add pin configuration support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E53741F0FC1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270536-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.124];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux-m68k.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Action: no action

Hi Prabhakar,

On Tue, 14 Oct 2025 at 21:11, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add pin configuration support for the Renesas RZ/T2H SoC. The RZ/T2H allows
> configuring pin properties through the DRCTLm (I/O Buffer Function
> Switching) registers, including:
> - Drive strength (low/middle/high/ultra high)
> - Pull-up/pull-down/no-bias configuration (3 options: no pull, pull-up,
>   pull-down)
> - Schmitt trigger control (enable/disable)
> - Slew rate control (2 options: slow/fast)
>
> The drive strength configuration uses four discrete levels (low, middle,
> high, ultra high) rather than the standard milliamp values. To properly
> represent this hardware behavior, implement a custom device-tree binding
> parameter "renesas,drive-strength" that accepts values 0-3 corresponding
> to these discrete levels.
>
> The DRCTLm registers are accessed in 32-bit mode, with each port split
> into two halves (bits 0-3 and bits 4-7) requiring separate register
> offsets.
>
> Implement pinconf_ops to support:
> - Getting/setting individual pin configurations
> - Getting/setting pin group configurations
> - Standard properties: bias-disable, bias-pull-up, bias-pull-down,
>   input-schmitt-enable, slew-rate
> - Custom property: renesas,drive-strength
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Just a minor drive-by comment for a patch that is still WIP...

> --- a/drivers/pinctrl/renesas/pinctrl-rzt2h.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzt2h.c

> +static void rzt2h_drctl_rmw(struct rzt2h_pinctrl *pctrl, unsigned int pin,
> +                           u32 mask, u32 val)
> +{
> +       u32 port = RZT2H_PIN_ID_TO_PORT(pin);
> +       u8 bit = RZT2H_PIN_ID_TO_PIN(pin);
> +       u32 offset = DRCTL(port);
> +       unsigned long flags;
> +       u32 drctl;
> +
> +       /* Access DRCTLm register in 32-bit mode */
> +       if (bit >= 4)
> +               offset += 4;
> +
> +       spin_lock_irqsave(&pctrl->lock, flags);

Please use "guard(spinlock_irqsave)(&pctrl->lock);" instead, to match
the style of the rest of the file.

Note that that will become "raw_spinlock_irqsave" soon, due to
"[PATCH v2] pinctrl: renesas: rzt2h: fix invalid wait context".

> +       drctl = rzt2h_pinctrl_readl(pctrl, port, offset) & ~mask;
> +       rzt2h_pinctrl_writel(pctrl, port, drctl | val, offset);
> +       spin_unlock_irqrestore(&pctrl->lock, flags);
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

