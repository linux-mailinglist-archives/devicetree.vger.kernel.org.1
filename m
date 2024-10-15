Return-Path: <devicetree+bounces-111269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A6B99DF8B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5E0F1C218DF
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 07:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087D71A071C;
	Tue, 15 Oct 2024 07:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vlXyo42h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB6317DFE3
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728978355; cv=none; b=VhZKd9H1lrMvqpuzkr+R7qiiyzVoLG8TOPoOwtd0TYX2+vVuOronIgRuFk12rIrUf9Psbz9uMyCJDqq9g/IBPL2ZhtafmQm7QNAsd+6k43F+K8sWN2WkKQih3qW91My1UhOJ4qwS2fbfcYugkCe3qGxwuFYXqcZW3E8+Dx4M7uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728978355; c=relaxed/simple;
	bh=7J7zXZpRU44GX8SKSGs1s23yynvZyek/0nXXuZ9sFdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ib6oS7XwzFYQTwhdBc0cSYSqwl5cJ3ma9r7HdOdW0WQbZjZ7NSLQFHf+zd17GzHi64q7w7E+mN9mS04SlNLh7U4M6Rui0zYE6mLJKyif1CfRcDjClLLyXKJnX0UdGuK+6RyYP4oOBX4SaLGpkK8poGb0B42EAEg+kbeQehbyOXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vlXyo42h; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43144f656f0so1153145e9.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 00:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728978351; x=1729583151; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cFnFb+LrH42QxIjJOe3wZsM4KuJLLxQvYfEBQ2uPjrQ=;
        b=vlXyo42hl6Z70p9qhm+0MnF73v74KHLcHk01bbFpUFxpnw9B6myd3jEb4+WpCvRhnX
         vl1GyWlomdRW1Vh+LBpD0aXcr6LSNs9nFouI8e7qusjRdqjxnL6kjHiEVd1OalCoK3R5
         cANlul3/gVfuKABlzcutVlzRGkMEXS4zu+xkYgGCs+NsFC6vrdeDRGZoLR36hBoDXFEH
         zAGmUzHFUtffBFr1+9iE815iWgRx1jnY6zTf5xzpXEQMrK+Cbwms4cbY8+KrikP4S56T
         FADurd4VvZ34x5Hk35VY3sV5LazLu8W7Ej6DJwVzlh23f8qxQN4/nE7IXQrVZ4xANONd
         74/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728978351; x=1729583151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cFnFb+LrH42QxIjJOe3wZsM4KuJLLxQvYfEBQ2uPjrQ=;
        b=l6CY/bNT1QZvPQoywlZJSj0KDqCqbzUIAmFGrwNwhCanBmtKI68L1js6CEtsqzR0/V
         3ch7OpClcAgfK2oROPNe2Qe10+UKxeuG09p4Iy3vN/IqOUQn5f+HJOrE0mb2xPslGVZl
         Qq2wXSsnIUKxVNqnjVihMPL5Rfm0oUBnfKrIXbJCp+pv8lECiMIQQc9q18g+2rW8uZ0P
         lG0D7+IeVSEKykBIQEYYTIqFsZ3QhQlkZg4QOJVMgECMOodr83T+co1GEwE6Z7CHr2EV
         fjrDThI9RczqL/JYP9WkzvyTOHUc1X9qgFdH1KYc64ZvBeFNdkMnhZq7XDDF08ARIHTE
         toew==
X-Forwarded-Encrypted: i=1; AJvYcCX25NPqU0ci9kKfnKkIb9bil3cAL4Gf6UDdVVNXBZ6ko91gpnCwGuAg5NTR1qYmWiLOxtGVNFZWWpcu@vger.kernel.org
X-Gm-Message-State: AOJu0YxdPXkpE3NdEurXcrVTh0VfjlfU5KDY826IwJSUQjDWXP0a9Ww+
	Vvcr8euOd/6gewxqFQKuZ52utufzcWFzqj9aTsWS1bNGdqmmZl4kc83l5EW4A3U=
X-Google-Smtp-Source: AGHT+IEH0CXDBwcqGpe4FZ+Ytg+tYEpU3h2eQcK6Gy9gq6QWu8TU+YQhtn7pGv0tgv7TsPCUSjxdKw==
X-Received: by 2002:a05:6000:bd1:b0:37d:f4b:b6ab with SMTP id ffacd0b85a97d-37d5530a534mr9180012f8f.59.1728978350876;
        Tue, 15 Oct 2024 00:45:50 -0700 (PDT)
Received: from dfj (host-79-50-238-21.retail.telecomitalia.it. [79.50.238.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fc40f94sm847346f8f.106.2024.10.15.00.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 00:45:50 -0700 (PDT)
Date: Tue, 15 Oct 2024 09:44:22 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
Message-ID: <imlhddzkf5eefr64n73pgtbvyax54746v6wzlwngryzzwrbw4h@uaaom7tbod5m>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-2-eeef0c1e0e56@baylibre.com>
 <a27eb208-0fa1-45cc-bb0c-18a03b6cce4e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a27eb208-0fa1-45cc-bb0c-18a03b6cce4e@baylibre.com>

On 14.10.2024 16:13, David Lechner wrote:
> On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Add a new compatible and related bindigns for the fpga-based
> > "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
> > 
> > The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
> > generic AXI "DAC" IP, intended to control ad3552r and similar chips,
> > mainly to reach high speed transfer rates using a QSPI DDR
> > (dobule-data-rate) interface.
> > 
> > The ad3552r device is defined as a child of the AXI DAC, that in
> > this case is acting as an SPI controller.
> > 
> > Note, #io-backend is present because it is possible (in theory anyway)
> > to use a separate controller for the control path than that used
> > for the datapath.
> > 
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> >  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 56 ++++++++++++++++++++--
> >  1 file changed, 53 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > index a55e9bfc66d7..2b7e16717219 100644
> > --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > @@ -19,11 +19,13 @@ description: |
> >    memory via DMA into the DAC.
> >  
> >    https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
> > +  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
> >  
> >  properties:
> >    compatible:
> >      enum:
> >        - adi,axi-dac-9.1.b
> > +      - adi,axi-ad3552r
> >  
> >    reg:
> >      maxItems: 1
> > @@ -36,7 +38,14 @@ properties:
> >        - const: tx
> >  
> >    clocks:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    minItems: 1
> > +    items:
> > +      - const: s_axi_aclk
> > +      - const: dac_clk
> >  
> >    '#io-backend-cells':
> >      const: 0
> > @@ -47,7 +56,16 @@ required:
> >    - reg
> >    - clocks
> >  
> > -additionalProperties: false
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: adi,axi-ad3552r
> > +    then:
> > +      $ref: /schemas/spi/spi-controller.yaml#
>   +      properties:
>   +        clocks:
>   +          minItems: 2
>   +        clock-names:
>   +          minItems: 2
>   +      required:
>   +        clock-names
>   +    else:
>   +      properties:
>   +        clocks:
>   +          maxItems: 1
>   +        clock-names:
>   +          maxItems: 1
> 
> We could make the checking of clocks more strict to show
> the intent:
> 
> adi,axi-dac-9.1.b only has 1 clock and clock-names is optional.
> 
> adi,axi-ad3552r always has 2 clocks and clock-names is required.
>
is this really necessary ? At v.6 would not fix things
not reallyh necessary.
 
> > +
> > +unevaluatedProperties: false
> >  
> >  examples:
> >    - |
> > @@ -57,6 +75,38 @@ examples:
> >          dmas = <&tx_dma 0>;
> >          dma-names = "tx";
> >          #io-backend-cells = <0>;
> > -        clocks = <&axi_clk>;
> > +        clocks = <&clkc 15>;
> > +        clock-names = "s_axi_aclk";
> > +    };
> > +
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    axi_dac: spi@44a70000 {
> > +        compatible = "adi,axi-ad3552r";
> > +        reg = <0x44a70000 0x1000>;
> > +        dmas = <&dac_tx_dma 0>;
> > +        dma-names = "tx";
> > +        #io-backend-cells = <0>;
> > +        clocks = <&clkc 15>, <&ref_clk>;
> > +        clock-names = "s_axi_aclk", "dac_clk";
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        dac@0 {
> > +            compatible = "adi,ad3552r";
> > +            reg = <0>;
> > +            reset-gpios = <&gpio0 92 GPIO_ACTIVE_HIGH>;
> > +            io-backends = <&axi_dac>;
> > +            spi-max-frequency = <66000000>;
> > +
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            channel@0 {
> > +                reg = <0>;
> > +                adi,output-range-microvolt = <(-10000000) (10000000)>;
> > +            };
> > +        };
> >      };
> >  ...
> > 
> 

Regards,
Angelo

