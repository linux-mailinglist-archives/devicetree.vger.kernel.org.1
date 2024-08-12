Return-Path: <devicetree+bounces-93016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2B394F455
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 18:29:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF3681C20C70
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 16:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12CC187321;
	Mon, 12 Aug 2024 16:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="kauK30pm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFAF134AC
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 16:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723480146; cv=none; b=ijb3LZFNbmX9laZHiwHsTo7//5FDnBTjVnGdCs+V+KQZHsLtmn6+YdPWKs9dlqzIHICheerde0d88VxVioLcjHvvTbKPxDf/HVuK3XT+zO5NXsWNIifbBiSJUFNDVjQvTJCN3BwRpGX20dxdE5o/p/4tK+T1Uq/cCbJ452/RyEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723480146; c=relaxed/simple;
	bh=zrNP2KYv0WqF3LdXLEDH1XuuWMpQN51bXPN7l9Gc3XM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OHU6Wax1jw19VYfIw7yiWA/PLIk2hWz981OfdlbeFwP7+l23yjXealKbBR/0jtLWuiFYbHVVrQW8/G52Y/9FM1swR67FL+B/XdSpcavrrZ7vaDIDoWqyWUdL6wrKR4PY3MYYS/hu4VLID4wEUUKJzwO6N8dFk+fvUEsFPrhJR+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=kauK30pm; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e0e7b421c88so4561464276.2
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 09:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1723480144; x=1724084944; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uMV3FW63GcPYNvV09/bzRTM0A7rqdaktyTCGiSEZP+g=;
        b=kauK30pmBisWFXt2irM/T1Y4Om50XazFQO0qcG5ToSO0rDBoakMpatP/Fl6+2xMFjg
         Eo/eKjzyLtep35cOTNZi0i0w0yYQs9KRuC4EsYMMZyWGzSMC5lxHbZ0H1kn/FkJEZo/i
         3EH7rXyXw0hLU7Ag4gJnIzENVPpvCdTWH9YqwvMhCxKkokoxpzdcaQ7VbV3VQkacahsc
         DhZ756ExUNps6a9Hasg8/aqQNuaoJYzQx3nDiaOQXR8aR7EWey+UzUnx8FZSUsKInJjL
         m8DedwSDlY1DdIOrnfajMWjAzfS6Osv9zNHORrF5UT901gH3VHCO0B6erGWl4D5BDfnv
         wf0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723480144; x=1724084944;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMV3FW63GcPYNvV09/bzRTM0A7rqdaktyTCGiSEZP+g=;
        b=mK60m0J4RQtsRH+TbP6T5mR7jdc/hNgOOWb1QOt3XXa5WmDZvWDhNKbFbNTSq3BpeW
         1SSB9XEtEjUCu9sNSjbZJdOJFmdTk/+u+wfpd7awJhEefPayu9+A9cDd6nC01S3T5Lqt
         vrUh4ZJ5/WVS/8FuWWVveEcW1h+5EnswUtd/g63lKE/uTe89xMIA2YKNXpl5YEnQ9WGe
         JB0Mc1Tp6b8tJHAIF90+iiYI/fd1LzsJ+GZvo78wOzqTI5X1Jk/Rww4j47j3jbWppNjo
         DqPfeDaOW6PXKhxQybwddVocf7+p6jkNCDuYtJOI9M2EdodRgBq7wCIDdJlygip0KNjg
         j3wg==
X-Forwarded-Encrypted: i=1; AJvYcCVU4MtWVA5TWsICPwsCPrFPTzXjcve6y9xv5awcnQyKNWbsoVg6LOUbKRGQ0Huyq31QV7ZhRSTFHw3fUJNYjvZ0nPaRrguUoSjoJw==
X-Gm-Message-State: AOJu0YyTL4/POlvi18pOOfEJ66MIDGBA1zi5vpEv7rJYvYx2SN+eiUsF
	E1yHRpHhgH+imnDJITojLgR9NHwqZibV60gHeX4yg8EZf/6qmaRV8wKizg3c1Eo2VgSM5kGRCoq
	4Wj785Yhpk5gAtoAsnRsOAQ/6LpCcao8tc4tIdg==
X-Google-Smtp-Source: AGHT+IGj7d7yd0eiw2JYaUqx2Ht7IqYG3B/CS0se5ZXlqWOTSnVZOd4JD9GKabzcEs76SbyuZwRil8Cin7Nw6RtBZtQ=
X-Received: by 2002:a05:6902:c02:b0:e0b:2fcc:9891 with SMTP id
 3f1490d57ef6-e113d2902b2mr918707276.44.1723480143787; Mon, 12 Aug 2024
 09:29:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240731062814.215833-1-iivanov@suse.de> <20240731062814.215833-2-iivanov@suse.de>
 <200d54a3-bedf-4bd3-bb7f-0d834c43ea78@gmx.net>
In-Reply-To: <200d54a3-bedf-4bd3-bb7f-0d834c43ea78@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 12 Aug 2024 17:28:47 +0100
Message-ID: <CAPY8ntB9Zf3sJejXuzrw6tUipfv71w4sDc26fg8cbMtRjrcPHg@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: pinctrl: Add support for Broadcom STB
 pin controller
To: Stefan Wahren <wahrenst@gmx.net>
Cc: "Ivan T. Ivanov" <iivanov@suse.de>, kernel-list@raspberrypi.com, 
	florian.fainelli@broadcom.com, andrea.porta@suse.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, robh@kernel.org, 
	linus.walleij@linaro.org
Content-Type: text/plain; charset="UTF-8"

Hi Stefan

Sorry for the delay in responding - I was on holiday last week.

On Fri, 2 Aug 2024 at 19:10, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi,
>
> [add official Raspberry Pi kernel developer list]
>
> Am 31.07.24 um 08:28 schrieb Ivan T. Ivanov:
> > It looks like they are few revisions of this chip which varies
> > by number of pins. Perhaps not all of them are available on the
> > market. Perhaps some of them where early engineering samples,
> > I don't know. I decided to keep all of them just in case.
> The BCM2711 had also some revisions and we avoided successfully multiple
> versions of the RPi 4B DTS. So it would be nice if someone can explain
> if C0 & D0 are available in the market? Otherwise we may end up with
> multiple versions of the RPi 5 DTS.

AFAIK A0 and B0 silicon were never commercialised.
C0 is the current revision in use with Pi5.
D0 will be in devices imminently. CM5 will use it from launch, but
subsequently standard Pi5s will do as well.

In addition to putting in the few fixes that were desired, some
registers and DMA dreqs got shuffled around, hence some drivers will
need additional compatible strings (vc4 certainly does) and other
minor DT tweaks.

Checking our downstream dt files, we have bcm2712d0-rpi-5-b.dts[1]
that includes and patches the original (C0) bcm2712-rpi-5-b.dts[2].
The cleaner option would be to have a common bcm2712-rpi-5-b.dts(i)
and separate bcm2712c0-rpi-5-b.dts bcm2712d0-rpi-5-b.dts which include
the base and add the relevant customisations. Later a
bcm2712d0-rpi-cm5.dts DT should be able to include that same base file
as well.

I'm not quite sure why the GPIO names are redefined in our d0 file -
other than the unused ones using "-" instead of "", they appear
identical.

> I'm missing an explanation in the commit message, what's the difference
> between brcm,bcm2712-pinctrl and brcm,bcm2712-aon-pinctrl?

Two separate instantiations of the same IP block, but they differ in
the number of pins that are associated and the pinmux functions for
each of those pins. AFAIK there is no way from DT to specify those
pinmux function names, so otherwise
/sys/kernel/debug/pinctrl/<node>/pins will give the wrong function
mappings.

> According to the driver brcm,bcm2712-pinctrl is the same as
> brcm,bcm2712c0-pinctrl. So the former is more a fallback?

I'd need to check with Phil (who's on holiday this week) or Dom, but I
believe you are correct that "brcm,bcm2712-pinctrl" is a fallback.
Most likely due to our early DT files not having the c0 designation.
Obviously for mainline that is irrelevant, so dropping the
non-specific compatibles is fine.

I hope that makes some more sense.

  Dave

[1] https://github.com/raspberrypi/linux/blob/rpi-6.6.y/arch/arm64/boot/dts/broadcom/bcm2712d0-rpi-5-b.dts
[2] https://github.com/raspberrypi/linux/blob/rpi-6.6.y/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts

> Thanks
> >
> > Cc: Andrea della Porta <andrea.porta@suse.com>
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > ---
> >   .../pinctrl/brcm,brcmstb-pinctrl.yaml         | 73 +++++++++++++++++++
> >   1 file changed, 73 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,brcmstb-pinctrl.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,brcmstb-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/brcm,brcmstb-pinctrl.yaml
> > new file mode 100644
> > index 000000000000..c5afdb49d784
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/brcm,brcmstb-pinctrl.yaml
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/brcm,brcmstb-pinctrl.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Broadcom STB family pin controller
> > +
> > +maintainers:
> > +  - Ivan T. Ivanov <iivanov@suse.de>
> > +
> > +description:
> > +  Broadcom's STB family memory-mapped pin controller.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - brcm,bcm2712-pinctrl
> > +      - brcm,bcm2712-aon-pinctrl
> > +      - brcm,bcm2712c0-pinctrl
> > +      - brcm,bcm2712c0-aon-pinctrl
> > +      - brcm,bcm2712d0-pinctrl
> > +      - brcm,bcm2712d0-aon-pinctrl
> > +
> >
>

