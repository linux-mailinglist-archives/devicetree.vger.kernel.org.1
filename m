Return-Path: <devicetree+bounces-19051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5036D7F97DF
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:16:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80AD81C20826
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4430520E0;
	Mon, 27 Nov 2023 03:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4ZPLxqU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420D441F;
	Mon, 27 Nov 2023 03:16:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79BBFC433C8;
	Mon, 27 Nov 2023 03:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701054996;
	bh=BrdY3KVSz3OKjfp8VA3lQbt0q3Ax4cix+/DXFjr6lSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T4ZPLxqUsdmWhtzfzEfLUAoEd0RgJ81X/iZXnEipjkR/cKj26g69Yl7syz/mUClAX
	 l6gIuW4zgxYc7zIc8mmH08hJ7Mk8heJLmYLrNmMzozTfpebJDRq6AIOwjKIVwNH2Xo
	 jtlgQcCr6AE3tJY5CruRSunR2zL24ByQ8mY0MZMJxwDuDYwHc7llE6vXrQFl+ucfGh
	 vZmefcrzYNGMJI+xBGp7WVzM88SKGkGfqwu6ZNyXMNJRgLUasM/3Cz+1wYO5Al+PLi
	 C6uSjzh205MUsEiNVIANWXseZeAmoRS/7v6DSuxUHbrx8grieunOg/FPj3LGipFeGn
	 +Tk8mRAkHZ7CQ==
Date: Mon, 27 Nov 2023 11:16:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Li Yang <leoyang.li@nxp.com>,
	Marco Contenti <marco.c@variscite.com>,
	Nate Drude <nate.d@variscite.com>,
	FrancescoFerraro <francesco.f@variscite.com>,
	Harshesh Valera <harshesh.v@variscite.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: freescale: Add panel overlay for
 Variscite DART
Message-ID: <20231127031631.GY87953@dragon>
References: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
 <20231025165058.31697-5-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025165058.31697-5-laurent.pinchart@ideasonboard.com>

On Wed, Oct 25, 2023 at 07:50:58PM +0300, Laurent Pinchart wrote:
> Add a DT overlay for the Variscite i.MX8MP DT8MCustomBoard that models
> the GKTW70SDAE4SE LVDS panel found in the evaluation kit.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

It doesn't apply to imx/dt64 branch, and I managed to manually apply it.
However, here is what I'm getting from 'make ARCH=arm64 dtbs'.

../arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso:54.3-16: Warning (reg_format): /fragment@1/__overlay__/touch@38:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtbo: Warning (pci_device_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtbo: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtbo: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtbo: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
../arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso:52.11-68.4: Warning (avoid_default_addr_size): /fragment@1/__overlay__/touch@38: Relying on default #address-cells value
../arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso:52.11-68.4: Warning (avoid_default_addr_size): /fragment@1/__overlay__/touch@38: Relying on default #size-cells value
arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtbo: Warning (graph_port): /fragment@3: graph port node name should be 'port'
../arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso:85.15-87.3: Warning (graph_endpoint): /fragment@3/__overlay__: graph endpoint node name should be 'endpoint'
../arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso:85.15-87.3: Warning (graph_endpoint): /fragment@3/__overlay__: graph connection to node '/fragment@0/__overlay__/panel/port/endpoint' is not bidirectional

Shawn

