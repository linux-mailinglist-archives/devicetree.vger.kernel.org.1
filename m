Return-Path: <devicetree+bounces-1484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF3C7A691E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 18:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 818A828173C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 16:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133A931A6D;
	Tue, 19 Sep 2023 16:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KdmjX0vr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE058814
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 16:44:57 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C04AC6;
	Tue, 19 Sep 2023 09:44:54 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-532c66a105bso965518a12.3;
        Tue, 19 Sep 2023 09:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695141893; x=1695746693; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5csdseofUImLx6yLn7zRKEPhOKmtYK2S3jJiaVBr/o=;
        b=KdmjX0vrW+Ar5h1zPgB6pcRxbqvfll7yR4hAx5BxlN5GPZ/vEOhf78Zp1wLVwL9zV3
         Gcc+caBp6cru3f+Z5AicPriKd0lDIpSpRcm7D9PDxwckNtitjvi4xCtVtObqwgVtbVwS
         6zcxqaHt6YDrUNe6ptnAAtoIvAYFm2uFvMHje/Nhf96dhIgB/1cKkMTW3zmDA5oVbsLR
         Xph0A9d6sciby+PNjEZX/uZnbkfwk/hR6RLe26I6tah49UWu9wBZF13zcOCVXUqlY0hc
         V/ShvvpbOnljjl+e3J7By0tww44H12Wvvjev+h4R8gYQHUQpF/C6uCMUUb13V1LV4asy
         AP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695141893; x=1695746693;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/5csdseofUImLx6yLn7zRKEPhOKmtYK2S3jJiaVBr/o=;
        b=djgaEX3fpzerQbVWKBhrtPwd8ds1WH0+qgOsLtZbK1xLqDRYx8tsTbQVmafV/ImM4i
         aDYwP5zQSvmwykoQ1wVphyvgmUD0stc1y39Get3ssLUtqp+4BiFgnjiItEDTcQlErtI7
         6H7EZiYBlcYLRLXPROmEID6BI8fiam47mw5KqqgrMXta/KvttJd5xlFuj8NkkK/6QOed
         qi3GQA5D2MaKsE1JUaMI2IUTCOvxwKr1Ubgi4pCIOhyVQ0Wj0BMUtXRzav2QbDPbHLup
         a9EpHP2eRe5v42WoK2g9NuMwYINoHWSs0vmUcfMxS8X+8dEi3aQo9nNjWPuyeJfyvAph
         hLRw==
X-Gm-Message-State: AOJu0YyQTK+1KPiwFoXa30wWnnVhOxm3a7hG6YPjNjcAbwroy9ZEizWK
	MoYAjMjysJLk3sPB25e+kSbtDJl7w/qPAaOIC0Q=
X-Google-Smtp-Source: AGHT+IFMkv7QwQy5FRBZvVlosHX0VQUrCiobfUAS/8A2a6uMQjvCuplS5beL3JeSjAeRM9zRpQQCF8OX7y2bjWQ3dwo=
X-Received: by 2002:a50:ec87:0:b0:531:9c1:8271 with SMTP id
 e7-20020a50ec87000000b0053109c18271mr23997edr.14.1695141892455; Tue, 19 Sep
 2023 09:44:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-2-jagathjog1996@gmail.com> <b27b58d9-9e55-b803-dd61-dd86a78e7c5c@linaro.org>
In-Reply-To: <b27b58d9-9e55-b803-dd61-dd86a78e7c5c@linaro.org>
From: Jagath Jog J <jagathjog1996@gmail.com>
Date: Tue, 19 Sep 2023 22:14:40 +0530
Message-ID: <CAM+2Eu+R6M7U+t4z5K0Cty736ybAzis7xnrT1edk4-y6B=JAOA@mail.gmail.com>
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: jic23@kernel.org, andriy.shevchenko@linux.intel.com, lars@metafoo.de, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Mon, Sep 18, 2023 at 5:55=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 18/09/2023 10:03, Jagath Jog J wrote:
> > Add devicetree description document for Bosch BMI323, a 6-Axis IMU.
>
> I don't know why this is RFC and cover letter does not explain it. Shall
> I just ignore it? Patch is no ready? Recently at least two times someone
> was disappointed that his code marked as RFC received my review.

Thank you for reviewing. This was the sensor's first patch series,
so I initially submitted it as an RFC. I will mark it as "Patch"
in the next series.

>
> A nit, subject: drop second/last, redundant "DT binding doc for". The
> "dt-bindings" prefix is already stating that these are bindings. Four
> words entirely redundant and duplicating what prefix is saying...

Sure I will remove redundant words from the subject line.

>
>
> >
> > Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>
> > ---
> >  .../bindings/iio/imu/bosch,bmi323.yaml        | 81 +++++++++++++++++++
> >  1 file changed, 81 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/imu/bosch,bmi=
323.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yam=
l b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
> > new file mode 100644
> > index 000000000000..9c08988103c5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
> > @@ -0,0 +1,81 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/imu/bosch,bmi323.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Bosch BMI323 6-Axis IMU
> > +
> > +maintainers:
> > +  - Jagath Jog J <jagathjog1996@gmail.com>
> > +
> > +description:
> > +  BMI323 is a 6-axis inertial measurement unit that supports accelerat=
ion and
> > +  gyroscopic measurements with hardware fifo buffering. Sensor also pr=
ovides
> > +  events information such as motion, steps, orientation, single and do=
uble
> > +  tap detection.
> > +
> > +properties:
> > +  compatible:
> > +    const: bosch,bmi323
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  interrupt-names:
> > +    enum:
> > +      - INT1
> > +      - INT2
> > +    description: |
>
> Do not need '|' unless you need to preserve formatting.
>
> > +      set to "INT1" if INT1 pin should be used as interrupt input, set
> > +      to "INT2" if INT2 pin should be used instead
>
> And what happens with other INT pin? Remains floating?`

Yes, the other pin is unconnected. The driver provides
support for either INT1, INT2, or no interrupt configuration.
I should have added minItems, maxItems, and const,
I will add these in the next series.

>
> > +
> > +  drive-open-drain:
> > +    description: |
>
> Do not need '|' unless you need to preserve formatting.

Sure I will remove this.

>
> > +      set if the specified interrupt pin should be configured as
> > +      open drain. If not set, defaults to push-pull.
>
> Missing supplies. Are you sure device does not use any electric energy?

Sorry, I missed adding supply, I will add it in the next series.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +allOf:
> > +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    // Example for I2C
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +> +        bmi323@68 {
>
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-device=
tree-basics.html#generic-names-recommendation

I intend to utilize the generic term 'imu' (representing the
accelerometer and gyrometer)
even though it's not listed in the generic-names recommendation.
Would this be acceptable?

>
> > +            compatible =3D "bosch,bmi323";
> > +            reg =3D <0x68>;
> > +            interrupt-parent =3D <&gpio1>;
> > +            interrupts =3D <29 IRQ_TYPE_EDGE_RISING>;
> > +            interrupt-names =3D "INT1";
> > +        };
> > +    };
> > +  - |
> > +    // Example for SPI
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    spi {
>
>
> It's the same as other example. No difference. Drop.

Sure I will keep only one example.

>
> Best regards,
> Krzysztof
>

Regards,
Jagath

