Return-Path: <devicetree+bounces-145856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86289A32A29
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 16:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42485188ED23
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 15:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED3A253F0A;
	Wed, 12 Feb 2025 15:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="K4nxbrMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57092211295
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 15:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739374212; cv=none; b=qq13laWqd0Gb8bqpISsvglDAotDPqv+6ArF6KCoTa6KZ9vpzNp4XcKh1Y+o0avN2ulcF2DDlwQ1LiXRvBOnukCF8YARchqWtOrk71KBsQKucaWXpgrBkJYcKvDMdWpfGZaGrsx10h9G0y0m7PbuYtbicsqGDc3EtZLPlJ906l+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739374212; c=relaxed/simple;
	bh=7z/x3nrHx13b23QGvrVV/m59su6RSqWFgqr6BQDjpvY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rJg0KWT0pP06mel5vKZ/+OtAOfSjRS1sY8AiCAmzGPpvh6NZbeHQrL91f16l0PyZ1WTwSCkR9S8bLrMyj/Nnvqqq15jigMw/R5GS01jyTDM9Cgh5dV0kebIt7HbqlnTot1MA6j9+iuP29OfJx7WmkurbAbe3/l/6sBWHK+Go0J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=K4nxbrMf; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e5b271efc64so5911052276.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 07:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739374208; x=1739979008; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YTOTPGSXVq2qgpJeXCjqv2Ft7/R2pLQdaC/aHf11ROc=;
        b=K4nxbrMf/x/2VyDCbGOTwDvM+PPqW6ZQ3052ocq/JsEMLSoYgHZEZhgsS0tfVqvWY5
         QgeDduMkjrt5BRkGvk6DyU/kyf7atnDzTMSGoj5INJzcjjI1f+SF0PbJBBTYJNBiPY6e
         TmF+OZU00/I7Y/QESJbbtOmbFzC7tTf3q7om3+ATIs4XC158avXxnreal8PtsO8QHIG7
         +WoC/Db7KhUFQ+8Ivv/Cj9F0uphtrDE4QoCDGEwycp3IQZ6R4ARsN0y3uP1tMWNtxPdD
         37bP7Yb+2PcOp2Q1KoCD7hErYSLd20QuEDrEHJH/XaN35F2JJPublBWTGDcRkLZ86WsT
         yShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739374208; x=1739979008;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YTOTPGSXVq2qgpJeXCjqv2Ft7/R2pLQdaC/aHf11ROc=;
        b=FSSZrWOq5lKI9ylHKY/8sH2Jm28V6RUr1y+MGU6jqtjOc88XpSOncJ7Zn3Z+PIdD5b
         IIjgy2mOhXj4ndAiixo5CK7BsBaFUCP4fTRhw9xOuds3DmdeeOkliK0B4Za1MrW3N/Ee
         c29Buuo8o93gSp0JmV/WPgLg5QwYO8vqWD1nD5qPMmqMtgGaI45Zd0TojH2Ui8WjrSFZ
         jgO8kAfuGXT1SoZNe2GEgCvLQ7fDzAKzq97DSB0+7+nBjwIiv4yI5X4cYcKgKFlhIoKh
         Bdoj/WgHWqar2xsTkfGz8w3/nfmkvwBRYhLggUsOBb/BvSXvwj5QwMuUyiUYXUYMrY2j
         lKvA==
X-Forwarded-Encrypted: i=1; AJvYcCVFrJ2h8KwEB0+O++x2eZ2rhNhtNM8vogDrfLonEwvX7tLN83s/oBwvcINcemsmgNtgV1lAkVFmpyRI@vger.kernel.org
X-Gm-Message-State: AOJu0YzPGTYQes3vbjVwF6NhUObdYcpvNcjxo9IneWlnEGJPP5MiH9r7
	XHIuPn0TNRE1xauf9qG12lYE7z9fpfVLB82TIpyN4afq5ic1KfYdoXD+WF/8Ogrg2aL757RTlcu
	RI70wGOxesmlfIMaQ+0X8zvBQr28XNbi7CLriiA==
X-Gm-Gg: ASbGncs+pD2205s/c8WFaLNV2/xTUXU7A6jwq7abozRiPd2IKsyKxCX0Jt6vk06psPe
	Ct88zp8YcrIGg3xGauX7QSog+ynAxm6gUjO855d8Y6BZMPV/Ju4F06NcsyXDeseoxhk/Z5MTRmT
	9K7SJ+hJEkUpA9WvQv7wYzBR33dtSP
X-Google-Smtp-Source: AGHT+IFUb4n11X1/VcN5iFZGdf4HHxlpQCoy65XYiTGAuIoCG6TjlthfZgl+P4Z0rbVGRXLADkV617rUgazdBwsWIr4=
X-Received: by 2002:a05:6902:c0f:b0:e5b:3af0:d4b6 with SMTP id
 3f1490d57ef6-e5d9f177b0dmr3316437276.39.1739374208065; Wed, 12 Feb 2025
 07:30:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206-media-rpi-hevc-dec-v2-0-69353c8805b2@raspberrypi.com>
 <20250206-media-rpi-hevc-dec-v2-3-69353c8805b2@raspberrypi.com> <20250211222050.GA1285038-robh@kernel.org>
In-Reply-To: <20250211222050.GA1285038-robh@kernel.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 12 Feb 2025 15:29:50 +0000
X-Gm-Features: AWEUYZmslfR01LxrPJ1PLnJuhBuZI5WK77fvcWU4nKbcXM4bWkAo5JbzUXEm5FY
Message-ID: <CAPY8ntD3Frq5HzV06OrS1051QfjJFzvqs9H4mUkVnd4QKqiMhg@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] media: dt-bindings: media: Add binding for the
 Raspberry Pi HEVC decoder
To: Rob Herring <robh@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, John Cox <john.cox@raspberrypi.com>, 
	Dom Cobley <dom@raspberrypi.com>, review list <kernel-list@raspberrypi.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, John Cox <jc@kynesim.co.uk>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob

On Tue, 11 Feb 2025 at 22:20, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 06, 2025 at 06:02:36PM +0000, Dave Stevenson wrote:
> > Adds a binding for the HEVC decoder found on the BCM2711 / Raspberry Pi 4,
> > and BCM2712 / Raspberry Pi 5.
> >
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > ---
> >  .../bindings/media/raspberrypi,hevc-dec.yaml       | 67 ++++++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
> > new file mode 100644
> > index 000000000000..06db7004c765
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/raspberrypi,hevc-dec.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/raspberrypi,hevc-dec.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Raspberry Pi HEVC Decoder
> > +
> > +maintainers:
> > +  - John Cox <john.cox@raspberrypi.com>
> > +  - Dom Cobley <dom@raspberrypi.com>
> > +  - Dave Stevenson <dave.stevenson@raspberrypi.com>
> > +  - Raspberry Pi internal review list <kernel-list@raspberrypi.com>
> > +
> > +description:
> > +  The Raspberry Pi HEVC decoder is a hardware video decode accelerator block
> > +  found in the BCM2711 and BCM2712 processors used on Raspberry Pi 4 and 5
> > +  boards respectively.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - raspberrypi,hevc-dec
>
> SoC specific compatible please. If they are 'the same' then 2712 can
> fallback to 2711.

Can I just make sure I understand your request before I respin?
This is a Raspberry Pi IP block that has been added to the Broadcom
SoCs. It's the same situation as for PiSP Backend which is documented
in bindings/media/raspberrypi,pisbe.yaml

Based on that I'm interpreting your comment as wanting:

properties:
  compatible:
    items:
      - enum:
          - brcm,bcm2711-hevc-dec
          - brcm,bcm2712-hevc-dec
      - const: raspberrypi,hevc-dec

Is that right?

Thanks
  Dave

> > +
> > +  reg:
> > +    items:
> > +      - description: The HEVC main register region
> > +      - description: The Interrupt control register region
> > +
> > +  reg-names:
> > +    items:
> > +      - const: hevc
> > +      - const: intc
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: The HEVC block clock
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - interrupts
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    video-codec@7eb10000 {
> > +        compatible = "raspberrypi,hevc-dec";
> > +        reg = <0x7eb00000 0x10000>, /* HEVC */
> > +              <0x7eb10000 0x1000>;  /* INTC */
> > +        reg-names = "hevc",
> > +                    "intc";
> > +
> > +        interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +        clocks = <&clk 0>;
> > +    };
> > +
> > +...
> >
> > --
> > 2.34.1
> >

