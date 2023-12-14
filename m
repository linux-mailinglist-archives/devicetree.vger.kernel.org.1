Return-Path: <devicetree+bounces-25075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8B681252E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71634B2119B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9097F9;
	Thu, 14 Dec 2023 02:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5fmfBnw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928BE642
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:22:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B072EC433C8;
	Thu, 14 Dec 2023 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702520576;
	bh=2dqkUnZ1w5W8BpfqSy59Jzx5XEg6Jju97Zl3wCZcXxQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g5fmfBnw3u/yd+Ht1gxWaPfmtx7C66PTdnKAGR7naXR5IEZxeYgrrXTKVl1aiUWOQ
	 xt3IdmQuT1bKJ2SbgL9kZirfAVXPudFp7hZrw+G/sRIlZGS+eb+VOksqB6PSXHYfKD
	 oCMWWfSVvyHSa2JAQ9Cg2jurO5i2jyj+GWpdwKb+5dUyMC6jiNzmBpPL+Z1EmrJ04g
	 uTi/v6qoBZoMgSzBBxJRyLd6B0O1K/MQQ7TuXbNvt1U8V/fwBXfOcQ2JncXow9v6EL
	 l1G9WpF7bWXFUTM4VIGDJvgIdo+XLKeYMaFx6S95Rj/NBE8KFS+Ghs/OQyue0kFJ6S
	 HiQirgm9xLPzA==
Date: Thu, 14 Dec 2023 10:22:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Reduce GPU to nominal speed
Message-ID: <20231214022250.GY270430@dragon>
References: <20231128200219.226038-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128200219.226038-1-aford173@gmail.com>

On Tue, Nov 28, 2023 at 02:02:16PM -0600, Adam Ford wrote:
> When the GPU nodes were added, the GPU_PLL_OUT was configured
> for 1000MHz, but this requires the SoC to run in overdrive mode
> which requires an elevated voltage operating point.
> 
> Since this may run some boards out of spec, the default clock
> should be set to 800MHz for nominal operating mode. Boards
> that run at the higher voltage can update their clocks
> accordingly.
> 
> Fixes: 4523be8e46be ("arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core")
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied all, thanks!

