Return-Path: <devicetree+bounces-271588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOpPCJ+RqWmoAAEAu9opvQ
	(envelope-from <devicetree+bounces-271588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:22:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B611B2133AA
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 15:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 723423051DC1
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 14:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662D32517AA;
	Thu,  5 Mar 2026 14:21:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04D624886A
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 14:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772720507; cv=none; b=ErXYNlcZzue3xJQwKjs8zG5zD7gBcPDrXp5h75MDVeWfdGqf63h2Hr5Ju84zaJwA52TuxpfGNSsF9lfrLqnL/k+AgLn+WPtBNnyu6vI3hPdSPSGB5raAJJ6xRtZNFjm0rFFt6mAvqbKJupt46/PLnSbzrIDURP1viZfL0k8/KDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772720507; c=relaxed/simple;
	bh=rEhy/H/nCGCiHwzJthbPzEIukVehLVTNrC1dkGO/Qd8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fdPPdN2PNLMijVsvVCkBqciFZ9EBHHKI4Crw1LO2e778UryDHC37lgnHMi+V+sOltAHl9YpA9V7oB2EJIFPcSfA5cMrtAN/Efdxtgs1a1O/OACcMa8tZcDZy9vkocjDnPSHZQQVPS0gBnV4QLXu2lzotvpo3Zj/ckQnUMTXpA2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b904e1cd038so1087913766b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:21:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772720503; x=1773325303;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CXtAYRrzYSGErNFDdgbOo6Dg4VTIExI46uaNzGfcACQ=;
        b=RbgS1dvzfQVVA3dSJaivFDdz91rMVnHnOtcOqy5Zkyd0a9yX8HphZDIUnQWn2hT69r
         MQmwcgxbO8kxAlt3L0BWQDqkyVQTuadJbxS7bb3aCYu3CEVui/PUj6iug6dSa185vrf6
         qTKQqe/4WIJIQ+yLmZZZJUaOasm6aDJZFmFIDr31wcAKiLuG1BwNzI62XlUzjSnas6vN
         qyRG9EYV8bpwT9jeKT2xb7oVkMjGj2OCo0jj6MkREIGgaSvZJEwL38vtSW4NfXPqEl39
         pLw/ZTlJ4I9d+3Uc1Ia6Rp1OCMZwVbRSbe8VuuF/f4ruQ+C8zyE0N5SOmcoWzXF7SLOE
         DrHw==
X-Forwarded-Encrypted: i=1; AJvYcCX+m34wFzAb3K+N1QZrouVtGxtfvvLThP1mKWDySIvEzUZ68Vqv25Qt+VpKAMXg6sf94wxcsXoDOqMf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0OR0LNLx0oudsVdExG2uaXW/iB67Gxag1Kyc+lgDn54BzA/fe
	YWb6/a1XU2ASEXJwnKA8jaI3J3/QfFYZYmTZGuqW6LNAUEhRSXZjlSFMc1c3+XTcPxM=
X-Gm-Gg: ATEYQzwMRbYhdPYh4CEcsdIyZFUzyDMvUeoQ3ixV28Duy8R6Yy6N4sJdAqdbMBZpAYe
	89w/Reep+AlnSgVbvmVoB+89sDcVDxVzZbo2HhhJsgQp310Kht2wiYcY7xJGxY4Dx56wkDhHg21
	iw3+gkrxHuBhFO3XUN9lMqhUuHqsfRm/9oCKp+38xQ/3joSrdLxNYp1E3v3QH531fLrYoykRt7b
	RNNXF0ugNlzwVCnrV3iz+PW7EUQwhnaC2HWBbapyhSn6W5jHfJ96fQwQAIMh33bA1ntHfrtlXGV
	s1IjfbM5eOWgR7JEvqs4y2317bL1NIbFM+QWquKt3q3VVepwFywKwZCxOFCAwqhtQnol6u1nll1
	V56gTRC7OlzqzbEaX23DH0UYx21Gu/KEyAan9WkukHn4ht2nqjxeUayBCTJfvrQTrxP2HFZMBst
	53xO3JPWalq95JfiJACXNBD8WvuXVW9zenC18+e+oAIyZIb2MoOWG5dOpVRab5
X-Received: by 2002:a17:906:2081:b0:b94:354:3dac with SMTP id a640c23a62f3a-b940354449dmr127091366b.59.1772720502963;
        Thu, 05 Mar 2026 06:21:42 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9402a137c0sm135352166b.57.2026.03.05.06.21.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 06:21:41 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b9359c0ec47so880017766b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:21:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUjOaS32rY7GXFeeySGriUNQsa4my9wpNQpuPLQYXnEpfX2xjFq+VSuSoqGZwFAIi5xTeulc5GFkv4Y@vger.kernel.org
X-Received: by 2002:a17:906:7316:b0:b87:1fe6:f223 with SMTP id
 a640c23a62f3a-b93f10f8313mr358270066b.6.1772720500784; Thu, 05 Mar 2026
 06:21:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-6-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-6-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 15:21:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXPuBEODa0Uyhuv7u9ERY+YajsECTa0=XKY6WcE-VnaGA@mail.gmail.com>
X-Gm-Features: AaiRm51dLhVDp_IdfNbKoUzEcAGoO9N7tD3ybXTlfw77SuglDEgtVuQ3mKWaML4
Message-ID: <CAMuHMdXPuBEODa0Uyhuv7u9ERY+YajsECTa0=XKY6WcE-VnaGA@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] dt-bindings: clock: Document RZ/G3L SoC
To: Biju <biju.das.au@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: B611B2133AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,bp.renesas.com,vger.kernel.org,microchip.com];
	TAGGED_FROM(0.00)[bounces-271588-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.120];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Biju,

Thanks for your patch!

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document the device tree bindings for the Renesas RZ/G3L SoC Clock Pulse
> Generator (CPG). RZ/G3L CPG is similar to RZ/G2L CPG but has 5 clocks
> compared to 1 clock on other SoCs.
>
> Also define RZ/G3L (R9A08G046) Clock Pulse Generator Core Clock, module

Core Clocks, as listed in section 4.4.1 ("Block Diagram of the Clock System")

> clock outputs, as listed in section 4.4.2 ("Clock List r1.00") and add
> Reset definitions referring to registers CPG_RST_* in Section 4.4.3
> ("Register") of the RZ/G3L Hardware User's Manual (Rev.1.00 Oct, 2025).
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

> --- a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
> +++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
> @@ -28,19 +28,30 @@ properties:
>        - renesas,r9a07g044-cpg # RZ/G2{L,LC}
>        - renesas,r9a07g054-cpg # RZ/V2L
>        - renesas,r9a08g045-cpg # RZ/G3S
> +      - renesas,r9a08g046-cpg # RZ/G3L
>        - renesas,r9a09g011-cpg # RZ/V2M
>
>    reg:
>      maxItems: 1
>
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: Clock source to CPG can be either from external clock
> +                     input (EXCLK) or crystal oscillator (XIN/XOUT).
> +      - description: ETH0 TXC clock input
> +      - description: ETH0 RXC clock input
> +      - description: ETH1 TXC clock input
> +      - description: ETH1 RXC clock input
>
>    clock-names:
> -    description:
> -      Clock source to CPG can be either from external clock input (EXCLK) or
> -      crystal oscillator (XIN/XOUT).
> -    const: extal
> +    minItems: 1
> +    items:
> +      - const: extal
> +      - const: eth0_txc_tx_clk
> +      - const: eth0_rxc_rx_clk
> +      - const: eth1_txc_tx_clk
> +      - const: eth1_rxc_rx_clk

Are you sure about these four clocks? On which pins are they input?

>
>    '#clock-cells':
>      description: |

> --- /dev/null
> +++ b/include/dt-bindings/clock/r9a08g046-cpg.h
> @@ -0,0 +1,343 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> + *
> + * Copyright (C) 2026 Renesas Electronics Corp.
> + */
> +#ifndef __DT_BINDINGS_CLOCK_R9A08G046_CPG_H__
> +#define __DT_BINDINGS_CLOCK_R9A08G046_CPG_H__
> +
> +#include <dt-bindings/clock/renesas-cpg-mssr.h>
> +
> +/* R9A08G046 CPG Core Clocks */

[...]

> +#define R9A08G046_OSCCLK               52
> +#define R9A08G046_OSCCLK2              53
> +#define R9A08G046_CLK_P4_DIV2          54

CLK_P4_DIV2 looks like a purely internal clock to me.


> +
> +/* R9A08G046 Module Clocks */

[...]

> +#define R9A08G046_CRU_PCLK             65
> +#define R9A08G046_CRU_ACLK             66
> +#define R9A08G046_MIPI_DSI_PLLCLK      67

MIPI_DSI_PLLCLK is indeed not a gateable clock, so it should be a core
clock.

> +#define R9A08G046_MIPI_DSI_SYSCLK      68
> +#define R9A08G046_MIPI_DSI_ACLK                69
> +#define R9A08G046_MIPI_DSI_PCLK                70
> +#define R9A08G046_MIPI_DSI_VCLK                71
> +#define R9A08G046_MIPI_DSI_LPCLK       72
> +#define R9A08G046_LVDS_PLLCLK          73
> +#define R9A08G046_LVDS_CLK_DOT0                74
> +#define R9A08G046_LVDS_PCLK            75

LVDS_PCLK does not seem to exist, there is only a single reference to it
(but I can see where its gate bit used to be ;-)

> +#define R9A08G046_LCDC_CLK_A           76
> +#define R9A08G046_LCDC_CLK_D           77
> +#define R9A08G046_LCDC_CLK_P           78
> +#define R9A08G046_SSI0_PCLK2           79
> +#define R9A08G046_SSI0_PCLK_SFR                80
> +#define R9A08G046_SSI1_PCLK2           81
> +#define R9A08G046_SSI1_PCLK_SFR                82
> +#define R9A08G046_SSI2_PCLK2           83
> +#define R9A08G046_SSI2_PCLK_SFR                84
> +#define R9A08G046_SSI3_PCLK2           85
> +#define R9A08G046_SSI3_PCLK_SFR                86
> +#define R9A08G046_USB_U2H0_HCLK                87
> +#define R9A08G046_USB_U2H1_HCLK                88
> +#define R9A08G046_USB_U2P0_EXR_CPUCLK  89
> +#define R9A08G046_USB_U2P1_EXR_CPUCLK  90
> +#define R9A08G046_USB_PCLK             91
> +#define R9A08G046_USB_SCLK             92

USB_SCLK is not gateable, so it should be a core clock.

[...]

> +/* R9A08G046 Resets */

[...]

> +#define R9A08G046_RSCI2_TRESETN                114
> +#define R9A08G046_RSCI3_TRESETN                115
> +#define R9A08G046_LVDS_RESET_N         116

Missing BSC_X_PRESET_BSC?
It could be added later, but you do list the corresponding module clock.

> +
> +#endif /* __DT_BINDINGS_CLOCK_R9A08G046_CPG_H__ */


The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

