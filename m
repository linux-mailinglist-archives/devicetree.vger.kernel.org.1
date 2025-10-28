Return-Path: <devicetree+bounces-232202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC023C157C9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA4E2403FA1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 705FB340A79;
	Tue, 28 Oct 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VsfpgWgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448C633C523
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665513; cv=none; b=YLS1coMzCawtCa8gVQjbxUCU/sqZ8kOkh8W+AWqZE4zwKQmMUg3z2dhokSGkfQJ+hwvUPcNmi42HU/ido6B5PWWremxMk/AIbMklJnJ9XkoGgLnMr3F+FFnuz2VbDxYkcEZctOQeYYwu8ak6bohSjKeZuUpzBceDQ/1v0zmIRag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665513; c=relaxed/simple;
	bh=gps5GmUFZe/tqVq3RjLJUx/xwwFWnCWn/mCr/seuU+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FOZhbR87V+fqxrQSl3WfhSGbUy5kmsdOjpmYP31hoBEPAeYSyYOtBsZhqF3OFUOonvLgWGQ90C2YDsS4gC/z1kypSQ1h8lq/eQ7/G3pW87KoI/qQKCHx8mbKExXawpofvX7qs0jHupEhnUTmk2+Uadd06D9n+m+wNMUq8XMvzSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VsfpgWgx; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-470ffbf2150so42114285e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761665510; x=1762270310; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mHeO0cQH9RupTiAzoEqwl/Xfh7lWUTkvWVkOhCTs6b8=;
        b=VsfpgWgxirVqUDvvVTDf3zZUw2gUc//yI6fH+1qtspbEsEzgsLS0KZ0RijYAnWWbB/
         3RRY6sD1X7/EtHtTvHPvRxL/7wZfd4lZ4I2Xk7X2g+8B/iwkvzBW/L4Wae0RItKTTJE8
         pLKA3T3TrhARnUNgPy27CSUAagatJmcoctcNjsBMSpfgukBHhvWCzyVTGeuh0cAryx2w
         nTa+/7ykLMlyI6gJVf9VO3d4Lelhto/ygTTCRdZPcS33mDH0b9kWW7J617ib0DRp1+lU
         sZZEVw8PjSCeDE1CsDxyOLjAqv4A0FoG3XjJ2xdIyerexPAzIHl6wvkTtiDJIiPJoWEb
         0fAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665510; x=1762270310;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mHeO0cQH9RupTiAzoEqwl/Xfh7lWUTkvWVkOhCTs6b8=;
        b=TThgn72Gq/pNfIoscXPmqfrNleFBSzEsOszHm6FxuNhlnCqwXZUKPmOG9a3KaiHrJB
         5yU15zUAN1Nusr39iM4WDQY/E0FJmSWbAibMVf91eOq8FWMPjMd8sp9ksR+B8S4xA1YF
         zlBgMSp8580FuU2OtR0mX5Sr1uDzRUy/bHKunjm7Fgr1NYq/EJT6/6dhHvk53alYBRaT
         H/n7kQhVzBjh8WD1ElxB2e7o9t8uIn99jyLywJSqNb4NdlQAO0wTAyKotLqHEzwy9Ygx
         eTu16vF9iE8rcBOusLqBTC8pYfwoZqrQv7vJo2BT4tEG0FfoKwZCxSkFUbusZoFVELYJ
         eP0A==
X-Forwarded-Encrypted: i=1; AJvYcCXGCcDelKQbZKbT6snAaNbUV1XLnofj3LaMj4U1b7g0pZb4fUy6RKz91kLAd8qSo2zOno++A5qkkoaS@vger.kernel.org
X-Gm-Message-State: AOJu0YwtCKuUulb3vbQnV3Hxn1hPYK2FPwloteb9Nm+n+hcZvrn6ZPNB
	l65QKc/RW0CIa+qvgmpJolTjfYFihQXPZXcTFLkT3rSr8DcWX05WiYnM
X-Gm-Gg: ASbGncuF3CcFdrFWW+BBtuO4m1rctapIkoPj9zONeczC1aPCt5vnSBCRxLz7K9PKYKh
	HfJhokDLCZg9sain50gSbtvnhjTqQ6WC8c/xLT0ZIs3kx0vSOdnAfyyERpCjjRkKAksJXOO34zw
	crbuUE8q5ihdSebkW7WchzcUuQ39v8RcBUwX1bHK5VPYbhL4QyXbrU1C7pm0HJNv7YJdD++MPLU
	ItozmD79raHMmw8BfR37t6hoZ0vwaY4RrNtJg/G1OLYribGBL2OevxwtRtGcwCPcgUBsvGYJQMA
	AWkG1pAaQx05wu2CZn0S0Qx+gx/yWfZssUgtJ0Ular1JSiOT4dpcwx9zJKSnUI/0GPwk6NZ+oFE
	0flRwNncH6cWjbRC1dtIMqCebpmi+A7GDM1sRWGevoYUQ2MJ/ZTeratOP7WofqUx1v1oAj9y8+S
	uITZt7K3RaYrmpO4wbj0KRn5CObg==
X-Google-Smtp-Source: AGHT+IHD8wOZ9kRsEzqPjfcFnaZh5OBIiFI+X0Bv5mHBsnr9pYEqChNGNJM3NekxGUbL+5IxFw5DHQ==
X-Received: by 2002:a05:600d:435a:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-4771815fa1dmr19413695e9.13.1761665509267;
        Tue, 28 Oct 2025 08:31:49 -0700 (PDT)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2a02:3033:26a:a3f1:8c0b:198b:ba17:8680])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd489fa4sm197678155e9.16.2025.10.28.08.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:31:48 -0700 (PDT)
Date: Tue, 28 Oct 2025 16:31:46 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jorge Marques <jorge.marques@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 2/7] docs: iio: New docs for ad4062 driver
Message-ID: <skcjf6tdo7bktdx4g2bm42gkzd5vdtckxsxzgu7s6dwmiwfdpw@hxhol4g4adcs>
References: <20251013-staging-ad4062-v1-0-0f8ce7fef50c@analog.com>
 <20251013-staging-ad4062-v1-2-0f8ce7fef50c@analog.com>
 <20251018162113.002d92f7@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251018162113.002d92f7@jic23-huawei>

On Sat, Oct 18, 2025 at 04:21:13PM +0100, Jonathan Cameron wrote:
> On Mon, 13 Oct 2025 09:28:00 +0200
> Jorge Marques <jorge.marques@analog.com> wrote:
> 
> > This adds a new page to document how to use the ad4062 ADC driver.
> > 
> > Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> Hi Jorge,
> 
> Various comments inline.
> 
> Thanks,
> 
> Jonathan
> 

Hi Jonathan,

> > ---
> >  Documentation/iio/ad4062.rst | 89 ++++++++++++++++++++++++++++++++++++++++++++
> >  MAINTAINERS                  |  1 +
> >  2 files changed, 90 insertions(+)
> > 
> > diff --git a/Documentation/iio/ad4062.rst b/Documentation/iio/ad4062.rst
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..b486d7fe1916d2963c94581be3696cf58d51ca48
> > --- /dev/null
> > +++ b/Documentation/iio/ad4062.rst
> > @@ -0,0 +1,89 @@
> > +.. SPDX-License-Identifier: GPL-2.0-only
> > +
> > +=============
> > +AD4062 driver
> > +=============
> > +
> > +ADC driver for Analog Devices Inc. AD4060/AD4062 devices. The module name is
> > +``ad4062``.
> > +
> > +Supported devices
> > +=================
> > +
> > +The following chips are supported by this driver:
> > +
> > +* `AD4060 <https://www.analog.com/AD4060>`_
> > +* `AD4062 <https://www.analog.com/AD4062>`_
> > +
> > +Wiring modes
> > +============
> > +
> > +The ADC is interfaced through an I3C bus, and contains two programmable GPIOs.
> This raises a question on whether it makes sense for the binding to support providing
> gpios from the start (as alternative to interrupts).  Seems like the two pins
> are completely interchangeable so one might well be 'left' for use by some other
> device that needs a gpio pin.
> 
> I don't mind that much if we want to leave the binding support for that for later
> but in the ideal case we'd have it from the start (even if the driver doesn't
> support it until we have a user).

Yep, they are almost interchangeable except GP0 cannot be DEV_DRY (device is
ready to accept serial interface communications). The question is how to
represent that in the devicetree.

I am ok with adding `gpio-controller` as an optional property. If
present, and if the gp0/1 is not taken by the interrupt-names property,
it fallback to expose as a gpo0 (they cannot be set as gpi).

For the other roles, based on
https://elixir.bootlin.com/linux/v6.18-rc3/source/Documentation/devicetree/bindings/hwmon/adi,ltc4282.yaml#L109
We would have

  adi,gp0-mode = "dev-en";
  adi,gp1-mode = "rdy";

Some examples:

  // gp0: threshold-either (default), gp1: data ready (default)
  adc@0,2ee007c0000 {
      reg = <0x0 0x2ee 0x7c0000>;
      vdd-supply = <&vdd>;
      vio-supply = <&vio>;
      ref-supply = <&ref>;

      interrupt-parent = <&gpio>;
      interrupts = <0 0 IRQ_TYPE_EDGE_RISING>,
                   <0 1 IRQ_TYPE_EDGE_FALLING>;
      interrupt-names = "gp0", "gp1";
  };

  // gp0: user GPO, gp1: data ready
  adc@0,2ee007c0000 {
      reg = <0x0 0x2ee 0x7c0000>;
      vdd-supply = <&vdd>;
      vio-supply = <&vio>;
      ref-supply = <&ref>;

      gpio-controller;

      interrupt-parent = <&gpio>;
      interrupts = <0 1 IRQ_TYPE_EDGE_FALLING>;
      interrupt-names = "gp1";
  };

  // gp0: threshold crossed high value, g1: unused
  adc@0,2ee007c0000 {
      reg = <0x0 0x2ee 0x7c0000>;
      vdd-supply = <&vdd>;
      vio-supply = <&vio>;
      ref-supply = <&ref>;

      interrupt-parent = <&gpio>;
      interrupts = <0 0 IRQ_TYPE_EDGE_FALLING>;
      interrupt-names = "gp0";

      adi,gp0-mode = "thresh-high"
  };


And the driver constraints the valid configurations.

> 
> > +
> > +The ADC convert-start happens on the SDA rising edge of the I3C stop (P) bit
> > +at the end of the read command.
> > +
> > +The two programmable GPIOS are optional and have a role assigned if present in
> > +the devicetree:
> > +
> > +- GP1: Is assigned the role of Data Ready signal.
> 
> I assume that's only the case if GP1 is provided?  If GP0 is the only one
> we should allow use that for data ready.  As long as the DT allows that it is
> permissible for the driver to not do so for now.
> 

Suggested `adi,gp*-mode` should solve.

> > +
> > +Device attributes
> > +=================
> > +
> > +The ADC contains only one channel with following attributes:
> > +
> > +.. list-table:: Channel attributes
> > +   :header-rows: 1
> > +
> > +   * - Attribute
> > +     - Description
> > +   * - ``in_voltage_calibscale``
> > +     - Sets the scale factor to multiply the raw value.
> That's confusing.  This should be hardware 'tweak' to compensate for
> calibration or similar.  The text doesn't make it clear where that multiply
> is happening. Sounds too much like _scale.

The user does raw * _scale * _calibscale to get the value in volts.

_calibscale is 1 by default and serves two purposes:

* small hw corrections (matches ABI); or 
* an arbitrary user set scale, ideally also for corrections, but not
  constrained.

For the prior, the device does support computing the appropriate
_calibscale value, but it is not implemented.

If it was implemented, it would occur once during driver initialization
and then _calibscale default value would be approximately 1, (e.g.,
0.997).

> 
> > +   * - ``in_voltage_oversampling_ratio``
> > +     - Sets device's burst averaging mode to over sample using the
> > +       internal sample rate. Value 1 disable the burst averaging mode.
> > +   * - ``in_voltage_oversampling_ratio_available``
> > +     - List of available oversampling values.
> > +   * - ``in_voltage_raw``
> > +     - Returns the raw ADC voltage value.
> > +   * - ``in_voltage_scale``
> > +     - Returs the channel scale in reference to the reference voltage
> 
> Spell check needed.  Also this describes why it might take different values
> but not the bit users care about which is the standard ABI thing of
> Real value in mV = _raw * _scale 
> 
Ack, will describe

 raw * _scale * _calibscale

> > +       ``ref-supply``.
> > +
> > +Also contain the following device attributes:
> > +
> > +.. list-table:: Device attributes
> > +   :header-rows: 1
> > +
> > +   * - Attribute
> > +     - Description
> > +   * - ``samling_frequency``
> 
> Check these.. sampling_frequency.
> 
> > +     - Sets the sets the device internal sample rate, used in the burst
> > +       averaging mode.
> 
> It's not use otherwise?  That's unusual ABI.  I'd expect it to give
> the right value at least when burst mode isn't used. Or is burst mode
> the only way we do buffered capture?
> 

It is not used otherwise, the device internal sample rate is used only
to evenly distribute readings used in the burst averaging mode.
There is no sampling trigger to evenly space the adc conversion reading,
e.g.,:

  Oversampling 4, sampling ratio 2Hz
  Sampling trigger |        |        |        |        |
  ADC conversion   ++++     ++++     ++++     ++++     ++++
  ADC data ready      *        *        *        *        *

  Oversampling 4, sampling ratio 1Hz
  Sampling trigger |        |        |        |        |
  ADC conversion   + + + +  + + + +  + + + +  + + + +  + + + +
  ADC data ready         *        *        *        *        *

For this driver, the sampling trigger is a register access (the stop bit
of the i3c transfer to be exact), so in buffer mode it reads as fast as
possible.

> > +   * - ``sampling_frequency_available``
> > +     - Lists the available device internal sample rates.
> > +
> > +Interrupts
> > +==========
> > +
> > +The interrupts are mapped through the ``interrupt-names`` and ``interrupts``
> > +properties.
> > +
> > +The ``interrupt-names`` ``gp1`` entry sets the role of Data Ready signal.
> > +If it is not present, the driver fallback to enabling the same role as an
> > +I3C IBI.
> 
> It feels like it should be easy to use the other GPO pin in this case if that
> is present. 
> 
adi-gp0-mode should solve.

I wouldn't auto-set the mode by the position in the interrupt-names
array, but let me know your opinion.

Best regards,
Jorge
> > +
> > +Low-power mode
> > +==============
> > +
> > +The device enters low-power mode on idle to save power. Enabling an event puts
> > +the device out of the low-power since the ADC autonomously samples to assert
> > +the event condition.
> > +
> > +Unimplemented features
> > +======================
> > +
> > +- Monitor mode
> > +- Trigger mode
> > +- Averaging mode
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index afbfaeba5387b9fbfa9bf1443a059c47dd596d45..ce012c6c719023d3c0355676a335a55d92cf424c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -1405,6 +1405,7 @@ M:	Jorge Marques <jorge.marques@analog.com>
> >  S:	Supported
> >  W:	https://ez.analog.com/linux-software-drivers
> >  F:	Documentation/devicetree/bindings/iio/adc/adi,ad4062.yaml
> > +F:	Documentation/iio/ad4062.rst
> >  
> >  ANALOG DEVICES INC AD4080 DRIVER
> >  M:	Antoniu Miclaus <antoniu.miclaus@analog.com>
> > 
> 

