Return-Path: <devicetree+bounces-99119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4879C968D9C
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 20:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DAE91C220F0
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 18:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8BD1A2650;
	Mon,  2 Sep 2024 18:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TBYIQggY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570941A2640
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 18:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725302330; cv=none; b=uNC0yxq0nzET21pLODBOKAoMMLQdsSMmzQvNkTmY7/k/ccOj74jikIdV3vETYP07cwv3eVt0aLVHukDbVb/jgQFgCWvwgKys70RJkmPZy+Hu+ODFQVG67L568VsFHjEPTLqGHFHNsn3BTACB60R4t+uNyJuJnwSRlyDcKpY0tDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725302330; c=relaxed/simple;
	bh=qvGR0hnmxdDXx26rcKer0OOFReGA3haiPLSH0odUurk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WfPcDlE0zFFqeZjd01oqv8wpB3DpGSN46KvaWSHgI0O4GAYQwF4cuMj4DRFULWw9w0Or9AqsK08B3TE8y9DtSZhrzu/jc7J6hc2sgp56anzxMnp8L394wg3FU54OyRL6jPfTRXy+J5Az9SB78MRQrmFaX7i+yQY434oTrJSUv+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TBYIQggY; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-4fd0d7fe6f6so1731022e0c.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 11:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725302327; x=1725907127; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUH6Sq+2/lRd4KWEdNd4C2TjbnVZU4PCrWh/KXQdHK8=;
        b=TBYIQggYdj0nr7UfWGapXwSwP8rc4s5jnhrxPLAGLcLAkbDWwd5eSnnu6J2h0eQbge
         AWK2Rr8rFjdQeJPJ7pmXHUnrkRtVDVbBSnEy4y0+6G/t3FXkbSPk7NNoXgycOBt+l7mn
         H6M5jHZ6xXmrAGtUAuyVmVdVmxmPKARo/7FvV+bm9ZmsqNSYDIReMJlfabMJqroUiBwT
         jTmx3tulrMrmN3EHmDOYNvOpsHUrTnNtn3zKD4r1Hu68peuoGlU0IIM8SnuRNpOZCZOX
         V4q+ch2jWnFs4ZsBvSMOoHCfr4Bf/R9ej9kFLrNk8lXulHxLr9QZKNhoFDpTtv3dU82V
         B+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725302327; x=1725907127;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uUH6Sq+2/lRd4KWEdNd4C2TjbnVZU4PCrWh/KXQdHK8=;
        b=qJNPKdqpwM4bvJ7peIqWv9UVVqGExgZ+rNWOFfmdgQbpGrXZ/MqksQwsGF8mSbllYi
         9SHHTKZ2oZhaIjX2/xEHygBZpbkm18i1hU3yIE/u1KdbK1C5/fkPaF5nTHksvLJun4AK
         WSatmdZL7+hk9rPTx7Ht7rHyck/RtEIc2nNjrI7ENVIZb2YkFX/FI+aUInq9WDkli0IH
         YNq/JBej7gHmVjVRUaBokacLHnxzJ9Z0MPR+4VASwa1+nVnSnnPjnbK16xv+xWDzBK1G
         IzQ82fGGJ+Oo/SwKv0t5odsGc5PCxL8wF7wuMWE/0ZM4h7J9wazM71NtIdua+1BCeFNl
         fKFA==
X-Forwarded-Encrypted: i=1; AJvYcCUkyA0sFmlvhRxodF1Ij8Qd5q8YBjuPtSzl7U2+heBUXvHkFt8L/9oCtnrSKQ45j9fhsF3Yqw+XqEaK@vger.kernel.org
X-Gm-Message-State: AOJu0YyPXsH7AM5DOOmjJOWkbjDVrcc2ihptVDvwMMHw/9Yuf5022lkZ
	GHlpUneAgBlE3mMQMWrSO/KMqXLhTmFsLsTVX0Umo1+ueTbYP/XsJ1N1TNLCWRY2c8HlFl0dQIH
	5dMHJxfju1c6tUoBGzw6scsMOYZWeXwibjyMBJg==
X-Google-Smtp-Source: AGHT+IFAftsIG39b8r6G5jZKOPUmUgLsYOAXRb/zKUNViiQ+B8flLdJStRybK5kjdj31iVJvY1Gx1xwD36/LdADxIQE=
X-Received: by 2002:a05:6122:3b12:b0:4f6:ad2d:c867 with SMTP id
 71dfb90a1353d-5009b162580mr8806758e0c.12.1725302327196; Mon, 02 Sep 2024
 11:38:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240902103638.686039-1-aardelean@baylibre.com>
 <20240902103638.686039-8-aardelean@baylibre.com> <rdk2f6c457k462g5v6s5vumdmhejefyfareio5f6bogslg4wg5@ket4vfwwbyi7>
In-Reply-To: <rdk2f6c457k462g5v6s5vumdmhejefyfareio5f6bogslg4wg5@ket4vfwwbyi7>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Mon, 2 Sep 2024 21:38:36 +0300
Message-ID: <CA+GgBR-aQw+JHky5XwRDQj=6y1pHD=OvBeGW1ocd=ZR6ieBJrw@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] dt-bindings: iio: adc: add adi,ad7606c-{16,18}
 compatible strings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 2, 2024 at 2:55=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Sep 02, 2024 at 01:36:30PM +0300, Alexandru Ardelean wrote:
> >    reg:
> > @@ -114,6 +118,25 @@ properties:
> >        assumed that the pins are hardwired to VDD.
> >      type: boolean
> >
> > +patternProperties:
> > +  "^channel@([0-7])$":
> > +    type: object
> > +    $ref: adc.yaml
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        description: The channel number.
> > +        minimum: 0
> > +        maximum: 7
> > +
> > +      diff-channels: true
>
> Shouldn't this be specific?

Umm.
Specific how?
Like if:then check for certain compatible strings?

>
> > +
> > +      bipolar: true
> > +
> > +    required:
> > +      - reg
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -202,4 +225,44 @@ examples:
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
> > +                diff-channel;
>
> Where is this property defined (which schema)?
>
> Did you test it?

Tested on my board.
But forgot to update the DT schema docs.
Though, if you're referring to testing it somehow via some make
command, I'm a little behind on how all this works now.
I'll go re-check the "make dtbs_check" and similar commands.

Maybe I sound a bit old (now), but when I last saw these DT bindings
going from txt-to-yaml, they seemed relatively simple.
Now, they're almost like their own programming language.
I'll search for some quick setup guides for these; any pointers are welcome=
 :)

>
> Best regards,
> Krzysztof
>

