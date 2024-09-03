Return-Path: <devicetree+bounces-99415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B550969B02
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:58:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FE711C23EAF
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98BDC1B12D6;
	Tue,  3 Sep 2024 10:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QF44Gsyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57971B12CA
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 10:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725361101; cv=none; b=qubChpTL011yvp0DDey1gD8AB3I0cSSVnWeI//WpNE+YoVB7ExPVdgjZGY+CZoSlHjwGH4k5OLW1mB5OEM18WgtNmWqm0bidAcaj4lPydcHCg5rF4CpYoBJ51DzI1UIhaxHmZl5EJf0WVenyu08kLc6sJcjIdC9TcQrAvN/C3BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725361101; c=relaxed/simple;
	bh=G+wfkTxv/p3JhAs8yWro+dghNLKXoq5Zfa8T3z/KDrE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CWegbaa1FEb7DhI8bkSQ+oIOpqDHDDJ5LS0iRP8AoIJdZ/z7i7Z6r6YhhTmMQVypyW3gIX+kMOqnD3cp5C4Q24wIA9xkT6vH87A+6XjR2qIb2dVcFBufz12vejLfQu1GqeG9wbkgTPe0iPQ0tyQSQau1WoFBkQb7GI2yz9WaBrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QF44Gsyk; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42bb8cf8abeso41053585e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 03:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725361098; x=1725965898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IiyTYtjACDnUS+yMHRQJxA78DUiZLSpdAQkLFojBlZU=;
        b=QF44Gsyk1qkIlHRsOoPGAevX5PIlOx6q35ITfgDBRLOvA4s83fI5PFzij4VCz68Ilg
         CG1UCHqeR+5rB4nQ9y4wvYAQV0ZW/B6WR6ofppY3zSglnl3gAj11N0YFtPIZzUsbVuvX
         mJrvf8ffU+mRGxh/2Nvsu6XqnF6EKjDgSWi5oVVEbrTUrQ0krUBG9u9tQ7v+9MGqhJvG
         ChRdSsUXf+IrFfkJFra6UbiYTiCOOdTjakK4EqjNiN475tzrkpRn8Fpo8TzXsI0UJOHP
         om9b0AzjtoInvvFInwYqExkSB59q3Pp3FVgIsq6QJxLz2MshAaTaVftfcpdStO5jrUh+
         TOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725361098; x=1725965898;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IiyTYtjACDnUS+yMHRQJxA78DUiZLSpdAQkLFojBlZU=;
        b=AD6jcBHFjXt+BTRFsNzUxQsH1IPmHhPN4n6JVB8EPT2eKmbFmuwt4vVnJiiHCTKLqP
         LBvommiTxOeOZa/KowD/RZi3fO11XmuNtwGXUG7rIq8XQ035Vd6CTqSm1/5H//gy5wUS
         a4NM6+bdGK4fHlYsw7sv4CVYm44gs1nR3yYsAT9OmmwmFvCxJ7khpH6zLN8t9Aie6h1g
         ICcIwBF9UvIRYjSHMwSyofOFSV1pQFS/V5n8f+QZNiXdcnmki1aHgQeESBWwa87jc5bZ
         eoOsmpjq0rP5Y+e4XTy3e4IgUFKt7vpapL2axTFQfGqdRC8f0SUkuI/2UFUYgR1OmY+w
         QGJA==
X-Forwarded-Encrypted: i=1; AJvYcCUO+wrrO1ZB8okOwtXIzo6207LDt65jNJdKYCP+6NYcefNw/1FyvX9bDC/2Mn+07+JZNM5NV8Xm04lh@vger.kernel.org
X-Gm-Message-State: AOJu0YzG12GJRBroSEtqoxOOcxNGdF/eGQYk1n4wZHNqW5emI78kcrMo
	xFIgdnscl0d5QDcUSo30EP4Ia3GY55WapSM98/KFe8PHaRDyjBB2HNVm7EgA9j4=
X-Google-Smtp-Source: AGHT+IGznagqoviE6ySUvt6lxPt835b+hPmScaIpmlICIM82eo24CPYzqVSzQJR1lwMuNCXz+hrYhg==
X-Received: by 2002:a5d:5387:0:b0:374:c69c:2273 with SMTP id ffacd0b85a97d-376dd80faadmr265958f8f.37.1725361097737;
        Tue, 03 Sep 2024 03:58:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb73e20b7sm168108285e9.14.2024.09.03.03.58.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 03:58:17 -0700 (PDT)
Message-ID: <da4c57ff-de2b-418f-ba2c-e83c1d399b94@tuxon.dev>
Date: Tue, 3 Sep 2024 13:58:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
 <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev>
 <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
 <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.09.2024 13:35, Ulf Hansson wrote:
> On Sat, 31 Aug 2024 at 12:32, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>
>> [...]
>>
>>>>
>>>> If not, there are two other options that can be considered I think.
>>>> *) Using the genpd on/off notifiers, to really allow the consumer
>>>> driver of the reset-control to know when the PM domain gets turned
>>>> on/off.
>>>> **) Move the entire reset handling into the PM domain provider, as it
>>>> obviously knows when the domain is getting turned on/off.
>>>
>>> This option is what I've explored, tested on my side.
>>>
>>> I explored it in 2 ways:
>>>
>>> 1/ SYSC modeled as an individual PM domain provider (this is more
>>>    appropriate to how HW manual described the hardware) with this the PHY
>>>    reset DT node would have to get 2 PM domains handlers (one for the
>>>    current PM domain provider and the other one for SYSC):
>>>
>>> +               phyrst: usbphy-ctrl@11e00000 {
>>> +                       compatible = "renesas,r9a08g045-usbphy-ctrl";
>>> +                       reg = <0 0x11e00000 0 0x10000>;
>>> +                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
>>> +                       resets = <&cpg R9A08G045_USB_PRESETN>;
>>> +                       power-domain-names = "cpg", "sysc";
>>> +                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
>>> R9A08G045_SYSC_PD_USB>;
>>> +                       #reset-cells = <1>;
>>> +                       status = "disabled";
>>> +
>>> +                       usb0_vbus_otg: regulator-vbus {
>>> +                               regulator-name = "vbus";
>>> +                       };
>>> +               };
>>> +
>>
>> According to what you have described earlier/above, modelling the SYSC
>> as a PM domain provider seems like a better description of the HW to
>> me. Although, as I said earlier, if you prefer the reset approach, I
>> would not object to that.
> 
> Following the discussion I believe I should take this back. If I
> understand correctly, SYSC signal seems best to be modelled as a
> reset.
> 
>  Although, it looks like the USB PM domain provider should rather be
> the consumer of that reset, instead of having the reset being consumed
> by the consumers of the USB PM domain.

The PM domain provider for USB is the provider for the rest of IPs. To work
like this the SYSC these signals should be handled in the USB domains power
on/off function. It's not impossible to have it implemented like this but
it will complicate a bit the code, AFAICT. This will not describe the
hardware, also.

With the information that we had up to yesterday, the connection b/w HW
blocks was something as follows:

                 USB area
              +--------------------------+
      sig     | PHY -> USB controller X  |
SYSC -------->|  ^                       |
              |  |                       |
              | PHY reset                |
              +--------------------------+

In this implementation the SYSC signal was connected to PHY reset block as
it is the root of the devices used in the USB setup and no USB
functionality can exist w/o the PHY reset being setup.

There is a new information arrived just yesterday from hardware team saying
this about SYSC signals: "When turning off USB PHY and PCIe PHY, if they
are not controlled, PHY may break" which may means that it is just
connected to the PHYs not to the USB area/region or PCIe area/region as
initially expressed in HW manual.

With that the HW connection b/w the USB devices and SYSC might become
something like:

                 USB area
              +--------------------------+
     sig   +--->PHY -> USB controller X  |
SYSC ------+  |  ^                       |
              |  |                       |
              | PHY reset                |
              +--------------------------+

I haven't got the chance to test this topology, though.

With this new information would you be OK to still have it as a reset
signal and connected only to the PHY driver ?

Thank you,
Claudiu Beznea

> 
> Did that make sense?
> 
> [...]
> 
> Kind regards
> Uffe

