Return-Path: <devicetree+bounces-252977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D37D05884
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0CCD33061552
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 18:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01ED2F12D4;
	Thu,  8 Jan 2026 18:08:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75E72E06E6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 18:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767895702; cv=none; b=aGlJISuHP7Ndknv9M8v56McK/vJDdfml6dz/Qr49mVdgCtMasmcpFUjuUMYWPUmAvK9UIF7Dd8LKySHZH0Y6oCgYyCzyajCxwgQy9h2DZIr5kH0S143PMFWNBRABSh5390ZrbjeB5UsycOd+eDjPwu33pXEgEBb+dHjHWUuDN2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767895702; c=relaxed/simple;
	bh=2xO+ZHQ5A8qFLt3P8aROWKAmWa7cUbLqr/lnbgCw24c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bRSIjTFdmRiPC9bdqwi1XK8kWWGh0jcjrScJnPcYur+2uPcKC0PYCYHD9MNyz5iLioy6P1pYJrOgC6jcfsncbau1UUIFQcabh6plTFTnMbPGN8nNyu80PR92gjA2yXzQoI7W2zEmIzT0qwESJtLGRMYQl3PczBtjj3onsTnktSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-93f56a97064so1050476241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767895697; x=1768500497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfFjVTiVA/VL3JBWaNXNVyzJkm9nYhmIUTtZUIKm46g=;
        b=QAB0gB0jWHQQkgRmThy51fn/MR73qqMWmpqVag2VVHOupDVwISv3cEu8wdXBJOY8mo
         hkY1gq88E3j60N+faqOWZ1dBPjrcYpRvDjzzJb3zqgQAEYFL02qibnwOoOa3ZEJUIzJ8
         JXWpzug26VE59knE9p8mV3vvb5HlBEf8M/jLp+eJeGBpINHlsexfPGYvasU431elPNIT
         6cxjbzNRrR6Vd1yOQg3uuH+Dt09ahfK9/M3YGZHQan4NdwzzX3LewFEiZxaPftYc2+JE
         7IuUgpPh06S899eARE5YR+C5CxfDGvRz9pzgKN/t5J06K+szK6uhdQe12o1tFjjxIVaZ
         UuFg==
X-Forwarded-Encrypted: i=1; AJvYcCWDB83jPhku+rFE6dPiVbIMiL8clw6pZpWAZvEUR/5RjGvycxFddpHcJnUJ0oNdsrk3pgNHRKTDRnp9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjdg35fMKHYqYIjeezgfGpaI4b4628s93AMsDoTzOZ/HkQAHQY
	RwcPA9PKJZU6bAEHwulrK4oTXS9BoUVzAXjdN56ALaszsQcR2P+F3UE2fyVAyRf8
X-Gm-Gg: AY/fxX4jZpk3HaHuKhYAOAMdTM4orlaAaHeizLsYzTfpET0DwShW1PaS3ZjhujLEzI5
	QlGl9aZ6XMpc9x9BOX+btI64osxi76n3tgXiIA0QqWgjo+rnB8RhqR2Jiq1KkCcxKFQSW3JCvzu
	/ysVGSO5fcDqX4jRHy6hWJ+zg8uGSKCD69qpp6qSuGBKY4J9q2dtCn2yetkrq6dXD9QdT1Gdne9
	Mahg+DOazsx8PTEpSGrTs4S6z1i19iuebkSavyqIf+NaUKdr+/TY4WVQLCt66v9umCYDAzIcr4n
	Qr5sdo3uoasFAi/R/gRbIAaaYh34Bl3dsVrcd7boSyk4hZAlZlRivJ4Rmmp5sooqktcx9xH1Zfq
	ML2+dOam8dXZ6DGrZB2X/4zphQiGTgjEUaHfovf2UwzU/EOHWPnW41M/8HJouIGdDll17iwXU1D
	s4odp1RCEyCc3TZQ3ov7coWGdabE0kHf7rCw/qeRsnlTKjf1u0YZiV89xCnxw=
X-Google-Smtp-Source: AGHT+IFo6wxhDHPs2gvfzitFLhmBPKnrY+VTQ9cqxF3EzumgqnFDGr9Cr9jQd8pIRGI61onQeLNjuQ==
X-Received: by 2002:a05:6102:5107:b0:5db:fb4c:3a8f with SMTP id ada2fe7eead31-5ecbae562eemr2573131137.39.1767895696991;
        Thu, 08 Jan 2026 10:08:16 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ed082abc75sm5625925137.1.2026.01.08.10.08.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 10:08:16 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5eae7bb8018so1328001137.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:08:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWXLqeJ/w4ZXPT5l5009MEMv0f9vbDC1OT5JB+fapnCqyijRDXt1irOmLs9QLLtH61mPg+UMquDBMKc@vger.kernel.org
X-Received: by 2002:a05:6102:6f07:b0:5ed:c98:37f1 with SMTP id
 ada2fe7eead31-5ed0c983b52mr1804827137.1.1767895696438; Thu, 08 Jan 2026
 10:08:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-8-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-8-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 19:08:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWSB=9d7jwFcLjJY3zJjs7neFJ+tr+GtTDAU85=o8xK1A@mail.gmail.com>
X-Gm-Features: AQt7F2oZ7EpOfRC5VK28dLvBYQp2AsKz2b03nI7P4C3otujbnCexl7cMnsmNYpA
Message-ID: <CAMuHMdWSB=9d7jwFcLjJY3zJjs7neFJ+tr+GtTDAU85=o8xK1A@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: add
 GPIO keys
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Fri, 5 Dec 2025 at 16:04, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H Evaluation Kit has three user buttons connected to
> GPIOs that can be used as input keys.
>
> Add support for them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> @@ -7,6 +7,8 @@
>
>  /dts-v1/;
>
> +#include <dt-bindings/input/input.h>
> +
>  #include "r9a09g077m44.dtsi"
>
>  /*
> @@ -60,6 +62,37 @@ / {
>         model = "Renesas RZ/T2H EVK Board based on r9a09g077m44";
>         compatible = "renesas,rzt2h-evk", "renesas,r9a09g077m44", "renesas,r9a09g077";
>
> +       keys {
> +               compatible = "gpio-keys";
> +
> +#if (!SD1_MICRO_SD)
> +               /* SW2-3: ON */

Shouldn't that be OFF?

> +               key-1 {
> +                       interrupts-extended = <&pinctrl RZT2H_GPIO(8, 6) IRQ_TYPE_EDGE_FALLING>;
> +                       linux,code = <KEY_1>;
> +                       label = "SW9";
> +                       wakeup-source;
> +                       debounce-interval = <20>;
> +               };
> +#endif

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

