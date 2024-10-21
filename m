Return-Path: <devicetree+bounces-113702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C939A6A1A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:26:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D559B1F248EC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 300B61F6661;
	Mon, 21 Oct 2024 13:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Wr404rzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AF81F5843
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729517141; cv=none; b=tkFFnpy2ART0wysTz8mWrmp/d/z6JlFHk6KNo8bkKWIYUXCZo7eqllVx+ql5Ft+lX8nRHEYR6+UIUBtpqy5i9a4BHUOahOlvg49Y92qgBi4hOwnErTrOH3phcwnZuVR8ZEMXR5qnoyPfd8bPU6KFYfww7l83EZwSeRgFHQdtED8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729517141; c=relaxed/simple;
	bh=P+KKJj15t259mwuqNR5CWfI1dluPRWtg3MwZgZl0PiI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m/CkZG7baQ+h7RDXLJ7JMV2zmZOkNtyILgid0459JkSKF3i64xmvAjfekL5zK248QvMhkcH3Yff+WmlX6omQml4mU9+RCB1oS/Fgf2p5suAahkjlQOxwKm8cnKdHAC65uW3QDmJGBTPEn+jJ0x3e6rTNHRq0iWY1HL7vTXo35nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Wr404rzF; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c941623a5aso9311100a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 06:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729517135; x=1730121935; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QvmlddUQ2SZljJFHe7Sv16dud/9QhjBfMHI0vq0SyAw=;
        b=Wr404rzFmr8ZaY4O9rFXRH2arqNGNs3V0nuilIWLbhtLT7we1RlOCmdLP3fS0B05zR
         8scx/KMDejDTVL4G5tgwr2sWeGQ4e1asHrdKK4xt8gPGu8NOWO/YbqI5X1165tlhqBZ2
         RIEEC+xVpAmmRKOvBPAdM6nDIXqzgrktx0d9xC0CelsF3bI1MLzfMxKOwY0ZHZK3Njc8
         cgMwGYv9yOblCPtjaF3obUpnI8JrDSl8Yt3FxSNIVN+QC3ci1l6wWh9ZwowwDad1aK0S
         TZDspget3+XonhSzgNYXyAh1oKMH+OKEjud38HJOB8nSXrz6mwOPg6yWtPqg15RwSMlc
         h/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729517135; x=1730121935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QvmlddUQ2SZljJFHe7Sv16dud/9QhjBfMHI0vq0SyAw=;
        b=Pjwl139jQgUz66CU/v2rQnvx+a/lWEmWYo5doB88tk9UP4FLN5G+SZhXpabZmMS8tn
         ovlU5IA7YO3bDBkVpfHYjGY/M88jwgvcjJlJvE9/5S9iveoQ/dRGHNmGylcvP0JlTT9N
         iY6pK2PWY2+iOvGq6gM60D0BT5MFczUnAjuhnWzm0UZhiZ9O10jb2IvQsOJJ/EDE+fAQ
         ZgR2XTnKJNW7ALQeHfxmkIiugJdo7O9SIcjPjNIWtMcNDo9ZTM6ybrA2Y3vdLwlSFdgF
         qP3wHyhoFHgoBxBbSBGGNoxdzmAyJP38zlhsCuXXgRgzjTRUqjYYPdaJ5vX1F/7tYNuS
         LbuA==
X-Forwarded-Encrypted: i=1; AJvYcCV0EDrHl3PHkhjE8phh5k9hU1dSGbpp3iizhFbC/g1WzMK6HjwOwu6ZTVKgH1MWAaq+x0vwByMhAx85@vger.kernel.org
X-Gm-Message-State: AOJu0YxsfZzx/EnBiIzOZGU0KjekWKKFmSSM7Z0iZHzPVmTQz4nq7yav
	U/u86j+sCAVPz2ZCnfrA/mtGQewxhedz3PeeT3R6jJ/Xtym9HYriNmz0umXiV4vNrpGTtvVAsda
	Q98jcktIYY/e27jlEH2k0igbkf8n1r8CJVzAh8w==
X-Google-Smtp-Source: AGHT+IF27KXBH3wjrxEEkfggK/TGRAnQx4/sKhM03LqMoJ1keE93dKryMe4B0vg0ed9Hs0y5PMk5l4OCW1RrRRdJe4E=
X-Received: by 2002:a17:907:7e90:b0:a9a:1575:23e3 with SMTP id
 a640c23a62f3a-a9a6a450842mr1203521966b.19.1729517135504; Mon, 21 Oct 2024
 06:25:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com>
 <20241015-ad7380-add-adaq4380-4-support-v1-1-d2e1a95fb248@baylibre.com> <20241020142058.6ce576f8@jic23-huawei>
In-Reply-To: <20241020142058.6ce576f8@jic23-huawei>
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 21 Oct 2024 15:25:23 +0200
Message-ID: <CAEHHSvaHo102=133Jpzj0N=qh4_x7e9ZZG47S7Vgr6z3W9qisA@mail.gmail.com>
Subject: Re: [PATCH RFC 1/4] dt-bindings: iio: adc: ad7380: add adaq4370-4 and
 adaq4380-4 compatible parts
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le dim. 20 oct. 2024 =C3=A0 15:21, Jonathan Cameron <jic23@kernel.org> a =
=C3=A9crit :
>
> On Tue, 15 Oct 2024 11:09:06 +0200
> Julien Stephan <jstephan@baylibre.com> wrote:
>
> > adaq4370-4 (2MSPS) and adaq4380-4 (4MSPS) are quad-channel precision da=
ta
> > acquisition signal chain =CE=BCModule solutions compatible with the ad7=
38x
> > family, with the following differences:
> >
> > - configurable gain in front of each 4 adc
> As per quick review I gave for the driver code, I'm not seeing why
> a configurable gain is a DT thing on an ADC vs something that belongs
> in userspace control.  I may be missing something though.
>
> It exists for the ad4000 because the control isn't via registers
> but via pin straps so we can't control it sensibly from userspace.


Hi Jonathan,
I indeed based my work on ad4000. I think my commit description is
erroneous and confusing.
On the first page of the datasheet
(https://www.analog.com/media/en/technical-documentation/data-sheets/adaq43=
80-4.pdf)
it's written : Pin selectable Gain/attenuation. So I guess adaq4380-4
and adaq4370-4 are working the same way as the adaq4000 series.
I'll rewrite my commit message. Also, I didn't want to restrict users
to the gain values in the datasheet, because I thought they are just
examples and users can always use additional resistance to change the
gain. Am I correct? Or should I use the datasheet values (as adaq4000
series does) ?

Cheers
Julien

>
> Jonathan
>
> > - internal reference is 3V derived from refin-supply (5V)
> > - additional supplies
> >
> > To configure the gain a new patternProperties is added to describe each
> > channel. It is restricted to adaq devices.
> >
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > ---
> >  .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 117 +++++++++++++=
++++++++
> >  1 file changed, 117 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml =
b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
> > index 74d82721637c..3007d8e39684 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
> > @@ -25,6 +25,8 @@ description: |
> >    * https://www.analog.com/en/products/ad7386-4.html
> >    * https://www.analog.com/en/products/ad7387-4.html
> >    * https://www.analog.com/en/products/ad7388-4.html
> > +  * https://www.analog.com/en/products/adaq4370-4.html
> > +  * https://www.analog.com/en/products/adaq4380-4.html
> >
> >
> >  $ref: /schemas/spi/spi-peripheral-props.yaml#
> > @@ -46,6 +48,8 @@ properties:
> >        - adi,ad7386-4
> >        - adi,ad7387-4
> >        - adi,ad7388-4
> > +      - adi,adaq4370-4
> > +      - adi,adaq4380-4
> >
> >    reg:
> >      maxItems: 1
> > @@ -59,6 +63,9 @@ properties:
> >    vlogic-supply: true
> >    refio-supply: true
> >    refin-supply: true
> > +  vs-p-supply: true
> > +  vs-n-supply: true
> > +  ldo-supply: true
> >
> >    aina-supply:
> >      description:
> > @@ -86,12 +93,43 @@ properties:
> >        specify the ALERT interrupt.
> >      maxItems: 1
> >
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> >  required:
> >    - compatible
> >    - reg
> >    - vcc-supply
> >    - vlogic-supply
> >
> > +patternProperties:
> > +  "^channel@([0-3])$":
> > +    $ref: adc.yaml
> > +    type: object
> > +
> > +    properties:
> > +      reg:
> > +        description:
> > +          The channel number. From 0 to 3 corresponding to channels A,=
B,C,D
> > +        items:
> > +          minimum: 0
> > +          maximum: 3
> > +
> > +      adi,gain-milli:
> > +        description:
> > +          The hardware gain applied to the ADC input (in milli units).
> > +          If not present, default to 1000 (no actual gain applied).
> > +        $ref: /schemas/types.yaml#/definitions/uint32
> > +        default: 1000
> > +
> > +    required:
> > +      - reg
> > +
> > +    additionalProperties: false
> > +
> >  unevaluatedProperties: false
> >
> >  allOf:
> > @@ -128,7 +166,21 @@ allOf:
> >          ainc-supply: false
> >          aind-supply: false
> >
> > +  # Using channel to declare gain property only applies to adaq device=
s
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          not:
> > +            contains:
> > +              enum:
> > +                - adi,adaq4370-4
> > +                - adi,adaq4380-4
> > +    then:
> > +      patternProperties:
> > +        "^channel@([0-3])$": false
> > +
> >    # ad7380-4 uses refin-supply as external reference.
> > +  # adaq devices use internal reference only, derived from refin-suppl=
y
> >    # All other chips from ad738x family use refio as optional external =
reference.
> >    # When refio-supply is omitted, internal reference is used.
> >    - if:
> > @@ -136,6 +188,8 @@ allOf:
> >          compatible:
> >            enum:
> >              - adi,ad7380-4
> > +            - adi,adaq4370-4
> > +            - adi,adaq4380-4
> >      then:
> >        properties:
> >          refio-supply: false
> > @@ -145,6 +199,24 @@ allOf:
> >        properties:
> >          refin-supply: false
> >
> > +  # adaq devices need more supplies
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          enum:
> > +            - adi,adaq4370-4
> > +            - adi,adaq4380-4
> > +    then:
> > +      required:
> > +        - vs-p-supply
> > +        - vs-n-supply
> > +        - ldo-supply
> > +    else:
> > +      properties:
> > +        vs-p-supply: false
> > +        vs-n-supply: false
> > +        ldo-supply: false
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/interrupt-controller/irq.h>
> > @@ -169,3 +241,48 @@ examples:
> >              refio-supply =3D <&supply_2_5V>;
> >          };
> >      };
> > +
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +    spi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        adc@0 {
> > +            compatible =3D "adi,adaq4380-4";
> > +            reg =3D <0>;
> > +
> > +            spi-cpol;
> > +            spi-cpha;
> > +            spi-max-frequency =3D <80000000>;
> > +
> > +            interrupts =3D <27 IRQ_TYPE_EDGE_FALLING>;
> > +            interrupt-parent =3D <&gpio0>;
> > +
> > +            vcc-supply =3D <&supply_3_3V>;
> > +            vlogic-supply =3D <&supply_3_3V>;
> > +            refin-supply =3D <&supply_5V>;
> > +            vs-p-supply =3D <&supply_5V>;
> > +            vs-n-supply =3D <&supply_0V>;
> > +            ldo-supply =3D <&supply_5V>;
> > +
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            channel@0 {
> > +                reg =3D <0>;
> > +                adi,gain-milli =3D <300>;
> > +            };
> > +
> > +            channel@2 {
> > +                reg =3D <2>;
> > +                adi,gain-milli =3D <600>;
> > +            };
> > +
> > +            channel@3 {
> > +                reg =3D <3>;
> > +                adi,gain-milli =3D <1000>;
> > +            };
> > +        };
> > +    };
> >
>

