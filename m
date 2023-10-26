Return-Path: <devicetree+bounces-12229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B9D7D87BF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8A69B213A0
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 17:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30DC638FA0;
	Thu, 26 Oct 2023 17:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="PYqPs59r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C713B282
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 17:44:30 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F99B90;
	Thu, 26 Oct 2023 10:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=0ii19rHf1nVXOp2vxSgggOhtMlDBC1vSwB607a85mgs=; b=PYqPs59rvYM2eqEkI3vDx5DCGx
	oknhVcsrdnrkXXM/PQ0bfmjVz5h3GI/m8ivHGNpFWyIkZpRKTyGKgrmVccnicd2vFh8XkUl2qXS+u
	Aym2fDgvgo5t/avhCSOxh3Z6wdfVFh6i+TYchr+0AFpGqnhY1XW24VUGI8+hfBQdiMcI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qw4PA-000Gqe-Tu; Thu, 26 Oct 2023 19:44:24 +0200
Date: Thu, 26 Oct 2023 19:44:24 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cyuval@marvell.com
Subject: Re: [PATCH v3 2/3] dt-bindings: arm64: dts: add dt-bindings for ac5x
 rd carrier
Message-ID: <fd686385-df67-4415-bb53-6d71194064b8@lunn.ch>
References: <20231026084735.3595944-1-enachman@marvell.com>
 <20231026084735.3595944-3-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026084735.3595944-3-enachman@marvell.com>

On Thu, Oct 26, 2023 at 11:47:34AM +0300, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add dt bindings for AC5X RD COM Express Type 7 carrier board.
> This board will Accept a CN9131 COM Express Type 7 CPU module.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml     | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> index 52d78521e412..71bc94047d1b 100644
> --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> @@ -60,4 +60,12 @@ properties:
>            - const: marvell,armada-ap807-quad
>            - const: marvell,armada-ap807
>  
> +      - description: AC5X RD COM Express Carrier for Armada CN9131 SoC with one external CP

This description is i think technically wrong. You have the
combination of the carrier and the module.

> +        items:
> +          - const: marvell,ac5x_rd_carrier
> +          - const: marvell,cn9131
> +          - const: marvell,cn9130
> +          - const: marvell,armada-ap807-quad
> +          - const: marvell,armada-ap807

  Andrew

