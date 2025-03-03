Return-Path: <devicetree+bounces-153394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C24A4C429
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 16:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E62793A3B98
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 15:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68788212B0A;
	Mon,  3 Mar 2025 15:05:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C0184D13
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 15:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741014314; cv=none; b=dm3YcdETxshYqnNVeXiQxNiSuDUAOE+jpQDjRbz5Xti2+q2JGUMVabOxr56eM3+l+BAeFOCYO1I1Adz71w0kCShzjbKhT4seN9jGihK55CVh5QwKjc4FzRyhAQLbTZwq937qZJ3EYYinpaQwqAzn9gE8Rs9dQpkcysJWNUQKP4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741014314; c=relaxed/simple;
	bh=TOtDL6Z6/gt6EoXED0yq3X+XftpMSW7Yrnxasp/jUpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EpAZ+RCEhL3kHMOjBHLDOORxrW7mf9aRqXeT5tJLMvpImhzSfXC0/VVtjTMkwct/8Mqa5aMdZhjjGWZ8JWh5jIOoQXUm5BnTVdzF3t0IKX/Jtt4XQyE+SKdkMBAM/i1oD5J2RqowKEMMWIeH712LAxBuvuhPsW4EWbHeeeudlOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 470A7113E
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 07:05:20 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 006FA3F5A1
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 07:05:05 -0800 (PST)
Date: Mon, 3 Mar 2025 15:04:42 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH 9/9] arm64: dts: imx95: Describe Mali G310 GPU
Message-ID: <Z8XFCv6ku6mG1_x5@e110455-lin.cambridge.arm.com>
References: <20250227170012.124768-1-marex@denx.de>
 <20250227170012.124768-10-marex@denx.de>
 <2153305.bB369e8A3T@steina-w>
 <4a27b6bf-aca8-4f29-9561-609a42eb81a0@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4a27b6bf-aca8-4f29-9561-609a42eb81a0@denx.de>

On Fri, Feb 28, 2025 at 06:43:53PM +0100, Marek Vasut wrote:
> On 2/28/25 11:36 AM, Alexander Stein wrote:
> > Hi Marek,
> 
> Hi,
> 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > index 3af13173de4bd..36bad211e5558 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> > > @@ -249,6 +249,37 @@ dummy: clock-dummy {
> > >   		clock-output-names = "dummy";
> > >   	};
> > > +	gpu_fixed_reg: fixed-gpu-reg {
> > > +		compatible = "regulator-fixed";
> > > +		regulator-min-microvolt = <920000>;
> > > +		regulator-max-microvolt = <920000>;
> > > +		regulator-name = "vdd_gpu";
> > > +		regulator-always-on;
> > > +		regulator-boot-on;
> > > +	};
> > 
> > Is this an internal voltage?
> 
> I think so.
> 
> > > +
> > > +	gpu_opp_table: opp_table {
> > 
> > Node-Names use dash instead of underscore.
> 
> Fixed, thanks.
> 
> [...]
> 
> > > @@ -1846,6 +1877,37 @@ netc_emdio: mdio@0,0 {
> > >   			};
> > >   		};
> > > +		gpu_blk_ctrl: reset-controller@4d810000 {
> > > +			compatible = "fsl,imx95-gpu-blk-ctrl";
> > > +			reg = <0x0 0x4d810000 0x0 0xc>;
> > 
> > Mh, GPU_BLK_CTRL is /just a bit) more than the GPU reset. Does it make sense
> > to make this an gpu-reset-only node, located at 0x4d810008?
> 
> The block controller itself is larger, it spans 3 or 4 registers, so this
> should describe the entire block controller here.
> 
> > > +			#reset-cells = <1>;
> > > +			clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
> > > +			assigned-clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
> > > +			assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
> > > +			assigned-clock-rates = <133333333>;
> > > +			power-domains = <&scmi_devpd IMX95_PD_GPU>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		gpu: gpu@4d900000 {
> > > +			compatible = "fsl,imx95-mali", "arm,mali-valhall-csf";
> > > +			reg = <0 0x4d900000 0 0x480000>;
> > > +			clocks = <&scmi_clk IMX95_CLK_GPU>;
> > 
> > There is also IMX95_CLK_GPUAPB. Is this only required for the rese control above?
> 
> I think I have to describe those clock here too, possibly as 'coregroup'
> clock ?

The 'coregroup' clock does indeed control the MMU and L2$ blocks as well as the AXI interface,
so if that is indeed a separate external clock source it should be defined. Could it be why
you're seeing issues with L2$ resume on the fast reset path?

Best regards,
Liviu

> 
> > > +			clock-names = "core";
> > > +			interrupts = <GIC_SPI 288 IRQ_TYPE_LEVEL_HIGH>,
> > > +				     <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
> > > +				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>;
> > > +			interrupt-names = "gpu", "job", "mmu";
> > 
> > DT bindings say this order: job, mmu, gpu
> Yes, currently it is sorted by IRQ number, fixed.

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

