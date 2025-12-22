Return-Path: <devicetree+bounces-248797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08800CD5C77
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCD183034351
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A94C313297;
	Mon, 22 Dec 2025 11:07:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63A030149F
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766401678; cv=none; b=tJ7Vdjdz1o/m9UEJCTdE48NaXSxqw5jX1S4fGdPB6KKHu/XrmlSimBjLJ+TLJQiTQr+CIUixxcTwPJBFURS8Pg6Gm04bN+VR1QCIeNQu/QkxPx+84FHxCyA+8CiqW1+5/QNeiOhAmz2xl/D5AXUG3HOBUhdbO6+MNwtjkKLGuKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766401678; c=relaxed/simple;
	bh=Sa6vRFp+J8CzdQeFDX4yWNCdRt01fLLpAObxTP7lVIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Iz3agXGy+d6Gf3TtCnOsa7rk4Xn66yAJmunHNRhsJNrOht/bI178LAo02roW0PBKpflOQIg+siAP5V3sUuDJy0k5tBkWmRTPEl5Ysi7kAjdFTpiggmyu3C909KD0evMXFQoG4Z28d/T4QE3T5frkPggmMRhm9WtitARPwzpqQ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c7bfba3996so2255330a34.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:07:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401675; x=1767006475;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Er9fT5sSTO9v6Ol7FhPUI+D4OHHff+0Re947MEjlztA=;
        b=oknR3dcposHtv6+E6kczCn5JqSRW5+YSK7FpSd3IXQdXfbYlFqhvnCfj38FSBCa1gd
         p/BXGpGaD55aQ1r7Z1Z8dqGxggrmQ4yrivKlcnxzjDo7A/kO2AxZmqdIGIMZrVMw/X9X
         6edh7HRR4tQhrELXwL8T/X6+8CY21Zf7Ty93nIvszKICQP0AjIu5mCZ/QtuC1qkKpGM5
         2VB2P9mZUU4aP8xMWslAdUBwz6sNbuCziRSBd9PgL11sHFi4oqTUIBTrOti7maPGpqD2
         M3QPRIN5RzHBHvaZNL1o4qOcQ1nx5xWfVmIdpssduvjVLU2Bfqtq7Gt43WJUp7ZN7VSy
         tmDw==
X-Forwarded-Encrypted: i=1; AJvYcCWBbR5m8gM9NavoXrhnYnKiUEbKPiWJP/1lxzDnMWV/QrRyiGPXJ3z3AA7bkfKfkZOl/acoeD5/2A1w@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfb2RxHPokcrRMJjg0AhyxbWt2ka+a2vIMjAVi6sL/OemfpQGD
	1pfETsTh15i0OjhMuNdpAnUh35tA2OmgfvYviEBqDv0m/+flx5bdgasJTMtMMpQL
X-Gm-Gg: AY/fxX7o768/3RLk0K4c80xqaL1cFUfvV9dl4PauGjgJ9BnJksMvHvbDzSjB1z5HKdU
	UlgypQuCjnyNFSmC/tdh2Pwh2gO1lu+jmCRPDgc9/K5P/dEcousUSljSPNIAPppiJwCdQsy90bS
	wKmENfPTDn/rmcfYM0dC0wfk3FSUA31hcaC7E893SSMiBCBe6/WQPRJ9IdiccDBD8BSe0mVSVLP
	Zl2GmxktmTjabbuyMlDJZ81BKbfy3zt6WIdk+X1BevgF8L9W0npKOAe1tqz/GEZ36pxzXTucZWY
	EfgPI43tWazkByso8qIATHo94cVINmTq4AZKooE776IJvwoKSPV6/2TKifpK/rn4ZabOJfNMJN8
	mtSxaJFbECsqcuyZH1QJWAPcuN6tsu+cXFx2ESf2m3tr+AZ6b+LBBT/MnTUqXDGVAnrrrvXLrAq
	+p9EcnHHP1/6ZyuO/IfMA9RvwlG5kYzVeBH3DztVtLeDk0SEJD
X-Google-Smtp-Source: AGHT+IFxDVEK1xrLx6VQkBK/BgqE9P77c0n4G+dbdIUN6FxGlj3+xfTfxoKylDDEi8EgTsZvZ2dUFQ==
X-Received: by 2002:a05:6830:254a:b0:7c5:411a:9204 with SMTP id 46e09a7af769-7cc66848f8cmr5664711a34.0.1766401675560;
        Mon, 22 Dec 2025 03:07:55 -0800 (PST)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com. [209.85.210.42])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667f9201sm7168436a34.26.2025.12.22.03.07.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:07:55 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c6dbdaced8so3017204a34.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:07:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX5w6aWXga19BGvKXXt+tXEllcdw8ZkIgs6UcJF33UghgcJEpqh5cxSCeNGJOEdEcvxvw6t2yuBr1Ge@vger.kernel.org
X-Received: by 2002:a05:6102:e0e:b0:5e5:5ed7:60ae with SMTP id
 ada2fe7eead31-5eb1a817635mr3544923137.31.1766401227460; Mon, 22 Dec 2025
 03:00:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 12:00:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXmKPe6AyfAeD9nObqVhofZ4a5559_=DbDZzJ57A7=k9g@mail.gmail.com>
X-Gm-Features: AQt7F2qYMU-2Y0vKWd5gUo3SltdOK-02OVX3vIl9B9fuc7xPsFnO8gx3yQGyGmE
Message-ID: <CAMuHMdXmKPe6AyfAeD9nObqVhofZ4a5559_=DbDZzJ57A7=k9g@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] phy: can-transceiver: drop temporary helper
 getting optional mux-state
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
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.
>
> Switch to the new devm_mux_state_get_optional helper.
>
> This change is only compile-tested.
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

