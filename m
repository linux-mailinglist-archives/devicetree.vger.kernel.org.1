Return-Path: <devicetree+bounces-108414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 564D499293C
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79F281C230E5
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456AA1C2DC3;
	Mon,  7 Oct 2024 10:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="RpvAQ08f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933D61C2323
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 10:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728297059; cv=none; b=nv2f0yz9UuZfhINNukOykd1jfQyqG0ihGDRr03LnXJjftu2qTO8XzTj+ilMuXHHMqqlZvlCSaXZnNboPScSaNOwVqQFp5bEKP5eQkpTVw4PkOa94VNuZzTvKQlpF2CR1hKRRUwV1c1WuwkaGiix6zlpRk2A7G6WWUjTQMt5YT/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728297059; c=relaxed/simple;
	bh=3ZJyfq4JDQhVdtjPtavPZp/Y/vxzE5ktyZdNHTJWC5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rSOMzAMHqRfOmVeg/HM6xg1cuhglSgxJIbQFi/IY4URn7CxdEJ/fgW0/GkpfZMerEJvlMIl0aY1zMzUMQyGNaOuyonZCTMggl7dWPVXXjAq9KgCR8M43F5buui05VDXO8qTJnOSSZzzsFdnE+MQAjQGCADBsPWRj7zQelVvklBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=RpvAQ08f; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2e18856feb4so3578225a91.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 03:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1728297056; x=1728901856; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0A/0XsNN2HZS+Fvt8eFHQQqkpucDr5BFsebIII79Oac=;
        b=RpvAQ08fp4mD/7KvH8um1Vu0um/k5Bz2IBG5ybEqbm9c/uwytPGT9Q7ehhHktK8wCc
         UOzGNQEgjXr3uXsmCpZYVLApRqOQLLHC/f4HU1StGm4kTa5qP7fp526VBFSg26E0hae2
         Wm8wCKItpfE+wSCuU6Sp/8FDD2tAQgOCXAU1XBrCzUjf9LAuymYB21ssuKjK/LFUO/4G
         U24xc1M1F3ar1VyLNU1rAaMT7FyRibvRTFN3jRkzcT7sDvnh8+wD1xluzyZbrhXpKHnW
         s2rOXgQTh2JKmfaJeWCcWJByd7t0vVDoXMLhyVqFZIZwWYGwPilMcdZR/+LPnr19xQzQ
         x27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728297056; x=1728901856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0A/0XsNN2HZS+Fvt8eFHQQqkpucDr5BFsebIII79Oac=;
        b=xTLBrcLW2kuALcVB91saaZkKYuKqNQEetgC5K8lTPl0ykgMQwQhTze4lJMbQFUNk3P
         xTPHsrwgRc1BEaRQqPU4if8r+Gzxac+sek+dFlwfRD41+948hCrSad9TFp/hn7PZFhqF
         dICbTy9dEjAcG8WxvVW/dl4dsZVTVHKjwPudj/J3DOoyeISpxZI/xjYzblYsvrTepKH8
         zoL2rvW0FEnO3/y571rqGTMWTDGgrbW3OYCV/PNwQriP1iyxifxCqEkFAaS1IwrFOAZV
         pTQBuHWXyOh2Gul7XvXByLeoDwFruQVFSPSsxAS7j73FroQKeLIQRDQbxk4vXQhuPqyK
         tTcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNh540dHBkCFA7l0GO/LDfwo5rO5T3BrTgqJ6XHuA6cZDflvI2fzfMdYI11w+D1keJKovgvTCxNOl1@vger.kernel.org
X-Gm-Message-State: AOJu0YzEWcILIBN7hj4EvjvMt8ZiQyyZ7Liw686RGaGehQwWnb/0Kyzr
	wUFZ3CHqPX04oA7J7pMW9jcmF2zavIPqZdhfngxktU3e25atnoEwcHQ5mqQle7gl90rmRlE0di3
	lYGtbyHP8VCgk6oqQDep4NimeienqdbWCaiTkuYFPcbHf/wV96yLbBA==
X-Google-Smtp-Source: AGHT+IH9pjWkzFiga6itF0xXR3zeR1/82MeOJw5EQPSDLMjKpKVt0b6Fo5VpT8YL11c7+1oyKejSgpfsmKtfS+PsB4I=
X-Received: by 2002:a17:90b:4ac4:b0:2d8:ca33:42a5 with SMTP id
 98e67ed59e1d1-2e1e6367493mr11752833a91.40.1728297055783; Mon, 07 Oct 2024
 03:30:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241002084023.467383-1-naresh.solanki@9elements.com>
 <172790540060.1353939.8456815650107227718.robh@kernel.org> <be2630fe0abf590866c306880395659b33128111.camel@codeconstruct.com.au>
In-Reply-To: <be2630fe0abf590866c306880395659b33128111.camel@codeconstruct.com.au>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Mon, 7 Oct 2024 16:00:44 +0530
Message-ID: <CABqG17jxwBNT9dijNkYZtG2UJ-9L4XJP-zXO9LdQkaUqsNdo8A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: aspeed: add IBM SBP1 board
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: linux-aspeed@lists.ozlabs.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

+Guenter Roeck

On Thu, 3 Oct 2024 at 05:13, Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
>
> Hi Naresh,
>
> On Wed, 2024-10-02 at 16:45 -0500, Rob Herring (Arm) wrote:
> > On Wed, 02 Oct 2024 14:10:17 +0530, Naresh Solanki wrote:
> > > Document the new compatibles used on IBM SBP1.
> > >
> > > Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> >
> >
> > My bot found new DTB warnings on the .dts files added or changed in this
> > series.
> >
> > Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> > are fixed by another series. Ultimately, it is up to the platform
> > maintainer whether these warnings are acceptable or not. No need to reply
> > unless the platform maintainer has comments.
> >
> > If you already ran DT checks and didn't see these error(s), then
> > make sure dt-schema is up to date:
> >
> >   pip3 install dtschema --upgrade
> >
> >
> > New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-sbp1.dtb' for 20241002084023.467383-1-naresh.solanki@9elements.com:
>
> A bunch of what follows are issues caused by the lack of dt-schema
> bindings for the ASPEED SoC peripherals. You can ignore those errors
> for now.
>
> However, some of those below are specific to your devicetree. Can you
> please address them?
Sure
>
> >
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: timer: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/timer/arm,arch_timer.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /sdram@1e6e0000: failed to match any schema with compatible: ['aspeed,ast2600-sdram-edac', 'syscon']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: bus@1e600000: compatible: ['aspeed,ast2600-ahbc', 'syscon'] is too long
> >       from schema $id: http://devicetree.org/schemas/bus/aspeed,ast2600-ahbc.yaml#
>
> For instance, ignore the above for now.
ok
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mdio@1e650010: Unevaluated properties are not allowed ('reset-assert-us', 'reset-deassert-us' were unexpected)
> >       from schema $id: http://devicetree.org/schemas/net/aspeed,ast2600-mdio.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mdio@1e650018: Unevaluated properties are not allowed ('reset-assert-us', 'reset-deassert-us' were unexpected)
> >       from schema $id: http://devicetree.org/schemas/net/aspeed,ast2600-mdio.yaml#
>
> Check the bindings regarding these - it seems they should go in a phy
> subnode of the MDIO controller.
Yes. You're absolutely right. These should be under the phy node. Will
update in the next patchset.
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: syscon@1e6e2000: 'smp-memram@180' does not match any of the regexes: '^interrupt-controller@[0-9a-f]+$', '^p2a-control@[0-9a-f]+$', '^pinctrl(@[0-9a-f]+)?$', '^silicon-id@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/mfd/aspeed,ast2x00-scu.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/syscon@1e6e2000/smp-memram@180: failed to match any schema with compatible: ['aspeed,ast2600-smpmem']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/syscon@1e6e2000/interrupt-controller@560: failed to match any schema with compatible: ['aspeed,ast2600-scu-ic0']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/syscon@1e6e2000/interrupt-controller@570: failed to match any schema with compatible: ['aspeed,ast2600-scu-ic1']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2600-gfx', 'syscon']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: adc@1e6e9000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: adc@1e6e9100: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: crypto@1e6fa000: 'aspeed,ahbc' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/crypto/aspeed,ast2600-acry.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/video@1e700000: failed to match any schema with compatible: ['aspeed,ast2600-video-engine']
>
> Ignore the above for now.
ok
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: gpio@1e780000: 'gpio-reserved-ranges' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
>
> I'm not sure why this one is flagged, though it is one you should
> resolve. You might need some input from the devicetree maintainers.
ok.
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/timer@1e782000: failed to match any schema with compatible: ['aspeed,ast2600-timer']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: lpc@1e789000: lpc-snoop@80: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: lpc@1e789000: reg-io-width: 4 is not of type 'object'
> >       from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: kcs@24: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: kcs@28: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: kcs@2c: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: kcs@114: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2600-lhc']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2600-ibt-bmc']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: sdc@1e740000: sdhci@1e740100:compatible: ['aspeed,ast2600-sdhci', 'sdhci'] is too long
> >       from schema $id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: sdc@1e740000: sdhci@1e740200:compatible: ['aspeed,ast2600-sdhci', 'sdhci'] is too long
> >       from schema $id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/sdc@1e740000/sdhci@1e740100: failed to match any schema with compatible: ['aspeed,ast2600-sdhci', 'sdhci']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/sdc@1e740000/sdhci@1e740200: failed to match any schema with compatible: ['aspeed,ast2600-sdhci', 'sdhci']
>
> Ignore the above for now.
ok
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-pvcore-nic2@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-pvcore-nic1@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-p3v3-nic@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-p1v2-nic@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-p1v8-nic@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/bus@1e78a000/i2c@280/bmc-slave@10: failed to match any schema with compatible: ['ipmb-dev']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: r38263-p1v05-pch-aux@40: Unevaluated properties are not allowed ('interrupt-parent', 'interrupts', 'regulators' were unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38060-p1v8-pch-aux@40: Unevaluated properties are not allowed ('interrupt-parent', 'interrupts', 'regulators' were unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mux@77: interrupts: False schema does not allow [[44, 4]]
> >       from schema $id: http://devicetree.org/schemas/i2c/i2c-mux-pca954x.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu2@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu1@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu3@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-p5v-aux@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: ir38263-p3v3-aux@40: Unevaluated properties are not allowed ('regulators' was unexpected)
> >       from schema $id: http://devicetree.org/schemas/regulator/infineon,ir38060.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: regulator@5f: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: pvccinfaon-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: mp2973-pvccin-pvccfa-cpu0@58: 'regulators' does not match any of the regexes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
>
> These all look like they need to be addressed.
These seem to be applicable for all trivial devices.
I'm not sure what should be the fix.

Regards,
Naresh
>
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: fsi@1e79b000: compatible: ['aspeed,ast2600-fsi-master', 'fsi-master'] is too long
> >       from schema $id: http://devicetree.org/schemas/fsi/aspeed,ast2600-fsi-master.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/fsi@1e79b000: failed to match any schema with compatible: ['aspeed,ast2600-fsi-master', 'fsi-master']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: fsi@1e79b100: compatible: ['aspeed,ast2600-fsi-master', 'fsi-master'] is too long
> >       from schema $id: http://devicetree.org/schemas/fsi/aspeed,ast2600-fsi-master.yaml#
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/fsi@1e79b100: failed to match any schema with compatible: ['aspeed,ast2600-fsi-master', 'fsi-master']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dtb: /ahb/apb/dma-controller@1e79e000: failed to match any schema with compatible: ['aspeed,ast2600-udma']
> >
>
> Ignore these for now.
>
> Andrew

