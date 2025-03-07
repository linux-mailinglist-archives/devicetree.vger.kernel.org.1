Return-Path: <devicetree+bounces-155364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A20EA565C3
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 11:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9DA63AC7FA
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 10:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917D12101B5;
	Fri,  7 Mar 2025 10:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RE0CEpYq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DC82116EC
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 10:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741344736; cv=none; b=cPoR0x470dJe/OrhDgF6nXkSM5pkzfqo3oAXYJgYEILWZA6TnKH/s+SZbhSEK2l+w5Mawke2W9euuh/u324ByTA/TnHt52nOgvxUj2CWcfOGR3F97fRxTE4ncoVN6hZLhbWo1KeADE0J3+CsFVsV1+XquFp3dcZAtYFETYnQPP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741344736; c=relaxed/simple;
	bh=UPiCGB7id3J1Lgv5V6c3KuQAx79xGzzqfArR+kR1p9s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C9XKDZhw9PulXMlXZ/6/gGQ8lXv0cyUfWjxhxxLGCLgwpOOnQXB2ZlbhrbsFC16NhaZ8QN8jFQ9jEkOrxtim0ePh4unaCmZrFa8NSpHkSeo032oxYq9dtlA2dpOlBpXA6GbO2PxvIFLkPONKN4Rsm0S9uU2YvU6TAGWxNrUgX34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RE0CEpYq; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30b83290b7bso19314601fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 02:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741344732; x=1741949532; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43iEn7JI+JVfImukURZDy+wlnZTduIdMuwCwHiHb2L4=;
        b=RE0CEpYqlv8/bp/HpxRm2R5y/7Itgyzq1j79ZmpZGp/tLrTN6svYbSDvNjQxvx0OLO
         qEH9K9jBMqaTtN6LXUFpxo2OP/SOVQ/NpTAk7vtFjm2RMKVCDuWRIOlp6yBKXYPZtzuV
         LMnUQ3D4puD0lddLoigvZspYoOb7RdPO/70i09/r/WuUvu/3l5uS7SKFVPBzjaiXx0Gs
         epYZsWvoEKtzYVyAlsK5yoJj1N7CsFhhpf5JiCbZ6vEdYg17on4ZREs77/fAJWBRqQer
         D+OzRjlkDrtrID9tViMZYMo85m0dqqdB9c1Uh4jlnVQbxkGhUYQWMrVg+/DfQ3RGeh2n
         V6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741344732; x=1741949532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43iEn7JI+JVfImukURZDy+wlnZTduIdMuwCwHiHb2L4=;
        b=uZahsFfzilefumUFS1pGuuTIbgeJ4PEYVuEKeij34enGGvvwgC4oPuq08HhE5mExFe
         mkDGSZjZgmtRmwkN9CccgPxhsG8I29X3cssVCzdUlvbUq/dgu/H0Ecilns1ajtwom2OO
         sNizMu9vO7BdZS9bINkyrd/m6Ujhiur7rE28dH8RnFzLAZvKVFWLPei00pIqoPaKnO2H
         2IlNhpXHPl9zu7gQp9qdSz9N0c5rmTfUakV0vjDdnpgR6x0qWiMbrgfKgRnYkVTYcuUc
         gDwcjEXIzXCiD3i2ehR/GZrCWu7lzgc2KwSLHBYsxuwV5EJxU2SQD94I26OxOkoHp6Jr
         bvgA==
X-Forwarded-Encrypted: i=1; AJvYcCUnbDQdlUPiOLupe9Cq2RMaSfsWanv+HkNcOrm6aMEAmnYmU6SkF8/mNTNpxgfPcWEPWcVG3536x9ts@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg4Mv5AeEuGEttuxcdEwqpP0w04otskrXuOEs+7bPBBp8DrnZk
	ope6eTmaORKm5ORgS1NCxqWNdPt/3sTSCTdR79TYQTaZj01X0ni72G6zBJ9SAhg9RXo4lgrlgdk
	UggGS7sKZ5EyVoH1W2kytCtz0QIdhcNGzmwesNg==
X-Gm-Gg: ASbGnctKXXoLvXJq+/VjDrISgedPaRW56ajezcWNRCMR+/1ro5YRvQ3l4Bmc4P6g5QT
	kGnRJbfsgeotMrnSYBVa3/F6t+vLPWUGAUwzvWrKhcfmKYv76GDVzEB1YRGX2pQ/ZmgwSebIyhs
	Gp/2cE15E3Io+Nz7f1NmLrrqKxng==
X-Google-Smtp-Source: AGHT+IHB3kK56vH8JV6/mkLBm8uqvR7p6MJCGGVmcvlyTK2KPum07gwr4GAktMuyL3uRXkIC0qo1105z0ZQF6RQulRM=
X-Received: by 2002:a05:651c:1546:b0:308:efa4:d277 with SMTP id
 38308e7fff4ca-30bf451a693mr10523131fa.15.1741344732515; Fri, 07 Mar 2025
 02:52:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250306-iio-driver-ad4052-v1-0-2badad30116c@analog.com> <20250306-iio-driver-ad4052-v1-3-2badad30116c@analog.com>
In-Reply-To: <20250306-iio-driver-ad4052-v1-3-2badad30116c@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 7 Mar 2025 11:52:01 +0100
X-Gm-Features: AQ5f1JoiUtEQ4jvbbzJp6JsM_Z5iT3lzE5Y0UsgAtaayiupCCfLSsOBfI0fpWNs
Message-ID: <CAMknhBFiZZUtCkTjQ=AVSgwqe=wCkMnqAmaTqvW_X6fm1OKuYA@mail.gmail.com>
Subject: Re: [PATCH 3/4] docs: iio: new docs for ad4052 driver
To: Jorge Marques <jorge.marques@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 3:04=E2=80=AFPM Jorge Marques <jorge.marques@analog.=
com> wrote:
>
> This adds a new page to document how to use the ad4052 ADC driver.
>
> Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> ---
>  Documentation/iio/ad4052.rst | 93 ++++++++++++++++++++++++++++++++++++++=
++++++
>  MAINTAINERS                  |  1 +
>  2 files changed, 94 insertions(+)
>
> diff --git a/Documentation/iio/ad4052.rst b/Documentation/iio/ad4052.rst
> new file mode 100644
> index 0000000000000000000000000000000000000000..cf0cbd60d0a48ea52f74ea02f=
de659fcdba61aa1
> --- /dev/null
> +++ b/Documentation/iio/ad4052.rst
> @@ -0,0 +1,93 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +AD4052 driver
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +ADC driver for Analog Devices Inc. AD4052 and similar devices.
> +The module name is ``ad4052``.
> +
> +Supported devices
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The following chips are supported by this driver:
> +
> +* `AD4050 <https://www.analog.com/AD4050>`_
> +* `AD4052 <https://www.analog.com/AD4052>`_
> +* `AD4056 <https://www.analog.com/AD4056>`_
> +* `AD4058 <https://www.analog.com/AD4058>`_
> +
> +Wiring modes
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The ADC uses SPI 4-wire mode, and contain two programmable GPIOs and
> +a CNV pin.
> +
> +The CNV pin is exposed as the ``cnv-gpios`` and triggers a ADC conversio=
n.
> +GP1 is ADC conversion ready signal and GP0 Threshold event interrupt, bo=
th
> +exposed as interrupts.
> +
> +Omit ``cnv-gpios`` and tie CNV and CS together to use the rising edge
> +of the CS as the CNV signal.
> +
> +Device attributes
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The ADC contain only one channels, and the following attributes:
> +
> +.. list-table:: Driver attributes
> +   :header-rows: 1
> +
> +   * - Attribute
> +     - Description
> +   * - ``in_voltage0_raw``
> +     - Raw ADC voltage value
> +   * - ``in_voltage0_oversampling_ratio``
> +     - Enable the device's burst averaging mode to over sample using
> +       the internal sample rate.
> +   * - ``in_voltage0_oversampling_ratio_available``
> +     - List of available oversampling values. Value 0 disable the burst
> +       averaging mode.
> +   * - ``sample_rate``
> +     - Device internal sample rate used in the burst averaging mode.
> +   * - ``sample_rate_available``
> +     - List of available sample rates.

Why not using the standard sampling_frequency[_available] attributes?

> +
> +Threshold events
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The ADC supports a monitoring mode to raise threshold events.
> +The driver supports a single interrupt for both rising and falling
> +readings.
> +
> +During monitor mode, the device is busy since other transactions
> +require to put the device in configuration mode first.

This isn't so clear to me. Is this saying that events do not work
while doing a buffered read? Do you need to do need to read the
in_voltage0_raw input to trigger an event?

> +
> +Low-power mode
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +The device enters low-power mode on idle to save power.
> +Enabling an event puts the device out of the low-power since the ADC
> +autonomously samples to assert the event condition.
> +
> +SPI offload support
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +To be able to achieve the maximum sample rate, the driver can be used wi=
th the
> +`AXI SPI Engine`_ to provide SPI offload support.
> +
> +.. _AXI SPI Engine: http://analogdevicesinc.github.io/hdl/projects/ad405=
2_ardz/index.html

This diagram show a PWM connected to the CNV pin on the ADC, but I
didn't see a pwms property in the DT bindings to describe this.

> +
> +When SPI offload is being used, additional attributes are present:
> +
> +.. list-table:: Additional attributes
> +   :header-rows: 1
> +
> +   * - Attribute
> +     - Description
> +   * - ``in_voltage0_sampling_frequency``
> +     - Set the sampling frequency.
> +   * - ``in_voltage0_sampling_frequency_available``
> +     - Get the sampling frequency range.
> +
> +The scan type is different when the buffer with offload support is enabl=
ed.
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fef8adaee888d59e1aa3b3592dda5a8bea0b7677..312b2cf94b8f06298b1cbe597=
5ee32e2cf9a74d8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1322,6 +1322,7 @@ M:        Jorge Marques <jorge.marques@analog.com>
>  S:     Supported
>  W:     https://ez.analog.com/linux-software-drivers
>  F:     Documentation/devicetree/bindings/iio/adc/adi,ad4052.yaml
> +F:     Documentation/iio/ad4052.rst
>
>  ANALOG DEVICES INC AD4130 DRIVER
>  M:     Cosmin Tanislav <cosmin.tanislav@analog.com>
>
> --
> 2.48.1
>

I didn't have time to read the full datasheet or look at the driver
code yet, but can do that next week.

