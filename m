Return-Path: <devicetree+bounces-19183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F5C7F9F2B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3B252815C6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467201BDDC;
	Mon, 27 Nov 2023 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="F0PFcyH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF69ECB
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:58:19 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-db35caa1749so3656890276.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1701086299; x=1701691099; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rzykkdRmQIXV1cGG5bs/P5CDUyCKBuHWODaGDxkaJMM=;
        b=F0PFcyH+osgB7D/oiWpkfH6mqiZF0rjnveg/s8SnEusY2GwsQtCKPJuX2ZA+hUU/w5
         2luQoGtyNQZ+ZBvAtkIrsJPabJDr+AB/7qtx4v72WxUMyvLc+bsVmLQ6fgMi3Qf3R4G9
         GJNRPQpNerARPSKKqH61S39AC8SYIXUTfHwWeDgU9veSl5WFK1dz02FiKEvsVAcg5+hW
         Y6EDyl5NGFCgDxp3uYaUU65HUpaCf7dbq/aIIWb/356Vuk7APllmTXR+MhZo26icbVe2
         +K0DJh7ePbe1o5Izsbm9RrcUQnKm3TDD+jutExz1miZebCEUWWrgM2aE2ZrJvgsnTLSH
         E0cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701086299; x=1701691099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rzykkdRmQIXV1cGG5bs/P5CDUyCKBuHWODaGDxkaJMM=;
        b=Yy6N/KxHwYv6CxHMzFUfHfQaV0r4ECbIO5aY/ECWSViA6HWvP2FVkxEhzVR3Rzoh6n
         mrdM+2daS9c5YQ7kcbShzcy4Hup1pHF3oiHm2HQB5PnN1GxnCYY0DxPqYS7rQJgVWLo8
         pQ3EjW4yYMzyMCcBgb6kxnopUBPMPPoElIN7/CiVg1eI6UYPCsoyNXa7BSD7sGpwg6BO
         fjGcqEtKLFsOFLG7h3BYEmiFHfWyHZuMY5b7+drwbr4FrIGa+7fUS+1+Gch6kirTZo4J
         BrhTBA8JjHe0qifUD/bVAAMVYKYChQ7WTNqik0MMSZi/MRkCB56ML3gd7brDvZx61b3F
         TUBQ==
X-Gm-Message-State: AOJu0Yz6OgKWNgdGW/ZpLbDYaCTyb1xYFiU3gf5i3mgVWb6vt3LIq95s
	mbUFAu81NJMNz4Gv6HFYUGeWX7vI+Vu4gAP9qdZxeA==
X-Google-Smtp-Source: AGHT+IHvnK+PpWcCFUlbvPFziMr9wXM5n63mShbyNIFTuT8/W4kxZV1q7SJIr8unEj/O0jY9krCSbec4rRXHBcbT9dQ=
X-Received: by 2002:a25:3626:0:b0:d9c:7d48:3020 with SMTP id
 d38-20020a253626000000b00d9c7d483020mr10756375yba.20.1701086299132; Mon, 27
 Nov 2023 03:58:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231126025612.12522-1-wahrenst@gmx.net> <53e1f6e6-a28e-45af-991e-75b283a21b34@broadcom.com>
 <46320840-09ab-4c86-90c9-bee7b75f248a@gmx.net> <CAMEGJJ3SXHSnasqoMJnshf5Wu92NVi8+NoMdxmMsJH7WH2WjWg@mail.gmail.com>
 <a78f9ba5-ad34-4af2-9817-eeb7dd9d02ef@gmx.net>
In-Reply-To: <a78f9ba5-ad34-4af2-9817-eeb7dd9d02ef@gmx.net>
From: Phil Elwell <phil@raspberrypi.com>
Date: Mon, 27 Nov 2023 11:58:07 +0000
Message-ID: <CAMEGJJ3PpEgD_davgTn9e+re4hosunU+uj_i5sdKMFNLFR5hBA@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: bcm2711-rpi-cm4-io: Enable xHCI host
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Justin Chen <justin.chen@broadcom.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Mathias Nyman <mathias.nyman@intel.com>, 
	bcm-kernel-feedback-list@broadcom.com, Cyril Brulebois <kibi@debian.org>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Nov 2023 at 11:44, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Phil,
>
> Am 27.11.23 um 12:22 schrieb Phil Elwell:
> > On Mon, 27 Nov 2023 at 11:08, Stefan Wahren <wahrenst@gmx.net> wrote:
> >> Hi Justin,
> >>
> >> [add Phil]
> >>
> >> Am 27.11.23 um 07:02 schrieb Justin Chen:
> >>>
> >>> On 11/25/23 6:56 PM, Stefan Wahren wrote:
> >>>> In contrast to the Raspberry Pi 4, the Compute Module 4 or the IO board
> >>>> does not have a VL805 USB 3.0 host controller, which is connected via
> >>>> PCIe. Instead, the BCM2711 on the Compute Module provides the built-in
> >>>> xHCI.
> >>>>
> >>> Does this work? I maintain this built-in xHCI controller internally. I
> >>> wasn't aware the Compute Module uses this block.
> >> i successful tested this with a CM4 (arm 32 bit,
> >> multi_v7_lpae_defconfig) with eMMC. Before this series the USB devices
> >> (mouse, keyboard) connected to the host interface didn't work. After
> >> comparing vendor DTS with mainline i noticed the missing xHCI block [1].
> >> Unfortunately i wasn't able to get further information from the public
> >> datasheets. I don't know if the VideoCore does some magic tricks on the
> >> xHCI or i missed some downstream xHCI changes.
> >>
> >>> This block is held in reset and needs a bit toggled to get things
> >>> going. Florian, just to confirm, this is our "brcm,xhci-brcm-v2" block
> >>> correct?
> >>>
> >>> Justin
> >> [1]  -
> >> https://github.com/raspberrypi/linux/blob/rpi-6.1.y/arch/arm/boot/dts/bcm2711-rpi-ds.dtsi#L119
> > What's the question here? Does the XHCI block present in the
> > raspberrypi/linux dtsi file really exist? Yes it does.
> since i don't have any documentation about the xHCI block, i assumed the
> compatible generic-xhci is correct. But Justin seems to suggest that the
> xHCI block needs some special treatment and we need a specific compatible.
>
> Did i missed some xHCI driver changes?
> Does the VC firmware something to the xHCI especially on CM4?

The firmware switches the on-board USB pins from DWC-OTG to XHCI if
otg_mode=1 is set in config.txt, or if booting over USB MSD. This also
triggers the enabling of the node with the label or alias "xhci".

CM4 is not handled any differently to the other 2711-based devices in
this regard.

Phil

