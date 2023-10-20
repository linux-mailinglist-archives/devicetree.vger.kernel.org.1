Return-Path: <devicetree+bounces-10284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 807E37D0A64
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:18:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E16C0B210F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC94E1094F;
	Fri, 20 Oct 2023 08:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64AD1094A
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:17:55 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6421119
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 01:17:53 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39K8HjXK009119;
	Fri, 20 Oct 2023 16:17:45 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from APC323 (10.0.12.98) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.498.0; Fri, 20 Oct 2023 16:17:43 +0800
Date: Fri, 20 Oct 2023 16:17:43 +0800
From: Yu-Chien Peter Lin <peterlin@andestech.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: <geert+renesas@glider.be>, <magnus.damm@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <linux-renesas-soc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        <dylan@andestech.com>, <locus84@andestech.com>, <dminus@andestech.com>
Subject: Re: [PATCH v2 04/10] riscv: dts: renesas: r9a07g043f: Update
 compatible string to use Andes INTC
Message-ID: <ZTI3p82DLgKEo65D@APC323>
References: <20231019135810.3657665-1-peterlin@andestech.com>
 <CAMuHMdX+8RUpmhbcBjohZ5oF+wtakfNpwrxGFbZJvTN8_aJv9g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdX+8RUpmhbcBjohZ5oF+wtakfNpwrxGFbZJvTN8_aJv9g@mail.gmail.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-Originating-IP: [10.0.12.98]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39K8HjXK009119

Hi Geert,

On Fri, Oct 20, 2023 at 09:26:31AM +0200, Geert Uytterhoeven wrote:
> Hi Yu,
> 
> On Thu, Oct 19, 2023 at 4:01 PM Yu Chien Peter Lin
> <peterlin@andestech.com> wrote:
> > The Andes INTC allows AX45MP cores to handle custom local
> > interrupts, such as the performance monitor overflow interrupt.
> >
> > Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> > ---
> > Changes v1 -> v2:
> >   - New patch
> 
> Thanks for your patch!
> 
> > --- a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> > +++ b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> > @@ -37,7 +37,7 @@ cpu0: cpu@0 {
> >
> >                         cpu0_intc: interrupt-controller {
> >                                 #interrupt-cells = <1>;
> > -                               compatible = "riscv,cpu-intc";
> > +                               compatible = "andestech,cpu-intc";
> 
> This compatible value is not documented.  Perhaps it was introduced
> in an earlier patch in the series, to which I was not CCed?
> 
> Threading is broken, so I can't easily find the whole series in lore:
> https://lore.kernel.org/all/20231019135810.3657665-1-peterlin@andestech.com/

Sorry, I'll send PATCH v3 with some fixes.
Thanks for reminding me of this.

Best regards,
Peter Lin

> >                                 interrupt-controller;
> >                         };
> >                 };
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

