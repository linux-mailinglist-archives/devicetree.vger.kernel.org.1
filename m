Return-Path: <devicetree+bounces-229301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB57BF5C93
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 12:32:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C8F2235256F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7336C2F0C69;
	Tue, 21 Oct 2025 10:32:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2452EBBAF
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 10:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761042724; cv=none; b=pHn7XW55AnZXZb3oC3SkWaD2SYmBXSLI/du/PaJX5epNgsXVgsZydTKvU7X+5KyzGqsVfiwmrFxsHp6ijEeig2W/tLHXJaK6cKtef5NLSdkXVVvKKX+GxjrGSPftNI9xjMjKhvtzF7VXGbZjEqhlLWJOYVAL9CfhmQUIlm2EDtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761042724; c=relaxed/simple;
	bh=va4WxH64kPG8XCl6w3KCXlFAiPzGBJtiTtCajxRETjY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DUICNvMzzXnL9whSRng7T00qo4zhydX3KBu4Pg2tVqa5ckZ8q8soY7Ld3j/vBKc4RWz7TuWwvlheqgob/m8TMSz+T4683qq8hd7OH5s/xgOIs3MM7r6wlkWStCcygGkZ7hlJtm87CBRgPjTILLgJgpJiYv9o2VI80j92OIsRoik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-816ac9f9507so893996085a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761042721; x=1761647521;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tDNH9pDF9LBAisWYpnrCUtwA+9hrIVu2UeAytlJC/r0=;
        b=rZT0n/SjKQO9U09LMPm2J+ge3rQs6JFNKzTyd0Vw3A1mqTj0aVa91P+PbuJTxfrBSh
         WQM1hwYTSgTJumtvgcO2Lx8e8XnRD2iwXBggSjMA9R2+5r7n2dEWp5WvCfRvDiSIN9Ym
         14rJbUKb5l1DofT+A5nPdzDHwTQnYtSAusUw3V0Sc3ZbysYInL/b/TlcMG+23zvkFKZG
         MyLkxJHhDOFODIkfy4oC6JTHM5eG3Jy/iTjbH6J87s9R7PPkMgyu3FYHDs26WhDf9Lac
         5dWBtRFaeHGXCqzPtYjZYloFZ8JbowUlThF+hijwjPJXIZ8ZH089uZHcDO23Ii+wwVuo
         ZY5A==
X-Forwarded-Encrypted: i=1; AJvYcCWMunIJiu1jDjprwnRRP8KlIn3NxCHGqcv94KkP+o1pwwrzGMVRrTrYSaZ/AocTBK6fD3gCPXfjlPa+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc7j62fhCPnYbYprtWeWcQ3bn7Hwf9jlXm5QRVYPy7f/NOy7l5
	cfh8E4oxUXfKfX2wp7HxnSVVpnB5N7T/u+QKZJfc0cjRmE441oZRG6erfAmroHnU
X-Gm-Gg: ASbGncv6/PoaHKB3BdBO6mVBctj9XwHUf9ejXsxAvk8MijROFvb6p/OUbsfll7Kxq4U
	pR9ulZiOYNRfLQtRa1w0yImPBcH+9xci6dppNhgnmHKqkxROy00U571oUQ8JVD9w5H/s2V6mbAU
	uACS5YCFxxgRh/UhQiWYKLH9w7nHmu4/fJ52llzi8mffCMi/QYfK5oloJZUXDqqDNO9zkSTSCVW
	o2zAzxtRde6La6a305Tu0uHaG6xHpbRNWZYrq8d4KluCBoxG1XGcKa7WrTcsDzawG4qqOtgSC1r
	ueYPX6fHmKm2lfvE8fWn8teYwxDlz+ARJMcOijJq7khWq+ZUE0k0CVx0GwDri2NEDDuDp5U85mH
	0YIISGEFjRpyGkkM7Xr/9pJbZpzD3K0Z/rSmTj0gJ5PPwMoR8JhNBcoX6LFJD07XUMwLukw9IqM
	E8mH6NhImg1pWB51v6USb72Lg+n3qRBjpc560qwowmKg==
X-Google-Smtp-Source: AGHT+IEd8R16U8wBljP4bxJk2p7YJmFPN2rGWSck+uM0cCLN1168WUW3ymYJn2hKQhQujDy3w1rktg==
X-Received: by 2002:a05:622a:1ba1:b0:4df:3139:d204 with SMTP id d75a77b69052e-4e89ce17c5amr171224841cf.10.1761042721500;
        Tue, 21 Oct 2025 03:32:01 -0700 (PDT)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com. [209.85.222.175])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e8ab0c78bfsm71961061cf.19.2025.10.21.03.32.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 03:32:01 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-893c373500cso286496585a.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:32:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUrTUX86rvi7vlLO1MNg7SkQaZXX1sbmf0oR0+Bdr26vQbY2i5gT8Dln/8vrVNypf0cPFsssB297Ww3@vger.kernel.org
X-Received: by 2002:a05:6102:e08:b0:529:7c2f:ceb5 with SMTP id
 ada2fe7eead31-5d7dd5035afmr5261434137.1.1761042379969; Tue, 21 Oct 2025
 03:26:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 12:26:08 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW1B7Yk1hUU9MSJsiL8wSmjAUGN7Qd_wgBHv8Ct=-wi4Q@mail.gmail.com>
X-Gm-Features: AS18NWA5TDVRnTdlKeYEusciZZnf69CtVCQ6CEB6928Ztx_Tex5oqUI1hZkbQkE
Message-ID: <CAMuHMdW1B7Yk1hUU9MSJsiL8wSmjAUGN7Qd_wgBHv8Ct=-wi4Q@mail.gmail.com>
Subject: Re: [PATCH v11 0/7] Add support for DU/DSI clocks and DSI driver
 support for the Renesas RZ/V2H(P) SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar et al,

On Wed, 15 Oct 2025 at 21:26, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> This patch series adds DU/DSI clocks and provides support for the
> MIPI DSI interface on the RZ/V2H(P) SoC.
>
> v10->v11:
> - Split CPG_PLL_CLK1_K/M/PDIV macro change into separate patch
> - Updated rzv2h_cpg_plldsi_div_determine_rate()
>   while iterating over the divider table
> - Added Acked-by tag from Tomi for patch 2/7 and 3/7
> - Added Reviewed-by tag from Geert for patch 2/7 and 3/7

I think this series is ready for merging.

> Lad Prabhakar (7):
>   clk: renesas: rzv2h-cpg: Add instance field to struct pll
>   clk: renesas: rzv2h-cpg: Use GENMASK for PLL fields
>   clk: renesas: rzv2h-cpg: Add support for DSI clocks
>   clk: renesas: r9a09g057: Add clock and reset entries for DSI and LCDC
>   dt-bindings: display: bridge: renesas,dsi: Document RZ/V2H(P) and
>     RZ/V2N
>   drm: renesas: rz-du: mipi_dsi: Add LPCLK clock support
>   drm: renesas: rz-du: mipi_dsi: Add support for RZ/V2H(P) SoC

As this touches both clk and drm, let's discuss the merge strategy.
My proposal:
  1. I queue patches 1-3 in an immutable branch with a signed tag,
     to be used as a base for the remaining patches,
  2. I queue patch 4 on top of 1 in renesas-clk for v6.19,
  3. The DRM people queue patches 5-7 on top of 1.

Does that sound fine for you?
Thanks!

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

