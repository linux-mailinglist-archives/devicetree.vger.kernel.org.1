Return-Path: <devicetree+bounces-275304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPaYHlobtGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:12:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC97284A61
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02443305E647
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A8E3314B7;
	Fri, 13 Mar 2026 14:06:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A831F99D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410774; cv=none; b=G9wVFMDdl79TvtAVJnugf6cxSTZw0UDuCqwHqnwOxURdP5sMnNfdqXUrs3EX3AccGnj8s583KacxGDXUQthFVYqfWTTb69qTRRSQLmI8JDiU73JUvETXPJnyx+xeb8ohS6oZ2oFuhy6VmEfhiACDZLB/3GNBamosBXJcNkCw4c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410774; c=relaxed/simple;
	bh=Wo9P0OvFu5Q/66npS57S4aKOuZktzVuLsj7oQRamu9o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nYOpZ3TWx1YjOgUQw5ZOhH3CnFD3HDoHgIGcQnWPPOluL35Eo8k1ExITO8n5ImfZXTmiY2KcWj/xMMohETUGRSAaz5rHsVstLl7Etz18Pw86Km3J5n6Bcf+9l/V7Y514eMs3JQsFc+5ibDOnDcsXbgYoM2Z3213u8aFhnbR3uxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-94b07fddecbso1334529241.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:06:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773410772; x=1774015572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISrMP7lkY0Gwayd/no0kP3RKtW7L8snMqqKoKdEo9Io=;
        b=qSg1Egi5L7iZtBeE27MvJSOQqmyuGB2NUtUbDl6iMOtR1wv2iZC5SPEEWXAc3NTNNU
         qSVMrHNFixcF9Cjqnw3CXSaK47bGirJ4mpPj3bB1s9iOky4VjF8qSXvAN+j3YjGTkfyg
         uRkBWIE+pSQL9m0C3b6MMCrfnFB0J972Jd2DoNsEtv1KzPYTt55wQC5uBOTCJSA3TNXA
         GUKZUmjJ/la5Zb3f6ikl4QhReWqwFMlTC9NWHZ5exoDrLKbXu0z1i7tbX919M0iCzIll
         PdOhryc9p+Huk6GXQ6pPrsiXVgT+n/USoBM+R4O6icD8g55Z1zYr9rnv4QPkKhvTCZ16
         8hwQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0XrsMEhB9eIPmoEuwtDxMOLb6p93HafcmauaDHzXCpb5YkW4R9vaj4/+w3EP4Ev+IekYt6NLjkVtV@vger.kernel.org
X-Gm-Message-State: AOJu0YzJJ88vT08M7X6scQkzQgsP6hUWifwCBUWVzW8ap5Dcej0W4iDy
	YG0BkQyIx1SPRoGrKk+3nXaIBcG7nbI+Ne1hoLahtH8JoafYkI/D2VtU4fR1tsZc
X-Gm-Gg: ATEYQzxFJpW+MiF/Qva/dL9yAlR8Yv3xH4HXQQuVI3RdjeyiZQAFtAVeNND5IdBnVuD
	My05hMibvMtWuO2H00K3Yx4Xh0uwPtLExLWkbb2ZTBKv91U6WIOj4r9pkHKkFoE7lenIgHFlkvF
	Hf7kHrMLAfbHLuOd9RDqIGVUKnoJ4PfVVr2qunSZkp3rwigxk4Kah4dh/KaLkx7WQweynPWB5zo
	vAVr7LTNlPV3BvZYj2xUspo6D+DFILpysimSeBNNXSv73T53Ys4R6z3LxnSWO2h4tbII0fnjySO
	q5P8IRIYAgVIpCwYpeDkkUsalkKrFO6fdNA8QUBsy4+xnMvJXz8250MllnBYO/8xAl1U6Vu90iT
	GCSd56dTF3lxBImWghmzHNIyPPplvDUXjCSAUQaUoyxaKhYpWkuUExFYpy53IzV8bGFnnyPZeq3
	Tb7IV5lJqatcVKnmW2EaZdAl1dpFRTik8pXqFWAkakzqpMr4lAqEqxfPbq5HOzBcXO
X-Received: by 2002:a05:6102:d90:b0:5f5:4f68:9f7e with SMTP id ada2fe7eead31-6020e6efa0cmr1489872137.8.1773410771953;
        Fri, 13 Mar 2026 07:06:11 -0700 (PDT)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601dea9f6ecsm3168582137.10.2026.03.13.07.06.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 07:06:09 -0700 (PDT)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56afafef7aeso2239464e0c.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:06:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0JJzncwgBH8WJezgAoAoarDEcNPN8/5Z4RFcTZbJOQgosRYS1v7xsDRxnUunAlOz+9oe96nELecID@vger.kernel.org
X-Received: by 2002:a05:6122:4219:b0:559:6092:936c with SMTP id
 71dfb90a1353d-56b629213e5mr1521906e0c.12.1773410767533; Fri, 13 Mar 2026
 07:06:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
 <20260203103031.247435-6-biju.das.jz@bp.renesas.com> <CAMuHMdXPuBEODa0Uyhuv7u9ERY+YajsECTa0=XKY6WcE-VnaGA@mail.gmail.com>
 <TY3PR01MB113464F7D135B2CB24B91140F867DA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113464F7D135B2CB24B91140F867DA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2026 15:05:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWtBRHKSd6wb7Q-YmCPSnBGk_pETp7q-eCUJi3t8ERS5Q@mail.gmail.com>
X-Gm-Features: AaiRm50baEw2pzLDwGKmHfiVoIio9lIXgG4IiYSq7bUGte8xcq7IbKlQNDwy-y0
Message-ID: <CAMuHMdWtBRHKSd6wb7Q-YmCPSnBGk_pETp7q-eCUJi3t8ERS5Q@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] dt-bindings: clock: Document RZ/G3L SoC
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,kernel.org,vger.kernel.org,bp.renesas.com,microchip.com];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275304-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1EC97284A61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Thu, 5 Mar 2026 at 16:18, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > >
> > > Document the device tree bindings for the Renesas RZ/G3L SoC Clock
> > > Pulse Generator (CPG). RZ/G3L CPG is similar to RZ/G2L CPG but has 5
> > > clocks compared to 1 clock on other SoCs.
> > >
> > > Also define RZ/G3L (R9A08G046) Clock Pulse Generator Core Clock,
> > > module
> > > clock outputs, as listed in section 4.4.2 ("Clock List r1.00") and add
> > > Reset definitions referring to registers CPG_RST_* in Section 4.4.3
> > > ("Register") of the RZ/G3L Hardware User's Manual (Rev.1.00 Oct, 2025).
> > >
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> >
> > > --- a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
> > > +++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
> > > @@ -28,19 +28,30 @@ properties:
> > >        - renesas,r9a07g044-cpg # RZ/G2{L,LC}
> > >        - renesas,r9a07g054-cpg # RZ/V2L
> > >        - renesas,r9a08g045-cpg # RZ/G3S
> > > +      - renesas,r9a08g046-cpg # RZ/G3L
> > >        - renesas,r9a09g011-cpg # RZ/V2M
> > >
> > >    reg:
> > >      maxItems: 1
> > >
> > >    clocks:
> > > -    maxItems: 1
> > > +    minItems: 1
> > > +    items:
> > > +      - description: Clock source to CPG can be either from external clock
> > > +                     input (EXCLK) or crystal oscillator (XIN/XOUT).
> > > +      - description: ETH0 TXC clock input
> > > +      - description: ETH0 RXC clock input
> > > +      - description: ETH1 TXC clock input
> > > +      - description: ETH1 RXC clock input
> > >
> > >    clock-names:
> > > -    description:
> > > -      Clock source to CPG can be either from external clock input (EXCLK) or
> > > -      crystal oscillator (XIN/XOUT).
> > > -    const: extal
> > > +    minItems: 1
> > > +    items:
> > > +      - const: extal
> > > +      - const: eth0_txc_tx_clk
> > > +      - const: eth0_rxc_rx_clk
> > > +      - const: eth1_txc_tx_clk
> > > +      - const: eth1_rxc_rx_clk
> >
> > Are you sure about these four clocks? On which pins are they input?
>
> From Figure 4.4-5 Block Diagram of the Deformed Clock System (4), page 789
>
> These clks are external source clks connected to CPG_ETH_SSEL mux for
> selecting rx/tx clks.
>
> In RGMII case, currently on RZ/G3L SMARC EVK:
>
> For Tx: we select DIV_ETH0_TR (SEL_ETH0A_SET)
> For Rx: we select ETH0_RXC_RX_CLK_IN (SEL_ETH0B_SET)

Sure, these clocks are indeed shown in that Figure, and referenced in
the CPG_ETH_SSEL register documentation, but where do they originate
from? On which pins are they supplied?

> > > --- /dev/null
> > > +++ b/include/dt-bindings/clock/r9a08g046-cpg.h
> > > @@ -0,0 +1,343 @@
> > > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > + *
> > > + * Copyright (C) 2026 Renesas Electronics Corp.
> > > + */
> > > +#ifndef __DT_BINDINGS_CLOCK_R9A08G046_CPG_H__
> > > +#define __DT_BINDINGS_CLOCK_R9A08G046_CPG_H__
> > > +
> > > +#include <dt-bindings/clock/renesas-cpg-mssr.h>
> > > +
> > > +/* R9A08G046 CPG Core Clocks */
> >
> > [...]
> >
> > > +#define R9A08G046_OSCCLK               52
> > > +#define R9A08G046_OSCCLK2              53
> > > +#define R9A08G046_CLK_P4_DIV2          54
> >
> > CLK_P4_DIV2 looks like a purely internal clock to me.
>
> Page 3918 Figure 7.9-1 Block Diagram of CAN-FD
>
> Peripheral clk,
> RAM clk,
> CAN external clk
>
> Then, CANFD clk which is DIV2 clk of Peripheral clk, so thought of
> modelling this as Core clk. I may be wrong here??
>
> Maybe I will drop this now and revisit later when we add support for CANFD??

That may be the better option.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

