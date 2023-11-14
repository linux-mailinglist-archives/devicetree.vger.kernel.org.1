Return-Path: <devicetree+bounces-15672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BE77EB303
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 16:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9025C1C20898
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9A54121A;
	Tue, 14 Nov 2023 15:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p42iCVOS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECBC4120D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 15:07:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0AF6C433C8;
	Tue, 14 Nov 2023 15:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699974450;
	bh=BVqDcYpXntfuz/Ud2ECCfNPZwTZVgYgcP1GTHwqqbDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p42iCVOSIm4hBmO/hrs12ZZ5jZ5z0+3Rqok51445Q4YhW96mgui/5DgZwCZFualbd
	 rti0OiAgRp2wj+61eCSAK8nG3Ol/RGAABzQVA2H09/+J4DlBgfhWCW+7Fvc+r9rD7T
	 zY30yzlq+0PsKgnTATmj6IEehbD4CZ6qjBY1HcwZOQHDFkTU8LWvPUEAKscYwQsv4w
	 smRfYNtg4ej7CGoJ13DEChuY2OECLt1ZCO8C4W9lVf3F6qLfEapgXqHu+mN9FKOeW6
	 pzxL0grwu+p35eAAkzI4P9DcK0JRO/H/VODrLUtLm08LMwa8fyvfHn+r3YKjz2sNuQ
	 ENex3QTkoXGDg==
Date: Tue, 14 Nov 2023 22:55:06 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Yixun Lan <dlan@gentoo.org>, Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 3/4] riscv: dts: sophgo: add reset dt node for cv1800b
Message-ID: <ZVOKStmcyXtH4oZS@xhacker>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-4-jszhang@kernel.org>
 <20231113143224.GA130254@ofsar>
 <ZVI9bzAhPnHhVg8A@xhacker>
 <7cccf188-c47f-4865-95ce-dcfedc1429dc@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7cccf188-c47f-4865-95ce-dcfedc1429dc@sifive.com>

On Mon, Nov 13, 2023 at 10:37:35AM -0500, Samuel Holland wrote:
> Hi Jisheng,

Hi Samuel,

> 
> On 2023-11-13 9:14 AM, Jisheng Zhang wrote:
> > On Mon, Nov 13, 2023 at 02:32:24PM +0000, Yixun Lan wrote:
> >> On 08:55 Mon 13 Nov     , Jisheng Zhang wrote:
> >>> Add the reset device tree node to cv1800b SoC.
> >>>
> >>> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> >>> ---
> >>>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 6 ++++++
> >>>  1 file changed, 6 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>> index df40e87ee063..4032419486be 100644
> >>> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> >>> @@ -54,6 +54,12 @@ soc {
> >>>  		dma-noncoherent;
> >>>  		ranges;
> >>>  
> >>> +		rst: reset-controller@3003000 {
> >>> +			compatible = "sophgo,cv1800b-reset";
> >>> +			reg = <0x03003000 0x1000>;
> >>                                           ~~~~~~~
> >> 			        it should be 0x28
> > 
> > The reg space is 4KB, but only 0x28 are used. I think 0x1000 or 0x28 are fine
> > since the ioremap granule is 4kB.
> >>
> >> while please also note the 0x24 == SOFT_CPUAC_RSTN, does not compatible
> >> with the reset-simple driver, but as it's not implemented nor used in this driver,
> > 
> > But the functionality of this "autoclear" reg isn't used at all since we also
> > have "sticky" reset to acchieve the same feature, I.E reset cpusys. And in the
> > usage case of reseting cpusys, I believe "sticky" reset is preferred.
> > 
> > And except the cpusys reset which has both autoclear and sticky, other
> > resets are sticky only. I'm not sure whether it's worth to write a new
> > driver for almost useless feature.
> 
> As long as the device has its own binding/compatible string, it is always
> possible to replace RESET_SIMPLE with a custom driver later if needed. (Or use a
> more complicated driver in some other context, e.g. firmware).

Good idea, indeed if needed we can implement a customized driver, and I think
this can acchieve both backward and forward DT compatbility ;)

As for firmware, I guess you mean the little c906 core os firmware. Here
is my draft plan:

a sophgo custom remoteproc driver which will do something like:

load the firmware;
reset_assert(rst);
prepara cpu entry address and so on;
reset_deassert(rst);

so sticky reset still works perfectly. While I believe autoclear reset
may not work if the reset clears something we have set.

> 
> Regards,
> Samuel
> 
> >> so we should be fine with this?
> >>
> >>> +			#reset-cells = <1>;
> >>> +		};
> >>> +
> >>>  		uart0: serial@4140000 {
> >>>  			compatible = "snps,dw-apb-uart";
> >>>  			reg = <0x04140000 0x100>;
> >>> -- 
> >>> 2.42.0
> >>>
> >>
> >> -- 
> >> Yixun Lan (dlan)
> >> Gentoo Linux Developer
> >> GPG Key ID AABEFD55
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 

