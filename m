Return-Path: <devicetree+bounces-18235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2534F7F5C31
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 562CA1C20D2B
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB92224E7;
	Thu, 23 Nov 2023 10:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWgM3o97"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1035224DB
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 10:22:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 978A8C433C7;
	Thu, 23 Nov 2023 10:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700734952;
	bh=B3lJUcJOAeEyU+0uadD5Y6vycGo2MonX772pkrNBMhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jWgM3o978Z2d8Fvrq3XzxmKsEBSddvnLFIJTpAxyrbO57l2sDNfLqIPafenrV1OcJ
	 2e0OjXfSzlvn0Y5/igAXXbIt6ib1uKcEYz4OOdR4wUD8Yag/id0Zd7j5Faom4iKFB9
	 QEtDeVQqr5r+ulNJksvE69BNw6NC73I08rmQv+iGaEew52tHCj5rveFgY+J5C9hKpm
	 vunuhcfUMVVgybsHEwBgF77CvWrTscu/8uet8IuSDaGRHtQb5zvEE5f+0buDufcIgp
	 fCbgRLFwNB9kxe4RkXIpd29/Zxb9Tn5+nE9dQ6Zw9nP195TWmw3Go5OAzaNdgP9sDY
	 F7umz9pi8OyuA==
Date: Thu, 23 Nov 2023 10:22:27 +0000
From: Lee Jones <lee@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, miquel.raynal@bootlin.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,am3359-adc: Allow dmas
 property to be optional
Message-ID: <20231123102227.GC1184245@google.com>
References: <20231122083608.136071-1-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231122083608.136071-1-s-k6@ti.com>

On Wed, 22 Nov 2023, Santhosh Kumar K wrote:

> ADC module can function without DMA, so there may not be dma channel
> always associated with device. Hence, remove "dmas", "dma-names" from list
> of required properties.
> 
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> index 23a63265be3c..70b5dfce07d2 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml

This is not an IIO patch.  Please collect the tags you've received and
resubmit it with the correct subject line.

> @@ -61,8 +61,6 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> -  - dmas
> -  - dma-names
>  
>  additionalProperties: false
>  
> -- 
> 2.34.1
> 

-- 
Lee Jones [李琼斯]

