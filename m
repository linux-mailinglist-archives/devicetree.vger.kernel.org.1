Return-Path: <devicetree+bounces-90370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 58036945192
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 19:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8D8B1F23288
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 17:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657831A4879;
	Thu,  1 Aug 2024 17:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpOLXcne"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A95182D8
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 17:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722533830; cv=none; b=hgRlGaKcz7+SRkVxojVTwFGBzkrAtAZOFZ9FOcQXGvknT2Rh/Wu3PpglZvKss8fcfDF6rYh5S7FHlsSEE3YFPqqQguyUtdgtcc/qITurdwUs20d0lEVv1cnANykum9Z1vZ01R6xy1D8+c7N5BlNJGM4AIDU/Y78aGyv14u+bK3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722533830; c=relaxed/simple;
	bh=HS/42EjkDCaT5ky7ooKDb1UPOfOyGpi5Ob5b/D63nkg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t87EABFVjJBREaoX/39YfRh4l2kRia8nOcAGvrhT2Qv8e7F08Ckk3bcyjusDp/swOLSRCxqwDUG7QuPHNLVmZx8LNc0oKskJw0e5YQU+nXYXTlz4rIFUHuLyG2NFxfnz3lt6EoEuaxmrjs06jvGTeiEXDqvio1cTroOvDrTYls0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpOLXcne; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBAADC4AF0D
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722533829;
	bh=HS/42EjkDCaT5ky7ooKDb1UPOfOyGpi5Ob5b/D63nkg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=LpOLXcneIiSzNSHZdWD4JIwwk7X0B1k4+nPt1nVjDSRTYJLcSTAbonrv3vyzS+2b6
	 8c+b4mZ02LAa/rUurNUVNt31RxpMzJI1orsDfXcQsxzF9K6crSvPKPLQRhJ34YerUh
	 loIDOd+PUxBODX4FdJYLqnOwpSnUjo74y26OWzEh5jGkNctcbkemt8YuY/muhKcxhr
	 UjtityFUSIm5RqG0E6G7Y6eUCZjonOuVngSK/h3iVOHFC/79kItUmRWHKVxCdg3ON+
	 D9GAG/ju6gKHkLgT6cBFK3rG+3UwcGY5DZRMuXotJVeNiwH+hPN09wACr/PW+SoXMX
	 7YThGnyDaRV1g==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2eeb1ba040aso116814841fa.1
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 10:37:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWZtvrTk0Gn0/sy4TrMM25Wyqxt1ZCDX19YNuHAt84BZJzx9Ia0V2cj5EMTFO9CMWoBeFHsU7L9kkn7I+ucUn88Fr+UdvZ1Up/Krw==
X-Gm-Message-State: AOJu0Yxe/k2rBVSeu4kDh/PNhQ8ytlkyzUzLOrS8XJ3yICKZX01TSfaJ
	i5e8DM1vwbJqXF3FCdLpOvYxAdueEgrhZBJmirwWziurKwsrN+b/okGWT9rV1bXCYOFE2VjxZyN
	c2QR6DS+QnL+B6sRVF0PszMyQkw==
X-Google-Smtp-Source: AGHT+IENZh2GH3qb7gMlOtf9zztyewJ9vbYF8/1WMokwYLp/xVLgsAWVFPEVuwRazHpSrJuGlE+TFSFEM+CoAig//XM=
X-Received: by 2002:a2e:9199:0:b0:2ef:1f68:ead5 with SMTP id
 38308e7fff4ca-2f15aaaa921mr7481621fa.26.1722533827252; Thu, 01 Aug 2024
 10:37:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240731214737.986010-1-ninad@linux.ibm.com> <172252600790.120672.12772438670145461296.robh@kernel.org>
 <4d5b8958-2d33-42df-ac97-82bb63fdff38@linux.ibm.com>
In-Reply-To: <4d5b8958-2d33-42df-ac97-82bb63fdff38@linux.ibm.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 1 Aug 2024 11:36:54 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLd8Xcj7gD=WKrt8ygYHb3jNpvxof5yFAPPydiRCPv0eQ@mail.gmail.com>
Message-ID: <CAL_JsqLd8Xcj7gD=WKrt8ygYHb3jNpvxof5yFAPPydiRCPv0eQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/1] ARM: dts: aspeed: system1: IBM System1 BMC update
To: Ninad Palsule <ninad@linux.ibm.com>
Cc: andrew@codeconstruct.com.au, eajames@linux.ibm.com, joel@jms.id.au, 
	devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 1, 2024 at 10:25=E2=80=AFAM Ninad Palsule <ninad@linux.ibm.com>=
 wrote:
>
> Hi Rob,
>
> On 8/1/24 10:29, Rob Herring (Arm) wrote:
> > On Wed, 31 Jul 2024 16:47:28 -0500, Ninad Palsule wrote:
> >> Hello,
> >>
> >> This patch only applies to openbmc/linux. The max31785 pmbus driver
> >> changes are not available in the upstream yet. I will try to send thos=
e
> >> changes upstream.
> >>
> >> Ninad Palsule (1):
> >>    ARM: dts: aspeed: system1: IBM System1 BMC update
> >>
> >>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 96 +++++++++++++++++=
++
> >>   1 file changed, 96 insertions(+)
> >>
> >> --
> >> 2.43.0
> >>
> >>
> >>
> >
> > My bot found new DTB warnings on the .dts files added or changed in thi=
s
> > series.
> >
> > Some warnings may be from an existing SoC .dtsi. Or perhaps the warning=
s
> > are fixed by another series. Ultimately, it is up to the platform
> > maintainer whether these warnings are acceptable or not. No need to rep=
ly
> > unless the platform maintainer has comments.
> >
> > If you already ran DT checks and didn't see these error(s), then
> > make sure dt-schema is up to date:
> >
> >    pip3 install dtschema --upgrade
> >
> >
> > New warnings running 'make CHECK_DTBS=3Dy aspeed/aspeed-bmc-ibm-system1=
.dtb' for 20240731214737.986010-1-ninad@linux.ibm.com:
> >
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@52/fan@0: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@52/fan@1: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@52/fan@2: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@52/fan@3: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@52/fan@4: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@54/fan@0: failed to match any schema with compat=
ible: ['pmbus-fan']
> > arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a=
000/i2c@380/fan-controller@54/fan@1: failed to match any schema with compat=
ible: ['pmbus-fan']
> >
> I have seen these warning. I am not sure how to fix them as it is
> already documented in the following file.
>
> Documentation/devicetree/bindings/hwmon/pmbus/max31785.txt

$ git log -- Documentation/devicetree/bindings/hwmon/pmbus/max31785.txt
(END)

Did you mean Documentation/devicetree/bindings/hwmon/max31785.txt? If
so, there is no 'pmbus-fan' in it or anywhere else except aspeed dts
files.

The state of the aspeed dts files is really quite sad. This is a count
of warnings. The first number is total warnings. The second number is
unique warnings (stripping the dtb name so we don't have N warnings
for N boards). The 2nd list is undocumented (by schema) compatibles.

The number of warnings vs. Linus's tree is higher already and we just
started the cycle. That's the wrong direction and in general I see
very little if any effort reducing the warnings for aspeed.

This is all run daily here: https://gitlab.com/robherring/linux-dt/-/jobs

arch/arm/boot/dts/aspeed:3682:635
    184  sbefifo@2400: '#address-cells', '#size-cells' do not match
any of the regexes: 'pinctrl-[0-9]+'
    160  i2cr@20: #address-cells: 1 was expected
     88  eeprom@0: 'size' is a required property
     88  eeprom@0: 'pagesize' is a required property
     88  eeprom@0: 'address-width' is a required property
     70  lpc@1e789000: reg-io-width: 4 is not of type 'object'
     62  kcs@2c: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]=
+'
     62  kcs@28: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]=
+'
     62  kcs@24: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]=
+'
     62  kcs@114: 'clocks' does not match any of the regexes: 'pinctrl-[0-9=
]+'
     45  sram@1e720000: 'ranges' is a required property
     45  sram@1e720000: '#size-cells' is a required property
     45  sram@1e720000: '#address-cells' is a required property
     45  lpc@1e789000: lpc-snoop@90: 'clocks' does not match any of
the regexes: 'pinctrl-[0-9]+'
     25  timer: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+=
'
     25  syscon@1e6e2000: 'smp-memram@180' does not match any of the
regexes: '^interrupt-controller@[0-9a-f]+$',
'^p2a-control@[0-9a-f]+$', '^pinctrl(@[0-9a-f]+)?$',
'^silicon-id@[0-9a-f]+$', 'pinctrl-[0-9]+'
     25  lpc@1e789000: lpc-snoop@80: 'clocks' does not match any of
the regexes: 'pinctrl-[0-9]+'
     25  ftgmac@1e690000: $nodename:0: 'ftgmac@1e690000' does not
match '^ethernet(@.*)?$'
     25  ftgmac@1e680000: $nodename:0: 'ftgmac@1e680000' does not
match '^ethernet(@.*)?$'
     25  ftgmac@1e670000: $nodename:0: 'ftgmac@1e670000' does not
match '^ethernet(@.*)?$'
     25  ftgmac@1e660000: $nodename:0: 'ftgmac@1e660000' does not
match '^ethernet(@.*)?$'
     25  fsi@1e79b100: compatible: ['aspeed,ast2600-fsi-master',
'fsi-master'] is too long
     25  fsi@1e79b000: compatible: ['aspeed,ast2600-fsi-master',
'fsi-master'] is too long
     25  crypto@1e6fa000: 'aspeed,ahbc' does not match any of the
regexes: 'pinctrl-[0-9]+'
     25  bus@1e600000: compatible: ['aspeed,ast2600-ahbc', 'syscon'] is too=
 long
     24  sdc@1e740000: sdhci@1e740200:compatible:
['aspeed,ast2600-sdhci', 'sdhci'] is too long
     24  sdc@1e740000: sdhci@1e740100:compatible:
['aspeed,ast2600-sdhci', 'sdhci'] is too long
     22  spi@60: 'eeprom@0' does not match any of the regexes:
'^spi@[0-9a-f]+$', 'pinctrl-[0-9]+'
     22  spi@40: 'eeprom@0' does not match any of the regexes:
'^spi@[0-9a-f]+$', 'pinctrl-[0-9]+'
     22  sbefifo@2400: occ: 'occ-hwmon', 'reg' do not match any of the
regexes: 'pinctrl-[0-9]+'

arch/arm/boot/dts/aspeed:68
['adi, adm1272']
['adm1272']
['adm1275']
['aspeed,ast2400-cf-fsi-master', 'fsi-master']
['aspeed,ast2400-cvic', 'aspeed-cvic']
['aspeed,ast2400-i2c-ic']
['aspeed,ast2400-ibt-bmc']
['aspeed,ast2400-lhc']
['aspeed,ast2400-p2a-ctrl']
['aspeed,ast2400-pwm-tacho']
['aspeed,ast2400-timer']
['aspeed,ast2400-vic']
['aspeed,ast2400-video-engine']
['aspeed,ast2500-cf-fsi-master', 'fsi-master']
['aspeed,ast2500-cvic', 'aspeed-cvic']
['aspeed,ast2500-gfx', 'syscon']
['aspeed,ast2500-i2c-ic']
['aspeed,ast2500-ibt-bmc']
['aspeed,ast2500-lhc']
['aspeed,ast2500-p2a-ctrl']
['aspeed,ast2500-pwm-tacho']
['aspeed,ast2500-scu-ic']
['aspeed,ast2500-sdram-edac']
['aspeed,ast2500-video-engine']
['aspeed,ast2500-xdma']
['aspeed,ast2600-fsi-master', 'fsi-master']
['aspeed,ast2600-gfx', 'syscon']
['aspeed,ast2600-ibt-bmc']
['aspeed,ast2600-lhc']
['aspeed,ast2600-scu-ic0']
['aspeed,ast2600-scu-ic1']
['aspeed,ast2600-sdhci', 'sdhci']
['aspeed,ast2600-sdram-edac', 'syscon']
['aspeed,ast2600-smpmem']
['aspeed,ast2600-timer']
['aspeed,ast2600-udma']
['aspeed,ast2600-video-engine']
['aspeed,ast2600-xdma']
['atmel,at30tse004a']
['dallas,ds3231']
['delta,dps800']
['dps650ab']
['fsi-master-gpio', 'fsi-master']
['fsi-master-hub']
['ibm,bonnell-bmc', 'aspeed,ast2600']
['ibm,fsi-i2c-master']
['ibm,fsi-master-hub']
['ibm,fsi2pib']
['ibm,pca9552']
['infineon,ir35221']
['infineon,pxe1610']
['ipmb-dev']
['isil,isl69260']
['isil,raa229004']
['lm75']
['max31790']
['maxim,max31785a']
['microchip,emc1413']
['mps,mp5023']
['nuvoton,w83795g']
['nvt210']
['nxp,pca9551']
['nxp,pca9552']
['nxp,pca9641']
['pmbus']
['pmbus-fan']
['si,si7021a20']
['ti,ucd90160']

