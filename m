Return-Path: <devicetree+bounces-55190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0303E8946C2
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:53:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25F3C1C210E5
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B19754FBE;
	Mon,  1 Apr 2024 21:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U/ZvfOzH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79A953E35
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 21:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712008423; cv=none; b=og11c+1r0HUBG2Aj+fTjR6fkWdjyzDggKH6+uSgeIpTgnqYfBiNASVFGrQMgjKXViQQfMuoN1qiyMIoEpwKQGQ7THUmKq1ir8Aa/tRDXEhYmekVVro7iPbaqhZEKQ9VdBFgvvDd2ei1FMCeh5jdpKACAX2S0/N7XyfvbUt+gt/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712008423; c=relaxed/simple;
	bh=z34+oohRE4iUHQVMQSJ9zoczrBf91FvGc0eitZUf3MM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wwesk28uuhUMw40EJ+c2iCSF2DitXvQgJ976UGjEuP7ONRBVfLIHV4YIBzWFHmFuT0E+93h7eUkKjN3TX4pi4RLILqvBjO/kcoy4YuKNXFci4J5rXCR5ofO4PNQpbBb9Eu8VScTcAcSN2QDb9ybLZJyAYFhtu2UJFoo9eJadKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U/ZvfOzH; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d48d75ab70so65573661fa.0
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 14:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712008418; x=1712613218; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWmw9iAUS81y9sAEqW+BsG5yCiLMdfWvTp61OeEwAcE=;
        b=U/ZvfOzH6GPm0gSFOYH2mN9W5zDvO057pdafNgFERxFOeDIbY9EhGY4NHA6KRl6usd
         1uNoaQtDfqrBEzZUn9hooj1pUe/89E4ME6+YRPAM5hm0vYgIJ2Z9cP8sfbXgq74wjmTa
         BCgE7bojpq8cToz8kgkAhK81O6+Lgm3cTFueMGg+PUCQL/qaSSew7CNYE4B6H7hhGXCp
         tNkobpQ/Z+S8qJ0iCUXlQiL2HnweK8UxUvsVhknGYYFQg2yGpMHwxop+Jf4i1RRVM0hJ
         +/XJ/IZbm1/+VggLloG7QxrObzgML/UQA2rj22xk6OQ17ubPiX/BPCOkY8jRQxycqEbP
         lhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712008418; x=1712613218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wWmw9iAUS81y9sAEqW+BsG5yCiLMdfWvTp61OeEwAcE=;
        b=kUZz9VQ3+2r6t0Z5ZFXGImQ15fpyPCcCDCkxbAoHjiOTNqT5ENAOVBNqgTg4f213tw
         xE7UUGzPS8nBqYUbSR02qRGurmiimzUTUfHhjOhdgo3f++ajqzHz0GidUe36JQm6Yn3d
         WLHUNevH+al3RXzEoNZ5JnZJzv9FzRHKewFBIL3ByfI2Pi7w9V2JYj1NGpgoaO8IpcdA
         MCIgYyhl6K4xy+kPSJhAQmuCOHwA3TTGcXX7fSKQQ97hm05PB2Ctccmeuivib4GHiokb
         9pUEi48F5S1Jov8IWI2kGAfBdn+mIot/t8qkkRm89kmBpjsA1IORF9AnPYpJkBpByGRU
         VhVA==
X-Forwarded-Encrypted: i=1; AJvYcCWzcCAHMQ7kJQ+FXvXwklEUg2qQWzuqyM0EzizRf7lLzr29StZZHiIK3UFA4GdzpXMc1KasVWt6ahWXeeh38BVNZcsrimD1dfQsTg==
X-Gm-Message-State: AOJu0YxlRFkgHpyzdBLxSy+M2oGbuT3GTkcEG0HgIC9IHCbX30x+5aZH
	nIMCcFggI+BvLpov+TvabT9NAqlkjklR18A/iveOCYOKqSFEDO6QaAWBk2QQggSkPleHqNrEbBb
	1CGUTyGxDJruIyOiQXm4gb8dsKAOBDfw0PsMgAA==
X-Google-Smtp-Source: AGHT+IE0ZcByMuHu4xpRMUlzGI6tHp8MST9hc9+xX1jYeOSMq2j9fW14kQZcOu8vLWuWaMKFV4OtDZlj/q+O+IfV2d8=
X-Received: by 2002:a2e:958a:0:b0:2d6:87ab:2543 with SMTP id
 w10-20020a2e958a000000b002d687ab2543mr5799204ljh.30.1712008418076; Mon, 01
 Apr 2024 14:53:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-6-34618a9cc502@analog.com>
In-Reply-To: <20240401-ad4111-v1-6-34618a9cc502@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 1 Apr 2024 16:53:26 -0500
Message-ID: <CAMknhBH-YmFrqNTQCB_KafCTxEqSL+36pkE0O44NqiL89hm64Q@mail.gmail.com>
Subject: Re: [PATCH 6/6] iio: adc: ad7173: Add support for AD411x devices
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Dumitru Ceclan <mitrutzceclan@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
<devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
>
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
>
> Add support for AD4111/AD4112/AD4114/AD4115/AD4116.
>
> The AD411X family encompasses a series of low power, low noise, 24-bit,
> sigma-delta analog-to-digital converters that offer a versatile range of
> specifications.
>
> This family of ADCs integrates an analog front end suitable for processin=
g
> both fully differential and single-ended, bipolar voltage inputs
> addressing a wide array of industrial and instrumentation requirements.
>
> - All ADCs have inputs with a precision voltage divider with a division
>   ratio of 10.
> - AD4116 has 5 low level inputs without a voltage divider.
> - AD4111 and AD4112 support current inputs (0 mA to 20 mA) using a 50ohm
>   shunt resistor.
>
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---

...

> @@ -951,7 +1117,7 @@ static int ad7173_fw_parse_channel_config(struct iio=
_dev *indio_dev)
>         struct device *dev =3D indio_dev->dev.parent;
>         struct iio_chan_spec *chan_arr, *chan;
>         unsigned int ain[2], chan_index =3D 0;
> -       int ref_sel, ret, num_channels;
> +       int ref_sel, ret, reg, num_channels;
>
>         num_channels =3D device_get_child_node_count(dev);
>

Another thing that is missing in this function both for the chips
being added here and the existing chips are channels for _all_
possible inputs. The driver is adding a fixed input channel for the
temperature sensor, as it should. But all of the chips also have a
similar input channel configuration that measures the reference
voltage. Currently, there doesn't seem to be a way to make use of this
feature. I would expect a hard-coded voltage input channel that is
always added for this reference voltage similar to the temperature
channel.

The ad717x chips (except AD7173-8 and AD7176-2) also have a common
mode voltage input ("((AVDD1 =E2=88=92 AVSS)/5)") that could work the same.

In the case of the ad717x chips though, it looks like these channels
are not "fixed" like they are in ad411x. It looks like these inputs
can be mixed and matched with AINx inputs and/or each other as
differential pairs. So if that is actually the case, I would expect
the DT bindings for ad717x to look like adi,ad4130.yaml where these
additional input sources are listed in the diff-channels property
instead of having hard-coded channels in the driver like I have
suggested above.

But, as always, fixes for ad717x should be in a separate patch series.
Still, I think adding a hard-coded channel for the reference voltage
input for ad411x chips in this patch makes sense.

