Return-Path: <devicetree+bounces-252423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7BCCFF9EC
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91A6033CD735
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D9E3469E2;
	Wed,  7 Jan 2026 15:22:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44EF343D67
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767799333; cv=none; b=PtkKA8uz/zFQrPTdKSXx6V6m0TGiZVTawlirz5AAtYxSwm/loR0IDHHHt3GzYcVgAabQm9oR92eM74P30CgVBmIP8o1f0bOo0Lp4O8gG1K+BtdAJ4hsGNc3mPrXOZ17JWmi/UeP8EpfgQW6Wi7dENWiQo1X60Gi4wmLmn/w7poI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767799333; c=relaxed/simple;
	bh=xirnzd+sOTLBfOoqrKyZ5orvmCZslNDx5L/n4t/ve2s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FnkK27rIWwZawJssR8YdNrBHDOD+/wJ5zws+zqgh8TDRBkHzO0+JmPI3PANr5f3a5ClDIp4j2KEmYtUWqk626WOkpZ+LVNsyZs7PQJ549sxPGcpvRbb5hRMkY+byjxtOpFjttgRApsJkuUiBsN5DdkU2QjHTWlY8nbhIVx7Y+pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5ed0a9cbb3fso313166137.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:22:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767799330; x=1768404130;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGXfYeh3k2PdpEfY5u5umPkWwmBYjzfyvyHueENf/WA=;
        b=n8flYERHuZrx35hsllbQVFHuIEFDi1qatgPcURQVCSWJydLEm39FR4+8QNsHfYE76u
         Dl2rYsBzPa8XiAlCIp2DKe6n/bJgDevZDRKpqo92S9/MdTz89Gf5oaYwm43x5+bOt7N0
         0B6zqG2BG5RxS99H872A+z1USAF5pY7+q8y5cY00tNiMCVYks7ZtidZwaGQNpNKdql6d
         FRjoSFwt+ELLeNoo6whmwsoPkkh57tmnqNAfUGAGoHzAm5CpJyVFXZWJIdQhHAa7sLmH
         axphkRrpdd3ucLH+32bp+ICE8LD/V+3cVf/9ZrR8FOAxnxarkNM3ZZfA41sXyCVAA6U+
         qYWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdZY+IftibcttNy+M0kQZtcrNqEgy5pxcYHFoNLVeMVc6aGaUa36G/ZkVoinwWspXa6F7YmpwXThZM@vger.kernel.org
X-Gm-Message-State: AOJu0YxKMDFcTOnW9u8wpL61aaXqeHQ4Wf2mIuotKUbrSDGYn4Tcpx0e
	V/lCx/+e8JWxT8v0tRGwrRTRTYoTZMWCW0+1wq1DZ6TMSGe2ncWzBYroUQwX2se8
X-Gm-Gg: AY/fxX7vP2R/ufRn/rAZF5argDBtlqI/q4xiipfH1uz1VoNmCdTnx2Jpl9zpHNxnjCO
	gqO6Exew2eBablbMyS0liqbicEV6VZR4Df5GvnOGPWeOWve/F7QU3NDtJ3Kx/6w2hjvgWkGW4DH
	JOAd9DOYHww6rfON2LuSJ4X4Ihweq9nisOqyZiK06Up/But42D9gSl15u1NGmRK2CEpPsSxer3S
	AuvuLv+m1GmBOMH9jQzrc1WWU6XJXql0kfi3jbibFqPK98ZBMPXwetfugEx3sHU8LBPsCn2y005
	M3ktdOl7Nqu2TvzgjqgA+Mpz/vB/uDfOLFqetTihJWUoQRswyJJNJHCYU21sm+c9PeHMcZoejoi
	Pjekju+JDbKG4/vs2nyEuXw61tnsSTdkhBQkTP8079KDtRPYuKSr4w7l1VULoQ+48daFLOSSQxQ
	ZucMfE7RwKVd71yIcSHIz/rMEFUX4X0HO3lfzbmbGKD3FtpgHdmfN18D5FtD4=
X-Google-Smtp-Source: AGHT+IG26xKk6BufVQ873lMCsNEfnCTrbLLfGULZdFaeG08uayAQPUPbW+P31i/2SOtPjMzxOzXnhA==
X-Received: by 2002:a05:6102:cc8:b0:5db:e32d:a3f4 with SMTP id ada2fe7eead31-5ecb5cb9399mr1256965137.2.1767799328994;
        Wed, 07 Jan 2026 07:22:08 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772e3300sm3213707137.14.2026.01.07.07.22.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 07:22:08 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ed0a9cbb3fso313137137.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:22:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU5fq3Kvy/fd7xr5Jul6UbRSyCwvkiSzu0GSNNHAvyXlleEJziREhoux5KohF6SlCY6QPCrcbOMeQ+r@vger.kernel.org
X-Received: by 2002:a05:6102:3e82:b0:5db:d60a:6b1a with SMTP id
 ada2fe7eead31-5ecb69624bemr1245498137.30.1767799328042; Wed, 07 Jan 2026
 07:22:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224165049.3384870-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224165049.3384870-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 16:21:57 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW3S8BhE9yXsWCedQZnipBR4O5=OBDfubLE68A2OtqMAg@mail.gmail.com>
X-Gm-Features: AQt7F2pLWgnnzOwA_7Wfo0rR6d8bVAPIEUWOruo736mHbFyZALGJfwT7zcffoA0
Message-ID: <CAMuHMdW3S8BhE9yXsWCedQZnipBR4O5=OBDfubLE68A2OtqMAg@mail.gmail.com>
Subject: Re: [PATCH 4/4] clk: renesas: r9a09g056: Add entries for CANFD
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 17:51, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add clock and reset entries for the CANFD IP.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

