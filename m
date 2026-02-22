Return-Path: <devicetree+bounces-267150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKgUHeremmkRlwMAu9opvQ
	(envelope-from <devicetree+bounces-267150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:48:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BCB16EE4C
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 11:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07E563015CA6
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296BF2367D3;
	Sun, 22 Feb 2026 10:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j9wXNW5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EB5191484
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757271; cv=none; b=P4XQ7iKFTPfYLJSypfxD7hIIZslx0Q09ZikNACw8aR8jn+OaZA8heRlJqXe6MTx1JG9H8AGNB8AbGD+grUKB3l6QuGAYcgpyrRwdv+mOPM6Y8MH7YNcrtQddlmHfUpkm3b6V9ODXhcWATlXkXRywvMvSpCtVorg9mBcCyEi10WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757271; c=relaxed/simple;
	bh=FZtMsnt02eppF/38LL0dDrpegbd1QTjbVPOUWIDXCeA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VOv1bPUa4aCe64wKlrQ9q6XfAezlUpMYqOhqq+Rg5nSLOBymlUgt+taKW65ieKLnvkYYIodBRpofdYVsBI9QGIUbigYfcaECeQs0CRj95Tvb/B60q6ylOAuf4gfgAO08AB3/z7BNgzy1jII6+WzIGynSfzRpKJPsRHiVMT8qZ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j9wXNW5k; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43767807da6so2493516f8f.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 02:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771757268; x=1772362068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i1lDCkSDNtVJMG1W9w9h0e2Oqigo/C84t+Cu7jky8SA=;
        b=j9wXNW5kL20zKjWTOJRxEL/uca2aMOKL2BqbzbyWLxy+SJi7IE2CMpjz7L0fYvRcoy
         UXuHfuseGEYg0/uHkC6y2GqLsXUrrcPv49Zb9yZKSekQFFsuKZhtlNs99+TCO+vnFBKf
         Zu86xvnc9C2yTvlhFf1ymNOJyUhUCIcFZlksvTiUkKe65SUi6VJXy7gE1UPneLaD+Pcq
         jGvt4WOCDJ53Nch39iZkfKNtOJu6xHQPwtmSzth55L+sV71ZyON5VBTJvFbd2g81lLYR
         jds0A46xQ7FJ4sI4obTqtsTzgSf5mx+/PM0RMOVGnVfBt5UstD/ewWPce6Ce7R29aW4a
         0BxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771757268; x=1772362068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1lDCkSDNtVJMG1W9w9h0e2Oqigo/C84t+Cu7jky8SA=;
        b=GG2uGT2g5VRXN5aEV+dGqikj339qQFaSpuZEY66hRw0qJY0BECBW3tDn8Z/r2jaWyt
         14TymJTahOHhygv5nEo4p4BTME65Rl72fkaVQrBMyUGCsmbO198c7Nn6skfYxR51tgsf
         IIH97Vtg9Jop7L7t89mM/7H9ewjePynJJTS0wK/lnizgnS83h1sgh9E+ZI8WD3p/V7XN
         sfv9d9ee6gJZxlJIl0f2AeDXjXLvaj5dS54TCraDyVCLVRdGc8FcQODeO49Wq45nEx1u
         xNQa/sOTGwn7co1+8iSS9nSWKRMcx5Larv/BrQmt8i66KizOsxWh51b+CGKe5xhXeXsE
         eiSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOJHKtyYwougF8rI9BbdNkpnoaTQ75b1nkI0zaU4ZBhZslidzsJs+LJD60G0k9ZN7GO40Ho9CHyggN@vger.kernel.org
X-Gm-Message-State: AOJu0YzP+Kw5dKPpst4KVPEp/ZpoNQ1xTxurcmlWhIcBpVNAWk3C5hTr
	FdrZYKyrvIDqSnWF3+Qkf3RPsOLLKRT1ehu1ZscxkKLlkyv+CcpQOyxn
X-Gm-Gg: AZuq6aIkTU2E+uJLWFfGYHvfStAVN3KIPRzIrXck7IXpRm+1S6baYTT8af8eTpvRB7B
	KeYOYv8zPnmAEz03Y0zKKZMkPdYCuCZlfWY+tWJdNsfxPFrdpdnG2sjSe4TuU0Er0Wx0li55IB+
	xIF1+XLD86WABkjQN6arYK3OSKsFUuB8gkCgbBsJkYfCJ+gOLVBjwCb6S2tKUULQjzaLRyQAXH8
	zUF2NYWnf8mzZXJY22xioCRftRK1+U42O0qFmq+b6Wr+ldq8ZxjY8Om9QKxftbjo0ZcNvzMNj8c
	UlbNzIK4DU3HrVQr2hxa2m+zy3WVAkingix6FRnMTp1ZgLNgWRLfCnH14m0FqTa+5G6n4GHupdU
	3a6xpiSu6mxLR858iapkwLLTPf5V8c7lpyVv6LPHM84quSxzZv8pK+ypFy/VImCWUCq/uQP6Cef
	yetAZCNIcMLncBlxlaDYK5+RT/gdfP0M35sasxQc2tU9T+vQjrwBt4EHHdrKxR34m9EAHYD2n37
	OhNTdhaRJsCU6GBK/GR9v+F13FNBbC3+AVWG0tdcqDOEDB66gixI/HwamCLuQ==
X-Received: by 2002:a05:6000:1883:b0:437:893f:3361 with SMTP id ffacd0b85a97d-4396f15ae17mr9757394f8f.20.1771757267581;
        Sun, 22 Feb 2026 02:47:47 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54a73sm11954992f8f.37.2026.02.22.02.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:47:47 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Sun, 22 Feb 2026 10:47:41 +0000
To: David Lechner <dlechner@baylibre.com>, rodrigo.alencar@analog.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 1/8] dt-bindings: iio: frequency: add ad9910
Message-ID: <n5oxnxatgdqpomuijz6avvautkndg7r52kmobakemcgggdkjh2@q7m6h2ndjx7w>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
 <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267150-lists,devicetree=lfdr.de];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,209.85.221.54:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: D0BCB16EE4C
X-Rspamd-Action: no action

On 26/02/21 02:43PM, David Lechner wrote:
> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>

...

> > +  resets:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    oneOf:
> > +      - items:
> > +          - const: dev
> > +      - items:
> > +          - const: dev
> > +          - const: io
> 
> This could be a bit more clear. Does dev == MASTER_RESET pin?

Correct.

> And what about DAC_RSET?

DAC_RSET is not a reset, it is a pin for a 10K omh resistor.
 
> > +
> > +  reset-gpios:
> > +    maxItems: 2
> > +    description:
> > +      GPIOs controlling the device reset and the I/O_RESET pins. This is only
> > +      used if resets property is not defined.
> > +
> > +  powerdown-gpios:
> > +    maxItems: 1
> > +    description:
> > +      GPIO controlling the EXT_PWR_DWN pin.
> > +
> > +  update-gpios:
> > +    maxItems: 1
> > +    description:
> > +      GPIO controlling the I/O_UPDATE pin.
> > +
> > +  profile-gpios:
> > +    minItems: 3
> > +    maxItems: 3
> > +    description:
> > +      GPIOs controlling the PROFILE[2:0] pins for profile selection.
> > +
> 
> Looks like possibly some interrupts as well: RAM_SWP_OVR and SYNC_SMP_ERR

Interrupts are not handled by the driver at this point, so they were not added
here. The device is meant to have some features exposed through SPI, but to
extract the most of it needs to interface with an FPGA. For that, an IIO
backend is in the works.

> > +  adi,pll-multiplier:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 12
> > +    maximum: 127
> > +    description:
> > +      PLL feedback divider value (N). The system clock frequency is
> > +      REFCLK * N. When not specified, the PLL is bypassed.
> 
> What determines the value that should be selected here? This doesn't seem like
> something we would normally put in the devicetree. (Smells like configuration
> rather than describing what is wired up.)

The sysclk frequency is something we want fixed because it derives the sync_clk
and pd_clk which can be constraints for FPGA desing or when interfacing with
the parallel port (high-speed up to 250 MHz). Also, when using the PLL path to
derive the sysclk, the external loop filter will pretty much define the values
to be used here, as it would be optimized for a certain frequency range.

> > +
> > +  adi,pll-vco-select:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 0
> > +    maximum: 5
> > +    description: |
> > +      VCO frequency range selection (0-5). When not specified and the PLL
> > +      is enabled, the VCO range is automatically selected based on the
> > +      computed system clock frequency. Typical VCO frequency ranges are:
> > +      - Range 0: 370 MHz to 510 MHz (Auto-selected when <= 465 MHz)
> > +      - Range 1: 420 MHz to 590 MHz (Auto-selected when > 465 MHz and <= 545 MHz)
> > +      - Range 2: 500 MHz to 700 MHz (Auto-selected when > 545 MHz and <= 650 MHz)
> > +      - Range 3: 600 MHz to 880 MHz (Auto-selected when > 650 MHz and <= 790 MHz)
> > +      - Range 4: 700 MHz to 950 MHz (Auto-selected when > 790 MHz and <= 885 MHz)
> > +      - Range 5: 820 MHz to 1050 MHz (Auto-selected when > 885 MHz)
> > +
> 
> Same here. How does this depend on how the chip is wired up?

That applies to when the PLL path is used. FPGA interface and loop filter design.
I can write those details as part of the description.

> > +  adi,charge-pump-current-microamp:
> > +    minimum: 212
> > +    maximum: 387
> > +    default: 387
> > +    description:
> > +      PLL charge pump current in microamps. Only applicable when the PLL
> > +      is enabled. The value is rounded to the nearest supported step.
> > +
> > +  adi,refclk-out-drive-strength:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    enum: [ disabled, low, medium, high ]
> > +    default: disabled
> > +    description:
> > +      Reference clock output (DRV0) drive strength. Only applicable when
> > +      the PLL is enabled.
> > +
> > +  adi,reference-div2-enable:
> > +    type: boolean
> > +    description:
> > +      Enable the reference clock input divider. When enabled, the input
> > +      reference frequency is halved before deriving the system clock.
> > +      This is only applicable when the PLL is bypassed.
> > +
> > +  adi,inverse-sinc-enable:
> > +    type: boolean
> > +    description:
> > +      Enable the inverse sinc filter that compensates for the sinc roll-off
> > +      of the DAC output. When it is enabled, the filter introduces up to 3 dB
> > +      of insertion loss.
> > +
> > +  adi,sine-output-enable:
> > +    type: boolean
> > +    description:
> > +      Select sine wave output from the DDS core. When not set, the
> > +      output is a cosine wave.
> 
> And these last few are really getting into things that are typically
> controlled by the IIO driver and not hard-coded.

indeed, adi,sine-output-enable could be removed from here.

> > +
> > +  adi,sync-clk-disable:
> > +    type: boolean
> > +    description:
> > +      Disable the SYNC_CLK output pin. SYNC_CLK runs at one quarter
> > +      of the system clock frequency.
> 
> Clock outputs should be described as clock-controller and #clock-cells.
> The actual enabling/disabling can be done at runtime.

I thought of that, but when interfacing with an FPGA, the clock consumer
will be the IIO backend itself, which this device driver would depend on.
It would create a cyclic dependency during the probe of the drivers:
- This device being a clock provider and an IIO backend consumer
- The FPGA IP being a IIO backend provider and a clock consumer.

This would be just save some power when not interfacing with an FPGA,
there would not be a clock consumer to get the clock disabled.
Normally, clock consumers would want to have clock enabled, which is
already the case by default.

I would add the FPGA/IIO backend support in a separate patch series,
as it would bring more stuff here.

> > +
> > +  adi,pdclk-disable:
> > +    type: boolean
> > +    description:
> > +      Disable the parallel data clock (PDCLK) output. PDCLK runs at
> > +      one quarter of the system clock frequency.
> > +
> > +  adi,pdclk-invert:
> > +    type: boolean
> > +    description:
> > +      Invert the polarity of the PDCLK output.
> > +
> > +  adi,tx-enable-invert:
> > +    type: boolean
> > +    description:
> > +      Invert the polarity of the TX_ENABLE input pin.
> > +
> > +  adi,dac-output-current-microamp:
> > +    minimum: 8640
> > +    maximum: 31590
> > +    default: 20070
> > +    description:
> > +      DAC full-scale output current in microamps.
> > +
> > +dependencies:
> > +  adi,pll-vco-select: [ 'adi,pll-multiplier' ]
> > +  adi,charge-pump-current-microamp: [ 'adi,pll-multiplier' ]
> > +  adi,refclk-out-drive-strength: [ 'adi,pll-multiplier' ]
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - dvdd-io33-supply
> > +  - avdd33-supply
> > +  - dvdd18-supply
> > +  - avdd18-supply
> > +
> > +dependentSchemas:
> > +  resets:
> > +    properties:
> > +      reset-gpios: false
> > +  reset-gpios:
> > +    properties:
> > +      resets: false
> 
> This seems too strict. Couldn't we have some resets from a reset
> controller and others from gpios?

I suppose that would be confusing. using reset-gpios is the case where
we are NOT interfacing with an FPGA. Otherwise, using resets would be the
case when the IIO backend also implements the reset controller interface.

> Or maybe the reset bindings are enough and we don't need the gpio
> bindings for the same pin?

normally reset-gpios are enough as it can be used to instantiate a
reset controller too. I could introduce resets when adding the IIO backend
support.

-- 
Kind regards,

Rodrigo Alencar

