Return-Path: <devicetree+bounces-2918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED297ACE10
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 87CEB1C203B8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AC81116;
	Mon, 25 Sep 2023 02:25:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B6710E2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:25:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4149DC433C7;
	Mon, 25 Sep 2023 02:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695608700;
	bh=T/XV+0SsXCSGWGhOD8i/yu+HGiaAsIrLlBsjD29NE/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D5ixLGFiKW2q3sOWnAVj9ykoageE6rq4sBlzkm1loacSWrk1p554HsqJSQpZWGLhA
	 lkdV/FakWD7KUeyobejc6MJYBloUEiQdE3dJN0/76XMAb11pBWAl3Y6vlVpWI2ATI3
	 FzEwYCh1X8+aOfB2545/hg5YZ7nzYiXIDopdtdmMKI0bAoPP3w3IoXOjHqEkNkbWeR
	 uKayjlpAJsV8aKzqr6FiMludn0h24mUUdJqSedsoCxP41DId6pQ44miUHeQuIwsUUx
	 1fODBRa2nlxT3Dfniwif/bQ4D9CjqtEBrJ/aGFFNARkLyELy1xXYjmeKRyQOAE/YpY
	 liTOqoJJbZ8tA==
Date: Mon, 25 Sep 2023 10:24:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	David Jander <david@protonic.nl>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx: Add imx8mm-prt8mm.dtb to build
Message-ID: <20230925022450.GY7231@dragon>
References: <20230911214547.2200528-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911214547.2200528-1-robh@kernel.org>

On Mon, Sep 11, 2023 at 04:45:37PM -0500, Rob Herring wrote:
> imx8mm-prt8mm.dts was not getting built. Add it to the build.
> 
> Fixes: 58497d7a13ed ("arm64: dts: imx: add Protonic PRT8MM board")
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm64/boot/dts/freescale/Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index c6872b7e9471..0935626c3dfb 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -65,6 +65,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl-osm-s.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-mx8menlo.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-nitrogen-r2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-phg.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-prt8mm.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-rdk.dtb

I flipped above two to keep the alphabetical order.

Applied, thanks!

Shawn

>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
> -- 
> 2.40.1
> 

