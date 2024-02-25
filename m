Return-Path: <devicetree+bounces-45658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F813862A59
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D4327B20E72
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 12:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 383AEEED5;
	Sun, 25 Feb 2024 12:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Bl4Zzsgi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E8A524C
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708865158; cv=none; b=E4UFeRzxtsTtVja21xaJHU6x8pMatPFY+2aq+SvR3b/3aYOQVXDDjXl/807UZD+oPWPLxu9xrKtZK2ZQbZE1x3En3/qXjkvxcLhcfpC2NpuXUSx7PwGP7I6pohfJfnG1w5xWgifRRghymTY99BLn+rdrVSzpPi00DwuR4J/8yZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708865158; c=relaxed/simple;
	bh=98EK7o17KdYYeH5VaUtpBP1pSS2YCoY0XpePTaka6Rg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSfpUVRiC0ek3A7jzMYoa8Ob6Wh6asyRjZLuePGrMj3a66KHEFzVrklc84nL2xT9B6wyzBUFGQSP8pTTn0uX/mf14v9pgPOh0mw/bCcQEd32PYMpYk9850P1HibeKUgA2/F0bOYLyPvmcB7uQUenOSXo+0uTS9gsKHNJPgyZChU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Bl4Zzsgi; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=MknEP73LPl7FjQwm9sbueTCW6+0jZsOKWGaUO7b4pJk=;
	b=Bl4ZzsgiNQyESyn+ZFbi/aVo6ry1Yql0uVSib7G4eHETmXpIvSePzDDFEBpvnw
	dweW+9rE9Mo+I1QeW8i3mP4hDtP7+cA8TjOTvlGC1ac2Sy1xF3Kx/Zs/Izq0NrEH
	UTh/u0hr9xOk0SzFhf69WWLGia7/10FEXBVYVNdKeysD4=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrABX_mxcNttl7B5XBA--.17880S3;
	Sun, 25 Feb 2024 20:45:18 +0800 (CST)
Date: Sun, 25 Feb 2024 20:45:16 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: freescale: imx8mm/imx8mq: mba8mx: Use
 PCIe clock generator
Message-ID: <Zds2XDdwHX6veVDe@dragon>
References: <20240220142306.2514269-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220142306.2514269-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:ClUQrABX_mxcNttl7B5XBA--.17880S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIxwIUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDh6PZVszYWKHBgAAsQ

On Tue, Feb 20, 2024 at 03:23:06PM +0100, Alexander Stein wrote:
> PCIe reference clock is provided by Renesas 9FGV0441. Reference this
> instead of a fixed-clock.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


