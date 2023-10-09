Return-Path: <devicetree+bounces-6949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF197BDE65
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:19:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98349281593
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D791A5A4;
	Mon,  9 Oct 2023 13:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siAKZGFd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156321A596
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83898C433C9;
	Mon,  9 Oct 2023 13:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696857555;
	bh=ztzncHnGPFaPWuZ166bpyDahB+29GvIXPBNg+KvQPI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=siAKZGFd8OFJLn+c/32SwXUR4Hx8Pajh6djGm1/bF939ysjVWnK3Z64idYws56B16
	 5upm0yFH4ohdS28CRPO9cg6yh5hvd8XCdMITblPEl5dyHpEufcXt0xWLyJTSE+omGW
	 lM5Jg0lDgS1brK97Js84L14ovV2QoTVIRLVyXYG3a1esYYyp3J0YATYiOyZDWhco/Z
	 YkQlR4bTHoPUTUUrW8gXrzg7XoL5bcSXLjjJu1rb5r5jFS8qmIWObUEfXbWMiBymBJ
	 ngajVolOQOYMmbtuQJyjlvMzXTNB7UN3xDVGic0it4NOm9J4f0QWwLPnFMKni0L7Tj
	 1UrvUTVgd3q1A==
Date: Mon, 9 Oct 2023 21:18:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yannic Moog <y.moog@phytec.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	upstream@lists.phytec.de, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 0/2] Add support for the phyGATE-Tauri-L IoT Gateway
Message-ID: <20231009131856.GB733979@dragon>
References: <20230925-tauri_upstream_support-v2-0-62a6dfc48e31@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925-tauri_upstream_support-v2-0-62a6dfc48e31@phytec.de>

On Mon, Sep 25, 2023 at 09:25:17AM +0200, Yannic Moog wrote:
> The phyGATE-Tauri-L is a SBC that uses the phyCORE-i.MX8MM SoM, but has
> a different carrier board.
> This series adds support for the board and most of its interfaces.
> Notably, RS485 support is missing.
> 
> Signed-off-by: Yannic Moog <y.moog@phytec.de>
> ---
> Changes in v2:
> - change license of tauri devicetree file.
> - fix devicetree style issues, no functional change
> 
> ---
> Yannic Moog (2):
>       dt-bindings: arm: fsl: add phyGATE-Tauri-L board
>       arm64: dts: freescale: add phyGATE-Tauri i.MX 8M Mini Support

Applied both, thanks!

