Return-Path: <devicetree+bounces-15359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A10D7E9CD9
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8E25280CFD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E519D1DFEA;
	Mon, 13 Nov 2023 13:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za5Hz+lf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F591DFE4
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:15:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC16CC433C8;
	Mon, 13 Nov 2023 13:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699881332;
	bh=IUou9g1eC7eRyhYqxTZ2wecJaQRhh+vOQhsR2yztLhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Za5Hz+lfHckCYadClxj9S0HmEayg0pbrmOvWPNveXQM/WkSLZXIDPV+PF8DOId7ba
	 53CZUqxcsNJl3kGjiSzF5hUxbt0ONRMxi7QL6efvnR09VEVUA5159sq2m6I/FRL1j3
	 j+sFscRcacyHwWiDba9D0GeFD+H3GgjmSoKPq0IFoBOGG24+piLxfuQVC5EypMSJcp
	 2sA8cry5c8+XiHGZy/J3S3TML4us/VSr+lWvXxfiTA/Yf0O+mAX/plKxTr62YFSPMw
	 hnL59cvZmWjmMtJMufOcp04JY8MuzNNquCr7RmvuUz38PSFwTmhuwMugmGv65z4dKI
	 sD5XqKbud0cTQ==
Date: Mon, 13 Nov 2023 21:03:11 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Samuel Holland <samuel.holland@sifive.com>,
	Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH 1/2] riscv: dts: cv1800b: add pinctrl node for cv1800b
Message-ID: <ZVIejw2O6on8QMYy@xhacker>
References: <20231113005702.2467-1-jszhang@kernel.org>
 <20231113005702.2467-2-jszhang@kernel.org>
 <58a99001-8260-4970-9fc7-25fe81e557a5@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <58a99001-8260-4970-9fc7-25fe81e557a5@sifive.com>

On Sun, Nov 12, 2023 at 08:51:20PM -0500, Samuel Holland wrote:
> On 2023-11-12 6:57 PM, Jisheng Zhang wrote:
> > Add the reset device tree node to cv1800b SoC reusing the
>           ^^^^^
>           I assume you mean pinctrl here?

oops copy and paste the commit msg ;) thanks
> 
> > pinctrl-single driver.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > ---
> >  arch/riscv/boot/dts/sophgo/cv-pinctrl.h | 19 +++++++++++++++++++
> >  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 10 ++++++++++
> >  2 files changed, 29 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> > 
> > diff --git a/arch/riscv/boot/dts/sophgo/cv-pinctrl.h b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> > new file mode 100644
> > index 000000000000..ed78b6fb3142
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> 
> A couple of questions: Should this go in include/dt-bindings? And is it worth

When I cooked this series two weeks ago, I did put it in dt-binding, but
then I found commit fe49f2d776f799 ("arm64: dts: ti: Use local header for
pinctrl register values"), "These definitions were previously put in the
bindings header to avoid code duplication and to provide some context
meaning (name), but they do not fit the purpose of bindings." which is
suggested and acked by Krzysztof, so I just want to follow the style
here.


> including macros for the actual function mappings, like in the vendor source[1]?

Do you want something as the following?

#define UART0_TX	0
#define CAM_MCLK1	1
...

#define REG_UART0_TX	0x24
...

pinctrl-single,pins = <REG_UART0_TX UART0_TX>;

Other pinctl-single users just uses the register value directly, I have
no preference. But I'd like to get suggestions from DT and pinctl-single
maintainers. Hi Rob, Krzysztof, Conor, Tony, what's your opinion?

> 
> [1]:
> https://github.com/milkv-duo/duo-buildroot-sdk/blob/develop/linux_5.10/drivers/pinctrl/cvitek/cv180x_pinlist_swconfig.h
> 
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * This header provides constants for pinctrl bindings for Sophgo CV* SoC.
> > + *
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + */
> > +#ifndef _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> > +#define _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> > +
> > +#define MUX_M0		0
> > +#define MUX_M1		1
> > +#define MUX_M2		2
> > +#define MUX_M3		3
> > +#define MUX_M4		4
> > +#define MUX_M5		5
> > +#define MUX_M6		6
> > +#define MUX_M7		7
> > +
> > +#endif
> > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > index e04df04a91c0..7a44d8e8672b 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > @@ -6,6 +6,8 @@
> >  #include <dt-bindings/interrupt-controller/irq.h>
> >  #include <dt-bindings/reset/sophgo,cv1800b-reset.h>
> >  
> > +#include "cv-pinctrl.h"
> > +
> >  / {
> >  	compatible = "sophgo,cv1800b";
> >  	#address-cells = <1>;
> > @@ -55,6 +57,14 @@ soc {
> >  		dma-noncoherent;
> >  		ranges;
> >  
> > +		pinctrl0: pinctrl@3001000 {
> > +			compatible = "pinctrl-single";
> > +			reg = <0x3001000 0x130>;
> > +			#pinctrl-cells = <1>;
> > +			pinctrl-single,register-width = <32>;
> > +			pinctrl-single,function-mask = <0x00000007>;
> > +		};
> 
> From the vendor driver[2], it looks like this peripheral block only handles
> pinmuxing, so indeed this looks like a good use of pinctrl-single.

This is deffinitely pinctrl-single style pinmux controller ;)

> 
> [2]:
> https://github.com/milkv-duo/duo-buildroot-sdk/blob/develop/linux_5.10/drivers/pinctrl/cvitek/pinctrl-cv180x.h
> 
> > +
> >  		rst: reset-controller@3003000 {
> >  			compatible = "sophgo,cv1800b-reset";
> >  			reg = <0x03003000 0x1000>;
> 

