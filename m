Return-Path: <devicetree+bounces-22032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1146F806429
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFFD628133C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2330BED6;
	Wed,  6 Dec 2023 01:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tmb2zilu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051BBEC4
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 01:32:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 710C8C433C7;
	Wed,  6 Dec 2023 01:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701826373;
	bh=lxYbfjcG7mONb9ZNDxGcdgQVT9vJ4xvTWN/HBECty2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tmb2zilu85kSH4A7EFyLZBdCB900pAbA0nQvBGqJ3Zlih8Z8/muDvwjbcWWrocpJx
	 kodW+65B+RLzT9S6Meg0tFozw7JI0pw7xgS3Q/YDrQ5ucwOifW6CVH/VpN2CI1DigH
	 owyGJT46DiTFw/ojMtklb6BKQWKiMV8x35koC6Bt6aSOq9223ju8Jv58X+mNI9L2Wq
	 nqZkYNyxBZ8r4qrQIJS0lKNw9pwHzxicuoMXkBuNZInke+F8IejZv9WgTmT46CYr0c
	 qe8Il70cCLmdKzWFTuPdcxkBV3mCP7G6M0GWvpXirrmtEEauZ+rgBgvuLlbhzAWjbu
	 rpBheLQZR1xqQ==
Date: Wed, 6 Dec 2023 09:32:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lech Perczak <lech.perczak@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: nxp: imx7d-pico: add cpu-supply nodes
Message-ID: <20231206013247.GY236001@dragon>
References: <20231117232352.101713-1-lech.perczak@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117232352.101713-1-lech.perczak@gmail.com>

On Sat, Nov 18, 2023 at 12:23:52AM +0100, Lech Perczak wrote:
> The PICO-IMX7D SoM has the usual power supply configuration using
> output sw1a of PF3000 PMIC, which was defined in downstream derivative
> of linux-imx (see link) in the sources for "Android Things" devkit.
> It is required to support CPU frequency scaling.
> 
> Map the respective "cpu-supply" nodes of each core to sw1a of the PMIC.
> 
> Enabling them causes cpufreq-dt, and imx-thermal drivers to probe
> successfully, and CPU frequency scaling to function.
> 
> Link: https://android.googlesource.com/platform/hardware/bsp/kernel/nxp/imx-v4.1/+/o-iot-preview-5/arch/arm/boot/dts/imx7d-pico.dtsi#849
> 
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Lech Perczak <lech.perczak@gmail.com>

Applied, thanks!

