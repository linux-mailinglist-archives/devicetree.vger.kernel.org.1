Return-Path: <devicetree+bounces-113941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 755D59A96ED
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 05:23:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 197061F2702C
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 03:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83335146A60;
	Tue, 22 Oct 2024 03:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="qM/lh1tX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9B418C36
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 03:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729566914; cv=none; b=ihNsIrr46kzjbfbZEvdtpc6nwmS0ahRZYcnBRSTCqThqVRl3NadEO/UjIMxjFRA5xm3JI4V0nnTEpdIuiB7Yjgf9zjJ+UAAEKrAa4tX346+PIk12+b00L6fLiGKQp/vtTWt6HUkFR5vzZcO8JfvMY2mofPAP37H3XmwMXEVtsCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729566914; c=relaxed/simple;
	bh=eKd83n5XQqNhbcSlk2grIrjJrBup8PWFwKFKITSmi4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j+LMKgcqKMEo+kAvwMpPGaDXxBAVOGTvIH6oBfJnFKZGPBu/0m7ZgDNXkNFfkSM7cRT1UlJEGLkEDxwbhFrA/Ez3+O/QXcNSQ+fWV13Xwz//4zv15D0To4RasDIieTJLSmnSuFJ9t1V3dTQViX1w0BdOvGe3XHqPymjKObBCK9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=qM/lh1tX; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Sn/mFaj18LI1Hw0I0QZ07oKlvBxeYVJUUnCwEM5aHoE=;
	b=qM/lh1tXD0vimTF/SVP/V8Y5JueyT+syfv+KE0r9yRPt13HtlhCnYMwcgKwPAz
	ys3dmUgXfAr0TyLNa7pF4TwHPHbrgDP0+Y5GLl4OVuXJPeP58V2xNMaI/gv/hAIp
	ep5LvpwiNxscdotJC4Y/dbfiUm5nYzGCxYF2QWZnICBPo=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgD3OahiGBdn54GUAA--.5372S3;
	Tue, 22 Oct 2024 11:13:40 +0800 (CST)
Date: Tue, 22 Oct 2024 11:13:38 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Parthiban Nallathambi <parthiban@linumiz.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Document i.MX6DL DHCOM SoM on
 PDK2 carrier board
Message-ID: <ZxcYYoUMscYe5Elp@dragon>
References: <20241015235926.168582-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015235926.168582-1-marex@denx.de>
X-CM-TRANSID:Mc8vCgD3OahiGBdn54GUAA--.5372S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIiL0UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQOAZWcXFF8PnAAAsH

On Wed, Oct 16, 2024 at 01:58:35AM +0200, Marek Vasut wrote:
> Document the DH electronics i.MX6DL DHCOM SoM and a PDK2 evaluation board.
> The evaluation board features three serial ports, USB OTG, USB host with
> an USB hub, Fast or Gigabit ethernet, eMMC, uSD, SD, analog audio, PCIe
> and HDMI video output.
> 
> All of the aforementioned features except for mSATA are supported, mSATA
> is not available on i.MX6DL and is only available on DHCOM populated with
> i.MX6Q SoC which is already supported upstream.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!


