Return-Path: <devicetree+bounces-85055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6540592EAF8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 968F31C21AD6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 14:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9C6168C33;
	Thu, 11 Jul 2024 14:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E171684A6
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 14:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720709072; cv=none; b=D9APq46J9eoZzs9VsemvZksGHWnAg6ldkfSfjpKCE6zJ5IwinbaLnctfdbuGJrLotK+ahg17AwsRKgPsymuyfyFVTr0mx82nCroR8aCxibRFA7nNqJ74ifQ5/2F604nkStlnHqxkFv3/+3JIiWkrq5y90oaAT66xMXuReqiwUl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720709072; c=relaxed/simple;
	bh=e5TcSYq9SmOCbUefKhxL8wUuPTaj8MsKosGv97sT8oU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h43g8HkkNzNkbYcxBUb+cvz0boz6CJt77rSUhoRXbib2tOJk9Xp2VDC0tX7fRwsVRUVfj8q/cm/URh3RUf3udxkRS1s5WCtVgV48yRbrF72GYH28QNWAqkgi5m4VHFRgVs2SakEbvV/uvAIVzOFLI/IALdGuDTa0xQQzI2B/x18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DB831007;
	Thu, 11 Jul 2024 07:44:54 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5530F3F766;
	Thu, 11 Jul 2024 07:44:27 -0700 (PDT)
Date: Thu, 11 Jul 2024 15:44:24 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
 ryan@testtoast.com, jernej.skrabec@gmail.com, samuel@sholland.org,
 wens@csie.org, krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 conor+dt@kernel.org, mripard@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V3 0/4] Add Anbernic RG35XX-SP
Message-ID: <20240711154424.32e86cee@donnerap.manchester.arm.com>
In-Reply-To: <172070684741.2129319.15850493754001416062.robh@kernel.org>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
	<172070684741.2129319.15850493754001416062.robh@kernel.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 11 Jul 2024 08:20:24 -0600
"Rob Herring (Arm)" <robh@kernel.org> wrote:

Hi,

> On Wed, 10 Jul 2024 18:17:14 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add support for the Anbernic RG35XX-SP handheld gaming device. The
> > Anbernic RG35XX-SP is a clamshell device, but hardware wise is very
> > similar to the RG35XX-Plus. The RG35XX-SP has a lid-switch and an
> > external RTC that necessitate a distinct device tree.
> > 
> > Please note that this series may have a soft pre-requisite on the patch
> > series here [1].
> > 
> > [1] https://lore.kernel.org/linux-sunxi/20240418000736.24338-1-andre.przywara@arm.com/
> > 
> > Changes from V2:
> >  - Corrected commit message for device tree bindings.
> >  - Added a fixes tag to i2c pinmux additions in sun50i-h616.dtsi file
> >    based on recommendation from Andre Przywara.
> > 
> > Changes from V1:
> >  - Switched all RG35XX devices from the r_rsb bus to the r_i2c bus for
> >    the PMIC to keep it consistent.
> >  - Added missing pinctrl nodes in sun50i-h616.dtsi file for the r_i2c
> >    bus.
> >  - Modified devicetree documentation to keep definition of the RG35XX
> >    series consistent with other Allwinner devices.
> > 
> > Chris Morgan (4):
> >   dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
> >   arm64: dts: allwinner: h616: Add r_i2c pinctrl nodes
> >   arm64: dts: allwinner: h616: Change RG35XX Series from r_rsb to r_i2c
> >   arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP
> > 
> >  .../devicetree/bindings/arm/sunxi.yaml        |  9 +++--
> >  arch/arm64/boot/dts/allwinner/Makefile        |  3 +-
> >  .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  2 ++
> >  .../sun50i-h700-anbernic-rg35xx-2024.dts      |  6 ++--
> >  .../sun50i-h700-anbernic-rg35xx-sp.dts        | 34 +++++++++++++++++++
> >  5 files changed, 48 insertions(+), 6 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
> > 
> > --
> > 2.34.1
> > 
> > 
> >   
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.

That is a problem of an existing .dts files in the tree, namely
sun50i-h700-anbernic-rg35xx-2024.dts. It describes the "boost" regulator,
but the three patches adding that didn't make it in this time.
So how do we deal with that? 
This small binding patch would solve this particular problem:
https://lore.kernel.org/linux-sunxi/20240418000736.24338-4-andre.przywara@arm.com/
It has an ACK from Lee and Krzysztof, but I guess it's too late now for
6.10? Do we just ignore it for now and push it as a fix after -rc1?

Cheers,
Andre

> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y
> allwinner/sun50i-h700-anbernic-rg35xx-2024.dtb
> allwinner/sun50i-h700-anbernic-rg35xx-sp.dtb' for
> 20240710231718.106894-1-macroalpha82@gmail.com:
> 
> arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dtb:
> pmic@34: regulators: 'boost' does not match any of the regexes:
> '^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|rtc(_|-)ldo|cpusldo|drivevbus|dc5ldo)$',
> 'pinctrl-[0-9]+' from schema $id:
> http://devicetree.org/schemas/mfd/x-powers,axp152.yaml#
> arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dtb:
> pmic@34: regulators: 'boost' does not match any of the regexes:
> '^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|rtc(_|-)ldo|cpusldo|drivevbus|dc5ldo)$',
> 'pinctrl-[0-9]+' from schema $id:
> http://devicetree.org/schemas/mfd/x-powers,axp152.yaml#
> 
> 
> 
> 
> 


