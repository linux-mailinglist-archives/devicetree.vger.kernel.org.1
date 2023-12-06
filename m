Return-Path: <devicetree+bounces-22077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D5F806581
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 04:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 350811C20A35
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44B8E79ED;
	Wed,  6 Dec 2023 03:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsLS4lff"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A9553A5
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EE85C433C8;
	Wed,  6 Dec 2023 03:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701832523;
	bh=UtCdc+sgLzjdvXkZ1fmLKLdQbkA15fS8azoFUy1h7Jg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QsLS4lff/K0Bn9P0P2EHcfpXD7o+LuSg/wY40jzZ2ORc22RpWMMXixgx1/DtWH2Fm
	 f+Qn5VvQLUrJZtaWOKsrjo0PizgxdTeECIOC0wrVIUf7hQEHSknB6YL4Y85CW9Jc0g
	 vxGCcOFlVk8GvWgo2SHG7BeUSKFVeuuz4g3lSmS44mIIBS5oBf81ZGIW2fPawysbv6
	 jgtyi3ut1rPHuiBq5U6oO8v19pgnRmni6FRBvVmStyn9A5NCxA2C56LAykgBp7VgNW
	 4XzGE4B3aZCFJoAIXOIFkwk8XB+hrSW/t042+tPTM8jXuZaZOT2wlTI6Pigc69r/Vk
	 ghWamRpVeG0Aw==
Date: Wed, 6 Dec 2023 11:15:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: freescale: verdin-imx8mp: add support
 to mallow board
Message-ID: <20231206031518.GQ236001@dragon>
References: <20231201153929.26590-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201153929.26590-1-francesco@dolcini.it>

On Fri, Dec 01, 2023 at 04:39:27PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add Toradex Verdin IMX8MP Mallow carrier board support. Mallow is a
> low-cost carrier board in the Verdin family with a small form factor and
> build for volume production making it ideal for industrial and embedded
> applications.
> 
> https://www.toradex.com/products/carrier-board/mallow-carrier-board
> 
> v1:
>  - https://lore.kernel.org/all/20231129164022.143340-1-francesco@dolcini.it/
> v2:
>  - remove dt nodes: eeprom_display_adapter, hwmon
>  - add Acked-by: Krzysztof
>  - correct hwmon_temp node compatible to "ti,tmp1075"
> 
> Joao Paulo Goncalves (2):
>   dt-bindings: arm: fsl: add verdin imx8mp mallow board
>   arm64: dts: freescale: verdin-imx8mp: add support to mallow board

Ok, applied this version instead.

It would be helpful if you drop a note on the previous version when you
discard it with a new one.

Shawn

