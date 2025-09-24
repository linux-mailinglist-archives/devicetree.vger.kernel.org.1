Return-Path: <devicetree+bounces-220750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 051C3B99FBE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4800B1B24B6E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EFBA2FD7D3;
	Wed, 24 Sep 2025 13:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843A42E543E
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719519; cv=none; b=iCrBB3QtHRs6tW9ni+tWe1TmmwGowAxs/f/VZqYZjPe8CqFXK4PG4zXTuqYVAymNdITxkvXI2yncA9nHzlDm52iQsEdnPGKmFiROcVPOyJrQphA9z8z1c/SOzUyByNxg1r1y1x4JT7VAwmX/zzxaYH1ulpVSUMbnXTxNfzv6SYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719519; c=relaxed/simple;
	bh=5CKhCzt8uwTRTXN1dt78wJGzG2xEgCNEZ1R79yBCn7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=efLspGQGQsdoSt0ZXsjfRY/C/9T7pMdA1+f7rUumkSvYU3Jc0jdzRqiNuQODeSmRhKrywL2vcYClhpDfh2BEivjMfIHKybMgrW7J7gazkm/wGjkbcIK/ieS2KUrNrPIXuONOGOQolw7pHnCigBrAV7iiIpjn8U1G00gua9d5DEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-78febbe521cso59697556d6.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758719516; x=1759324316;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dt3FE+JEfBgU4GvIduSmfD+mr673puEsHTiT0sBkYwI=;
        b=l+WwQN545jt4+S1z2wwJTqivGGDR44rdQl3uhllntjf2xbciC4m8EPzE8qrKmSviiY
         Bm7mH1Z4a/UMI1d1QC7Lw8xoj0om+C6V3ZmT2gjkOtbc6d+bYyZ6b/MXI9SX8J5GI7WH
         aH3l8PrgS+/wgHWtfBL2Q3Wn8/gPYk/C+uonTlTiaqOV/uNqvAaq9deFrJRJE1DqtSIC
         5smb36273bp5N+LTDwDqCSOUYvP3QA4P7UFijD+o2dfGCWQ2ULqPAc3AzjPmrG/ih8nb
         jP2PzIFVYmFFrfkONTRmzswQtnHULfwnqQMLzfpiMVfGo3cx+EF1Uv9hkSUjMhOvciHh
         EKxw==
X-Forwarded-Encrypted: i=1; AJvYcCVnJ7emGz5on696lpb7+47jLJARSD2l/LPKMxcIeUYw8FkQzMlI7MT/7t4HaXr8KoEHvRMhptD53Mj1@vger.kernel.org
X-Gm-Message-State: AOJu0YzQ9qTswREUOxhNXhmt0lZj9RJP5Cn0HtryaZASEwCpMiLgDZAS
	N8pkJMulM+XqgjmDjTkZCsZ0WS9eFSRXaD+x3VDfOxBL6cBYKTVYk4TVZbSnIch1
X-Gm-Gg: ASbGncvG1flxTM6+dEnU1e/H9Tn7HYkqlIvzfdbral3GTHvdjZUJZov4RcT402NOy7u
	HH9xcbq86KUcVHg0+ZnVjxkf70ZGkv7YYoZjbXZtoRUwUJ2AYpcjjTTGnJ2hjX/0U2+b00dsxPw
	a2/H9pT8ALyB8+46KPWaVhTpqEVUQyqKgu6FWQYa9JGgZDPLS1DVSYj+xPfzp1MBVqO8R+RkyjR
	mFWnldmu1hLXZoxshfukm/gviZhjZ2nS0KlMxUGYw381bRJrVUFMLXMpmn9vm2ECKIFAiyvZN1m
	YrjdVNPmVgPlOtxAKCbiZxRb+xXb8EclKzqORyLITZJJ061jIxYzb9UKMPOhN+XChx69E1ldX73
	NI12tl0m8oV4JunWP3WyRIgBPFXvO1ngEATS3sfUgO2XYUXFMswB2TjtmI4X1xmX9OnbJIcXear
	0=
X-Google-Smtp-Source: AGHT+IH8xxLvzPw8bL3WVqGCnlAjgthy3EUUldDLGDk3rxTLW51VwwqbdX9F9urTsO2VWwd7Qn5V2g==
X-Received: by 2002:a05:6214:21c1:b0:70d:bffa:21fe with SMTP id 6a1803df08f44-7e71133ef36mr66606756d6.32.1758719516169;
        Wed, 24 Sep 2025 06:11:56 -0700 (PDT)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com. [209.85.222.180])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793546dd581sm105078526d6.58.2025.09.24.06.11.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:11:55 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-84dcf6f28e0so235733985a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:11:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRQRuzxT+kmZEmUzm50MV1Kzei2cGuLHHABYZiJAtFzrIqzzL0QDj/qcoaS6so8/mt4JBDxQngO+HF@vger.kernel.org
X-Received: by 2002:a05:690e:2593:b0:5fc:53ab:a49c with SMTP id
 956f58d0204a3-636045f7a94mr3388326d50.11.1758719130471; Wed, 24 Sep 2025
 06:05:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903161718.180488-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20250903161718.180488-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250903161718.180488-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 15:05:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUacF5UfiLTXuWOXAZZvEJ-St5+awkWML_HDp9b38=sXw@mail.gmail.com>
X-Gm-Features: AS18NWC94EGYcxjMXs4Deenf7S5F9QjlUjLF0OPIzRnfMxCF0EhsIC5PeV3xDXg
Message-ID: <CAMuHMdUacF5UfiLTXuWOXAZZvEJ-St5+awkWML_HDp9b38=sXw@mail.gmail.com>
Subject: Re: [PATCH v8 2/6] clk: renesas: rzv2h-cpg: Add support for DSI clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Wed, 3 Sept 2025 at 18:17, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for PLLDSI and PLLDSI divider clocks.
>
> Introduce the `renesas-rzv2h-cpg-pll.h` header to centralize and share
> PLLDSI related data structures, limits, and algorithms between the
> RZ/V2H(P) CPG and DSI drivers.
>
> The DSI PLL is functionally similar to the CPG's PLLDSI, but has slightly
> different parameter limits and omits the programmable divider present in
> CPG. To ensure precise frequency calculations, especially for milliHz-level
> accuracy needed by the DSI driver, the shared algorithm allows both drivers
> to compute PLL parameters consistently using the same logic and input
> clock.
>
> Co-developed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c

> +static int rzv2h_cpg_plldsi_div_determine_rate(struct clk_hw *hw,
> +                                              struct clk_rate_request *req)
> +{
> +       struct rzv2h_plldsi_div_clk *dsi_div = to_plldsi_div_clk(hw);
> +       struct pll_clk *pll_clk = to_pll(clk_hw_get_parent(hw));
> +       struct rzv2h_cpg_priv *priv = dsi_div->priv;
> +       struct rzv2h_pll_div_pars *dsi_params;
> +       struct rzv2h_pll_dsi_info *dsi_info;
> +       u64 rate_millihz;
> +
> +       dsi_info = &priv->pll_dsi_info[pll_clk->pll.instance];
> +       dsi_params = &dsi_info->pll_dsi_parameters;
> +
> +       rate_millihz = mul_u32_u32(req->rate, MILLI);
> +       if (rate_millihz == dsi_params->div.error_millihz + dsi_params->div.freq_millihz)
> +               goto exit_determine_rate;
> +
> +       if (!rzv2h_get_pll_dtable_pars(dsi_info->pll_dsi_limits, dsi_params, dsi_div->dtable,
> +                                      rate_millihz)) {
> +               dev_err(priv->dev,
> +                       "failed to determine rate for req->rate: %lu\n",
> +                       req->rate);
> +               return -EINVAL;
> +       }
> +
> +exit_determine_rate:
> +       req->rate = DIV_ROUND_CLOSEST_ULL(dsi_params->div.freq_millihz, MILLI);
> +       req->best_parent_rate = req->rate * dsi_params->div.divider_value;
> +       dsi_info->req_pll_dsi_rate = req->best_parent_rate;
> +
> +       return 0;
> +};

Unneeded semicolon (there are three more below).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

