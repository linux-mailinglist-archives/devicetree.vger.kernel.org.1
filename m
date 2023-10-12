Return-Path: <devicetree+bounces-8289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D4B7C77F7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E07F282BFF
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DD83D97E;
	Thu, 12 Oct 2023 20:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at49mz3j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA4B3D976
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:39:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DFF8C433C7;
	Thu, 12 Oct 2023 20:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697143186;
	bh=YJviJ9TTXMty5MqtVYmE4vtdJQJkkUbztuRoWP9UlcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=at49mz3jeCld/u54898zJStVhF4+Y+EwX4Yb22QzIgeQvAcezYRKVRa5Kv4u8DelW
	 hP1PsSWyh3/Xh6l+OBU3PEk8vVwnXTy9N2d+i9O+pQEn0IafYIff1EOg6pubdT/wKU
	 c65SiUTcwippzl3SMLiCrYCCxKLYt1mVeZ3wABsHN4XXgmyjpCgA0EgzeCAcibkarJ
	 9bvAafoc3N+AgFhuMi+SAtFoC/xe2XJKd6U5zSJMjWKTW7NgJ5Dw6Bj0/f/gUEk+vJ
	 4iE4jkwsXwS+WUBlS+cZ5EOB4nKitm2YG1peZ+F2kXqqLtrhI99KDcNa+ctCC1pD2k
	 eZpCZMiSkyQBA==
Received: (nullmailer pid 1703831 invoked by uid 1000);
	Thu, 12 Oct 2023 20:39:44 -0000
Date: Thu, 12 Oct 2023 15:39:44 -0500
From: Rob Herring <robh@kernel.org>
To: Jacky Huang <ychuang570808@gmail.com>
Cc: linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, p.zabel@pengutronix.de, j.neuschaefer@gmx.net, linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, schung@nuvoton.com, Jacky Huang <ychuang3@nuvoton.com>
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add syscon to nuvoton ma35d1
 system-management node
Message-ID: <20231012203944.GA1699468-robh@kernel.org>
References: <20231011090510.114476-1-ychuang570808@gmail.com>
 <20231011090510.114476-2-ychuang570808@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011090510.114476-2-ychuang570808@gmail.com>

On Wed, Oct 11, 2023 at 09:05:07AM +0000, Jacky Huang wrote:
> From: Jacky Huang <ychuang3@nuvoton.com>
> 
> Add compatible 'syscon' to the system-management node.
> 
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
> ---
>  .../devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml        | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> index 34c5c1c08ec1..3ce7dcecd87a 100644
> --- a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      items:
>        - const: nuvoton,ma35d1-reset
> +      - const: syscon

Presumably you already have a driver for nuvoton,ma35d1-reset, so just 
make it create a regmap. I assume this is the reason you want to add 
'syscon'?

Rob

