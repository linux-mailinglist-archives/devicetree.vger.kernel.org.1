Return-Path: <devicetree+bounces-83799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 670B8929F2E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 11:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 241B12899E7
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 09:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B0256452;
	Mon,  8 Jul 2024 09:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qU8h94+u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56E853362
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 09:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720431421; cv=none; b=LlSNZ8kzFLmXcrNWH+tKHnHPJLR7hWVJx6twffXLxwO5jLIu/ySw7sY3s38RTMysXSk+P2D+UMCxWGCu6ZqgAC29HpLVw+3OF0fgJtPXCnjN/wM6J1OOxPh7HGASVQ7VusiEAUnNO39O4ap+7Oq4W2zEbYUvSny57aLXCGnzAhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720431421; c=relaxed/simple;
	bh=DUT2qfyHnBiSJswKU9IBPVcRdLDUr47dwJz4WyHcfk4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k7MRgHrMKSnXEeVEQDrrtkULDAL3GyJhtyrblaCGVzUxs4hPdbrlnNNaYBmwIMm5OdFKF7YfOGxjiGQ7pMA9k0cDh83pi9R7r5BdTzNFJBFPvrndyhDKqPEkQrjFToNIUYWzJzVOXPbDQYbLPftRD9gjZxPu6bSV8+kgaNbFGMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qU8h94+u; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eaafda3b5cso36469481fa.3
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 02:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720431418; x=1721036218; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t/fDaFsT8bVF74YZaw1dcXDPONZE3lh/2d8bp4xBoeE=;
        b=qU8h94+umLg4DCBsm8JHYfr8ydS/X8yO9fbu8tauPN5MKq8I4OwpykY7agKQgG0ocB
         IYSO3aGreEMnHAPw8XBSBhJ8w8mFBmAv4sY/E2LuCxro0dxZOlXmhZdCwqVVTONHwwbP
         dznW9++G6Pw+1yay8BotT5/B7VVkjnvL+uxBV2QOmJzKebwvXtLbE4Rt8QBY9UWEqWNS
         sPfI+3zO1iE68Fx5y1yXBA9zs5MlLIiEffKWsjjhWNOEowdsAGdMZMF0W7TRIMwNaP1u
         4S1wy2yFj090HoAVR2rVvmepWHpyu0rHReH6+A1h59oZcXBSwQjJv9xdEuCPayVJSbTa
         2AyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720431418; x=1721036218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t/fDaFsT8bVF74YZaw1dcXDPONZE3lh/2d8bp4xBoeE=;
        b=OBgiScfvolyDxNK9wl9cmoon+7lAvBJzuo1lzdvQPCP0HJATXk7ODkAt9aTl5rs3W7
         F5OfkCFtktVtZMIgEkwZdIiCrnJHLzDZ0R9IRzSd3zMY3P1VZCRkSABueEOsEWQFDORp
         1kU4cgw7wMY9HiBWT2gu/YLRzZ+DG1/AxxNedHEapx8a5HbiNiDL9vjj/T+s2bJ2x2h7
         V21FzgZvizNaPLRHR5R/U4yPRacGFKQnaRu9byXiZpv5Qkp5hCC+yfIEJPI0OtbPWaFy
         aOf5zYNFn1/NX4VqPyoa+m+/qQfL/LZFYvGIy5qZLeQ5sMJzLzbKfLz1pEhLW2Q26H9G
         8UHA==
X-Forwarded-Encrypted: i=1; AJvYcCV204qYhNSP69xwL2KDwCTStiMWwCiUG+2GHA+dsj7Xl23WCNoeIDlH6+1urRu/F4N7doY63b79721xkvycQtj9QMUMrz/qjpvmVA==
X-Gm-Message-State: AOJu0Yx5hcZxv8AvVfghQURxxuGL2xUCpfZQ4Lu5L/PDVIvVpn3wedtG
	VTPlszVuiV3zz4+tXFk0XMisRAeaM3oOWFr7Ak+eldt3pY5YX+OFQHgixIN9cxrfFYgPboMmXfG
	EkFkZeHF3HgYaI4ohIXK6CXDsJIhrZ/PlKtmmkw==
X-Google-Smtp-Source: AGHT+IEJMNPJRZ4ikmMySY61VYumW34qVN8KfZiDAw4e13a6IxOH1mxxtIHzIHcKSJJmLmuyxIw8TtR3feufoV7jpQU=
X-Received: by 2002:a05:6512:3d29:b0:52e:a63f:16e8 with SMTP id
 2adb3069b0e04-52ea63f1808mr5972739e87.33.1720431417658; Mon, 08 Jul 2024
 02:36:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240705-pwrseq-v1-0-31829b47fc72@amlogic.com>
 <20240705-pwrseq-v1-1-31829b47fc72@amlogic.com> <a4d08999-55ea-4674-bb0f-6d618b7bdea7@kernel.org>
 <9c550278-2205-4663-917c-c303c65726ad@amlogic.com> <726a0561-b3fc-46bb-a834-3ed8b0e993e1@kernel.org>
 <91e42fbc-712e-44b4-8200-23aaf1fade43@amlogic.com> <7d109ab0-ebd0-4739-a15e-958e82552a7d@kernel.org>
 <2c51fff5-bc63-4f30-bb6d-f5fe91854d6d@amlogic.com> <aab8fae1-c0ba-4fab-8690-88c6cfe569e5@kernel.org>
In-Reply-To: <aab8fae1-c0ba-4fab-8690-88c6cfe569e5@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 8 Jul 2024 11:36:46 +0200
Message-ID: <CAMRc=Mckr4EE+TWgwHb5iLYTiPT0=2ES9Kkf27XTJmESPAxAgw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: power: Add power sequence for Amloigc
 WCN chips
To: Yang Li <yang.li@amlogic.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 8, 2024 at 11:10=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 08/07/2024 10:21, Yang Li wrote:
> >
> > On 2024/7/8 15:32, Krzysztof Kozlowski wrote:
> >> On 08/07/2024 08:32, Yang Li wrote:
> >>> =E5=9C=A8 2024/7/8 14:11, Krzysztof Kozlowski wrote:
> >>>> On 08/07/2024 08:04, Yang Li wrote:
> >>>>>>> +
> >>>>>>> +required:
> >>>>>>> +  - compatible
> >>>>>>> +  - clocks
> >>>>>>> +  - clock-names
> >>>>>>> +  - amlogic,chip-enable-gpios
> >>>>>>> +  - amlogic,bt-enable-gpios
> >>>>>>> +
> >>>>>>> +additionalProperties: false
> >>>>>>> +
> >>>>>>> +examples:
> >>>>>>> +  - |
> >>>>>>> +    #include <dt-bindings/gpio/gpio.h>
> >>>>>>> +    wcn_pwrseq {
> >>>>>> No underscores in node names, generic node names.
> >>>>>>
> >>>>>> There is no device as "pwrseq". I also do not get what "wcn" means=
 here.
> >>>>> Yes, I understand.
> >>>>>
> >>>>> Can I change "wcn_pwrseq" to "pmu", and do I need to change the bin=
ding
> >>>> What is pmu for your device? What is this device in the first place =
you
> >>>> are documenting? Where is the datasheet?
> >>> ^_^ Well, You are right, the "pmu" wasn't really fit in here.
>
> So no datasheet? Then you are on your own.
>
> >>>
> >>> I'd like to explain the current usage first, and could you please giv=
e
> >>> me a suggestion?
> >>>
> >>> This module(pwrseq) used to power on Bluetooth & Wi-Fi combo chip, bo=
th
> >>> Bluetooth and
> >>>
> >>> Wi-Fi driver need to control "chip-en-gpios" pins, so we introduced t=
he
> >>> power sequence module.
> >>>
> >>> What should we call it in this case?
> >> Sorry, you describe driver, not a device.
> >>
> >> That would be a no-go for entire binding. Please describe the hardware=
,
> >> not what you want to achieve in Linux drivers.
> > W155s2 is a Bluetooth and WiFi combination chip. Bluetooth requires the
>
> I asked about this device here.
>
> You speak now about W155s2 but everywhere else you were using "WCN".
> What is that WCN?
>
> > bt-en pin to be pulled up, the chip-en pin to be pulled up, and the
> > 32.768KHz clock. WiFi requires the chip-en pin to be pulled up, and the
> > 32.768KHz clock. It can be seen that Bluetooth and WiFi are coupled to
> > the chip-en pin and the 32.768KHz clock. When Bluetooth and WiFi are
> > working at the same time, no matter which one is turned off, it will
> > affect the other device. Therefore, a pwrseq device is now abstracted t=
o
>
> It is the first time you mention pwrseq device from above paragraph.
> Nothing above describes pwrseq.
>
> Stop describing your problem, we all know it exactly if you follow the
> discussions about power sequencing. Instead describe this particular
> device you add binding for. What is this pwrseq in hardware? How does it
> look? Where is it located? What are its pins? What are its supplies?
>
> > manage the chip-en pin, bt-en pin, and the 32.768KHz clock.
>
> >
> > There is currently no matching device name for the pwrseq composite dev=
ice.
>
> ? No clue what does this mean.
> >
> > Could you please give me some advice?
>
> Again, you do not describe the device for the binding but something
> else. Something for your drivers, sorry. No.
>
> If you disagree, respond accurately to all questions above, not to only
> some of them...
>
> Best regards,
> Krzysztof
>

Yang, please look at the existing pwrseq-qcom-wcn.c driver and its
bindings. They do exactly what you most likely want to do here. They
describe the power management unit of the chipset, its inputs from
host and outputs consumed by the WLAN and BT modules. Please try to
follow it for your device.

Bart

