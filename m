Return-Path: <devicetree+bounces-245275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF713CAE265
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 21:19:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E43E2300A223
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 20:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAD7A26056D;
	Mon,  8 Dec 2025 20:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j9S/EjlY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A941D9663
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 20:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765225189; cv=none; b=rhp3jGqt1lQ0sEh/65k7XjQ51tBkKlyodJAjPn2rOOqaBlDfxLygK+nE4v9IFquHJMic75jIG7X15+lYxEYooQa+YbiWxpvhHkqT50rdHF7QJYo5deHNfGtX+dUTVDpR/oxucB53d3VMEy7xBsKWID6rNndShnipvAQe5muPgok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765225189; c=relaxed/simple;
	bh=hWdqOBrz7R1PeIl/el4CDNV4J6gTBam74svClDpbo7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KraT7OpUXuJAwM1zp7p9yFvQMfiIFw/A4yquHlnMIaQArCdz+DtcRj7cQZzQgKf3qcLaRRGJZ610w2jrUpfzAG/6DWGVVpZPWbueVGhE2u5shXLRRNdqCUNjCpPlNp54rbkKdtV7ZQZ0dqLOAn5R7wKypAmWoCN7apHb8K6hnaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j9S/EjlY; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b735b89501fso590599266b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 12:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765225186; x=1765829986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKZmOzDUaUoAwYcr15jUyHM3kks+XuMcXkYp9bMVE7w=;
        b=j9S/EjlYOPc0tmscjLe6Cy3kinRaNZaYlnQFJLIQYJ+DOJoPtPtuf5z9y9LGPg0pwq
         EU2i+wkxqBdqRGm4/OJ2SInWblq+fT1WNe/K3+AtZVuya2+8pikxUO8MKph6kcvZU9nb
         Z1Q8v+HpucBTdZrQLI2TI57M1YUjJZtdrivjoIedpa07pAdrQW2hXmoy3FTrDE+xGUE0
         kIJT6J9CwTbHm1ocyURCy3mnMeLsjJ5Lxr+2OQq0B5Mr4qzX/fMzYKHVv6kO0eYB2iEX
         U5r1zhmYjRnak4XUOe903ddM3iYjGm7m8I1CNUc/jEtlbmwGGrtBmrJG0OFtJlt0Z61u
         HPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765225186; x=1765829986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wKZmOzDUaUoAwYcr15jUyHM3kks+XuMcXkYp9bMVE7w=;
        b=wiHy0STse2AM0SgSZ2QoTpoVk+GK8BKPpre+ewa2OGGBeZydzaG8/4pdFiOZw6V53P
         K+VNrF5mHyaA15wWnBWHRjnA9dioifRuoHZmgtqV50kBEwHPXB2DBuVli/sCR2/Po6r7
         VGzyMwJZclLDh7vYplzilYWXoT0+qToeXROysLMNiN/ugedvRmv+XbzQVjIseWFaggUw
         A1r6ZBz0uxO64oH92IaWqrdNoHLIJKlmezgsJfl0EAh5Gqeqy+CEBqJ6wJPt8hauz0ZD
         Czop+8iZ+YoBkoatogUduc1Ua28fwbrHiZhYW16rNk5iVekEIxRaEM6ektnNMOj+3cT0
         58vg==
X-Forwarded-Encrypted: i=1; AJvYcCVVoYtfjPODs0/YoGExRPAEKsgTUKXAYV4Edco4flhrIlCwwWJZlZj9D6g+DLl7vsM6VcspgXugAb/4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0c0zEXOsU9t/Wn+M9nxaHiVdixd3H3sOwYWd4FgXF6+S3TSgR
	ERe06qYIJ3FUJKjIP0s6BbopnyAGwuNCirky/o15+LVFbCeQTxf33SfIzP9bdi0vjnYX1/j8nC9
	fFMGUm0+9ANjh8suSFx2dEkrUwiGz358=
X-Gm-Gg: ASbGnctvz5grrePFvrIzgCdaYjMzAgQc2DVeLxV+ocoyM6LHb5q43skfpIpGJzjl2cN
	yh0FRvuxIuDL9u8t1giXvpYNoDgomKESa8TZaPhqzQOrYMZGwepvdPrxN/6GmZGsjlr+gPe7Fju
	HxNIJ96K12deYebPYkD/2KOvmYHATk2LM9zFsQsvmlOefpUJTb33EfpSGkPA+8f1iksMaxP3vxW
	waz/c/6gSu8QIEJDQmJUWjgk4LwqH1O7cDqD3SloS1/yNELdAUsd9MMyIacXjKSkiHBHXRY4z9C
	y4eyn7/H16ieKonS4d5tjxYiU1YEfkf6ZvJgJJzvT7FoqAxvClm18EzeAXwQ4bN8zf0MMYs=
X-Google-Smtp-Source: AGHT+IEUpQKhOdnGkSJrXCD9ru1GSPCmA3oCC5KHZuH2mk/anfUqxaM5QdotcE/qo0aZj1mmuIyONsfWtt9rgCO+HW4=
X-Received: by 2002:a17:907:7ea9:b0:b79:eaf6:8f5e with SMTP id
 a640c23a62f3a-b7a243240cbmr856245566b.14.1765225186239; Mon, 08 Dec 2025
 12:19:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251208-ads1x18-v7-0-b1be8dfebfa2@gmail.com> <20251208-ads1x18-v7-2-b1be8dfebfa2@gmail.com>
In-Reply-To: <20251208-ads1x18-v7-2-b1be8dfebfa2@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 8 Dec 2025 22:19:10 +0200
X-Gm-Features: AQt7F2rqtm5RNbc5lBiWpDGQ2X5YQaHmKp0kfPnaTHBpVZSjqqEEk3fjrcqdUGE
Message-ID: <CAHp75VcOVpGbb3UBm+QQrw25=yU+J624c29ptMk8yrJpNEL=jA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tobias Sperling <tobias.sperling@softing.com>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 8, 2025 at 9:25=E2=80=AFPM Kurt Borja <kuurtb@gmail.com> wrote:
>
> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
> analog-to-digital converters.
>
> These chips' MOSI pin is shared with a data-ready interrupt. Defining

Either "This", or "pins are".

> this interrupt in devicetree is optional, therefore we only create an
> IIO trigger if one is found.
>
> Handling this interrupt requires some considerations. When enabling the
> trigger the CS line is tied low (active), thus we need to hold
> spi_bus_lock() too, to avoid state corruption. This is done inside the
> set_trigger_state() callback, to let users use other triggers without
> wasting a bus lock.

...

> +/**
> + * ads1018_calc_delay - Calculates a suitable delay for a single-shot re=
ading
> + * @hz: Sampling frequency
> + *
> + * Calculates an appropriate delay for a single shot reading given a sam=
pling
> + * frequency.
> + *
> + * Return: Delay in microseconds (Always greater than 0).
> + */
> +static u32 ads1018_calc_delay(unsigned int hz)
> +{
> +       /*
> +        * Calculate the worst-case sampling rate by subtracting 10% erro=
r
> +        * specified in the datasheet...
> +        */
> +       hz -=3D DIV_ROUND_UP(hz, 10);
> +
> +       /* ...Then calculate time per sample in microseconds. */
> +       return DIV_ROUND_UP(MICROHZ_PER_HZ, hz);

If time per sample is in =C2=B5s, the associated frequency is in MHz, so
the correct constant is HZ_PER_MHZ. What did I miss here?

> +}

...

> +static struct spi_driver ads1018_spi_driver =3D {
> +       .driver =3D {
> +               .name =3D "ads1018",
> +               .of_match_table =3D ads1018_of_match,
> +       },
> +       .probe =3D ads1018_spi_probe,
> +       .id_table =3D ads1018_spi_match,
> +};

> +

Unneeded blank line.

> +module_spi_driver(ads1018_spi_driver);

...

Other than above, LGTM!
Reviewed-by: Andy Shevchenko <andy@kernel.org>

--=20
With Best Regards,
Andy Shevchenko

