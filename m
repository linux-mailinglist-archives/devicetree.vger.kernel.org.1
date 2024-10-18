Return-Path: <devicetree+bounces-112766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 852B89A3755
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 09:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB40CB21B1C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 07:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18D2418858C;
	Fri, 18 Oct 2024 07:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CVyw4H2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848C117C7C2
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 07:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729237030; cv=none; b=pG1DQ7u72/VrAHbZtRj5cUE35Y4wJBb8juh83TLIsTz72EvEIVZFXarEiRuSWQNJBDmX/3uDl1z6nNBu0MLQTbPaxKvO0Fxv9ir9KH+fPOPyA6uH2CVkTREOBd12yzpobgQ6OehEsll3tptaTfxBXVTmRHa/L3DrahMR31aP91Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729237030; c=relaxed/simple;
	bh=J/2P0Qjo4Pi1oxevSNksyDuXieZuyJYEGU2KpqhBDkY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rvuPILj5Asrqr6aQ0+Dn55Bb6x2r85gpDiPGlsje38oWkr+yvusxbUfeAfLTj9oPMRhngrCCx1pD9vv/3En8/34L26CvtxyR/VvxU1cDTfMYU+Gx0NPojt1aCe98FeMau+8VqaOhGflYX/atG1j1iUJWbWEhxUmiVkTTZ8KLnVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CVyw4H2U; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f2b95775so2261231e87.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 00:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729237026; x=1729841826; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQ8SdkLsCIJNhBVmfW5932i8NaML5sg9nvB1KSarBPA=;
        b=CVyw4H2UWtdhSajVc42QWON1wDRRDqiUh8on3uIiryOA8Y5K6Fjx61bx7WoKoXLx24
         AHKRMNSes1GNgunfJWrnY67OBIpHQx0ce5DHLbV7wIz1YeZPx/yZfOV0IuKu41Rce0Dx
         WhjCjbYYJNnUV2yChPRYthVKnxX52XOeVq6fGp7ZnG/ce1O6727XMX/kN7UVM1Xvs+Z5
         EH3gSVXk3lB9LBqFez5Zol51E7e9C7vsClrTfJyJL0JO8/XsE7ZAEnEc1I899VArscgk
         Np5q/qIQLyS7gliT/hT4m8fuDnMABznMATon6nbbnHMhtZTLwTh6Ob0AS1MHyT04xr88
         iy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729237026; x=1729841826;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQ8SdkLsCIJNhBVmfW5932i8NaML5sg9nvB1KSarBPA=;
        b=aZFQo69AIL4QSQnMUHavPn4gc6oiOW5PY6+Plr7Nr3UBBukuePmk7goY4Hf8pVAe3V
         yTCqztkCH/LiqwE48NVTZfDe15IUtG6BeNC8nXukF/3GSR0OMTBaDN4fai5L4/TuPjRu
         7o2iVoQfuLMsyLPykJjJTwT5v938BKP3YOC6TrSrH8faoVAAcBJx1JbKmky3QyZTBdnq
         zd/CMUkE/jJXKn0QaTFxsmg4zRI01/h28k3x8EXStVieZ5Oww9MTJ5b3hPCq7P91sMuG
         p0bSJaa3rsXYXgHPeqOUSlk2oLr5JBXiRmKrp/VJFspaKQ/zX483Q9IfpV1WB6/xo5rG
         WonA==
X-Forwarded-Encrypted: i=1; AJvYcCXXVjGlntc4+4arzk/2ExWXAZZswEm9Z0KH43k9BT/7a72SVPmR+COXah7UVsarD+gIjdJFfAtCiRXz@vger.kernel.org
X-Gm-Message-State: AOJu0YxwXvwE1khxqsHzOiBr8Sbx5YWYT0PTRLD+UYWNt1FYcaSuN7p4
	wHYvFAuL4mnODRyWQKxtz5/grqDF6nuv3RJ/r0HjYj/Lea0s5Y4HV+XO2dhstlE4iV16F/UD6qB
	Lu1pDIn0JHln78PEiAqChrimLLTNARvhlnWaJXQ/hODTVa87PXGM=
X-Google-Smtp-Source: AGHT+IFwONEnb117sVQ31CVX2MhwK+WpK1e9jDFmK9d88cHvnLc4jpqFjUwCVajdCZBWq38iLQOWMzxWC22WcOsJ8HE=
X-Received: by 2002:a05:6512:1585:b0:539:8f68:e036 with SMTP id
 2adb3069b0e04-53a154964a1mr1226810e87.34.1729237024774; Fri, 18 Oct 2024
 00:37:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com>
 <20241015-ad7380-add-adaq4380-4-support-v1-1-d2e1a95fb248@baylibre.com> <20241017190500.215b895e@jic23-huawei>
In-Reply-To: <20241017190500.215b895e@jic23-huawei>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 18 Oct 2024 09:36:52 +0200
Message-ID: <CAEHHSvZrXNrh_DsyrnjjBfZJ3STYmA+HdysakO-54T6qYwTfrQ@mail.gmail.com>
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

Le jeu. 17 oct. 2024 =C3=A0 20:05, Jonathan Cameron <jic23@kernel.org> a =
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
> > - internal reference is 3V derived from refin-supply (5V)
>
> Now I'm confused.
>
> The earlier refin-supply change appears unused in this patch.
> I was expecting it to be required for the additional devices.
> With additions to the docs from the fix to explain the new
> cases.  I'm not seeing that in here.
>
>
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

Hi Jonathan,

here I add a quick description on how adaq devices are using refin-supply .=
..

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

... and adaq devices are added here to require refin-supply.

Maybe I am missing your point? or I still need to improve the description?

Cheers
Julien

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

