Return-Path: <devicetree+bounces-22076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC705806573
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 04:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86D5E1F21746
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A46C7492;
	Wed,  6 Dec 2023 03:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDfkM6tH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC1E2F5F
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCEBDC433C8;
	Wed,  6 Dec 2023 03:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701832174;
	bh=zcWwd/zNBnDd5iKkMSGKOiqlIWkP3cLmgX22BTg2xIA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IDfkM6tHqIMnhm9R8ZdcVRqO0AN34bh4cDg45vPOw8hX9aErAhXF713FUFqz8R+Pb
	 yQz90VlN53KlcFwkBJEwvvwhepmZjK/KxfMr8kTaS4ZgisUtJg3yV+tAxRnRYC+TFB
	 KW4nxC3ri9GvHr0iTP9VuMyGLG+UlTGKiJ0Mb98mHBOUZI+v2Dubd+UXRl9jOIg/hg
	 TSv19PsVcMvSGIct4NICwQryfPr5H2halImqL3cZ5B3Ww2tkvUvAF/zK/Ep9sO7js/
	 Yk3ohtiuSQx2usKstiJB48qYSmPv6QI8MRxtT/EV3nXu8FGl8f9+72JMP/1rHFaqrj
	 cTArZ193BxBIg==
Date: Wed, 6 Dec 2023 11:09:26 +0800
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
Subject: Re: [PATCH v1 0/2] arm64: dts: freescale: verdin-imx8mm: add support
 to mallow board
Message-ID: <20231206030926.GP236001@dragon>
References: <20231201150733.24454-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231201150733.24454-1-francesco@dolcini.it>

On Fri, Dec 01, 2023 at 04:07:31PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add Toradex Verdin IMX8MM Mallow carrier board support. Mallow is a
> low-cost carrier board in the Verdin family with a small form factor and
> build for volume production making it ideal for industrial and embedded
> applications.
> 
> https://www.toradex.com/products/carrier-board/mallow-carrier-board
> 
> Joao Paulo Goncalves (2):
>   dt-bindings: arm: fsl: add verdin imx8mm mallow board
>   arm64: dts: freescale: verdin-imx8mm: add support to mallow board

Applied both, thanks!

