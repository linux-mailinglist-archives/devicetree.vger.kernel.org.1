Return-Path: <devicetree+bounces-99992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD05B96BBCD
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DBC61F2530D
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94451D799E;
	Wed,  4 Sep 2024 12:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eXBeZN7s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988361D220E
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725452256; cv=none; b=cQooYSREEvBU30+UjFrpZKFQoM9qbtMbiy9ZclKoukfUCVpt0wsqYIcllOQd3HEFZQ9f+JI9BeeexcrBlucXsJEkbu/Ucjc0CH9Wb2EbR7lfDI6ly8fHtE3ZS198VLT5cep9qXW9LnXs9tceMSuDvmN2LbjJ994afFlRORIVBrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725452256; c=relaxed/simple;
	bh=zj4T6WIZPeDa2vmSh0wjtMlkCysvSJAyGYFqeXOmG2g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XWwypP12P0nTQQc/Z6Z/Son2ZYv1LFz2VQzhIPljL3mJaBwC0H0xs+KXKPme/nQCWUDY32ykoVDheWahbDUoXsfqmie4CznbOxCY9LTjU2E9HIdHtAq3714orFW2l2J6axVK819UucmpW/ZGJ69hhnLazjQdE3UXs9guZP69HQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=eXBeZN7s; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f3edb2d908so20493851fa.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 05:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725452253; x=1726057053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Dou6mOpsNIsQhbLYqI2p6f69XLT/g8gRU79/Y8W7xI=;
        b=eXBeZN7s7RaJeXKMfFQzr3eREESwYsefuTID6B+eCWl+HocnK3FU31VHPkIKkuX48E
         4mejZv9JOfwJeFBtiGbc97+MBYfP83Z8YCA0AgPXYcPBGyuD+mWWEx0tt8Mrls7GNePL
         N7HGkclE/bH3Z2DJphY008aSCyhEp58btEjIvncLgJjD5+RLMjt9lYNaRWBiz27N7oPv
         e/7Wr7ABMoPce4RjQk4553dvz2aHQ56HaD7eY3ecfOUwU9lhns2rv8bARxfwQAsZYU2E
         js4jt4p5GUg2587cqJlNGawX3RGivvhK1QjyfHi6FuvD4Gs3qmY6jqdl+Yz0BSQHinil
         hxcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725452253; x=1726057053;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Dou6mOpsNIsQhbLYqI2p6f69XLT/g8gRU79/Y8W7xI=;
        b=TIlTKAM6/yteNRi+txo5X8nq17XfIadqMa/aLTK398AdQnP1P29o5ghwcEASCuNMVE
         rmO3PCu2B7aCqOKIgId38ih7XT4Gr/FmaczGnZyJ8UvSb01xdn0yrG8bk4sfnBwJRUdA
         RgBgfpluDSRUIewCCRGgoDBu7AqRs4Kx9LgATYYqfM/lwjLECST+3Bzqm8o1Lxa7gD1+
         XCAhpn8MymnZNM3yffHY19HT+ZFR1/aSbzk29U6MCPHot7X2aaK1IqEIdyzJw75anlgQ
         8CC2IrSdaAHInGYp+gHl6YTUZEJdwuNT2N6OJ9WavW3TszfkkqeBnIdhoM9D1OLDdFGC
         94Jg==
X-Forwarded-Encrypted: i=1; AJvYcCWvoJmMXk1fnZVU5HYa0utCVsWwpH0oeG43C2XSAeSNHeX0dfSXNz4oYv/3ynXDyhNgeC+YoJj1X003@vger.kernel.org
X-Gm-Message-State: AOJu0YwP52Mo4cOJL490DyuGJ/B7d1Ychm0NE4vagh1U44i3NNWQJpv9
	rNGq+R/cKvQ214VRA+zuWoIl1BeQbxzSjS2lszE52EQ6QTzITCYCcdXk0A8e1rI=
X-Google-Smtp-Source: AGHT+IHIB0jGC+rRkMo8IDU8M56OjRH4fYE4YIr0S9tvlFg9or1QcS58k5s2WfCgUk3OlQ5thdo7OQ==
X-Received: by 2002:a2e:1312:0:b0:2f3:d82b:1959 with SMTP id 38308e7fff4ca-2f64441ec9fmr46353361fa.23.1725452252267;
        Wed, 04 Sep 2024 05:17:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226c7c39bsm7568836a12.52.2024.09.04.05.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 05:17:31 -0700 (PDT)
Message-ID: <d8303146-89e0-4229-a3fe-9f3c42434045@tuxon.dev>
Date: Wed, 4 Sep 2024 15:17:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] arm64: dts: renesas: r9a08g045: Add VBATTB node
Content-Language: en-US
To: Stephen Boyd <sboyd@kernel.org>, alexandre.belloni@bootlin.com,
 conor+dt@kernel.org, geert+renesas@glider.be, krzk+dt@kernel.org,
 magnus.damm@gmail.com, mturquette@baylibre.com, p.zabel@pengutronix.de,
 robh@kernel.org
Cc: linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
 <20240830130218.3377060-8-claudiu.beznea.uj@bp.renesas.com>
 <83fac884d749bda0cf0b346e4e869bc8.sboyd@kernel.org>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <83fac884d749bda0cf0b346e4e869bc8.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Stephen,

On 03.09.2024 22:48, Stephen Boyd wrote:
> Quoting Claudiu (2024-08-30 06:02:13)
>> diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> index 067a26a66c24..247fa80a4f53 100644
>> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>> @@ -160,6 +160,18 @@ i2c3: i2c@10090c00 {
>>                         status = "disabled";
>>                 };
>>  
>> +               vbattb: vbattb@1005c000 {
>> +                       compatible = "renesas,r9a08g045-vbattb";
>> +                       reg = <0 0x1005c000 0 0x1000>;
>> +                       interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>> +                       clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb_xtal>;
>> +                       clock-names = "bclk", "rtx";
>> +                       #clock-cells = <1>;
>> +                       power-domains = <&cpg>;
>> +                       resets = <&cpg R9A08G045_VBAT_BRESETN>;
>> +                       status = "disabled";
>> +               };
>> +
>>                 cpg: clock-controller@11010000 {
>>                         compatible = "renesas,r9a08g045-cpg";
>>                         reg = <0 0x11010000 0 0x10000>;
>> @@ -425,4 +437,11 @@ timer {
>>                 interrupt-names = "sec-phys", "phys", "virt", "hyp-phys",
>>                                   "hyp-virt";
>>         };
>> +
>> +       vbattb_xtal: vbattb-xtal {
> 
> The node name should be something like clock-<frequency> but if the
> frequency is different per-board then I don't know what should happen
> here.

The frequency should be always around 32768 Hz but not necessarily exactly
32768 Hz. It depends on what is installed on the board, indeed. RTC can do
time error adjustments based on the variations around 32768 Hz.

> Can you leave the vbattb_xtal phandle up above and then require
> the node to be defined in the board with the proper frequency after the
> dash?

Is it OK for you something like this (applied on top of this series)?

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index f31ec08a1e1d..60679211dc48 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -181,7 +181,8 @@ vbattb: clock-controller@1005c000 {
                        compatible = "renesas,r9a08g045-vbattb";
                        reg = <0 0x1005c000 0 0x1000>;
                        interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-                       clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>,
<&vbattb_xtal>;
+                       /* rtx clock must be overridden by the board. */
+                       clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <0>;
                        clock-names = "bclk", "rtx";
                        #clock-cells = <1>;
                        power-domains = <&cpg>;
@@ -454,11 +455,4 @@ timer {
                interrupt-names = "sec-phys", "phys", "virt", "hyp-phys",
                                  "hyp-virt";
        };
-
-       vbattb_xtal: vbattb-xtal {
-               compatible = "fixed-clock";
-               #clock-cells = <0>;
-               /* This value must be overridden by the board. */
-               clock-frequency = <0>;
-       };
 };
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 95b79a03d3d5..46cce0d48ddc 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -47,6 +47,12 @@ chosen {
                stdout-path = "serial0:115200n8";
        };

+       vbattb_xtal: clock-32768 {
+               compatible = "fixed-clock";
+               #clock-cells = <0>;
+               clock-frequency = <32768>;
+       };
+
        memory@48000000 {
                device_type = "memory";
                /* First 128MB is reserved for secure area. */
@@ -351,14 +357,11 @@ &rtc {
 };

 &vbattb {
+       clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb_xtal>;
        renesas,vbattb-load-nanofarads = <12500>;
        status = "okay";
 };

-&vbattb_xtal {
-       clock-frequency = <32768>;
-};
-
 &wdt0 {
        timeout-sec = <60>;
        status = "okay";


Thank you for your review,
Claudiu Beznea

> 
>> +               compatible = "fixed-clock";
>> +               #clock-cells = <0>;
>> +               /* This value must be overridden by the board. */
>> +               clock-frequency = <0>;

