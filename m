Return-Path: <devicetree+bounces-38167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3AD847BB2
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 22:38:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A8171C252CC
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 21:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F05839EB;
	Fri,  2 Feb 2024 21:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lYX9EOgT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75522839E5
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 21:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706909901; cv=none; b=ce9clMjwCGK8TATx7m7cdgaUDU+7ZLI9g6xEQVHOi0L1KLQFCu0CHhl3WNklz1K3IT7PWI2X8M90l7kFubB4m7UjPndI4cHAG6o1MtA+Ukqvz4Fr59k/IRDf49exEjmP1PjC50+mDFZYS93PDUINhegmHHFKw8i+DyDFxjNzFfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706909901; c=relaxed/simple;
	bh=UVx0U7pARH5tK2XCCPHqwDB6bK7IY9ymMomafcgHMY4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cFbFmyQ2LQsw1htLoRGjn66lpzH2LGXqzzCjwpQNmyABnMSEbmltoaCXblIuI71pK4c1tGV9VQOyFI79orOTwpXVKwX3G2wu/eweVUuD7Skdv/tERVsV2IClLtwC8lLE6qUNb7THMivySrDNFl0nP6faK7x7WI9rNSZiKdulzbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lYX9EOgT; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d08c2e079aso9729731fa.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 13:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706909896; x=1707514696; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GASk4rfWB5+C5EiUZzZlUWI2hlhxHTSMUC7bQ0bLjpg=;
        b=lYX9EOgTux7Ifky8/JbOMjqHySgPuvjS4a/znwE+Jl+VmV1C9wxalFELQ+Gkpi8ddP
         fh/ajuClNkM3cn+MH1m10/qRam6u4TIlaD+JwzbkWk4QMtoe5gHfzddtQz4wJzYXGXmq
         aww25Wyy2lf7yWIEI7mo+i8oVia21PQbw2m3CvbIChorJQS7/MtUy9jLbnPC8biyDWho
         iqgNG2u/oZs5DToOxvceg1IUiOS73KbO/hHxVT0K3S6VEoxuxw2CCO7aqqDUyg8jzrFF
         IWpz4sZygOrlzp2bUQn6KcrMe2BIot1alsAw8MtCfTetJoBlr6lcSdYxB9ZPkc7in2Lv
         b/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706909896; x=1707514696;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GASk4rfWB5+C5EiUZzZlUWI2hlhxHTSMUC7bQ0bLjpg=;
        b=AenxdhFqXxHwW0F8YGdEGaNFn6iSp7fY17VoOQLwar6cZLnpjPR5ZuM91XlKKLtVmB
         xDBDyect+iYTzzblUhF3s/MdMHzS+1sx37KsOwbhMI3oLb6PbNG5N15Cd+uw5b1Gb7wb
         ZZFYwB6ureuiR0dqSxZutzZDXBW5OyH09t5vIUoacXPD8mtYXCpcy8fGnHUukUSImyWP
         /ZOIdgx+Uetoe6V1oM0hHL/C+2IFlpI/Yfi161Z6I/Y6YW5u3W+/1TMZBHJgh8gPQxHY
         xKSkOue5w+6Qf7NckKRseAKwARoQTgx47vZa1/3ujg7NbdHc8qriswjEqlzj0wQf7X5s
         j3FQ==
X-Gm-Message-State: AOJu0YyfwfuMexAy5Rn1JXDGxcbEWGlpSuZTQBe/PBiYTfAtkUaOjauy
	ZzORTTNGcpFA+HmBs3uNQNRqY4mvVZKYvn/ozXFmdasOlYhRo4WYIIJVWS4w4RFeGUg74kr7ekl
	nBG8EGnz3L+7OBE2NajwUmD9w2mf86ik900SvLw==
X-Google-Smtp-Source: AGHT+IHWqNb9zcpclYe9laC8OeyW0MmWy1M+xgQbBp9+nROhCAY8+/8gaZIIJ49rLjU5wct1q1rwJXlr7rzREcEAL3k=
X-Received: by 2002:a2e:a607:0:b0:2d0:73dd:d125 with SMTP id
 v7-20020a2ea607000000b002d073ddd125mr3891019ljp.3.1706909896532; Fri, 02 Feb
 2024 13:38:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240202-iio-backend-v8-0-f65ee8c8203d@analog.com> <20240202-iio-backend-v8-2-f65ee8c8203d@analog.com>
In-Reply-To: <20240202-iio-backend-v8-2-f65ee8c8203d@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 2 Feb 2024 15:38:05 -0600
Message-ID: <CAMknhBHx7U7goWMgygwOA0cpJoPfmCD=8gKZNoBvqcb0ptK0yw@mail.gmail.com>
Subject: Re: [PATCH v8 2/7] dt-bindings: adc: axi-adc: update bindings for
 backend framework
To: nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 9:10=E2=80=AFAM Nuno Sa via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno Sa <nuno.sa@analog.com>
>
> 'adi,adc-dev' is now deprecated and must not be used anymore. Hence,
> also remove it from being required.
>
> The reason why it's being deprecated is because the axi-adc CORE is now
> an IIO service provider hardware (IIO backends) for consumers to make use
> of. Before, the logic with 'adi,adc-dev' was the opposite (it was kind
> of consumer referencing other nodes/devices) and that proved to be wrong
> and to not scale.
>
> Now, IIO consumers of this hardware are expected to reference it using th=
e
> io-backends property. Hence, the new '#io-backend-cells' is being added
> so the device is easily identified as a provider.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b=
/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> index 9996dd93f84b..add10b22dcac 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> @@ -39,12 +39,15 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        A reference to a the actual ADC to which this FPGA ADC interfaces =
to.
> +    deprecated: true
> +
> +  '#io-backends-cells'

Still missing the : here.

> +    const: 0
>
>  required:
>    - compatible
>    - dmas
>    - reg
> -  - adi,adc-dev
>
>  additionalProperties: false
>
> @@ -55,7 +58,6 @@ examples:
>          reg =3D <0x44a00000 0x10000>;
>          dmas =3D <&rx_dma 0>;
>          dma-names =3D "rx";
> -
> -        adi,adc-dev =3D <&spi_adc>;
> +        #io-backends-cells =3D <0>;
>      };
>  ...
>
> --
> 2.43.0
>
>

