Return-Path: <devicetree+bounces-22060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2DE80648A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 100A1B21206
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4F053A9;
	Wed,  6 Dec 2023 02:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNrPM6DW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50284566B
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D347C433C8;
	Wed,  6 Dec 2023 02:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701828340;
	bh=q7kBWoEGiJcmUw2nDHVAx/qtiR4gJ5tI5mmdyMUBRVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNrPM6DW511/RSweMNjPMc3QBSfFt9qZviV5ipFgzHHQ4le4k4gssNu/82i4UtJF9
	 Ffkmpc2lsYIeygiSRYzwFVFjLc4enTIfJlx4P9WWOhfDO/fA/f7MY6rqlrP+ADfzlB
	 9MvdIy0uk0pP61cRVtcNEP0SMTMniqolKwLg7TSKEE+9fcrM8w54zGBz2KUjNYK1Cb
	 X7/Y0TwqNsE3kSuKQS8tpMAlRyCEDQz4uSJz3wGNRsXjCXl45kPEFLiOwSBBwuWwDg
	 ZJXtvTZA3/YMogjRtLE7EvXo+xBbcIxnaG4Cs9vpdjhUappzM/k2jMxy27stKOorLK
	 BA4k7+Hs7BUsA==
Date: Wed, 6 Dec 2023 10:05:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Frank Li <Frank.Li@freescale.com>,
	Anson Huang <b20788@freescale.com>,
	Shawn Guo <shawn.guo@linaro.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx7: Declare timers compatible with
 fsl,imx6dl-gpt
Message-ID: <20231206020534.GH236001@dragon>
References: <20231127-b4-imx7-dt-v1-1-6ecbd0471cc4@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-b4-imx7-dt-v1-1-6ecbd0471cc4@pengutronix.de>

On Mon, Nov 27, 2023 at 05:05:01PM +0100, Roland Hieber wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> The timer nodes declare compatibility with "fsl,imx6sx-gpt", which
> itself is compatible with "fsl,imx6dl-gpt". Switch the fallback
> compatible from "fsl,imx6sx-gpt" to "fsl,imx6dl-gpt".
> 
> Fixes: 949673450291 ("ARM: dts: add imx7d soc dtsi file")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Applied, thanks!

