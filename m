Return-Path: <devicetree+bounces-245860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A09ECB627E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 15:13:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 377263071A8F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E10B2C3247;
	Thu, 11 Dec 2025 14:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roDUA2KH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A922C3250;
	Thu, 11 Dec 2025 14:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765462067; cv=none; b=X1oChIdznD4u3kq+quus+zPpWkdSTPw47SYjXy3E8SsVdf/yXtdmu4qq69QkdGFnHBzzx8G4vBb11ebY0HTCMrApB9XaJnmCNJPmW4eYE4NhKJUsYLsEjLKvaCXVDrvzEPPXW7sabfe5JMAhi6DCVA0RLx4QKvXUMkK68CEcEK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765462067; c=relaxed/simple;
	bh=vcRg1Eqi3odp7RefN9n5Z70f73goUkg5nxx720202Vc=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=W/HYkwJq6AT5htEDse49O92tJ8N+2qLGjIro1s2r55cHveE03VZrU3zZoz/LO6sgK9ryAlw76i4zaX6PuB49GIJcnchG9B1PeJ/BiOKIFdpiXGhPpPUo4n0DmJK4AqZ78P1vdoxm3YajhqRRXo7pq9pysmNVLKAn+dl2cIlqr9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roDUA2KH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F5DC116B1;
	Thu, 11 Dec 2025 14:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765462066;
	bh=vcRg1Eqi3odp7RefN9n5Z70f73goUkg5nxx720202Vc=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=roDUA2KHXrLZqRTAerROurGDYD6CGUgQEGdx69SsrlSvt+G8+AZDSryMeTFfO41+D
	 lYjZtPLhzCbKSXBZZz9MPNU0Yu4XKLkTxPVjRWG5sbbrRhOh4MjDjVigBHY6fC0qzO
	 9i9uIVJ0gJ2thItLg7wNEi2zmnDdpuUO8dp/JYZQ50pWmogLgpAJCaEVFnqHHz55oX
	 0TaGQ/y6CWsgD6Ors1S4OFqfpjVIAF9nf+oWQ8JZ6kTVUIx9sTP1Ekc2wCyMrkfoq1
	 bNcmTWMfs/Uo5yR2rj8obmBFwah07TrFEYaBarNzYQoHzVD4PTSzjg5ulzqqqO5kJa
	 l1BH10c5Rip2A==
From: Rob Herring <robh@kernel.org>
Date: Thu, 11 Dec 2025 08:07:44 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: joel@jms.id.au, cosmo.chou@quantatw.com, krzk+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, andrew@codeconstruct.com.au, 
 conor+dt@kernel.org, devicetree@vger.kernel.org
To: Cosmo Chou <chou.cosmo@gmail.com>
In-Reply-To: <20251211080311.242771-1-chou.cosmo@gmail.com>
References: <20251211080311.242771-1-chou.cosmo@gmail.com>
Message-Id: <176546187995.970978.16806289735144663383.robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: aspeed: bletchley: Fix dt-schema warnings


On Thu, 11 Dec 2025 16:03:11 +0800, Cosmo Chou wrote:
> Update the device tree to fix dt-schema warnings:
> - Use generic node names for SPI, LEDs, and GPIO keys.
> - Update SPI GPIO properties to use the "-gpios" suffix.
> - Remove unused address/size cells from pca9539 nodes.
> - Use 'aspeed,int-vref-microvolt' in ADC nodes.
> - Remove unused 'aspeed,hw-timeout-ms' from i2c13.
> 
> Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
> ---
>  .../aspeed/aspeed-bmc-facebook-bletchley.dts  | 100 ++++++++++--------
>  1 file changed, 54 insertions(+), 46 deletions(-)
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
 Base: attempting to guess base-commit...
 Base: tags/next-20251211 (exact match)
 Base: tags/next-20251211 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20251211080311.242771-1-chou.cosmo@gmail.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: adc@1e6e9000 (aspeed,ast2600-adc0): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dtb: adc@1e6e9100 (aspeed,ast2600-adc1): 'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/iio/adc/aspeed,ast2600-adc.yaml






