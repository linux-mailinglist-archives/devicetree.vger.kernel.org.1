Return-Path: <devicetree+bounces-252413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5815ACFED59
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:22:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 771223027E4C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB56333447;
	Wed,  7 Jan 2026 15:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6044133031C
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767798759; cv=none; b=jGBi2kqn1L2j7n6pbDgWhA6VZt2Lc0fNt+iRTJGkZ0KA+/eBuyUIEyEMDOrgDU4CkYsG28tU+7MtegRoSjW70n2qldB1VAfeFhsrDrbR7puemZvrMoly5p6pQcMcfOeqw7tbF9TyJYt/Hc2tAmeiyqi0lct+NBX2ICp72toDUjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767798759; c=relaxed/simple;
	bh=lQH1FRm/rJzskVoeclFFS2ftwdSJglbw9Ah8hTk5DQk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mOyLJnpDgeHgR2wC88IciZi6IlgQRn/bSLUwx2fYNaujyOK0S13Lo/RXYRO0R9XwtFjAMwcW/2xcakfJy+/OrLgNxvfOqu+u8mAFT+Sz5I1y45GPVZshgsUeHlC4xYlnLUe5J2kKsoVu1MBAFDS6+TF4IzkFtejSQZF/B/tfNrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93f56a97064so649595241.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:12:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767798756; x=1768403556;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hTnh7CkZFGGtUC43ryOTlC9N4pV7qcvjxYMPMpt68WY=;
        b=EXUmVdJqedaQ+AJ/zNlvjAD/GUyTl98peTCM/yz1VVmR9T2QTNTssXGA8DMyrBXwM3
         xLVCMn/8FtqsjRcsttx9YexFXFQRtGksJv/m//FezrSoMl1Nuc60z5XDVqoeXm4+9vGG
         Q7x1H1wPWMWhsFRwJ9hk2dxTjzWXzsZFftQ7EP+RtKG7uYmdBBtD9grZtxAVsixsN+FJ
         VDIw8/CucQDeR8WmtBkmVTt4EVshCkEkM//rvTJOlUnVR6dxTV9c7woqOiXFSdqugEUQ
         YOXrjLEgRz73FvrymlcGPBKTkugkettBts+ds2WLP+8xz8dXKGvh9H7HBpa8uW6OuIVP
         bhmw==
X-Forwarded-Encrypted: i=1; AJvYcCV033BRMHhnYxj3FQakG0SIGM1F0s4vTyu4ePXSHJTYLzmxSuW5/bXnelizbWfWuKztYwf5P+VygcuW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/mMGo7BYN49mRa2Ij6q9eJcDX/K2c2ounOXvBhhpf7LoaTuNc
	qa1+ErBdzX9NrJzE1lb2WO0du0T3MchhiBnoluLRbzlfyKSuna5wJ7hIAGuJca5o
X-Gm-Gg: AY/fxX5jZ2K9SF1LD1xSCWrlXWMn3FIotkL898pABuO4o35WBT26sTkfH9nyY9Xshu8
	4XXZ0oZV2FxaFxa7i306+6Sw3tjzQTKRP0hAYV1EYV+G+TS71qx51/pK5q8momgv0KETD4H1TIQ
	AIu53WvfWtyhWEc0EKLh1kQbNsQ5GaS3G3I6WBkWgt4oHGntze3sRZDHQCliAvJlRX6vGn9lpTo
	xb3AXkZ6Ltj5reMXQyHMBXD3abeG7c6PxoNvdD/Ec2IMz6HRASm6VNwzu9Kp+dcYDk14V26IvDx
	es0cJbyY5BFgE4X35XKD4mpOMRwU/PxsETKOR3nUe2FeP3RHGw575CHPMkoJ4RwsY/oa13WkZUj
	M/5hrCs59JJRAXkVwrOal3UeVFWIRcYFUhi4lVgejG0ludTstWXhkIYys4EcGRxL2d0s6+AhkP2
	3SlI1SUlKdUPRx0zxdl6SiLzydmugHvGIY8bsqdFiU17i9YKn2u6e2T08DjC4=
X-Google-Smtp-Source: AGHT+IGMwSJJBoMr/RHYncZPIfp4t41PZJzEOtXErR6FalPmb6I/yAcGGZ6Rb0aUathqM+2dJQeTYQ==
X-Received: by 2002:a05:6102:32c5:b0:5df:bb10:631e with SMTP id ada2fe7eead31-5ecbb15711fmr967342137.41.1767798756345;
        Wed, 07 Jan 2026 07:12:36 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772e0ce8sm3184633137.12.2026.01.07.07.12.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 07:12:35 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5ed09471ab9so201777137.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:12:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVuJLBkHiZYYk20z2fu3YYwY9b1Gr+hI92j7ahiA+PdDgFRMPoI+Ty8czQtiro6BXV1pD6CKDQ+Kp0c@vger.kernel.org
X-Received: by 2002:a05:6102:560b:b0:5db:3b75:a2aa with SMTP id
 ada2fe7eead31-5ecb688e212mr1021167137.18.1767798755697; Wed, 07 Jan 2026
 07:12:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224165049.3384870-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224165049.3384870-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 16:12:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV9CnVBybm5ipadp5MeUZTfG0GrBXLNmV2A3sOq7s87VA@mail.gmail.com>
X-Gm-Features: AQt7F2oy55RsF88MDpvy-XJ8ZxqntDCnKvwZjjY1H7FzCraTsk4lAgUrlROdqFc
Message-ID: <CAMuHMdV9CnVBybm5ipadp5MeUZTfG0GrBXLNmV2A3sOq7s87VA@mail.gmail.com>
Subject: Re: [PATCH 2/4] clk: renesas: r9a09g077: Add CANFD clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Wed, 24 Dec 2025 at 17:51, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have a CANFD
> peripheral which has three input clocks PCLKM (peripheral clock),
> PCLKH (RAM clock) and PCLKCAN (CANFD clock).
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g077-cpg.c
> +++ b/drivers/clk/renesas/r9a09g077-cpg.c

> @@ -251,6 +261,7 @@ static const struct mssr_mod_clk r9a09g077_mod_clks[] __initconst = {
>         DEF_MOD("adc1", 207, R9A09G077_CLK_PCLKH),
>         DEF_MOD("adc2", 225, R9A09G077_CLK_PCLKM),
>         DEF_MOD("tsu", 307, R9A09G077_CLK_PCLKL),
> +       DEF_MOD("canfd", 310, R9A09G077_CLK_PCLKM),

The documentation is a bit confusing (it states that PCLKCAN is the
peripheral module clock for CANFD), but after some more digging,
PCLKM seems to be correct here.

>         DEF_MOD("gmac0", 400, R9A09G077_CLK_PCLKM),
>         DEF_MOD("ethsw", 401, R9A09G077_CLK_PCLKM),
>         DEF_MOD("ethss", 403, R9A09G077_CLK_PCLKM),

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

