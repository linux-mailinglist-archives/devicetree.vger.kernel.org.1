Return-Path: <devicetree+bounces-11910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B697D6EDC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92D0AB20F4A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DD38473;
	Wed, 25 Oct 2023 14:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="s9h0pOSt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8802AB2C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:39:14 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B10293;
	Wed, 25 Oct 2023 07:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=fGgD8013IWJzC9g3lyDR/0S2jUyGHlXejI04gVHijo8=; b=s9h0pOStb6hRhOzt8N5sl8Ryj7
	CqcLL2yo/K7WxqpGSaQ6ZVj7LxcgYFbagaPI6a2VD5Bpx+xrYw0hgbbTkf3d0tLEfXsxEOF0bnOfS
	58cy2P5x0VmVGZf8DCdAuh+mE9XQuooE43kmZTxid3FkPFKH8RRqFMYZmJ2w4FluOBUk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qvf2F-000BDT-4i; Wed, 25 Oct 2023 16:39:03 +0200
Date: Wed, 25 Oct 2023 16:39:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: cn913x: add device trees for COM
 Express boards
Message-ID: <b0c7e6af-f1f1-4bd2-b8e3-a4b3e3346ee7@lunn.ch>
References: <20231025073150.2826130-2-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025073150.2826130-2-enachman@marvell.com>

> diff --git a/arch/arm64/boot/dts/marvell/ac5x_rd_carrier.dts b/arch/arm64/boot/dts/marvell/ac5x_rd_carrier.dts
> new file mode 100644
> index 000000000000..4b2cf417332f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/ac5x_rd_carrier.dts
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marvell International Ltd.
> + *
> + * Device tree for the AC5X RD Type 7 Com Express carrier board,
> + * Utilizing the CN913x COM Express SOM board.
> + * This specific board only maintains a PCIe link with the CPU SOM
> + * module, which does not require any special DTS definitions.
> + */
> +
> +#include "cn9131-db-comexpress.dtsi"
> +
> +/ {
> +	model = "Marvell Armada AC5X RD COM EXPRESS type 7 carrier board";
> +	compatible = "marvell,cn9131", "marvell,cn9130",
> +		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x2 0x00000000>;
> +	};

The memory is on the carrier? Not the ComExpress Module? That seems
wrong. If you look at the Congatec COM Express Type 7 Modules, they
all have a socket for the memory. Which ComExpress connector is used
for the memory between the Module and the Carrier?

> diff --git a/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi

Just for my understanding....

> +&cp0_eth1 {
> +	status = "okay";
> +	phy = <&phy0>;
> +	phy-mode = "rgmii-id";
> +};

This is the 1G Ethernet on the A connector. And the PHY is on the
module, not the carrier?

I just wanted to check because the 4x 10G PHY are -KR, not copper, so
the PHYs would be on the carrier.

    Andrew

