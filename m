Return-Path: <devicetree+bounces-74143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E65369021E7
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 14:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B4A81F215FA
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75EAD80639;
	Mon, 10 Jun 2024 12:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b="CB7tWaAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.sberdevices.ru (mx1.sberdevices.ru [37.18.73.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F27380BF3;
	Mon, 10 Jun 2024 12:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=37.18.73.165
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718023731; cv=none; b=rwM40I0HLk7iI3P+htqcQk2yiE2PaXm+ray5yQrfvkYqNN3igqbzdF393yX0EprlILoC98IFJYP3CdmwbZnyk2vEVx5ekmO/mz/AXnqcuX7RAtQuEd/ygSsQj9AXH9FW2VL8ZoPHzuy/36+R/Q9C2iCaLczKrc9/3dHlCi1Bvx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718023731; c=relaxed/simple;
	bh=5xSpIRs+951Kve6tBfW/525+iQeRJrLClC3SoiW2dso=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LHSG2k+dO5haRlcK/x3NF550iebSLUnuH7PPfhLECkFMwvT7IFvZd+cdlNdLMeds3tOeenZXOsh8ei95IJpfHjc2dRe96VWln6THkM/m5SHOPNCS6Nj1oKgAeWWH0ytOBiACRDWw+0Xd7HCnz3a1J9JyJl9fh1kx2+mT1xR1Oko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com; spf=pass smtp.mailfrom=salutedevices.com; dkim=pass (2048-bit key) header.d=salutedevices.com header.i=@salutedevices.com header.b=CB7tWaAS; arc=none smtp.client-ip=37.18.73.165
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=salutedevices.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=salutedevices.com
Received: from p-infra-ksmg-sc-msk01.sberdevices.ru (localhost [127.0.0.1])
	by mx1.sberdevices.ru (Postfix) with ESMTP id 98D27100009;
	Mon, 10 Jun 2024 15:48:43 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.sberdevices.ru 98D27100009
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=salutedevices.com;
	s=mail; t=1718023723;
	bh=j3YIK2h8usjuYp/Fn/WGb0hwIgDEYJptTOyzUDckVro=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:From;
	b=CB7tWaAS8L4T5u/Wb2APAq8IO977ijed2j4sGe3NIrXrMlsmZut3p/ZpF4ctKtlGh
	 a93blyqI8tBcdKl+ERNn6ynyI01ennDmN7EBkBwdCVE/xj6eocjEVS5v50qcBoOApR
	 k6T/oldjby4wS8M2XYVAYATdwYZ6CVKmNiCRQUH3kzMXoTLcviYavRJww9XbUnN0xd
	 HElrjKQV8Y6rCagOJwpUnPd04NzU+sthDEGoiKksRSJ1bdFMAfi7B/5W4tDBHIIdqf
	 6VxowPklrawKgENcAEbg71g5wzZsypgd46BLgpjg+c7/FUUypunquZhkd7ftdULRzd
	 0uNyhFXvhkqPw==
Received: from smtp.sberdevices.ru (p-i-exch-sc-m02.sberdevices.ru [172.16.192.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.sberdevices.ru (Postfix) with ESMTPS;
	Mon, 10 Jun 2024 15:48:43 +0300 (MSK)
Received: from localhost (100.64.160.123) by p-i-exch-sc-m02.sberdevices.ru
 (172.16.192.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Mon, 10 Jun
 2024 15:48:43 +0300
Date: Mon, 10 Jun 2024 15:48:42 +0300
From: Dmitry Rokosov <ddrokosov@salutedevices.com>
To: Jerome Brunet <jbrunet@baylibre.com>
CC: <neil.armstrong@linaro.org>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <khilman@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <jian.hu@amlogic.com>,
	<kernel@sberdevices.ru>, <rockosov@gmail.com>,
	<linux-amlogic@lists.infradead.org>, <linux-clk@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 6/7] dt-bindings: clock: meson: add A1 CPU clock
 controller bindings
Message-ID: <20240610124842.mpy4rtlwtwasqf7h@CAB-WSD-L081021>
References: <20240515185103.20256-1-ddrokosov@salutedevices.com>
 <20240515185103.20256-7-ddrokosov@salutedevices.com>
 <1jtti1p10m.fsf@starbuckisacylon.baylibre.com>
 <20240610111826.im3mz64hjfkxrxhr@CAB-WSD-L081021>
 <1j7cexow91.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1j7cexow91.fsf@starbuckisacylon.baylibre.com>
User-Agent: NeoMutt/20220415
X-ClientProxiedBy: p-i-exch-sc-m02.sberdevices.ru (172.16.192.103) To
 p-i-exch-sc-m02.sberdevices.ru (172.16.192.103)
X-KSMG-Rule-ID: 10
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 185833 [Jun 10 2024]
X-KSMG-AntiSpam-Version: 6.1.0.4
X-KSMG-AntiSpam-Envelope-From: ddrokosov@salutedevices.com
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 20 0.3.20 743589a8af6ec90b529f2124c2bbfc3ce1d2f20f, {Tracking_uf_ne_domains}, {Track_E25351}, {Tracking_from_domain_doesnt_match_to}, devicetree.org:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;smtp.sberdevices.ru:5.0.1,7.1.1;100.64.160.123:7.1.2;salutedevices.com:7.1.1;127.0.0.199:7.1.2, FromAlignment: s, ApMailHostAddress: 100.64.160.123
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean, bases: 2024/06/10 11:00:00
X-KSMG-LinksScanning: Clean, bases: 2024/06/10 11:00:00
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960, bases: 2024/06/10 11:09:00 #25535815
X-KSMG-AntiVirus-Status: Clean, skipped

On Mon, Jun 10, 2024 at 01:47:06PM +0200, Jerome Brunet wrote:
> On Mon 10 Jun 2024 at 14:18, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:
> 
> > Hello Jerome,
> >
> > Thank you for the review!
> >
> > On Mon, Jun 10, 2024 at 12:04:09PM +0200, Jerome Brunet wrote:
> >> On Wed 15 May 2024 at 21:47, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:
> >> 
> >> > Add the documentation and dt bindings for Amlogic A1 CPU clock
> >> > controller.
> >> >
> >> > This controller consists of the general 'cpu_clk' and two main parents:
> >> > 'cpu fixed clock' and 'syspll'. The 'cpu fixed clock' is an internal
> >> > fixed clock, while the 'syspll' serves as an external input from the A1
> >> > PLL clock controller.
> >> >
> >> > Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> >> > Reviewed-by: Rob Herring <robh@kernel.org>
> >> > ---
> >> >  .../bindings/clock/amlogic,a1-cpu-clkc.yaml   | 64 +++++++++++++++++++
> >> >  .../dt-bindings/clock/amlogic,a1-cpu-clkc.h   | 19 ++++++
> >> >  2 files changed, 83 insertions(+)
> >> >  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
> >> >  create mode 100644 include/dt-bindings/clock/amlogic,a1-cpu-clkc.h
> >> >
> >> > diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
> >> > new file mode 100644
> >> > index 000000000000..f4958b315ed4
> >> > --- /dev/null
> >> > +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
> >> > @@ -0,0 +1,64 @@
> >> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >> > +%YAML 1.2
> >> > +---
> >> > +$id: http://devicetree.org/schemas/clock/amlogic,a1-cpu-clkc.yaml#
> >> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> > +
> >> > +title: Amlogic A1 CPU Clock Control Unit
> >> > +
> >> > +maintainers:
> >> > +  - Neil Armstrong <neil.armstrong@linaro.org>
> >> > +  - Jerome Brunet <jbrunet@baylibre.com>
> >> > +  - Dmitry Rokosov <ddrokosov@salutedevices.com>
> >> > +
> >> > +properties:
> >> > +  compatible:
> >> > +    const: amlogic,a1-cpu-clkc
> >> > +
> >> > +  '#clock-cells':
> >> > +    const: 1
> >> > +
> >> > +  reg:
> >> > +    maxItems: 1
> >> > +
> >> > +  clocks:
> >> > +    items:
> >> > +      - description: input fixed pll div2
> >> > +      - description: input fixed pll div3
> >> > +      - description: input sys pll
> >> > +      - description: input oscillator (usually at 24MHz)
> >> 
> >> According to the documentation, fdiv5 is also an input of the CPU clock
> >> tree.
> >> 
> >> That is typically the kind of things we'd prefer to get right from the
> >> beginning to avoid modifying the bindings later.
> >> 
> >
> > Could you please share which documentation you are referencing? I have
> > the A113L documentation, and there is no mention of the CPU clock IP.
> 
> You should get in touch with Amlogic.
> 

Okay, I will double check with Amlogic and back with accurate
information.

> > I retrieved below register map from the vendor's custom driver:
> >
> > ===
> > CPUCTRL_CLK_CTRL0
> >
> > bits 1:0 - cpu_fsource_sel0
> >     0 - xtal
> >     1 - fclk_div2
> >     2 - fclk_div3
> >
> > bit 2 - cpu_fsel0
> >     0 - cpu_fsource_sel0
> >     1 - cpu_fsource_div0
> >
> > bit 3 - UNKNONWN
> >
> > bits 9:4 - cpu_fsource_div0
> >     Divider value
> >
> > bit 10 - cpu_fclk
> >     0 - cpu_fsel0
> >     1 - cpu_fsel1
> >
> > bit 11 - cpu_clk
> >     0 - cpu_fclk
> >     1 - sys_pll
> >
> > bits 15:12 - UNKNONWN
> >
> > bits 17:16 - cpu_fsource_sel1
> >     0 - xtal
> >     1 - fclk_div2
> >     2 - fclk_div3
> >
> > bit 18 - cpu_fsel1
> >     0 - cpu_fsource_sel1
> >     1 - cpu_fsource_div1
> >
> > bit 19 - UNKNONWN
> >
> > bits 25:20 - cpu_fsource_div1
> >     Divider value
> >
> > bits 31:26 - UNKNONWN
> > ===
> >
> > As you can see it doesn't have any other inputs except fclk_div2,
> > fclk_div3, sys_pll and xtal.
> 
> You might not know what to do with it yet, still it is part of the
> documentation and should be part of the bindings too
> 
> >
> >> > +
> >> > +  clock-names:
> >> > +    items:
> >> > +      - const: fclk_div2
> >> > +      - const: fclk_div3
> >> > +      - const: sys_pll
> >> > +      - const: xtal
> >> > +
> >> > +required:
> >> > +  - compatible
> >> > +  - '#clock-cells'
> >> > +  - reg
> >> > +  - clocks
> >> > +  - clock-names
> >> > +
> >> > +additionalProperties: false
> >> > +
> >> > +examples:
> >> > +  - |
> >> > +    #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
> >> > +    apb {
> >> > +        #address-cells = <2>;
> >> > +        #size-cells = <2>;
> >> > +
> >> > +        clock-controller@fd000000 {
> >> > +            compatible = "amlogic,a1-cpu-clkc";
> >> > +            reg = <0 0xfd000080 0 0x8>;
> >> 
> >> If reg is <0 0xfd000080 0 0x8> then node name should be clock-controller@fd000080
> >> 
> >
> > Okay, I will fix that example in the next version.
> >
> > [...]
> 
> -- 
> Jerome

-- 
Thank you,
Dmitry

