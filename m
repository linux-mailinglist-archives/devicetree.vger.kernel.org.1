Return-Path: <devicetree+bounces-131925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8795E9F4F67
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 16:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5003616DFBE
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 15:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2625F1F7570;
	Tue, 17 Dec 2024 15:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LCLO55ZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974B01482E7
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 15:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734449087; cv=none; b=YrnDaB9PhQiWEI/TooturmH7f12ezv7YHFoOYDnaRyMECMwoblHW7xca2T+aYiji6knNvJ5MI8cNRi9OcXJHYHeOZn+0BqZYdxR/jHxFM9VW1Ft9xaKfChTPT534vROJcjzBAd47gOgBEztEgskZnQKLhgsBp6LYG4vh19P4ceA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734449087; c=relaxed/simple;
	bh=tJcj122iz7Jx3wrPNt7YdMvOP8Z5lwK8MmU44L9IfCc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pKwQ08U3Qp+BvqjdrWn1yIkS/goNdiggrLwwqLoEGMb5zx1DgBs6GVejEytYRr7XLNKo2CKm0Xw/POonmZSnqNOU8f8m5wIgURTUjD6e9aHrOjXC226gD/OpO8cASth5oqI2o4x6ZS/4uLsdNV1tsNXfFjvlWGIERtFHrEs8r+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LCLO55ZH; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-725d9f57d90so4023023b3a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 07:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734449085; x=1735053885; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0H8dpphBiU338zp26XHA6XldVzXKyZfnCcMSHEK5Qec=;
        b=LCLO55ZHfWuAu4KWEmVwd0EXWLSLGI68McWkWOQ4i6wuSmU6abDxrQb5Na+yt6+k+K
         9/ZnaNtOfcU91ce6hWM5h7t78neZuj5XuGlFOi2muIjZOJxwbIQqHDjpAxhWkCWVSQ4w
         /serlUYi+RASy6qbHncExVjjgRUf7koHFil9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734449085; x=1735053885;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0H8dpphBiU338zp26XHA6XldVzXKyZfnCcMSHEK5Qec=;
        b=N+RENNxmGbg5goUnk/GwgPh2Wjlj2GBa/wtdkvcu+C/Dxmdt2cByPItkQ+HbqReFTj
         08sPK4xGpCol6bYbfbsOPzncmZWKC7Hj8x55FfURXeTINQRIGbweSaryiTYV8YlyHXZH
         YjvNQ6XBnxVXrQAtNf5aqj1vh1ygtnA8VN+ZmB0fkYuOWaHYYxwWYA4xVL/IpRhCHYe2
         p3RR8Vh22PoLRUmCQi/PQZ1O8Ky1GL3oZOBrLmn+3EkMxAC/JnOeRzbZL36ME047J35p
         00+jhdwXFNU1y2s64tp2LML0HEXtvaG7+rEJgQUxoTS89WKRXlwvjt9jWVGd+uzpMMUZ
         f/Fw==
X-Forwarded-Encrypted: i=1; AJvYcCWdQnO0JajB8ySeXUfbunxepGEvifoPvfbIvtmz7bssIHL8HG3tI0zH2siwtdJLZmEM+O12A/V48IDq@vger.kernel.org
X-Gm-Message-State: AOJu0YwDjJnACNvKFRT00wwlNmo9XQbUjsvc7WnQ2Y6XL+dVDRGYozJC
	1wAFc5YKhSc4wf2Jp9wUFmGt/2q1fAQ7gA5Y3230XaYtE0WrTvSTezpTmB0uCzxysxsZbGylrEI
	=
X-Gm-Gg: ASbGncvhWv9xE1PQbSXP7rS+Z+bJJQJyhUVPMIEeShcTFX8euImF/ozOHFehd1g9iNw
	wYGOmeAZfhCdjM3mFSp3xKMPpiGNmN6wJgGLVB7aUnlTFEI3HRmbM/31X9zE1WHwx/K8RqkitTr
	2MKhu0rCjmr+ObQeRztGf3CtUPAcEr8Fz7/9OTLYsq3Mm7AQgpHq4JIDAPf9O6xO6nCXm5wdmWd
	Sm7GYN8Lde/W9rujLFk4J/t+PJfJqbY2zH1PO+xFJh2WNeKv6D2N69/grPk6ZIozpV2TUv74nj8
	WqrtklQn9luaePatBF62rfw=
X-Google-Smtp-Source: AGHT+IGZPWvgyGUqJBglIIVPzj++ibdZyQYaQX7+8ieIbRhamuL6wE+FeWQfBjH/F3vttP3B5NfO9w==
X-Received: by 2002:a05:6a00:188c:b0:727:d55e:4bee with SMTP id d2e1a72fcca58-7290c0e0a3emr23217547b3a.1.1734449084741;
        Tue, 17 Dec 2024 07:24:44 -0800 (PST)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com. [209.85.215.172])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918b7896bsm7007947b3a.102.2024.12.17.07.24.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 07:24:40 -0800 (PST)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-801986033f9so2780609a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 07:24:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVPwZYU1rfzQuvCjduGhlN67Lp3fJPns/VN6txXvvsT2uXjRQCRgIFV4/OlvjLcg1KnteVhzteQGFji@vger.kernel.org
X-Received: by 2002:a17:90b:3d4e:b0:2ef:67c2:4030 with SMTP id
 98e67ed59e1d1-2f28ffa7efamr22923781a91.27.1734449079297; Tue, 17 Dec 2024
 07:24:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-usb-orientation-v1-1-0b69adf05f37@chromium.org> <20241217145612.GA1652259-robh@kernel.org>
In-Reply-To: <20241217145612.GA1652259-robh@kernel.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 17 Dec 2024 16:24:27 +0100
X-Gmail-Original-Message-ID: <CANiDSCu_mFQQVkDb_gSyXeb1_Tu+DxSeHYvGsGp6XVDuOdPyjQ@mail.gmail.com>
X-Gm-Features: AbW1kvbl1RIFIvxrMQUN76wEj-BZmkCHKRl0SbByJH78c9Yqx7sfn6vg0uVQdIU
Message-ID: <CANiDSCu_mFQQVkDb_gSyXeb1_Tu+DxSeHYvGsGp6XVDuOdPyjQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: usb-device: Add panel-location
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob

On Tue, 17 Dec 2024 at 16:02, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Dec 12, 2024 at 09:44:37PM +0000, Ricardo Ribalda wrote:
> > For some devices like cameras the system needs to know where they are
> > mounted.
>
> Why do you need this and why only this property and not the dozens
> others ACPI has?

Userspace needs that information to correctly show it in the UI. Eg;

- User facing camera needs to be mirrored during preview.
- The user facing camera is selected by default during videoconferences
- The world facing camera is selected by default when taking a photo
- User facing camera have different parameter defaults than world facing.

Right now, the only camera driver that expose the ACPI location
information is the IPU from intel
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/media/pci/intel/ipu-bridge.c#n258

And they are only using the panel.

If we need more information we can consider adding more parameters in
the future.


>
> >
> > ACPI has a property for this purpose, which is parsed by
> > acpi_get_physical_device_location():
> > https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device
> >
> > In DT we have similar property for video-interface-devices called
> > orientation, but it is limited to the requirements of video devices:
> > Documentation/devicetree/bindings/media/video-interface-devices.yaml
> >
> > Add a new property for usb-devices that matches the behavior of
> > ACPI's _PLD.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/usb/usb-device.yaml | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > index da890ee60ce6..1ce79c1c3b31 100644
> > --- a/Documentation/devicetree/bindings/usb/usb-device.yaml
> > +++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
> > @@ -42,6 +42,20 @@ properties:
> >        port to which this device is attached. The range is 1-255.
> >      maxItems: 1
> >
> > +  panel-location:
> > +    description: Describes which panel surface of the system's housing the USB
> > +      device resides on. It has the same meaning as the `ACPI`'s `_PLD` Panel
> > +      object.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum:
> > +      - 0 # Top.
> > +      - 1 # Bottom.
> > +      - 2 # Left.
> > +      - 3 # Right.
> > +      - 4 # Front (aka as User Facing).
> > +      - 5 # Back (aka as World Facing).
> > +      - 6 # Unknown.
> > +
> >    "#address-cells":
> >      description: should be 1 for hub nodes with device nodes,
> >        should be 2 for device nodes with interface nodes.
> >
> > ---
> > base-commit: eefa7a9c069908412f8f5d15833901d1b46ae1b2
> > change-id: 20241212-usb-orientation-8e3717ebb02a
> >
> > Best regards,
> > --
> > Ricardo Ribalda <ribalda@chromium.org>
> >



-- 
Ricardo Ribalda

