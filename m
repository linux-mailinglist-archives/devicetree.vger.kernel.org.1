Return-Path: <devicetree+bounces-242361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C5EC898F0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2AF134E5AF2
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59749324B1D;
	Wed, 26 Nov 2025 11:38:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C11C3242BE
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764157128; cv=none; b=gUb528N7M7ilbnZeAyPU0uKmf/9JU9gimKzZfel+hW61jshL47nBw913pLcj6wS+63cLX5x/nri9lk574VK77O9FLqUR8zYlEMKujeqx2rtIh8PoJX54nrvNyWDU7eZ8HU8SA9veZhFtEs/hJYdJR9tyB2YpE/pK+RNuE0kmbBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764157128; c=relaxed/simple;
	bh=6vXU8XpgJra2p/A0mAz7uHu58fBrCRCKvus9KzogLac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ba8c2BeEckJV0zwDllSFZtU+G07UM8Ot94ue+ABHYBXAtOKNpx8hKmFaBXmVIxEEtU3Qyp1RGXn2TqiDsAcc/Cs3JcGPEeQPicpObEN8oAD6TnvWMPxiZbG4Z6edb+3pzIB7bCaHu8s9UlA575+yIeyaflW4hDDQGReTVTETyz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9372a52af7eso1955932241.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:38:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764157122; x=1764761922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPs+Pvsscvl4vbT5PrYvt5m/TvwButtAFGURqG2jLmo=;
        b=HjwE/eNcVDHlX0/Ex9Nq9H1ZvcwxAfvQ4dhi0sYQcEyDziaoMZ7KFdhpOqfKa8Z3j3
         f7YE9ak9qKEibOQlqoasE4qR5jVZnaGk6PPJxIFMnljeaQwcMN4nM6z94AUJKStGQZ2W
         BrncPvKbGGQmpN6bT5GW7HkwITyeUn/sqWFGOjazelMfFTernuxXotdaRkU7UL7BqFmW
         jnsxeLWyk+1prgqSbpiyespo1OFrbscrZ4taM0EOOJ8MHouEG+1oHuBZ1ZdRKfJJfPZA
         06b0lgzAMW7SdLPjCSVXE0PXnIQOcGuINiqH6wUCKqlm9Uil/6mQM6nygiVOwX0wyiBf
         iO8A==
X-Forwarded-Encrypted: i=1; AJvYcCUbn0r0M4PEV9ba+HZ/70eO102tsjpLNslGKhTqoGH87YrDF8l3nnV3CryB5d4Q+MP1eQvVoFjpZbqT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+CbPmPQH6i3E9gTeYvGR1Ci6dUHdTrLc0X/92b9STjgd3AUH8
	MYjv7VG6T06+2FVtdm6XBV6RJfx+STl5KyADvDUWAB/ve+5b044dZfyOM9at0lT8
X-Gm-Gg: ASbGncvMZlx9IqbR1X125E7asYLEhJKkIrrc8ZCoFfdOxZlTemHtu2XbBnMXw1HqNDM
	cKMqQR96/38j7dMWc2+hRHkYet+PdHi3otFagzYh1HvwU600ndgGJFLqHoPeCRFbIgaK6BgbMTq
	KPpq+zcm9asqaBs3grwqtCeFXmuJfPVzQaTHGIqn7EN9Si6xo8Q/wEBae0esepN8tOXFmHZMja8
	PuAkVki6S5/sSwy63dyLcCj58lNP1gF4G5fiF4zKXpJF97G/L+SkN/6wOM7z6C/ik9YA91PhYrZ
	TXNjJTMdeaqU9i6AWIjqlgfysTgzhO+jHNvXRLBjdhpwBFPAIc+ouErVC4l6A5T2RJiEBUXWT/H
	XvV7WbXctoiyrRLRg/e3wlORvlw/fBZ6gGUZMZRZE18JpCDMD2pif1oNd3p3PS26J0QsJxnbXO7
	sebA1D1dKdwOK2ooQlEUIMLL2LNu8SgJeF0Yh6V/e1B5/X58aL
X-Google-Smtp-Source: AGHT+IEyCSqhU9YqGNF2EPfagI+PLYd/dnShgoSO/rsMeZIufscbO5q1umSB5HfQ2yv/9ZMwf05drg==
X-Received: by 2002:a05:6102:291f:b0:5db:da3a:5a98 with SMTP id ada2fe7eead31-5e1de2fe103mr5411431137.21.1764157122360;
        Wed, 26 Nov 2025 03:38:42 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c5658147fsm8351695241.15.2025.11.26.03.38.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 03:38:41 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9372a52af7eso1955916241.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:38:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVqcZnwRlTECGsLNYakHUVRHmPwntq+fm2qAB55ABb6fk3N+YGCDhekZ8fqMXUzQLyoy3eE3D5+EsIi@vger.kernel.org
X-Received: by 2002:a05:6102:38cd:b0:5dd:c545:9ddc with SMTP id
 ada2fe7eead31-5e1de374e36mr6204808137.37.1764157120891; Wed, 26 Nov 2025
 03:38:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251125214529.276819-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 12:38:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com>
X-Gm-Features: AWmQ_blOpWFtldK0K7YO1Ee1EikL9Htm5FAvVFMl7KnZuWbZjrq2LybKioyiZEw
Message-ID: <CAMuHMdXD3f3jN2F7c+yHmEb1C5Byc-e=sEXt_s=UpBQLv_F=Pg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: renesas,rzv2h-rspi: Document RZ/V2N SoC support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 25 Nov 2025 at 22:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the RSPI controller on the Renesas RZ/V2N SoC. The block is
> compatible with the RSPI implementation found on the RZ/V2H(P) family.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/renesas,rzv2h-rspi.yaml
> @@ -12,6 +12,9 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - const: renesas,r9a09g056-rspi # RZ/V2N
> +          - const: renesas,r9a09g057-rspi

I am a bit intrigued too read that the initial value of the SPI
Transfer FIFO Status Register indicates 4 empty stages on RZ/V2H,
and 16 on RZ/V2N, while both variants have a 16-stage FIFO...

>        - enum:

Please don't bury the enum between two items.  Put it at either the
top or the bottom of the oneOf list.

>            - renesas,r9a09g057-rspi # RZ/V2H(P)
>            - renesas,r9a09g077-rspi # RZ/T2H

For the content added:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

