Return-Path: <devicetree+bounces-219344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73838B8A3C5
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30B293A32F4
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376073164D0;
	Fri, 19 Sep 2025 15:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LGaPJcP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2DF30F80C
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758295163; cv=none; b=f0CMuFzTDOSXG2qvcrALLbdIqENHyaNCTjC3I0amOgU6Su0tpnVptOm36XEmqdXBhQq+Tp3iUKxf7xtemJ5NugBqZnpH/1eykbIIAAmJO10BmhuRcDtX5aVTKPI+Ca/zM9AccJTecdYvhjiX6wP2qPfGm1bm+ZvJCbOTEF9Opxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758295163; c=relaxed/simple;
	bh=88M6rHSLlPFVyAjo4HogX57EduLLErY+swc4NMImAKI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gzAq2eNJHWBWSFotH2jaK5j3IxBOW1Ai6Wxo3CD+Y3O63AS2w9FIg4yIEhjiTFdqtOqBzrzYbbh6pImNgfnAlxEtpQJFOGqhuZamw74Noi2glit2ml1s2emNv34pmQnONwfoZroDtF6bGQLa2Agc1t244gCGKh3QTgQm8r4ucIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LGaPJcP5; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so20460595e9.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758295160; x=1758899960; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmIZQg/p+wsk73O/7IQ/2J8qTtcW5vWlRDzFnnbt5FE=;
        b=LGaPJcP51bo29jFvjZU+mJwwyz8cd3z8yWJbPZqwoYC1soFQPkFftfy36lKeqFN6oY
         ISzu+7uNDVxKeM/T414olbEsUUpbXV+H3J//JUHR9qMB2Vg1eNJzqcvVZLYeoQnwfGIc
         c/JzvdSI0OfNEqcMX4EqLRR+AoUgOajgPN5p9LFu4TvCab9ldByvB1ANyv15rqQIcVIY
         tA+fbB0TOZILH3ISg8yMLuQn/1w2ZWQN1fGeX9hgSI/pxQnmcQtWTqjvhl22ORmkxKAs
         WUNxNLVWVz7S5eJJfEZ/aQNbp/VC4lsc6sLVEdrbIQL9ghhiMqLO+BD7kMkFMlJ8fD8F
         +ipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758295160; x=1758899960;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmIZQg/p+wsk73O/7IQ/2J8qTtcW5vWlRDzFnnbt5FE=;
        b=XJqshX0EhZUBvU8eb+KO236D33UUek0ugaV+hc+9troGb4slVC/8SFObYXjF6sR75v
         VlZaYvrLj937bOH8+wI9vyH8ZrXyrIPQ1FryNV6lStopNM0Gt7vkKbugHJgOZ0MWSYHn
         pfXvlIHG3PkBk/U33q6wtfxvLV9QO7hNWVum0Bepd/4i8LOuB5c4USeBUCIvIr0+Ty93
         IPvS7xTeLlZVzvJ9ajM2creoqcJXbVoCBdx5y4++rQXxa+A+3nPrK2b74N3Wfdg3oY5I
         S3alHO3+CDjiIoX27xsDhtQynzlYpuSyd7fz2nVH/S91oz/taAJPLsgGbIyy9bgOJCPc
         4U+A==
X-Forwarded-Encrypted: i=1; AJvYcCX/JS+/x+lwH7eunBXEzUCQpgJ+s6A4xbjJxYw8KLIwzYFOVKYriF/zASJtEsRPTfUZLcMbeiFM6v/w@vger.kernel.org
X-Gm-Message-State: AOJu0YxhmYGeoaFST28qDFNGr18JSUnOLPSVrb/sII3srGxhwWLUYNbX
	t5SmQ2fDbm+B/wdugDPG7HO6QXzkplEqQ9Z6uANnbFgLQmTsOcxm0ZZUBWhA0YUscNeYVyjnAA8
	gxPAFqkjzQ83B6cl12bwIWicoLGb6Jjs=
X-Gm-Gg: ASbGnctJWoNw2GQSrgYAnaA5u/MZZwYbJIDGpNmaVZ2YaNlL+KJF8YXt3LGkiRnv+YV
	iG4cMgMaRE7AszMqFDAlkDonoWalTHaryUJePraYAXFA7r8iJCFniEiES6Rv3F+XYN8ni6jIYBL
	OTb5QF1TFfcpTUPgZ8OpSiH/u16wP87DJ8FR96qHw8omBERrVoC9J+UirhGd4fdumSnFKeUAQQ5
	gY19S3k
X-Google-Smtp-Source: AGHT+IEgDPEnhQPRnnEH3yzuZMEraGTWgDOPI/yCagFTF5k+zG5oUinI/JMOdDHldD4AWPJfCuYA6PY7j0z7U7Vj7PU=
X-Received: by 2002:a05:600c:8b4c:b0:45f:29eb:2148 with SMTP id
 5b1f17b1804b1-467a7f111camr42527475e9.7.1758295159374; Fri, 19 Sep 2025
 08:19:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250912064253.26346-1-clamor95@gmail.com> <20250912064253.26346-2-clamor95@gmail.com>
 <bdd942ef-1ede-4f9f-ab90-ea7ac8995b92@linaro.org> <CAPVz0n1Ac=opNj=qAM5Rp0fpDo-6khCdmhoCwkztGLosKV31tw@mail.gmail.com>
In-Reply-To: <CAPVz0n1Ac=opNj=qAM5Rp0fpDo-6khCdmhoCwkztGLosKV31tw@mail.gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 19 Sep 2025 18:19:07 +0300
X-Gm-Features: AS18NWBYrUfprQab9kLOINFBMV1nhqiBixHyzPLKGA0f4GLaKH_9AlhIHvotelk
Message-ID: <CAPVz0n26P7Bb6MvaJ2S1-HN-0Oya2Z6SMCUXYjxxctFowuq-eg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: document Sharp
 LQ079L1SX01 panel
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D1=82, 19 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 17:45 Svya=
toslav Ryhel <clamor95@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> =D0=BF=D1=82, 19 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 17:36 Ne=
il Armstrong <neil.armstrong@linaro.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >
> > Hi,
> >
> > On 12/09/2025 08:42, Svyatoslav Ryhel wrote:
> > > Document Sharp LQ079L1SX01 panel found in Xiaomi Mi Pad.
> >
> > The patch doesn't apply on drm-misc-next, please rebase.
> >

Ok, I see where conflict is, I will send rebased version within an hour.

>
> Sure, but I have synced with drm-misc-next right now and it applied clean=
ly.
>
> I am on top of 048deed5faf0 (drm/drm-misc-next) drm/panel: Add support
> for KD116N3730A12
>
> Top commit is correct on my side?
>
> > Neil
> >
> > >
> > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > ---
> > >   .../display/panel/sharp,lq079l1sx01.yaml      | 99 ++++++++++++++++=
+++
> > >   1 file changed, 99 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/display/panel/=
sharp,lq079l1sx01.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/sharp,lq=
079l1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,lq07=
9l1sx01.yaml
> > > new file mode 100644
> > > index 000000000000..08a35ebbbb3c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx=
01.yaml
> > > @@ -0,0 +1,99 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/panel/sharp,lq079l1sx01.y=
aml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Sharp Microelectronics 7.9" WQXGA TFT LCD panel
> > > +
> > > +maintainers:
> > > +  - Svyatoslav Ryhel <clamor95@gmail.com>
> > > +
> > > +description: >
> > > +  This panel requires a dual-channel DSI host to operate and it supp=
orts
> > > +  only left-right split mode, where each channel drives the left or =
right
> > > +  half of the screen and only video mode.
> > > +
> > > +  Each of the DSI channels controls a separate DSI peripheral.
> > > +  The peripheral driven by the first link (DSI-LINK1), left one, is
> > > +  considered the primary peripheral and controls the device.
> > > +
> > > +allOf:
> > > +  - $ref: panel-common-dual.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: sharp,lq079l1sx01
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  avdd-supply:
> > > +    description: regulator that supplies the analog voltage
> > > +
> > > +  vddio-supply:
> > > +    description: regulator that supplies the I/O voltage
> > > +
> > > +  vsp-supply:
> > > +    description: positive boost supply regulator
> > > +
> > > +  vsn-supply:
> > > +    description: negative boost supply regulator
> > > +
> > > +  reset-gpios:
> > > +    maxItems: 1
> > > +
> > > +  backlight: true
> > > +  ports: true
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - avdd-supply
> > > +  - vddio-supply
> > > +  - ports
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    dsi {
> > > +        #address-cells =3D <1>;
> > > +        #size-cells =3D <0>;
> > > +
> > > +        panel@0 {
> > > +            compatible =3D "sharp,lq079l1sx01";
> > > +            reg =3D <0>;
> > > +
> > > +            reset-gpios =3D <&gpio 59 GPIO_ACTIVE_LOW>;
> > > +
> > > +            avdd-supply =3D <&avdd_lcd>;
> > > +            vddio-supply =3D <&vdd_lcd_io>;
> > > +            vsp-supply =3D <&vsp_5v5_lcd>;
> > > +            vsn-supply =3D <&vsn_5v5_lcd>;
> > > +
> > > +            backlight =3D <&backlight>;
> > > +
> > > +            ports {
> > > +                #address-cells =3D <1>;
> > > +                #size-cells =3D <0>;
> > > +
> > > +                port@0 {
> > > +                    reg =3D <0>;
> > > +                    panel_in0: endpoint {
> > > +                        remote-endpoint =3D <&dsi0_out>;
> > > +                    };
> > > +                };
> > > +
> > > +                port@1 {
> > > +                    reg =3D <1>;
> > > +                    panel_in1: endpoint {
> > > +                        remote-endpoint =3D <&dsi1_out>;
> > > +                    };
> > > +                };
> > > +            };
> > > +        };
> > > +    };
> > > +...
> >

