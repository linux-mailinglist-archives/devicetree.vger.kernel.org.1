Return-Path: <devicetree+bounces-239096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C47C61512
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E024F35FEE5
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FBBB2D94A7;
	Sun, 16 Nov 2025 12:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="RuCZW42J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A5D2D7390;
	Sun, 16 Nov 2025 12:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763297491; cv=none; b=GMXrZAZGp+k9e3l9aDSuozHj4KbDLOhATNjliLIsMOZ8/xs+wfJAsWXGjqPhm+zWq1/ztUdA6eKfmcir8uAoNIF0tMK7GZ50fA4kiH7I09WvhgDcRviGnU2091Twlv5YRRz70/bSufiWF+DAnR1RSp/FksRmufTPwaOOAfoCMF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763297491; c=relaxed/simple;
	bh=0Yl91qGDqMNtl8Ry0vdas5mX8PXd48t/0w6edCjjdtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pjmtxT1waNkI9nD7eHG54z6adFVuk4kuZUwnEOZdUtRr4ea01GnLLB/VWJoO1Kg9Gnq3wRrK8F97/unmISTiTMlsA8cAe8Bn58v8W73zT0oYul9atjIfFMVbgr33r9HMyEPooQpZwo58SzCAolSPivCsec6sMq+BwnBo9ruMY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=RuCZW42J; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Mk5nILU1OOxZoG9axiju5UWDB4le/DG2DDfAwMEADGE=;
	b=RuCZW42JHwTLrOOBZ8/hs+jxRpwB//vO35CplNtWw2LtiV4Ku43XmEw/2dc5OU
	rIN2rRU0C4eNDFehQ2/2O8bRkLFCBUscViADsKrbDfEWExRXyTJJW2v86XIMwFoW
	3MYgiFMmPkEVD4pNPf3ICTUZx0jyRZehLB7eR0rB/AZi0=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgA3RNeoyBlpbN47AQ--.8201S3;
	Sun, 16 Nov 2025 20:50:50 +0800 (CST)
Date: Sun, 16 Nov 2025 20:50:48 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add Skov Rev.C HDMI support
Message-ID: <aRnIqLtW7285gY4a@dragon>
References: <20251107-v6-18-skov-revc-hdmi-v1-0-595549e5b496@pengutronix.de>
 <20251107-v6-18-skov-revc-hdmi-v1-1-595549e5b496@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-v6-18-skov-revc-hdmi-v1-1-595549e5b496@pengutronix.de>
X-CM-TRANSID:Mc8vCgA3RNeoyBlpbN47AQ--.8201S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUFxR6UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNAr8YmkZyKoc1wAA35

On Fri, Nov 07, 2025 at 03:49:51PM +0100, Marco Felsch wrote:
> From software perspective, Rev.C HDMI and Rev.B HDMI don't differ since
> the panel is connected via HDMI and the touchscreen is connected via
> USB. However, the bootloader firmware expects to find a dts with the
> correct revc-hdmi compatible.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied both, thanks!


