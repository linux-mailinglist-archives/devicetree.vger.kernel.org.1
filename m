Return-Path: <devicetree+bounces-45660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E49862A5B
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BFD21F214C5
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 12:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7466DDDA;
	Sun, 25 Feb 2024 12:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bV8oTYQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4898379D3
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 12:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708865338; cv=none; b=sEM0U4qfVPXFRec2IocAzKvPcDDEOSIVyWJLKy9iIV3wSRr9Sv/etEc7scdvyslELnlrX+HQctyp2uHTQ55uN+zzcEMrVVPZB+/pCZm+yNQzw9xOUSbowHvOFb6u+xw3fPdZB53OcpoWk7bvNNVef7Kqtb0VO7TJmrPBUL7FndI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708865338; c=relaxed/simple;
	bh=yGBa2KuXugilV0lgLv3+F6TLq53tLG5Z/iVoQ/TMyZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RPHa3ptCqBQ8sQ+zTjwhKPMlABoibsaiZfUdX0NvnsQLaMvOkDZ09MCKRDy90Js9elHycQm47uHAFdujdgTxdg5SLmFksWTyVBPKCH5kUTw3fdFSS9dkkxIh5Eb7UfYt7aoJkcUxY9j99hOjVatcGXBDe/Pag0Yw+Nb+qqfG3VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bV8oTYQx; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=XWWPN4JrSAMwsHgWqS5wRBwmZ+Yr7ZoSQlg6l3Z92X8=;
	b=bV8oTYQxQ9MFXSEWsylCsWlZq5x3phowibU9MR3pqk1pSKZqiOe2BAYaKY19RH
	NUWD5JZ3NRcLZhM+rRGTKYOyk88Sc5lFrqe/fbkiKwt95FdqSImQsCuBACNYiZ5E
	xBTKiq5hqm5hB2lv8ylIX4SH/yOpKhT2gu5RHd7EoELjg=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrAB3P8YgN9tl1ydXBA--.13729S3;
	Sun, 25 Feb 2024 20:48:33 +0800 (CST)
Date: Sun, 25 Feb 2024 20:48:31 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH 1/1] arm64: dts: imx8mn: tqma8mqnl-mba8mx: Add USB DR
 overlay
Message-ID: <Zds3H7xzaSAH3JrX@dragon>
References: <20240220160338.2683715-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220160338.2683715-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:ClUQrAB3P8YgN9tl1ydXBA--.13729S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsPl1DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiGAGPZV6NnjVh+wAAsR

On Tue, Feb 20, 2024 at 05:03:37PM +0100, Alexander Stein wrote:
> imx8mn has only one USB interface. The platform supports using as USB host
> (default), or switch to USB DR using this overlay.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


