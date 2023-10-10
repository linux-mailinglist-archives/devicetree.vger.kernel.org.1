Return-Path: <devicetree+bounces-7074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8847BF06D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89C771C208DA
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381B7621;
	Tue, 10 Oct 2023 01:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABRHxKD9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A5738E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 036FEC433C7;
	Tue, 10 Oct 2023 01:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696902253;
	bh=FF6IvBwDHy6sXitMPI8GyfrFWNdDf68fGBCnEc0nfOo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ABRHxKD9sDYVXLqd1cWQ6i8JUJBmhIYSB0XwivLMKzdJWAv4fw8FaaZdnSY7LiUHi
	 iF1b60fQzlhl9+CD3R3McdzWs0RoWUY4GYceKVMrAwVeuvVtgAk82Z8cxIWWLRaibU
	 6GOQMBtSaerLXri4VHOluHYNuP7Ln00weK12Fd1EDyx3glZy4HJqM5p6oyyjRAI+T+
	 CGsoSldNoY1IWjmI7oYpukkWFfoivBReXXbFZVwSZKnJ2IiNzhHKFZlIbOshLenZKn
	 0W0LaLkEeHrF96lGSgA0HPD/SI4MFbMxnDYl1jLd/kM6lT8s8BdzojlzdvD4A0Mh1f
	 A172gkcgxLIcw==
Date: Tue, 10 Oct 2023 09:44:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Marco Felsch <m.felsch@pengutronix.de>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 6/7] arm64: dts: imx8ulp: update gpio node
Message-ID: <20231010014400.GD819755@dragon>
References: <20231001-vf610-gpio-v5-0-8d873a8f224a@nxp.com>
 <20231001-vf610-gpio-v5-6-8d873a8f224a@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001-vf610-gpio-v5-6-8d873a8f224a@nxp.com>

On Sun, Oct 01, 2023 at 04:27:57PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The i.MX8ULP GPIO supports two interrupts and one register base,
> the current fsl,imx7ulp-gpio compatible could work for i.MX8ULP in
> gpio-vf610.c driver, it is based on the base address are splited
> into two with offset added in device tree node. Now following
> hardware design, using one register base in device tree node.
> 
> This may break users who use compatible fsl,imx7ulp-gpio to enable
> i.MX8ULP GPIO.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks!

