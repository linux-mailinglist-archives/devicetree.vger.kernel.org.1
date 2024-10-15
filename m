Return-Path: <devicetree+bounces-111567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5978499F522
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 20:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE740B229E6
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 18:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DA21FC7FB;
	Tue, 15 Oct 2024 18:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0OdaMpoq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9B61FAF1F
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 18:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729016487; cv=none; b=T6oAlaofFvhFTz+FuHZfp0+roZSenJdo/GIjxzMdCxQ3Wwa0UEvmQ+CFVlAHMXEHe2EQutDBFI3UsEgOB2Ofyfx5bX0UFFi1yb8qs8KXf46lEmOMVhGcqiXAkfbCYwE48+YFjZ7k7NwPTf9SQUSio1C9eTMI7luswN+YNzQ/3MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729016487; c=relaxed/simple;
	bh=yc2h4BPm9lerqvkZe0C16BjSjaJRuyLKuuQpw4aslgg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sohc9PuIWBe7uITMxtsuCnDHWYQAwU7zwksRuuVjC5VkGRLVQagVeZkcQwiR59o3ikUDr/hFo29HDf4P5BsGmkhjWM2mT/LuOWpjW9P6AOjPPwE4+GFBcAF5qGYrE0YiMYzcXhVHw9AEUxk3n1uCZ1UKkVw49FOo1JkGZDR9G50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0OdaMpoq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-430ee5c9570so66965945e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 11:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729016482; x=1729621282; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D+aXqtZXZvimQkxefENobzS2Pd7lngBrozxAJiZ0Xjc=;
        b=0OdaMpoqYGilHGvCmG24/rYPQoBKiq7PKbGp59bo/TS4ioFmuRJYzxIfbvNBrMdGVY
         rc0OV0Ky6soxlpCFYvpeHFPWizwLP+OdTn0dADW5pObu4jiYU52iIy1eqpQ6+R+aO+H3
         1lkbZc7kmXUxXcNNPk80MNBS7En0+vnJ/AXeOVtgdxAVh8/zCFFbCGiFWZ0raxizSaRh
         fOp/yvKiPQFKIxMSkcolvAYXmfZiZG744bEJprVQopi+VeFRlJ3VmgUKOSRsVR5Fmn3P
         YtXq7WBJ9W+3IYAwachXCR/lTQ18OHOTjiEbMIqf+3TqWE06ugmDXkye9MkEdZ70GNt2
         +2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729016482; x=1729621282;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D+aXqtZXZvimQkxefENobzS2Pd7lngBrozxAJiZ0Xjc=;
        b=lVECQO5oLQ/wyfErZZoZjsUIOjhVmeemjZmxGPBWS6+VzTgt3ZPN+tbzD1MQYPH2uu
         surpcer1UoaJyqvme6NUTEDWYIu586yF96CVHw4VrOtJ+WIh0BG5felAjSxPGC53mOLL
         oUyg82Ful80qfkOgBGtEj0MNGfkWD2VLTcXwkzjY48gUfpNGAjzHDvl+EUIJMTdQYLc5
         wILR4ig7qWXdutRq+W/4enlwAQ12pZe9Jl3wLb2oxpiq/jjC/fCCWU82kIcGBOegy+XQ
         WzbEC/HTtwlvS7EH+LCic8Nd9lP8EvCBq7CsataiFjU9ljlxT++5JY8katYCXehcguYR
         EY0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzf2BH9F1wCQ2xICDegOOq2KNQsg/vEp1dR8xfRw/b88xQ0S4JT39xH3FuFcxTEDYCbC/RwifVYoi9@vger.kernel.org
X-Gm-Message-State: AOJu0YwMe6HXV22MzUu+tZq8o6p7bWosooNyDDvv+D/lz19datso+wqc
	t7fWUxd07rZzMIuDoemrAzr07eDOCQSJznGCi4gZECihpz+027fvZDw8g/T/EFI=
X-Google-Smtp-Source: AGHT+IEd7HjqCcUyoudVa5+3g8x6nN5KRE7yRwbFauUCQQUQXSlhk1PPuVEO2uZlqnECpyuY+81AOQ==
X-Received: by 2002:a05:600c:4e13:b0:42c:b9a5:bd95 with SMTP id 5b1f17b1804b1-43125560014mr141659805e9.0.1729016482204;
        Tue, 15 Oct 2024 11:21:22 -0700 (PDT)
Received: from dfj (host-79-50-238-21.retail.telecomitalia.it. [79.50.238.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa7a055sm2217994f8f.1.2024.10.15.11.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 11:21:21 -0700 (PDT)
Date: Tue, 15 Oct 2024 20:19:52 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
Message-ID: <jscqeduc4dvvpu3z7a3jc7lfpjlzhkknfcj2fuazfciskezn5y@xwp42o6rswvt>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-2-eeef0c1e0e56@baylibre.com>
 <a27eb208-0fa1-45cc-bb0c-18a03b6cce4e@baylibre.com>
 <imlhddzkf5eefr64n73pgtbvyax54746v6wzlwngryzzwrbw4h@uaaom7tbod5m>
 <776ed45e-7ca8-42e8-9050-86928f223965@baylibre.com>
 <35d247418b8bd43695644f395901b117a1014109.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35d247418b8bd43695644f395901b117a1014109.camel@gmail.com>

On 15.10.2024 16:51, Nuno Sá wrote:
> On Tue, 2024-10-15 at 09:40 -0500, David Lechner wrote:
> > On 10/15/24 2:44 AM, Angelo Dureghello wrote:
> > > On 14.10.2024 16:13, David Lechner wrote:
> > > > On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> > > > > From: Angelo Dureghello <adureghello@baylibre.com>
> > > > > 
> > > > > Add a new compatible and related bindigns for the fpga-based
> > > > > "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
> > > > > 
> > > > > The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
> > > > > generic AXI "DAC" IP, intended to control ad3552r and similar chips,
> > > > > mainly to reach high speed transfer rates using a QSPI DDR
> > > > > (dobule-data-rate) interface.
> > > > > 
> > > > > The ad3552r device is defined as a child of the AXI DAC, that in
> > > > > this case is acting as an SPI controller.
> > > > > 
> > > > > Note, #io-backend is present because it is possible (in theory anyway)
> > > > > to use a separate controller for the control path than that used
> > > > > for the datapath.
> > > > > 
> > > > > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > > > > ---
> > > > >  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 56
> > > > > ++++++++++++++++++++--
> > > > >  1 file changed, 53 insertions(+), 3 deletions(-)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > > > > b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > > > > index a55e9bfc66d7..2b7e16717219 100644
> > > > > --- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > > > > +++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
> > > > > @@ -19,11 +19,13 @@ description: |
> > > > >    memory via DMA into the DAC.
> > > > >  
> > > > >    https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
> > > > > +  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
> > > > >  
> > > > >  properties:
> > > > >    compatible:
> > > > >      enum:
> > > > >        - adi,axi-dac-9.1.b
> > > > > +      - adi,axi-ad3552r
> > > > >  
> > > > >    reg:
> > > > >      maxItems: 1
> > > > > @@ -36,7 +38,14 @@ properties:
> > > > >        - const: tx
> > > > >  
> > > > >    clocks:
> > > > > -    maxItems: 1
> > > > > +    minItems: 1
> > > > > +    maxItems: 2
> > > > > +
> > > > > +  clock-names:
> > > > > +    minItems: 1
> > > > > +    items:
> > > > > +      - const: s_axi_aclk
> > > > > +      - const: dac_clk
> > > > >  
> > > > >    '#io-backend-cells':
> > > > >      const: 0
> > > > > @@ -47,7 +56,16 @@ required:
> > > > >    - reg
> > > > >    - clocks
> > > > >  
> > > > > -additionalProperties: false
> > > > > +allOf:
> > > > > +  - if:
> > > > > +      properties:
> > > > > +        compatible:
> > > > > +          contains:
> > > > > +            const: adi,axi-ad3552r
> > > > > +    then:
> > > > > +      $ref: /schemas/spi/spi-controller.yaml#
> > > >   +      properties:
> > > >   +        clocks:
> > > >   +          minItems: 2
> > > >   +        clock-names:
> > > >   +          minItems: 2
> > > >   +      required:
> > > >   +        clock-names
> > > >   +    else:
> > > >   +      properties:
> > > >   +        clocks:
> > > >   +          maxItems: 1
> > > >   +        clock-names:
> > > >   +          maxItems: 1
> > > > 
> > > > We could make the checking of clocks more strict to show
> > > > the intent:
> > > > 
> > > > adi,axi-dac-9.1.b only has 1 clock and clock-names is optional.
> > > > 
> > > > adi,axi-ad3552r always has 2 clocks and clock-names is required.
> > > > 
> > > is this really necessary ? At v.6 would not fix things
> > > not reallyh necessary.
> > >  
> > It is just a suggestion from me. I will leave it to the maintainers
> > to say if it is necessary or not. (If they don't say anything, then
> > we'll take it to mean it isn't necessary.)
> > 
> 
> Not a DT maintainer but IMHO, having these kind of checks in the bindings is very
> useful.
>

added the above checks, but they are producing errors.

I propose this:

  ...

  clocks:
    minItems: 1
    maxItems: 2

  clock-names:
    minItems: 1
    maxItems: 2

  '#io-backend-cells':
    const: 0

required:
  - compatible
  - dmas
  - reg
  - clocks

allOf:
  - if:
      properties:
        compatible:
          contains:
            const: adi,axi-ad3552r
    then:
      $ref: /schemas/spi/spi-controller.yaml#
      properties:
        clocks:
          minItems: 2
          maxItems: 2
        clock-names:
          items:
            - const: s_axi_aclk
            - const: dac_clk
    else:
      properties:
        clocks:
          maxItems: 1
        clock-names:
          items:
            - const: s_axi_aclk

unevaluatedProperties: false

examples:
...

Keeping clock-names not required, for backward compatibility.


Regards,
  Angelo
 
> - Nuno Sá

