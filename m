Return-Path: <devicetree+bounces-236742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 989C5C46D62
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:19:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF293AA39B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCAD311944;
	Mon, 10 Nov 2025 13:18:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EBD30FC19
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780728; cv=none; b=n0fpf5TvCKKk/WaQMKtkkEfqnkJBVLRGX4z5sya4TU3Wqfpe/5hbuvfAD/LjV7Pg7desnRk2dyJOzjIKtup9kFF964fWmPidaoZMbDXndN58NZLOC7zYyIB1FJBpPEp7/38PaQD/J4Bd7WtjIThjL39l/9lqosOK0OMdQVcdjnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780728; c=relaxed/simple;
	bh=KadK8l0y+2kGqkttEVnDkIhHYVAwWa1JA/uwvYjgOO0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mLDH4+aR6Mqp+uoAcs/0Ait6j4m6iZQ1+kw5vJsB3oMTXACz37UP8b02zbI67i+9vJcz+2djKxR5UMjXGCNLf77m3rYKAevjAWmEQu9agqMRoWXlbqE1jJgUUeYeIGEPlLJfTcKuFbcJwZ21v/yOkOaTbktHpt4g7VgjF4lWpJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dbd150efe8so1256214137.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:18:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780725; x=1763385525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JtWC2opMXjpjODI3FtXSyNgnLs1SnEjuR36TMHiZyU=;
        b=rJIomKk9GEMGJm7lo7x5MJRiXy6JpD0ZiJq9rMvlZz+t5fui8+B3oU47G7cx5dv0RY
         /lJdbjc8dPUGLnubqJvsyx61PF1gtTY0r5sITbWjAOq8EVt2bTXYLBvZxD/qzeYrkIdT
         8zgbIHPPsTEG4jQLs94V+Cye9PkDyzb+qsKh+fHV1R94+NjL5qE3hGoz1txRU4pnT4pk
         pTKvGp+HSiraziOF1sbbSt3vVllAk5/FdywoBk/Gjr6Rz/25Mz82Rlaq8r4VHBBtSJXk
         Xy7z+kvwgZSQVsckrDvfN7M26+/wT1FNuJj866QZtECKfe4Rtf1dIPUhNBDkUZSO6jSh
         tCtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8LOHByS6vssoYQ4TncQs0qxK5NXu6m++hH+Er5AKJK2/CdiRmLtKdvvjleBjD/JiSxyxTeB4lOTHb@vger.kernel.org
X-Gm-Message-State: AOJu0YwgVhpEE+ba/BU8Da768Sx/BPVgAKW/XdufEBt7s4KDiq2ly/tx
	CTZ0G2dIU1f0lYMn5buGBEKOAomUXJDrEDx0c80BxwCWnHgod5qbSqP8gqAeKZiq
X-Gm-Gg: ASbGncv/EqYDsNcw9BBrNRU1CVixboLLJrtSBK/PT//VY54PyRZ6ARYtuwEVApY5lL+
	keaGifx5lriiynxK/uz/GYfQ196CL1RgGYkKH9squlIe9WtqnoqOueGDZjC/yZtZvgGlNadvq1V
	EgP3giswIEBgYevqEBsCJRtmS2pwAVTzRJhRihvRCaOiTSV2offcx2Xrcfxq76pzZ87eVGW1VZ0
	IAePYQAgOxouUKoy3nH7egDvNGMAyKMsPT93ypSaf+Swy38l3uJxU+6pOkpCjkDximOlMqiM53t
	sDs08Auw4xo0K59HqJgvQOa/xstM1yY4rBf/0xEPRL6LdVec5z7dvqeTdUXGVSYw5KvHFtM7LIB
	dKdgxnM/ZQ6fb7gPLSKvGgwpSOnUv15fy1gqTt7hY0mhnJNwZC9XSvPHFmM3ZfUfixYsniFJWPp
	KQzbglQ6E75GWxUqvU566KkWCue6oiEVbnft+qMQFN+9bzmd1K
X-Google-Smtp-Source: AGHT+IEHgXgZWuVP10PavxF9hV5UTvJuzdd65YG4pnZLC0xI4VUjVdsLJQLyuEcrOJOUPhqyAdnNLw==
X-Received: by 2002:a05:6102:370c:b0:5db:e0fe:985a with SMTP id ada2fe7eead31-5ddc481070dmr2532886137.32.1762780725398;
        Mon, 10 Nov 2025 05:18:45 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93708969a64sm5786972241.9.2025.11.10.05.18.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:18:44 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dbe6be1ac5so1299145137.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:18:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXu1+8gLS6YVr/kTmAWj1BA5dgisNljib0b3UwDPbJnM8IkUuto0lSrxLvBcdl01rj8CfOCZF1MgPrK@vger.kernel.org
X-Received: by 2002:a05:6102:3a0a:b0:5d7:de08:dcd6 with SMTP id
 ada2fe7eead31-5ddc467ebf4mr2259170137.2.1762780723317; Mon, 10 Nov 2025
 05:18:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028165127.991351-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028165127.991351-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028165127.991351-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 14:18:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUAqP7zdeGfvR_WaLDhvnDCR3WqNy_+qkh66=X7D7NTaA@mail.gmail.com>
X-Gm-Features: AWmQ_bnxVvrR1Phxc4_ghxbxu9QxxlwIdRwsEpstOMyyybXbOekzQi-mkOZ-Pbk
Message-ID: <CAMuHMdUAqP7zdeGfvR_WaLDhvnDCR3WqNy_+qkh66=X7D7NTaA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] clk: renesas: r9a09g077: Remove stray blank line
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Oct 2025 at 17:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Remove an unnecessary blank line at the end of
> r9a09g077_cpg_div_clk_register() to tidy up the code.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

