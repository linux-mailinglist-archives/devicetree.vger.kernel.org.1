Return-Path: <devicetree+bounces-112908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9D09A3D83
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 13:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4823284A9E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 11:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144798F6B;
	Fri, 18 Oct 2024 11:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u45hZqJo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B41118028
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729252196; cv=none; b=GAq1/Se1uEI24CLQSUH7v4u4pFDHJUsJFyB+Cbg/PqYi8YG/FyOMTjXLJHJCMeziEeHnZirCplA9NRt+pkoIC8QsSPQClfN2tmmbCjwdUp3CUWn4wtCwXflUxh7z5SgVLFzQLIrhyWM9MAMULkjEJhVxvLJQChX/3y8HMwMfMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729252196; c=relaxed/simple;
	bh=x8264GlX4CVxen110AJuRI1evTFgL5Lnszek+ggi2+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jeVhHVI/O1M+0jJyhIjCahx8t4gtiPkGCo2HHIdkGvN/DuyxI9IkyA3Qq5EiBF5y5+x0QiUNRZl1i1c5aXe+Q4GjFou1/BNzm7y5AsK0i1nyc8kQrkXhKR+qNnlm85abVDUeKt15FfZdw3Pcda0tTIBOd1+vZSMPPmArliWGX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u45hZqJo; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso1862405e87.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 04:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729252192; x=1729856992; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gruTW7IeagTi5sJeA9ebW1N47SmkEh16ZSSnf4PRDcU=;
        b=u45hZqJo/mnV07Hb+aM5xehgB19OmQZMeqjKnWsGvceBUC4haTGyvI70xgPNg6+XU3
         rwwtyqwKhPmfizJD1mT+oWN5WaIzqPpwOtJKT6SY3PC+OE8oi4CqPpNp5OoF5VtuZ+Fo
         VgoCEcTyfyxQYtTVcFGj2TyIVQKwVAqA45VEfG8r2qFJVNZ1Bay4fQvixqJpEn9JHf/G
         f/fZa6WC6/8KtEI8BoMl7jHVpAo9y3jVK3/76oua9MB+Lsxv5vIfD+kY9iIwnQNJrUoV
         CrRXqDM1FbqkNJqsHxUT7aKEmWB+8tVPHeuMM6KmMHRlbzps+KhleImFi3+qvg9OLS1Z
         Xg+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729252192; x=1729856992;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gruTW7IeagTi5sJeA9ebW1N47SmkEh16ZSSnf4PRDcU=;
        b=wSucah8gHXpn1TW06gCAgd/qTv27aQwzomb4IWIYdhw6x/sgmZDDiwa4oxZt96s/zg
         qByNTwSa2S/JVPv6Kvd3eyXZAhpLL4aiZVzlYKujfIy+C/qtW76HONMfuSqTssK341lf
         fT/PlcN8MjUaLjYVUWxi03l6YYkEJQSoafbEHewnKQf2WJDxRHCHuH21ov4TCIvuF+dV
         PZEhPIAXjvwZt4yzRSBqdFJT+lHDuf7AIb+r2at6fO1PNqTFM5tgvsEsV4D1/6LKAAdj
         IrBGz/eJoQdP/962jJaKURmXfObWFGQMjT2Eih9D7JxvjUkgc2Q6J9HA3jxckOVYOK83
         ERXw==
X-Forwarded-Encrypted: i=1; AJvYcCV21fV60o8ZEph7x6AWFCxq2vySgP7VIcvqguXjUpUR6uT5Y9tFvK52pz+BnAyFs9a4vjlypOPpa0uF@vger.kernel.org
X-Gm-Message-State: AOJu0YxlRoOS9doZ1+kPd3OEU3QRwVefLoEDnZMKh4hcdbIISnw17ZA8
	V1B3sVpLZJG3gkxzBhGK/8a5GrJxsaMDVaGeDdlI4dG9U4+Tx5Whkf6sz+6B+IPSbq1NPGLuHSa
	N5QVWh3WnMUdGynXMmJyLKNj7TxOoaSiJoTcTmg==
X-Google-Smtp-Source: AGHT+IETWUqpU2b4hJOBO5m4uSTjDpaAKxv2uRGjcBCV9v7PRYsS1a3uFwxq8tX0amrHIGW5u3uHPP2Je/u50YZ6WYI=
X-Received: by 2002:a05:6512:1291:b0:539:f035:e158 with SMTP id
 2adb3069b0e04-53a15467874mr1363901e87.18.1729252192243; Fri, 18 Oct 2024
 04:49:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017-gpio-ngpios-v2-0-cecfdb38d40e@linaro.org> <ZxJGxXNl29i8d_fA@black.fi.intel.com>
In-Reply-To: <ZxJGxXNl29i8d_fA@black.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 18 Oct 2024 13:49:40 +0200
Message-ID: <CACRpkdafFs-p6ikk7cfSWc6=C=8J6Gh+oe4TagAJh0EypWg3Og@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: mmio: Support ngpios property
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 1:30=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:


> First one is why? What the *practical* issue you have? Can you elaborate
> on that?

Sure, there are these hardwares that probe directly from the
gpio-mmio driver:
Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
properties:
  compatible:
    enum:
      - brcm,bcm6345-gpio
      - ni,169445-nand-gpio
      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO contro=
ller


The practical issue is (similar to what was responded to Rob
in patch 2/2) that non-existing GPIOs will get exposed to userspace.

For patch 1/2 (adding the DT binding) it would be that without
ngpios we do not model the hardware properly.

The objection "it makes no harm to register GPIO lines
for all bits in the register" can likewise be raised to the
other 28 (if I count correctly) GPIO drivers that use this
property (git grep ngpios drivers/gpio) and I think the train left the
station long ago to object to the property in general, people
don't want to expose non-existing GPIOs to the GPIO
framework.

> Second one, is there any other way to avoid duplication of the code so
> we have one place of the property parsing?
>
> For the background I have to mention this commit:
> 55b2395e4e92 ("gpio: mmio: handle "ngpios" properly in bgpio_init()")

Oh well spotted! I completely missed the fact that we already
added ngpios parsing elsewhere in the driver.

Bartosz, can you please drop patch 2/2?

Patch 1/2 is needed however: it is just documenting the behaviour
that is already implemented.

Yours,
Linus Walleij

