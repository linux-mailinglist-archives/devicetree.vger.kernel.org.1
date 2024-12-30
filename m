Return-Path: <devicetree+bounces-134652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9679FE25C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:18:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99259188214B
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7A3146013;
	Mon, 30 Dec 2024 04:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Mi00Ib80"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C83E6171C9;
	Mon, 30 Dec 2024 04:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735532327; cv=none; b=VQuqDGB3xIBzso5uJIQBZYpixcNailll43wzAGhG1Qi71fx0RDs97W6gJComdNrjuwo71nBjE9u4Vp+M5zt64nXfAjLoZX7GdQ7jM/wrIMfn73cbTC4aSBlqqBrC1DrNSS88MWOqzlvO88HKxZmVsrOm60v4/U7ZtYtyTRHf7xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735532327; c=relaxed/simple;
	bh=HsCaQG2355uhRRnbqkehFw3kG3QVVsqHz3PkNvrp9Ow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sxMZWQfh2iK6cyKodIDd7Ivrlxkl4TLoMiwagQaXxlPu2+usO7Z5Ki0Hu/k+cPDc6AefGkuif3phiFQ1KVUlA+ueTgA+UJKTDei2BOpq6XUhSk5C5+Y1nUCPAjgvt0U0c2ArqEsvWaDcxjiY6u6PuJeJ1mMDG5QGWic0WGFrPO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Mi00Ib80; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=xN8lPQ1+1lI5LO/am2r8EF9up52kz60PbOIlSpfWzPM=;
	b=Mi00Ib80XNXfARTMGga06Ok/D1IeaV5eBpsYQaV1g10GfDoEOa6K1hM50nOF6E
	Hu2D+dP75xU72ARtvl17ee4kllhKmO9lo4wBFRWHloQi3UWrDNtMJSr4hfHqIhFa
	pRmOZFkV/eVIJluxeMtJo6olaDweijhK9KHqRzGNWglp0=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgCnrSfwHnJnJKsDBg--.60623S3;
	Mon, 30 Dec 2024 12:17:54 +0800 (CST)
Date: Mon, 30 Dec 2024 12:17:52 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Andrej Picej <andrej.picej@norik.com>
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH v2 13/15] arm64: dts: imx8mm-phycore-som: Add overlay for
 rproc
Message-ID: <Z3Ie8GO/GtoSkIr3@dragon>
References: <20241202072052.2195283-1-andrej.picej@norik.com>
 <20241202072052.2195283-14-andrej.picej@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202072052.2195283-14-andrej.picej@norik.com>
X-CM-TRANSID:Mc8vCgCnrSfwHnJnJKsDBg--.60623S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxZFWkurWrtFykWFy8uF4Durg_yoWrGF47pr
	98C3y5GrWIgF17Cr9xXw4qqr1DAw4fCFWY9r1UCrykKr4akFyaya17tr13GrW0vr17Zws5
	ZFnaqF9Fk3W5Xw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4dgZUUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQHFZWdyEUI24gAAs6

On Mon, Dec 02, 2024 at 08:20:50AM +0100, Andrej Picej wrote:
> From: Dominik Haller <d.haller@phytec.de>
> 
> Adds a devicetree overlay containing reserved memory regions used
> for intercore communication between A53 and M4 cores.
> 
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> Changes in v2:
>  - no change.
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |  2 +
>  .../dts/freescale/imx8mm-phycore-rpmsg.dtso   | 55 +++++++++++++++++++
>  2 files changed, 57 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 99be36a04db9..5bc083a7b778 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -125,9 +125,11 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-rdk.dtb
>  
>  imx8mm-phyboard-polis-peb-av-10-dtbs += imx8mm-phyboard-polis-rdk.dtb imx8mm-phyboard-polis-peb-av-10.dtbo
>  imx8mm-phyboard-polis-peb-eval-01-dtbs += imx8mm-phyboard-polis-rdk.dtb imx8mm-phyboard-polis-peb-eval-01.dtbo
> +imx8mm-phycore-rpmsg-dtbs += imx8mm-phyboard-polis-rdk.dtb imx8mm-phycore-rpmsg.dtbo
>  
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-peb-av-10.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-peb-eval-01.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-phycore-rpmsg.dtb
>  
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-phygate-tauri-l.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-prt8mm.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso b/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
> new file mode 100644
> index 000000000000..0c61946f0cf8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2024 PHYTEC Messtechnik GmbH
> + * Author: Dominik Haller <d.haller@phytec.de>
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/imx8mm-clock.h>
> +
> +&{/} {
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;

I'm getting this:

arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso:16.3-10: Warning (ranges_format): /fragment@0/__overlay__/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /fragment@0/__overlay__ (1)
arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso:13.18-43.4: Warning (avoid_default_addr_size): /fragment@0/__overlay__/reserved-memory: Relying on default #address-cells value
arch/arm64/boot/dts/freescale/imx8mm-phycore-rpmsg.dtso:13.18-43.4: Warning (avoid_default_addr_size): /fragment@0/__overlay__/reserved-memory: Relying on default #size-cells value

Shawn

> +
> +		m4_reserved: m4@80000000 {
> +			reg = <0 0x80000000 0 0x1000000>;
> +			no-map;
> +		};
> +
> +		vdev0vring0: vdev0vring0@b8000000 {
> +			reg = <0 0xb8000000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev0vring1: vdev0vring1@b8008000 {
> +			reg = <0 0xb8008000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		rsc_table: rsc_table@b80ff000 {
> +			reg = <0 0xb80ff000 0 0x1000>;
> +			no-map;
> +		};
> +
> +		vdevbuffer: vdevbuffer@b8400000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0 0xb8400000 0 0x100000>;
> +			no-map;
> +		};
> +	};
> +
> +	core-m4 {
> +		compatible = "fsl,imx8mm-cm4";
> +		clocks = <&clk IMX8MM_CLK_M4_DIV>;
> +		mboxes = <&mu 0 1
> +			&mu 1 1
> +			&mu 3 1>;
> +		mbox-names = "tx", "rx", "rxdb";
> +		memory-region = <&vdevbuffer>, <&vdev0vring0>, <&vdev0vring1>, <&rsc_table>;
> +		syscon = <&src>;
> +	};
> +};
> -- 
> 2.34.1
> 


