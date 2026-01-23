Return-Path: <devicetree+bounces-258997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNmsAW6Kc2l0xAAAu9opvQ
	(envelope-from <devicetree+bounces-258997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:49:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CB5773CC
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 140483006FCA
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996C02EA48F;
	Fri, 23 Jan 2026 14:49:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f66.google.com (mail-oa1-f66.google.com [209.85.160.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302ED27FD51
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 14:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769179754; cv=none; b=YCECWvrjOOcXn/vvtD8NbJWujfLDHev5X9Yt9C2rhlVsKTeXny4b6qLopt0oCqZnslYRz080EjRwfaicWW9dlA34o2LgAsrhzjSpUaIDe6as3qYFn+9x4h6PEzdpJgCvA+1ak+WdPlRGtZoKhvCGTzzWJXcj9CNHtbEgfBbDrIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769179754; c=relaxed/simple;
	bh=Wnzral5cDoYZxbt4300gIY+fWD5kwAwcN6sy8j1a/Yc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GVBlgka0ubX4UgYMYqv3jNuTksgS694gtBEI3dK8gP21JRpyJ0x6JQ0e4jnnjFU4/wniwaJ+Bg2piunGXYn/kWeH7b0sNUTZPHTnJX09Ku5haF09ZohHVUGpmFxq99jGT9sGxAu8WabYX7kilTEpSqpj/Cu80VftxkLQbpwXoog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f66.google.com with SMTP id 586e51a60fabf-4042905015cso1552378fac.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:49:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769179752; x=1769784552;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HrLyFLOgIReHJ7nKkJOEOCPW8EUbvL8/pGt99hnxu78=;
        b=ob03NpqZtXdP26T9MybiVez1ng4rHyMN6Mk4haobudLHlUeq2u6SipuC4rYfgaNW8L
         N/BFhyN50ku/OUIj1SqFo6NbhV2b3IEnW1kA1k34akLdhnvukh06XbHJcgQqVrrURqIW
         sjfk52cm+Fd+tpOSb0/ONUXgTREC4ZksMShUOdMghuX0PHFTHzOzJ7dmMU0235C5LDjE
         lwsetwViKf0xnfevZVWmItPvIpdh57sLJzgwOxWmnArdNWUpEOjpV7x2cYDwpJ9WneUY
         17T0h/CEo50zHG9uu7di/LjbPHlmt+5bJHgwf3jp7tfOxNQdStiFqr/Tz32FHQtoCwfR
         Hyog==
X-Forwarded-Encrypted: i=1; AJvYcCW1AmD238zrfj9ZYhQs/QOmTDEuBAgosKGutFP/aY1Rn259TaXjMpyvIcya4o45EeBRCYF/A3b0RtAN@vger.kernel.org
X-Gm-Message-State: AOJu0YysWlh5BHL3SDQgBoe70uLCog4CHEEpYb8k7CXQC41O515JyXH0
	rlBUbwf6Re8OnnhBByU4nMQQ/s4qOPkMRqQAb1ucneZVyxND/rDeDj2nCyEYzVvlu18=
X-Gm-Gg: AZuq6aJ3FVzYROMPEzqWHqise8oedqCyslAjxMVZKt6YwZGWtfuwO0+yeaPGGpz9/t7
	yBXqqaqj2hmm8t/QehJiJvr9pl/yHjSbfUjRfB+e5r/bGIQJanGJRfYQvxt/rQ2jEVN23rFZgwf
	qW6yM161AcyQJEooQYpPEj/DKUJvfLnL6v44Pv5vOFzdhABtuNy8NBTqeKMg6oFvwgDjMmfEvwU
	/98iSYHc+h3/CWsdirf1RtezXrkyDkEInBMvmuHVxho74TLTv42SdpxKFO5japqBFIX29UwDXva
	J6qUezGEki36o4DHrjyXdmKZan3JjJ7jGp707nB66FaLP0c6DN5YEHbwOI/+WJ+FNFx2mxVRsk0
	dPGUHGu8upx4eYUh/sLb6Y6sVyqViNlikX3bbETyXvp+V5JJfXLsYe0dSGoFUij3JrXj2EdxvRH
	xNVr9fzQyi2U1zbgWOzKjf+BSIo4ml4YZvaMT0tq7zMKDfYYT5
X-Received: by 2002:a05:6870:e08b:b0:2d5:ba2d:80df with SMTP id 586e51a60fabf-408ab50009dmr1752308fac.8.1769179751973;
        Fri, 23 Jan 2026 06:49:11 -0800 (PST)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com. [209.85.160.49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-408afba7305sm1602710fac.11.2026.01.23.06.49.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 06:49:11 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-4042905015cso1552374fac.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:49:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV1yL7CxZcHRf4QI9QqvhLS1XoYhC5Tf2L2VsmD7VZUxCCmU9sEanOYJItIpGxuSk9XYbrps8zK88hZ@vger.kernel.org
X-Received: by 2002:a05:6102:3ec1:b0:5df:c228:288d with SMTP id
 ada2fe7eead31-5f54badca71mr922168137.8.1769179338018; Fri, 23 Jan 2026
 06:42:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123140031.94752-1-john.madieu.xa@bp.renesas.com> <20260123140031.94752-4-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260123140031.94752-4-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 15:42:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWV1zUaHTfToV-KcK+7Gtr6pG1f547-wwuFxm8rqicSeQ@mail.gmail.com>
X-Gm-Features: AZwV_QhVxxcKWK1L1APmdxo8PbYPyqK8ra6u83gDCmRGJACGU8TN-Ywh_mSZ5zc
Message-ID: <CAMuHMdWV1zUaHTfToV-KcK+7Gtr6pG1f547-wwuFxm8rqicSeQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/15] clk: renesas: rzv2h-cpg: Add support for
 init_{off|asserted} clocks/resets
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258997-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A5CB5773CC
X-Rspamd-Action: no action

Hi John,

On Fri, 23 Jan 2026 at 15:01, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Some peripherals may be left enabled by the bootloader but should be
> explicitly disabled by the kernel to ensure a known initial state.
> This is particularly important for PCIe which requires proper
> initialization sequencing.
>
> Add new macros DEF_MOD_INIT_OFF() and DEF_RST_INIT_ASSERTED() to declare
> module clocks that should be turned off and resets that should be
> asserted during CPG probe if found in the opposite state.
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>
> Changes:
>
> v2:
>  - Added reset-specific assert on probe
>  - Removed Rb tag from Geert due to previous point

Thanks for the update!

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c
> @@ -1337,6 +1337,15 @@ rzv2h_cpg_register_mod_clk(const struct rzv2h_mod_clk *mod,
>                 spin_unlock_irqrestore(&priv->rmw_lock, flags);
>         }
>
> +       /*
> +        * Turn off clocks marked with init_off flag if they were left
> +        * enabled by the bootloader. This ensures a known initial state.
> +        */
> +       if (mod->init_off && rzv2h_mod_clock_is_enabled(&clock->hw)) {
> +               dev_dbg(dev, "Disabling clock %s (init_off)\n", mod->name);

rzv2h_mod_clock_endisable() already prints a debug message.

> +               rzv2h_mod_clock_endisable(&clock->hw, false);
> +       }
> +
>         return;
>
>  fail:
> @@ -1585,7 +1594,7 @@ static int __init rzv2h_cpg_probe(struct platform_device *pdev)
>         struct rzv2h_cpg_priv *priv;
>         unsigned int nclks, i;
>         struct clk **clks;
> -       int error;
> +       int error, ret;
>
>         info = of_device_get_match_data(dev);
>
> @@ -1635,6 +1644,22 @@ static int __init rzv2h_cpg_probe(struct platform_device *pdev)
>         for (i = 0; i < info->num_mod_clks; i++)
>                 rzv2h_cpg_register_mod_clk(&info->mod_clks[i], priv);
>
> +       /*
> +        * Assert resets marked with init_asserted flag if they were left
> +        * deasserted by the bootloader. This ensures a known initial state.
> +        */
> +       for (i = 0; i < info->num_resets; i++) {
> +               if (!info->resets[i].init_asserted)
> +                       continue;
> +
> +               /* Check if reset is currently deasserted (status == 0) */
> +               ret = rzv2h_cpg_status(&priv->rcdev, i);
> +               if (ret == 0) {
> +                       dev_dbg(dev, "Asserting reset %u (init_asserted)\n", i);

rzv2h_cpg_assert() (actually __rzv2h_cpg_assert()) already prints
a debug message.  However, it uses dev_dbg(rcdev->dev, ...), which
I believe will crash in set_dev_info() as the rcdev is not initialized
yet at this point?  I think using priv->dev instead should work.

> +                       rzv2h_cpg_assert(&priv->rcdev, i);
> +               }
> +       }
> +
>         error = of_clk_add_provider(np, rzv2h_cpg_clk_src_twocell_get, priv);
>         if (error)
>                 return error;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

