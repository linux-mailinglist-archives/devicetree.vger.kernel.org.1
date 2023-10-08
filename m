Return-Path: <devicetree+bounces-6762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC627BCC94
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 08:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5AED281AE4
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 06:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F406B5384;
	Sun,  8 Oct 2023 06:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BBDRmsqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6CA522F
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 06:24:55 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 609C3DB;
	Sat,  7 Oct 2023 23:24:53 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so6306207a12.1;
        Sat, 07 Oct 2023 23:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696746292; x=1697351092; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Gr1mZ9X2KUB6a5Sl+O5P/cpeRCH0c3VVAkt2QKr4ZE=;
        b=BBDRmsqJOAnasq9ZuKjuoRdzjrRXVJHDplYsP+LOLckjMW1OZE+GfZekdUz0fLkAhG
         Qv19WnGVIw4p/VNPL7mISYy+u7/Wt/tqIgjGAKvF3kFbeYm1tvCDTiZ7+L4a8OV1161T
         p6UXbiyuLPiS5KxtuRg7dnGQokfhUdQdkIJ4U7cbZr/XEmBxNom98wW2cRLQJ9i9g3tb
         h23pem2q2TZdHiC3VCrLuccsNFNX/LSwSiMfBFKr1OmUGv8Cb6hzaUmfxR+G9RfhXDMR
         4KMZT4SKuk9C0yhgWtavPb1ErwjgAl0Uy+WbzBWcg4mWxduDW8MyniDoXd+jCFns9b41
         +MdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696746292; x=1697351092;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Gr1mZ9X2KUB6a5Sl+O5P/cpeRCH0c3VVAkt2QKr4ZE=;
        b=PN3IlrlLwrfGpmsxpEksfvyfDDB3SFbnN91J2JmYB7UDbhcZxy5H8oFmAm3kSurq/N
         dId3rEKGAF/8RrQUNtdeTaE6heQ+BQanWCTj7NSOGMMg1IdvuatjDKo0i4V54f/lG7Zy
         VwFcPo7VbobcBVyEr2W1ALawt353YAYroxXdVUoMCMfKaVpvXcaRfGnhwhFMBMZnycpu
         qmC4tyzw4zx2deEcD6aZVUFIdRI2nB4pP2Ki+7A/VXoD1flxSD4qjB1F0/A3AYHqmjMI
         ph5W59OX/4J+TPCui/G2ZIt4VYrgKu7lHnPqkr7Svb84zaqi+CBWeHSH2ezuu3dy4VOj
         +tWA==
X-Gm-Message-State: AOJu0Yz4O+Kmv8hwCNnQhKp3jjUKXRoNZd5wbJQ4fjO40AbnZv9WMAmz
	vEKfilqBC4iRXQJVwfQM72WAuou7/CmtHyd6znk=
X-Google-Smtp-Source: AGHT+IH9Gb9RAQ2BgfE14DySOC1H+JtldrMhgrqfxEHOxMwvhkBoCb0651Eun/jDINVlj3TFQLKj+fR9W0caCzEaMlI=
X-Received: by 2002:aa7:da83:0:b0:533:d81b:36d5 with SMTP id
 q3-20020aa7da83000000b00533d81b36d5mr10401183eds.15.1696746291581; Sat, 07
 Oct 2023 23:24:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-2-jagathjog1996@gmail.com> <20230924143710.7c6edc4a@jic23-huawei>
 <CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com> <20230930170530.0b8f185c@jic23-huawei>
In-Reply-To: <20230930170530.0b8f185c@jic23-huawei>
From: Jagath Jog J <jagathjog1996@gmail.com>
Date: Sun, 8 Oct 2023 11:54:39 +0530
Message-ID: <CAM+2EuKzBVbTF2SrpYEYfzap1wrONboFV-QuTU9Fz7sVjqJLeA@mail.gmail.com>
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
To: Jonathan Cameron <jic23@kernel.org>
Cc: andriy.shevchenko@linux.intel.com, lars@metafoo.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jonathan,

Few more questions before sending the next series.

On Sat, Sep 30, 2023 at 9:35=E2=80=AFPM Jonathan Cameron <jic23@kernel.org>=
 wrote:
>
> On Thu, 28 Sep 2023 03:07:22 +0530
> Jagath Jog J <jagathjog1996@gmail.com> wrote:
>
> > HI Jonathan,
> >
> > On Sun, Sep 24, 2023 at 7:07=E2=80=AFPM Jonathan Cameron <jic23@kernel.=
org> wrote:
> > >
> > > On Mon, 18 Sep 2023 13:33:13 +0530
> > > Jagath Jog J <jagathjog1996@gmail.com> wrote:
> > >
> > > > Add devicetree description document for Bosch BMI323, a 6-Axis IMU.
> > > >
> > > > Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>

> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupt-names:
> > > > +    enum:
> > > > +      - INT1
> > > > +      - INT2
> > > > +    description: |
> > > > +      set to "INT1" if INT1 pin should be used as interrupt input,=
 set
> > > > +      to "INT2" if INT2 pin should be used instead
> > >
> > > Why not both?  Sure driver might elect to use only one, but the bindi=
ng
> > > describes the hardware not the driver and both might be wired.
> >
> > If both interrupt pins are wired, should the DTS file need to define
> > both of the pins?
>
> Yes it should. + we need the names to know which is which.
> You could rely on order, but it's more flexible to not do so, particularl=
y
> when you also need to support case where only one is wired.

In the driver, I currently prioritize INT1 over INT2 when checking
(bmi323_trigger_probe(..)) based on the interrupt-names defined
in the device tree. However, I'm open to suggestions on the best
way to ensure that the order doesn't affect the selection process
when both interrupts are defined in the device tree.

Each feature, such as data-ready, watermark, tap, and others, supports
either INT1 or INT2. Based on the interrupt pin defined in the device tree,
I configure the all the features accordingly.

Regarding your earlier suggestion to have two different controls for
drive-open-drain, do I need to define sensor-specific drive controls
in bindings for both interrupt pins?
for ex: bosch,irq{1,2}-open-drain

Regards
Jagath
>
>
> Jonathan
>
>

