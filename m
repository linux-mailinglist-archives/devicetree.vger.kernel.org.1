Return-Path: <devicetree+bounces-238140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1D9C57A73
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F9C3500D32
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61240351FD4;
	Thu, 13 Nov 2025 13:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JQQN8ukn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E6350A13
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 13:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763040030; cv=none; b=Zz3U4ePrQYyBug9ij336q6H15CMNcy50t6Qs0ni9M579s+K7fzgxirMjUyqwtWqaAq8UXwgxeBm5YfZV3mfz5nBxtcisJA2tkydbYo0Ht4pLnvBUYbUj8Ca2ivQrYgmo+wi43IN325fxqZxNHoMPxIQGYzvrt4aXuTYSwJ6bTjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763040030; c=relaxed/simple;
	bh=CWufZ3aWICevbswGJdfZFHdWkmCHzWxSngqMWXLAGNA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ewZG327UHot1cRkihtaVMes2JOHeR9VZyq6smL0mTypi2MpH4BhopU5FF9yh+DnGF4DUWBJKKPrICtUeDxe6tz3ddeJ6IpcXWdkc6nKr3NjvcqZxCdvLbUVDjbzGMyly/EE9Rihl7Hf/GMQyJuUMKslr7BTjF7zgmaeCUYrZAi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JQQN8ukn; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2956d816c10so8717495ad.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 05:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763040026; x=1763644826; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mR9RWIL7H8zmL2WU5RCX+NFeC7ROJ5E1DQWYfodq40c=;
        b=JQQN8ukne1tUxo5fkFN5UsAYrxG2FuozHekS+axMBKtoOu8Ges1sBc51mj6Bqckoi6
         UJGW5xqwZd09sCSDdbWeGD64we6323sZ5htbdCk1raeP8joDNPMj75aWTUYYCNQEPHss
         pNvTl64f5niamnPN+x9Plzv8fFk+qt0pF35O5aCG0ozRb+z6pGHOmJ1LRUzcjA69moQ+
         q9kA3MmFNi/bLGSYY+EPQJn52xqk7keZY1EZaSTzyJBXzjA+UDEzhjkU/EN5u2Za+FUD
         Pxms6uNOMMiATWkCAFaq2jWq4KiQiVbPqOkRr3CY0KztMYqBY88P2Of2ceJ2GHkeIjfj
         OJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763040026; x=1763644826;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mR9RWIL7H8zmL2WU5RCX+NFeC7ROJ5E1DQWYfodq40c=;
        b=kYNldNd8vSO0wB5KITU2+MK7BPFHuaEJ10HkLkb4EF+7asAXcxwGGke2pLeIltQY2d
         aNGzYfjmkL41k8an6CEgxEnUWmHHfUeCyKKHJSkM0OdOF6xDuskRdTW91H2mW/w48Gg5
         kWmYUAZIKKr9kX4TSOr4p6O6O80eI2QnkX+s0NBFqa9mEGvvZ0QjnWh+zT6MbeK4hC3R
         izJs+1X/iWFKPg0WNu8We7/UcOP4W2F1mGrsBa1neQFke5JCWQv0bM8eM78tbq4ojGDX
         hIzcKad8zGWPrtG2un6gzJay2OeHUQ6Wz0X6e6oRvP2EosV8M5ofYvQSFHf2TpQLX4BA
         Vxzg==
X-Forwarded-Encrypted: i=1; AJvYcCVMk7wyvs6k/dX9JggvkGHaqtudUGmnbS7Y2lUxQbj4uUBxNBUpBo5wj+dh8xD0EqGXRx43mq8hPR5j@vger.kernel.org
X-Gm-Message-State: AOJu0YyB5v+xeBg3y9sek3VLXpxxcFf/gdr+F+Q6BqoBMibG3fql3aIk
	t6RTpMCQJdfp7PTJTeD1Jbvok+wQ6IotmhxFrc7STMQAmeKj+OvftdDv
X-Gm-Gg: ASbGncvmTtR86yhB0VefJEf/hx3sCJanX87Ksfi4XGFLSUdGfQn8Snca2vHRYVXO//4
	DMvy3MhsOekmHickjCOK80hjoIj3c6CHhlFBMvA1ljArwKVC7mYb9LgzmT0/NHsLOo3P2KbFPox
	rrJvg/fB2AjjaaHx+OLpsBK8xsjSXuj/oJN0WahmRzAu6rNXtLKOypBxHvFOoNLF6mHvu550SGj
	JcaC1wpIXwDsA604CWQiAjkjLEWXV5ojZE+4NvC2VjPznhi3KG17gchpGZ1O2thQF4IUNUITE8f
	3afjaMT9f4ysb6Ut6Qv6XDo2EtynQdAxxpWs6Va4gAmhHLU1gEE14OmBZRMtWxykkNGx7zmLsVi
	4J/z7S8yFZ4ZqFkMNGFh4SXsX0sjdfaJcBnaBnAuDTOUgryyHJ4zesntRTB4WZ5A8U6jUsd/1BB
	zQXch86D/dcg==
X-Google-Smtp-Source: AGHT+IFL27X63nvi0VP0wYBacQeGW9sANAuXPW2TawVdUInxz68hcU4j60ThwM3hzBhLfP46DW8t8g==
X-Received: by 2002:a17:902:f610:b0:295:395c:ebf9 with SMTP id d9443c01a7336-2984ee2960cmr79762635ad.55.1763040026180;
        Thu, 13 Nov 2025 05:20:26 -0800 (PST)
Received: from localhost ([2804:30c:1661:8a00:578a:911c:ac25:24a6])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-2985c2bed39sm26108565ad.77.2025.11.13.05.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 05:20:25 -0800 (PST)
Date: Thu, 13 Nov 2025 10:21:44 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH 2/3] dt-bindings: iio: frequency: add adf41513
Message-ID: <aRXbaMGbxdbwgUhi@debian-BULLSEYE-live-builder-AMD64>
References: <20251110-adf41513-iio-driver-v1-0-2df8be0fdc6e@analog.com>
 <20251110-adf41513-iio-driver-v1-2-2df8be0fdc6e@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251110-adf41513-iio-driver-v1-2-2df8be0fdc6e@analog.com>

Hi Rodrigo,

Many comments inline in addition to what Krzysztof has already mentioned.

On 11/10, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> ultralow noise PLL frequency synthesizer that can be used to
> implement local oscillators (LOs) as high as 26.5 GHz
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  .../bindings/iio/frequency/adi,adf41513.yaml       | 268 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 269 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,adf41513.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,adf41513.yaml
> new file mode 100644
> index 000000000000..7e1ad80d68af
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,adf41513.yaml
> @@ -0,0 +1,268 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/frequency/adi,adf41513.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADF41513 PLL Frequency Synthesizer
> +
> +maintainers:
> +  - Rodrigo Alencar <rodrigo.alencar@analog.com>
> +
> +description:
> +  The ADF41513 is an ultralow noise frequency synthesizer that can be used to
> +  implement local oscillators (LOs) as high as 26.5 GHz in the upconversion and
> +  downconversion sections of wireless receivers and transmitters. The ADF41510
> +  supports frequencies up to 10 GHz.
> +
> +  https://www.analog.com/en/products/adf41513.html
> +  https://www.analog.com/en/products/adf41510.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adf41510
> +      - adi,adf41513
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 25000000
> +
> +  clocks:
> +    maxItems: 1
> +    description: Clock that provides the reference input frequency.
> +
> +  '#clock-cells':
> +    const: 0
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  vcc-supply:
> +    description: Power supply for the device (3.3V)
I see we can have AVDD1 == ... == AVDD5 == VP == 3.3V.
But we should document them all here in case somebody wants to use a separate
supply for any of those.

> +
> +  chip-enable-gpios:
> +    description:
> +      GPIO that controls the chip enable pin. A logic low on this pin
> +      powers down the device and puts the charge pump output into
> +      three-state mode.
> +    maxItems: 1
> +
> +  lock-detect-gpios:
> +    description:
> +      GPIO for lock detect functionality. When configured for digital lock
> +      detect, this pin will output a logic high when the PLL is locked.
> +    maxItems: 1
> +
> +  adi,power-up-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint64
> +    minimum: 1000000000
> +    maximum: 26500000000
> +    default: 10000000000
> +    description:
> +      The PLL tunes to this frequency (in Hz) on driver probe.
> +      Range is 1 GHz to 26.5 GHz for ADF41513, and 1 GHz to 10 GHz for ADF41510.
The PLL settings are also controllable at runtime and independent of hw
connections, right? Can't this be just a sw/driver default instead of a dt
property?

> +
> +  adi,reference-div-factor:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 32
> +    description:
> +      Reference division factor (R Counter). If not specified, the driver
> +      will calculate the optimal value automatically.
> +
> +  adi,reference-doubler-enable:
> +    description:
> +      Enables the reference doubler. The maximum reference frequency when
> +      the doubler is enabled is 225 MHz.
> +    type: boolean
This also seems like runtime configuration. At first glance, my feeling is that
it impacts the output frequency and thus should probably be somehow handled
in adf41513_write() IIO_CHAN_INFO_FREQUENCY case. By the way, if IIO_VAL_INT_64
format allows setting the frequency resolution in sub-Hz (see comment in driver file),
then I also suggest to use usual IIO _raw interfaces, e.g.

static const struct iio_info adf41513_info = {
  .write_raw = adf41513_write(),
	.write_raw_get_fmt = adf41513_write_raw_get_fmt(),
	.debugfs_reg_access = &adf41513_reg_access,
};

> +
> +  adi,reference-div2-enable:
> +    description:
> +      Enables the reference divide-by-2 function. This provides a 50%
> +      duty cycle signal to the PFD.
> +    type: boolean
This one also seems to be associated with output frequency and runtime
configurable, no?

> +
> +  adi,charge-pump-current-microamp:
> +    minimum: 450
> +    maximum: 7200
> +    default: 2400
> +    description:
> +      Charge pump current in microamps. The value will be rounded to the
> +      nearest supported value.
> +
> +  adi,charge-pump-resistor-ohms:
> +    minimum: 1800
> +    maximum: 10000
> +    default: 2700
> +    description:
> +      External charge pump resistor value in ohms. This sets the maximum
> +      charge pump current along with the charge pump current setting.

hmm these charge-pump props seem a bit tricky. IIUC, the achievable charge pump
output currents depend on the charge pump resistor value and the cp output
current would be something that a user would latter want to fine tune at
runtime. I'd keep adi,charge-pump-resistor-ohms only, pick a default for the
pump current, then provide an IIO attribute to allow tweaking the charge pump
current for fine tuning the loop filter frequency response. This might need
a new IIO ABI.

> +
> +  adi,muxout-select:
> +    description:
> +      On chip multiplexer output selection.
> +      high_z - MUXOUT Pin set to high-Z. (default)
> +      muxout_high - MUXOUT Pin set to high.
> +      muxout_low - MUXOUT Pin set to low.
> +      f_div_rclk - MUXOUT Pin set to R divider output
> +      f_div_nclk - MUXOUT Pin set to N divider output
> +      lock_detect - MUXOUT Pin set to Digital lock detect
> +      serial_data - MUXOUT Pin set to Serial data output
> +      readback - MUXOUT Pin set to Readback mode
> +      f_div_clk1 - MUXOUT Pin set to CLK1 divider output
> +      f_div_rclk_2 - MUXOUT Pin set to R divider/2 output
> +      f_div_nclk_2 - MUXOUT Pin set to N divider/2 output
> +    enum: [high_z, muxout_high, muxout_low, f_div_rclk, f_div_nclk, lock_detect,
> +           serial_data, readback, f_div_clk1, f_div_rclk_2, f_div_nclk_2]

I don't think this should be a dt property. The mux output can be controlled at
runtime by updating register 12. Also, if somebody sets, for example,
'muxout_high' here, then the user would not be able to set the mux output to
something else latter? Would not be able to output the configured RF output
frequency for the example?

> +
> +  adi,muxout-level-1v8-enable:
> +    description:
> +      Set MUXOUT and DLD logic levels to 1.8V. Default is 3.3V.
> +    type: boolean
> +
> +  adi,phase-detector-polarity-positive-enable:
> +    description:
> +      Set phase detector polarity to positive. Default is negative.
> +      Use positive polarity with non-inverting loop filter and VCO with
> +      positive tuning slope, or with inverting loop filter and VCO with
> +      negative tuning slope.
> +    type: boolean
> +
> +  adi,lock-detect-precision:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 3
> +    description:
> +      Lock detector precision setting. Controls the sensitivity of the
> +      lock detector. Lower values of precision increases the lock detector
> +      window size.
This sounds more like something that could be supported through an IIO device
attribute.

> +
> +  adi,lock-detect-count:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    description: |
> +      Lock detector count setting (3-bit value). Determines the number of
> +      consecutive phase detector cycles that must be within the lock detector
> +      window before lock is declared. The count grows in powers of two of the
> +      programmed value:
> +      - if adi,fast-lock-enable is set count = 2 * 2^value
> +      - if adi,fast-lock-enable is not set count = 64 * 2^value
> +
> +  adi,lock-detect-bias-microamp:
> +    description:
> +      Lock detector bias current. Controls the lock detector window size
> +      along with the lock detector precision setting. Lower bias current
> +      increases the window size.
> +    enum: [10, 20, 30, 40]
> +
> +  adi,fast-lock-enable:
> +    description:
> +      Enable fast lock mode. This changes the lock detector clock selection
> +      for faster lock indication.
> +    type: boolean
adi,lock-detect-count, adi,lock-detect-bias-microamp, and adi,fast-lock-enable
also sound like they could be IIO device properties.

> +
> +  adi,phase-resync-enable:
> +    description:
> +      Enable phase resync functionality. This produces a consistent output
> +      phase offset with respect to the input reference.
> +    type: boolean
IIUC, this would work similarly to the description of out_altvoltageY_phase ABI,
except the phase would be relative to the reference clock instead of a second
output channel. New IIO ABI? Or, maybe, provide out_altvoltage0_frequency and
out_altvoltage1_frequency? One of the altvoltageY would be the frequency of
muxout while the other would be the frequency of the reference clock. Then phase
resync would be supported through out_altvoltageY_phase. Not sure if having
a "virtual" output channel would be misleading, though. Extending the
out_altvoltageY_phase ABI might be an alternative.

> +
> +  adi,12bit-clk-divider:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 4095
> +    description:
> +      CLK1 divider value used when adi,phase-resync-enable is set
> +
> +  adi,12bit-clk2-divider:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 4095
> +    description:
> +      CLK2 divider value used when adi,phase-resync-enable is set
CLK1 and CLK2 would be calculated by the driver according to the value set
through out_altvoltageY_phase (if the idea above makes sense). Then
adi,12bit-clk-divider and adi,12bit-clk2-divider would also not be needed.

> +
> +  adi,le-sync-enable:
> +    description:
> +      Synchronize the rising edge of LE on an SPI write with the falling
> +      edge of the reference signal to prevent glitches.
> +    type: boolean
> +
> +  adi,freq-resolution:
> +    $ref: /schemas/types.yaml#/definitions/uint64
> +    minimum: 1
> +    default: 1000000
> +    description:
> +      Initial frequency resolution in micro-Hz (µHz) for the algorithm to achieve.
> +      This influences the choice between fixed and variable modulus modes.
> +      Default is 1000000 µHz (1 Hz).
This one also looks like it could be a driver default instead of a dt prop.


Best regards,
Marcelo

