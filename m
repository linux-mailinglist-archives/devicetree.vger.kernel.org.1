Return-Path: <devicetree+bounces-239092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4804AC614A6
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 77992289CD
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41732D46D0;
	Sun, 16 Nov 2025 12:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="fTEGyHXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565C424EAB1;
	Sun, 16 Nov 2025 12:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763296168; cv=none; b=UrOgK0DSz/6sMAMv4lQmRVyf/fpURVhrddbwuNlnAkFv7lbuubPpT8MKBFZ/+0G6PmwXneP1ThAPQJU3SzZ63d2Psdj67layhU7l0ig1W3Kf+Z7cZ/ucaJs7wHLDsLpxypF+0W+tzs8EJupsV28/BYmZywc3t4hD5zUCIgIy8Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763296168; c=relaxed/simple;
	bh=YClbmRld7zolI5vdnZjYnN75K4IVEbCiZoL8NqI2LLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mNqGy6lMu1s7+k4H2+vpQVp+y/XAyj6j8seBWNehVdwC1Y3EwV7x10Tuv7o2CtXk4JYH/OI695MoqmtKCDndjGW/oL/fJyTMSm9Vo7nUytyrdAOWxYeaeHt5xzpWEfpquxB2/ZVLC7OEvjvSJC7Fs2KIFXLIOiCmoNvZGsvfKI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=fTEGyHXs; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=53I/2kcZjlKfPTnbOipCisLCf2u/EtrbHyC2OuS8iX8=;
	b=fTEGyHXso6w6OD78EhmpLqWOPHEMlaPYXyHdPMGO+bFPT6gGMX+WohQxl8Asng
	zR98VI700Twk7KiVyoN/+wyzTw32ab8dzNMrKBk1xs5Q6ZX/9Ukf2PzfnQVajvs5
	oz4I87vo9VTAf/tvBamJDmIyqYQa2IxkevUvyf1+dtdG0=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgC3d2N0wxlpKqM7AQ--.7952S3;
	Sun, 16 Nov 2025 20:28:38 +0800 (CST)
Date: Sun, 16 Nov 2025 20:28:36 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Add missing LED enumerators for DH
 electronics i.MX8M Plus DHCOM on PDK2
Message-ID: <aRnDdLxl-2gKYcVl@dragon>
References: <20251104015031.219863-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251104015031.219863-1-marek.vasut@mailbox.org>
X-CM-TRANSID:Mc8vCgC3d2N0wxlpKqM7AQ--.7952S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUOzuWUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiOBauFGkZw3Z1JwAA3D

On Tue, Nov 04, 2025 at 02:50:13AM +0100, Marek Vasut wrote:
> The LED enumerators are missing, which prevents the LEDs from being
> accurately told apart by label. Fill in the enumerators the same way
> they are already present on PDK3.
> 
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>

Applied, thanks!


