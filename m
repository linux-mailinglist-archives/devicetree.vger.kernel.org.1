Return-Path: <devicetree+bounces-2929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BD57ACEC0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 05:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id EE6EE1C20441
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A135691;
	Mon, 25 Sep 2023 03:42:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C8B7F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:42:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 351E2C433C7;
	Mon, 25 Sep 2023 03:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695613342;
	bh=Gx+a1QJo68OR8tSbxTWZ3MX7BlClljBzN4Oqpe5L824=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ce5nJXtTWA0idqp3PLuktsKu/KS+YpXs1KyxTkn5mUIQOHyaTTBZ7ix1WyBDgisez
	 S8RXI3ij1hH2Vl1ueXLIHRL42y0J1an9Yzy2zzYpZ2BknBVkICOL+Src/xAqHgrA2N
	 a7UL0fOomGJRBiHTPvkqy7mpuJgpfE8XdK95hKwjMUscyjmksBCireyUJwVGn58hcI
	 b4Bg39S46NdWqdbbvbvtfjDEwjrdTvKUgQInTno4IVcgY6sFsLpoMrUAw7JjgaFqLq
	 PTYW9+QzkNLSmr1/NrpYwPbpZcZlzWCV8qblrmR05BaaRJ+9xaAHuAopTowKWP/cmv
	 22R0HcYRCu2zw==
Date: Mon, 25 Sep 2023 11:42:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Update i.MX8MP DHCOM SoM DT to
 production rev.200
Message-ID: <20230925034210.GJ7231@dragon>
References: <20230921192933.71639-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921192933.71639-1-marex@denx.de>

On Thu, Sep 21, 2023 at 09:29:32PM +0200, Marek Vasut wrote:
> The current imx8mp-dhcom-som.dtsi describes prototype rev.100 SoM,
> update the DT to describe production rev.200 SoM which brings the
> following changes:
> - Fast SoC GPIOs exposed on the SoM edge connector
> - Slow GPIOs like component resets moved to I2C GPIO expander
> - ADC upgraded from TLA2024 to ADS1015 with conversion interrupt
> - EEPROM size increased from 256 B to 4 kiB
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Hmm, it doesn't apply to my imx/dt64 branch.

Shawn

