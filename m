Return-Path: <devicetree+bounces-224521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A70F4BC4BAD
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B91483B00DB
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1520E1DF75C;
	Wed,  8 Oct 2025 12:15:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED4334BA3A
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759925745; cv=none; b=dVZs3vtHz2N0hd48eGV2BtAqGCDXpqICTLiVPEOEJkgVNLU5ZGaY+RyHcWZJzAYzyZQLieLkk0xLZXCywC+BgkqDtAyrShwqHCjJaBLlgRNmxbGcmV7kJ3HExMTDAAb0YXJcqM7dGry9nbC/0aj0k+PHuqet5LHJzgGQJEd8pBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759925745; c=relaxed/simple;
	bh=LHfdiCrUQuEcAm5u+oBtBSBCUhJhATTh4SH+rcshlXw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJXm6feq0+yl4CwN7wmIJ2PCIc+OS91h5ez3LwV2weUeOq6h9QrHQK60wLKql+/x/akvGzyH+7cefFeEJiEDkoExU/AZsTQiANzovtR7+9Fz0++TYwweORozyWzBtgyS3iGLPoyspV/eF8iq6FcYTUbz5+cIC5Pvv9ZfA9Vj6yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5c72dce3201so3094780137.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759925742; x=1760530542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9odJo6RABd099SWeo1M5TAe6eHvzwU6j0ndjMHRUm3I=;
        b=u6EFqnSWFryNrHbUWYmXcMrAm7zWK899UUxR9PZPbXKRyHT4aLAGQg+Tt+co9Ns94G
         PG7ktp/l+MP90MBARqxh6Vj4nTye7Fj3auZ4z4o4wZYht7EsKTlqb59LS2I0S4tc6f2a
         09dcS3gdweJ+OpLCeNDUBAFdW9jm4Xbe7sedVPnb5rUYDrbIw5mkHl3pxd2loSmKYNGM
         6i31yRgCHN977Tk4Hd2G+b5+otctDUuAWLFAeC8FDIDIhoVuD+Dwd2dul6DowANVfwXL
         sKtgGW4wnrKLOYBJjhNpDbXAjM8DoMgwtWugCAs4AePovwVlY5grQokeYxNzuQamFE5+
         w5/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXqjjcyiksOOgK77GpNDclburTAAYSuMwB4NwvvfrX1L4vkjMseYdGkh4oezuVqVieYU2jvpYdpEeIQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwvYHlYXOm2qbtS0VuI2Sv0pllYLJQws4l6IUAfBUY3UoM97XFc
	dB2dxjKmyLQU79DKr5VCS2LPyHYGOa9FvejwiFkVXIP8SGht7Tz4iDdv4vg+reen
X-Gm-Gg: ASbGnctyozh2Lr3BiNCp/5mXjNND0bFZFhg77Wzm0QqaaYkY+RLdqIT08BMWJVnyY0E
	ZH89+PCu1L3J38nwHI1ii3pLvjOQQnv22bgtC4IS83gJmsIkPmgkSyg3Z7K4Imv5IVvjj5elt3x
	Fg+nZ33xP6WQuRnldBQVpdxvMBmewTUzihi3KtrT6UiA+xe+tTPfmE+bAm71GGobuIbV4yvsRvS
	9cvd/vjvXUQeTzciKyGR2dnMepoketmDUxvLzCPH7YdI/JEUm9D3bLHmd5L/rGm4qTg+oKPhziY
	MFvJcbOqi4x1xsPWx9BEWk8Xa00jrw/Zi3NsMEwYGcTPpbBHJ2M6jssPEUxEtoBvjbWJfbkd6l9
	QLFRiipjR8I0BtujPRkTT6nADSDmzbXcu8OTW26azrIC9FzuZ+K9l8tGHFwTgZ7g8zY+fGFRYw4
	QJGVAKleOVy2IGAa+RqaY=
X-Google-Smtp-Source: AGHT+IHjZg53DWnCqSyyoK3yCb5acKzizDY5F9AnAUwwRJJKFLC2qu1VofbiYJ1pV32iq3TxT8yE3A==
X-Received: by 2002:a05:6102:54a2:b0:593:6029:39ea with SMTP id ada2fe7eead31-5d5e23b44ebmr1034214137.31.1759925742055;
        Wed, 08 Oct 2025 05:15:42 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d383430asm1527878137.2.2025.10.08.05.15.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:15:39 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-8e261568020so1454564241.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:15:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWM2guWMDmYiZw3u0jfVn/243VHEYW6m42c/duCXHgAuGCq2pNLpHT4KI1YPCMgn5/IEypuAD4XOhn9@vger.kernel.org
X-Received: by 2002:a05:6102:44c9:10b0:5d5:dd07:902b with SMTP id
 ada2fe7eead31-5d5e224f3eemr892009137.13.1759925735291; Wed, 08 Oct 2025
 05:15:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com> <20251007133657.390523-5-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251007133657.390523-5-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 14:15:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXe+hU5ryDOhdyL3Ng6Dd=+Xj-S585-duRgq5kcm9SHBg@mail.gmail.com>
X-Gm-Features: AS18NWC41OCxyAm3HqpYys4LAep69bTxUP4YHs1nq_HCZwAoIiGa8nxTffJE60o
Message-ID: <CAMuHMdXe+hU5ryDOhdyL3Ng6Dd=+Xj-S585-duRgq5kcm9SHBg@mail.gmail.com>
Subject: Re: [PATCH v5 4/6] arm64: dts: renesas: rzg3s-smarc-som: Add PCIe
 reference clock
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Versa3 clock generator available on RZ/G3S SMARC Module provides the
> reference clock for SoC PCIe interface. Update the device tree to reflect
> this connection.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v5:
> - this patch is the result of dropping the updates to dma-ranges for
>   secure area and keeping only the remaining bits

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

