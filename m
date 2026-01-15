Return-Path: <devicetree+bounces-255517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 302D0D23C1C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 019C330072A1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0529A35FF66;
	Thu, 15 Jan 2026 09:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGYM9Ku4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08D92264C9;
	Thu, 15 Jan 2026 09:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768470843; cv=none; b=hPSfZhtmfMzZrLgQ54w7QuvbrGgsrA1MV00la/KEuqT7sImjaZWuQqFkp2x22kHGYmqxxgDvv21SalA7qYcTSGhLL+pvUgkGQtDV8EMIz1HY8Cmbn0kiUKZcjHK/oqkS4Ws8LmrgRSx4BE3mL7XDiAvX2Z8usf2mk80xKsKttSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768470843; c=relaxed/simple;
	bh=rkwmLhl2NdMkUxqtMKpON4EP2ZPIE5XSzoXvo0xv198=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AOSZAvCY2aEVHzeH9Ai+E8qTibHKdZdmnAarHRCfU8Y2DrQnUSz/M5CsBX/2W3Kf1fmBZU5CCZQoPyzVrZZlwnwUihjN8qoRFaQJs9w3G57c++deZuA4nuZYoz4sJXjsbvXNWI7TTAOu1mKOGvSW/8m8fA/XSTpE4xKSPyL3l/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGYM9Ku4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76C13C116D0;
	Thu, 15 Jan 2026 09:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768470843;
	bh=rkwmLhl2NdMkUxqtMKpON4EP2ZPIE5XSzoXvo0xv198=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lGYM9Ku4NOF+zHabNVCMzyZz6JHwydepB5DeMtLL8+Gi5kFK2EGFz7vjFpQTErOk/
	 +yTyrBwGatJcfNAlQ+ArcnCg45NghWuqqOHz6nItZV6lMvm+/5CA8m3nme7TtP3Dd/
	 r9S3RJYxgG/G6WYCr/TyQfqPpeMw9NuaV5Ms4jXSweXjHK1eye66cxaAYFeR32/3hN
	 nxeyEOIzQWgUQIKcp3tU7lbnTw2E15qsmOtNOrI/Uzq78NC737x5pVnCqYYg3V6msS
	 JMEN8vUVdQiEzqep2nnhYDxQrYn3aUCYQqt5wZNUT7OgnzpHzXFtDmP/529+Ma9XGA
	 xRbAXI5W9eMKw==
Date: Thu, 15 Jan 2026 10:54:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: aspeed: Document AST2700 USB3.0 PHY
Message-ID: <20260115-tricky-invaluable-snake-abec06@quoll>
References: <20260114-upstream_usb3phy-v1-0-2e59590be2d7@aspeedtech.com>
 <20260114-upstream_usb3phy-v1-1-2e59590be2d7@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260114-upstream_usb3phy-v1-1-2e59590be2d7@aspeedtech.com>

On Wed, Jan 14, 2026 at 03:13:10PM +0800, Ryan Chen wrote:
> Document AST2700 USB3.2 PHY. This IP is connected between
> USB3 controller and PHY module.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  .../bindings/phy/aspeed,ast2700-usb3-phy.yaml      | 50 ++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/aspeed,ast2700-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/aspeed,ast2700-usb3-phy.yaml
> new file mode 100644
> index 000000000000..83da224d99b1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/aspeed,ast2700-usb3-phy.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/aspeed,ast2700-usb3-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED AST2700 USB 3.2 PHY
> +
> +maintainers:
> +  - Ryan Chen <ryan_chen@aspeedtech.com>
> +
> +properties:
> +  compatible:
> +    const: aspeed,ast2700-usb3-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: USB 3.0 PHY clock

Drop description, obvious, you just repeated the block name

> +
> +  resets:
> +    maxItems: 1
> +    description: USB 3.0 PHY reset

Ditto

> +
> +  '#phy-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - '#phy-cells'

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


