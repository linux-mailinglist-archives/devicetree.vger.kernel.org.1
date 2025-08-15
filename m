Return-Path: <devicetree+bounces-205243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 680B5B287A0
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 23:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5996FAE6C45
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 21:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DCBA2874ED;
	Fri, 15 Aug 2025 21:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3e5v6U9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4969926D4DF
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 21:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755292751; cv=none; b=Na68dLIgFST+MmS7fQkHP1UGQbniuGkqSrHx/mwdhCH4nyiUoH1DvBCSAs95Y0Zf1RLbuKnghVwm2uKExjZLVfiW9otnJn/sMHOJdYdqm2Y6MPGbtpA+dd0WJRR+4LSDooYhMkNhrFOqz9fWxw8Jlf1qYYoWasbLOmwQVjGNEuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755292751; c=relaxed/simple;
	bh=AWF7ROMiI+AFCkdDNOd6X3SLMWbwQ51ClYm8LtWloJQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=KF+a/cMdOYGVKUhRccJKwfKmDogJ5FYlPPgVI0A5lOjl1//JCEC0zhJFGyIsMSVlYLhN5+ogzAPejGG5xaAgcfCYw4AIW7O0CIgVPlmuw5VdeqJ/nKi3K0KnwsFW5V8xGBhi1VueCTWCjDYJxZBmxNUQfEfZGfOgmif6/wZ1B+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3e5v6U9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C685EC4CEEB;
	Fri, 15 Aug 2025 21:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755292750;
	bh=AWF7ROMiI+AFCkdDNOd6X3SLMWbwQ51ClYm8LtWloJQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Z3e5v6U9jNUaD41ytw6FxJKG/p6EF4RS26+LYK6VtArQ4DSVyNj2/faRMNOQPxeSS
	 iCpnbvjGMFjPRKbNtHNj7a8TuWitLBPIimAcqcIfEffZGKcl7Wc17tLXMLzT51AXW8
	 ucVQQzzOYfdhEJNWcSie+kE7SoJC2lumk4R9fHqWxJ5npWdaNK2o+jltI9/73Q9ssF
	 Hm2FSzfpcOpClw4L6zjDSChVbzyjakQTfg3frK3ab/lwjz7SbGM4T2UjE+Ssc5YumZ
	 ps7FnmyBDfEULcwsWr0xLzxQfOAgVH4oyvoX3bidX62RBbOjWxN/oBu8dKLggfJYBB
	 JXA2CFaarqhuQ==
Date: Fri, 15 Aug 2025 16:19:10 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 devicetree@vger.kernel.org
To: Linus Walleij <linus.walleij@linaro.org>
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
Message-Id: <175529260025.3212383.1843651240268969923.robh@kernel.org>
Subject: Re: [PATCH 0/3] ARM: dts: ixp4xx: Add device trees for MI424WR


On Thu, 14 Aug 2025 18:40:02 +0200, Linus Walleij wrote:
> This patch series adds device trees for Actiontec MI424WR
> versions A, C and D.
> 
> These routers are quite common in the Americas and uses
> the IXP4xx SoC.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> Linus Walleij (3):
>       dt-bindings: Add Actiontec vendor prefix
>       dt-bindings: arm: List actiontec devices
>       ARM: dts: Add ixp4xx Actiontec MI424WR device trees
> 
>  .../devicetree/bindings/arm/intel-ixp4xx.yaml      |   2 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/arm/boot/dts/intel/ixp/Makefile               |   2 +
>  .../ixp/intel-ixp42x-actiontec-mi424wr-ac.dts      |  37 +++
>  .../intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dts |  38 +++
>  .../intel/ixp/intel-ixp42x-actiontec-mi424wr.dtsi  | 273 +++++++++++++++++++++
>  6 files changed, 354 insertions(+)
> ---
> base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
> change-id: 20250814-ixp4xx-mi424wr-dts-afef5c00d68d
> 
> Best regards,
> --
> Linus Walleij <linus.walleij@linaro.org>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: using specified base-commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/intel/' for 20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org:

arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dtb: gpio@1,0 (brcm,bcm6345-gpio): 'bank-width', 'intel,ixp4xx-eb-write-enable', 'pci-reset-hog', 'pstn-relay-hog-1', 'pstn-relay-hog-2' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-mmio.yaml#
arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-ac.dtb: /soc/usb@c800b000: failed to match any schema with compatible: ['intel,ixp4xx-udc']
arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dtb: gpio@1,0 (brcm,bcm6345-gpio): 'bank-width', 'intel,ixp4xx-eb-write-enable', 'pci-reset-hog', 'pstn-relay-hog-1', 'pstn-relay-hog-2' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-mmio.yaml#
arch/arm/boot/dts/intel/ixp/intel-ixp42x-actiontec-mi424wr-d.dtb: /soc/usb@c800b000: failed to match any schema with compatible: ['intel,ixp4xx-udc']






