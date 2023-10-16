Return-Path: <devicetree+bounces-8926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AABC7CAA64
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE4BCB20D82
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E722A28689;
	Mon, 16 Oct 2023 13:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="nGDLclfq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AF12868A
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:49:18 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDEC512F;
	Mon, 16 Oct 2023 06:49:16 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A23CC814;
	Mon, 16 Oct 2023 15:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697464149;
	bh=t+PLOpuYLM9fzpu9xviRvNQwyTYfO+G1IWfy8+wyL2Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nGDLclfqRR8+n8ZgI6ljy/el2KWIiCfzcS913xdb/xuu5px5BBNqyK4DHaPvlDA52
	 rvkIZZvLdIkQJ3h8kM6OcJ1WfBqfDNkBgooQEgQO3dOK+GumUmBmC+Oy5VYmLJUW4u
	 vy6niDqta9QmRoC7+yzNLMDzOk4VEfMxikxlAsyE=
Date: Mon, 16 Oct 2023 16:49:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc: linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com,
	gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, maz@kernel.org, tglx@linutronix.de
Subject: Re: [PATCH v11 3/3] arm64: dts: mediatek: Initial mt8365-evk support
Message-ID: <20231016134922.GA6523@pendragon.ideasonboard.com>
References: <20230309213501.794764-1-bero@baylibre.com>
 <20230309213501.794764-4-bero@baylibre.com>
 <20231016134804.GA15778@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231016134804.GA15778@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 04:48:06PM +0300, Laurent Pinchart wrote:
> Hello,
> 
> A bit of a late reply, but I've just noticed an issue related to this
> patch.
> 
> On Thu, Mar 09, 2023 at 10:35:01PM +0100, Bernhard Rosenkränzer wrote:
> > From: Fabien Parent <fparent@baylibre.com>
> > 
> > This adds minimal support for the Mediatek 8365 SOC and the EVK reference
> > board, allowing the board to boot to initramfs with serial port I/O.
> > 
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > [bero@baylibre.com: Removed parts depending on drivers that aren't upstream yet, cleanups, add CPU cache layout, add systimer, fix GIC]
> > Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> > [aouledameur@baylibre.com: Fix systimer properties]
> > Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
> > Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> > Tested-by: Kevin Hilman <khilman@baylibre.com>
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> > ---
> >  arch/arm64/boot/dts/mediatek/Makefile       |   1 +
> >  arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 168 +++++++++
> >  arch/arm64/boot/dts/mediatek/mt8365.dtsi    | 377 ++++++++++++++++++++
> >  3 files changed, 546 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-evk.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8365.dtsi
> 
> [snip]
> 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> > new file mode 100644
> > index 0000000000000..351197c453c91
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> > @@ -0,0 +1,377 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * (C) 2018 MediaTek Inc.
> > + * Copyright (C) 2022 BayLibre SAS
> > + * Fabien Parent <fparent@baylibre.com>
> > + * Bernhard Rosenkränzer <bero@baylibre.com>
> > + */
> > +#include <dt-bindings/clock/mediatek,mt8365-clk.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/phy/phy.h>
> > +
> > +/ {
> 
> [snip]
> 
> > +	soc {
> 
> [snip]
> 
> > +		infracfg: syscon@10001000 {
> > +			compatible = "mediatek,mt8365-infracfg", "syscon";
> > +			reg = <0 0x10001000 0 0x1000>;
> > +			#clock-cells = <1>;
> > +		};
> 
> [snip]
> 
> > +		infracfg_nao: infracfg@1020e000 {
> > +			compatible = "mediatek,mt8365-infracfg", "syscon";
> > +			reg = <0 0x1020e000 0 0x1000>;
> > +			#clock-cells = <1>;
> > +		};
> 
> These two nodes cause the infracfg clocks to be registered twice, with
> the second probe of the clk-mt8365 driver failing with -EEXIST.

These are the messages printed by v6.6-rc6:

[    0.540254] Failed to register clk ifr_pmic_tmr: -EEXIST
[    0.541003] clk-mt8365: probe of 1020e000.infracfg failed with error -17

> [snip]
> 
> > +	};
> 
> [snip]
> 
> > +};

-- 
Regards,

Laurent Pinchart

