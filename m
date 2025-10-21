Return-Path: <devicetree+bounces-229226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32470BF50D4
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 09:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9F8804F7B3A
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5481B281509;
	Tue, 21 Oct 2025 07:46:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED9266B6C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 07:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032776; cv=none; b=MShcx/QZukU61JQ7a3SUy0NUYrKSbuQH8o7DqanIIAoLmjFD1UraSIhcHHAeebzL1DuOrrQaRl54Z8G6fSM7A0TezbfPGBNhD90fGLDPRerrqB/mcnpi0Meghdw4T1DcetFQdbR+vyxKOToVJbPzciZtRh1I759AMFed4LNSthU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032776; c=relaxed/simple;
	bh=8b3HA5v4yZAxTJ8eIP9xopr8fWpaOCAQs9WFX5TX3YA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P4JlZb6VFEQqgpoD4zBmLZ8Mhx+Lo5Bohdh9QUJTq/zaRGrLdTAU8O+Jd8E0++Vby5zRzpHLucnr/ZeF9Utmc7lmS/n03AKvXX2rvSVspyBVSGKqAx8a67dbz680oOKr1GcTzwyIFgXKcGfT0aWYncdfVlT5ZoxV/OLCkFG+ut0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-930ff50d181so3565749241.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761032773; x=1761637573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dz+xjmqR6cEerBTfm3rdjied7saH40mVkJYUcW/wH5Y=;
        b=u6LtEdA2hgA23NZtsqYIo5cz5F5h2+h59WDIk9Q6Ib1OQOiUK7MLfPjR22gmXoGrxZ
         Eqpft83XMShAJcGh7gUZpeG6bMWGqNQJf54AYXBw8AqJc4xIxM4xkqh4ZOYmUfYGtKBa
         K/Ykg+xq0FFHI7pcmQdYoBhbJTbVFaYl15jnFPWFijbvbjOcILHsRYERXAwYAaDLQiaG
         WoJS6DqW7CuivHD0F3ty1thqPZze9C1Vb2eH5CrTi8fTF5H5YNcQSUTmJ7TFkTVUE5EK
         28AEw8zUej/OO6Q5yXdIqgmipnuJFfaDwCrx63+n6S1Ii8/LzrWqlcoAcN0EEyqFzOIa
         XfLg==
X-Forwarded-Encrypted: i=1; AJvYcCWyTwhnKX0Pe6LOMlbc52KwRYPv4x4UCQgqEaXDlr10oFZd+Imzqvq0X8IczlB+ljNdRl74mdiY+cWS@vger.kernel.org
X-Gm-Message-State: AOJu0YyveVO4CGpUZMtOntj/FUfwqWRhfX0eFrkuYNHUAFakjxysZzIN
	D8IMFAvbLreMlNn5DWVPid8CdxXWgktgfhaTDrBasZitW2lUe22M1a6atCjZmmeN
X-Gm-Gg: ASbGncvrbpyMWUl0MHSv9+9DgK6gLdhX5dWWuBpWyTU/3Q1mCXa/ISVyLo5Lcz+MwVs
	2ff8+8Sa8sJCQbRAHrOU34zUsokn/9cxe9qO7jmWzZlzzsm9P6wvNZyXmbxQ/x38gubiq0RF0Wa
	VySVcMEfKwQAwxLGbkrEV9zvZtG84bC7EKTqT1ixlBjxcatJQfjtsKZkbG/XaZOOoGA9QnsiLP8
	bQOa7jhnABlSBC4BGuQ0xwTphy/9GHkAgy0Cly3SP7Uow7CuKlG1l3Uokw3AF/NsIUUjYKgls9V
	KuSolkzjNsJDcyHMw/8OPRrZ7dNVC/6gRFgxLphjPuGnPdzTSnbS5aYEmS8E3J54QVIZstQbr+S
	E8pbC6050ebj8ScbgnhgSEGNQTSkr/PJd/uMmf+fbic3m+aYIRYIgK981ri9tUd1jfNo4feeW1c
	xp3Y/e+LYLZW+dK1Va+AWBdx4KEd2zKICR1Mv+CsFqOz1FBJXJBC/tfv7pNQs=
X-Google-Smtp-Source: AGHT+IEoy99nChn9XbAzsIohwAEXvG4nZJxf1dKMVGn7jfMK1ci3pEcedvDL9D+IA95VNz0bObWr6w==
X-Received: by 2002:a05:6102:f07:b0:5d6:3554:2dbb with SMTP id ada2fe7eead31-5d7dd47292fmr5743388137.16.1761032773442;
        Tue, 21 Oct 2025 00:46:13 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d96c2794e4sm3314552137.13.2025.10.21.00.46.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 00:46:12 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5c7fda918feso4653490137.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 00:46:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX+YImcaHcTRpuoKF0bPEfzTIleggxJ62kfVC7Du5CZtTtmTsQcLmE0ElmHqmvUU7KgJ2kbHX1XVnB1@vger.kernel.org
X-Received: by 2002:a05:6102:374d:b0:59d:b0f7:664c with SMTP id
 ada2fe7eead31-5d7dd5ecfc8mr4994352137.35.1761032772016; Tue, 21 Oct 2025
 00:46:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251005111323.804638-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251005111323.804638-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251005111323.804638-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 09:46:00 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWZKDmME8vtCOR6xdtKxXO6YdR=60Nti8_Dc0SH8TnVwA@mail.gmail.com>
X-Gm-Features: AS18NWB6U78jSeH5jtDsRrmJGY1udV7PT7USkr6r0d8-dTFiq84SEiscvsgnda4
Message-ID: <CAMuHMdWZKDmME8vtCOR6xdtKxXO6YdR=60Nti8_Dc0SH8TnVwA@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: renesas: r9a09g077: Add ADCs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 5 Oct 2025 at 13:14, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Renesas RZ/T2H (R9A09G077) includes three 12-Bit successive
> approximation A/D converters, two 4-channel ADCs, and one 6-channel ADC.
>
> Add support for all of them.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

