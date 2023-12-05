Return-Path: <devicetree+bounces-21882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D48057BB
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 15:48:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 839F31C20F71
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DCB065EAB;
	Tue,  5 Dec 2023 14:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="AcoEz9OG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A73911A2
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 06:48:20 -0800 (PST)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E87D13F193
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 14:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701787697;
	bh=qEnhI07ZwfWB+LTPcQ8NmAlx9Ikuvbn1P7U+F8t2Qu8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=AcoEz9OGd+pLZdunrcGZ/GQx1V0ci3o5IXBl+Toi+KNOWb3xBNCjQ/U4CZJtgc7xI
	 yKwiKByPp+PVfs05fWNjgJA14qzTNtdPlrNYyNRvoU1BHtfsk11cmsxzkf2doNv2ru
	 NWjLsTiX/kQRbRa1T7VML9uJwvH6SA1dRf5tjdF2UkOCk+OehJUwPhsA4SObtFIVSn
	 /gi08NSakbodnl66H5YMmQ0BVxF7IHT5kfVTAd07S9kvYEmn2W0ck75qNs7B8ig9nh
	 pslvJ4DyOA1F8MqfujRbHQNym6W75Gsfc86PUUlejZUniXsQL8bVl0L0VadBtLsZ4N
	 S96eladuJdSTA==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-423e91275deso81579401cf.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 06:48:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701787697; x=1702392497;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qEnhI07ZwfWB+LTPcQ8NmAlx9Ikuvbn1P7U+F8t2Qu8=;
        b=FPtd9LgkaZ37HWdiFZzV6CZI5POHdcIt1NSlOSjrSeQQ81F4eOHkgLDchRx/iBCagE
         8RHjibYsqFngh4aLAUesT5S/w/8QOqp2YcN6rxvj14jP/mFoIhO9x3MMf8RNKi9ccJYZ
         E67yzM6zIIL2BifOMzY6v3UJdGhMlWgZGGyrwEAdccw50LIbuKpraGUbS+0jG3aHpJ5R
         Z9sO1gAl2pL72HEdCAas7Q7UlZyQC+n2yoSTMO4XpeEu6LzTzlqGO9elJG0YuQl2phPu
         r2U/oFJ79yqfyBG+Noio6asLD3UTEuYs27wYTk7rwKcaA4JpmACrmfjBp1ZDGixxyYRS
         ZP9Q==
X-Gm-Message-State: AOJu0YybAFs1DYo21ivINAt3k/jdeATewz8t+XKyATB8Zq0znL4oBCjK
	cVuaxz449W+aF7aeDgtse8sWKKBmuRzln72wlT+7TVolWpjZwWI/vZWq1WtJwE7iUdzOWIe6EZm
	dUWUrO3Oqjq3P9oOr0DxDcnF5hza5vBrPlOTH0WixtbxKOVwU1iw/ZwA=
X-Received: by 2002:a05:622a:1710:b0:425:4043:50dd with SMTP id h16-20020a05622a171000b00425404350ddmr1598964qtk.108.1701787697069;
        Tue, 05 Dec 2023 06:48:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG71k7SKMvRXL2M2tH5A/loLjfSKdVaIPyTunW1cRPFE3sVg34XcteHWngtpsKmAJPNbO86Hgqy82wP/ARNZmE=
X-Received: by 2002:a05:622a:1710:b0:425:4043:50dd with SMTP id
 h16-20020a05622a171000b00425404350ddmr1598950qtk.108.1701787696839; Tue, 05
 Dec 2023 06:48:16 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Dec 2023 06:48:16 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZW8zHoVWf94FDTx7@xhacker>
References: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com>
 <20231129-th1520_mmc_dts-v7-2-c77fc19caa6f@baylibre.com> <CAJM55Z-qc7gc0fO-K8byqvpOBjDxFD4dP57mFHuijvpOzBWObQ@mail.gmail.com>
 <ZW8zHoVWf94FDTx7@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 5 Dec 2023 06:48:16 -0800
Message-ID: <CAJM55Z9tPTu4N4UVCBs1AJYWrWxMUDL+8FpVZtGx4yQgKenWSQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
To: Jisheng Zhang <jszhang@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Drew Fustini <dfustini@baylibre.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Jason Kridner <jkridner@beagleboard.org>, Robert Nelson <robertcnelson@beagleboard.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> On Mon, Dec 04, 2023 at 01:47:45AM -0800, Emil Renner Berthing wrote:
> > Drew Fustini wrote:
> > > Add node for the SDHCI fixed clock. Add mmc0 node for the first mmc
> > > controller instance which is typically connected to the eMMC device.
> > > Add mmc1 node for the second mmc controller instance which is typically
> > > connected to microSD slot.
> > >
> > > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> > > ---
> > >  arch/riscv/boot/dts/thead/th1520.dtsi | 25 +++++++++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > index ba4d2c673ac8..af4fdcd82e0b 100644
> > > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > > @@ -146,6 +146,13 @@ uart_sclk: uart-sclk-clock {
> > >  		#clock-cells = <0>;
> > >  	};
> > >
> > > +	sdhci_clk: sdhci-clock {
> > > +		compatible = "fixed-clock";
> > > +		clock-frequency = <198000000>;
> > > +		clock-output-names = "sdhci_clk";
> > > +		#clock-cells = <0>;
> > > +	};
> > > +
> > >  	soc {
> > >  		compatible = "simple-bus";
> > >  		interrupt-parent = <&plic>;
> > > @@ -304,6 +311,24 @@ dmac0: dma-controller@ffefc00000 {
> > >  			status = "disabled";
> > >  		};
> > >
> > > +		mmc0: mmc@ffe7080000 {
> > > +			compatible = "thead,th1520-dwcmshc";
> > > +			reg = <0xff 0xe7080000 0x0 0x10000>;
> > > +			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
> > > +			clocks = <&sdhci_clk>;
> > > +			clock-names = "core";
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		mmc1: mmc@ffe7090000 {
> > > +			compatible = "thead,th1520-dwcmshc";
> > > +			reg = <0xff 0xe7090000 0x0 0x10000>;
> > > +			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
> > > +			clocks = <&sdhci_clk>;
> > > +			clock-names = "core";
> > > +			status = "disabled";
> > > +		};
> > > +
> >
> > Hi Drew,
> >
> > This doesn't seem to match the documentation shared here:
> > https://lore.kernel.org/linux-riscv/5f437109d2be2b8843f549a661054a2e3ec0d66e.camel@xry111.site/
> > From the TH1520 System User Manual.pdf in there, I'd expect something like
>
> >
> > 	emmc: mmc@ffe7080000 {
> > 		compatible = "thead,th1520-dwcmshc";
> > 		reg = <0xff 0xe7080000 0x0 0x10000>;
> > 		...
> > 	};
>
> Hi Emil,
>
> I think this isn't necessary. From other soc dts files, I see such
> naming, but lots socs just use mmc0, mmc1, and so on.

No it certainly isn't necessary. Those labels are purely for us humans to read
and are not present in the dtb. But that's exactly why I think it'd be a good
idea match the labels with the documentation, so it will easier for us humans
to match up the device tree source to documentation.

> And IIRC, the host for sd and sdio can support both, IOW, below
> sdio0/sdio1 may be used for sdcard.

Yes, all of the EMMC, SDIO0 and SDIO1 seem to be instances of the same IP.

/Emil

