Return-Path: <devicetree+bounces-149747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF262A404A8
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 02:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E916D19C0087
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 01:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DFF3D984;
	Sat, 22 Feb 2025 01:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P3rM9GAs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCD02A1CF
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 01:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740187425; cv=none; b=SQAQ9Wy6dZyzqgqb/5yC+F/NbKkKNT6PL25tkpEYoow3Aj+G8twFrVGvktk9NaMx+jqhBN8mTvCbgc9U+TVIrJRnkAwU1UdHIplQnEY71ylwMNhNSwhKTiS52MWRKb53bdOPohTgeFRoB4EzDv+LTHU8FEyX7IixhrrYBstXU3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740187425; c=relaxed/simple;
	bh=ER9G9HRhcPMgPnDB9OZ93csc2pWtHxSYJcTG/yuD4Tg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r3kf3gXSY6Elk1v7/j7puaPlRDxPrkLX8fvQZT2Qzi1AtAQ7Dh9TNVogHkaHQ8vcqSnE2Yzje6va76QD3T8MEx7uAdxUWqQBW8CjuW+LBFfR4HAwkvIjsSDXK4YZkfeJjsxgVSm8Q9L2faRx7vvXxxfNKmkWUT1VyULHzdlRDNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P3rM9GAs; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-439a2780b44so17289645e9.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 17:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740187422; x=1740792222; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhpklwBnBdF83FBre0/tkR3DVtuVLWezPApNRpdK4qw=;
        b=P3rM9GAsGdX8oYRYmTTKTRUC3zl8ssL1hfkZx+tgT8BBh//YbLq6iH4WYac64vF8PH
         acLQ5W4VTptTuYSQ1JFyD+Keyz63jsJLitsaJPiYAmbhnh43epcUlzqLjH7AJhWSFmaH
         dgLskbIfEP7p48w7PhN26QuHfsW6BlBmnaPDWR7nY2ZJQ8P2gK0NOc3lewFqzuK4gu1H
         4GjMkACgghxEINjZoDQfM2XIrEVt+8tVbM8jouXrMmOlVsMwFeXvrqmTqNgbHVK37f+b
         s9ly97eUJkYocUWeXzySfaS3Ll8k/ZoqtTPnaqx7V7utlDpZUmQtdath6HfEPCWqLllF
         Y7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740187422; x=1740792222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhpklwBnBdF83FBre0/tkR3DVtuVLWezPApNRpdK4qw=;
        b=mZKG6HcjNpksOc5E2JM2/5nXgHrM0XhEwjte+GVZM/AzTdNk/bmXpBMwuVNJPVDMfX
         Oi+Je/vCEDzkyco6klbcNUCasMg2v9ziOmKOK2VA/NpEvCue/egxoNdQEph7le6Xf0yI
         OtRbNsc2z29VL2TalVGiyZm9tM82i2dFZJ/rlS83et6c+JAoTbkEwVkqbjqusm5UAgvX
         X8xdSSws/HvWZ72TTCnmbDLqIqM9ao3ewt+ztZTxqctl2gjxu7XbsWy0Gim1T779HXrn
         1Tc6/Dcj92r3fzzjQ6AMqp/pnP3iC9velYjgBNi33oXns6eD8DJfhbxwF1nAF2crq0KM
         98Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWdC0Sn6jPLvlhGBumaye1jBFpai5r80PNsnTpaoQ3ulDaNdDqhahDZsVgobwQYNwsxnhdM86pNAIj1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo379iz/e/7Mgdme4dFu9DHO/aKdnYDnZgHaaIBxdlypN44wW5
	HHXMbbH52gJwI79IztObjTeLc6mb+JYeH2vSlDFYkRdKBUbkdzqOBhMZK7OfHj64cQcSJ2dUPZG
	xwUYTofeBPjsw9cBzB5JRdlekrmc=
X-Gm-Gg: ASbGncul/zAYceUlhywhGT5v4c3qgKSFyzs2niRxHDLMLnum9ys4guMje7kS7M+lcTx
	uJe8xPWNLY1XacrlgQQFvayRbwStRDISfLfTptsya2YN6afOfabVoygQsV6LJMGp6ArFn9aMWAn
	pdnofKYLSHrEJNL07GFlbDQh2ZZgqynipDDRsYm4s=
X-Google-Smtp-Source: AGHT+IG6BhZoWxIICbyhwCocwO6xXPSTdwoF7JNw6rq6Z7HpxVUaKQWpWlNOEVmxHVYRzUrHtcVK/scClbl6g5MFXm4=
X-Received: by 2002:a05:6000:1f83:b0:38f:2193:f8c2 with SMTP id
 ffacd0b85a97d-38f6e979541mr4649885f8f.31.1740187421737; Fri, 21 Feb 2025
 17:23:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220041010.3801-1-honyuenkwun@gmail.com> <20250221231340.GS16911@sventech.com>
In-Reply-To: <20250221231340.GS16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 21 Feb 2025 19:23:30 -0600
X-Gm-Features: AWEUYZmVkmKF-0YNx_3i9PYhg9DTepHiFBL2v1CGPi2zlflcOJAt316mjfq3NKU
Message-ID: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 5:13=E2=80=AFPM Johannes Erdfelt <johannes@erdfelt.=
com> wrote:
>
> On Wed, Feb 19, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> > This patchset is looking for testers. I do not have the hardware to tes=
t.
>
> I do have hardware and I gave your branch[1] a test.
Thanks for the test results

>
> The following things tested successfully for me:
> - Kernel boots
> - Ethernet
> - SPI NOR
> - Micro SD card
> - eMMC
> - Bottom M.2 M-key slot (using an NVME drive)
> - USB 2.0 ports
> - Blue LED (using heartbeat trigger at least)
>
> I did not test:
> - RTC
> - UART
> - HDMI1
> - HDMI IN
> - Analog audio
> - Mali GPU
> - Heat sink fan
>
> However, neither of the USB 3.0 ports work. There are no XHCI messages
> during boot. I confirmed my kernel config does build XHCI. I haven't
> ruled out a mistake on my end yet.
Does your kernel config have CONFIG_PHY_ROCKCHIP_USBDP?
Both USB 3 ports on the Max/Ultra ports are wired to the usbdp
controller and not combphy2_psu controller.
It'll be set if you're using the arm64 defconfig.

On my Orange Pi 5 Max, dmesg | grep xhci will show (e.g. io mem)
[    0.769699] xhci-hcd xhci-hcd.4.auto: xHCI Host Controller
[    0.769919] xhci-hcd xhci-hcd.4.auto: new USB bus registered,
assigned bus number 1
[    0.770062] xhci-hcd xhci-hcd.4.auto: hcc params 0x0220fe64 hci
version 0x110 quirks 0x0000808002000010
[    0.770119] xhci-hcd xhci-hcd.4.auto: irq 89, io mem 0xfc000000
[    0.770351] xhci-hcd xhci-hcd.4.auto: xHCI Host Controller
[    0.770585] xhci-hcd xhci-hcd.4.auto: new USB bus registered,
assigned bus number 2
[    0.770602] xhci-hcd xhci-hcd.4.auto: Host supports USB 3.0 SuperSpeed
[    0.770837] usb usb1: Manufacturer: Linux 6.14.0-rc1-2-rockchip-ARCH xhc=
i-hcd
[    0.770844] usb usb1: SerialNumber: xhci-hcd.4.auto
[    0.772069] usb usb2: Manufacturer: Linux 6.14.0-rc1-2-rockchip-ARCH xhc=
i-hcd
[    0.772076] usb usb2: SerialNumber: xhci-hcd.4.auto
[    0.792369] xhci-hcd xhci-hcd.5.auto: xHCI Host Controller
[    0.792640] xhci-hcd xhci-hcd.5.auto: new USB bus registered,
assigned bus number 3
[    0.792781] xhci-hcd xhci-hcd.5.auto: hcc params 0x0220fe64 hci
version 0x110 quirks 0x0000808002000010
[    0.792826] xhci-hcd xhci-hcd.5.auto: irq 90, io mem 0xfc400000
[    0.793058] xhci-hcd xhci-hcd.5.auto: xHCI Host Controller
[    0.793311] xhci-hcd xhci-hcd.5.auto: new USB bus registered,
assigned bus number 4
[    0.793327] xhci-hcd xhci-hcd.5.auto: Host supports USB 3.0 SuperSpeed
[    0.793530] usb usb3: Manufacturer: Linux 6.14.0-rc1-2-rockchip-ARCH xhc=
i-hcd
[    0.793537] usb usb3: SerialNumber: xhci-hcd.5.auto
[    0.794703] usb usb4: Manufacturer: Linux 6.14.0-rc1-2-rockchip-ARCH xhc=
i-hcd
[    0.794710] usb usb4: SerialNumber: xhci-hcd.5.auto

>
> Also, the green LED is constantly lit even when the trigger is set to
> none and the brightness is set to 0. This made is a bit harder to
> confirm that the blue LED was working. I haven't ruled out a mistake on
> my end for this one yet either.
Checking the schematic for the Max and the Ultra, they both use
PWM4_M0 and PWM5_M1 to control the blue and green LEDs.

Have you tried booting the vendor BSP 5.10 or 6.1 kernels? What's the
behavior on those kernels? It's using GPIO pins there, whereas we're
using PWM to be able to control brightness.

>
> I'll also see if I can give HDMI a test.
Please report your results when you do. This is one of the differences
from the Orange Pi 5 Max. The HDMI1 pinctrls does not use the default
pinctrls like other RK3588 boards (including the Orange Pi 5 Plus).

>
> JE
>
> [1] https://github.com/jimmyhon/linux/tree/integrate-6.15
>

Jimmy

