Return-Path: <devicetree+bounces-7777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E28E87C56FC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:36:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4D7528200E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA951427C;
	Wed, 11 Oct 2023 14:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="0BMRqMbO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7B72033D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:36:41 +0000 (UTC)
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com [IPv6:2607:f8b0:4864:20::931])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054379D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:36:40 -0700 (PDT)
Received: by mail-ua1-x931.google.com with SMTP id a1e0cc1a2514c-7b102a6565eso2420904241.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697034999; x=1697639799; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thJJX24Z+7+pXZI77rMkBrnT41qe/GrZxJsP3+491CI=;
        b=0BMRqMbO37aHl0XhyBtoWMVHLUJvDjSmGekJqrcpFoFaV1Scfc6UAvHb+aZI+XlqiX
         V2ciSH1IC/MhhfiHRsIuf3rp8DOh+IeBx1lXsPUjCbHTZ0ftO3gEha68XtqDMWWZUlE0
         p0DIz3K/g2fkiKnZkUtDeoIDBJmk27jw+a5i/bTZ5XDXSKWA/xPSRCpUI2P/a5Oo1UtR
         XwzVfKBZuLOugJV7CP4uopC8EA5ry3BbqlCh8K4wSR/hIkIS1lfK2RvKvFb9bubfdubI
         zZc8WeaFklogD7n8XJ9f+HXgfbm9nWhPal8Ttgr1AnPhCiILYfv60xfUzvcrMkLikeBw
         z/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697034999; x=1697639799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thJJX24Z+7+pXZI77rMkBrnT41qe/GrZxJsP3+491CI=;
        b=FJV+UnJvmelGJfeaDALUJ9q3M/9bb3mxXMv+g3xlhXlM/xranHosb8cnKQZkPPmiI4
         XNM8CRqlNFbChmv01pN3pIkUHcuv7daLliXwTzeTrNYRkQBjcqyUdtMHhf8yY+ujlUzB
         UvLyULgVltZQX98qiPQX3fa8w0ETvx54DB8Z3R0vK61YAinHcJlLm5KMhCv10OI8QchG
         mYb51Lh3ftCMVVmavzp3f3DSRXvJ5DirT3Qrk8pr/wY7G90X8/MsZ9vBwqFoEv85q7Xb
         PJ+5cmkpHmKaKOIUjH/FmIJoYWuvyjangvDQJ5TKAPyJh3mZpYPQ3VldxBV61mg91C5b
         wqjg==
X-Gm-Message-State: AOJu0YyUErV99DU6LHhGOnuSzWmfjoQqtGW/7TmRklXLNPIeuBdopiEI
	5qbTe1SugBq9jg152LrYo/5H/F0gJCn3Oh97+Eno2Q==
X-Google-Smtp-Source: AGHT+IEeJUN5uUFEuUvugdPwFpy9Oq/FMLsK6nZtNMu7phc6LbLVti5gD2C0vhPq6rBs9XZoVWq46Ecy/QAN/Uua4YY=
X-Received: by 2002:a67:f918:0:b0:452:8e07:db61 with SMTP id
 t24-20020a67f918000000b004528e07db61mr19414708vsq.6.1697034999085; Wed, 11
 Oct 2023 07:36:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010190926.57674-1-marex@denx.de> <20231011-buffer-safely-2d121d4ae8b8@spud>
In-Reply-To: <20231011-buffer-safely-2d121d4ae8b8@spud>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 11 Oct 2023 16:36:28 +0200
Message-ID: <CAMRc=MeQzii7btZSwA0QvGnNGXbhWgbtJ6CLhje1dd1Ndn2M=w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write
 lockable page
To: Conor Dooley <conor@kernel.org>
Cc: Marek Vasut <marex@denx.de>, linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 4:32=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Oct 10, 2023 at 09:09:25PM +0200, Marek Vasut wrote:
> > The ST M24C32-D behaves as a regular M24C32, except for the -D variant
> > which uses up another I2C address for Additional Write lockable page.
> > This page is 32 Bytes long and can contain additional data. Document
> > compatible string for it, so users can describe that page in DT. Note
> > that users still have to describe the main M24C32 area separately as
> > that is on separate I2C address from this page.
> >
> > Signed-off-by: Marek Vasut <marex@denx.de>
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> Oh and Bartosz, this binding seems to have a baylibre email address for
> you in it. I'm sure it's mailmap'ed to the right place, but just FYI.
>

It isn't actually. :(

Thanks for the heads-up, I'll send a patch for .mailmap.

Bartosz

> Thanks,
> Conor.
>
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

