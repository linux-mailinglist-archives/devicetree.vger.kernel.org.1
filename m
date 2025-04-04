Return-Path: <devicetree+bounces-163310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7F0A7C4ED
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 22:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B84FB3AFD5C
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 20:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975EC21D3E2;
	Fri,  4 Apr 2025 20:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iduL/geD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A642F189905
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 20:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743798690; cv=none; b=KAm8jGrDhIRxYkppC/ctAFTfyrnsFZ4Beb15QsogWynpUV4mp7Td4MtR4K48ZbCjyVMet92NLOkugvkUyVmmGkS0wEOC7s8T+rYcW3azaET1uEVoQXnvXQ2EF1erIPcB2ozIpqXMchXw31CUjfdVlnJrhRzX+DIhXq3Zqp5BuP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743798690; c=relaxed/simple;
	bh=K+GdwcY2qpId+FVrrOCPmblpwWNGwzjXOxhMwE/cWk0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XS3+9DW654ipMxupg+9j1lEzIsunWPkcBy/cjexm3K3y6X0mLnQeYEDK64PcIRbK7a3DOf4Y3mJTPsHAQoy0bQjFA7n3e9rXow0jMdObC734eUih+4fpk/r+jyneqHURiOQYImpBeLZ06uBFGcw9F0hVwsZW14h7jaQJc1nr4DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iduL/geD; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5497590ffbbso2537132e87.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 13:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743798686; x=1744403486; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IJt1e+3GaxJCHQhJ/qyD9KJwcLWIhx1/tmMP/uk1paM=;
        b=iduL/geDtNhnNwIb7WEcM4W7vQ0wLp0am2vOCzUMojdjzrk1dc2FIlGXjGVNOdjxDz
         ZQrSliwsMk8lK3ocdqJCMtyUpilI/f0IY4sKx1ebiqumQmn2OjYImjaScTZDcOFiZ5Lr
         qaLaQ+iTEcrRCc0DlROEmIE8Q2clcq+NgxjG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743798686; x=1744403486;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IJt1e+3GaxJCHQhJ/qyD9KJwcLWIhx1/tmMP/uk1paM=;
        b=COk+VbdLxmPDE0RX6uhV0QHkQtKViW0rM+WsHVBgdFcpGH8J2pHkmfR9dJcLNHEjaf
         +nGqtRUC9xm8rEOBBla+belx4QzvLOhwUfAocx9xgSWh9kGnSppHrKw32lKNQm7LK75W
         OdH2p37khtYVTJWmI0wmn/Z9Mkm/wVOuBagPPJZDrWu8WJomDRVKR68klIpGJpfYk+P8
         nYHcTn/zVyHjSuOy0X4BktKPJdyVfak2SUJLtfbMDDJOQqHnayel5fwTR3hja5YIRt2E
         atGVcyLtMmJC0xLcWgwnmM+wFeeXh57T/6ZS8Ot7TtiMSpcVj6Qffs8Lvyis9PJcbTZD
         PALA==
X-Forwarded-Encrypted: i=1; AJvYcCV4ztjr9P8g/PaBBH326/8U0dlf4dYCx19IdSFQkAhH0VedcWOpVjkN2nPsIDIIpjL8C+WClhkVjC9r@vger.kernel.org
X-Gm-Message-State: AOJu0YzJNQ3YToZXha0WGe6ZnSPus/Ml6kHBmzmGm/YTZ9G44PPvE4T6
	Yy9HFb2GsisaMglqD5cfI0YyOL1yYK2Ufu/1S1pw/h76ctqvjgStDtARqVZIb1KehlXucS9QCwo
	=
X-Gm-Gg: ASbGncs5Vl7u2VIcMmCt2LZshh+IXqTRqa4EGkx2P2f06UrJ/TJemZzq2ALh9gdYICE
	9exhAxQroUnSN1i7InXIuFhuKWynyC/R/xor2X5nV1TSgeFMDIkJ06EMK/q8q3kfUhuRq2RuFo4
	L0na37cgJVHdayR3BZFWc0uVGvEmEILcYJsGKB81SNas7OITNfL/sDy1g3GIyoQSqHLPXPkWxpq
	KZYdOXs33VvsShpBJjVIojLz6DNZm82isqV8FO8LRYAgN5ULT0xaagKrQIJQarmHc1zYprdy8jf
	EyCCF/BWF8n0ucX4IiQNixkOfaFkdbLcixIbDLL092T0wCPg8juqQRBNZTvFgqj8nTFm3IB0i9q
	5QoyyBzZBy6MmySFzcXm4PQ==
X-Google-Smtp-Source: AGHT+IGxgC85S8CglkIrKysi6gAUpecoadOWXo2t7F4Xk+mSOcvcFpr6Ma6SvZQDfimzhhMNIU9SZw==
X-Received: by 2002:a05:6512:114f:b0:54c:a49:d3f4 with SMTP id 2adb3069b0e04-54c230c6598mr1428550e87.0.1743798686495;
        Fri, 04 Apr 2025 13:31:26 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e5c1ca9sm518490e87.76.2025.04.04.13.31.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 13:31:26 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30c44a87b9cso19472691fa.3
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 13:31:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVmu9YCd5hIn/bY2S0J/Rtmi9llRDzcdzZ7Cg/j6PwWA1Uinp9OXtCEmmiZ0pvg5mZe01QHj7vDpmmk@vger.kernel.org
X-Received: by 2002:a05:651c:1581:b0:30d:7c12:5725 with SMTP id
 38308e7fff4ca-30f0c064658mr16422321fa.33.1743798685456; Fri, 04 Apr 2025
 13:31:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
 <20250403-uvc-orientation-v1-5-1a0cc595a62d@chromium.org> <20250404193655.GA158858-robh@kernel.org>
In-Reply-To: <20250404193655.GA158858-robh@kernel.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 4 Apr 2025 22:31:11 +0200
X-Gmail-Original-Message-ID: <CANiDSCuD=vR7xT41sdyHU4Sci+q27_5cEYUsAOT3jmHBMOfixA@mail.gmail.com>
X-Gm-Features: ATxdqUGWjyuS5jbxrI5_afZO8VPXlqKA2MK8tNbiaf5xCWtDa_Llt0RuBZ7yskM
Message-ID: <CANiDSCuD=vR7xT41sdyHU4Sci+q27_5cEYUsAOT3jmHBMOfixA@mail.gmail.com>
Subject: Re: [PATCH 5/8] dt-bindings: usb: usb-device: Add orientation
To: Rob Herring <robh@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hdegoede@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob

On Fri, 4 Apr 2025 at 21:36, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Apr 03, 2025 at 07:16:16PM +0000, Ricardo Ribalda wrote:
> > For some devices, such as cameras, the OS needs to know where they are
> > mounted.
>
> Do you have a usecase that's not a camera?

I personally do not have other use cases, but I suspect that it could
be useful for more people.

The original proposal was more generic and "inspired" in _PLD:
https://lore.kernel.org/linux-devicetree/20241212-usb-orientation-v1-1-0b69adf05f37@chromium.org/

You suggested using the camera's orientation.


>
> >
> > ACPI has a property for this purpose, which is parsed by
> > acpi_get_physical_device_location():
> > https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device
> >
> > In DT we have similar property for video-interface-devices called
> > orientation:
> > Documentation/devicetree/bindings/media/video-interface-devices.yaml
> >
> > Add a new property orientation for usb-devices that matches the already
> > existing orientation property of video-interface-devices.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/usb/usb-device.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > index da890ee60ce6e71a11910c565b6f805470782e4f..bbcda28ec7d5695307efa797f57180044afda77f 100644
> > --- a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > +++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
>
> This is a binding for *all* USB devices. This property should only be
> added for devices where it makes sense.

Can you provide some examples of how I can do this?


>
> > @@ -42,6 +42,10 @@ properties:
> >        port to which this device is attached. The range is 1-255.
> >      maxItems: 1
> >
> > +  orientation:
> > +    description: If present, specifies the orientation of the usb device.
> > +    $ref: /schemas/media/video-interface-devices.yaml#/properties/orientation
>
> Reference the schema from the top level and drop
> '/properties/orientation'.
>
> What about 'rotation'? Seems like you'd want that too.

At this moment I do not have a usecase for that. But sure, once I need
it I will add it the same way.

In the last thread I proposed Sakari to use:

+      image-sensor:
+        description: Video interface properties associated to USB cameras,
+          typically UVC compliant.
+        allOf:
+          - $ref: /schemas/media/video-interface-devices.yaml#
+

But he preferred to add orientation instead. Either ways work for me.


>
> > +
> >    "#address-cells":
> >      description: should be 1 for hub nodes with device nodes,
> >        should be 2 for device nodes with interface nodes.
> > @@ -101,6 +105,7 @@ examples:
> >          device@2 {
> >              compatible = "usb123,4567";
> >              reg = <2>;
> > +            orientation = <0>;
> >          };
> >
> >          device@3 {
> >
> > --
> > 2.49.0.504.g3bcea36a83-goog
> >



-- 
Ricardo Ribalda

