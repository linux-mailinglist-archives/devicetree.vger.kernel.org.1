Return-Path: <devicetree+bounces-189162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DD5AE6F02
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 20:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAEC77A8302
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 18:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 060CB2DAFCB;
	Tue, 24 Jun 2025 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TWE7unGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9E92E7640
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 18:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750791495; cv=none; b=bvJ/KBwFI5NejXJ+BK3kpc00dveCBfQn71iItdT2HluPIbVwIGjt/JHHW72TFbqFr/kwxike3/p7Xdm2V3DU/9o0eQZ0mxaItlWGGdPCf1p9U37aW0S5jtZc+0/028XMCaxX2KZneuzCd7Dgbk+tgwYzP7s2PFJDQltFOtJ3QrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750791495; c=relaxed/simple;
	bh=npWwWKZPd5rdEqfk5ixF6kz+HcjFPiAMk+Q3wRxBc94=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VdeeMv2KWup3DbSOvUK+bJUrz8xKV3R4eJnjyFL3JdAMGxUOZM9CHhv18R2yOejgG7qikBDBuTIWmVAZj9psN8j5zlSXT5rLtnJMHvNzfJowx5uyBGcogBGI05H5nfc3b5o6ehzHPAoRY0J4+0UBn2F6Zbk/prVDRVzkZpx0iJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TWE7unGS; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-32b7f41d3e6so1744851fa.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750791492; x=1751396292; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h7ui9krklnTDspgMC7AGFpPjhbbUuQIxEzApTtxeYDw=;
        b=TWE7unGSOuUxfA+RiQdEGtRaCAkTg6IrkT6bSQZThodttjPogdODQZyNfBW7I0xwJu
         nfX0au6WniRbRkA6iSosgwB2XHlBrOB8l1Ir84cbw6EE3+4nKpyPpjKEBG02qm7+HCo+
         4G6OYmTl6sdT0zTlxTzay5ScHkIele/6R3nM3bspbLGecKP8S1shvdHOE3nG2fb5FlR8
         4uB6+uMXvRdf39Cg8vJYEGKJ15dUAzj5hpGFkdKIHqmcwMN/TK1PsAsps7MqQJySIPSa
         FslFK2BVGdK36mkdfYhLdoalgGuUOd1ZQu0ByZOY/HlAEki88ioL6yFpb8L4yP6knnQe
         thlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750791492; x=1751396292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h7ui9krklnTDspgMC7AGFpPjhbbUuQIxEzApTtxeYDw=;
        b=ZdYQDCFkLNW5eFVDV1FkTmtxGEF5wl2W8oE5cgGsJYXNJb4DI/3Ta9hj7efco+KVNl
         4MeZQMBdbPr9oDPq1Ywryh5zhkv8BbulhchJdi9NxuVwDHA5jYk+xnzbkEnesTWQcMGJ
         RqJb+2v/BdC0SRyUf/MO1f28zDV3iu6SoncY+PJChGVGOiLLHWSlzLbdO15DsJaZ/Pu7
         Hjtw6G3/oECeXMLedl1jQeEu4zuhonsPQRpoMS2tdbVsfNPYahut8xum3rlYny3rX4jf
         ra/ErSj/lMKdO4BFPvWzrd4LWKXigNooGO8HCML0pBpyNYENv8HY+RbiA3Vf7hqyLPYj
         w6ig==
X-Forwarded-Encrypted: i=1; AJvYcCVVOL4pR5ivANL9TeTofX8uE4Otw42aZtCbjCwa7s3Ex5af4mkSqskRynNKcDiLyYRo9Pad9x9jjs0q@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8RtFE96PAcVuae0T+vsBd+ela78OixL/sjiRv4Dn8SjDp3CEk
	/6uQtRv9MgSxxIsWWM+ZXUmjXAHdzUJUQmChP9YBBoAt+2BrZWdWBZx/gbZIGpjPiu0c1wE1V8V
	cu57kRCXLbMf3xXYZLBpBA+ilYzLS79jvTFZNPs9ZjQ==
X-Gm-Gg: ASbGncuyB5K9ZkHIX8xlj+IfWbmlHLaSt5fCKbbQSnTYjbwJOo7ZtNwGtSOE30icxUf
	Wwi+fXfUo7+++Ij3NCMtmAwIHUPzNt/dmTfJnYPOl/fgct4EM1fh/xJXrUHKd6frefNg6EIquit
	01KXwuwPIEVVg4IxgD91vhBu8oTjGJm4M90WorxSXlHm8=
X-Google-Smtp-Source: AGHT+IFHkwtjvOJNCrFEWstn9L634lZ8TSAnodhGn+aKzDIVOJMa02nwLbdMCDdRl+xviZehHHIuiwGlHeUOdx9D6us=
X-Received: by 2002:a05:651c:214b:b0:32c:a690:724b with SMTP id
 38308e7fff4ca-32cb968d882mr10090081fa.19.1750791491756; Tue, 24 Jun 2025
 11:58:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250618095858.2145209-1-demonsingur@gmail.com> <20250618095858.2145209-5-demonsingur@gmail.com>
In-Reply-To: <20250618095858.2145209-5-demonsingur@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Jun 2025 20:58:00 +0200
X-Gm-Features: AX0GCFv3Y0xzvM4_ytzUY9wWsLoaPRcLNq10rxfdsma9gTvF5iQYKz-0B24NXH0
Message-ID: <CACRpkdYwBAaEi--y64oVwVcAMH9z0LO5ZG_fvNK-CuxdERiYBQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/19] dt-bindings: media: i2c: max96717: add support
 for pinctrl/pinconf
To: Cosmin Tanislav <demonsingur@gmail.com>
Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Julien Massot <julien.massot@collabora.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"open list:MAXIM GMSL2 SERIALIZERS AND DESERIALIZERS" <linux-media@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" <linux-arm-kernel@lists.infradead.org>, 
	"open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
	"open list:GPIO SUBSYSTEM:Keyword:(devm_)?gpio_(request|free|direction|get|set)" <linux-gpio@vger.kernel.org>, Cosmin Tanislav <cosmin.tanislav@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cosmin,

thanks for your patch! Overall this looks good!

On Wed, Jun 18, 2025 at 11:59=E2=80=AFAM Cosmin Tanislav <demonsingur@gmail=
.com> wrote:

> MAX96717 is capable of configuring various pin properties.
>
> Add pinctrl/pinconf properties to support this usecase.
>
> Signed-off-by: Cosmin Tanislav <demonsingur@gmail.com>
(...)
> +      slew-rate:
> +        description: |
> +          Slew rate.
> +          0 - Fastest
> +          1 - Fast
> +          2 - Slow
> +          3 - Slowest
> +        maximum: 3

Would be great to have some SI units on this? Like how many milliseconds
etc.

> +      maxim,jitter-compensation:
> +        type: boolean
> +        description: Enables jitter compensation.

What does that mean?

> +      maxim,gmsl-tx:
> +        type: boolean
> +        description: Enable transmitting pin value to GMSL link.
> +
> +      maxim,gmsl-rx:
> +        type: boolean
> +        description: Enable receiving pin value from GMSL link.
> +
> +      maxim,gmsl-tx-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Identifier used while transmitting value to GMSL link.
> +          Default value matches the pin number.
> +        minimum: 0
> +        maximum: 31
> +
> +      maxim,gmsl-rx-id:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          Identifier used while receiving value from GMSL link.
> +          Default value matches the pin number.
> +        minimum: 0
> +        maximum: 31

Maybe add some words about what an GMSL link is somewhere?

> +      maxim,rclkout-clock:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: |
> +          Clock value.
> +          0 - XTAL / 1 =3D 25MHz
> +          1 - XTAL / 2 =3D 12.5MHz
> +          2 - XTAL / 4 =3D 6.25MHz
> +          3 - Reference PLL output
> +        minimum: 0
> +        maximum: 3

I'm no expert but isn't this something the clock framework has some standar=
d
binding for? assigned-clock-rates?

Yours,
Linus Walleij

