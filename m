Return-Path: <devicetree+bounces-19039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E77277F9796
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:43:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5487FB20A15
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26321398;
	Mon, 27 Nov 2023 02:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFwUiUTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966D7EBC
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:43:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7679C433C8;
	Mon, 27 Nov 2023 02:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053023;
	bh=5z40dfgaEb6RQO8XoHtHaxIii3Z0u2135a55C6fTJsg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFwUiUTQY9U/ZnxDn76B8dvKypkeKX7cN1ewuYbQrYhmS01b+6PUA69E/sdcF0WeY
	 ELpV4b41SbpxdQatiJEwKD8obyQjpmOWAPSZFCXaKnuS1XNaPvdBMkAmb3pPUI4BqB
	 A9XySh9x57hnq94VjnQ3iAILlpKEamg15GkwGF+Mvz2RSrSjbdrTw1r8P+PLyLMCIq
	 ogrdPtkjog7DVIDCEcbzdXDLOYLwYWjAMN6/TgMiGBCDY75zu1yBqzwjNVsKoZo4Pc
	 wdOLVZde/2yaM/V2pG9f973WfYFEHX1FOIPdmASZIDGH7+yDM2xUlmN8c9p0fa+JWI
	 LLEaVimOqcazA==
Date: Mon, 27 Nov 2023 10:43:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-venice-gw72xx: add TPM device
Message-ID: <20231127024337.GN87953@dragon>
References: <20231018180922.2164324-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018180922.2164324-1-tharvey@gateworks.com>

On Wed, Oct 18, 2023 at 11:09:22AM -0700, Tim Harvey wrote:
> Add the TPM device found on the GW72xx revision F PCB.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

