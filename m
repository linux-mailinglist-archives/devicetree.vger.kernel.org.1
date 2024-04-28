Return-Path: <devicetree+bounces-63365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6920C8B4A17
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 08:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F87A281E4E
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 06:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 180988BF0;
	Sun, 28 Apr 2024 06:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BLT9nRkY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A158B8F62
	for <devicetree@vger.kernel.org>; Sun, 28 Apr 2024 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714284755; cv=none; b=XArujgxo8cFLAxM46Gdf+fC1c+ovC6Op0zQD7yEjiFW7xuC2npdguyzOvdmIRffwLvzF24DdGUiYbu9xLN/BFA6iNsZNX0r76Qtm+s/N1cWEeVV2mTxtKtTZHt89e2BjMPLandiVRDs/TJ30RCtTHeE6o3BSt+iWupJfZ8TDHEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714284755; c=relaxed/simple;
	bh=IAXs0Eo7eBU9QIbgFkk63ETWHAOPHtW/i0OI1lqbJwM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TDOhn6O+vdfbGRnpdlfW8VM6K1T6//aMRoZYCr/dM5EtOqXBvF8CxsGluklEyk4rbATp6WV7yuNjNLLOVLOh8oorVaYSzJlZFFB/FbxJkMOkNT6gF0L96mFxo0SkCgObM0YNiKE/nBIzdrhNFWoGS5LCRvFoW/Fxz6Y9Qd9ps9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BLT9nRkY; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6f074520c8cso3461528b3a.0
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 23:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1714284753; x=1714889553; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rACQzxSZl48k0N9zEquIXjlaBzjvzWp9s0fZvg9+UtE=;
        b=BLT9nRkYs7DDv46vzj8kobH/cOpJJ/+/SAG0w5AvOTtODRXEWGy8/yet76Vx3FXV5R
         1N6ZHdVgKUMWtXEGHVpmth/aB/ri7lhc438KeFHiDOtGEA44leERi+Pz8VM4yAFtHCqc
         dXQIAKcYzdeN8w41NStJmI7R9Kyb9PuN9LStLYgEZ34cJaNRF9tkjMiwHW3kXE5TizjF
         PyfJoORvUQl43xzr1EVXpdHRzwQJAMG1iO0kGTuJmpK4NggJUDsIJc7QiEf5VAq50UL3
         8GlhE1hWAUd1/0HUT/cqkprsVYZ5pxiDZHca32Zo4Z+mXPtT/2iccUvGsGlFIl/nvcLB
         vr7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714284753; x=1714889553;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rACQzxSZl48k0N9zEquIXjlaBzjvzWp9s0fZvg9+UtE=;
        b=WrhrD0sjnf8gPuUX8B3M8bDB1BO9ViT+CQOLTlcDchQMePZOA7+sGldNYLe4S/R1+k
         29e8GMOU4kFJvx9UXpbvz3LlGYVIsgWSNt+Wn5rmikluh9TKoz/x/aygKJ7c7ERFIE3u
         ynxHSRbQvxtMMKQ199+OxLvXG/8gtxfCEcwNGDpBUCxIscRYi3QM4wQduJc9pOj4UCpq
         /JG6LBkHJZAY7ChNk1KlBnmpOK7OO6OIi9kVk4G5NK/1hmqm7sF/aeziC5X/MG9qRRVL
         zb+TXF9AcpWlppkgfiY2ajEo890py5f3LBIQBcjvTt4CD/acpMG9E4yyj7UydwAS2Hyv
         chOw==
X-Forwarded-Encrypted: i=1; AJvYcCWsrZ2rCveDitaL3chCA0EThp0toyszDXzWfpfN9YAqAnJeYmodfLVNulJUuJpGcroCb0ptSk79eybB7BUyrmSEZqigoJo4AfS8ww==
X-Gm-Message-State: AOJu0YyJhXs9ALevQ3luVGcYJc2TXPN8gslu7xML8/57JoHqcB3HP0GW
	DJWUChUZyVwczGRJ/E0MvuxbH9SaetLUdmEPE8fs4O/D4sFJnuaqcetAFytjWuoZ7P599914vfY
	wXCOl/wFDWdZ6/4sQRvGr/U9yzcB25omAQEn7tg==
X-Google-Smtp-Source: AGHT+IG7wEVRyUSjjFaWLzerPlnVDWJzSGQolHizu0dCLmKzBNjm+Fj+yU3XZ3TJA7fFCdtI8QFwEAY1mwmLbbxp/Jk=
X-Received: by 2002:a05:6a20:d492:b0:1af:36df:5159 with SMTP id
 im18-20020a056a20d49200b001af36df5159mr4309888pzb.59.1714284752885; Sat, 27
 Apr 2024 23:12:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
 <20240424023010.2099949-2-yangcong5@huaqin.corp-partner.google.com>
 <20240424-spelling-float-9b881cb80992@spud> <CAHwB_NLb9ENfCj-oJ2mV_DwFJ0h6TGSi1byUdd6Bri3gDsCo5Q@mail.gmail.com>
 <20240426-fifteen-random-ff4a535ab40d@spud>
In-Reply-To: <20240426-fifteen-random-ff4a535ab40d@spud>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Sun, 28 Apr 2024 14:12:21 +0800
Message-ID: <CAHwB_NKHsDUarG8ozQ9N_ABBkgSv_sti6HUcyYtSNBVS4n2Tvg@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: display: panel: Add himax hx83102
 panel bindings
To: Conor Dooley <conor@kernel.org>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, linus.walleij@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Conor Dooley <conor@kernel.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8827=E6=97=A5=
=E5=91=A8=E5=85=AD 01:06=E5=86=99=E9=81=93=EF=BC=9A
>
> On Thu, Apr 25, 2024 at 02:03:24PM +0800, cong yang wrote:
> > Conor Dooley <conor@kernel.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8825=E6=
=97=A5=E5=91=A8=E5=9B=9B 00:55=E5=86=99=E9=81=93=EF=BC=9A
> > > On Wed, Apr 24, 2024 at 10:30:04AM +0800, Cong Yang wrote:
>
> > > > +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102=
.yaml
> > >
> > > Filename matching a compatible please. What you've done here makes it
> > > seem like there's a fallback compatible missing, given this looks lik=
e
> > > the LCD panel controller and the starry compatible below is an LCD pa=
nel.
> >
> > So change the filename to starry,himax83102-j02.yaml?
>
> IDK chief, are you missing a fallback or not?

Ohn, I see.  Like this. Thanks.

properties:
  compatible:
    items:
      - enum:
          - starry,himax83102-j02
      - const: himax,hx83102

>
> >
> > >
> > > > @@ -0,0 +1,73 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/panel/himax,hx83102.yam=
l#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Himax HX83102 MIPI-DSI LCD panel controller
>
> Because the title here makes it seem like there should be.
>
> > > > +maintainers:
> > > > +  - Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > > > +
> > > > +allOf:
> > > > +  - $ref: panel-common.yaml#
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
> > > > +      - starry,himax83102-j02
> > > > +
> > > > +  reg:
> > > > +    description: the virtual channel number of a DSI peripheral
> > > > +
> > > > +  enable-gpios:
> > > > +    description: a GPIO spec for the enable pin
> > > > +
> > > > +  pp1800-supply:
> > > > +    description: core voltage supply
> > > > +
> > > > +  avdd-supply:
> > > > +    description: phandle of the regulator that provides positive v=
oltage
> > > > +
> > > > +  avee-supply:
> > > > +    description: phandle of the regulator that provides negative v=
oltage
> > > > +
> > > > +  backlight:
> > > > +    description: phandle of the backlight device attached to the p=
anel
> > >
> > > I'm not sure why this was given a description when port or rotation
> > > was not.
> >
> > So change it to backlight: true ?
>
> Sure? It is just a repeat of something already described in
> panel-common.

