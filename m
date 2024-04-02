Return-Path: <devicetree+bounces-55571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F49895A97
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 19:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F2EAB238C0
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 17:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D9D15A48B;
	Tue,  2 Apr 2024 17:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkR1LxWP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBFB14B07B;
	Tue,  2 Apr 2024 17:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712078492; cv=none; b=J0Xr8pfEMX58vYxpLwFW1EqZq5wmDirqwKkkmkulMVPlw0jvHy63E50me5H2U2lnmJM9qHCJ1hQfW5jrgN9FWgiva0nWewoUL2D7AABXEV5RiWn0lo9rIXtJ5X/rLKgFUTHS4Ewn0U6dp5i7WmG1j+b3CpKICW+zgnKNE9AwTGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712078492; c=relaxed/simple;
	bh=DnpOibWeEhhYJWAo5GJdkNBTBKaVlT4nCoBWBnjQiTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IXD9Ei78IpVr0rN2b0M6PgSBUrar1+0I2dqL3ObeNIPp7r6UylJXg5FUfUR6hWk+tNXCEjbH7H6g26EQsg6wgMG7MW96AGB/darrSsGMaOwkCkuG+TKqKFARRvIrMTgMwG/itFhJyBXzQnekZVImhIXlCcTQLKSefvhyA9jPL+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkR1LxWP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879E7C433F1;
	Tue,  2 Apr 2024 17:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712078491;
	bh=DnpOibWeEhhYJWAo5GJdkNBTBKaVlT4nCoBWBnjQiTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kkR1LxWPiOyeNYU2wTg7krNhTXupOzH+yuLhG3Iv+H/QqOzbVHpk1rcdPtc/M1lRU
	 tqr3GNmoceWktBQ8jqNGbwAy41Qtqbq10Li5hNplEEYfnXR0WlE6zkC18TmVn2XU+g
	 SQLPNRsEPBV4N1gbp3O5uHPw2AyRVxQzusInycQmfyq0xWc4zDlSbpise0OugxksUJ
	 HKvEnkkDyWpMQnBsUZmqp8dJCP3h9/OqsrbU9MxaPuHlZaQWW7mHsXs48GvN54zWeE
	 p1NX0/yOEiYW/Fv57vWyBta9YswZqIDjwrkyK7wfEKMZBxHChHIZPu/G2Wj7YC1b5q
	 slvAW9kE4DQSw==
Date: Tue, 2 Apr 2024 12:21:28 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
 i.MX8Q HSIO SerDes PHY
Message-ID: <20240402172128.GA250151-robh@kernel.org>
References: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
 <1712036704-21064-2-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1712036704-21064-2-git-send-email-hongxing.zhu@nxp.com>

On Tue, Apr 02, 2024 at 01:45:02PM +0800, Richard Zhu wrote:
> Add binding for controller ID and HSIO configuration setting of the
> i.MX8Q HSIO SerDes PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 29 +++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> index 8bbe2d6538d8..3292c8be3354 100644
> --- a/include/dt-bindings/phy/phy-imx8-pcie.h
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -11,4 +11,33 @@
>  #define IMX8_PCIE_REFCLK_PAD_INPUT	1
>  #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
>  
> +/*
> + * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
> + * PCIEA(2 lanes capapble PCIe controller), PCIEB (only support one

capable

> + * lane) and SATA.
> + *
> + * In the different use cases. PCIEA can be binded to PHY lane0, lane1

s/binded/bound/

And throughout your patches.

> + * or Lane0 and lane1. PCIEB can be binded to lane1 or lane2 PHY. SATA
> + * can only be binded to last lane2 PHY.
> + *
> + * Define i.MX8Q HSIO controller ID here to specify the controller
> + * binded to the PHY.
> + * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
> + * support one lane) controller.
> + */
> +#define IMX8Q_HSIO_PCIEA_ID	0
> +#define IMX8Q_HSIO_PCIEB_ID	1
> +#define IMX8Q_HSIO_SATA_ID	2

Please use the standard phy mode defines.

> +
> +/*
> + * On i.MX8QM, PCIEA is mandatory required if the HSIO is enabled.
> + * Define configurations beside PCIEA is enabled.
> + *
> + * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
> + * The "IMX8Q_HSIO_CFG_PCIEB" can be used on i.MX8QXP platforms.
> + */
> +#define IMX8Q_HSIO_CFG_SATA		1
> +#define IMX8Q_HSIO_CFG_PCIEB		2
> +#define IMX8Q_HSIO_CFG_PCIEBSATA	3

This seems somewhat redundant both as the 3rd define is just an OR of 
the first 2 and all 3 overlap with the prior defines.

Seems like with standard PHY modes, the only additional information you 
might need is PCIEB vs. PCIEA.

Rob

