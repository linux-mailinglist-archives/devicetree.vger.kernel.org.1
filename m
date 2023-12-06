Return-Path: <devicetree+bounces-22067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D217C8064F1
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F3EC2820D7
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 820A863B3;
	Wed,  6 Dec 2023 02:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1pbYF3r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B25525E
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:26:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 975DDC433C8;
	Wed,  6 Dec 2023 02:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701829611;
	bh=cpFL9MGQgPJ2RJM2R2TvLlDa4Q3S3v1RV1gPP5xUbQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G1pbYF3rEDuNEB/OJDqJq97XDGHkQk4l7Z59jbAbgwSZdmuwZKGLW0kbKQcApW9CG
	 W61N/zjW/M+06sSbkwojX9uparXIrm8EpgFqWv3oqaU45nBQa1YcUBxNU2aoAJQzCt
	 gYP6bweqkBqKZXGjof8sk5PSsVBINJqLi/jIXKtHuyOXK3Xa5HxePfGUiBf5Svj1on
	 qHL5ruA1vVgDodtyArb8BbQDvh8niN8e57fG4gIkbormuDWDEzE8CgiukTiWa+k3k5
	 +Oou8uuhviWGN4e87QR3NJK3gbu2vL3ysnD1CYA566zzqY7wht6CjxQPolIlMSDKNA
	 y5MnL2/HT7BLw==
Date: Wed, 6 Dec 2023 10:26:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 0/2] arm64: dts: freescale: verdin-imx8mp: add support
 to mallow board
Message-ID: <20231206022645.GK236001@dragon>
References: <20231129164022.143340-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129164022.143340-1-francesco@dolcini.it>

On Wed, Nov 29, 2023 at 05:40:20PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add Toradex Verdin IMX8MP Mallow carrier board support. Mallow is a
> low-cost carrier board in the Verdin family with a small form factor and
> build for volume production making it ideal for industrial and embedded
> applications.
> 
> https://www.toradex.com/products/carrier-board/mallow-carrier-board
> 
> Joao Paulo Goncalves (2):
>   dt-bindings: arm: fsl: add verdin imx8mp mallow board
>   arm64: dts: freescale: verdin-imx8mp: add support to mallow board

Applied both, thanks!

