Return-Path: <devicetree+bounces-241669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF89C80D53
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B7EE4343498
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C98BA309DD8;
	Mon, 24 Nov 2025 13:45:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66AC309DBD
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763991942; cv=none; b=Bm8r6m9E3hnkqmomQwp8olXjesRX1JY/ApMuy2c7YwRv7/436DwbovKK0Hj4PtzxKuG+QyssrTEnQS+wgbBRuPzazqah+0Hvd5RiL1JisgVvYk+FT1dbxMnUS8By2J6C2MceVsKHgkTlKryonLuyezed7f1T9OFpBedOE1RHeO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763991942; c=relaxed/simple;
	bh=pGwjEOungeheGFb7JOaHZHRCSnn6bJ6yIDISOpRWkF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gIan/dJ6PGt4lCm1psQ5vx3uX3cnU5bMOe+giWbQfQAqHvwqf3srk0DiqjTt2QWtuxAnO/h2+VRj/AJqmt9Sd0j3xxDuTyQynvr7rFd5EVjQkjJEAm5OvX4JyP7yHyFCQe+O07OKMtuWkSLJbJUfDraMwIbrhK/9czZQrbf5PeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5dfa9bfa9c7so2962387137.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:45:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991940; x=1764596740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JzF6CGFzYEv/qypghK1+w9eJ/Y2c6REJMBluTWTXczY=;
        b=QQe1mZGZUh57XwUbOtA9mn7hIY82DqA7cDoJ8/JHBORxR8cCX06a9LDqLywLIkyzlK
         NZblybciEbG0oqr8heaYbYeIX02acuM3YmuwrnSQVABSUhw7MDPAKyd/MBQsMNHvJGZe
         EN2QBZ8dqUTB9UpVev5qvViEx6X8639t5mCysNR6ARFEqV06UwaozyCea1yng26JARkX
         CdnhcteyfK6k0def3cGBbuYYwbAl8in+sxEdXX+/xU4KGDnSPmh2WpBy3jYw1jOWu3ln
         torR/2DHqbgxNGhSeQF/UpJp/cfOFxMiaDhdlwTzC77qG8eZ4Keutbuc+ZtUCeU/Npd4
         0OYA==
X-Forwarded-Encrypted: i=1; AJvYcCUcPuNg8dlJFNH4PqrQTICQynIX7RjES6USftpP3Xw14IVZyr/oxNic165izJCp9eGWdqy+46QLjgJk@vger.kernel.org
X-Gm-Message-State: AOJu0YyEcEQUDtTtvrIAkF1lY0yDBcdIHeLlOfBzEkDmzEKzxguDT4+U
	HaVJ/xh3O9GkkmtQskB4HYgcvMXdGPMsiL8zVel1DdW0JW3N34ajffatv2k9dpa4
X-Gm-Gg: ASbGncsN6+IQrQPqfzU5qBnp6UXhTGjlclFggbr4TkUFw/2EoWdNXhkE2ybnA2rLC1F
	Jc7q8RqYugcakfBPgcA1Dj2mpM4hXKpvvgwqQHN8LtmB9WcAbt2UJOnpuuAq1Csnr4nDZbXV1xc
	wWe+TpJf7ykPwBEtWvzqEXNEQRpIfAwr9p8wIFkIoEdrA6CT5D4Kg0tyzeCORwX0CyrO/NTlIZ/
	U6qBwiCD7i3U/omOIzfgu72rXrXNmad9Np4hAi2zUY7CnVIYbOw9yxMirIdb9B5ualsFRIlvPZ1
	WnTz6OxAuQ3VogmFGFwgvxqhpEQvqy04icY/t9XPwTkywEdwwB6wSrwhInVxBeY2gLcnjX9ZS1V
	aRRe+JJNdkddEC5sx4kr5dQ8VOdfh6KY6NOHg/6YBsU9fe0fTfF+HFvnoVE+fkbmUlhzVqfveRH
	PEE6ykaSzRnA/tkSlBoRkrsSY19ipWp+h5CUinBCodbl1IFc+T
X-Google-Smtp-Source: AGHT+IExM8RjspFVsBC6gdpvwLBNKEGvzZLE847esrN3L+GhYBObGDWALTEtWQ5XdWCiLyliUWruOQ==
X-Received: by 2002:a05:6102:26c9:b0:5db:f8aa:3a5f with SMTP id ada2fe7eead31-5e1de4a2751mr3554662137.38.1763991939804;
        Mon, 24 Nov 2025 05:45:39 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c561c50c6sm5395251241.1.2025.11.24.05.45.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:45:39 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93518a78d0aso2246361241.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:45:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVXI9tgMdt5NtiLUClW4wa6IyPmXaJZIrmC60OCtnPNvE7Yj225M592jT+4uyDrSkQ5FK4Esny6/bUt@vger.kernel.org
X-Received: by 2002:a05:6102:4b84:b0:5db:d60a:6b2f with SMTP id
 ada2fe7eead31-5e1ddd3b9camr4128126137.0.1763991938983; Mon, 24 Nov 2025
 05:45:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101042440.648321-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251101042440.648321-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 14:45:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWm2=4hgdUzS7c2gDEOikbW--HdhDLkOFAzk3K6LP5=5A@mail.gmail.com>
X-Gm-Features: AWmQ_bl9iCRqQApt_0NUXCaJN4jP56qxhVOoLl31Dhsfo_UxI7Dbre_KQS3oejc
Message-ID: <CAMuHMdWm2=4hgdUzS7c2gDEOikbW--HdhDLkOFAzk3K6LP5=5A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: renesas,rzg3e-xhci: Add RZ/V2H(P) and
 RZ/V2N support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 05:24, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add device tree binding support for the USB3.2 Gen2 controller on Renesas
> RZ/V2H(P) and RZ/V2N SoCs. The USB3.2 IP on these SoCs is identical to
> that found on the RZ/G3E SoC.
>
> Add new compatible strings "renesas,r9a09g056-xhci" for RZ/V2N and
> "renesas,r9a09g057-xhci" for RZ/V2H(P). Both variants use
> "renesas,r9a09g047-xhci" as a fallback compatible to indicate hardware
> compatibility with the RZ/G3E implementation.
>
> Update the title to be more generic as it now covers multiple SoC
> families beyond just RZ/G3E.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

