Return-Path: <devicetree+bounces-255516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6671D23BEC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81D80304640A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E02035F8A0;
	Thu, 15 Jan 2026 09:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEb+448v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84C535B15F;
	Thu, 15 Jan 2026 09:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768470789; cv=none; b=s35Fk+gH3cXUmhY2O5qD6Wbc4Ywj6lra6KkcvmbHGtC9OKm1Hy4Rxjz6gzBmTgxmfuCqgchjdFixzHD612Vr8CifYpajHr+XKwG0jrH7N8Wo7WUnF+J86SbeCBecYWdoaABf74mksKiTah0a04xYtPsC2n/nTU8rkIqV9QJZGO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768470789; c=relaxed/simple;
	bh=nQRGCmfmTv/HFL3TGgfPhp5kkEYvJqdN5RCn3LswyN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PuUafXScNDpKgY1g7TueiAU5G2sQqPMfbOnhAp1hVqZq9Tz0CvoziIznyhr0Y1NzWguk1xUVWBoZ9MdNEkZYtvMQslDo8MXy39+D4t26x+ibdXxJpdU7Vrm+BrJH2bhtbbpUn7wLhtuq7jjRkI3xm3W+rsh76cliqD28ZAYYQR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEb+448v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D54CC116D0;
	Thu, 15 Jan 2026 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768470788;
	bh=nQRGCmfmTv/HFL3TGgfPhp5kkEYvJqdN5RCn3LswyN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SEb+448vdOLkMsqGqmm0r51xQieYMuN9whjnOzn4yQXYQueUi2b3wJijiiBXFQKHh
	 vMjUi9ELwJx1NtfnQAWQIaWi5vuNYyaCkeWxCeVBYFb7wlXbuTqB47Pq+yHplO34/p
	 e04Q5DJm4FtFwXf77ev6yugp+uUgJ0OY2we+6CyfBpoWoYF6l4aVtuxEzVsZAg2X/F
	 JrcFBBk9IvPQpz8hqDdObSP6ckWaPhvMxdR9u4/RhPaGNzUyi6lowmf2rBh3F3VVNw
	 AYEVLGihQzQFfc5bO7VjTGroJzZCzRXJV0tErqiv/7JUT0WmF1qXrcJMtAJ7g7gKsf
	 Dhi+Fp29CRTZg==
Date: Thu, 15 Jan 2026 10:53:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: add AST2700 usb3.2 phy driver
Message-ID: <20260115-jaguarundi-of-optimal-fruition-09d32e@quoll>
References: <20260114-upstream_usb3phy-v1-0-2e59590be2d7@aspeedtech.com>
 <20260114-upstream_usb3phy-v1-2-2e59590be2d7@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260114-upstream_usb3phy-v1-2-2e59590be2d7@aspeedtech.com>

On Wed, Jan 14, 2026 at 03:13:11PM +0800, Ryan Chen wrote:
> Add AST2700 USB3.2 PHY driver support.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/phy/aspeed/Kconfig           |  13 ++
>  drivers/phy/aspeed/Makefile          |   2 +
>  drivers/phy/aspeed/phy-aspeed-usb3.c | 236 +++++++++++++++++++++++++++++++++++
>  3 files changed, 251 insertions(+)
> 
> diff --git a/drivers/phy/aspeed/Kconfig b/drivers/phy/aspeed/Kconfig
> new file mode 100644
> index 000000000000..93bb5a913633
> --- /dev/null
> +++ b/drivers/phy/aspeed/Kconfig
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +#
> +# PHY drivers for ASPEED
> +#
> +
> +config PHY_ASPEED_USB3
> +	tristate "ASPEED USB3 PHY driver"
> +	select GENERIC_PHY
> +	depends on ARCH_ASPEED

COMPILE_TEST

> +	default n

It's the default, so maybe you meant 'ARCH_ASPEED'?

Best regards,
Krzysztof


