Return-Path: <devicetree+bounces-20525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B96517FFC3C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 21:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7637B2817DE
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 20:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACEA25A115;
	Thu, 30 Nov 2023 20:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cxLbME04"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34DAB1737
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 12:15:14 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6d812988394so831274a34.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 12:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701375313; x=1701980113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FO/kRurvZ75+kMpCvS7WQKXERPiftR1fMbdInuY1QHQ=;
        b=cxLbME04Ux0SJcg8QQ6Ms7tJf6ZTe+qG86/+aGZmGWGVML6P53ICEulmY4q+ZSgLb9
         TqKDtsmCaxVBJmPPCj1+Qvqif2Pkx8FEgQcKsVjRjkrc/Gv6mdfC2DIzsckPnVJEct7h
         J9ju3Cg6wpdpzkRqMTGkzHQlUoB8r5HdkvAcHUC6ZWHH39uYx4BI6ewtPHC7pKNzgzz3
         UuFpQgZ5utu9tK98IlQ/VONqL37T9Y4S2RyPyNkaE0m3sQVcIxiOY78oixzr+6cgZTUv
         TiOV7F00FE669vfXiaI8Mo6fES5VZxaED02vhawYVe9ui6xm85+R3+KEAEPJLZKKN9E7
         Tziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701375313; x=1701980113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FO/kRurvZ75+kMpCvS7WQKXERPiftR1fMbdInuY1QHQ=;
        b=XgPC1bZGnCR5Er5heOG0Wq66z4j6kdSyizNJObXnUS8+cZsEI2qMy59r4NUDbfCPYa
         hUsfKB0Z2FzJFtxIqDvWKkM6ell5nqywj2UxcG99VVf2YsMaeV7GOAhmbjk3zd9Cwl6f
         ufrGgRXfm6tkJaIVemJUB5W5ahGY0njFbGq3H5l8WvNwqlnecGA55qI1XFN69RHq4gx7
         XVcoFOZUR+O+Ms2OwrAkrkBCp6jKF0aVIYzkq78c7Kl45/RzPaSQb5t8wlKvRVWu64w2
         7dHGY6cejjDh8mygeNh66JxYK9zb9V5nyYrO1G5erlR19QBb+f68APR+MlMbxRohG+x2
         htdA==
X-Gm-Message-State: AOJu0YwYGerPdAPNccS4DQubi9k289qIbLyu3cjqGGHaASUXNN5yFW7M
	ZK9f6VRwYJbW1885TWf3yjHoc5krucsHHv6B4gVU6w==
X-Google-Smtp-Source: AGHT+IGE78vgIP7nCnvTYi+v3uOEtJVvVccysnd2brNW5+bTr9Fyg2vYbHbRPXbhzUr8ZgFH5825fib629i8juGGv5I=
X-Received: by 2002:a9d:75c1:0:b0:6ce:26e6:19fa with SMTP id
 c1-20020a9d75c1000000b006ce26e619famr722446otl.23.1701375313530; Thu, 30 Nov
 2023 12:15:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124-ltc4282-support-v2-0-952bf926f83c@analog.com>
 <20231124-ltc4282-support-v2-2-952bf926f83c@analog.com> <CACRpkdaksfS4WLNQ6ohauAPq3z2LPG2uF37_jWtm0brQHaDtNw@mail.gmail.com>
 <6384831c05b8ceeaf4a16cf9229770252989b762.camel@gmail.com>
 <CACRpkdZr6TdQCLy73Yx2RdMgQifd67remdxENBKYx3UvEMm87A@mail.gmail.com>
 <971eb35068639ec404669ea5320c8183ea71a7d0.camel@gmail.com>
 <ZWiP3i80KnVk9qyx@smile.fi.intel.com> <a4bd59df0c5bc1be5d0d6f11b968fd61a59ee2e0.camel@gmail.com>
In-Reply-To: <a4bd59df0c5bc1be5d0d6f11b968fd61a59ee2e0.camel@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 Nov 2023 21:15:01 +0100
Message-ID: <CACRpkdYz+qi42Pz8CgeWybksC0edaVux6rcEhwzjDWnWe9Jr1g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] hwmon: ltc4282: add support for the LTC4282 chip
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Andy Shevchenko <andy@kernel.org>, nuno.sa@analog.com, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 4:20=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:

> Well, I did spent some time on the gpio thing so I would like to have it =
in but yeah,
> no hard feelings if it does not go in.

I think it's a good idea to include it, especially if you can, in the
commit message,
illustrate how you test it with the libgpiod toolset. If you can test it al=
l the
way such that you have real hardware connected to real electronics where
you can observe the values on these pins or read them: even better.

GPIOs tend to get used, and then we are prepared.

> So, I actually talk with some hw guys and the pull_low is not really like=
 a pull_low
> resistor.

We usually call it pull down, so the PIN_CONFIG_BIAS_PULL_DOWN
config property.

This is vital to e.g. create a bit-banged I2C link, which is something I
suspect could be useful on this hardware.

>These pins are effectively an open drain. Which means, setting them as
> input means setting them in high-z (turning off the mosffet) - and I do h=
ave a bug in
> my code regarding this -

The gpiolib framework assumes we can do open drain emulation by
setting lines as input. It is used as fallback unless the hardware has
an explicit open drain setting.

> Or if you want them as outputs you can set the level low
> (and it will always be low - just turn on the mosffet) or you can also se=
t high-z
> which means it will be either low or high depending on your external circ=
uitry. The
> point is, you can still have your pin acting as a normal gpo if you accom=
modate your
> circuitry for it (can also use these pins for things like buses).

Yeah that is just standard open drain behaviour, by the book.
Also documented in
https://docs.kernel.org/driver-api/gpio/driver.html
under the heading "GPIO lines with open drain/source support".

> Also got me thinking if a gpi vs gpo devicetree property would make sense=
. But I
> would likely leave it more generic/relaxed for now (even though I think y=
ou would
> need to be creative and actually use more HW to have the possibility of u=
sing these
> pins as GPIs and GPOs at the same time).

We don't define that in the device tree currently, we just make the driver
not support output on input-only pins and vice versa, by returning error
codes on the .set_direction() callbacks.

Yours,
Linus Walleij

