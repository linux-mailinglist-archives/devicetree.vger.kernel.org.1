Return-Path: <devicetree+bounces-118317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EEC9B9C72
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 04:06:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69DE0B21015
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 03:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2017742070;
	Sat,  2 Nov 2024 03:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Bg8QAQuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E73E2AD00
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 03:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730516767; cv=none; b=IHp38buZnzhIQb7Mu4+Gf9v1ZheWdl3di3HdWwSiHO6sv5nUANAgLIzW9dVhZDnywVrc95RBnLmZalmbK6/F3wlqn8pJjR4Ilx8T9SM9lFCPscJTIkIAigWxaT/MqTsM23fww9mEIUwxAz3LctPpLt/eazP5VEcrmmXFfoEpXic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730516767; c=relaxed/simple;
	bh=CrBW7gcFJPzHjeH5/TI3/rKBzVxK4Zjcgf6BIWAcJns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oRW/YxOKmpEstpDkjdtIqwWlzKaEhai7WpDR3fHZQgW6aIMXq/fe7wrlW635Yb9aPkD4uz6Umulj5IuBsCmZ0IKlQPbENEapsOtStSv0sswv7VSki5nQrSa2w/uAeuTDO2GGPpSAM5lYnCbBtOlFKS1tbZfYk06T+5xsq608EWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Bg8QAQuu; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=p8eD/9xKOfuW1a5aPO+P+oTlB82ZVFjGxpbnAcOwcBM=;
	b=Bg8QAQuulN5NSlNJTqdEjQzv8SKn88C1nZQLOFMQBu/oE238yGdnjssZJraoIR
	IgogDHuOJH0H3s41FKACyXiJ7AiZRa6JByrSKq3cbzIdLSJsbVBFzAELVNEP4CuX
	Rb97m8219Hzl3lsanR20qFgw9YZ70vnQmqVO/PZT5grDA=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXfyz7liVnl_l6AQ--.14941S3;
	Sat, 02 Nov 2024 11:05:33 +0800 (CST)
Date: Sat, 2 Nov 2024 11:05:31 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	shengjiu.wang@nxp.com, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6sll: Fix the last SPDIF clock name
Message-ID: <ZyWW+3NsvR3poTTY@dragon>
References: <20241024181409.1461997-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024181409.1461997-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgDXfyz7liVnl_l6AQ--.14941S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxCJmUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEg6LZWclifsbEgAAsL

On Thu, Oct 24, 2024 at 03:14:09PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The last SPDIF clock is IMX6SLL_CLK_SPBA, so change the last
> clock-name entry to 'spba' as expected by fsl,spdif.yaml.
> 
> This fixes the following dt-schema warning:
> 
> spdif@2004000: clock-names:9: 'spba' was expected
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


