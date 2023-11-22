Return-Path: <devicetree+bounces-17775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9057F4086
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 09:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E821B20BA5
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C8D20B06;
	Wed, 22 Nov 2023 08:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bnRM8IX/"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B814BB9;
	Wed, 22 Nov 2023 00:47:49 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id DC35BFF80E;
	Wed, 22 Nov 2023 08:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700642868;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O42yIZF/FBtiU/QrYdS0P/jngo4oYqUoJrQRE/yZW/c=;
	b=bnRM8IX/lXpPFM5Okre0WxThQ3inTIopOK0YRLbMVS5KmW16c02QgAyw9hFe7ljLHc7/Cn
	fOG0y1Z0hEPOflWcqGMV7/VuwB7p5rnKvJPT9nAdjRyAIp2Ta5UrZR4ggz7LPXuCGtw5P+
	yfehH6YdbpIpZLapq4bAHg0eD7JsChReoVxNmAuzGMUb5Xbs+cXrad0vRxAIotqkx5PEtv
	aBDlGOYevquzG0xrLcWilja+dw98arueW5vdu7bE7gDUZaNa9MKb2pve9BQFTiP1eQoGDr
	RudeN3TzIEgoT1rT0sQVRvaD0oXZXCR6H5tChpftnh6jFQspOfxnj5vZOnD1uQ==
Date: Wed, 22 Nov 2023 09:47:47 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <lee@kernel.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,am3359-adc: Allow dmas
 property to be optional
Message-ID: <20231122094747.34db981c@xps-13>
In-Reply-To: <20231122083608.136071-1-s-k6@ti.com>
References: <20231122083608.136071-1-s-k6@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com

Hi Santhosh,

s-k6@ti.com wrote on Wed, 22 Nov 2023 14:06:08 +0530:

> ADC module can function without DMA, so there may not be dma channel
> always associated with device. Hence, remove "dmas", "dma-names" from list
> of required properties.
>=20
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml =
b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> index 23a63265be3c..70b5dfce07d2 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> @@ -61,8 +61,6 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> -  - dmas
> -  - dma-names
> =20
>  additionalProperties: false
> =20


Thanks,
Miqu=C3=A8l

