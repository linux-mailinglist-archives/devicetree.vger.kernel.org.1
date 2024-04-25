Return-Path: <devicetree+bounces-62562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF88B1A93
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 08:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D54E1F22749
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 06:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF143C47B;
	Thu, 25 Apr 2024 06:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="z43TZfKi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A31C3A1AC
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 06:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714025018; cv=none; b=j8AdRC0Mghq2oHc39lIFCKjLrO1WWfYt34QWWjcBXsZlCMJWzD26jW9pxLmPhjvT26OZmlB+LymYnQ1YiDOwFHfef/2KM/oGpwr1GNVVKXl08xKQi1S4LAboA4uMyaveeAxDYJeA3tUhxVFNrDNw2CJAc/JlLr9upS/1Q6iKAQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714025018; c=relaxed/simple;
	bh=2Idlyg9A8WqkCTHmsX7ZoEYGDP5jeXNB3vQcYVgQd3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tw3znBgXp2IDdo1ZX4Q9njotLEqiOwO0LgaOjZ5f6ERvDJCVJaYH5URGHAiTRPFGmYm0deO9eownIkOAEKMNp5FYgR2Ot4clWp18iuv+xaGDzs8/JfUP7FcwvTIEScVugJUdw5YEMIP99Z1FgMFmrDzPEqVXwG3h3oR88o2RdSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=z43TZfKi; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so478609a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1714025016; x=1714629816; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=we8SwMWsVnahAxA+g6ZwCnrdC+4iaxLV0QA7xR7Bic8=;
        b=z43TZfKiJy8XXXUsdd/FYe5V5K0tFlXQxPXHi+zbCe9lGZM0t/viOPHJcjiO4YN9sk
         uDEzn7tojyD5OOgS48WYwErjaQSUPatUokXoOepPVodjBfQECfzQ9ozYrco9GAe+w/GR
         ufFDnzamD9nKO1r8mBx4a3LtJIqpWowg4I33hSEuFpnoCd6xP/mOrqXDAviwc9VOLwTo
         7zEV5MdX5MzgAav5IDFpvm7E/kVnDnuGvwp1aP55z40UXQaZA++D11LrEahqLkBTwmzr
         7KM0/5cVav8SXSz/92eHqg9VgAalxabbtbDCLNTzEZnIH7QMRWRAZYvENZ6VoKZSNjJx
         dDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714025016; x=1714629816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=we8SwMWsVnahAxA+g6ZwCnrdC+4iaxLV0QA7xR7Bic8=;
        b=kNulXSls6A0RRfAOBqyN843Uc2Legzhz33+hofYOeevAgJxKllA1IYtMwrnUSRsI4z
         H3q0LJob8YcuqOikOvjQqZpMvYQ3guf9c5lQWtvZjtxMPa4vEJbfXKl6BfN0vs5TrJqM
         8ixt5Tk14svEZaaxYA4zJrfrdu/C0nDH2UeOS/6vBzedD9f+li58aYzlZWsOGViIsD+G
         CWxhebUpb6+SI/GDUqKHITs8r0YVOuNiXDyrqTH8rNY1DkYOAsJyjs2TE6pO6Dktu0qK
         9fvBOmi54/HP7IcqZI54g4E7H958aaYxEzj30FJdoqOWZ4JQWmzkImKmfn58uwfv259v
         ECkw==
X-Forwarded-Encrypted: i=1; AJvYcCXY5SVWhkmuUaEduOXvOcXB6913ioaRjXQTi77xtUmUEyY3DKS1KQueEghCGs4KrQeJScaiYERzwqXOQKOvqg/tf3gv1hT2H2msCw==
X-Gm-Message-State: AOJu0YxdjzpurV8j0KQf6AowmCV+wu6fUvSw9Yw7G1vBhe9z5ZHmzs5Z
	xlp8bohyYc+jQW+bCBIwZiz3t02SLU8UY2lRNMv1Ua8pTyvAztew8nkKdAyJV0NYd7Yy94rFmFb
	rjL39GC8LO78V16OmzHVZEpfJhmOepnF82XWJ4g==
X-Google-Smtp-Source: AGHT+IF7qX9dIVjUowtjxF7HpR9qCwpQY5qpxku9xN6Xlx30uiowBPfvdZuaC5oQisi4HPEoMhVeOhiK9r2JKs/3+TQ=
X-Received: by 2002:a17:90a:66cf:b0:2a5:3ec5:cecd with SMTP id
 z15-20020a17090a66cf00b002a53ec5cecdmr4452869pjl.12.1714025015799; Wed, 24
 Apr 2024 23:03:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
 <20240424023010.2099949-2-yangcong5@huaqin.corp-partner.google.com> <20240424-spelling-float-9b881cb80992@spud>
In-Reply-To: <20240424-spelling-float-9b881cb80992@spud>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Thu, 25 Apr 2024 14:03:24 +0800
Message-ID: <CAHwB_NLb9ENfCj-oJ2mV_DwFJ0h6TGSi1byUdd6Bri3gDsCo5Q@mail.gmail.com>
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

Thanks for review.

Conor Dooley <conor@kernel.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8825=E6=97=A5=
=E5=91=A8=E5=9B=9B 00:55=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, Apr 24, 2024 at 10:30:04AM +0800, Cong Yang wrote:
> > In V1, discussed with Doug and Linus [1], we need break out as separate
> > driver for the himax83102-j02 controller. Beacuse "starry,himax83102-j0=
2"
> > and in this series "BOE nv110wum-l60" "IVO t109nw41" panels use same
> > controller, they have some common CMDS. So add new documentation for
> > this panels.
>
> It'd be good to note in the commit message that the 3v3 supply is not
> present on these panels, given it was present in the other binding and
> not here.

Got it, fix in V4,thanks.

>
> > [1]: https://lore.kernel.org/all/CACRpkdbzYZAS0=3DzBQJUC4CB2wj4s1h6n6aS=
AZQvdMV95r3zRUw@mail.gmail.com
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> > Chage since V3:
> >
> > - Update commit message.
> >
> > V2: https://lore.kernel.org/all/20240422090310.3311429-2-yangcong5@huaq=
in.corp-partner.google.com
> >
> > ---
> >  .../display/panel/boe,tv101wum-nl6.yaml       |  2 -
> >  .../bindings/display/panel/himax,hx83102.yaml | 73 +++++++++++++++++++
> >  2 files changed, 73 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/him=
ax,hx83102.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101w=
um-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-=
nl6.yaml
> > index 906ef62709b8..53fb35f5c9de 100644
> > --- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.=
yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.=
yaml
> > @@ -32,8 +32,6 @@ properties:
> >        - innolux,hj110iz-01a
> >          # STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
> >        - starry,2081101qfh032011-53g
> > -        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
> > -      - starry,himax83102-j02
> >          # STARRY ili9882t 10.51" WUXGA TFT LCD panel
> >        - starry,ili9882t
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83=
102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.ya=
ml
> > new file mode 100644
> > index 000000000000..2e0cd6998ba8
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yam=
l
>
> Filename matching a compatible please. What you've done here makes it
> seem like there's a fallback compatible missing, given this looks like
> the LCD panel controller and the starry compatible below is an LCD panel.

So change the filename to starry,himax83102-j02.yaml?

>
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/himax,hx83102.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Himax HX83102 MIPI-DSI LCD panel controller
> > +
> > +maintainers:
> > +  - Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
> > +      - starry,himax83102-j02
> > +
> > +  reg:
> > +    description: the virtual channel number of a DSI peripheral
> > +
> > +  enable-gpios:
> > +    description: a GPIO spec for the enable pin
> > +
> > +  pp1800-supply:
> > +    description: core voltage supply
> > +
> > +  avdd-supply:
> > +    description: phandle of the regulator that provides positive volta=
ge
> > +
> > +  avee-supply:
> > +    description: phandle of the regulator that provides negative volta=
ge
> > +
> > +  backlight:
> > +    description: phandle of the backlight device attached to the panel
>
> I'm not sure why this was given a description when port or rotation
> was not.

So change it to backlight: true ?

Thanks.

>
> Otherwise, this looks fine to me.
>
> Cheers,
> Conor.
>
> > +
> > +  port: true
> > +  rotation: true
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - enable-gpios
> > +  - pp1800-supply
> > +  - avdd-supply
> > +  - avee-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    dsi {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +        panel@0 {
> > +            compatible =3D "starry,himax83102-j02";
> > +            reg =3D <0>;
> > +            enable-gpios =3D <&pio 45 0>;
> > +            avdd-supply =3D <&ppvarn_lcd>;
> > +            avee-supply =3D <&ppvarp_lcd>;
> > +            pp1800-supply =3D <&pp1800_lcd>;
> > +            backlight =3D <&backlight_lcd0>;
> > +            port {
> > +                panel_in: endpoint {
> > +                    remote-endpoint =3D <&dsi_out>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
> > --
> > 2.25.1
> >

