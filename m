Return-Path: <devicetree+bounces-239063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BC23DC6124B
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 11:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B45C334BC46
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 10:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC22521FF48;
	Sun, 16 Nov 2025 10:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="NgY/oeuO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E34029CE1;
	Sun, 16 Nov 2025 10:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763287347; cv=none; b=mfbKAuX4O6SdXIl3F001Z0kM8FzbNWlZaaQ5+gMkO+vcS118UoovRbgJkr57nyKWKQChXat2btBFu7xxLMANZH8v9+q9BMjKgweKd1Xwtd3MCJ1R6vsGJdSKWMk6G12K7GIZWF7K9KzFK2MibXHF4XepjowJzcxMv6ev5q0zRJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763287347; c=relaxed/simple;
	bh=uAW3blsz55enleivTpN9Xw1JgjjXuVWxHWLz0MZc6+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XRdS2qAQqXkAXpuBX7qGstZbNsGRlVPun1rPAIuITp9vKblipizFcVZW1PtZPVjLq3Tegdn9hleZh6ph0NZFLqFfxS7a5A7Coe87lLTb4SZITCJ+1NoURUU45hFqHNS/lsYDYQTumCExUu5Js0evFCpqQ65XZkfnJJQd/pGJszE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=NgY/oeuO; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=8mkFSpSXqhy3JNKuZq7z1gqffCcwGeVX1rPlpkQrCOA=;
	b=NgY/oeuOAaDhu16In1tbHjJuD7+j7BXkEayRvDJNiO2iR/SSxD/KF8YW1DTozy
	SDpWwwOoL/JthFdULy0EV0vCctO2xy8yHXNzAYAsbeEfZEdVBGh7SHR4l1SVGvkL
	3G2vGkJiJLw2/K1Qhu/hS8zKySliB+JgnscPZbyyX4fy4=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgBnPs4PoRlpOsYjAg--.8123S3;
	Sun, 16 Nov 2025 18:01:52 +0800 (CST)
Date: Sun, 16 Nov 2025 18:01:50 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/4] arm64: dts: freescale: imx93-var-som: Align DTS
 with hardware revision
Message-ID: <aRmhDvdkEvD5cir2@dragon>
References: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251030120127.509933-1-stefano.radaelli21@gmail.com>
X-CM-TRANSID:Ms8vCgBnPs4PoRlpOsYjAg--.8123S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUO7KIDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNRANcmkZoRCEFwAA3I

On Thu, Oct 30, 2025 at 01:01:20PM +0100, Stefano Radaelli wrote:
> Stefano Radaelli (4):
>   arm64: dts: freescale: imx93-var-som: Add WiFi and Bluetooth support
>   arm64: dts: freescale: imx93-var-som: Add PMIC support
>   arm64: dts: freescale: imx93-var-som: Add support for WM8904 audio
>     codec
>   arm64: dts: freescale: imx93-var-som: Add support for ADS7846
>     touchscreen

Applied, thanks!


