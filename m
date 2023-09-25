Return-Path: <devicetree+bounces-2893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A27ACD63
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B989F281301
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7880D81D;
	Mon, 25 Sep 2023 01:05:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D5D811
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:05:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4054C433C7;
	Mon, 25 Sep 2023 01:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695603899;
	bh=q/25EilKw76Pz85a9a3rbtBKovmJDo+FK6RUo8sLg3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PRyL11cIDlnm78qNzeLIZ44Q9GMLib0A2pWXQS1P+ikFkAHUXAK8hHPDekVtW02Em
	 psdR1h5mCAMHV9IWqNGgfnR7ZBbAyQe1g97ZW9jnVmopklifb5+mnDTH1Sz+6ej+GW
	 7uteibgtKjBXBU/JYQ/I9fmRdNF/e0GbIcTm1YphI/h0imw4NOiEq8FgV32Ah2dC1Q
	 krG+8eZumxCrXvKtNVlACeKPP4dqreuBbMjQIWvioTUjaXbOdrEcVNKWrBys4vVfRX
	 jKrSLQaML8+v9mg1wfFkadQ8a0zH2qldgvJvCcwqS+OFg5bNnZAq9lK6AcnvkCsBdk
	 bPLCukVkcV40w==
Date: Mon, 25 Sep 2023 09:04:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@ew.tq-group.com
Subject: Re: [PATCH v2 6/6] MAINTAINERS: add tqml device trees to TQ-Systems
 entry
Message-ID: <20230925010449.GB7231@dragon>
References: <20230829-for-ml-tqmls10xxa-v2-test-v2-0-b1da63785b25@ew.tq-group.com>
 <20230829-for-ml-tqmls10xxa-v2-test-v2-6-b1da63785b25@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230829-for-ml-tqmls10xxa-v2-test-v2-6-b1da63785b25@ew.tq-group.com>

+ Arnd

On Tue, Aug 29, 2023 at 11:27:02AM +0200, Gregor Herburger wrote:
> Update file entries for TQ-Systems Layerscape modules.
> 
> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
> ---
>  MAINTAINERS | 2 ++

I do not have a branch for this file, so you may want to send the
change to Arnd directly.

Shawn

>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 38ea23fa1b00..c1e9a5415d30 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21788,9 +21788,11 @@ W:	https://www.tq-group.com/en/products/tq-embedded/
>  F:	arch/arm/boot/dts/imx*mba*.dts*
>  F:	arch/arm/boot/dts/imx*tqma*.dts*
>  F:	arch/arm/boot/dts/mba*.dtsi
> +F:	arch/arm64/boot/dts/freescale/fsl-*tqml*.dts*
>  F:	arch/arm64/boot/dts/freescale/imx*mba*.dts*
>  F:	arch/arm64/boot/dts/freescale/imx*tqma*.dts*
>  F:	arch/arm64/boot/dts/freescale/mba*.dtsi
> +F:	arch/arm64/boot/dts/freescale/tqml*.dts*
>  F:	drivers/gpio/gpio-tqmx86.c
>  F:	drivers/mfd/tqmx86.c
>  F:	drivers/watchdog/tqmx86_wdt.c
> 
> -- 
> 2.34.1
> 

