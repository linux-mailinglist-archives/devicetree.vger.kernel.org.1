Return-Path: <devicetree+bounces-254842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04367D1D18B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06CF73000B04
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FB937BE77;
	Wed, 14 Jan 2026 08:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHueQlK9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F85637E2F1;
	Wed, 14 Jan 2026 08:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379126; cv=none; b=OyjjB4iaPnAuZRFZbvSKb8QLfrtC+zeRmk73QPl2WwP0ctPUcES9lPbUlDH5Ac3CNnE3W9HjIkdIlegcc3P9FHkfXPYhvN3r5nKXgjPfktX1lTuFikSjIk/U9KlcpdbxtfmzZ4ssEFu6YkFQKIDXo8wfxEyOaO6jF8TcPGhVOrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379126; c=relaxed/simple;
	bh=51eaIopXNp29AsBCtY4p+d5Nz/I0BkLOIg24rTR6Gao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ob05QCVxjbnFEfRPpjt75i89aD/6J07vv5miw7GMxTAgnr2ZEpx0u+oO/edPpKQzis8jkOe7nCPFSWasXCa+v+/2AuAFII8xdn75igG0UyKmJmftnJyIFyVoL1l0nLGOKhMctIMf94MUq3i5pTgMFinbiiwTzFQZiUZnTIdStnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHueQlK9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC61C4CEF7;
	Wed, 14 Jan 2026 08:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768379125;
	bh=51eaIopXNp29AsBCtY4p+d5Nz/I0BkLOIg24rTR6Gao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qHueQlK9qPpG+K1nKMCF6hlNPMnnCPex3LKVaz9xxE2nJ6KrQMbYNfEhxP02P2VOl
	 WnGBpA+LAGYvLKIS7YQtfGNqMzf1mtKMSFHtdq82od9UC9ckvtjPAuS+HDw+6/MzTp
	 0lXp3/MI47uHnpApLpg8g7t4z+pDKqjMjBKiVY+np3hSel5wcBxzQYgcSMDh62fXZP
	 BeOV3usenaZeRp0iOGhVOZe1WyldKmMNY9pBtdIq9mc+1erdzMZu8AzfV6emiDcy5O
	 g96rSkjfhBU9Q412ZSXCvFrZU18fghYt8jD/24DMr3TCJxx/v9ZqJ9+A5hJMCKRWW3
	 VbNf+NaFx+m3Q==
Date: Wed, 14 Jan 2026 09:25:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	shashank.rebbapragada@nxp.com
Subject: Re: [PATCH v4 4/5] regulator: p3h2x4x: Add driver for on-die
 regulators in NXP P3H2x4x i3c hub
Message-ID: <20260114-resilient-cocky-skunk-2035eb@quoll>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
 <20260113114529.1692213-4-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260113114529.1692213-4-aman.kumarpandey@nxp.com>

On Tue, Jan 13, 2026 at 01:45:28PM +0200, Aman Kumar Pandey wrote:
> The NXP P3H2x4x family integrates on-die regulators alongside I3C hub
> functionality. This driver registers the regulators using the MFD
> framework and exposes them via the regulator subsystem.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> 
> ---
> Changes in v4:
>  - Split the driver into three separate patches (mfd, regulator and I3C hub) 
>  - Introduced driver for on-die regulators in NXP P3H2x4x I3C hub
> ---
> ---
>  MAINTAINERS                                   |   3 +
>  drivers/regulator/Kconfig                     |  10 ++
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/p3h2840_i3c_hub_regulator.c | 162 ++++++++++++++++++
>  4 files changed, 176 insertions(+)
>  create mode 100644 drivers/regulator/p3h2840_i3c_hub_regulator.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index aa7043499223..4bcd52d65f1a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18934,6 +18934,9 @@ F:	Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml
>  F:	drivers/mfd/Kconfig
>  F:	drivers/mfd/Makefile
>  F:	drivers/mfd/p3h2840.c
> +F:	drivers/regulator/Kconfig
> +F:	drivers/regulator/Makefile

Huh? Why do you claim you maintain this? On what basis?

> +F:	drivers/regulator/p3h2840_i3c_hub_regulator.c
>  F:	include/linux/mfd/p3h2840.h

...

> +	p3h2x4x_regulator = devm_kzalloc(dev, sizeof(*p3h2x4x_regulator), GFP_KERNEL);
> +	if (!p3h2x4x_regulator)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, p3h2x4x_regulator);
> +
> +	p3h2x4x_regulator->regmap = p3h2x4x->regmap;
> +	device_set_of_node_from_dev(dev, dev->parent);
> +
> +	rcfg.dev = dev;
> +	rcfg.dev->of_node = dev->of_node;
> +	rcfg.regmap = p3h2x4x_regulator->regmap;
> +	rcfg.driver_data = p3h2x4x_regulator;
> +
> +	for (i = 0; i < ARRAY_SIZE(p3h2x4x_regulators); i++) {
> +		rdev = devm_regulator_register(&pdev->dev, &p3h2x4x_regulators[i], &rcfg);
> +		if (IS_ERR(rdev)) {
> +			ret = PTR_ERR(rdev);
> +			dev_err(dev, "Failed to register %s\n", p3h2x4x_regulators[i].name);
> +			return ret;

Syntax is just return dev_err_probe.

> +		}
> +		p3h2x4x_regulator->rp3h2x4x_dev[i] = rdev;
> +	}
> +	return 0;
> +}
> +
> +static struct platform_driver p3h2x4x_regulator_driver = {
> +	.driver = {
> +		.name = "p3h2x4x-regulator",
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
> +	},
> +	.probe = p3h2x4x_regulator_probe,
> +};
> +module_platform_driver(p3h2x4x_regulator_driver);
> +
> +MODULE_AUTHOR("Aman Kumar Pandey <aman.kumarpandey@nxp.com>");
> +MODULE_AUTHOR("vikash Bansal <vikash.bansal@nxp.com>");
> +MODULE_DESCRIPTION("P3H2x4x I3C HUB driver");

Do you use the same description everywhere?

> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 

