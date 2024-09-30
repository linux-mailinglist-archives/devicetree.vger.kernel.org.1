Return-Path: <devicetree+bounces-106503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A10A598A6D3
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 16:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 314B91F2358C
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 14:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF6418E035;
	Mon, 30 Sep 2024 14:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tuWm9eEo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554A62CA5
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 14:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727705822; cv=none; b=OE42ImrPuJjeZjlJI91GP5mysNIvTiOS0kkRsvvM8uoIZg1xEFy6Tc3+QmJ/aAt4w5zv56f8huLthu+ollQJiZIp2E7mlBMare7ax4Ivk86b+86n20TuZnnBN3V8p3B4Mxj1o1c2fMtBkHr7Wnu2Cv6fhLJ+3g4KsROE6keLG2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727705822; c=relaxed/simple;
	bh=n5YfBVlZGJzjqd3xdXk2PnimFcnATvjiKeL1SmweExM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H7hOdRb2HGYDhWLZX2CnZVZr4TCNaqSxcjF8ecblXVd8cSjpF6caNWaAjvtS4hJDPwAHYSEyum+b9tli3eOqoPHwqhzXCqWG1rEZK8KwNFGhfbF/qu+7oOBHNYw9N7t2EcH756YslRNy+WdB51w02QAaY+a6fAV7MgFkQBIreCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tuWm9eEo; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cdb42b29dso1640603f8f.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 07:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727705819; x=1728310619; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VFOVFwYjoF4fxpgMI56XK1zOuahk2wnp54J6hso7bWM=;
        b=tuWm9eEoF3SpWfIMtEjdcelPuJ5tQ7wtLR8sdh6yd82lERee1n3a4iI53zT1ysusYS
         iYdXtSTF0XHAfpkCNg1weYCIa3H4vUhPg9fELoX1g0c3+wBH2UWdOa0KcUAxwj/JTCLn
         AuUB+zzVXrXi+04lUMUE5xN8mMbq2v3ikkyMJJrkkTrngXMqV7SNJGEIH7NaZ6vtrHOV
         /M5QQqjiTV6qHtkBAl3h7ILv5MNqHSMF8SqJL26zhHuAu98Vj1alVz7gv7phaUcS+FLy
         TvRHh81yO2y6mW6ybAmKl0d8N6j/1wB17UMNLSnpqfXu4ftDpmfqoj36BHzWUp0OOyUs
         B+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727705819; x=1728310619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFOVFwYjoF4fxpgMI56XK1zOuahk2wnp54J6hso7bWM=;
        b=LeIS9ooo5BJ5ycyBrVtYxnfDVHTHVQAOybPfEUCoC0n2lkkB5Gi2OeEyV0HjGWWq67
         8rhLLfxP1VwwBTFcwqpRqZShAotuvW1ols77IgvvAcG+sQoT4BmtFAXgYaMJv77eg2Nh
         HfaRsAWvPPEgsl0V6oFKR3ym1AGrhMTgCCOvEL34Wpxqp50+E8chUNlSULAMDwBZMkNj
         J8c1MXR9zNP5j0NB5f83wV4mgAYXxupTVZ9TVnWCU2ODy+nBmAXPenS7NRRUTfDU/4iy
         c7I53QUKN7V55Ak0qW2cBPkDzjvyslU+jM2qhGh5NhgAHP+zbrNhptSKu7H5Rua9ak6p
         L8fg==
X-Forwarded-Encrypted: i=1; AJvYcCWjSKmYvyZustFZ8indnoCa5IzNTFMkUr9qNrQ8r/XaKuxd3uhtT+OLgT+wxmHC742m+SgnLq6JaB3J@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ4TsjeM4qns04Dcx1NIElw75AWlwclfRCTtbUDHR+/IyaRq7q
	mXgfSH3J/68rGb9tWz3Xf7vMXoOZmMAImzS36oXhmIWSSg5RptP6wN9CJoTpeDQ=
X-Google-Smtp-Source: AGHT+IHftwfUBo6pzdrUhKd0aJFd4MebeXnEU5QwFMsPWvGui292M+2dObmcHg0SZANLx6oXYSWqLw==
X-Received: by 2002:adf:ce8f:0:b0:37c:d179:2f73 with SMTP id ffacd0b85a97d-37cd5a93aeemr6753207f8f.13.1727705818679;
        Mon, 30 Sep 2024 07:16:58 -0700 (PDT)
Received: from dfj (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd564d2aasm9239338f8f.4.2024.09.30.07.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 07:16:58 -0700 (PDT)
Date: Mon, 30 Sep 2024 16:15:41 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, dlechner@baylibre.com
Subject: Re: [PATCH v3 04/10] dt-bindings: iio: dac: ad3552r: add io-backend
 support
Message-ID: <oh2xoym6dwvfn5lbzx3j5ckd3gfzvl2ukohrs4ukumkv6kzwi5@ume3z224gjta>
References: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
 <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-4-a17b9b3d05d9@baylibre.com>
 <20240929115150.6d1c22b3@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240929115150.6d1c22b3@jic23-huawei>

On 29.09.2024 11:51, Jonathan Cameron wrote:
> On Thu, 19 Sep 2024 11:20:00 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
> 
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > There is a version AXI DAC IP block (for FPGAs) that provides
> > a physical bus for AD3552R and similar chips, and acts as
> > an SPI controller.
> 
> Wrap is a bit short. Aim for < 75 chars for patch descriptions.
> 
> > 
> > For this case, the binding is modified to include some
> > additional properties.
> > 
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> >  .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   | 42 ++++++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > index 41fe00034742..aca4a41c2633 100644
> > --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
> > @@ -60,6 +60,18 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> >      enum: [0, 1, 2, 3]
> >  
> > +  io-backends:
> > +    description: The iio backend reference.
> 
> Give a description of what the backend does in this case.  I.e. that it is
> a qspi DDR backend with ...
> 
> > +      An example backend can be found at
> > +        https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
> > +    maxItems: 1
> > +
> > +  adi,synchronous-mode:
> > +    description: Enable waiting for external synchronization signal.
> > +      Some AXI IP configuration can implement a dual-IP layout, with internal
> > +      wirings for streaming synchronization.
> 
> I've no idea what a dual-IP layout is.  Can you provide a little more info
> here?  What are the two IPs?
>
IP is a term used in fpga design as "intellectual property", that is
intended as a functional block of logic or data used to make a 
field-programmable gate array module.

A dual layout is just 2 same fpga modules in place of one.
 
I can add a "fpga" regerence to be more clear.

> > +    type: boolean
> > +
> >    '#address-cells':
> >      const: 1
> >  
> > @@ -128,6 +140,7 @@ patternProperties:
> >            - custom-output-range-config
> >  
> >  allOf:
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> >    - if:
> >        properties:
> >          compatible:
> > @@ -238,4 +251,33 @@ examples:
> >              };
> >          };
> >      };
> > +
> > +  - |
> > +    axi_dac: spi@44a70000 {
> > +        compatible = "adi,axi-ad3552r";
> > +        reg = <0x44a70000 0x1000>;
> > +        dmas = <&dac_tx_dma 0>;
> > +        dma-names = "tx";
> > +        #io-backend-cells = <0>;
> > +        clocks = <&ref_clk>;
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        dac@0 {
> > +            compatible = "adi,ad3552r";
> > +            reg = <0>;
> > +            reset-gpios = <&gpio0 92 0>;
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
> > +    };
> >  ...
> > 
> 

Regards,
Angelo

-- 

  o/ QW5nZWxvIER1cmVnaGVsbG8=
   www.kernel-space.org
    e: angelo at kernel-space.org
      c: +39 388 8550663
       

