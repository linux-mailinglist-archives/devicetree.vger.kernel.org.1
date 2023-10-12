Return-Path: <devicetree+bounces-8096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A687C6AD0
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B0F91C20A50
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F79C22EF1;
	Thu, 12 Oct 2023 10:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYWKRxG0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B4D22336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8572BC433C7;
	Thu, 12 Oct 2023 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697105967;
	bh=L0t5nXwLEjTKQCJhv1rv+xpI6JkWGcX7XIz5Zb5gwdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bYWKRxG0a3FpAfefUBjEApenpX0M6UKSPgZd9MokG914AnkVDcJaPUgR6TJP/4VPA
	 Q7Kfcm5iIOv1JZfPyfPgmvwh37/a6mGuAywfs4AlHu1D5EoOnebtsNKKiPZt7j6KpC
	 R/YfUyoh1cXb6rpXOcIQ/w6teNVe6bJaMr1cyCc9mf553BqS+k1DYusivZvo5WLILe
	 qfuW34SVAuUDaQkUXnqw2zZ/743Yw8i0vuvhHmneuxsMXcqrg0YILvooWbinIaE51H
	 3Cr7Wx/5nDRgCDXE26p2ODGXnYUxiA61Ar0j55w1DeiGS1zWuEXue+Y6yMA133U2zA
	 iOBjKIdBqk2HA==
Date: Thu, 12 Oct 2023 18:19:15 +0800
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
Message-ID: <20231012101915.GV819755@dragon>
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

Applied both, thanks!

