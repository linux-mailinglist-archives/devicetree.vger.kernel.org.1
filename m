Return-Path: <devicetree+bounces-248791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B821CD5B40
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D437306A52C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9D2314A94;
	Mon, 22 Dec 2025 10:59:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F2231354F
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766401199; cv=none; b=k/tXpfwZfRB9LMtds80iWAuLbRcsOR6+h81R540s+2gg7h5CKSZveTg9imEQPzLM77jdl/wWsuVWRuGr2wqxsSpd+K4VJ3SVms6qL9NDNoAtTH6IV1RdO8yrpWmZgtdt2wSvhcHwLsD5qoEBsj7VPdkhZTmh1GwDdwo2CayRfZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766401199; c=relaxed/simple;
	bh=hQz8inePYy4z7kE2ZTh8btcX7ZL/LHM5S3zx3idHlV0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vAVKJlwwJ8SLjo7bS01+dVn9WvRD4+yDh5kAhjjZM4L+x0jf9RbCQxD18bIKmgHKeJrt99TBcA4c50b3oOEe+03VxJsQDmGd3g2rDNhNF/UEa78IONMp/bX/wEQxlgYvcI9TyQzwNx3r3CwRhtgSFXIPKTiIZgsCWQ6ZSxg2/xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-93f63c8592cso3742129241.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:59:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401197; x=1767005997;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVlS5J1HzuVScBDeCBX0VxoypelfY5sXHRtDOTQInFQ=;
        b=LDqeHZ7EwnnSXD0Xaz1eDw2tCZodx8S74p3f1CW/OWT31oH2V+cailTtxS66BloWUN
         8AAnRLxw8V4PSwSzbizWIbR3OPRqOed1rRUInNLjylmfybsKYAWoEdoOtWZXBRPF7zl8
         6YLTWwXk4+SzoreYrrAEDufj0/LflDRgO+ldFR35T6zH1g9Y3JXXm3U9TN4Qlxll14xy
         CTbi0Di8x+gqRmXY4KiBWsfQVyr4d62HG9F45mz1BMeBvceZm3PgKoLzSNixl4hBDxed
         9mu5o8otRe5XTw1uOjLzL047lurUwvpzN29vaDv41jgGySfUg0BBr1awnxYvHiIWk7hS
         rl9w==
X-Forwarded-Encrypted: i=1; AJvYcCVgn1MM8abOSvWLnin6S5b+3V6vpFYbkORde9gZj60FlWJlgCvSsWOhdR/596ovSmqmw2pLuz06xaga@vger.kernel.org
X-Gm-Message-State: AOJu0YySTfO+9bQubt5TYPhh6H3VTOPKUATImfSrbF/3kEowq8kKswcq
	vojgsK4/ZsDdzAhsca4OekR7a6VcVj86ws+0HVRqL2HICOos58NK4b8dz1KzArUN
X-Gm-Gg: AY/fxX5Bkv2ByRUEyhqDKKO1GnfC9gEHHUBGkMVmMXTDzVFTkKRdQJJY3VEHsYMgjMl
	/57yI/xM7bW/lqXpL32sIrtetu2zWqrmnXIacHZ+HCiYkqhd0tu6Atmkx6+mGb0VJ/AWT+8hq+b
	kEo1xvrbijXrcd5FOQExW8YqE7vVzK913XR70g+kpE9XLaBgMdn2+DpTBsBptLspwjjkhJe9lhT
	DykDh+jNh8CLKGJ7PSIywK1tXnW+mfNIPgpLw75wILir60/0ogPkZ6f68qfvSXPfboLTiz+Eglj
	tnUJsGhdpdxTMqA/6leto+ykAs+z74nZDOsftGBBFFd/WtiZgZGkSZjpVQmUQIydvOZ2f9eAHpl
	fqFHY+szweN2/DeJnnGfym5W3cks9Sz4yCgqDWaFSm8g0UlB3JAGzcuB6G/Dw/Bgb/xJeGewp/v
	Wf7uUSLIKLZK7da6vJcBKDL7Sna2xRs6Hk/Wy9WT0eCP/OhzKT7acnAXYhz6DzUoQ=
X-Google-Smtp-Source: AGHT+IEqokdXaxrP21QdzvkuoxAQ8gVmOrTY5A8ziK3y47DwTaRN5ST2o349LUjkhrw+x0gKHvc/kw==
X-Received: by 2002:a05:6102:3f8d:b0:5dd:b240:ca8 with SMTP id ada2fe7eead31-5eb1853d383mr2457087137.1.1766401196802;
        Mon, 22 Dec 2025 02:59:56 -0800 (PST)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1ac67e41sm3344259137.11.2025.12.22.02.59.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:59:55 -0800 (PST)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-55b4dafb425so3127815e0c.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:59:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWwH88QJ98oeDexCQOzbdCjVVFP/S5EFGHy9D8k7JqU8oa273/VTUHksFWteTST0otNAOQPHXWsE26N@vger.kernel.org
X-Received: by 2002:a05:6122:6790:b0:559:7faf:a276 with SMTP id
 71dfb90a1353d-5614f7ae2d0mr3069797e0c.7.1766401194470; Mon, 22 Dec 2025
 02:59:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 11:59:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVqSPQ_rCY1mPxyAw1=WwK2VX9bxMKQQuVEe75u5hTvsg@mail.gmail.com>
X-Gm-Features: AQt7F2qvtAFJTZWBdh_71wFZZJPHL2v6ti7TTVpa1qQd7XzzszUS-LtvxMifYms
Message-ID: <CAMuHMdVqSPQ_rCY1mPxyAw1=WwK2VX9bxMKQQuVEe75u5hTvsg@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

