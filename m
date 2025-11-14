Return-Path: <devicetree+bounces-238422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 35257C5AFD7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E82CB4E8C0A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 02:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66BF226CFE;
	Fri, 14 Nov 2025 02:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Y8Q16x+R"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3381F5842;
	Fri, 14 Nov 2025 02:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763086680; cv=none; b=S/qtHgYiQU9QawSp7d6UFjm1SCRQDF7IgFjGCRJozXd7mFK1AsLiQiCTfh2JhrdaaafjIlfYosquaaomXrNh72nUrPRVTYEAO6EG8aL2uaa0WTkduJquIO+Jn0Wh+XeDLEW+/LoEuc5ENfcgFcZQHM5H8pdDjPVlpY/sPAtHoOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763086680; c=relaxed/simple;
	bh=B5rmDufftW5nFrCXSaLRhhh31OMJNLA3sQUlKpM9ME8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BU6RW2OJjdE6mdBeLbKFAlkL52JE7A/M2JKrJxcKDtYMQudf7G1GxUjzadjn/ehuTJE0dz+Z4V/Q27mMGhiwf3YqqxOE5Llrdd7K5jMwg5GLHin/+LxmZ72a2lSDkHPD/0WrzWqiKQjTumIhxc/sSY4D12/sYj+E+gpy7T7cFkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Y8Q16x+R; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763086676;
	bh=EkHHNqQQYU6ZiC0E6NsWZtH9i5f8YolbD7wxmtKMxPI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Y8Q16x+R0u3X4GaKGrxzwjd3gy3XyUEkupMAm1BMBS/ctKDN3G+cyGY7wrNzBXN4C
	 wwNukF8R3P5rIOCIl0OS5b+N/oBjzYR0Vx5GIHW7FtApywZjCVoPTiO6SxIZGKQxyg
	 yNmVXsNBH7XzPsNcD//nO7HuV2GF0nt8b51fO7PXPgwNvmzYDKnuHZTtQSPAuCWVTW
	 FaTw8wb2A2VrcDcM8c1ZXoTE612G6EB9PuPLhl2gcMGOy04fnqvF520wlWQeX9qs6Q
	 APSx/COrUE0T34f05I5uqmneDEYOluY4gCE0j3gns5t1klmnd2R4TM0WDieShyf+/Z
	 cehd2luNV/blA==
Received: from [192.168.68.115] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A8B0B7AEA8;
	Fri, 14 Nov 2025 10:17:55 +0800 (AWST)
Message-ID: <732aee9c7e895f73f25fbb4bdc97bf5984662a26.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: bletchley: remove WDTRST1
 assertion from wdt1
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Cosmo Chou <chou.cosmo@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	cosmo.chou@quantatw.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, 	joel@jms.id.au
Date: Fri, 14 Nov 2025 12:47:55 +1030
In-Reply-To: <20251018043310.1056032-1-chou.cosmo@gmail.com>
References: <20251018043310.1056032-1-chou.cosmo@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Cosmo,

On Sat, 2025-10-18 at 12:33 +0800, Cosmo Chou wrote:
> Remove the external signal configuration from wdt1 to prevent the
> WDTRST1 pin from being asserted during watchdog resets.
>=20
> The WDTRST1 pin was originally configured to reset the TPM during
> watchdog events. However, the pin is incorrectly routed to SRST#
> on the hardware, causing unintended system resets. Since the TPM
> is not currently utilized on this platform, remove the external
> signal configuration to avoid the incorrect reset behavior.
>=20
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 6 ----=
--
> =C2=A01 file changed, 6 deletions(-)

In the process of applying this I was looking at the warnings the
bletchley dts generates. There are quite a few that are devicetree-
specific (i.e. not caused by issues in the SoC DTSI):

   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: / (faceb=
ook,bletchley-bmc): spi1-gpio: {'compatible': ['spi-gpio'], '#address-cells=
': 1, '#size-cells': 0, 'gpio-sck': [50, 203, 0], 'gpio-mosi': [50, 204, 0]=
, 'gpio-miso': [50, 205, 0], 'num-chipselects': 1, 'cs-gpios': [[50, 200, 1=
]], 'tpm@0': {'compatible': ['infineon,slb9670', 'tcg,tpm_tis-spi'], 'spi-m=
ax-frequency': 33000000, 'reg': [[0]]}} is not of type 'array'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-consume=
r.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: timer (a=
rm,armv7-timer): 'clocks' does not match any of the regexes: '^pinctrl-[0-9=
]+$'
           from schema $id: http://devicetree.org/schemas/timer/arm,arch_ti=
mer.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: sdram@1e=
6e0000 (aspeed,ast2600-sdram-edac): compatible: ['aspeed,ast2600-sdram-edac=
', 'syscon'] is too long
           from schema $id: http://devicetree.org/schemas/edac/aspeed,ast24=
00-sdram-edac.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: bus@1e60=
0000 (aspeed,ast2600-ahbc): compatible: ['aspeed,ast2600-ahbc', 'syscon'] i=
s too long
           from schema $id: http://devicetree.org/schemas/bus/aspeed,ast260=
0-ahbc.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: syscon@1=
e6e2000 (aspeed,ast2600-scu): 'smp-memram@180' does not match any of the re=
gexes: '^interrupt-controller@[0-9a-f]+$', '^p2a-control@[0-9a-f]+$', '^pin=
ctrl(@[0-9a-f]+)?$', '^pinctrl-[0-9]+$', '^silicon-id@[0-9a-f]+$'
           from schema $id: http://devicetree.org/schemas/mfd/aspeed,ast2x0=
0-scu.yaml#
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: /ahb/apb/sys=
con@1e6e2000/smp-memram@180: failed to match any schema with compatible: ['=
aspeed,ast2600-smpmem']
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: adc@1e6e=
9000 (aspeed,ast2600-adc0): 'interrupts', 'vref' do not match any of the re=
gexes: '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,as=
t2600-adc.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: adc@1e6e=
9100 (aspeed,ast2600-adc1): 'interrupts', 'vref' do not match any of the re=
gexes: '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,as=
t2600-adc.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: crypto@1=
e6fa000 (aspeed,ast2600-acry): 'aspeed,ahbc' does not match any of the rege=
xes: '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/crypto/aspeed,ast=
2600-acry.yaml#
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: /ahb/apb/lpc=
@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2=
600-lhc']
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: /ahb/apb/lpc=
@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast=
2600-ibt-bmc']
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: pca9539@=
76 (nxp,pca9539): '#address-cells', '#size-cells' do not match any of the r=
egexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx=
.yaml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: i2c@700 =
(aspeed,ast2600-i2c-bus): Unevaluated properties are not allowed ('aspeed,h=
w-timeout-ms' was unexpected)
           from schema $id: http://devicetree.org/schemas/i2c/aspeed,i2c.ya=
ml#
   arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: /ahb/apb/dma=
-controller@1e79e000: failed to match any schema with compatible: ['aspeed,=
ast2600-udma']
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): $nodename:0: 'spi1-gpio' does not match '^spi(@.*|-([0-9]|[1-=
9][0-9]+))?$'
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): gpio-miso: False schema does not allow [50, 205, 0]
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): gpio-mosi: False schema does not allow [50, 204, 0]
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): gpio-sck: False schema does not allow [50, 203, 0]
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): 'sck-gpios' is a required property
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: spi1-gpi=
o (spi-gpio): Unevaluated properties are not allowed ('#address-cells', '#s=
ize-cells', 'gpio-miso', 'gpio-mosi', 'gpio-sck', 'tpm@0' were unexpected)
           from schema $id: http://devicetree.org/schemas/spi/spi-gpio.yaml=
#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: front_gp=
io_leds (gpio-leds): 'sys_log_id' does not match any of the regexes: '(^led=
-[0-9a-f]$|led)', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/leds/leds-gpio.ya=
ml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: fan_gpio=
_leds (gpio-leds): 'fan0_amber', 'fan0_blue', 'fan1_amber', 'fan1_blue', 'f=
an2_amber', 'fan2_blue', 'fan3_amber', 'fan3_blue' do not match any of the =
regexes: '(^led-[0-9a-f]$|led)', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/leds/leds-gpio.ya=
ml#
   .../arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: gpio-key=
s (gpio-keys): 'presence-sled1', 'presence-sled2', 'presence-sled3', 'prese=
nce-sled4', 'presence-sled5', 'presence-sled6' do not match any of the rege=
xes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-=
9-]+-(button|event|key|switch))$', '^pinctrl-[0-9]+$'
           from schema $id: http://devicetree.org/schemas/input/gpio-keys.y=
aml#
  =20
Can you please take some time to address them?

Cheers,

Andrew

