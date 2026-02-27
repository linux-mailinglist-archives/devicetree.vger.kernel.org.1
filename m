Return-Path: <devicetree+bounces-269180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHzwJzp4oWnJtQQAu9opvQ
	(envelope-from <devicetree+bounces-269180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:55:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9271B6428
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8C99300D176
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F202F3806BB;
	Fri, 27 Feb 2026 10:55:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55A51F92E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189710; cv=none; b=DNA5kdxb9m0+9j1W7i1rWFgRy8zsjyzRx8oz6bc3iDxvYvlKZ5Wg8Xbh13NOtIACNdkxYAyUVkHnk2MB22Gx8Fe/CQvSbeQqUNtV8GGhEJrvsyWqtb7rYz14hAz7l9u+Crt9dVGAKmxy3MQrwmeYA5RQ7TOPYFMl53TcOFAkNik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189710; c=relaxed/simple;
	bh=2dyKtNyh+VYQgv3RdAGTDcERo7pDX5CfMVIb/NziIdw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VnrxZBmFu8OHiqW89hlPgnKKIloFBmIOcqOIacjxO9IICV8+mvjpi8XUZAypfiPN1aI2Pc64QWG4i5s99+7j8d6GBv+wBwyWUDM/zD7hOEmUA4rNqhQI0DgqEbo23bfohHd7foMtetodlDlnW9A5Cl2eZ74D3+pbvNt2D0pXv1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2adec255754so12756905ad.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:55:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772189709; x=1772794509;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FlwDAQHs4Ab188Hz8URDAmWORYubm2PaVsA0iFMwu0=;
        b=k67nyonntignkNA6EhHw1Co2/jNxbrNRrdWI91Bwkkuq4AhSGftXQieuiYav8m9XCn
         ymm8993EsSRWGesC2PWxlIlWUdLUaUS1kDjT2r0IKiXMOC+3h5qEdxu6LH0sEER4JZX0
         Tmf5QTy5bo4WcxZ89SUb+PM/+/rsqvucGKZAZACVZhikqB+nIFXygZ20BoM+E2seueBU
         DZSIhfa5+Py//H0ZRQZVl3uh2dIRdJkX9WyaNgKHBVbqfrTggnc/FLgdilny83cfK54x
         YxZGIiysRs1GDmSmcAVb7smgmV/3dKguYNUvgArLK8K1r+9vc/x3UV44P43HYSK4B8oS
         PxzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIbFf0Jrf3CF6AQAN5PUZ4ORGOiYWa7bIq6+6VujiMpkgrL0bEjyG6hmAYMWjpBTnibNxeyudFd63X@vger.kernel.org
X-Gm-Message-State: AOJu0YwlPPR6NiD2unvyJzTCKZ01ucdJ7/nc4aDAakGSbqbGuBNwADMI
	EtK82Ui0/JKU3y4QDNqUarjkNwXPo9OlSXR4JIXooEFlkHByzRdK1c6MhWeP9kwC8uE=
X-Gm-Gg: ATEYQzyIfUQOX/mvfR5a90TTbq11Uh1fpxgXpVAS/1EffiX6VFE56WaF8Z+acH0n1zm
	MIWaHutkprclL2lhK+7rHaLAOldpSzFI8yXYURT2uDZec7H9RDi/POvoKcdD4OVe7DbucmNEpdC
	/wLqVoTNOy4rcT8VBMWYcUhVJfPt4R2gq8/JzFjOwTRK7IAYYastLmhKRP6HHAG0Ym8ETUmsdbF
	MjksOQJQduJ00DJJxNh7AoGbfyhuV81ODrmvdTlZslEMiQ1iYR5P0UApaoQGAg73qeKVWLGg7Sd
	zZ+rmpv21449hzA32v50KEJgX9jdr/PMgLaHkPdhx9rBdPLxoNFCpp+TtMLNrmEYYenCk9XvPjw
	05AuwDFfVpua3KoH2GKNYTIvLVcqeORJmihPl5vppxrvsH9bBfhUWX6NlV9rPihQ0poN2egFYyW
	2oTmIhkAElW4tVwSaMRGkmbckMNFxq4i/gPzHka83nXgK98p1ZvirYBRP8Nb0=
X-Received: by 2002:a17:902:db04:b0:29e:76b8:41e5 with SMTP id d9443c01a7336-2ae2e496c4dmr21795425ad.30.1772189709108;
        Fri, 27 Feb 2026 02:55:09 -0800 (PST)
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com. [74.125.82.41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b1035sm76455105ad.7.2026.02.27.02.55.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 02:55:08 -0800 (PST)
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-12732e6a123so1824022c88.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:55:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4G9WDho5TIaEo0Boz3JH98oCPv7c42lAwrq3Ek3kAYBRrH87Xkrnek8kz0NDaWbNur557dB0ezauD@vger.kernel.org
X-Received: by 2002:a05:6102:3583:b0:5f9:3a74:e17b with SMTP id
 ada2fe7eead31-5ff3232afd6mr1008069137.13.1772189289126; Fri, 27 Feb 2026
 02:48:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770996493.git.tommaso.merciai.xr@bp.renesas.com> <53c8d9e7fde7b176e05503a72af81e74c7a8a1c1.1770996493.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <53c8d9e7fde7b176e05503a72af81e74c7a8a1c1.1770996493.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Feb 2026 11:47:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVAf=GyDR95BFD0Q3Wbjo5n5vnqSsfue=7fRWxs6=Hdgg@mail.gmail.com>
X-Gm-Features: AaiRm51h4Q-XTgbNeUvH0Ox5Heqc-6O0OJ_Dv-XNFtKtSDZR5vc0E3M-GeWzDIs
Message-ID: <CAMuHMdVAf=GyDR95BFD0Q3Wbjo5n5vnqSsfue=7fRWxs6=Hdgg@mail.gmail.com>
Subject: Re: [PATCH v5 01/20] clk: renesas: rzv2h: Add PLLDSI clk mux support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, laurent.pinchart@ideasonboard.com, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ideasonboard.com,vger.kernel.org,bp.renesas.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,glider.be,baylibre.com,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-269180-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,init.name:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1B9271B6428
X-Rspamd-Action: no action

Hi Tommaso,

On Fri, 13 Feb 2026 at 17:28, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add PLLDSI clk mux support to select PLLDSI clock from different clock
> sources.
>
> Introduce the DEF_PLLDSI_SMUX() macro to define these muxes and register
> them in the clock driver.
>
> Extend the determine_rate callback to calculate and propagate PLL
> parameters via rzv2h_get_pll_dtable_pars() when LVDS output is selected,
> using a new helper function rzv2h_cpg_plldsi_smux_lvds_determine_rate().
>
> The CLK_SMUX2_DSI{0,1}_CLK clock multiplexers select between two paths
> with different duty cycles:
>
> - CDIV7_DSIx_CLK (LVDS path, parent index 0): asymmetric H/L=4/3 duty (4/7)
> - CSDIV_DSIx (DSI/RGB path, parent index 1): symmetric 50% duty (1/2)
>
> Implement rzv2h_cpg_plldsi_smux_{get,set}_duty_cycle clock operations to
> allow the DRM driver to query and configure the appropriate clock path
> based on the required output duty cycle.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c

> +static struct clk * __init
> +rzv2h_cpg_plldsi_smux_clk_register(const struct cpg_core_clk *core,
> +                                  struct rzv2h_cpg_priv *priv)
> +{
> +       struct rzv2h_plldsi_mux_clk *clk_hw_data;
> +       struct clk_init_data init;
> +       struct clk_hw *clk_hw;
> +       struct smuxed smux;
> +       u8 width, mask;
> +       int ret;
> +
> +       smux = core->cfg.smux;
> +       mask = smux.width;
> +       width = fls(mask) - ffs(mask) + 1;
> +
> +       if (width + smux.width > 16) {
> +               dev_err(priv->dev, "mux value exceeds LOWORD field\n");
> +               return ERR_PTR(-EINVAL);
> +       }

I am totally confused by this: smux.width is not a mask, but the size
of a register bitifield.
Perhaps:

    if (smux.shift + smux.width > 16) { ... }

?

> +
> +       clk_hw_data = devm_kzalloc(priv->dev, sizeof(*clk_hw_data), GFP_KERNEL);
> +       if (!clk_hw_data)
> +               return ERR_PTR(-ENOMEM);
> +
> +       clk_hw_data->priv = priv;
> +
> +       init.name = core->name;
> +       init.ops = &rzv2h_cpg_plldsi_smux_ops;
> +       init.flags = core->flag;
> +       init.parent_names = core->parent_names;
> +       init.num_parents = core->num_parents;
> +
> +       clk_hw_data->mux.reg = priv->base + smux.offset;
> +
> +       clk_hw_data->mux.shift = smux.shift;
> +       clk_hw_data->mux.mask = smux.width;

Again, smux.width is not a mask.
Perhaps GENMASK_U16(smux.shift - 1, 0)?

> +       clk_hw_data->mux.flags = core->mux_flags;
> +       clk_hw_data->mux.lock = &priv->rmw_lock;
> +
> +       clk_hw = &clk_hw_data->mux.hw;
> +       clk_hw->init = &init;
> +
> +       ret = devm_clk_hw_register(priv->dev, clk_hw);
> +       if (ret)
> +               return ERR_PTR(ret);
> +
> +       return clk_hw->clk;
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

