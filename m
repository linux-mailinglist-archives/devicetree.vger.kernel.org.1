Return-Path: <devicetree+bounces-222371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D286BA8668
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 10:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49C1B3B8A00
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 08:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C49E2652B4;
	Mon, 29 Sep 2025 08:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UqXsaLr6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FC2221DB5
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 08:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759134655; cv=none; b=Ld5ikEKUPa54eocXo7KYq3WjeN2ZjhAwyDYnCsU30cP+vcDaAGY/0Nd52QmFED/nnNDZA8pd0gn0YSejR0J2YPefu6QjcNrDL+rlrbLSOJJ0vp/PyK8AufrZmkKAD3uZYkumpg0HdCs/a8y3mu6bhAiYMAZ7Q9xPwQxrPq1txVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759134655; c=relaxed/simple;
	bh=1yWrEi955nPPvBu1m9KwQaY5HyLcEXUxbZckZNeDmWE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kKcZCE2QH4dW0HVLqEdbmOGSCOD7w9H+B9sKIRGplOrqpc+y+8E2LHB67QIyOlIgN/eC91O8s5jcukmlArrMAxaKBdZu7pJSlWU3dBE8oRGDDqVlsP2KF43vUS50rL6H4l9fwe7YTW8EBUMluZc5c0wWWyJq3QsmQOCtk3+fP4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UqXsaLr6; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-367ce660b61so36204621fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 01:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759134651; x=1759739451; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UJONDUXJa/G+AY4kgKaGSYPSvsqZ+MAfDWA2lmXRRpc=;
        b=UqXsaLr6G0kA8qTEl5LElAaowjM5gIbTn4dqLbWh+5TacgZTfByxjOqpc52+3Q1XrK
         nTNEPfO8YTXr3U4Z5zWTgY9b6D3kXxMs7XLRmus2Lw/c4VlbjOEPqXlWdsjHhR26lDgO
         J6AdO4MVfDspb0x6lA/7++AujBCBuxjeHA53s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759134651; x=1759739451;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJONDUXJa/G+AY4kgKaGSYPSvsqZ+MAfDWA2lmXRRpc=;
        b=U5wNZjTv9kyKFZC2goKte0YfOYB5YbyGPQ4m0twlYySyzAap5/7IaNWA3VY1R6cCVn
         EYNsAinZ93wswBfjQb/q6XlwgEe65dOwLo7n+/FoyB6+WNFvwcy4nItG/lOw07EKIejA
         ltCrqt+EXWrAbX1R2lK5LL136DttC33cZxoDNnu0yXFp9mpExYjyWBGIuuB7LPoQi1ZG
         iPpB4Ox4igy5eTRoX9+SZxobfyPzpVLbeSMS+uGvrKhGPSbqQERzb2BklNHb9nDpj6CU
         BiXvhy6ZuMVd6TM62uZgPGOv9lbm3sj2HW6PNHVbkGK4waHBCtJeTG3E68tEF/DE9FrR
         JEGw==
X-Forwarded-Encrypted: i=1; AJvYcCU85SnoWTX5wsdJUuHObVCSUJU7ockcfQY7ABS2aDUdhoaNZf2zZX5T4G5BGOwFNrDBVPZo9sHWDQFJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxaUVkSJIcwj/d/rZt4PiSdQ47+jBzsxjaaH/uG5XaMf/GFVkQa
	OoXtY47fg0sQHGv3NPoJHy88gXKc1KZw6qcTrdAxKgP1OFbKAPQmIYirC4Ga6erpc8e5If3rzDH
	9Ztc=
X-Gm-Gg: ASbGncsGqRJVeFOqDPiIRrKMDtcNCB4PYJ8W/UiQWyRcwcmJ5g9r/I0StHonBJdpaUo
	QpRksRukPBgMsSjTFtJ7X69AZLnBg/A2jVCgouupThpbFdBu7HhitW0vDS4WTnnyov9FV6gDKnd
	/tFTrPOVKUi3Zupi8N3qNbOmGcdveDJVkAbQi3cY4nj3TkL3BSL5TzpC/WZX38YiW/uB4E+AsKS
	E1+xXeuHUPiplcDUqDUqKEzkkvvHHiXeea9scSIzkyTRXX8HFAIcWeyDm0yuQHDoZJSzOMVryx/
	OMU3ZIrcwifwUedD9hs7g3xni/ttSatL5CU7e9fN1rrCJlN1uHxUTLfyhk1QnbTEWnTCSb31PaK
	+b3Y9J4sqo/3RiYh7cTWELgKDeuPpgqwV4xv61/S7MjV25T1vOKLU02Nw3CD3
X-Google-Smtp-Source: AGHT+IHrkPs5+ysDkkUGow7KJyAR7JOgam9Wk5U5oYOo0ER8Mv9r2kC3+QoJtTjrXMzFZ0+xZHHJNQ==
X-Received: by 2002:a05:651c:516:b0:365:6b40:8687 with SMTP id 38308e7fff4ca-36f7f248f9emr47568121fa.22.1759134651082;
        Mon, 29 Sep 2025 01:30:51 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-372a23f89c2sm1319421fa.4.2025.09.29.01.30.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 01:30:48 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57b35e176dbso5484621e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 01:30:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVL+wD0JHmDEk3Y8mVWQp6BXbhmOG8MzCA2qTVdKied9+UbY9YwgIeE/zwrpAbknivc6i/MGWywxfxC@vger.kernel.org
X-Received: by 2002:a05:6512:1102:b0:57c:2474:3740 with SMTP id
 2adb3069b0e04-582d3f76e30mr4820322e87.46.1759134647732; Mon, 29 Sep 2025
 01:30:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
 <20250926-uvc-orientation-v3-7-6dc2fa5b4220@chromium.org> <20250926-mute-boil-e75839753526@spud>
In-Reply-To: <20250926-mute-boil-e75839753526@spud>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 29 Sep 2025 10:30:35 +0200
X-Gmail-Original-Message-ID: <CANiDSCuddqjeDr80xKsZZP7CXu9qB5qqYPoZujNYLcVjK0kKkg@mail.gmail.com>
X-Gm-Features: AS18NWDuABHOrlsFlY-rDCN1sMikoapkz5ecsd4Y1lKthbQuEsgF6GxQRq0htYQ
Message-ID: <CANiDSCuddqjeDr80xKsZZP7CXu9qB5qqYPoZujNYLcVjK0kKkg@mail.gmail.com>
Subject: Re: [PATCH v3 07/12] dt-bindings: media: Add usb-camera-module
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Hans de Goede <hansg@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
	Robert Moore <robert.moore@intel.com>, Hans Verkuil <hverkuil@kernel.org>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
	acpica-devel@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Conor

On Fri, 26 Sept 2025 at 18:55, Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Sep 26, 2025 at 01:11:31PM +0000, Ricardo Ribalda wrote:
> > For fixed cameras modules the OS needs to know where they are mounted.
> > This information is used to determine if images need to be rotated or
> > not.
> >
> > ACPI has a property for this purpose, which is parsed by
> > acpi_get_physical_device_location():
> > https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device
> >
> > In DT we have similar properties for video-interface-devices called
> > orientation and rotation:
> > Documentation/devicetree/bindings/media/video-interface-devices.yaml
> >
> > Add a new schema that combines usb/usb-device.yaml and
> > media/video-interface-devices.yaml
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  .../bindings/media/usb-camera-module.yaml          | 46 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  1 +
> >  2 files changed, 47 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/usb-camera-module.yaml b/Documentation/devicetree/bindings/media/usb-camera-module.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..e4ad6f557b9151751522e49b72ae6584deb0c7ba
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/usb-camera-module.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/usb-camera-module.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: USB Camera Module
> > +
> > +maintainers:
> > +  - Ricardo Ribalda <ribalda@chromium.org>
> > +
> > +description: |
> > +  This schema allows for annotating auxiliary information for fixed camera
> > +  modules. This information enables the system to determine if incoming frames
> > +  require rotation, mirroring, or other transformations. It also describes the
> > +  module's relationship with other hardware elements, such as flash LEDs or
> > +  Voice Coil Motors (VCMs).
> > +
> > +allOf:
> > +  - $ref: /schemas/usb/usb-device.yaml#
> > +  - $ref: /schemas/media/video-interface-devices.yaml#
> > +
> > +properties:
> > +  reg:
> > +    maxItems: 1
> > +
>
> What actually causes this schema to be applied? Did I miss it getting
> included somewhere?

I guess your question is why I have not defined the compatible field?

I tried this change[1] with no luck:
/usr/local/google/home/ribalda/work/linux/Documentation/devicetree/bindings/media/uvc-camera.example.dtb:
device@1 (uvc-camera): compatible: ['uvc-camera'] does not contain
items matching the given schema

I think it failed, because If we add these allOfs as Rob proposed
https://lore.kernel.org/all/20250625185608.GA2010256-robh@kernel.org/:
```
allOf:
  - $ref: /schemas/usb/usb-device.yaml#
  - $ref: /schemas/media/video-interface-devices.yaml#
```
We cannot (or I do not know how to) have a different compatible than
the one from usb-device.yaml


Any suggestion on how to do this properly will be highly appreciated :)

Thanks!



[1]

@@ -21,10 +21,14 @@ allOf:
   - $ref: /schemas/media/video-interface-devices.yaml#

 properties:
+  compatible:
+    const: uvc-camera
+
   reg:
     maxItems: 1

 required:
+  - compatible
   - reg

 additionalProperties: true
@@ -38,8 +42,8 @@ examples:
         #size-cells = <0>;

         device@1 {
-            compatible = "usb123,4567";
+           compatible = "uvc-camera";
             reg = <2>;
             orientation = <0>;
             rotation = <90>;
         };

>
> > +required:
> > +  - reg
> > +
> > +additionalProperties: true
> > +
> > +examples:
> > +  - |
> > +    usb@11270000 {
> > +        reg = <0x11270000 0x1000>;
> > +        interrupts = <0x0 0x4e 0x0>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        device@1 {
> > +            compatible = "usb123,4567";
> > +            reg = <2>;
> > +            orientation = <0>;
> > +            rotation = <90>;
> > +        };
> > +    };
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index ee8cb2db483f6a5e96b62b6f2edd05b1427b69f5..1503502a3aed2625e8ff488456ccd7305cc74ba7 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -26258,6 +26258,7 @@ L:    linux-media@vger.kernel.org
> >  S:   Maintained
> >  W:   http://www.ideasonboard.org/uvc/
> >  T:   git git://linuxtv.org/media.git
> > +F:   Documentation/devicetree/bindings/media/usb-camera-module.yaml
> >  F:   Documentation/userspace-api/media/drivers/uvcvideo.rst
> >  F:   Documentation/userspace-api/media/v4l/metafmt-uvc-msxu-1-5.rst
> >  F:   Documentation/userspace-api/media/v4l/metafmt-uvc.rst
> >
> > --
> > 2.51.0.536.g15c5d4f767-goog
> >



--
Ricardo Ribalda

