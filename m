Return-Path: <devicetree+bounces-22066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A82E8064E3
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A001A1F21672
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BAB95677;
	Wed,  6 Dec 2023 02:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ2jHMDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6104B53B8
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:17:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4C6CC433C8;
	Wed,  6 Dec 2023 02:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701829036;
	bh=YeTwiVbDlwwkb6nXIwsuaLI6YXDhUOf6XkJyFLo6N54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hQ2jHMDZ3eHgMJosbDwMaTQsQAepkKCOjHb8rsgSto4LL3IjZk/btCwF/pnBDAd8l
	 JvubPeVzR9XQipALknUlEgm+nvw3cdDNBJCfByFx8D90dubfAutTq8a3hWQd9tf4xW
	 wsCfXlL4jX5ZbECuNzFEC1yytLDYqffMxgQS05laGbpoxC1ohOowj/g6pCSmn5gcGY
	 S1wUgpu9Lup6AYgGGspVwWNCnIkGWMuq0vAJhpCE86pJFbwGUSJVjbb/JGK0u8yj6o
	 Di/XScK3dyp2BSDBeFGuHyI3z86WpwvSDh6tuTpgCFmqMwJPWS0mJYCoHJmLn6mOG8
	 Ue0W5QMzI3wPQ==
Date: Wed, 6 Dec 2023 10:17:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembeded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Simplify mipi_dsi clocks
Message-ID: <20231206021711.GJ236001@dragon>
References: <20231128045415.210682-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128045415.210682-1-aford173@gmail.com>

On Mon, Nov 27, 2023 at 10:54:13PM -0600, Adam Ford wrote:
> The device tree clock structure for the mipi_dsi is
> unnecessarily redundant.
> 
> The default clock parent of IMX8MM_CLK_DSI_PHY_REF is
> already IMX8MM_CLK_24M, so there is no need to set the
> parent-child relationship between them.  The default clock
> rates for IMX8MM_SYS_PLL1_266M and IMX8MM_CLK_24M are
> already defined to be 266MHz and 24MHz respectively,
> so there is no need to define those clock rates.
> 
> On i.MX8M[MNP] the  samsung,pll-clock-frequency is not
> necessary, because the driver will read it from sclk_mipi
> which is also already set to 24MHz making it also
> redundant.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied all, thanks!

