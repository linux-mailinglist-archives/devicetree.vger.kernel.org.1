Return-Path: <devicetree+bounces-254845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9487FD1D1D3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:30:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 317FA3005FD7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD4437F0F5;
	Wed, 14 Jan 2026 08:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3y4qzZF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316B537F0EB;
	Wed, 14 Jan 2026 08:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768379421; cv=none; b=ao+wZyV/M7yyAMFHdN0RNKpYlDJEnvL1HHZBwnocMtBD+Kv8kW/CeiAFzxwnMYQoQRYDPX5CMakX/YC0Y/AVzI71O3G4MprKydusyzfFBglFeyo/zXXxYjZThoZOsCNFxpO/osBHvbEUs0RJVIXOq1VcwnNlRworfw3U9FEKa5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768379421; c=relaxed/simple;
	bh=vklD5dgHR8fE9oJ8NWm7S/QeQyUS1dHDszF/PFoFAXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fYYFDvAnYKrKWvtkvnZCUViT4MdtPk5DGxqn8hu13dIcTUHUfyL6uecXeFmn/RLSyb+n6mTLZFYHB1FFQy0J2PH09yP1NJK6Tkqop00rvXl7Csz09pvApU2ayMaWNk6YM2DqUecjMdNXyfmk9YM+e38UCE6kFYn1oByS3aLT57U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3y4qzZF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1194C16AAE;
	Wed, 14 Jan 2026 08:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768379420;
	bh=vklD5dgHR8fE9oJ8NWm7S/QeQyUS1dHDszF/PFoFAXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C3y4qzZFTpfySEbSb7bEs6OslrJFG0dF/AKeEQewpA5KEuXINup2qw3MF5BKSItX4
	 +FKfB7ks19iZRN8LS8vRRKEMtFeZ/g7mRT8jMFl8bkRHJejCpBk4gGH1ozqEOCCR8U
	 twZBHExlXfxlRsviVTRhxM9Kdd7qq5QYYAvJnmRF28uVzWk2vXisimylb6OvkoYIPZ
	 zNeWRPhE+Os2hfL378vsq4Lr0k8SIQdxNW737oO7eqa/0GpRIDqOa8Yd/Eku+O4hkN
	 4sjWQuN2xtuc7NyUXTim3Nk4xw2PRk/V4nlKqg2JpSsvYQ7f/OwY7N1XZkCu9be1Zj
	 BYrDoKDLUB8ug==
Date: Wed, 14 Jan 2026 09:30:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org, 
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org, Frank.Li@nxp.com, 
	lgirdwood@gmail.com, vikash.bansal@nxp.com, priyanka.jain@nxp.com, 
	shashank.rebbapragada@nxp.com
Subject: Re: [PATCH v4 5/5] i3c: hub: p3h2x4x: Add support for NXP P3H2x4x
 I3C hub functionality
Message-ID: <20260114-tireless-dexterous-starling-f559dc@quoll>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
 <20260113114529.1692213-5-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260113114529.1692213-5-aman.kumarpandey@nxp.com>

On Tue, Jan 13, 2026 at 01:45:29PM +0200, Aman Kumar Pandey wrote:
> Add I3C hub functionality for the NXP P3H2x4x family of multiport hubs.
> These devices support downstream target ports that can be configured
> as I3C, I2C, or SMBus.
> 
> This driver enables:
> - I3C/I2C communication between host and hub
> - Transparent communication with downstream devices
> - Target port configuration (I3C/I2C/SMBus)
> - MCTP device support
> - In-band interrupt handling
> 
> P3H2440/P3H2441 support 4 target ports;
> P3H2840/P3H2841 support 8 target ports.
> 
> Signed-off-by: Aman Kumar Pandey <aman.kumarpandey@nxp.com>
> Signed-off-by: Vikash Bansal <vikash.bansal@nxp.com>
> 
> ---
> Changes in v4:
>  - Split the driver into three separate patches (mfd, regulator and I3C hub) 
>  - Added support for NXP P3H2x4x I3C hub functionality
>  - Integrated hub driver with its on-die regulator
> 
> Changes in v3:
>  - Added MFD (Multi-Function Device) support for I3C hub and on-die regulator
> 
> Changes in v2:
>  - Refined coding style and incorporated review feedback
>  - Updated directory structure
>  - Revised logic for parsing DTS nodes
> ---
> ---
>  MAINTAINERS                              |   4 +
>  drivers/i3c/Kconfig                      |   1 +
>  drivers/i3c/Makefile                     |   1 +
>  drivers/i3c/hub/Kconfig                  |  10 +
>  drivers/i3c/hub/Makefile                 |   4 +
>  drivers/i3c/hub/p3h2840_i3c_hub.h        | 348 +++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_common.c | 425 +++++++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_i3c.c    | 351 +++++++++++++++++++
>  drivers/i3c/hub/p3h2840_i3c_hub_smbus.c  | 418 ++++++++++++++++++++++
>  include/linux/i3c/device.h               |   1 +
>  10 files changed, 1563 insertions(+)
>  create mode 100644 drivers/i3c/hub/Kconfig
>  create mode 100644 drivers/i3c/hub/Makefile
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub.h
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_common.c
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_i3c.c
>  create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_smbus.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4bcd52d65f1a..659a1132aa6c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18931,12 +18931,16 @@ L:	linux-kernel@vger.kernel.org
>  L:	linux-i3c-owner@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/mfd/nxp,p3h2840-i3c-hub.yaml
> +F:	drivers/i3c/Kconfig
> +F:	drivers/i3c/Makefile

From where did you get such pattern? Which other entries look like this?
Why are you doing something completely different than entire (ENTIRE!)
community?


> +F:	drivers/i3c/hub/*
>  F:	drivers/mfd/Kconfig
>  F:	drivers/mfd/Makefile
>  F:	drivers/mfd/p3h2840.c
>  F:	drivers/regulator/Kconfig
>  F:	drivers/regulator/Makefile
>  F:	drivers/regulator/p3h2840_i3c_hub_regulator.c
> +F:	include/linux/i3c/device.h
>  F:	include/linux/mfd/p3h2840.h

Best regards,
Krzysztof


