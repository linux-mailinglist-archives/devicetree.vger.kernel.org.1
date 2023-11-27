Return-Path: <devicetree+bounces-19167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0763B7F9E6A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D887B20D86
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E950199AF;
	Mon, 27 Nov 2023 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Er9wtzOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D253101
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:22:30 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5cd81e76164so33600727b3.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1701084149; x=1701688949; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OSqZ1LC6PGby35X/pA57G3jaWFYPlkSXydb/PTyGgHA=;
        b=Er9wtzOl4UOjL6/wDJvyokS/F5UiRE6HX2S97Gh/CGtwpHiKb6/hK7gSYS5+2LMu1j
         INX1gdRJwWGCmW9+2uikRg357zUeVSTZHsqX7NCyQB1AFiAfoQP6bPmY/VNPuXNN2uoI
         QewpaGXbIkSi3OVemN2vbfbhoorP8av8oVf8caEhJNiZL2ppvhfbakSWpbsEO9Ba0049
         +csafNypRk2ZP77dj4jG0JoqDyU7V7yQ8vJBL5SiZ+2DDY1RdhX8QTULG6tSVvLReHN9
         yqsNt9NCSY3dEDbJFKdRecPHzwW29spI92CpLIT2zX7H8/HF65UzS3TkW0enykwAR1OD
         cV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701084149; x=1701688949;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OSqZ1LC6PGby35X/pA57G3jaWFYPlkSXydb/PTyGgHA=;
        b=i3ZxvVftun2yVCJgSTTO3izBd95V0CkgTHbV4q34S17aRlDgBsHB7B9jNcSN+NWRZM
         Wo4WksXswOLOUvF40NAtCKe2iyEhxGxF6ZSyaPYalm5h0LyGPocQb12l07gWxnRiqaAD
         nvSJXrFy08dB8pvVwpNbRjBkkupkR5KNWh0ihN4o8uEgTW6SMLMQ2I2TGQgKuTa/IuoT
         JYjjd4SVCG1/kSQ8tBZqxEFBM918OO+pn8yDaT5kt6lIQNR9kqlVbNXqnNkipfp9EUeZ
         LS0NnyyekL1eROBDGz0ppgE0OMELbzeRd3xYF6qkRCPDDbH+jjqfaMwB/1kYdmuTRfVn
         4aLw==
X-Gm-Message-State: AOJu0YyglVsVKtFWD5xPqf3u1YkWn6JRaEc/EP4enHerCYQ+xQYcqlzn
	v8b+hGyQm4A9SbNWuaMUdbzXn4D7PzWl20j8i77Lkw==
X-Google-Smtp-Source: AGHT+IGT+Jz3oRbJCMrN6JyHccuWIXHwb/Z0VM3wtO5suAsKP8/c6a5/8jFBvlwnttH2xjITgHkAfzkay/sSr2Kyonk=
X-Received: by 2002:a81:8083:0:b0:5cd:ad4:16dd with SMTP id
 q125-20020a818083000000b005cd0ad416ddmr11792845ywf.45.1701084149374; Mon, 27
 Nov 2023 03:22:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231126025612.12522-1-wahrenst@gmx.net> <53e1f6e6-a28e-45af-991e-75b283a21b34@broadcom.com>
 <46320840-09ab-4c86-90c9-bee7b75f248a@gmx.net>
In-Reply-To: <46320840-09ab-4c86-90c9-bee7b75f248a@gmx.net>
From: Phil Elwell <phil@raspberrypi.com>
Date: Mon, 27 Nov 2023 11:22:17 +0000
Message-ID: <CAMEGJJ3SXHSnasqoMJnshf5Wu92NVi8+NoMdxmMsJH7WH2WjWg@mail.gmail.com>
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

On Mon, 27 Nov 2023 at 11:08, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Justin,
>
> [add Phil]
>
> Am 27.11.23 um 07:02 schrieb Justin Chen:
> >
> >
> > On 11/25/23 6:56 PM, Stefan Wahren wrote:
> >> In contrast to the Raspberry Pi 4, the Compute Module 4 or the IO board
> >> does not have a VL805 USB 3.0 host controller, which is connected via
> >> PCIe. Instead, the BCM2711 on the Compute Module provides the built-in
> >> xHCI.
> >>
> >
> > Does this work? I maintain this built-in xHCI controller internally. I
> > wasn't aware the Compute Module uses this block.
> i successful tested this with a CM4 (arm 32 bit,
> multi_v7_lpae_defconfig) with eMMC. Before this series the USB devices
> (mouse, keyboard) connected to the host interface didn't work. After
> comparing vendor DTS with mainline i noticed the missing xHCI block [1].
> Unfortunately i wasn't able to get further information from the public
> datasheets. I don't know if the VideoCore does some magic tricks on the
> xHCI or i missed some downstream xHCI changes.
>
> > This block is held in reset and needs a bit toggled to get things
> > going. Florian, just to confirm, this is our "brcm,xhci-brcm-v2" block
> > correct?
> >
> > Justin
>
> [1]  -
> https://github.com/raspberrypi/linux/blob/rpi-6.1.y/arch/arm/boot/dts/bcm2711-rpi-ds.dtsi#L119

What's the question here? Does the XHCI block present in the
raspberrypi/linux dtsi file really exist? Yes it does.

Phil

