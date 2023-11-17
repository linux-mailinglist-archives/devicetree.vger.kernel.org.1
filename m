Return-Path: <devicetree+bounces-16762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8A17EF8D1
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:45:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04A9B280A94
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D0A4317F;
	Fri, 17 Nov 2023 20:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TTviavqp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9E2BD4D
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:45:06 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c59a4dd14cso30447341fa.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700253905; x=1700858705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSNFX2xgBRNTvwuhJ0I7igrYtExQWX8lNq71/XrSzzU=;
        b=TTviavqp/wFo0etkomAdEiON0ayJHBCOAcSLLJoj04B+gGhUVGFSxl0qGMLnE0y8n4
         nLza4Izcoob2gJMbleLimEbJMenEOeODc0ZkEjMWMZ7E6DXJiVUrWZp5b1WNqFCSipr8
         v4nEFVj5UbzKGdmBfNAFHK8ExHJSlsMf7fOhgmnAsPpfpgapQ8hUtNH5sK8kI+V802+o
         wXM+A4Mhpkzm5FbveUB3uxEnkdag4MyL4omnRXf53Y8UWiVNDiGDmcGcfOGk70JxkDF9
         xl+9ndI6TZ8L/a5V/p2SFXDyI1YMW/nrwxpEJTAxuwYj7fbf9qQsrfIlYGmay2OlzMa3
         C3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700253905; x=1700858705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xSNFX2xgBRNTvwuhJ0I7igrYtExQWX8lNq71/XrSzzU=;
        b=QrHxSy4P8h8IABN2fYMeDwYCuJsdv8gef3MJwAP5bt4daOg8RxslhXul68NPlp/0ji
         ZTkqqSGgxSx1PZm723nx3KOKdqCSdD8XncwmXCXJZN0EcFUlzShMzOXaY4Pyz0rzhKps
         CnjPeVAenlPYswiLpiqj9Y6mjCaR4OX1uwck07NwfhlU9wQcbPLUGgGZpTIUdXNDbMQc
         7mTLu07K7P8eKJ6uikqYg7Z7VVVU0h2GDrFW/xmZ8M4bMoLObBWCT4h82E7iIpEUEOQ1
         sXyhDkBWF6zsoYA3qvZCj0B+j2/KyB+02Mf7GndTjLG82gTanFPBG9AWtOZ7tByMGH0T
         UKJQ==
X-Gm-Message-State: AOJu0Yyr+D6kTmxickcUqycjuyHQKAYtSSsnhPxzWQWwXSqVOYBPFRxa
	sId57Zx/sRXwR6EJbS8IWGnfbUFxo6xw0VsS11WqrUcz9wUWg7k36Nk=
X-Google-Smtp-Source: AGHT+IHAmBTmUCjMYCaAjKfqdGljXqu2/itJFKfS89EjD+aW9EbnPvNFklw4Dw/9dPDhyelPELAxTybGgHsG0vlPbRs=
X-Received: by 2002:a2e:780e:0:b0:2c5:1603:9c48 with SMTP id
 t14-20020a2e780e000000b002c516039c48mr538982ljc.20.1700253904700; Fri, 17 Nov
 2023 12:45:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117-axi-spi-engine-series-1-v1-0-cc59db999b87@baylibre.com> <20231117-axi-spi-engine-series-1-v1-2-cc59db999b87@baylibre.com>
In-Reply-To: <20231117-axi-spi-engine-series-1-v1-2-cc59db999b87@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 17 Nov 2023 14:44:53 -0600
Message-ID: <CAMknhBEi64y7uC=kYbL1698VES2xGcQEAFQJM-469E77McxkPg@mail.gmail.com>
Subject: Re: [PATCH 02/14] MAINTAINERS: add entry for AXI SPI Engine
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 2:13=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> The AXI SPI Engine driver has been in the kernel for many years but has
> lacked a proper maintainers entry. This adds a new entry for the driver
> and the devicetree bindings.
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>
> Note: This work is being done by BayLibre on behalf of Analog Devices Inc=
.
> This is why the maintainers are @analog.com rather than @baylibre.com.
>
>  MAINTAINERS | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 97f51d5ec1cf..a40f61ad5843 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3415,6 +3415,16 @@ W:       https://ez.analog.com/linux-software-driv=
ers
>  F:     Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
>  F:     drivers/hwmon/axi-fan-control.c
>
> +AXI SPI ENGINE
> +M:     Michael Hennerich <michael.hennerich@analog.com>
> +M:     Nuno S=C3=A1 <nuno.sa@analog.com>
> +R:     David Lechner <dlechner@baylibre.com>
> +L:     linux-spi@vger.kernel.org
> +S:     Supported
> +W:     https://ez.analog.com/linux-software-drivers
> +F:     Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
> +F:     drivers/spi/spi-axi-spi-engine.c
> +
>  AXXIA I2C CONTROLLER
>  M:     Krzysztof Adamski <krzysztof.adamski@nokia.com>
>  L:     linux-i2c@vger.kernel.org
>
> --
> 2.42.0
>

Hi Lars,

As the original author, do you have an interested in being included in
this list?

