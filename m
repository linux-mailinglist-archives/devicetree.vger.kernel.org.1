Return-Path: <devicetree+bounces-252422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D08CFFC67
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 953E431A3C4D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE84334C08;
	Wed,  7 Jan 2026 15:21:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54B23396F0
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767799319; cv=none; b=ihoWaTxd3a1rJsC3aoIYXNrGFIPyTRicKT4dX4v8p2Rn3z2wcDH8r3kBxcdkPJAvpGxWLiCa/Z6JuK7P07wXXW523fXqNsbUJDAe1BskYX5gaAd3A7O+FrMk/eKE8ZkVI4/6xEjmc0BZkUt3dJGYV2AwraW2O7BYyIcgNGyaT1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767799319; c=relaxed/simple;
	bh=xirnzd+sOTLBfOoqrKyZ5orvmCZslNDx5L/n4t/ve2s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qXmxVe2Y073kQ2OO/tOdYTAhU/TWD9mzvCW4Ff3q07MfnaS4DsnJmAKfw+5LvSS4l7U32+AVVOoZqIy8dSSuhHQvPIAf/WlmzEMetkh2x0Tho3Sb4ddl8Wucng6S/4DkM8hn0PzoLObkn7XKm9Q37muMxTQtqIChwF0gamHbX9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ecddf73062so482462137.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:21:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767799307; x=1768404107;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGXfYeh3k2PdpEfY5u5umPkWwmBYjzfyvyHueENf/WA=;
        b=wLel5hXUZVElO03YoUzb+rGTKbF6yXU4XYW275kIaVKY0TH4/Xbm0P9NJRTXgzvY05
         DfH13Bl4kkxRZaDLA1x+Itj6oWuax2v1q3LGb9FecOEuyAoiRVwS5QAf/3Jwhr8uVmyb
         9RLuEAoC/R3Fvm/B4Cg1AomFz9Mxn8WDVJvxCXMjcTJyWBuKes7VpdtDLB3F/+vO9miB
         O1Ir03OhSMrHTFErV7W1RNM/K//nfEa8tOZY8Tl5jBkhBRDicTP99MQpbEJ/HFKt5puF
         T/BpBcMiEVCGWfkFrbM1y53UXJka6/hmkr4X/QRVc/lEvL+Qz4pfhSL9hFGeWGzVXyBZ
         7Tug==
X-Forwarded-Encrypted: i=1; AJvYcCWHBepVZ0Y6Op3ddYKFbbyohGFgGn9qOPYy9RforeLz5mh6C1kZDQs0bnlldND3/BRyLr/N2ocjBbdc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7Ldy2gr0v1KeeTEmxqS+AxOjqzOmJ4si0xW1sYpXN0KFCwChq
	cJPt8gcLtu2RJw+5f0HHaNyqJbXjw62CFNRQHLktdOxnPT4LtglWPbT8LNitT/ak
X-Gm-Gg: AY/fxX7KEk2A6IfmJHJCuMrHomwh2p6Y3Ad/VEY6PGsuZJPxsTW+Ei/DN359hH9V/09
	MAKccn2zP7qGvcgRzsU0+RcJE2czH5JcupXLxN56h8nmQUuJTnI0G6xS0PqPukDdfyE+/rAyk1v
	gSmYxloaRJ1IhQGrQDyunvvPJKV7/189F30ebaRlTVy+YYX0/4buTzf62OHh7k7et0KpOEshlqT
	nG2vmUSGdBbelbDXDeva5O0NQraDfjYs5HP9e5GLZqB3yco75eMWiN6YloF9eOk15W6GdfUkFuB
	YfjISNgsteJaRCD4vcPYnXJnbtwcKVC7rql/Ptt1kBLuHENXHuUIz6qxaCHiGgQadOg9RSclY82
	Yyfbcu4cqcsJXNszKaS6Hnxst00cjRRYx1Qs8dqBsRfNAIOcraElwrMr03lInAP4S+f6kqB8yjR
	RvnFaxUAgGl0hsU/zZXk//FCMNLg2yAj56Pc8opWEz4cO5Xb1F
X-Google-Smtp-Source: AGHT+IE+twxx5fGvrwuUmyFu+jBwPsXmIlHSakh9WzEFoATTovlRa7Phb6Sa3e40HFledY7qk1yiuA==
X-Received: by 2002:a05:6102:944:b0:5dd:37a3:c389 with SMTP id ada2fe7eead31-5ec75566566mr2627274137.2.1767799306934;
        Wed, 07 Jan 2026 07:21:46 -0800 (PST)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ad97esm3021628241.3.2026.01.07.07.21.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 07:21:46 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ecddf73062so482455137.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 07:21:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVcuFVOrDwHxbXpXauOtYrO+RKUlahXO6mYzjHv6rR+eyx675PcUOb9gAAhzbzVnybAJQKkDfuhWj9g@vger.kernel.org
X-Received: by 2002:a05:6102:f0a:b0:5db:cfff:fd66 with SMTP id
 ada2fe7eead31-5ec75774023mr2670446137.22.1767799305872; Wed, 07 Jan 2026
 07:21:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224165049.3384870-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224165049.3384870-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 7 Jan 2026 16:21:34 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWAbdVfTGtAdVCfq31yTNYVgmXoVB5JvPOHde-ZsVMBhw@mail.gmail.com>
X-Gm-Features: AQt7F2o6g6AUCQi8FFgmNntpDHUQy0QJrCdwxLZBZDunb38OI9ggwtqmRVYkm64
Message-ID: <CAMuHMdWAbdVfTGtAdVCfq31yTNYVgmXoVB5JvPOHde-ZsVMBhw@mail.gmail.com>
Subject: Re: [PATCH 3/4] clk: renesas: r9a09g057: Add entries for CANFD
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

