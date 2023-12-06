Return-Path: <devicetree+bounces-22035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 017B8806430
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A64FC2818F0
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9918910E1;
	Wed,  6 Dec 2023 01:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1l8OICo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB02EBC
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:37:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63C9BC433C7;
	Wed,  6 Dec 2023 01:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701826663;
	bh=I0bytNA2diIOyGFy1O3wHC7xlPlvzconlcUmRjza9RU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u1l8OICo67PYF14FjVUPWzW3TI/SyPe75hQAJXVp8f4zOWqz7bGSfdS00hWGea0FS
	 UpLIRK6QiCGTgvO2utZkaVg9DFg8TlE0vEoKTIGqwb1pSPq2miCo2jZ7kdAiUjA3Ng
	 coHxrc/DvSNC1w8aEffJKOq33MKAuksyG5ecXbkHgAcxMR6nU9BY9VGZs6t5kOSoGP
	 apfQogME/KGPoHfUDrorz26wcR7hZF5rfZMhIpZilwlokSbXQlt6YhkdrOiNm5a1ad
	 dSY+pBVAKicWgfPuUoc/+n+X+jABqXYlQR3WPDN7mMZaDYgEqGY1t6zUi4SF4bvo6X
	 elLnXIlt1FxUw==
Date: Wed, 6 Dec 2023 09:37:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hiago De Franco <hiago.franco@toradex.com>
Subject: Re: [PATCH v1 0/3] ARM: dts: imx: Add mmc aliases to Toradex DTS
Message-ID: <20231206013737.GA236001@dragon>
References: <20231120205818.33120-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120205818.33120-1-francesco@dolcini.it>

On Mon, Nov 20, 2023 at 09:58:15PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add mmc aliases to ensure a consistent mmc device naming across the
> Toradex SoM family, with this commit mmc0 is the on-module eMMC
> boot device and the not available mmc interfaces are removed.
> 
> Hiago De Franco (3):
>   ARM: dts: imx6qdl-apalis: Add usdhc aliases
>   ARM: dts: imx6qdl-colibri: Add usdhc aliases
>   ARM: dts: imx7d-colibri-emmc: Add usdhc aliases

Applied all, thanks!

