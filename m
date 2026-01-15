Return-Path: <devicetree+bounces-255523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A54D23DF7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6132D309AC06
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8F635F8CB;
	Thu, 15 Jan 2026 10:12:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBED30C360
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768471961; cv=none; b=hBYcfTUBDRwNSq8+86oDVE1prm6LGPf+UfOiQZ8PvUsv6toUvGHwDI+8+JN1i2zeBEvQCi2Abn96fNcZGD+gDxo+FUk+vDs99kjoacOGJHsP7rTVGKaflYRwm6Ua4JvCYA3dnUZc5fRrchsrpcjSL1tIShlj3afLsx3hiJuAJno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768471961; c=relaxed/simple;
	bh=8N82thDgrk5p6pX6tvbenU7sVXEEobs2da6ZlAwkjnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V+puw5Da62i2+4mUQx2NOlyMszTYP4KZlFl3RuL+hLu5u5nY/qspQPD0ZBM1CUfxH+P7ii+i/UmD15rGmLOz3eSYNbpeMizdCkUUTz2NKWc+up85VVpADPwiasejuL1oRGAI54WsrgYX1s9OSyruwKTST1Iu6lGXaD1As6SJKHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b876b691fbcso150438266b.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:12:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768471959; x=1769076759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NfY7yocCbDQpyXldKITKmah5CeSNudO2PtXu0jreSTc=;
        b=MHm9pIamKTjduvtPtfRpcB9dNlEh+cjwhuF7p8gogGZKnN2Tv/N+rKwVb26X+6KTkL
         VvCcwIY69hsbjOIR3OHuTFHlvgwO+a1JzP7HuaJ1yGD5OCS0OG7kCbTiT6cuNUe/bvWv
         THsYmjEQdUG6XZJANl7cfnLaeTC+mfjfJsK8jF24KlGnwtMv7VVB+grJYPqigvcs+zpk
         +FY6EfQOmnEIj1yPMWSPXmr0hpMKwMQgAo4gfAhec600QRwvzaiJ6rpt61eA/LFpYEPw
         CD/BB+MVXXG7PkdYRVOhOl6GWWGUciNk0eGY1JqowAcyY9Go2fzHTFfBn8y1Q0Unr0m4
         8BbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUu0eBk1ZuAB9YUKWeig7zM0ZY4/aClUWm565bz3NV7GLy98QLVDnUZFi/QOA7zST9JEc+eKqgoLZly@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ3EobokPGZZRWUXzdsnvFvEHCdA9Tj+jNnEAOhiMCHGbelK41
	tMI5PKeKgv7BO+PhQETA3prnGWCR4Ee8ECY0/Kv0+1EBnajbe2myMkjdg1ODnOoQMS9Jpw==
X-Gm-Gg: AY/fxX61KoAzIeWRDe/we07jHDe7gJOk0uuh2K40JHEKgA2fN4Eh884hQfU/aRrD6Xj
	vH00c++140sULMlOwcBiJzXE7uAGR5sP18kmbTriCD1OWqxWLgSz25QCf3suI2fpAn9AyY21oIw
	IJHoPObIaHH4d7E1rJKHhIvCoH190nIauCjaPNjJ572wSgVe7R2UCn9lf/NVEfsvrc3qKomhWJc
	ncgUFJhuucY/sh5kCc4aOXHuCPffk5zeqr2zxtCby+z7vjDB0prMBBNiWarcu4Hv5LrPtd3qgVj
	ImoQ9f8im9ELZzdPe/jpckvDVe+kxaorZmzSnbNPGjijnEVJ1I5VZPZUFK38gO4p2IU8C9Ns2gk
	GK87XKej50+jufpK3tPY7xdNu+d9tIDwLyZ9hWbQ7r5VJIv/DcZVlCJwpEKbsI/lMmuOFu2Puxw
	aL4EvpLH/sHPpn64zjdmZs/lE1x5coGOjyJVXsdNUcJ79zKjp/
X-Received: by 2002:a17:907:2dab:b0:b84:2fe8:b5d6 with SMTP id a640c23a62f3a-b876103e438mr461532766b.23.1768471958587;
        Thu, 15 Jan 2026 02:12:38 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c0casm2733356566b.19.2026.01.15.02.12.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:12:36 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65378ba2ff7so1249079a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:12:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVRr1PBJnuq7l3EzPuWUwAkskGwvyxqN+W7tLBV48B77jP9+aD5MeLoJwjdB5AYOKokoCKw+Z+xCmDO@vger.kernel.org
X-Received: by 2002:a05:6402:234a:b0:64b:4745:11fa with SMTP id
 4fb4d7f45d1cf-653ec101f96mr4387853a12.6.1768471956067; Thu, 15 Jan 2026
 02:12:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114154525.3169992-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260114154525.3169992-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260114154525.3169992-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 11:12:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWJhmOcem=Au9xnrUGawjCMEsj=7LJFStcMRH5ZSPpwJw@mail.gmail.com>
X-Gm-Features: AZwV_QjFtS9gX1t1bcoAdGvEBCAD87MgrBFQL_PM1xjp6VHRWBnRuuHz0IuQFJA
Message-ID: <CAMuHMdWJhmOcem=Au9xnrUGawjCMEsj=7LJFStcMRH5ZSPpwJw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: can: renesas,rcar-canfd: Document
 RZ/T2H and RZ/N2H SoCs
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Jan 2026 at 16:45, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document the CAN-FD controller used on the RZ/T2H and RZ/N2H SoCs. The
> CAN-FD IP is largely compatible with the R-Car Gen4 block, but differs
> in that AFLPN and CFTML are different, there is no reset line for the IP,
> and it only supports two channels.
>
> Sync the resets and reset-names schema handling with other CAN-FD SoCs so
> DT validation stays consistent and maintainable.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v3->v4:
> - Dropped Reviewed-by from Geert due to below changes.
> - Updated commit message.
> - Moved single compatible entries into an enum and to below oneOf.
> - Synced the resets/reset-names handling with other similar SoCs.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
But I am not sure this is better than v3, as it is 15 lines longer.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

