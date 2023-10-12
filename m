Return-Path: <devicetree+bounces-8162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F0A7C6E9D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F038B282716
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D03E26E3A;
	Thu, 12 Oct 2023 12:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="EBaMMLkB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8889526E33
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:57:34 +0000 (UTC)
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 470AFBA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:57:33 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id ada2fe7eead31-4527d7f7305so399479137.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 05:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697115452; x=1697720252; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5ich9JQwQCJP/Qx3C4q2S4VTW2ED0I8XBx5xRBWSqA=;
        b=EBaMMLkBz4F/v5q7oggyHeTmdFYSK0fxcQKK8uCpPNgZ8TM29QSY7pxTEtHqTBf8Vn
         RXqcZaDWAG9UIfhlH6z1CNBTpPQYq8UHLLgZ82zjheJD3TF9i6VgG8WGQlYYG/xJM1X3
         mGY6vf5Hv7LSFvsfcuLXnaTLW1zNGZAO+KEUnasfYzdFb3F1yblU8uSCwIrjt5R1OOyQ
         4bkOFbFND/UGWXWKcqUCX4a3ZeDhipdWAPW1BhkfI14+6o8NL15/V42qfHX8tKb94+a4
         S8HjpU2Ni0+jblVLhamo93yMy9ACg4ISSR136pijVdyg6t+agvYeeAeETE8njXqftr5w
         6SKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697115452; x=1697720252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k5ich9JQwQCJP/Qx3C4q2S4VTW2ED0I8XBx5xRBWSqA=;
        b=Bfw0vLs7R2Tat0obq9SedYCM5m5Goo1wiv0aipcMmI+doETFpiwDA2Xg3XhXhPi27w
         4tmA00rbPvKpRw+/v1DkSCOQ+qyKtPiv44AHQnXcncLu9fifIQ91n7MGd8O2XQFSrw2U
         R3pIr9NO2ePS1hc+Z53UL+rJqH0nXfP7OFseZvByvuoJY6Tq1FEUzYj4JKdTEqRm3iIx
         jPr5TYqgcahm7OLH/mYMUoVy0ER4zhzHMqsF9Jzpk0yhSMO4EjuVLJW1k4ksuK4rraAq
         jVm7DnGcJrBVX1p+AAqp726/DNwL+6cByFGRE7JJ3MzKUOirLZUi22qXDR9SGKjjA8Z+
         Sg9A==
X-Gm-Message-State: AOJu0YxvVy81mjIXAxQPha5GGicoPN1AbaWOuJ0MfH4ZcZtVnlm4pGhn
	U6ck1v04bOezUtUvBoUDeJXKlzQdRJnoNcjPXpYz1A==
X-Google-Smtp-Source: AGHT+IFnOKFoSRSFj+S9xe12DcwZi3vkWjbuVn++4JANKiPaAfF674qkHi+EqCjDsXpoPasI5MJzGnArThU6xxmaErY=
X-Received: by 2002:a67:e2da:0:b0:452:5e2e:a4e1 with SMTP id
 i26-20020a67e2da000000b004525e2ea4e1mr22660810vsm.14.1697115452346; Thu, 12
 Oct 2023 05:57:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010190926.57674-1-marex@denx.de> <20231012115719.GA291445-robh@kernel.org>
In-Reply-To: <20231012115719.GA291445-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 12 Oct 2023 14:57:21 +0200
Message-ID: <CAMRc=MdTu1gagX-L4_cHmN9aUCoKhN-b5i7yEeszKSdr+BuROg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write
 lockable page
To: Rob Herring <robh@kernel.org>
Cc: Marek Vasut <marex@denx.de>, linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 12, 2023 at 1:57=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Oct 10, 2023 at 09:09:25PM +0200, Marek Vasut wrote:
> > The ST M24C32-D behaves as a regular M24C32, except for the -D variant
> > which uses up another I2C address for Additional Write lockable page.
> > This page is 32 Bytes long and can contain additional data. Document
> > compatible string for it, so users can describe that page in DT. Note
> > that users still have to describe the main M24C32 area separately as
> > that is on separate I2C address from this page.
>
> So 2 nodes for 1 device? Wouldn't it make more sense for the 1 node to
> have 2 addresses?
>

This is in line with what we have been doing so far for 24cs and 24mac
variants. Here[1] is the series that first added support for those
special areas.

The way nvmem works, we'd need to register two nvmem devices anyway as
children of the i2c device associated with the at24 chip. Not worth
the additional complexity this would entail if you ask me.

Bartosz

[1] https://lore.kernel.org/lkml/1465202936-16832-1-git-send-email-bgolasze=
wski@baylibre.com/

> >
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > ---
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-i2c@vger.kernel.org
> > ---
> >  Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Docum=
entation/devicetree/bindings/eeprom/at24.yaml
> > index 98139489d4b5c..7be127e9b2507 100644
> > --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> > +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> > @@ -67,6 +67,8 @@ properties:
> >                    pattern: cs16$
> >                - items:
> >                    pattern: c32$
> > +              - items:
> > +                  pattern: c32d-wl$
> >                - items:
> >                    pattern: cs32$
> >                - items:
> > --
> > 2.40.1
> >

