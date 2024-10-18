Return-Path: <devicetree+bounces-112659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBEB9A32F4
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 04:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A6C01C20CEA
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 02:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851C214D280;
	Fri, 18 Oct 2024 02:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="fjQ+gT1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7BF1E493
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 02:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729219086; cv=none; b=eZao4LwxIGx7WHoqDLSb5ih5YtkOtLuf/MbW7ckF5DEmAJa+S1BkCK6/6NtKst/j6j5G31xTLkr0BhvoLO+OTW3xMQD3X03coJ3/YZx/nilaB5qUoNcxAsTWRZ7akm5rzPXB8X6HDKBMz1bTosEdphmHVrYpoDe8BgGcs0adaqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729219086; c=relaxed/simple;
	bh=heaQKw11hc5qaB2d2vqyU7RbGjHobJf5uqsQOlVXllw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pEOl8QuU2hkdaDHc9TyYji0P+BfHkn0oAQbU5jL71oJIFAH7XWToGyORn//5FkrALN8Uf0ZjbtBMHSuuMhBxIj0FaKrA7bgvpCrrfmOtVWKINOAcoKNgXLJ/JuMajGYEklF9vHDam5/bQiOYo7ucFUEhPjBbHeSh5QOnTx1o+RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=fjQ+gT1U; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Xnef9Z8LbbSH2/K9Am5e8TSqtnTg+6+pGRuUnrHcKbk=;
	b=fjQ+gT1UUHHU+hdBfTMI94/sMuW3Dye9R0hpeaCvKPMGWH+q5CWjfiHGBSjGk/
	bYbkDjzB11mBpcjn5hkLX8ReDMxGC8qI1iJCxae9SpRsavxE95pMbaqIB3+WS2Gw
	DtXCCMUCGhlGeYKIYP9j+XxmpEfyXftKgVAVJ52Gy1TgU=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgBHFPfAyRFnNG0_AA--.1855S3;
	Fri, 18 Oct 2024 10:36:50 +0800 (CST)
Date: Fri, 18 Oct 2024 10:36:47 +0800
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
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Document DH i.MX8MP DHCOM
 SoM on DRC02 carrier board
Message-ID: <ZxHJv4zstr0BK2m6@dragon>
References: <20240925160343.84388-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240925160343.84388-1-marex@denx.de>
X-CM-TRANSID:M88vCgBHFPfAyRFnNG0_AA--.1855S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsRRRDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRx7ZWcQ0mcYuAABso

On Wed, Sep 25, 2024 at 06:03:07PM +0200, Marek Vasut wrote:
> Document support for DH electronics i.MX8MP DHCOM SoM on DRC02 carrier board.
> This system is populated with two ethernet ports, two CANs, RS485 and RS232,
> USB, capacitive buttons and an OLED display.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!


