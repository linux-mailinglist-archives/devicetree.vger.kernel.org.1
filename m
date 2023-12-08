Return-Path: <devicetree+bounces-23138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8447C80A5E0
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:50:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F3101F21431
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 14:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5E21E50B;
	Fri,  8 Dec 2023 14:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L++SddHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CB58173B
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 06:50:30 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9e9c2989dso27108541fa.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 06:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1702047029; x=1702651829; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1vCAo/0XghnYmheAcvJKeKXj1PDXUChqBaVuIxQEDk=;
        b=L++SddHB53ds+BDyxsaCgrubvQa2iCP6jmnnUM20jJFeqUnEt0V9babowwqiEJ7M+m
         4oXRahXSndOR0chVc4l5qV1/5KA8ZKwg5y/6H0zZrBItRv2q8qrAo1tpq+HDuCZQRwfA
         kkOMh4IcaKVD1f5/XyCGn4iO3yMYqU9r6rH4UzCPv0CdTi2scs4hFu1nf1X6OFiR2hAm
         oBi0D/zpRjmSlcaqy3jE0tDYVu1KNhHRvQVYLb2Xp8WEXkNdLZIpUVQx/XA2Tnb1kF7/
         4WsrK5ezJrOcaL7wTe9s64u+yPTfWKjivjednOeku0/8sixZbTZPHzqJRIXr6S1bfMet
         JV6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702047029; x=1702651829;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1vCAo/0XghnYmheAcvJKeKXj1PDXUChqBaVuIxQEDk=;
        b=vS+w/h1QDy9avLH3snxyb6WsWqmfpfR5yQQBxKX4EBvi0EnnM6udiRNH1ssXu5gAvv
         /Nkn5481rkDGOZTBoE3sHaSLglqmAZE0lqaC/eL9IFWhD0NESOHCqjLnxvVMTUCEoXBL
         4JbUHwMdaTsikzxL54/73k7F8FbOREhLIAB/jExGnDooBX5/6v8iuX/BD19tiiZEpN6N
         ZLYXQ+J7YTnNP/c5Ci+xMhgpe5AXhGhPoiMelElRPIjZLu0evhagZ+UM/IsVmsfbzubr
         ChD4znG8iN5fjk56wbvY9OiWeoNAY/2haAd+RkAQWIRtK47sGVDnehB+93OkzTHVcT+V
         2UMA==
X-Gm-Message-State: AOJu0Yx1IQFdxy6hTv3quIX7B/LA5Yy5y+muZ5JZVYxg142ZB2FbyyjC
	KBDKQ3oqqbiSVF8hrpis6vMbpn95GtHK4bAnc8OqBQ==
X-Google-Smtp-Source: AGHT+IF7XrHbo2zzPPfxnAYa+JlWU8BR5gIVI4S58FUUPJRXqcyKVeGHxAfQTma9B0lG/uCzmUYQrmEbcjxPBSW/Wuw=
X-Received: by 2002:a2e:878d:0:b0:2ca:34d:f80a with SMTP id
 n13-20020a2e878d000000b002ca034df80amr8350lji.64.1702047028634; Fri, 08 Dec
 2023 06:50:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1701971344.git.marcelo.schmitt1@gmail.com>
 <53d55f3195b15bd8d47387e296036730ea270770.1701971344.git.marcelo.schmitt1@gmail.com>
 <CAMknhBEFnTUm9FPK-74+GkJs2d80dS+Q9WeGTxd3Ajs-JJGcdA@mail.gmail.com> <ZXMZ-Y18SwIFEIgA@debian-BULLSEYE-live-builder-AMD64>
In-Reply-To: <ZXMZ-Y18SwIFEIgA@debian-BULLSEYE-live-builder-AMD64>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 8 Dec 2023 08:50:17 -0600
Message-ID: <CAMknhBHxmWTAR-F-92kFW8wbKPn2qnr7v2Sk2xUwA9AmONo+3w@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] dt-bindings: iio: Add AD7091R-8
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, apw@canonical.com, joe@perches.com, 
	dwaipayanray1@gmail.com, lukas.bulwahn@gmail.com, paul.cercueil@analog.com, 
	Michael.Hennerich@analog.com, lars@metafoo.de, jic23@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dan.carpenter@linaro.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 8, 2023 at 7:28=E2=80=AFAM Marcelo Schmitt
<marcelo.schmitt1@gmail.com> wrote:
>
> Hi David, thank you for your suggestions.
> Comments inline.
>
> On 12/07, David Lechner wrote:
> > On Thu, Dec 7, 2023 at 12:42=E2=80=AFPM Marcelo Schmitt
> > <marcelo.schmitt@analog.com> wrote:
> > >
> > > Add device tree documentation for AD7091R-8.
> > >
> > > Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > > ---
> > >  .../bindings/iio/adc/adi,ad7091r8.yaml        | 99 +++++++++++++++++=
++
> > >  1 file changed, 99 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7=
091r8.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7091r8.y=
aml b/Documentation/devicetree/bindings/iio/adc/adi,ad7091r8.yaml
> > > new file mode 100644
> > > index 000000000000..02320778f225
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7091r8.yaml
> > > @@ -0,0 +1,99 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/adc/adi,ad7091r8.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Analog Devices AD7091R8 8-Channel 12-Bit ADC
> > > +
> > > +maintainers:
> > > +  - Marcelo Schmitt <marcelo.schmitt@analog.com>
> > > +
> > > +description: |
> > > +  Analog Devices AD7091R-8 8-Channel 12-Bit ADC
> > > +  https://www.analog.com/media/en/technical-documentation/data-sheet=
s/AD7091R-2_7091R-4_7091R-8.pdf
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - adi,ad7091r2
> > > +      - adi,ad7091r4
> > > +      - adi,ad7091r8
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> >
> > Missing other supplies? Like vdd-supply and vdrive-supply?
> >
>
> I used the name that would work with ad7091r-base.c.
> If I'm not misinterpreting the datasheet, vdd-supply and vdrive-supply ar=
e
> for powering the ADC and setting SPI lanes logic level, respectively.
> They don't have any impact on ADC readings.

The guidelines [1] say that bindings should be complete even if the
feature is not used. In the most recent bindings I have submitted,
Jonathan specifically called out making sure all supplies were
included in the bindings. So I would assume the same applies here.

[1]: https://www.kernel.org/doc/html/latest/devicetree/bindings/writing-bin=
dings.html

> By the way, should maybe I extend ad7091r5 dt doc instead of creating thi=
s
> new one?

If it is pin-compatible or 90% the same, then perhaps.

