Return-Path: <devicetree+bounces-238301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B951EC59B69
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 93D9634428B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2AE27A904;
	Thu, 13 Nov 2025 19:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kA/OqS8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AD42C21D4
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763061480; cv=none; b=FVrYAd1m+D4LWNmBqHlBHm+pHzajRjwP1kd9fkd/d7/nS7rvmR6s/pv6ZzOlnABiw9wFXOLBnk3EsA56aa/Gi/n/riBIWI2JH8A9Y5/H/JZ3VL9d3cxZd1LgGSEwRxI1b158jZjQwQIuZ9Z/odqXGoUmjGDmgDdED6GB6dIokc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763061480; c=relaxed/simple;
	bh=6U+HqaXN6y7cgbjN6Bjb8v3x50bT8bDtfCr+D2D4qeg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g5bwnZalqpXwOLPG/w+5XEzMvWLfKU3YM9fGOb+Ln8vji8mw2lqtcwKpC5scHt1BL1KP7djSBV0sML0nK75lpH6PXhB/OfsfGjKisZRHI8BSKYK9YrZLM0A4o9sWnA3a3DUfjVpRV58wrbEnGLZnhbgwfQqYAGCiZP6WgQQ1r7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kA/OqS8U; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b725ead5800so154003466b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763061474; x=1763666274; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvjPhW53lLm7g2R1+RmexOgllFoRG4RMNyM5i1aMFEY=;
        b=kA/OqS8UHMJTcciCOCz6uBEU1lED2RT4xXyL2ePC0vtPk7JApfO7LsB2SHVFGih94K
         HHkeutcokS1q3JbYAqbkNUH+e7MiwPwvXSkjFBceRL7UG61lJensxj9sYIThMva2GcTb
         fX3QkzcyJQbVMSwHfyNiwZlK/X1kE4j+uG21Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763061474; x=1763666274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NvjPhW53lLm7g2R1+RmexOgllFoRG4RMNyM5i1aMFEY=;
        b=UAUFGwQXqOBZStmlTmnzm5wqdY2eGhXqsNuXc6Ym81c5aP+2KyqbNHO58YC/7PxmGa
         UZNzq0Z9FtPdHurPsadnt87R6RAXE1dwIu2w4rfoSbDT1VV/hNJwD4CFy6fg8GHnL4v8
         YRyV7bJdCPYq8gAdKqjliEGsnpue9YzaJAzxOom8eeaaAWR6p807nKSDHpqFnVceNLgK
         jQHv6IX+1j65r6TfrWa9j70hdGFSV3FFvgpKJwkHb1qIWaMADS9fd96bCWtUXR9VOIXX
         Nq/++XzMWoXf5GH7FDo0UFqLl31RyppEfHrsHVX27BWEnVa4+HvFNk1WMoyUV6Ie+fkg
         35ow==
X-Forwarded-Encrypted: i=1; AJvYcCVwBRP3FPtIf/qlXac24C/brTupWzcDHNIuHvVwwL8vy2XdWgHljvnLNMuCKbcalKEx6s29IzUWjNtw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2S+KH9eevIM8TUdpucZ391VnWz2770AZM2sKKDScg/rnPzrCk
	kh6OABQPvXAg9DxH2R/SUUOnd9v4X2055jHM9JEzRrMml4nIcFA34bCKcErVHP3Kf5OVsDhwKEY
	KUEva38xe
X-Gm-Gg: ASbGncsS28vZoqsytd4lQaPys+rcKSJ2QzSRqdVEzB5rgdCiAAbjGPqLKg3Q/M+RX3H
	1w1cQhrGbkb7dxfyYh/Mm7GOWjcEHYx6eJNcqbdDq8iOOVISjmkhR4wne27B0tUv3CHMgjp4rLv
	ZUM1VZlXOR3ZdDgA5as7tTAb+eCukigbK5+h4Myfx6w/gNMKJVvH5+uFb2t/+cY7ztrL5cqsCjd
	uJJUgoPxN7wW9C76uvcMRt7QgES9/0JuUHrWyMZdG5DHotjEGY1GVt8B6LndgHv23GIDeSjAbDH
	9oqTUHI6gbdZr0nJRvsuOlV03FdOUY7xJ1xALzO6ZEOilKrQbbzUPdu1Rn9NBrQwNGKYRe7VCkM
	dDGwBSDqTKNl3OZ2obYUpBPJBUscohdYw8O93GES/qIEMsipGRrmHUf7z6yvVED6ZHMTeH5TkRY
	iLH/VSWWPDq2+ChmDL5x/EDFANCaLSTrpGq4lHhbZxT2OPQNLz2Mg6aSzsEfIP
X-Google-Smtp-Source: AGHT+IHVEVu2vjh+ayZm5ilUC2sb37uXBSZt2P9hS7bpqgv/KbJ8xbNLcJFQtZ74ig047J2LhPUxLA==
X-Received: by 2002:a17:907:7e9e:b0:b70:df0d:e2f1 with SMTP id a640c23a62f3a-b736786cdcdmr40831766b.28.1763061474354;
        Thu, 13 Nov 2025 11:17:54 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad45afsm224513366b.24.2025.11.13.11.17.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 11:17:53 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so1002348f8f.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:17:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW6vVCttzdQJbi+louUSCUAnV8vJC9T3pqnX8MWA1nRXsHrKVPipwt35t6ZUFlmIU7prKAPdbWQOaKw@vger.kernel.org
X-Received: by 2002:a05:6000:228a:b0:42b:36f4:cd24 with SMTP id
 ffacd0b85a97d-42b593495bemr483459f8f.24.1763061471661; Thu, 13 Nov 2025
 11:17:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ebc08400-c16d-4ed0-b487-9aabe13bbf0f@pengutronix.de> <CAL_JsqKHqEtYoSuoLd=tR5B+P-_nDyOfpqEUZ_f=ws3yt5qORw@mail.gmail.com>
In-Reply-To: <CAL_JsqKHqEtYoSuoLd=tR5B+P-_nDyOfpqEUZ_f=ws3yt5qORw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Nov 2025 11:17:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XMm_SatBN79D6A8aCXSTpJvmgdhXMm84Um5fpq=e66LA@mail.gmail.com>
X-Gm-Features: AWmQ_bkyBts-Wppv2Dbv_dWj5HI6fiZeXLPYhETWPI5H0cLyL4YjgsmNwKGbG4M
Message-ID: <CAD=FV=XMm_SatBN79D6A8aCXSTpJvmgdhXMm84Um5fpq=e66LA@mail.gmail.com>
Subject: Re: SoC-specific device tree aliases?
To: Rob Herring <robh@kernel.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree-spec@vger.kernel.org, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, quentin.schulz@cherry.de, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 13, 2025 at 10:12=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Thu, Nov 13, 2025 at 2:29=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutroni=
x.de> wrote:
> >
> > Hello,
> >
> > With /chosen/bootsource now part of dt-schema, I would like to raise a
> > related point: The need for SoC-specific device tree aliases.
> >
> > For many SoCs, there is a canonical numbering for peripherals; it's use=
d
> > in the datasheet and BootROMs often makes use of it at runtime to repor=
t
> > the bootsource as a pair:
> >
> >   - One value to enumerate type of boot medium (e.g. mmc, spi-nor..)
> >   - Another value that describes which instance (e.g. SDHC1, SPI3, ...)
> >
> > Some examples, where this is the case, are AT91, STM32MP or i.MX.
> >
> > barebox has traditionally used /aliases to translate BootROM informatio=
n
> > to a device tree node to fixup /chosen/bootsource.
>
> So bootsource will be populated "mmc0" or "spinor1" for example?
>
> > This doesn't work out for many newer SoC support, because of different
> > expectations: For upstream, aliases are relevant to a board, while
> > barebox traditionally expected them to be SoC-specific (because they
> > used to be on i.MX, probably).
>
> But usually the numbering follows the SoC numbering. Sometimes it
> follows the PCB numbering, but I think that's mainly serial ports.
> I've certainly steered people away from vendor specific instance
> numbering properties towards aliases (if the need can't be eliminated
> entirely).

It's been a long time since I was involved in any discussion about
this, but I remember Arnd Bergmann being strongly against having
numbering aliases in the SoC "dtsi" file. I was always on the opposite
side of this argument, but it seems reasonable to include him in the
conversation.

From my point of view, with the exception of the "serial" alias folks
almost always wanted devices to be numbered as per the SoC numbering,
as long as there was a well-defined SoC numbering. For instance, if
the SoC manual consistently calls a port "i2c12" then it's pretty
confusing if the device doesn't end up as "/dev/i2c12". This always
led me to the argument that aliases like this should be in the SoC
".dtsi" file.

The "serial" alias is a bit of a special case because of historical
assumptions. It's often assumed that serial port "0" is the debug
port. Luckily there aren't usually so many active serial ports so it's
not terribly confusing...


> The board specific part I think is more that the board defines what
> devices are present and not present. It would be weird to have a
> serial3 alias when that's not wired up. And board .dts files are going
> to forget to remove it. Though I guess it is somewhat harmless.

To me it doesn't seem awful to still have the alias pointing to a
"disabled" node. The node is still there, so why can't the alias still
be there?

-Doug

