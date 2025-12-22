Return-Path: <devicetree+bounces-248853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C74CD62C1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1D19300996F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62C22F691B;
	Mon, 22 Dec 2025 13:36:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF732FFDEE
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766410607; cv=none; b=FP+ZvBN8JM/eQQJOfM1+FjaB4DIxmWkPmtkB3BuYyRInavDJSVlt92M6tFRusdZtctagp3lb7ky1nOWGyqxR1lWhxaSkGR2X6RcrLBdP4OM8NF+NnAvPqO7ROiBR6jHwMBjFUWdADT/qvJ21g0mOxJ6uSYZMEvF1N3V2mA++ovE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766410607; c=relaxed/simple;
	bh=dTQUrjFwGkubE0gbsMMweQhxBG+tHQk52NGssDmMAiI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RHiw/f68hfU5nPkjBj4sBXGG05nZZUi58/4X3h3xMi+JGZ9Fmg7yxCHuhHBLeQ5fKhjkiLTHvuIOoai8BQ/Vvw51BNBKAk9aNd7cOHeEVwKj9U1f683RnQHJeyd3sK2zf3Pu1N5bQZYsUAuWi8Fu+QrMrlo/SREJcFix7GB1y30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so2500473e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:36:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410605; x=1767015405;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LkEkVXOBUK+8jQQJIkENuCRqGRgCBUZJdvN6vgZt39s=;
        b=MHYisIHpTO5lNIZ7c6tx9sQuza7Mxgif71MB40LJnE6ZMKrS6PNBh1tDJhW2Br3nr9
         Rf0ccTUvKW/ksmigSX7Xk4xyco3vLYqpxMCO2gFs9jy3ut9lVGsGRwvDyBB+BzMTgu9J
         wsUleZfLhyyeE7XAypieoW6njZdWLLpLmI9UHbmLMue0amNtOqfpBxg9en0LaSGe2FkK
         UuLq5/s0ywJVriec8+2onT5ffuJJMVihvXeW/Yb/Eg7s1SsaJUUxBLDz+mgRGXsoh14S
         +vy2hF5Ad8c4/H1zQzxa+c+bLxyIGV2DyeCnYO/p8DzM602Vcwy7YETkIQWyYnmIxxJX
         ragg==
X-Forwarded-Encrypted: i=1; AJvYcCX1FTOWTtWi61AzROP9uo5i8+wZs4BZozkKCwSdtiJId8C+PtGuDmupoP4q3yeTqH/QwxFNW5VZXlKV@vger.kernel.org
X-Gm-Message-State: AOJu0YzSXibdGzRGovh+ITgHLJyiKlg6UCFugS+2HagDCz+rTIN4Z2FW
	R+NUnMhriOIqcF2IUYqalYBEWBvvAEFIgZZC7SzlFL7ED2+kr99gTus3TmIHnhmr
X-Gm-Gg: AY/fxX4jgkQEor1wvBzP0AlamT5od2j43mmNLQYI21dvGGERJRjoJWVlnQblJNMrjEk
	h+/rdo8qK5sQv9e9l1Y4ZE1SyQ3s4zJtABN9ReGrP1EK+vZz1KsoNf9T9Mo1PhaiikCqayIqsxQ
	1KCb+U1haLusVNnMt9+WD6ME41T6LeRvx1cOFLyc0RQ8gn0/3ZCfhAU8QwUWF227x/F0cRD/dgf
	eumiAFhSBtFl/IhgUB68VfVH6gRPTG09n4kdKoKik/33srLdKIE/ttrZQtUPn6Y2iLh7UdviYmE
	7V+w9Y3EDB6bwwzWt/gS8eH8fMdV9CGjaFUxltwwlZHgsOUTmGegGhg/IFUwWLnw/U5bn9bfukq
	kE6XjEdDw1adqGcwPPzBgrZ56WWJxboHIQiqB3Oo5ZF0qhQ9Gkh44d6rBOJmSkPz46xUT+aNz5N
	hjY5ZFzohJcDyf53NOi/zoOixGaI+My6Gguj1aQHJ8koMRWLMOg+1ZcrKaTio=
X-Google-Smtp-Source: AGHT+IFoBJJCF5YlWSZWyx0iVko+LA1NmDU5Csc3Csuyi3Gat1hZ4fry+Y2L8RsHYDKFfCEeNGx8RQ==
X-Received: by 2002:a05:6122:487:b0:55e:4f9a:103f with SMTP id 71dfb90a1353d-5614f7db6b0mr3719562e0c.8.1766410605072;
        Mon, 22 Dec 2025 05:36:45 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d060bf4sm3588075e0c.7.2025.12.22.05.36.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:36:43 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5dfaceec8deso2434686137.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:36:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVmHOlQVgdtwAi96xMOYVXswgWyE4hArxsHuTbCWJqTbqr1TwfSt9Bur/RaoGm5d5+wRsCaNx1wYZyb@vger.kernel.org
X-Received: by 2002:a05:6102:f82:b0:5db:f897:59f0 with SMTP id
 ada2fe7eead31-5eb024c6470mr5244066137.11.1766410603362; Mon, 22 Dec 2025
 05:36:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251103200349.62087-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251103200349.62087-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:36:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVSGhvewOB+BKE8d8gu6Du3-A5V3BzRGAiB0=0m3v1sEQ@mail.gmail.com>
X-Gm-Features: AQt7F2oTy1Q7h9hYYdcCF_F0NGf_UEXtPHwES0sXifBsGDbdSKwdtbA6Pui5cic
Message-ID: <CAMuHMdVSGhvewOB+BKE8d8gu6Du3-A5V3BzRGAiB0=0m3v1sEQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: renesas: r9a09g056: Add FCPV and VSPD nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Nov 2025 at 21:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add FCPV and VSPD nodes to RZ/V2N SoC DTSI.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

