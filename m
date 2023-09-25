Return-Path: <devicetree+bounces-2906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7AD7ACDCE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:04:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DA2FB2812EE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B98BEECD;
	Mon, 25 Sep 2023 02:04:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A788DEA9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:04:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D194DC433C8;
	Mon, 25 Sep 2023 02:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695607458;
	bh=CEJComSHyyLs7pI3F7g1Oqd3gaYEQphqJ6FvUzK1XyE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MxkEgMGBwBeIhBQuhdBXuuTPS/xuWGpvBmFYwxkyVlsomwSGrxwgRYz/d+TmyLYjW
	 mNg63LcLJ/qyo4cvQ74Jk+wwV8sTg3U42sadJV6iIMrmJo2MJ8eW4SmctwLDxDkLf8
	 Exo1SazO/I6tOQETojQptsTj0InutWyONy9+7qYNOO62AWaGra2Mm4iTvN77EGoHO+
	 cqKCuPfIYGEdTE8YrKyIngROxxnaU7R57NoqYsjkUDbZVwUAe0RfUZOj4f7p2n+6QX
	 WHKJ4XcA6W23DFHOcpCp1KR93Tt2bEooLmf859lPNfF5aSSQOTiUdtfVWsy8ycyZH5
	 8THA9HdJCbOkQ==
Date: Mon, 25 Sep 2023 10:04:08 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8dxl-ss-adma: Fix i2c compatible entries
Message-ID: <20230925020408.GW7231@dragon>
References: <20230909164403.1084032-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230909164403.1084032-1-festevam@gmail.com>

On Sat, Sep 09, 2023 at 01:44:03PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per i2c-imx-lpi2c.yaml, the imx8dxl lpi2c compatible should be:
> 
> compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
> 
> Change it accordingly to fix the following schema warning:
> 
> imx8dxl-evk.dtb: i2c@5a800000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['fsl,imx8dxl-lpi2c', 'fsl,imx8qxp-lpi2c', 'fsl,imx7ulp-lpi2c'] is too long
> 	'fsl,imx8dxl-lpi2c' is not one of ['fsl,imx7ulp-lpi2c']
> 	'fsl,imx7ulp-lpi2c' was expected
> 	from schema $id: http://devicetree.org/schemas/i2c/i2c-imx-lpi2c.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

