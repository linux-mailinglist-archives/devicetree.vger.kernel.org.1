Return-Path: <devicetree+bounces-10287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8947D0A77
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 348F8282410
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFF510957;
	Fri, 20 Oct 2023 08:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF72B67E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:20:53 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 790D3B0;
	Fri, 20 Oct 2023 01:20:51 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39K8KHU0009756;
	Fri, 20 Oct 2023 16:20:17 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from APC323 (10.0.12.98) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.498.0; Fri, 20 Oct 2023 16:20:15 +0800
Date: Fri, 20 Oct 2023 16:20:15 +0800
From: Yu-Chien Peter Lin <peterlin@andestech.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
CC: <magnus.damm@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <linux-renesas-soc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        <dylan@andestech.com>, <locus84@andestech.com>, <dminus@andestech.com>
Subject: Re: [PATCH v2 09/10] riscv: dts: renesas: Add Andes PMU extension
Message-ID: <ZTI4P9KIfS58WKuU@APC323>
References: <20231019140232.3660375-1-peterlin@andestech.com>
 <CAMuHMdW1Ua4skxtT+9kyoSDiqt2kNiNG-1jHE8rf4+b14hX4Vg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdW1Ua4skxtT+9kyoSDiqt2kNiNG-1jHE8rf4+b14hX4Vg@mail.gmail.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-Originating-IP: [10.0.12.98]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39K8KHU0009756

Hi Geert,

On Fri, Oct 20, 2023 at 09:32:45AM +0200, Geert Uytterhoeven wrote:
> Hi Peter,
> 
> On Thu, Oct 19, 2023 at 4:05 PM Yu Chien Peter Lin
> <peterlin@andestech.com> wrote:
> > Add "xandespmu" to ISA extensions, the SBI PMU driver will
> > probe the extension and use the non-standard irq source.
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
> > @@ -26,7 +26,7 @@ cpu0: cpu@0 {
> >                         riscv,isa = "rv64imafdc";
> >                         riscv,isa-base = "rv64i";
> >                         riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> > -                                              "zifencei", "zihpm";
> > +                                              "zifencei", "zihpm", "xandespmu";
> >                         mmu-type = "riscv,sv39";
> >                         i-cache-size = <0x8000>;
> >                         i-cache-line-size = <0x40>;
> 
> This extension is not documented in
> Documentation/devicetree/bindings/riscv/extensions.yaml. Perhaps it was
> introduced in an earlier patch in the series, to which I was not CCed?

Yes, I missed adding the extension to dt bindings.
Thanks for the pointer.

Best regards,
Peter Lin

> 
> Threading is broken, so I can't easily find the whole series in lore:
> https://lore.kernel.org/all/20231019140232.3660375-1-peterlin@andestech.com/
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

