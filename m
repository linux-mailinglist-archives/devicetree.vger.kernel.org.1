Return-Path: <devicetree+bounces-12328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6023E7D8FB5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FCC81F224AE
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4069BA29;
	Fri, 27 Oct 2023 07:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98F4B66D;
	Fri, 27 Oct 2023 07:24:15 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BDEAD4A;
	Fri, 27 Oct 2023 00:24:12 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39R7MCuA061681;
	Fri, 27 Oct 2023 15:22:12 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from APC323 (10.0.12.98) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.498.0; Fri, 27 Oct 2023 15:22:08 +0800
Date: Fri, 27 Oct 2023 15:22:03 +0800
From: Yu-Chien Peter Lin <peterlin@andestech.com>
To: Conor Dooley <conor@kernel.org>
CC: <acme@kernel.org>, <adrian.hunter@intel.com>, <ajones@ventanamicro.com>,
        <alexander.shishkin@linux.intel.com>, <andre.przywara@arm.com>,
        <anup@brainfault.org>, <aou@eecs.berkeley.edu>,
        <atishp@atishpatra.org>, <conor+dt@kernel.org>,
        <conor.dooley@microchip.com>, <devicetree@vger.kernel.org>,
        <dminus@andestech.com>, <evan@rivosinc.com>, <geert+renesas@glider.be>,
        <guoren@kernel.org>, <heiko@sntech.de>, <irogers@google.com>,
        <jernej.skrabec@gmail.com>, <jolsa@kernel.org>, <jszhang@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-perf-users@vger.kernel.org>,
        <linux-renesas-soc@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-sunxi@lists.linux.dev>, <locus84@andestech.com>,
        <magnus.damm@gmail.com>, <mark.rutland@arm.com>, <mingo@redhat.com>,
        <n.shubin@yadro.com>, <namhyung@kernel.org>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <peterz@infradead.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <rdunlap@infradead.org>,
        <robh+dt@kernel.org>, <samuel@sholland.org>,
        <sunilvl@ventanamicro.com>, <tglx@linutronix.de>,
        <tim609@andestech.com>, <uwu@icenowy.me>, <wens@csie.org>,
        <will@kernel.org>, <ycliang@andestech.com>
Subject: Re: [PATCH v3 RESEND 10/13] dt-bindings: riscv: Add Andes PMU
 extension description
Message-ID: <ZTtlCEnbmVoPGj5l@APC323>
References: <20231023004100.2663486-1-peterlin@andestech.com>
 <20231023004100.2663486-11-peterlin@andestech.com>
 <20231023-spectacle-module-0516fb35995a@spud>
 <ZTohvi7TPyVoO-Sl@APC323>
 <20231026-concierge-perfume-6c327fc5282f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231026-concierge-perfume-6c327fc5282f@spud>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-Originating-IP: [10.0.12.98]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39R7MCuA061681

On Thu, Oct 26, 2023 at 03:09:30PM +0100, Conor Dooley wrote:
> On Thu, Oct 26, 2023 at 04:22:22PM +0800, Yu-Chien Peter Lin wrote:
> > Hi Conor,
> > 
> > On Mon, Oct 23, 2023 at 01:03:53PM +0100, Conor Dooley wrote:
> > > On Mon, Oct 23, 2023 at 08:40:57AM +0800, Yu Chien Peter Lin wrote:
> > > > Document the ISA string for Andes Technology performance monitor
> > > > extension which provides counter overflow interrupt and mode
> > > > filtering mechanisms.
> > > > 
> > > > Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> > > > ---
> > > > Changes v2 -> v3:
> > > >   - New patch
> > > > ---
> > > >  Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > index 5e9291d258d5..e0694e2adbc2 100644
> > > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > @@ -246,6 +246,13 @@ properties:
> > > >              in commit 2e5236 ("Ztso is now ratified.") of the
> > > >              riscv-isa-manual.
> > > >  
> > > > +        - const: xandespmu
> > > > +          description:
> > > > +            The Andes Technology performance monitor extension for counter overflow
> > > > +            and privilege mode filtering. For more details, see Counter Related
> > > > +            Registers in the AX45MP datasheet.
> > > > +            https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
> > > 
> > > Does/will this PMU function identically on the other CPUs that support it?
> > 
> > Yes, I can confirm that.
> 
> If there's a more generic document available, that'd be good.

While it is currently the most comprehensive and publicly available
document we have, I will update it here once I obtain a more specific
version of the extension.

> Otherwise,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for the review.

Regards,
Peter Lin

> 
> Thanks,
> Conor.



