Return-Path: <devicetree+bounces-15416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DB47E9FED
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 16:27:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E3AD0B208B6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 15:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562E521372;
	Mon, 13 Nov 2023 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYHatump"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D9E21371
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35813C433C8;
	Mon, 13 Nov 2023 15:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699889236;
	bh=DRPBcEhQyl5dBAyB3ocbVXLLrdNG2CNj1hnyQAWHnHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mYHatumpK1ANV48WUwMjoE3E52AEZimGacsM7qM5CtMdYWnLpO64MElZyeVRny1Ts
	 dgte0Jjd2mztihTSm7cR8QfDZClb0X/qCPxHlGx8l3qCqJGb0a0EYvCyNC46vAPK9x
	 1bvAJw7FdItWQ7rhdRpJw6TmVJ0DQdNiwBAbIj+Dx86gLuAdO4/nYT94nPU+qK1gpi
	 n6PZ1irGbhIuqIYwnsM5WPYnw/PY2zCDBKputfvI+H/z1XzN9Bf/J54GAV/EivZpJj
	 tEdCeYgBKvcIJ2ldwk9VjM56jhan8eGRy194Bh1yFTyWepLP1oTxBHwhfIsMg3h/iT
	 ukM7SpElUSf5A==
Date: Mon, 13 Nov 2023 23:14:55 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 3/4] riscv: dts: sophgo: add reset dt node for cv1800b
Message-ID: <ZVI9bzAhPnHhVg8A@xhacker>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-4-jszhang@kernel.org>
 <20231113143224.GA130254@ofsar>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231113143224.GA130254@ofsar>

On Mon, Nov 13, 2023 at 02:32:24PM +0000, Yixun Lan wrote:
> Hi Jisheng:

Hi

> 
> On 08:55 Mon 13 Nov     , Jisheng Zhang wrote:
> > Add the reset device tree node to cv1800b SoC.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > ---
> >  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > index df40e87ee063..4032419486be 100644
> > --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> > @@ -54,6 +54,12 @@ soc {
> >  		dma-noncoherent;
> >  		ranges;
> >  
> > +		rst: reset-controller@3003000 {
> > +			compatible = "sophgo,cv1800b-reset";
> > +			reg = <0x03003000 0x1000>;
>                                           ~~~~~~~
> 			        it should be 0x28

The reg space is 4KB, but only 0x28 are used. I think 0x1000 or 0x28 are fine
since the ioremap granule is 4kB.
> 
> while please also note the 0x24 == SOFT_CPUAC_RSTN, does not compatible
> with the reset-simple driver, but as it's not implemented nor used in this driver,

But the functionality of this "autoclear" reg isn't used at all since we also
have "sticky" reset to acchieve the same feature, I.E reset cpusys. And in the
usage case of reseting cpusys, I believe "sticky" reset is preferred.

And except the cpusys reset which has both autoclear and sticky, other
resets are sticky only. I'm not sure whether it's worth to write a new
driver for almost useless feature.

> so we should be fine with this?
> 
> > +			#reset-cells = <1>;
> > +		};
> > +
> >  		uart0: serial@4140000 {
> >  			compatible = "snps,dw-apb-uart";
> >  			reg = <0x04140000 0x100>;
> > -- 
> > 2.42.0
> > 
> 
> -- 
> Yixun Lan (dlan)
> Gentoo Linux Developer
> GPG Key ID AABEFD55

