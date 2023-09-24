Return-Path: <devicetree+bounces-2780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C184D7AC812
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F1F121C20829
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29FDD1858;
	Sun, 24 Sep 2023 12:42:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1323A111E
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:42:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA273C433C8;
	Sun, 24 Sep 2023 12:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695559357;
	bh=f9QaCT7P+Eym8wOvTxbBRKuAxNofL+bJzAubHNGHt38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ItdJ5hH5RCJ6d6zgIM5fgBlbKBcGnfLZiplra28IUBfcyypc6M0goS5gFA+Lrc6nr
	 jzqhfMiqooOm5w4gGJk3DmTRMTk8z15JKyhAvJ9h7JO0ZzVt8qOwNiGdxKMW6hrtFo
	 a5tWUZLakstd9aljmPuKFY63a2bFhcZfgCj7Ad96N6qa6s24hxBgxwHn2HeLyTZ6fP
	 X+fmvPta6ILhdaWuTvKKRTmJHhPYssFBl6NGnKSrB7DUjF3mQJ2L5mSTjSrJvGnQ3b
	 zin6fQm/DOfbFnvNLyi/Pg4FXu7dGsEs78XOSGZRwNumv/RUizVqHe6GE9zyQbBb9y
	 o9StdWYawQGxQ==
Date: Sun, 24 Sep 2023 20:42:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Lucas Stach <l.stach@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/2] arm64: dts: imx8mp: Fix SDMA2/3 clocks
Message-ID: <20230924124224.GC7231@dragon>
References: <20230819105002.132750-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230819105002.132750-1-aford173@gmail.com>

On Sat, Aug 19, 2023 at 05:50:01AM -0500, Adam Ford wrote:
> Commit 16c984524862 ("arm64: dts: imx8mp: don't initialize audio clocks
> from CCM node") removed the Audio clocks from the main clock node, because
> the intent is to force people to setup the audio PLL clocks per board
> instead of having a common set of rates, since not all boards may use
> the various audio PLL clocks in the same way.
> 
> Unfortunately, with this parenting removed, the SDMA2 and SDMA3
> clocks were slowed to 24MHz because the SDMA2/3 clocks are controlled
> via the audio_blk_ctrl which is clocked from IMX8MP_CLK_AUDIO_ROOT,
> and that clock is enabled by pgc_audio.
> 
> Per the TRM, "The SDMA2/3 target frequency is 400MHz IPG and 400MHz
> AHB, always 1:1 mode, to make sure there is enough throughput for all
> the audio use cases."
> 
> Instead of cluttering the clock node, place the clock rate and parent
> information into the pgc_audio node.
> 
> With the parenting and clock rates restored for  IMX8MP_CLK_AUDIO_AHB,
> and IMX8MP_CLK_AUDIO_AXI_SRC, it appears the SDMA2 and SDMA3 run at
> 400MHz again.
> 
> Fixes: 16c984524862 ("arm64: dts: imx8mp: don't initialize audio clocks from CCM node")
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks!

