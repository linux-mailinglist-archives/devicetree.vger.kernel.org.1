Return-Path: <devicetree+bounces-6475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C197BB7B2
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 209D91C209E9
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 676231BDE0;
	Fri,  6 Oct 2023 12:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgybpyT9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6281D53F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7923DC433C7;
	Fri,  6 Oct 2023 12:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595599;
	bh=kaiiRDqph/9/dNfSPDM1f2ksRyqa+Xp41z4ukvjjt7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FgybpyT9S78ECB5xM7ySYBUNt1IURI8e61hnxc3sraXfwIGf5mAyJiQkxEpV88wBT
	 tRmt3Kc/yxWN8U7TyN7jhn5GImY+Ww6xRl5cV+kf+mzhLuSv6QC9rMnOgL3L4nHV74
	 Gt6cwPlWo1BjJ/rzWZCqv3a0r2p7tMW4OoEuj8Cx+fVnI+uJYjFvdcbSGmG5jHunxU
	 f/LpdwMIuMdIUKVsC8fZVBgzHL6zC8IkntP4kdgbTOsuFsw5U1Q2RJFCPrkLORondq
	 C2rXbvhRjAriCd/OlD6MLROitNlWV2kOidzGhgazz2byw7eXw6cKwZchftqk0UZ3n6
	 VzylQjTR1Ylcw==
Date: Fri, 6 Oct 2023 20:21:09 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 4/5] riscv: dts: sophgo: add initial CV1800B SoC device
 tree
Message-ID: <ZR/7te8fdBQWIZXH@xhacker>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-5-jszhang@kernel.org>
 <20231002-pessimism-sycamore-a854a098cf43@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231002-pessimism-sycamore-a854a098cf43@spud>

On Mon, Oct 02, 2023 at 01:09:38PM +0100, Conor Dooley wrote:
> On Sat, Sep 30, 2023 at 08:39:36PM +0800, Jisheng Zhang wrote:
> > Add initial device tree for the CV1800B RISC-V SoC by SOPHGO.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > ---
> >  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 117 ++++++++++++++++++++++++
> >  1 file changed, 117 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > 
> > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > new file mode 100644
> > index 000000000000..8829bebaa017
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > @@ -0,0 +1,117 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + */
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +	compatible = "sophgo,cv1800b";
> > +	#address-cells = <1>;
> > +	#size-cells = <1>;
> > +
> > +	cpus: cpus {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +		timebase-frequency = <25000000>;
> > +
> > +		cpu0: cpu@0 {
> > +			compatible = "thead,c906", "riscv";
> > +			device_type = "cpu";
> > +			reg = <0>;
> > +			d-cache-block-size = <64>;
> > +			d-cache-sets = <512>;
> > +			d-cache-size = <65536>;
> > +			i-cache-block-size = <64>;
> > +			i-cache-sets = <128>;
> > +			i-cache-size = <32768>;
> > +			mmu-type = "riscv,sv39";
> > +			riscv,isa = "rv64imafdc";
> > +			riscv,isa-base = "rv64i";
> > +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> > +					       "zifencei", "zihpm";
> > +
> > +			cpu0_intc: interrupt-controller {
> > +				compatible = "riscv,cpu-intc";
> > +				interrupt-controller;
> > +				#address-cells = <0>;
> > +				#interrupt-cells = <1>;
> > +			};
> > +		};
> > +	};
> > +
> > +	osc: oscillator {
> > +		compatible = "fixed-clock";
> > +		clock-output-names = "osc_25m";
> > +		#clock-cells = <0>;
> > +	};
> 
> Is this a stub that will later be replaced by a real clock controller
> node, or is this actually a fixed oscillator? If it is the former, could

Hi Conor,

This is a real 25MHZ oscillator. 

Thanks

