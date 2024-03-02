Return-Path: <devicetree+bounces-47884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB07986F142
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 17:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2376028374B
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 16:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE550182DA;
	Sat,  2 Mar 2024 16:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Ecisy93M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49DE1B7F1
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 16:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709396740; cv=none; b=FtH0y36nLEWdVlXkAXEDP7xHbJlO18hhL1ksYXelHmDvRi6O1x133yZlqF6ubF0E9fAcoAyf5K3s5I5VpW7M5bekb34MpHZ9j8EqnIlXWGL290wf42+8x6C5QCDN5aZ24V3Vmb1/K0oxQbuhMV0oD+LMFZiXxMrzS7BsQA9wgkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709396740; c=relaxed/simple;
	bh=5NfjuyeY2ikFZbmpG31sjOPund0RcEnrNB2f/Zb9DDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UpKLGBMdqzwwTkF5hx2CAeb+fYr9vvccJRQMVS5MPh6p0tSP5AOYAgwHGC6l5dT3RfM0w1EAgX/i71PS6+Y+6NeqcPNeUnBUZGTodvqPTbLhLCIDz8YpFdkI4j4JiXLf4OzVgFi8s88GOjSlmPf7HN52UVUIuX1nj9TpWN6v46c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Ecisy93M; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-5ce942efda5so2599486a12.2
        for <devicetree@vger.kernel.org>; Sat, 02 Mar 2024 08:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1709396738; x=1710001538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R9/YuUxiflBj/i7dlvu2dwZ2BOHGnZHPe68SJ562I/U=;
        b=Ecisy93M/WxK0q2Cs19/xuQehb7OxtQ+azxJ34Iv4zpjWoJuB0A+U5rFrJUv2snolo
         EqcfLh94zZbPJOYm5EVJ/zZ0exxOWpBdUSesi1UCaBEReaX89wbrwwyEZg6f1lirVvwK
         UJO/bK5kGla0OqrZFfwa8sHJMH3RSElUqWtxdcUxKlWIWNKWITBePzCV3HOoxEq6Ct/8
         UYwkYmmAY1GN8uN4j8mJ5olFBlyTTPOHg0GRK3HDDPZhgoid+9XdGkphfQy/ovgJlsdS
         QhmGygVkHf+czdQBtmy4VUvrl1M7nt5H5YRmvc/tiV49cZHhSZy6xHjm6XvKUiNUjzDD
         HU9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709396738; x=1710001538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R9/YuUxiflBj/i7dlvu2dwZ2BOHGnZHPe68SJ562I/U=;
        b=EspFvIu3RAdpREPK4AtYIm0OypFNPWDmzon6hkTtmUFim5zY+DkCHQeacb1+xeRWu1
         PTIZY+C60QOLeC8htk3AYhuipmVN+jca0qPsZoZnD34xdhDxiFru0suIOPbBW6CFJsvA
         wCRIBumr0P2FxPAuTcIa3vPons08M5R4rSeKPOkpfhWzI8je2eejzPZSN3jIEOBafo4u
         r4/Y/wbWNUukklYwOxXah824uTiGMcMTir3mygrkqAHptfOkUb+xoUCOxMThvU0W9quv
         bR/jE19C5+IdvV7UCH4gvrJyB7yC6AUp+yqfvhYM3CDhyzjdaDbWDdl+5Bb0vbhB2iHl
         jwkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWS9s72GqPPi81Zi37viz8g07JL8amIRIe1/xjPW6h1eix15NbpQjzAswObKJAJMvYsNkVa9wd8aYoU62m275Ef+1nRS9zZ7AyPmA==
X-Gm-Message-State: AOJu0YwPZvTUD0J6P6xud6ZF1qNZioAiRlSY7XEoyI+8yl7ZI2Pq4Nad
	wwx24ROC8F6LWgdi02XgDVZq5sirdVFDx7zPmN7+QD2EDJUO8hehCaN/Eea6w7Y=
X-Google-Smtp-Source: AGHT+IGz5ydp8f/FL7iMoHWtfNWf/avYYvGrHo/a099vxFmdwF5bKNFgKW2Lp1/7FBnl5Nhc3MIREg==
X-Received: by 2002:a05:6a20:4f12:b0:1a1:4879:1d72 with SMTP id gi18-20020a056a204f1200b001a148791d72mr1110067pzb.55.1709396737997;
        Sat, 02 Mar 2024 08:25:37 -0800 (PST)
Received: from x1 (067-049-117-115.res.spectrum.com. [67.49.117.115])
        by smtp.gmail.com with ESMTPSA id a5-20020a634d05000000b005d553239b16sm4739328pgb.20.2024.03.02.08.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Mar 2024 08:25:37 -0800 (PST)
Date: Sat, 2 Mar 2024 08:25:34 -0800
From: Drew Fustini <dfustini@tenstorrent.com>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Drew Fustini <dfustini@baylibre.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v8 4/4] riscv: dts: thead: Enable LicheePi 4A eMMC and
 microSD
Message-ID: <ZeNS/g97JetYgXny@x1>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
 <20231206-th1520_mmc_dts-v8-4-69220e373e8f@baylibre.com>
 <110fa8d6be78a26ca21cd97c55903f5d62776430.camel@xry111.site>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <110fa8d6be78a26ca21cd97c55903f5d62776430.camel@xry111.site>

On Sat, Mar 02, 2024 at 10:13:55PM +0800, Xi Ruoyao wrote:
> On Wed, 2023-12-06 at 00:09 -0800, Drew Fustini wrote:
> > Add emmc node properties for the eMMC device and add sdio0 node
> > properties for the microSD slot. Set the frequency for the sdhci
> > reference clock.
> 
> Hi Drew,
> 
> I've been using the emmc on LicheePi 4A for a while without any problem,
> but when I try the microSD slot I get:
> 
> [    0.531804] mmc1: SDHCI controller on ffe7090000.mmc [ffe7090000.mmc] using ADMA 64-bit
> [    0.842674] mmc1: Tuning failed, falling back to fixed sampling clock
> [    0.855139] mmc1: tuning execution failed: -5
> [    0.859609] mmc1: error -5 whilst initialising SD card
> [   11.359879] mmc1: Timeout waiting for hardware cmd interrupt.
> [   11.365661] mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
> [   11.372105] mmc1: sdhci: Sys addr:  0x00000001 | Version:  0x00000005
> [   11.378547] mmc1: sdhci: Blk size:  0x00007040 | Blk cnt:  0x00000000
> [   11.384989] mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000010
> [   11.391432] mmc1: sdhci: Present:   0x03ff0000 | Host ctl: 0x00000017
> [   11.397873] mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000000
> [   11.404312] mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x0000000f
> [   11.410753] mmc1: sdhci: Timeout:   0x00000004 | Int stat: 0x00000000
> [   11.417192] mmc1: sdhci: Int enab:  0x00000020 | Sig enab: 0x00000020
> [   11.423633] mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> [   11.430073] mmc1: sdhci: Caps:      0x3f69c881 | Caps_1:   0x08008177
> [   11.436513] mmc1: sdhci: Cmd:       0x00000102 | Max curr: 0x00191919
> [   11.442954] mmc1: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x07725f7f
> [   11.449394] mmc1: sdhci: Resp[2]:   0x32db7900 | Resp[3]:  0x00400e00
> [   11.455835] mmc1: sdhci: Host ctl2: 0x0000300b
> [   11.460280] mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0x0000000000882220
> [   11.467416] mmc1: sdhci: ============================================
> [   11.563828] mmc1: Tuning failed, falling back to fixed sampling clock
> [   11.576053] mmc1: tuning execution failed: -5
> [   11.646438] mmc1: new high speed SDXC card at address aaaa
> [   11.653170] mmcblk1: mmc1:aaaa SR256 238 GiB
> 
> I can write something into the SD card and read it back though.  But
> this makes me reluctant to use the SD card for "some real thing" afraid
> of a data loss.
> 
> The SD card is a SanDisk Extreme Pro 256GB (rated "U3, A2, V30").
> 
> Any idea how to debug this issue further?  (Maybe I should try change
> the SD card first but I'd like to discuss the issue before paying money
> for another card.)

Revy informed me that downclocking from 198 MHz to 100 MHz [1] has been
observed to solve this problem. Could you try the following dts patch?

Also, I have noticed the T-Head's 5.10 vendor kernel does have some
updates in sdhci-of-dwcmshc.c related to tuning. I'll look at porting
those to the upstream driving.

Thanks,
Drew

[1] https://github.com/revyos/thead-kernel/pull/62
[2] https://github.com/revyos/thead-kernel/commit/afef388b8e26f0d77f9d2261b6e57991941a213f#diff-ba729b399f3cb86d6a2503890c3626a6426c1572a54f24cd7ab3337f5fc75674

------ [cut here] --------
From db4d406fc15c76317993a39a72061d3df47e86f0 Mon Sep 17 00:00:00 2001
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sat, 2 Mar 2024 08:21:50 -0800
Subject: [PATCH] riscv: dts: thead: downgrade microSD to 100 MHz max

Downgrade max freq for microSD controller from 198 MHz to 100 MHz to
avoid timeout errors.

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1365d3a512a3..d6ae671f94a9 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -53,6 +53,6 @@ &emmc {

 &sdio0 {
        bus-width = <4>;
-       max-frequency = <198000000>;
+       max-frequency = <100000000>;
        status = "okay";
 };
--
2.34.1

