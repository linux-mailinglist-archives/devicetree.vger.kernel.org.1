Return-Path: <devicetree+bounces-2720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E01EC7AC414
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 9E2841F23D4D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D5C120B38;
	Sat, 23 Sep 2023 17:40:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD8D20B24
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 17:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DE7CC433C7;
	Sat, 23 Sep 2023 17:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695490836;
	bh=ugb+Q7yUo6vOZ78Q9LWkOQP4MwXiiPMfFXOkwc1MmKU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Q0nkZFCJxBNOzqUYCxVViad5Be+xfCn7Z507+LJLbHAIu9UmJBD1U8ZNfpENFLkbe
	 WNBQA35eqlfSaQaXTiwxLZ5D9yhYA7DzoHhOh+ftWbffQVsCpktUvSk3AK4I9g55Pa
	 lxE/Oc62ttZEiHr7kEcWwqGT/uFd0CJ2swJZjbgP9lNId/Js8I/bN3Qa9F3GOWPyBJ
	 oy/6DOQxXLEQ0JSrf1Fibo/TmAIcBz8msJEbE+zyxAuT5+PiMW6NQkMZynD3CddgNX
	 sZFmJZ4/UJ5E852Ql634BKWLm9ZEPXUVqWVor3kGwm5c4xv5bQVS/y7d6g4yeWrJ8d
	 ZJpfFGHItCXAQ==
Date: Sat, 23 Sep 2023 18:40:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org, Alexandru Lazar
 <alazar@startmail.com>, Conor Dooley <conor+dt@kernel.org>, Daniel Baluta
 <daniel.baluta@nxp.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 linux-iio@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: ti,ads1015: Document optional
 interrupt line
Message-ID: <20230923184026.577d4644@jic23-huawei>
In-Reply-To: <20230922-demise-shallot-2623f8ff869b@spud>
References: <20230921192420.70643-1-marex@denx.de>
	<20230922-demise-shallot-2623f8ff869b@spud>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 22 Sep 2023 12:30:06 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, Sep 21, 2023 at 09:24:20PM +0200, Marek Vasut wrote:
> > The ADS1015 can have optional IRQ line connected, document it in the DT bindings.
> > 
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > ---
> > Cc: Alexandru Lazar <alazar@startmail.com>
> > Cc: Conor Dooley <conor+dt@kernel.org>  
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
Applied to the togreg branch of iio.git

Thanks,

Jonathan

> 
> Thanks,
> Conor.
> 
> > Cc: Daniel Baluta <daniel.baluta@nxp.com>
> > Cc: Jonathan Cameron <jic23@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Lars-Peter Clausen <lars@metafoo.de>
> > Cc: Marco Felsch <m.felsch@pengutronix.de>
> > Cc: Marek Vasut <marex@denx.de>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-iio@vger.kernel.org
> > ---
> >  Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > index e004659099c19..d605999ffe288 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml
> > @@ -23,6 +23,9 @@ properties:
> >    reg:
> >      maxItems: 1
> >  
> > +  interrupts:
> > +    maxItems: 1
> > +
> >    "#address-cells":
> >      const: 1
> >  
> > -- 
> > 2.40.1
> >   


