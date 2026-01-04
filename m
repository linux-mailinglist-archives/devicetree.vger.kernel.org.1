Return-Path: <devicetree+bounces-251321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8141ACF163A
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 22:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C957300663B
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 21:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBB72EC0AD;
	Sun,  4 Jan 2026 21:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="PYFToY2s"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098DB23D7C7;
	Sun,  4 Jan 2026 21:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767563867; cv=none; b=JtWP0nOuY88DQZLHbRrGN0m98Sj8HXvbr+AmbZutHEWMFLmN4ABnXWTbkQexfLSHHhlVV+yu4GD5cAjO81f2dv82lxJHpW5NlWd+dlwSfME9AW3GRPDiXbQcOK5iqPUVSvSv6QHcnW/8Ohkh3xE+zoe/ffhtjcV2vutXpCkI+5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767563867; c=relaxed/simple;
	bh=VhGT3PPljMN3yCwtbhP+LXWPn6Izl0Y3rGjxnGALfTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j6x8ubog93kJZKdxnDwYzqIiOiBn7Kd8VBTfOy3XLbWlM3eLzKttdFQE0IhqeY4TtFk7qAOTPG4jlpmtxZvUi3ZQY1a0p7xdiutu66wR1wtJTY+9awzftTVI2HDc6aB80EJ2FZQWZzz3PuT2VV5saaO/ZOz3u3JevvLiUln9TtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=PYFToY2s; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=a8yx7++jg95Fb4tBgX4wIqK/rRdM6i4vlQ2QFhbgYXo=; b=PYFToY2sN7Jzq2mmZS7ocAZZ2x
	MPXpdCkvqJLnofT6bbjDC1rRJyPgqhwUp1413ssxq05SNQCjnbwpQ8kDLJhHN5ceyGP4GOW2e9ByM
	zd3TjPKCMToAOTBXSSNqob1YbAi83GveFi++P5HUXz8OeLFp5lLxBbrFgYUxhHr4Q86g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vcW6S-001PDp-9m; Sun, 04 Jan 2026 22:57:36 +0100
Date: Sun, 4 Jan 2026 22:57:36 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sjakhade@cadence.com,
	rogerq@kernel.org, krzk@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com
Subject: Re: [PATCH v2 2/2] phy: cadence-torrent: Add PCIe + XAUI multilink
 configuration for 100MHz refclk
Message-ID: <7fd42221-d602-4ce4-9f7f-6754ed91e7aa@lunn.ch>
References: <20260104114422.2868321-1-s-vadapalli@ti.com>
 <20260104114422.2868321-3-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260104114422.2868321-3-s-vadapalli@ti.com>

On Sun, Jan 04, 2026 at 05:14:18PM +0530, Siddharth Vadapalli wrote:
> From: Swapnil Jakhade <sjakhade@cadence.com>
> 
> Add register sequences for PCIe + XAUI multilink configuration for
> 100MHz reference clock.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> v1 of this patch is at:
> https://lore.kernel.org/r/20251224054905.763399-3-s-vadapalli@ti.com/
> No changes since v1.
> 
> Regards,
> Siddharth.
> 
>  drivers/phy/cadence/phy-cadence-torrent.c | 143 ++++++++++++++++++++--
>  1 file changed, 136 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 37fa4bad6bd7..f0d870886cca 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -300,6 +300,7 @@ enum cdns_torrent_phy_type {
>  	TYPE_USB,
>  	TYPE_USXGMII,
>  	TYPE_PCIE_ML,
> +	TYPE_XAUI,
>  };
>  
>  enum cdns_torrent_ref_clk {
> @@ -320,14 +321,14 @@ enum cdns_torrent_ssc_mode {
>  /* Unique key id for vals table entry
>   * REFCLK0_RATE | REFCLK1_RATE | LINK0_TYPE | LINK1_TYPE | SSC_TYPE
>   */
> -#define REFCLK0_SHIFT	12
> -#define REFCLK0_MASK	GENMASK(14, 12)
> -#define REFCLK1_SHIFT	9
> -#define REFCLK1_MASK	GENMASK(11, 9)
> -#define LINK0_SHIFT	6
> -#define LINK0_MASK	GENMASK(8, 6)
> +#define REFCLK0_SHIFT	15
> +#define REFCLK0_MASK	GENMASK(18, 15)
> +#define REFCLK1_SHIFT	11
> +#define REFCLK1_MASK	GENMASK(14, 11)
> +#define LINK0_SHIFT	7
> +#define LINK0_MASK	GENMASK(10, 7)

Why do these change? It would be good to add an explanation to the
commit message about this, because it is not obvious why these need to
change.

       Andrew

