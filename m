Return-Path: <devicetree+bounces-19417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA8E7FAD7D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18A3F281B81
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 22:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A433EA8F;
	Mon, 27 Nov 2023 22:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="1Cm5tU0J"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB7091AE;
	Mon, 27 Nov 2023 14:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=e7IBp0fCNpY+ZxyoiT0Ekzpy0IonkonmrhfGovOCcGI=; b=1Cm5tU0JAila50h6EVz3Qv5+L0
	io6AzaVO/s2anZnQMzVN4r8Z3G1rtz2633dhZ4QFSKbvggQt/34BJTs8NQkqJItShVdHs9GwQm1gL
	OfnlwtjpDatcnDpRh0yPX5QioA/8+Kp/niXox3wTveoBXekUxrCw5aoopl/6UJsq+vOw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r7kAg-001OOS-KQ; Mon, 27 Nov 2023 23:33:42 +0100
Date: Mon, 27 Nov 2023 23:33:42 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v6 3/3] arm64: dts: cn913x: add device trees for COM
 Express boards
Message-ID: <35f98bc2-dc26-4441-8ed3-1ecce582d0d2@lunn.ch>
References: <20231127190857.1977974-1-enachman@marvell.com>
 <20231127190857.1977974-4-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127190857.1977974-4-enachman@marvell.com>

> +++ b/arch/arm64/boot/dts/marvell/ac5x-rd-carrier-cn9131.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marvell International Ltd.
> + *
> + * Device tree for the AC5X RD Type 7 Com Express carrier board,
> + * Utilizing the CN913x COM Express CPU module board.
> + * This specific board only maintains a PCIe link with the CPU CPU module
> + * module, which does not require any special DTS definitions.
> + */
> +
> +#include "cn9131-db-comexpress.dtsi"
> +#include "ac5x-rd-carrier.dtsi"
> +
> +/ {
> +	model = "Marvell Armada AC5X RD COM EXPRESS type 7 carrier board with CN9131 CPU module";
> +	compatible = "marvell,cn9131-ac5x-carrier", "marvell,rd-ac5x-carrier",
> +			"marvell,cn9131-cpu-module", "marvell,cn9131",
> +			"marvell,armada-ap807-quad", "marvell,armada-ap807";

> diff --git a/arch/arm64/boot/dts/marvell/ac5x-rd-carrier.dtsi b/arch/arm64/boot/dts/marvell/ac5x-rd-carrier.dtsi
> new file mode 100644
> index 000000000000..fd45d5582233

> +/ {
> +	model = "Marvell Armada AC5X RD COM EXPRESS type 7 carrier board";
> +	compatible = "marvell,rd-ac5x-carrier";

Now i'm confused. What does rd mean?

I would expect RD mean Reference Design, and that is the complete
device in its box.

Yet, here you have RD for the carrier?

The box itself is called cn9131-ac5x-carrier?

This makes no sense to me.

Maybe i'm understanding this all wrong, and its the carrier which you
are producing a reference design for? The CPU module does not really
matter? I could use any off the shelf ComExpress 7 SOM. The bits you
are trying to sell are on the carrier? But since you are Marvell, you
don't want to recommend using an AMD ComExpress board when you happen
to also have CPU module which would work? But the CPU is not really
the point of this, its the carrier?

	Andrew

