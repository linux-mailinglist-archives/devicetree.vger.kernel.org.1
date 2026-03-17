Return-Path: <devicetree+bounces-276769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO6VDkaFuWlyIgIAu9opvQ
	(envelope-from <devicetree+bounces-276769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:45:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C59362AE5CD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90597309A114
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1743EC2EC;
	Tue, 17 Mar 2026 16:40:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2C73ECBF2
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 16:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773765640; cv=none; b=kRCKH+PJfnt87U+RAx8uonokj6nE/CSrUpKbKKR+j2VlAWJ/ANHtJPnpT2ADCPwbAGacsHJKQ6DNKJFy934/i5A2C1vnXfAFUtg+d1zGEMWOlkZ/uANq35Q/BjXi4TbwtKSdgaaeSFDDplSK7iFhRLntl3t8MXrDY/2B6SWecgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773765640; c=relaxed/simple;
	bh=W/LXxawnUy5QbMBSVSPPXzCeSWIGPaKFW9NiSKQMkSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lt43kEJL7Cy4RRQ6byd3kBmNWsBGKUE9E/Jpnb/EyW5QDWslQWANvEOhFw2g38j4LkVpS/99P9mwFIKPEPi+85Ce8LDPmaC4C68pAi3P6qhaylehsZDCuzDhiwqeWU/0kjn4qAf8i0ktmZ3iSVDIL4ObJUO6ncMg3olWsaCtAf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56b7043c97eso1133396e0c.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:40:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773765637; x=1774370437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vsFPqGNbq+eb2XKkYK5oZMuSao00ukUspWcqW4wmr98=;
        b=Rya7TO68Zx5nKC40h17c5d986KhMmtIUAwZ8ojU9Ws13LGx7DqNXZoLKzbDZCql1FI
         wucaOiL/5kdK468FqsiI9m0tXbscEVWYEHYfNTfz82sM7OC0UGxhD53T7KbG3qM60gnP
         zFBiiKdkwvaaSZF/fCfcdX/ogLGTo+Dez6MtJt9DRnGrJ8Z87WWPmW4YeOtonVSf4THA
         Kvj0JF1mNbwmRnb61viQjases15qXqkk64jZSdJXCYZFMH6hDDZRiDKPXLDtjr9sGBEg
         rjWiol5lDln6tGpBrNF8sgi2VTgB2honmvyoa1+UA9Nko21bCe2AgpP6SrIFgASFaU1x
         A41A==
X-Forwarded-Encrypted: i=1; AJvYcCV5Al6bItD0BuBkNWw6MkxFSngji2CMGlzSzF+onjn0y2kZ+n09nGBV+7AdIDbKMxNMEwLmuarrc0d5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7mhCmotjoTeb863zLDxpHAbVXy4eAEPiZj1mDgplqvtqhDcM2
	sCj9vm2XU0rEQBWSKIlSAPDgdoChRKjeYej/UywLVi+V7Fx3L+aFw/gni5v+O8lNUZw=
X-Gm-Gg: ATEYQzyu7tMTAFsOcnG6opkqB+8RbDPsLaPPUQ901XGsvrfwyMHtsfMR5oKBvgT7CbW
	Emkgwlk8E595sNW0VL4fiDBPA60hOUqhr2biD0KBq0Qevkj0FgL+cvO9M7+FtSL11wzBK7K/dn6
	2LD7BrZt81HV2JpdGBdcwgkUAo9HIZYq61mblOKFTKp6QRBuwBtIZVd4QWN6mXpuO8ctOi2oaKt
	SOar5ILIarXq5KdQg4IPp+ea7myy2AP9fqf7BJ/MvRYQ00EbJDkMyqquO0IaaqaMg9U2g9uqqlw
	jR3c99gzTMX2sKwlE6UWO+T0MqCXCfNpxPNfCl6lZBnqg6jhSnA58TqRdqjl+fVPpa+yLFooHb/
	338301wVsOO60M7qbi+IorjHWZ3kJCGHHxf9zeSJd8jIBDQL7TNYTPvkAvSKu2C6MZKjrybM33k
	CnUcNNGhPmQH8PtmT80gJj/QcLDvo7V3NcslNOMtuMlSJSqLLD+0Jg2bkCoS1+
X-Received: by 2002:a05:6122:2981:b0:56b:9083:4331 with SMTP id 71dfb90a1353d-56ba714733dmr204561e0c.12.1773765636922;
        Tue, 17 Mar 2026 09:40:36 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6c2d50fsm211628e0c.0.2026.03.17.09.40.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 09:40:36 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5fff77ff69bso1318186137.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:40:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUtLL2xi3AmqMEI87ZZvo5dNXvlW+xkTcxvNoe8gq6V8dLVafSaEgTcxkCb1nVJiM7R0gsWLkRqLyFF@vger.kernel.org
X-Received: by 2002:a05:6102:4186:b0:602:6c69:eec7 with SMTP id
 ada2fe7eead31-6027d320cb1mr178012137.23.1773765635951; Tue, 17 Mar 2026
 09:40:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
 <20260203103031.247435-6-biju.das.jz@bp.renesas.com> <CAMuHMdXPuBEODa0Uyhuv7u9ERY+YajsECTa0=XKY6WcE-VnaGA@mail.gmail.com>
 <TY3PR01MB113464F7D135B2CB24B91140F867DA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdWtBRHKSd6wb7Q-YmCPSnBGk_pETp7q-eCUJi3t8ERS5Q@mail.gmail.com> <TYCPR01MB113329C33FF3CF8832B9FB1498645A@TYCPR01MB11332.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB113329C33FF3CF8832B9FB1498645A@TYCPR01MB11332.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Mar 2026 17:40:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWVmD7oBHOfooH6r5Gm5aVi+cU3+cbFsbGV=t7vhmL3Pg@mail.gmail.com>
X-Gm-Features: AaiRm51rq9Qm7mO42ai5bG3MUeyB3Sk3xPiht1eExfZaJrMLrFCMT9PE1Npi9uk
Message-ID: <CAMuHMdWVmD7oBHOfooH6r5Gm5aVi+cU3+cbFsbGV=t7vhmL3Pg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,kernel.org,vger.kernel.org,bp.renesas.com,microchip.com];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276769-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.743];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,mail.gmail.com:mid,microchip.com:email,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C59362AE5CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Fri, 13 Mar 2026 at 15:35, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Thu, 5 Mar 2026 at 16:18, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Tue, 3 Feb 2026
> > > > at 11:30, Biju <biju.das.au@gmail.com> wrote:
> > > > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > > > >
> > > > > Document the device tree bindings for the Renesas RZ/G3L SoC Clock
> > > > > Pulse Generator (CPG). RZ/G3L CPG is similar to RZ/G2L CPG but has
> > > > > 5 clocks compared to 1 clock on other SoCs.
> > > > >
> > > > > Also define RZ/G3L (R9A08G046) Clock Pulse Generator Core Clock,
> > > > > module clock outputs, as listed in section 4.4.2 ("Clock List
> > > > > r1.00") and add Reset definitions referring to registers CPG_RST_*
> > > > > in Section 4.4.3
> > > > > ("Register") of the RZ/G3L Hardware User's Manual (Rev.1.00 Oct, 2025).
> > > > >
> > > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > >
> > > > > ---
> > > > > a/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.yaml
> > > > > +++ b/Documentation/devicetree/bindings/clock/renesas,rzg2l-cpg.ya
> > > > > +++ ml
> > > > > @@ -28,19 +28,30 @@ properties:
> > > > >        - renesas,r9a07g044-cpg # RZ/G2{L,LC}
> > > > >        - renesas,r9a07g054-cpg # RZ/V2L
> > > > >        - renesas,r9a08g045-cpg # RZ/G3S
> > > > > +      - renesas,r9a08g046-cpg # RZ/G3L
> > > > >        - renesas,r9a09g011-cpg # RZ/V2M
> > > > >
> > > > >    reg:
> > > > >      maxItems: 1
> > > > >
> > > > >    clocks:
> > > > > -    maxItems: 1
> > > > > +    minItems: 1
> > > > > +    items:
> > > > > +      - description: Clock source to CPG can be either from external clock
> > > > > +                     input (EXCLK) or crystal oscillator (XIN/XOUT).
> > > > > +      - description: ETH0 TXC clock input
> > > > > +      - description: ETH0 RXC clock input
> > > > > +      - description: ETH1 TXC clock input
> > > > > +      - description: ETH1 RXC clock input
> > > > >
> > > > >    clock-names:
> > > > > -    description:
> > > > > -      Clock source to CPG can be either from external clock input (EXCLK) or
> > > > > -      crystal oscillator (XIN/XOUT).
> > > > > -    const: extal
> > > > > +    minItems: 1
> > > > > +    items:
> > > > > +      - const: extal
> > > > > +      - const: eth0_txc_tx_clk
> > > > > +      - const: eth0_rxc_rx_clk
> > > > > +      - const: eth1_txc_tx_clk
> > > > > +      - const: eth1_rxc_rx_clk
> > > >
> > > > Are you sure about these four clocks? On which pins are they input?
> > >
> > > From Figure 4.4-5 Block Diagram of the Deformed Clock System (4), page
> > > 789
> > >
> > > These clks are external source clks connected to CPG_ETH_SSEL mux for
> > > selecting rx/tx clks.
> > >
> > > In RGMII case, currently on RZ/G3L SMARC EVK:
> > >
> > > For Tx: we select DIV_ETH0_TR (SEL_ETH0A_SET) For Rx: we select
> > > ETH0_RXC_RX_CLK_IN (SEL_ETH0B_SET)
> >
> > Sure, these clocks are indeed shown in that Figure, and referenced in the CPG_ETH_SSEL register
> > documentation, but where do they originate from? On which pins are they supplied?
>
> Figure 6.3-1 Block Diagram of the Ethernet Interface
>
> and
>
> 1.3.3 Clock Pin Specifications
> Table 1.3-3 List of Pin Functions (1/2)
>
> For Rx this clock is supplied by PHY on the RZ/G3L SMARC SoM Module.
> RZ_ETH0_RXC is the pin.
>
> For Tx this clock is supplied by the SoC(RZ_ETH0_TXC)

OK, thanks! So these are fine.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

