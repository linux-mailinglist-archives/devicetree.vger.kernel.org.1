Return-Path: <devicetree+bounces-45664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC21F862A72
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 14:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7834B1F21533
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0892B10940;
	Sun, 25 Feb 2024 13:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="T8JWtKxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F098E469E
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 13:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708867451; cv=none; b=Y59Cyz6HP+rEouk3o9+L0rSIEutlAEmmlZ3f7uqWduoqeObdp16LmOuO2HJivGMjVEkZOtRALWxUiK8fW2UvHQclYTxWIMHy/Ow/YX6X7FeBxEpJgDXGjb9VaabL+SiM78d6joHHLkIl82nyfpNQwobOtfUdTBkFBN1ERvztki8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708867451; c=relaxed/simple;
	bh=/2Yp81VImY018uDqHCA+Z8XaxqRQZmKHHEVJyxGO6XM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t6LMrdFARa8tbwPr9vL9F9b1+x8wVveOm7x5Z5UYdzBojhUppItI4j1eWJF3eHZGEzNSyEPGESDoUIFAFn5qAB6MV8Z3749Jmg51jtsjcZmIhCqbulK4j+EoqQv9XJNOSRTnhh1SVDhjRqd3kjrCZmraAaZyC0UE4UNo4d/Sq8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=T8JWtKxE; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=0XD/+hdQMUOcF4PoNzYUM0KOR718DxdzMrBJi9kJmJQ=;
	b=T8JWtKxE6yBsKr8m+/lNPAkhyXFmK13SLCtGFuXxwiIiPNgzaIGMkuFbl6KLjz
	1fVxb3tFlKnZpCMZj5ZeueY5Ns+aNsGBZAQN2rMZgJhzfwwqbIhMEGTBluFNgcB8
	Gaf/TZA5zKodeWQeNbG5dXu9ryw2QRh1dUK1/nCGSZHnA=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrACnTm1SP9tlXXdXBA--.59791S3;
	Sun, 25 Feb 2024 21:23:32 +0800 (CST)
Date: Sun, 25 Feb 2024 21:23:30 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: Re: [PATCH] arm64: dts: imx8mp: Fix TC9595 reset GPIO on DH i.MX8M
 Plus DHCOM SoM
Message-ID: <Zds/UlTwBIpOp1rF@dragon>
References: <20240225033359.416169-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240225033359.416169-1-marex@denx.de>
X-CM-TRANSID:ClUQrACnTm1SP9tlXXdXBA--.59791S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIksgUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDxSPZVnxcfNyBQAAss

On Sun, Feb 25, 2024 at 04:33:42AM +0100, Marek Vasut wrote:
> The TC9595 reset GPIO is SAI1_RXC / GPIO4_IO01, fix the DT accordingly.
> The SAI5_RXD0 / GPIO3_IO21 is thus far unused TC9595 interrupt line.
> 
> Fixes: 20d0b83e712b ("arm64: dts: imx8mp: Add TC9595 bridge on DH electronics i.MX8M Plus DHCOM")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


