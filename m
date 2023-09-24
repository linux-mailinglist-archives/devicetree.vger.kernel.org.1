Return-Path: <devicetree+bounces-2793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 059747AC9DF
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 15:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3457B1C20833
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9FCCA7B;
	Sun, 24 Sep 2023 13:57:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B336ABF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 13:57:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E65BEC433C8;
	Sun, 24 Sep 2023 13:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695563849;
	bh=tB7kkagYAAKovDZa1W4Av2bMf3MSyMZ6VNzkF6Na6l0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bu7DxLoxXxb5GQ6uUu7fI93gJdTMLGG4A7FFxqMQLezspwoud8ckTV18QLPsfybjZ
	 EBnsZReKEoN+Bx3kBeT3MEUU5kI1/bAbH0L1VLN/j6uqGp811lYIuW2PwwFTMvsDGG
	 NecpUwrBQ4FSn2/HGczwayQHMG50LvzF8lI+JnZ2eRNfc6ZKRwmRW6mBM1GMq1SjYC
	 BnqIPVtBhRHAzaxApryqOwdripeca+u9+JEAJo3oE77F26la1P3AAY5FoMOA5mgaGS
	 P+OpA95CBhzogp7UiIWkgIctkglSlD8Py2+EiMlaIwCi0pewzYtzkg33lHYSS024SZ
	 +mWU6j63JLaDA==
Date: Sun, 24 Sep 2023 21:57:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Switch PCIe to HSIO PLL on i.MX8MP
 DHCOM PDK2 and generate clock from SoC
Message-ID: <20230924135716.GK7231@dragon>
References: <20230822005007.128571-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822005007.128571-1-marex@denx.de>

On Tue, Aug 22, 2023 at 02:50:07AM +0200, Marek Vasut wrote:
> The PDK2 carrier board had to be manually patched to obtain working PCIe
> with the i.MX8MP DHCOM SoM so far, because the PCIe clock generator has
> not been connected to the PCIe block REF_PAD_CLK inputs.
> 
> Switch to use of HSIO PLL as the clock source for the PCIe block instead,
> and use the REF_PAD_CLK as outputs to generate PCIe clock from the SoC.
> This way, it is not necessary to patch the PDK2 in any way to obtain a
> working PCIe.
> 
> Note that PDK3 has PCIe clock generator always connected to REF_PAD_CLK
> and is not affected.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!

