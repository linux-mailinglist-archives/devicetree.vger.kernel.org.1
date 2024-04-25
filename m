Return-Path: <devicetree+bounces-62570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1325F8B1AE1
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 08:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9721B1F23817
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 06:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094FA3FE2A;
	Thu, 25 Apr 2024 06:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="J0Qlka3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F31249F9
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 06:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714026174; cv=none; b=toxXeDeo3YJ8GEh4VPgQI1dNhlLomTEsSsuRIlTcOkpF8M/GGnUc51rD3eq6Wn2hM+m9Sb/7pCI5RGxh7Osd1sdfmhtJ2UeSBTa/X/IguYwmgY1r2w2RjppRt+T49ql/hIGQcoWKELOwCbuLowUJqO+woeDgxh0wDHM6yilM97s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714026174; c=relaxed/simple;
	bh=Ue4DWi0QD52B1nKNAzf4PVh+IQ4I0X4KROOINeGW2bs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H4vGfueC9V7VVE/17El4q/O2NKWVFTssvNVi46XcqLm5EU/Ntx4HR++xGPiZoKK6sANyM5t2m1svLO355cpw5y8qVZqU2Qwy4H25xsw+Cuzka6LaKbR/J7GSMmXO847a9FmU5OMfChXxWlGHeUR6whOauHhl9LX2lM3ozMR2Rs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=J0Qlka3k; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=SDHGiDEJmLvzRYT3TaLtU3T7lep9rxFUwhCFeg6kHtw=;
	b=J0Qlka3kTVlTFb8uiCxic55R3RBtEYwhMf4GMtVm4zZF1hdPRGR+4HEwLjxjxo
	V4XFkDSIWL2PFu/p7c5BTQ7GLodguJWLFkto8QvqB1zH8aQkfe/DI7RZ/yuvGTLD
	QqxjSR38R02fhrWM8AM8zCrYTxfpPunQ4R7GA5VYc2xXM=
Received: from dragon (unknown [223.68.79.243])
	by smtp2 (Coremail) with SMTP id C1UQrADXPhiB9ilmE2pzBA--.45333S3;
	Thu, 25 Apr 2024 14:21:55 +0800 (CST)
Date: Thu, 25 Apr 2024 14:21:53 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
	imx@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] ARM: dts: imx6ull-tarragon: Minor changes
Message-ID: <Zin2get3gcS8+AQe@dragon>
References: <20240416190659.15430-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240416190659.15430-1-wahrenst@gmx.net>
X-CM-TRANSID:C1UQrADXPhiB9ilmE2pzBA--.45333S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxtxhDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDwPLZVnxcqq3tAAAsR

On Tue, Apr 16, 2024 at 09:06:57PM +0200, Stefan Wahren wrote:
> This small series contains 2 changes for the chargebyte Tarragon
> boards.
> 
> Michael Heimpold (1):
>   ARM: dts: imx6ull-tarragon: fix USB over-current polarity
> 
> Stefan Wahren (1):
>   ARM: dts: imx6ull-tarragon: Reduce SPI clock for QCA7000

Applied both, thanks!


