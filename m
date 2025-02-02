Return-Path: <devicetree+bounces-142312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D848BA24E76
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 14:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54783163D6C
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340C51F4E5A;
	Sun,  2 Feb 2025 13:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTa14oOT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10499C8DF
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 13:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738504732; cv=none; b=snPupE/0eGG1ukpXGhFb3mBUch3QXGWXqNaYfMc/owCfqo/iUe0OcWtUEN2bDVEcWxlesBGl4+zwBqgxeXjltkJubR4MrT1RFfFb+oBRaN0N8IwnvA4H0udUtVPXeFbeC+SfydWB2M5H6Vras1VY55pYHORhOEZ0xjdJtBXWZwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738504732; c=relaxed/simple;
	bh=HsGsVQio4UuScW1+1uU6H+TanyCHNIVvBIuyo4NfgRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pPojrbaGdLGjWGUEWFqfsWBhEBoBWe+XrBnGhW4Oh0Ldn5SonyjbRT4anNQxcEaY+vYq2Dkxdzrg0oIMwmzHe6utmMMbXPlo7tSHVMN4t1DRsmZwPyJmtGw/kEmLEYt2tVJkYzcDqTiE38qW+OGISsPZXXMQYZhWlb/EpjPAgpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTa14oOT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62A03C4CEE0;
	Sun,  2 Feb 2025 13:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738504731;
	bh=HsGsVQio4UuScW1+1uU6H+TanyCHNIVvBIuyo4NfgRE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OTa14oOTIMLKU2Mx3rpLSUqQHthlbrXHynHGn8QG4XXjnEqTr80+oDxkA0zIeIkkx
	 19mGNqVoKBfAWFbaI/Zx1vko3qLLBBtxTAdJnLuNPD/7nifBu17rqV8bTw+dAINUFo
	 VNesmVx5k3kUDamR1RS3cuYlmL0rhcFGwRVxHs1qylk/4a4GYcegQJwYQ8BJ+3uX/q
	 xk/OkL6g7kZ9JcHD7zFCsQR6dG1My7lyny15sLnt2Oa3ib1FHKB8CDzKZX94HALzAg
	 Ykx9i2e7+6vmoJhXlAQnEu+ZXUsejcQwn092redIHgoeZQxE3bMP/+eoAGDpQnYElN
	 A1DfX/yyjsZNg==
Date: Sun, 2 Feb 2025 14:58:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ARM: at91: add Calao USB boards
Message-ID: <20250202-horned-singing-cormorant-afdc77@krzk-bin>
References: <20250131162713.33524-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250131162713.33524-2-wsa+renesas@sang-engineering.com>

On Fri, Jan 31, 2025 at 05:27:13PM +0100, Wolfram Sang wrote:
> They have not been added so far. dtbs_check complains loudly.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 0ec29366e6c2..42469a054a60 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -23,6 +23,9 @@ properties:
>            - const: atmel,at91rm9200
>        - items:
>            - enum:
> +              - calao,usb-a9260
> +              - calao,usb-a9263
> +              - calao,usb-a9g20

I don't undertstand why calao,usb-a9g20 or existing olimex,sam9-l9260
can be fitted with any SoC.  If that's expected, mention in commit msg.
If not, then this needs to be fixed, not grew.


>                - olimex,sam9-l9260
>            - enum:
>                - atmel,at91sam9260
> @@ -35,6 +38,11 @@ properties:
>                - atmel,at91sam9xe
>                - atmel,at91sam9x60
>            - const: atmel,at91sam9

Line break.

> +      - items:
> +          - const: calao,usb-a9g20-lpw
> +          - const: calao,usb-a9g20
> +          - const: atmel,at91sam9g20
> +          - const: atmel,at91sam9

Best regards,
Krzysztof


