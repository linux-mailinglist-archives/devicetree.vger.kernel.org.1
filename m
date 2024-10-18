Return-Path: <devicetree+bounces-112667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CE19A331C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 04:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C56428221C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 02:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8405126C10;
	Fri, 18 Oct 2024 02:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="dgC29Ko8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3166414E2E8
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 02:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729220167; cv=none; b=FZRLH1xs4bDmOhU+as56LL9hNtpL6Vw+in5kv1OJLw83K+IAGDhDeoEinLo5Jte2EEhMPlv+DX/Y99QBGfTXIBWqNFDP9wkHMzc74rW2W0f2lLCUP2hY8JazFlHCQauysdGnatX4zz5CF7FZH83vKoZC27m9SZuFWBUS75JSqac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729220167; c=relaxed/simple;
	bh=Q8R7iDFXQwCRECjo3ld+768xBlP+Bja+MFhGCUI6ZxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h1uho/WLQq7LO3U+TqK026wAucOeiNupd2HFblLRTEZ7AS94I6nbIndakMhp1OQZrGlZOkX5FQ/WUX9QIgYTOIGGAu46/J/Yb7GJ2YcKIib5ORKzQtTAA3xSHSUjF5p7/VYQYC03Mw6Tx05eIBRSeR1Vuc+QxkJYHbwW+K6B9ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=dgC29Ko8; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=13wuN4XD2wzt1dmsOfk8eULzyvU+BXjxE+nzHwIP3y4=;
	b=dgC29Ko8hR3CS/ylcc0XOj/0GGlBDUC7W/XMEwc56Ts5lR7XrYUxSmDnOcDkzQ
	HfJGYT9IzmbYW+jbigTFgE/kqs6nh1Uf8V5EaxSNXu0JqQkfZH2x0RFnUlA0V0XQ
	2Ij3h2twA/U5uhK6exWTXxfajnLOdMF+vJaHdpPvNCM8s=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDH6KABzhFnNA1BAA--.1912S3;
	Fri, 18 Oct 2024 10:55:00 +0800 (CST)
Date: Fri, 18 Oct 2024 10:54:57 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, kernel@dh-electronics.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Document DH electronics
 i.MX8M Plus DHCOM PicoITX
Message-ID: <ZxHOAc8EXIcsr6XL@dragon>
References: <20240928234949.357893-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240928234949.357893-1-marex@denx.de>
X-CM-TRANSID:Ms8vCgDH6KABzhFnNA1BAA--.1912S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsEfOUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERN8ZWcRtk1MvQAAsn

On Sun, Sep 29, 2024 at 01:48:08AM +0200, Marek Vasut wrote:
> Document support for DH electronics i.MX8M Plus DHCOM SoM on PicoITX carrier
> board. This system is populated with serial console, EQoS ethernet, eMMC, SD,
> SPI NOR, LEDs and USB 3.0 host used in USB 2.0 mode on PicoITX.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!


