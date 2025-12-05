Return-Path: <devicetree+bounces-244668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B31E2CA8049
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A98A03270169
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9162833858A;
	Fri,  5 Dec 2025 12:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X1LXGo3P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D2829AB15
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 12:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764938928; cv=none; b=nk2cEuw0H7jY4tPQLlALJN7qajM5NAjhbj9iCm2lW14HnyDPHn9xRWPT7VCHTXD5zZ2Tf8N70JqgPUAMGOumjH5vO6EtnwMsnMwKMYQETmzH8nJZZXSGkBGP7sB9UhSEFhEbLUoO4W8JC+Dl+6h9LzoaoZrO9NXOblBDWMMQELs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764938928; c=relaxed/simple;
	bh=lSNiJQ1hWv2H33MlCLh9IZa2Uo/O6wrA1GmmBJ4ngcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l0376mUNVX8b8yyIp0dtVJxGtaRmyJr7IxR1Z61QqrFK1XdEAQ1iAx6darA8G+FbP+aEj+irKgP7dJODuLfsp1oJb2z/ouz5mzFB0I9LlQ76PZYTAsoziSy2PCuHTykkV18fMMXfdXk+WsCMEdO/QDCEMKXlwsoQ3vFH9Oqq1iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X1LXGo3P; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2984dfae0acso37148665ad.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 04:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764938916; x=1765543716; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h8TfSQdqzSVt80P55nncCARa3JN8Npg0bjx7e6GoNp4=;
        b=X1LXGo3PzlBQ+5uc/v2/1MGQqJaQu+IbjGL/h+qtTVbab2MZXbsM8oVBQ3XOXWuecK
         0bxBaJmQPfiwKuoBvoVKyvXodZ7LbNEBNv+rBH0AOl5AthjvdpvpyClsxNcOVaYsDSa2
         4vQGRag1JzOZqTF6qgpWl3LEukdBTK4wyIfFVes7Yb2Cpfb3d7gk4Nz7dQAKNxRjks3/
         xKz4piiOdMyVGcAOaKuApEPSiPB1t1cy8nZFWqfY6UpAAfAQbZD785nr3bUj9oKUIuks
         MyV/U9YRfQu0GHSvwjLeIyKOsjCW6waKR4KmG4T6Dp3bON3y93Vbm4Eic7CNOhIxWW2P
         M/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764938916; x=1765543716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8TfSQdqzSVt80P55nncCARa3JN8Npg0bjx7e6GoNp4=;
        b=jFGx7sgWKT3l8LN/T38dplVFzJJd0wwpkQnr7rheVToEmX42kdfkAPAJdd753DZIgJ
         mompi6jRKEHSHmHfotR7pkwsIDoDPaw9dKbwHc0NlM7z1xgbD1z7WMKerBHrVmKOT3so
         yZnoyF/f2Y3oGrGbGxl1ao+9E11rwsxQKgVeMzEh9tqR0K5gwyIsH2TBxUAF5oKlCqMG
         K6Sq96CnrbEEG8JdNOgauOgP7tQZzG8pQk++rDeF/lzU+g49xGDHJzWU+TOXbeq7rye7
         S7ckRh8mXv1TK+Qj+ySiYx1zLQOZyLhTgK1Ha/GWgGY8GhVKrbliHBy44VsCDe1fDzF9
         4h9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4CZnxBlIAEW4zACjNnHwzsTeQvsMHv4BpZTAHGnmCF6dWweDTZwXjRTY0GDeCTuWGImty9ZDJ2RS9@vger.kernel.org
X-Gm-Message-State: AOJu0YxvbGPiYnO9OsS2Unv77wzUf9/R91FT4KQZpmZrGfLOKcrRLs3W
	rVv0maXmmrOh8JNsgPasjGkdmUoE7IvWbcTbaA4jV7ICAOZ2OUSbJi0B
X-Gm-Gg: ASbGncuu2OKqXa+uozGcxN1iKUilYp2yIFQzCODRpbwvdYsPtWR0pGx9zOJS8NzqHjX
	72bKf14qy6/aPbiUjWoR9AIGFHHTAyHsD0SaAruwn6LQ/WMF7HuA45TUAzSxVEJwj7PJX1lSOwZ
	yiP6GHmb2IOjNYPpsEKskSlGdubaGIYfPpQhpeOJmca+bNAsTKExpSsyUry3k4U8wxL5eWucekV
	HmWZp9A6Zu1VjbvHKfmtOkiExJdN36/Xo5y1thfGf9aPTyQltdSbPfqdiX6NyH42cNFDbCrv0rU
	TYkh5dZ/XeJmAm+uU6U1AnT2KI/DwR0M6Lw7ACAHsRVcQIk5ST7M6Pz9uCj1VvibNBAiOBCGAVB
	reSYkqR12PSWns5rMzN4rDd9l0cZct+L39jRm/m7n+MwDyvtDzPNrZndQrSosn528LLJp2G/6y8
	dcZ1eqHIUy2AfdEi/xamSEaL9VU35bryM=
X-Google-Smtp-Source: AGHT+IEjzb7U9ofM4A37xXKz1ctej3Hg6VdyG9/RNNT0ZH2QqjidYtcKGEfTZb6PcdctwKhrBgNzQg==
X-Received: by 2002:a05:701a:c949:b0:11d:f682:e475 with SMTP id a92af1059eb24-11df682e6f1mr2793043c88.40.1764938915794;
        Fri, 05 Dec 2025 04:48:35 -0800 (PST)
Received: from localhost ([2804:30c:2712:fd00:9579:9ff6:e506:6147])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11df7703bd7sm20366748c88.10.2025.12.05.04.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 04:48:34 -0800 (PST)
Date: Fri, 5 Dec 2025 09:50:08 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Tomas Melin <tomas.melin@vaisala.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, andy@kernel.org,
	Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: adc: Add AD4134
Message-ID: <aTLVAAQH-I8Rc372@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1764708608.git.marcelo.schmitt@analog.com>
 <06d7be2af0f6520c23f612fa0249ff6a26655cb7.1764708608.git.marcelo.schmitt@analog.com>
 <95dfb96e-f7b8-45df-a704-2984bd0a2946@vaisala.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95dfb96e-f7b8-45df-a704-2984bd0a2946@vaisala.com>

On 12/05, Tomas Melin wrote:
> Hi,
> 
> On 02/12/2025 22:55, Marcelo Schmitt wrote:
> > Add device tree documentation for AD4134 24-Bit, 4-channel simultaneous
> > sampling, precision ADC.
> > 
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > ---
> > Change log v2 -> v3:
> > - fixed typo in powerdown-gpios description.
> > - picked up Conor's review tag. 
> > 
> >  .../bindings/iio/adc/adi,ad4134.yaml          | 198 ++++++++++++++++++
...
> > +description: |
> > +  The AD4134 is a quad channel, low noise, simultaneous sampling, precision
> > +  analog-to-digital converter (ADC).
> > +  Specifications can be found at:
> > +    https://www.analog.com/media/en/technical-documentation/data-sheets/ad4134.pdf
> > +
> > +$ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +properties:
> > +    maxItems: 1
> > +
> > +  adi,asrc-mode:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    description:
> > +      Asynchronous Sample Rate Converter (ASRC) operation mode control input.
> > +      Describes whether the MODE pin is set to a high level (for master mode
> > +      operation) or to a low level (for slave mode operation).
> > +    enum: [ high, low ]
> > +    default: low
> Since minimim I/O mode is only one currently supported, this should
> always be low, right? Is the property needed at this point?

Correct, it is expected that adi,asrc-mode will always be low for minimum I/O mode.
The property is not _needed_ but, according to dt-binding guidelines [1], it is
desired.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/writing-bindings.rst?h=v6.18#n17

> 
> > +
> > +  adi,dclkio:
> > +    description:
> > +      DCLK pin I/O direction control for when the device operates in Pin Control
> > +      Slave Mode or in SPI Control Mode. Describes if DEC0/DCLKIO pin is at a
> > +      high level (which configures DCLK as an output) or to set to a low level
> > +      (configuring DCLK for input).
> > +    enum: [ out, in ]
> > +    default: in
> > +
> > +  adi,dclkmode:
> > +    description:
> > +      DCLK mode control for when the device operates in Pin Control Slave Mode
> > +      or in SPI Control Mode. Describes whether the DEC1/DCLKMODE pin is set to
> > +      a high level (configuring the DCLK to operate in free running mode) or
> > +      to a low level (to configure DCLK to operate in gated mode).
> > +    enum: [ free-running, gated ]
> > +    default: gated
> In minimum I/O mode datasheet mentions this should always be gated.
> Perhaps this and adi,dclkio can be left out and added when driver gains
> other support than I/O mode?

Yes, that's also correct. A few properties are actually not needed for minimum
I/O mode (i.e. can have their values inferred from the minimum I/O mode requirements).
Sure, from developer's perspective it's easier to document only what the driver
uses. adi,dclkio, adi,dclkmode, adi,asrc-mode, powerdown-gpios, regulators, could
all be left to a latter time. Fine by me if dt maintainers agree with that.

With best regards,
Marcelo

