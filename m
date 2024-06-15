Return-Path: <devicetree+bounces-76019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F96E909701
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 10:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78E9D1C20FBA
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 08:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F0218637;
	Sat, 15 Jun 2024 08:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="KX0pp4st"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25AD618052
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 08:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718440803; cv=none; b=SojLQ9IIuwt15icMmGNxwTn14A9bebfzftMv9hPuELLGxWKbU8UGkzeK5aVmXddOJluCIp86Fr1WELkwnVBqJ1sIhW6Lfr/i6amWQgkzyG6ATrWgRECOaNq2JmQpdJisiwD7sGWcAlEB/VNEb+hk0yO4kkbhRW3r85ELIVxI/gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718440803; c=relaxed/simple;
	bh=qPi2qqlet/uKo3qQqMuCJAlAKPQqdN5aev7nEX4SOUs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XjIq4MDWjFUA43n6wwmmgayqKSOvpARC8f3MWSgt0nLFdJyNxQIaQHr2HyjXHlttKhuxJBWEjw2BJQaSN5GM6FTkCQe/ywR8pW5IgJ4Ao+fSRW3PSWEEFGVdbpzRoTfUmtzf4hhGvt7aR3T6AbUqqvYgEGQDVKtlCOBDoKAUPYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=KX0pp4st; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=7KGoNaM/nKBdaFeyByaGEouk6XwjZQxq4XJBgfYLPYA=;
	b=KX0pp4st4uZ9pja+iqpNVqe/CM0KP+5reCwg2b3/uyDIChfgrcI9RKcHBGyw8k
	gNlOGkO7BAB12jzqFk60WOTVZqDEdRwbeXeSRImmJ6JY+Qek+MRv3f+oDBI8S8g2
	DiMHnnRGdavRq9IzKM2BcQTgu4b9indrD7ahEZXf5ZIMg=
Received: from dragon (unknown [114.216.76.201])
	by smtp2 (Coremail) with SMTP id C1UQrABHrxhFU21mZTa1CA--.59962S3;
	Sat, 15 Jun 2024 16:39:35 +0800 (CST)
Date: Sat, 15 Jun 2024 16:39:33 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx: Add LVDS port data mapping on M53 Menlo
Message-ID: <Zm1TRRwicGA1dS/m@dragon>
References: <20240522222229.366904-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240522222229.366904-1-marex@denx.de>
X-CM-TRANSID:C1UQrABHrxhFU21mZTa1CA--.59962S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU3jg4DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDwf+ZVnxc0hK7QAAsn

On Thu, May 23, 2024 at 12:22:02AM +0200, Marek Vasut wrote:
> Describe LVDS data mapping of the LVDS-to-DPI decoder input port.
> This fixes a warning reported by lvds-codec driver:
> "
> lvds-codec lvds-decoder: missing 'data-mapping' DT property
> "
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!


