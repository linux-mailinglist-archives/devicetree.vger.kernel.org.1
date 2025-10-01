Return-Path: <devicetree+bounces-223044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C94D6BB0843
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 15:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8558B2A2A63
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 13:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41472ED855;
	Wed,  1 Oct 2025 13:36:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAA42ED167
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759325769; cv=none; b=X1riGBjz6FTOxxA+UwKcImPZ0lOCyE8RCs6I98d3pNzQwBy8tvHCyxKlPfWlxk1ocZJvgO7oQc6J1p5+WKZ4L9kzssbwfJVTtRKDaRddikr5ip46Z6PkUsJzTLlNoHakAarxi7gDl9WI9ZsKvscpUlAIV7u5HIh8G4VtTfFeG20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759325769; c=relaxed/simple;
	bh=cCOspOg10LPIcpADaHReTKiZQPz1A+QQStO+5J4q0Lg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HurN+1Rm2Xdhb4/pouvmbP93lS7E189cvFGreKqL2N4K2U+20uqx95dH308l6fPCA8BwtUjY89LmkNgDVs0mHfEFB/LxfXmYKyGsQKM8+/yBwflIZ3fjNJthZYpiv1g7/elHKf7Tg7gvPb0EgBH63816p1pdWWeb+09PmW0MYaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-574d36a8c11so2500726137.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759325767; x=1759930567;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTnvOCbceGyglohEUcee1/fNsyqLgTdEhUXaZIqhQic=;
        b=sWhJf53FRW5+pGk+C0epjmxb6U+fJx6WgahndWhBu1mg+dghWb8WUtxvV+LO+PXU+5
         pjLWZiHf4bBiCK2Ul8logq4AXB4bSdVBjPSKkS6jduHgXUFJp1+HchwvZEQUgR9AqduA
         OiYijaPbLGjq7l7NuATbGmFRde9Nfnjt5B2py66Fa+iq1BH8nT1zs3Ty2jPJoy85Z6IG
         QjPubsQviEgAHqxb6DEA3/LUO6BbovS87+7VUryN4sN96d/jc6Xv7wdTOypwUkdGeH8y
         hD5a1pqaxfGGmDNz8fqpgF++8NZQIYELR4S2AJ0XC84cSpzQw8f0wZdRIqCxmNWy4WhX
         Aw3A==
X-Forwarded-Encrypted: i=1; AJvYcCW4BL7UB0EakWC7DK6N+O+wFk5tDYqQmP7Nq2zTKHOr0mWn9TqDw3UWdM9EZ866bis7XSexC9UTGbpq@vger.kernel.org
X-Gm-Message-State: AOJu0YzUYOkkXG8aYgsNqc64ypAT6nsVOxkw/alktCRzJF0rFgktOD7g
	micwprm8M0Y3DE/CBzmiIetBYDW9dK012hs4RdtNoH9suvyu+weBige/khbjy+Je
X-Gm-Gg: ASbGncsqFXaJxwhqFLIxfsZbgUl8qWRtdtmpOKGeHS1QQ64UkdMSBuhxn6Ig5AJdY9i
	6wwMfNFnzUn/dIAO2+vt05QkfpTqrTu7yLLjzQYfWhpyC7glsyyEfvzVmkHwFx0dTgUrU1k1OeC
	M4q6PdK2OXdFXBgKbgYJTnTTwK4czFX7/7+m3B4h/OLALlY947twudgU3v7E862NiPQm4dry5hr
	Z0go7Eb0Mtrz0/IGt6H8NzLLQvOHIvYaqSALofY4+2jqAcsHHWh2PmPMb85GzLF5Js+asTqekG8
	nq2e/PTrOwMOWoFG6pggZoOFt+/s0k9F/OFk2wmYSRCiqHqvtd4grcFiTI7CQPr/Xin+kUpbvKR
	BzpsRnIjMEf4YNZ5bj5OQfGUEDjQOA2Ein/c8hWIZqCvg1FscWuwjclmn0Q0NLIiE6I5dAuAUxa
	YJO6HvVQ5h
X-Google-Smtp-Source: AGHT+IGbN9kp7R5vQFGeONKf2dBBEwpXKvPXRbnPZBP2mWiJvV7H9GcQSImkV7h4Uf5E7TSOxAnIwg==
X-Received: by 2002:a05:6102:5129:b0:4fb:def3:d27c with SMTP id ada2fe7eead31-5d3fe6ee9aamr1220863137.22.1759325766726;
        Wed, 01 Oct 2025 06:36:06 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae305d0c44sm5133854137.1.2025.10.01.06.36.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 06:36:06 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-890190da557so1488879241.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:36:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU5axHkS8M6KxLA8BqtfJBBY3i+yvyauCPlCFDP/ebe/WA14pdZ7xwrRsxz83yBijrl00nq0dRQvRDb@vger.kernel.org
X-Received: by 2002:a05:6102:d86:b0:522:255d:4d19 with SMTP id
 ada2fe7eead31-5d3fe747011mr1261198137.23.1759325764988; Wed, 01 Oct 2025
 06:36:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 1 Oct 2025 15:35:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUA5r519G=OQM66wSig9r2dDP4y1NTH8zOZCTLb5m2Tew@mail.gmail.com>
X-Gm-Features: AS18NWDLqgedMT7ALXpq29QgD05-Zz5HL5W7UgCB9wanWY8rYAtz-4hGklmKwbI
Message-ID: <CAMuHMdUA5r519G=OQM66wSig9r2dDP4y1NTH8zOZCTLb5m2Tew@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] clk: renesas: r9a09g077: Add ADC modules clock
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have three 12bit
> ADC peripherals, each with its own peripheral clock.
>
> For conversion, they use the PCLKL clock.
>
> Add their clocks to the list of module clocks.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks for your patch!

As I have already queued v1 in renesas-clk-for-v6.19, there is no
need to resend it.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

