Return-Path: <devicetree+bounces-257315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UH9GEjOScGkaYgAAu9opvQ
	(envelope-from <devicetree+bounces-257315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:45:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1E453CB9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F04B448B080
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0891B40F8FA;
	Tue, 20 Jan 2026 11:03:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BF532939A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907016; cv=none; b=gJbIPyQ8jQssBi0S5bZLZaluqbSkqMZvKjuuBWPA/eSpq4uRn1XnSd+2WNKJ7lOw7IM2DzH+kubJhnQMQUdc+YeWjnjtZ4bAcPbjnechneYk1T6y2wcIJbnz2al3mT59bRLsU+nsOHIXQsXGVNgL4k+VDZVOu3GGPZNEpwEv0vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907016; c=relaxed/simple;
	bh=Yt74Pwf1lMdOPJDNa5I9rk37qMEnD4Vx9P4hWUTzXJI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GLDC3p9y7nlYEo3Fgcnb5LyEPrnvprZXMEGZ7/+sjSBHpcd85Mzu9HlsYkOIovYLofDS2Ieh2nAeHLj7VIKSuhySY8xTpZr4AtFqxxeNarAVtnreeLWrVKiq9EJBrzaOHZfTbk0+C16K7fxOZYoix+LbTv9rpVWmfPSLBgL0JlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-563497c549cso3260478e0c.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:03:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907014; x=1769511814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mc4ovVXcdd2t1CG9+kKl14hd1FxE21SIum3OHqj6bo8=;
        b=bnVV8Nggl0yJGlAhinQi62awZJs9K8l9pYsnJqGXwhVwlYrl9Q2Vlmw0Fclg+A9By4
         YbNAk4MdKh69B6FShzFYzciyIQi7qsFokSOiK7kGtnFRu2nBMZni5d7zB9GZvWdnl5tX
         eI0eqfssge+QvhgRKevzBlcIHOankNz1+jEIYdNFtqc0SIcIqjO4BqJXJvvo6fJ8REWi
         PcoT0ynHpi1UnRA0ezVocDhANT6TxK9XAszMR7Y+G+DJ+F8T4CldPzqcRsmOcOhO+U9F
         47CtU27Mfc8CzgmKCofdkepkiLLq3hnTl6Suqxd1ACSUVhuqx5WZVjdeyxLYpcdjz9L0
         qBYg==
X-Forwarded-Encrypted: i=1; AJvYcCUN9QnPiwb6AbLWCCq9EVdVtQs9vsM3OM9NuZBRPteOVzZLVoPiUTo6WfWmbccMb3Jl3eeHTvNSJL/S@vger.kernel.org
X-Gm-Message-State: AOJu0YzySAnyKElJtDIfbQnEbs9K2sqREFaaLk6G1UPvoeDNp6iEoxDW
	GDOhOSrBCPQk59WRWV0I9j+2sB/NhItk5yQueO9tfDKiEXLzPJ4T5zmjNKsL8UuL
X-Gm-Gg: AZuq6aKjUu4MbxkStju4OUxfYGIMmGrNmC6snR8Xy5jAKjy5WGZP44whAhe61Xh1sBz
	WAF8hfF4nQSqoRXGsu4dUp88g1Q9TJ4p0CVW8MBm/heZghg6zpflo4yELZXGw2GimAkOiSKxQIz
	no3UVVem0qAU5Ibm7Ve2syt6QG+FSdJKKEjVjcy6OzA+VhIRPa4aUtNKLUWgL8+1nJ7Qj9HDmJi
	54bamuT7KbwkifUvA0EgGJZjFn4xAH82XrYxg1SX3zkY9F2n56rCbXJQ1VmMs1zJEoBOwuiwrhX
	QKjhV5CCwdO+BcAaLeCZqdYoc8lpuSFSP/l00WDYdEeoZ9KXbEICQFsA24bLvZdX2pgD3pvdCAy
	sbfwCQFCycdKY1n+KknXmjgaLGNEF21QYo2tOW1tVYpzJpQdjXAlDYxkYON/1v9j4cF+tpDyhD8
	aUFkc8RtCFz9D3o4dsj/w+LkV7Wiby5IpoH6sm6yboQre6hMWev0diuWTvcP4=
X-Received: by 2002:a05:6122:251e:b0:55b:305b:51b4 with SMTP id 71dfb90a1353d-565de45ea7cmr407325e0c.17.1768907013939;
        Tue, 20 Jan 2026 03:03:33 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-947d03c29d7sm4099987241.2.2026.01.20.03.03.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 03:03:33 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-94124140e02so3344028241.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:03:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX+OjNFEMCowQ3dQJr2BbnVZ5kJdCh/lPcZTAUvHcalljiQ2YPSsnOqrWzg80qAsFbkcCAQhyor1BsS@vger.kernel.org
X-Received: by 2002:a05:6102:390b:b0:5ef:a59e:617a with SMTP id
 ada2fe7eead31-5f50a95f019mr413993137.21.1768907013323; Tue, 20 Jan 2026
 03:03:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com> <20260114153337.46765-5-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260114153337.46765-5-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 12:03:21 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXKvfRr2us9YhXh5a_qtZcv8wCvz_EnVa4PEANocg_0_Q@mail.gmail.com>
X-Gm-Features: AZwV_QgrKR7tnicz6yGCyKjhkngXRza_8zoEMe8PqpfHwLCDwwFyDmgdfB6vgIY
Message-ID: <CAMuHMdXKvfRr2us9YhXh5a_qtZcv8wCvz_EnVa4PEANocg_0_Q@mail.gmail.com>
Subject: Re: [PATCH 04/16] clk: renesas: r9a09g047: Add PCIe clocks and reset
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.24 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257315-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: DE1E453CB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John,

On Wed, 14 Jan 2026 at 16:36, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Add necessary clocks and reset entries for the PCIe controller
>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g047-cpg.c
> +++ b/drivers/clk/renesas/r9a09g047-cpg.c
> @@ -438,6 +438,10 @@ static const struct rzv2h_mod_clk r9a09g047_mod_clks[] __initconst = {
>                                                 BUS_MSTOP(3, BIT(4))),
>         DEF_MOD("tsu_1_pclk",                   CLK_QEXTAL, 16, 10, 8, 10,
>                                                 BUS_MSTOP(2, BIT(15))),
> +       DEF_MOD_INIT_OFF("pcie_aclk",           CLK_PLLDTY_ACPU_DIV2, 12, 4, 6, 4,

"pcie_0_aclk", to match the documentation.

> +                                               BUS_MSTOP(1, BIT(15))),
> +       DEF_MOD_INIT_OFF("pcie_clk_pmu",        CLK_PLLDTY_ACPU_DIV2, 12, 5, 6, 5,

"pcie_0_clk_pmu"

> +                                               BUS_MSTOP(1, BIT(15))),

Do you need pcie_refclk_in and pcie_coreclkin?
Especially the latter seems to be document sparsely.

>  };
>
>  static const struct rzv2h_reset r9a09g047_resets[] __initconst = {
> @@ -503,6 +507,7 @@ static const struct rzv2h_reset r9a09g047_resets[] __initconst = {
>         DEF_RST(10, 15, 5, 0),          /* USB2_0_PRESETN */
>         DEF_RST(11, 0, 5, 1),           /* GBETH_0_ARESETN_I */
>         DEF_RST(11, 1, 5, 2),           /* GBETH_1_ARESETN_I */
> +       DEF_RST(11, 2, 5, 3),           /* PCIE_ARESETN */

PCIE_0_ARESETN

>         DEF_RST(12, 5, 5, 22),          /* CRU_0_PRESETN */
>         DEF_RST(12, 6, 5, 23),          /* CRU_0_ARESETN */
>         DEF_RST(12, 7, 5, 24),          /* CRU_0_S_RESETN */

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

