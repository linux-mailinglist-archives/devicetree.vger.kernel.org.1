Return-Path: <devicetree+bounces-115098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A189ADF02
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 10:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A55D828A54E
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 08:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872271AF0A7;
	Thu, 24 Oct 2024 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dJLlWfvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011D21AB6CC
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 08:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729757991; cv=none; b=hBCNsbOAy8X+11+wZ6UF0Ei1+bKVqTwrgYqUUUF5DnORbEyUaQ6zLEuq67mi75Qb+61udoUshNvEitByY8BlEY5XpqF+l3ipaY3wzE3+gMSw2z0iR3ufxmalNNPQNq/2y2O7WlbOoFNVNtujhYmRBDgBPfDkOgwY/Ju0eIsACPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729757991; c=relaxed/simple;
	bh=jJpoDcZzcf17R/3zdN17SftmPrsJXoXPfK84W/H5pz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bzjGMwGeGnOeoKlkOtepDC3DDPnKWtbhslDHY1r2mwX0dFJCgUsl87mdb0z9NHso/+cZ9TpvtbDxmvJOgQX7s0VIqh4FKnAGnDwKgB8YZD3TyPgpHfZ3xodtjlW06UXYaNCBP7s9ULGMytPQJspmtFrHph5ezEQLRkMSeJ79NC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dJLlWfvX; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5cb6b2b7127so741968a12.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 01:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729757987; x=1730362787; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qs/aKFg3NFl0djqnSQfP+JloM/IzfO1teCS8RmqnkF8=;
        b=dJLlWfvXuhEKV0cSSRuOIDOdoPHHuGdzxu9B+6jm46B80TYgrX0h+hQXfhixIuYYJJ
         qgRVvlJe9svZ9oVRdWbRIU+Aa8Vuzbc6pyuaHb1jZMRsU6OJuFzR71W2WLh+ldFLceR4
         t3MNYG1W2MeyAPsWN+MygfzO35/uqVg35n88qQj0XiFSpkhodFEdEW+wS1aoJ4e9PKT5
         P1KwDcuv9JY8by1A9yhl81vR41rtf7tIwcGFwruUU0wK4x71dstoOlbflynVKi5wUSyh
         QGInFRNWIr6UD77kjZCGo491No9yzObgGnx3Skl/+ep2sXxrExWdfGgeEBbO/54KIoZv
         yuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729757987; x=1730362787;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qs/aKFg3NFl0djqnSQfP+JloM/IzfO1teCS8RmqnkF8=;
        b=S9LP1pL9iX4TY0Jp2y43bAdDwE29xx/PTXeU48C5U5LWBrzEPwAenqaVlX8JuHMVQw
         vkTn8LE2fm4STwYYyJI06EwsBZe4MKmddyjaVqPAjZqGqN9iuAA2urHaT3BrMfMNX/RN
         ApSjy5slSYSWCtuXYu+ztp66UP5LPwqAKHgdJwJZC0Q33jiQPcue4GH6A+pZZAdeLrUg
         1GBZmh8JnoMhU00N3XK7OEkpdYMaSfguu0H3d2hpopcR87ozC4ZzVFJbu1TRLPKk70ei
         gZW4sNf2p976Uag9Di4kyzEw03LeVJlLPrAQKp0uwGrg8p8qkASCf5xisM3oUmcKI0FH
         3C0w==
X-Forwarded-Encrypted: i=1; AJvYcCVldrOjLr7si/W5Fp1PwMrqwFi7oHRSG6LHTn5UAkyMfN8Gl7wcINWOuHlvXnsfM05r660bcZevab/Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3PZlWdfuCvQ0HjB3vlAthET1y2q0NVNEDlAj30WC+Nux16Q0Y
	WX+7XVYzq/+vmBgc3fT20eLOzzGwByLvR4Gqa9Di11EzI4hr0XPsmkod6aFPzNLMb2T+HmagILs
	Vaw87eEE3/JNBUiEGlF5CxZzCFZZ1TQeZiRXEYQ==
X-Google-Smtp-Source: AGHT+IEUz97/zglX4GUT3Pds+XQ9vhw/84CeXDgQkpGMRP1blc6osQow8h9eQWkAj9ZNoShkMCwOCiaT+o5nm4LK8oY=
X-Received: by 2002:a17:907:3206:b0:a99:fb56:39cc with SMTP id
 a640c23a62f3a-a9abf8d2614mr562372866b.38.1729757987320; Thu, 24 Oct 2024
 01:19:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023-ad7380-add-adaq4380-4-support-v2-0-d55faea3bedf@baylibre.com>
 <20241023-ad7380-add-adaq4380-4-support-v2-1-d55faea3bedf@baylibre.com> <7uih5kvpy6i4ggq5o7eudzczbicopbdnmbtkyprfperkkqgsmt@42q6bncox3ml>
In-Reply-To: <7uih5kvpy6i4ggq5o7eudzczbicopbdnmbtkyprfperkkqgsmt@42q6bncox3ml>
From: Julien Stephan <jstephan@baylibre.com>
Date: Thu, 24 Oct 2024 10:19:32 +0200
Message-ID: <CAEHHSvY3QWkjDo6LdyFg-X+UnyY-cJ6kAFUYP-ZWBqgHoKxmkQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: ad7380: add adaq4370-4 and
 adaq4380-4 compatible parts
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 24 oct. 2024 =C3=A0 09:29, Krzysztof Kozlowski <krzk@kernel.org> a =
=C3=A9crit :
>
> On Wed, Oct 23, 2024 at 11:19:33AM +0200, Julien Stephan wrote:
> > +  vs-p-supply:
> > +    description:
> > +      Amplifiers positive supply.
> > +
> > +  vs-n-supply:
> > +    description:
> > +      Amplifiers negative supply.
> > +
> > +  ldo-supply:
> > +    description:
> > +      LDO supply. Connect to vs-p-supply or a 3.6 to 5.5 V supply.
> >
> >    aina-supply:
> >      description:
> > @@ -97,12 +115,46 @@ properties:
> >        specify the ALERT interrupt.
> >      maxItems: 1
> >
> > +  '#address-cells':
>
> If there is going to be new version/resend, then keep consistent quotes:
> " or '.
>
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
>
> () are not necessary
>
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
>
> No improvements, no response to comment.

Hi Krzysztof,

I am sorry, it got lost during my rebase. It was planned to be on the
v2 (even added it to the changelog in the cover letter).
Thank you for noticing it.  I sent a v3 with all the changes.

Cheers
Julien
>
> > +
> > +      adi,gain-milli:
> > +        description:
> > +          The hardware gain applied to the ADC input (in milli units).
> > +          If not present, default to 1000 (no actual gain applied).
> > +          Refer to the typical connection diagrams section of the data=
sheet for
> > +          pin wiring.
> > +        $ref: /schemas/types.yaml#/definitions/uint16
> > +        enum: [300, 600, 1000, 1600]
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
> > @@ -140,6 +192,7 @@ allOf:
> >          aind-supply: false
> >
> >    # ad7380-4 uses refin-supply as external reference.
> > +  # adaq devices use internal reference only, derived from refin-suppl=
y
> >    # All other chips from ad738x family use refio as optional external =
reference.
> >    # When refio-supply is omitted, internal reference is used.
> >    - if:
> > @@ -147,6 +200,8 @@ allOf:
> >          compatible:
> >            enum:
> >              - adi,ad7380-4
> > +            - adi,adaq4370-4
> > +            - adi,adaq4380-4
> >      then:
> >        properties:
> >          refio-supply: false
> > @@ -156,6 +211,27 @@ allOf:
> >        properties:
> >          refin-supply: false
> >
> > +  # adaq devices need more supplies and using channel to declare gain =
property
> > +  # only applies to adaq devices
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
> > +      patternProperties:
> > +        "^channel@([0-3])$": false
>
> () are not necessary
>
> Best regards,
> Krzysztof
>

