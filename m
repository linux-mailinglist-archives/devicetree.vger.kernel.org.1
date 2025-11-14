Return-Path: <devicetree+bounces-238807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA3AC5E3A6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E1D29382624
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF37261B98;
	Fri, 14 Nov 2025 15:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn0voBfh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D752192F2;
	Fri, 14 Nov 2025 15:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135900; cv=none; b=SCq65wQiknIPfZLuvPIu70XTtbVv6Fa2Ci0LbPv4fg7hC0bNXsHmAV82LgVDa3gTqybKGcJLCVA1siuT2NcZ+IyFtplUu6+C4Djx0dEwDBiqIxk94BOfHN5wXpLP8fuw7unDoxidIUhNLZVSK7fjtwO6X6aCAeWKjAYVi+ajW0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135900; c=relaxed/simple;
	bh=tRFbjnnnGYoNv0ovOhf9bdB3gNHViLXElGTT7OSRUNM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=MAXooknqEGBFDXxbOZVrW5zFoZc/TxSYGF/FZSunoTZlblZRpnyfKnyzud86rKqOgLEKCEbNptnJ6DTXom9sqc2X/4SeWRUen8LDoBoJjfQGqTq8/b0wkMFiy4g6OXhLJwMT1M79THQ16LaGfHo8s6bbSFL2OyOgzcnHC2krwHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn0voBfh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA6AAC19421;
	Fri, 14 Nov 2025 15:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763135900;
	bh=tRFbjnnnGYoNv0ovOhf9bdB3gNHViLXElGTT7OSRUNM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kn0voBfhkFcXuamgxp1cypg5mRJYcDjJPdn2UBLK5ris48B7Oq4H9FkY+NzEziugS
	 evjYPPdviDkQKxDhod7Iwuia4NcBUHWlURuhu8l3nV5jIXRUJDNvbsOlRU17PgRnpt
	 ydRlUnBhMFjd1BCDD6Wrer0ZAtSZ9v4+rghuXZWmfW76LnavEl68TDiXj6w6Ikimjd
	 o3Z5BoZcJ0kywb7tQ/z2YIa31/KC0hy+6ewhU1G5kyJKcIEg6D09PAWAzNh42kuWo2
	 DK5bvlI7S0M2dKiJ5mSfxkRQrmXSQjE1c+ewXIG4vSr86DsX6NEPCg0R0bgkiAKFN9
	 5mxW4hSujkSdg==
Date: Fri, 14 Nov 2025 09:58:18 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-kernel@vger.kernel.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>, 
 Conor Dooley <conor+dt@kernel.org>
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
In-Reply-To: <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
Message-Id: <176313578804.3261993.9727195642647352249.robh@kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: Add gpio_intc node for Amlogic S7D
 SoCs


On Wed, 05 Nov 2025 17:45:36 +0800, Xianwei Zhao wrote:
> Add GPIO interrupt controller device.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
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
 Base: cb718411c4c05a4a424c2b73790a1648be97a4af (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/amlogic/' for 20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com:

arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: interrupt-controller@4080 (amlogic,s7d-gpio-intc): compatible: 'oneOf' conditional failed, one must be fixed:
	['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc'] is too long
	'amlogic,meson-gpio-intc' was expected
	'amlogic,s7d-gpio-intc' is not one of ['amlogic,meson8-gpio-intc', 'amlogic,meson8b-gpio-intc', 'amlogic,meson-gxbb-gpio-intc', 'amlogic,meson-gxl-gpio-intc', 'amlogic,meson-axg-gpio-intc', 'amlogic,meson-g12a-gpio-intc', 'amlogic,meson-sm1-gpio-intc', 'amlogic,meson-a1-gpio-intc', 'amlogic,meson-s4-gpio-intc', 'amlogic,a4-gpio-intc', 'amlogic,a4-gpio-ao-intc', 'amlogic,a5-gpio-intc', 'amlogic,c3-gpio-intc', 'amlogic,t7-gpio-intc']
	from schema $id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml
arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: /soc/bus@fe000000/interrupt-controller@4080: failed to match any schema with compatible: ['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc']
arch/arm64/boot/dts/amlogic/amlogic-s6-s905x5-bl209.dtb: interrupt-controller@4080 (amlogic,s6-gpio-intc): compatible: 'oneOf' conditional failed, one must be fixed:
	['amlogic,s6-gpio-intc', 'amlogic,meson-gpio-intc'] is too long
	'amlogic,meson-gpio-intc' was expected
	'amlogic,s6-gpio-intc' is not one of ['amlogic,meson8-gpio-intc', 'amlogic,meson8b-gpio-intc', 'amlogic,meson-gxbb-gpio-intc', 'amlogic,meson-gxl-gpio-intc', 'amlogic,meson-axg-gpio-intc', 'amlogic,meson-g12a-gpio-intc', 'amlogic,meson-sm1-gpio-intc', 'amlogic,meson-a1-gpio-intc', 'amlogic,meson-s4-gpio-intc', 'amlogic,a4-gpio-intc', 'amlogic,a4-gpio-ao-intc', 'amlogic,a5-gpio-intc', 'amlogic,c3-gpio-intc', 'amlogic,t7-gpio-intc']
	from schema $id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml
arch/arm64/boot/dts/amlogic/amlogic-s6-s905x5-bl209.dtb: /soc/bus@fe000000/interrupt-controller@4080: failed to match any schema with compatible: ['amlogic,s6-gpio-intc', 'amlogic,meson-gpio-intc']
arch/arm64/boot/dts/amlogic/amlogic-s7-s805x3-bp201.dtb: interrupt-controller@4080 (amlogic,s7-gpio-intc): compatible: 'oneOf' conditional failed, one must be fixed:
	['amlogic,s7-gpio-intc', 'amlogic,meson-gpio-intc'] is too long
	'amlogic,meson-gpio-intc' was expected
	'amlogic,s7-gpio-intc' is not one of ['amlogic,meson8-gpio-intc', 'amlogic,meson8b-gpio-intc', 'amlogic,meson-gxbb-gpio-intc', 'amlogic,meson-gxl-gpio-intc', 'amlogic,meson-axg-gpio-intc', 'amlogic,meson-g12a-gpio-intc', 'amlogic,meson-sm1-gpio-intc', 'amlogic,meson-a1-gpio-intc', 'amlogic,meson-s4-gpio-intc', 'amlogic,a4-gpio-intc', 'amlogic,a4-gpio-ao-intc', 'amlogic,a5-gpio-intc', 'amlogic,c3-gpio-intc', 'amlogic,t7-gpio-intc']
	from schema $id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml
arch/arm64/boot/dts/amlogic/amlogic-s7-s805x3-bp201.dtb: /soc/bus@fe000000/interrupt-controller@4080: failed to match any schema with compatible: ['amlogic,s7-gpio-intc', 'amlogic,meson-gpio-intc']






