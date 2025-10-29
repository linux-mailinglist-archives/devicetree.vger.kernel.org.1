Return-Path: <devicetree+bounces-232891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F02C5C1CC34
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14C9F1896B7C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407893559E3;
	Wed, 29 Oct 2025 18:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="goL2QN2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D582F8BD9
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 18:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761762254; cv=none; b=JBThzD+oGxCoBD2tyn3DnTPkJDEwaWyYe1/x66jpUXzpJ0IcBAyLuOrx4WGW4aVZkoOOZt5+soTKOD8/MQRuDi/RY6SQIyIN32Jsc+W7+aWyXqXb+ql7dFQp6aRbhylzeBFExRij9ULZAtKvEHMrfKRZjR82KzkDoAOB1k+SceA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761762254; c=relaxed/simple;
	bh=19BiiKEHLAAdUkK3kiHtZ+FIIIcqtIk4Br4GS4kuJIs=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vl9zPGshoQYOIsVnAUOQp2fl4nwfmgUIUhTeWrr95zu3gmbCzgAM93+KfQFqjyKUk/H6WfgFuHCN/4V/3APSewWoba5IeeybNjegSTE/7ytiNSyhD8EJiUXfb6a8g93LMuqGCTjCIFrnnRMKHqCfdb4QVq0OSFtngUWNAEtkkz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=goL2QN2y; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so1329955e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761762250; x=1762367050; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bzK5qNzDD1OL6sh9VhoK7dF0ie9h0/HgqvIRoxOou0g=;
        b=goL2QN2yFMLGLyetAyBqLAvRJkvmg28F5kZwnUkk6Q1zMK/oYWuHZacatToE0gtuNb
         VIJLwKIRIORibslglSTsTNEz+uYqZwo17HznNnrKpCu9X8IA9ukGzg834/IQb/9oGHyc
         ow3VMkI1jwyHdiwi68WndxA/4fzok8KSPPbkX/UzBse9XbzPE6pU0nLezOzRlkDIAE86
         gVcJcKUrxaz5rUIRhHghITcE3Adf11tf0vC/ZP6ypJSNMavNsM4SPJqteF9Cc5ZrVZKu
         uqu/u4S+D5eznmY0J7FyWPKi7X4OiAOfjZA1cYxpNPRHKGGlEaMbwjBR0qWGmN9jdjVf
         h63A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761762250; x=1762367050;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzK5qNzDD1OL6sh9VhoK7dF0ie9h0/HgqvIRoxOou0g=;
        b=srdmYtx+tpq6CJ+/NAC8CYQVOuyapzSdfH1+DewjgX06ei+kaDCQsxQZTMwbGcL4+S
         uWjqaqegJZhy/mAxtfttDBIetADjzdWg6n6JGp7kfSjmU4eGo+4ux2VKZm+Qwn23cxII
         5wnutW1gq2gnQDqxM0t97MYwS9hRLxmWrXddsrOfFBaMfOX2Kc2MWorgkjg5brgw4J1c
         QOvunV4YwJxGZcZ6tq/D2Aq3H+v6wAcmY2NL2d6h26tRuAmwJESnku7xA0yNWM/mnlB8
         Mu8F1MwRgn/ZqzAv7l0dz9W17LXFlugpdhPogn/KucACLtAcXMlYPqQYeUqAw5a4u1Ez
         UlNw==
X-Forwarded-Encrypted: i=1; AJvYcCUuYshGqJ4BTTDVa6QafwOzfwcYVg1N6Kam7NTHfyL5NJGGazNPCRVAmeoEpd7aux6d3fnssgj7CI/o@vger.kernel.org
X-Gm-Message-State: AOJu0YzYpJmxHD5ItSQk3OpKUc/saHx4Zn6ChOa3qAMyj5YzZ3OD/OXJ
	Vin1x1xYGYyIMWCOFg9aDACm5ok7Olf22UG4yJhuPZhdr4TMyi6x6Zv5
X-Gm-Gg: ASbGncujNhCo9+wnuuDqNyIiKt5tZZ3l1NHC0fLslw6PUeKE4PUHq9gr6/IRWk/ect+
	dtN8QAJQRZvPa0LjdYX9Geh1CsmgvQOghVYE5zW/Fd4avPv7ExRZlMsfBPb44HpJz4L27mAMARG
	kcsw8oAoFiIhpoRzxXq2zmaaqX7BSgixo21izkn5HmRudgzPP5EmXOTg2/IqUnNbEVnUEdNw58U
	Kpg4hUF6zPiA1n6F4KfKEBWjaz4wiuDwdGC7xkEcFt5WP7rz5kCkv8/SDsCLY6rlbFkmoqATgsu
	/eS6QAdY461mKN6Loao8/h4mu/C/DKmKY958lCiWs9lmpM0A36/ol2uSyJC8MmHKA3WOGNYP4tB
	2v+ThoKo+waxcQIUFm46tsKkmtm9V+g1C2QbLzEqfb8SbxbMhrIp02cdgSmVwbkl1q/BGeP9hwN
	xojFsZmtAqiJif4VSBo07oICsQ5MIz
X-Google-Smtp-Source: AGHT+IHiqbGMQAd5HKcmjlS9yIwTWKcuIT+kbHRohu/cwGjeIbdOsMSRiO92YQLIPJlRr2d/zjLp/w==
X-Received: by 2002:a05:600c:468f:b0:46e:1cc6:25f7 with SMTP id 5b1f17b1804b1-4771e177ca5mr33863075e9.9.1761762250323;
        Wed, 29 Oct 2025 11:24:10 -0700 (PDT)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952ca979sm28796326f8f.14.2025.10.29.11.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 11:24:09 -0700 (PDT)
Message-ID: <69025bc9.5d0a0220.1f0440.deb9@mx.google.com>
X-Google-Original-Message-ID: <aQJbxPm8SFN8WR7f@Ansuel-XPS.>
Date: Wed, 29 Oct 2025 19:24:04 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
 <20251029173713.7670-3-ansuelsmth@gmail.com>
 <20251029-mutual-scotch-7ca52e17da69@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-mutual-scotch-7ca52e17da69@spud>

On Wed, Oct 29, 2025 at 06:07:22PM +0000, Conor Dooley wrote:
> On Wed, Oct 29, 2025 at 06:37:10PM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > for the USB controller.
> > 
> > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > The first USB port on the SoC can be both used for USB 3.0 operation or
> > Ethernet (HSGMII).
> > The second USB port on the SoC can be both used for USB 3.0 operation or
> > for an additional PCIe line.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > 
> > For DT maintainers, in v2 there were some comments, hope the new
> > description and names of the property better clarify the usage and
> > why they are needed.
> > 
> >  .../bindings/phy/airoha,an7581-usb-phy.yaml   | 76 +++++++++++++++++++
> >  MAINTAINERS                                   |  7 ++
> >  .../dt-bindings/phy/airoha,an7581-usb-phy.h   | 11 +++
> >  3 files changed, 94 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> >  create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..5106685c124d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha AN7581 SoC USB PHY
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +description: >
> > +  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
> > +
> > +  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > +  always supported. The USB 3.0 mode is optional and depends on the Serdes
> > +  mode currently configured on the system for the relevant USB port.
> > +
> > +  The first USB port on the SoC can be both used for USB 3.0 operation or
> > +  Ethernet (HSGMII).
> > +  The second USB port on the SoC can be both used for USB 3.0 operation or
> > +  for an additional PCIe line.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,an7581-usb-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  airoha,usb2-monitor-clk-sel:
> > +    description: Describe what oscillator across the available 4
> > +      should be selected for USB 2.0 Slew Rate calibration.
> 
> Why's this being set in dt? What actually determines what oscillator
> should be used? Do they have different performance characteristics?
> How is someone meant to know which one to use?
>

Hi Conor,

thanks a lot for the review.

The airoha,usb2-monitor-clk-sel is set in DT because it describe the HW
and to what oscillator the PHY should be connected to.

There are 2 PHY at different register space. One PHY needs to calibrate
for oscillator 1 and the other PHY for oscillator 2 or the PHY doesn't
work for USB 2.0 (the calibration fails)

The previous implementation used an index property but that was rejected
as it wasn't descriptive of the HW.

> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [0, 1, 2, 3]
> > +
> > +  airoha,usb3-serdes:
> > +    description: Describe what Serdes line is attached to the USB 3.0 port.
> > +      Can be either Serdes USB1 or Serdes USB2.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [2, 3]
> 
> This is confusing. Why 2 and 3 for usb1 and usb2? What even is the
> mapping? Is it 2:1/3:2 or 2:2/3:1?
> 

AFAIK there isn't a way to directly reference dt-bindings.

2 and 3 are from include/dt-bindings/soc/airoha,scu-ssr.h

#define AIROHA_SCU_SERDES_USB1		2
#define AIROHA_SCU_SERDES_USB2		3

> > +
> > +  airoha,scu:
> > +    description: Phandle to the SCU syscon to configure the Serdes line.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  '#phy-cells':
> > +    description: Describe if the referred PHY is the USB 2.0 PHY or USB 3.0 PHY.
> > +    const: 1
> 
> Which is which here?
>

Mhh I think I didn't understand here. #phy-cells describe the
parameters to be used for phys property in a different node.

The current usage would be

<&usb0_phy PHY_TYPE_USB2> for USB 2.0
or <&usb0_phy PHY_TYPE_USB3> for USB 3.0

This node expose 2 PHY that can be referenced by the single parameters.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - airoha,usb2-monitor-clk-sel
> > +  - airoha,usb3-serdes
> > +  - airoha,scu
> > +  - '#phy-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/phy/airoha,an7581-usb-phy.h>
> > +    #include <dt-bindings/soc/airoha,scu-ssr.h>
> > +
> > +    phy@1fac0000 {
> > +        compatible = "airoha,an7581-usb-phy";
> > +        reg = <0x1fac0000 0x10000>;
> > +
> > +        airoha,usb2-monitor-clk-sel = <AIROHA_USB2_MONCLK_SEL1>;
> > +        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
> > +        airoha,scu = <&scu>;
> > +
> > +        #phy-cells = <1>;
> > +    };
> > +
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 8085fdca7bcd..af23c590bbc6 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -763,6 +763,13 @@ S:	Maintained
> >  F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
> >  F:	drivers/spi/spi-airoha-snfi.c
> >  
> > +AIROHA USB PHY DRIVER
> > +M:	Christian Marangi <ansuelsmth@gmail.com>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > +F:	include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > +
> >  AIRSPY MEDIA DRIVER
> >  L:	linux-media@vger.kernel.org
> >  S:	Orphan
> > diff --git a/include/dt-bindings/phy/airoha,an7581-usb-phy.h b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > new file mode 100644
> > index 000000000000..efbb0ae75e3a
> > --- /dev/null
> > +++ b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > @@ -0,0 +1,11 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> > +
> > +#ifndef _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
> > +#define _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
> > +
> > +#define AIROHA_USB2_MONCLK_SEL0                 0
> > +#define AIROHA_USB2_MONCLK_SEL1                 1
> > +#define AIROHA_USB2_MONCLK_SEL2                 2
> > +#define AIROHA_USB2_MONCLK_SEL3                 3
> 
> These definitions seem completely pointless. The property is called
> "airoha,usb2-monitor-clk-sel" so any use will look like
> "airoha,usb2-monitor-clk-sel = <3>;"
> That's more informative than the define is, since it doesn't even
> truncate "monitor". I'd just delete this header entirely and use the
> number. If you want the define in the driver to avoid magic numbers,
> just define it in the driver.
> 

Well yes the idea here is to not have to use magic numbers in DT and try
to use the naming in the SoC documentation since they are called
monclk_sel0, monclk_sel1 ...

Will drop.

> pw-bot: changes-requested
> 
> Cheers,
> Conor.
> 
> > +
> > +#endif
> > -- 
> > 2.51.0
> > 



-- 
	Ansuel

