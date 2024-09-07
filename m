Return-Path: <devicetree+bounces-101010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6ED970009
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 07:00:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB4E9284585
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 05:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 710E143158;
	Sat,  7 Sep 2024 05:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="calZlFxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F64543AB7
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 05:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725685209; cv=none; b=LsUiObN3c30806mBZLxqumI5Xw2c76GMoXokJyEgfwzgKxUfzXE6IX8H1cRrTzBV04oA90FgBdmWJymWHZUfmWucKy4EmuxUxggoQA7PeoS/r86EBbormO1VE7luhN/UggCRl9LCZUjCVt86FXOdQ3od2N2YI6+YmUaigIZ5p8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725685209; c=relaxed/simple;
	bh=W124w2iyeNJIs07SThnUF6dxl7j2d8OL7n/qPR2+EBY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hsJvlDVL78e+NVBfr2aNPgouOhDaw72+3t8/JOPzTLIKmCuwmo7K4n2cB2MrewC3ehNOVAlzEdx85SG29JIuwfwUkQpHegNT9EgE542qYnKLhEd4pOKMvldDZa60ZVfpBmrVHtfwOSXdHDmFTlmwKrbb+p2R7HKL7dzk6qFZ+7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=calZlFxK; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-49bd27b3507so728913137.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 22:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725685205; x=1726290005; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gAVT5eanF7Ub7gt/aDQhyLwQ9ufmtizsv9T3X84p4Sg=;
        b=calZlFxKjORGYhYVwNQS8DhwcAMjWfeKGG2bDN/qmsbLacLQXPOrXkbMZNiaR8r43c
         pc0iXFED/o16qR/wqJzMTsItv7IzYxIcwTpCSImpf93fwskr3qIzq/SozlOPcKYk4ZWI
         ei4GBRhqbMpJ0Sxq04AFt7goSjG4CNdMwiNoLkR1JbnC7QvH5zTy/3alT1TKBbTVeC82
         c5112YS/FeHwUB9qHQhICf2uk7XqHzMGb5bs3whANQSsfA/h4ZHWYarhp/boBq1aic7m
         rcGvmJ1PfLG8mZFhd5OF16dlvBnavM6oNsP3yhIsg0aWdmeEa/+Rey75vBwhpnUQiqHz
         35/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725685205; x=1726290005;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gAVT5eanF7Ub7gt/aDQhyLwQ9ufmtizsv9T3X84p4Sg=;
        b=EktImG8157VlEjQ2LDXI2gSW8tQVXvKuJM2xqPNsf69d+Nb3dPDJrKu2kQ8j+CiRd0
         vLWbUsM5gV4xJkHFMvFOClmevgNP+ycgg9luOjAtl912v4+52GSM+lARx/57NG7u8R9C
         Sg/t9dGrb2b+p4Lr7kSvljT9aYwpuzNhpRs0B2UhCjPO7a/qR7AtxEEvcczE+EURx9Qr
         Kb6NwHXruU+g+GIHl4hZ+JboiS4BVM9+KEhwXuJ0R3OZ8VwxjNI1MXlhZ5LuuLttJID4
         ziyNjhK5WJIWjUlFoE6jr3iLqEjP5sKapHcd9cK48e/RqyLoPXtj/CPwyhWH1z4FNLg4
         ah4g==
X-Forwarded-Encrypted: i=1; AJvYcCWzQZIoLBemQFtWblv5YfEYnMkrUzmsW0bVshcKSQw39Pu9v5RBJN1nqapnhKmgGSfszWDfiB2cIoCy@vger.kernel.org
X-Gm-Message-State: AOJu0YzBWWHIjCiqShssTC5oH+0eY1uzxXLcKMOxPeBzhVEbBM48fz2f
	DJkjWc6UM7gVT7ocgNCmlGDK1mlpJ8SSMNrH+9ERaGhib2nU0AF/7OurYX6fZOhk+zdQO7ruNH0
	S1hNn6fQJweW33HmRPsJr88jSUe4zsvMR8YR1iw==
X-Google-Smtp-Source: AGHT+IH+ojsxqPn4L/luLOXtUnydyobQU36k7F4R4xh5D1Zt1fxdU8li2S15yycjlBLJ3JcXsh6uXEucJLghlHAVi9A=
X-Received: by 2002:a05:6102:3910:b0:498:e21c:cc5b with SMTP id
 ada2fe7eead31-49bde1312d6mr5254864137.3.1725685204967; Fri, 06 Sep 2024
 22:00:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-8-aardelean@baylibre.com> <4f522d0c-7ed8-4dd4-83ae-f400d6958c6f@baylibre.com>
In-Reply-To: <4f522d0c-7ed8-4dd4-83ae-f400d6958c6f@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 7 Sep 2024 07:59:53 +0300
Message-ID: <CA+GgBR-H8W_YS3gPrrvxAWoQybjEb-p36pqxEatFbEAnuz2DvQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: adc: add docs for
 AD7606C-{16,18} parts
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2024 at 12:54=E2=80=AFAM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On 9/5/24 3:24 AM, Alexandru Ardelean wrote:
> > The driver will support the AD7606C-16 and AD7606C-18.
> > This change adds the compatible strings for these devices.
> >
> > The AD7606C-16,18 channels also support these (individually configurabl=
e)
> > types of channels:
> >  - bipolar single-ended
> >  - unipolar single-ended
> >  - bipolar differential
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> > ---
> >  .../bindings/iio/adc/adi,ad7606.yaml          | 109 ++++++++++++++++++
> >  1 file changed, 109 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml =
b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > index 69408cae3db9..57537ab0ec82 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > @@ -14,6 +14,8 @@ description: |
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7605-4.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606_7606-6_7606-4.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7606B.pdf
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606c-16.pdf
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606c-18.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7616.pdf
> >
> >  properties:
> > @@ -24,11 +26,19 @@ properties:
> >        - adi,ad7606-6
> >        - adi,ad7606-8  # Referred to as AD7606 (without -8) in the data=
sheet
> >        - adi,ad7606b
> > +      - adi,ad7606c-16
> > +      - adi,ad7606c-18
> >        - adi,ad7616
> >
> >    reg:
> >      maxItems: 1
> >
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> >    spi-cpha: true
> >
> >    spi-cpol: true
> > @@ -114,6 +124,46 @@ properties:
> >        assumed that the pins are hardwired to VDD.
> >      type: boolean
> >
> > +patternProperties:
> > +  "^channel@[1-8]$":
> > +    type: object
> > +    $ref: adc.yaml
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        description:
> > +          The channel number, as specified in the datasheet (from 1 to=
 8).
> > +        minimum: 1
> > +        maximum: 8
> > +
> > +      diff-channels:
> > +        description:
> > +          Each channel can be configured as a differential bipolar cha=
nnel.
> > +          The ADC uses the same positive and negative inputs for this.
> > +          This property must be specified as 'reg' (or the channel num=
ber) for
> > +          both positive and negative inputs (i.e. diff-channels =3D <r=
eg reg>).
> > +        items:
> > +          minimum: 1
> > +          maximum: 8
> > +
> > +      bipolar:
> > +        description:
> > +          Each channel can be configured as a unipolar or bipolar sing=
le-ended.
> > +          When this property is not specified, it's unipolar, so the A=
DC will
> > +          have only the positive input wired.
> > +          For this ADC the 'diff-channels' & 'bipolar' properties are =
mutually
> > +          exclusive.
> > +
> > +    required:
> > +      - reg
> > +
> > +    oneOf:
> > +      - required:
> > +          - diff-channels
> > +      - required:
> > +          - bipolar
>
> The datasheet (ad7606c-18.pdf) lists the following combinations:
>
> * Bipolar single-ended
> * Unipolar single-ended
> * Bipolar differential
>
> The logic in the oneOf: doesn't match this.
>
> This I think this would be sufficient:
>
> - if:
>     required: [diff-channels]
>   then:
>     required: [bipolar]

So here, I am a bit vague.
This makes 'bipolar' mandatory if 'diff-channels' is mandatory, right?
But then 'bipolar' (on its own) becomes optional?
The way I understood the oneOf case is that:
1. if it's 'diff-channels' then it's specified 'bipolar differential'.
2. if it's 'bipolar' then it's specified as 'bipolar single-ended'
3. otherwise it's unipolar
4. oneOf enforces that at least 'diff-channels' or 'bipolar' is
specified if there is a channel node


>
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -170,6 +220,17 @@ allOf:
> >          adi,conversion-start-gpios:
> >            maxItems: 1
> >
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            enum:
> > +              - adi,ad7606c-16
> > +              - adi,ad7606c-18
> > +    then:
> > +      patternProperties:
> > +        "^channel@[1-8]$": false
> > +
> >  unevaluatedProperties: false
> >
> >  examples:
> > @@ -202,4 +263,52 @@ examples:
> >              standby-gpios =3D <&gpio 24 GPIO_ACTIVE_LOW>;
> >          };
> >      };
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    spi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        adc@0 {
> > +            compatible =3D "adi,ad7606c-18";
> > +            reg =3D <0>;
> > +
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            spi-max-frequency =3D <1000000>;
> > +            spi-cpol;
> > +            spi-cpha;
> > +
> > +            avcc-supply =3D <&adc_vref>;
> > +            vdrive-supply =3D <&vdd_supply>;
> > +
> > +            interrupts =3D <25 IRQ_TYPE_EDGE_FALLING>;
> > +            interrupt-parent =3D <&gpio>;
> > +
> > +            adi,conversion-start-gpios =3D <&gpio 17 GPIO_ACTIVE_HIGH>=
;
> > +            reset-gpios =3D <&gpio 27 GPIO_ACTIVE_HIGH>;
> > +            adi,first-data-gpios =3D <&gpio 22 GPIO_ACTIVE_HIGH>;
> > +            standby-gpios =3D <&gpio 24 GPIO_ACTIVE_LOW>;
> > +
> > +            adi,sw-mode;
> > +
> > +            channel@1 {
> > +                reg =3D <1>;
> > +                diff-channels =3D <1 1>;
>
>                    bipolar;
>
> > +            };
> > +
> > +            channel@3 {
> > +                reg =3D <3>;
> > +                bipolar;
> > +            };
> > +
> > +            channel@8 {
> > +                reg =3D <8>;
> > +                diff-channels =3D <8 8>;
>
>                    bipolar;
>
> > +            };
> > +
> > +        };
> > +    };
> >  ...
>

