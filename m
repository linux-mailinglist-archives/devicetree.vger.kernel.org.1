Return-Path: <devicetree+bounces-10282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5A97D0A41
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8B75282449
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540E6107A9;
	Fri, 20 Oct 2023 08:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3591C10941
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:08:40 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03040E8
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 01:08:38 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39K88Sw2002009;
	Fri, 20 Oct 2023 16:08:28 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from APC323 (10.0.12.98) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.498.0; Fri, 20 Oct 2023 16:08:27 +0800
Date: Fri, 20 Oct 2023 16:08:27 +0800
From: Yu-Chien Peter Lin <peterlin@andestech.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: <conor@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        <dylan@andestech.com>, <locus84@andestech.com>, <dminus@andestech.com>
Subject: Re: [PATCH v2 05/10] dt-bindings: riscv: Add andestech,cpu-intc to
 interrupt-controller
Message-ID: <ZTI1ex8xlif7w8tM@APC323>
References: <20231019135905.3658215-1-peterlin@andestech.com>
 <ba3ac1b2-d924-44cb-97dd-6af65a1db7a8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ba3ac1b2-d924-44cb-97dd-6af65a1db7a8@linaro.org>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-Originating-IP: [10.0.12.98]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39K88Sw2002009

On Fri, Oct 20, 2023 at 09:00:03AM +0200, Krzysztof Kozlowski wrote:
> On 19/10/2023 15:59, Yu Chien Peter Lin wrote:
> > Add "andestech,cpu-intc" compatible string for Andes INTC which
> > provides Andes-specific IRQ chip functions.
> > 
> > Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> > ---
> > Changes v1 -> v2:
> >   - New patch
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index 97e8441eda1c..5b216e11c69f 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -99,7 +99,9 @@ properties:
> >          const: 1
> >  
> >        compatible:
> > -        const: riscv,cpu-intc
> > +        enum:
> > +          - riscv,cpu-intc
> > +          - andestech,cpu-intc
> 
> Keep alphabetical order. Do not add stuff to the end of the lists. This
> is a generic rule. Everywhere.

Hi Krzysztof,

Thansk for pointing this out.
Will fix this in PATCH v3.

Best regards,
Peter Lin

> Best regards,
> Krzysztof
> 

