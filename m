Return-Path: <devicetree+bounces-240722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF526C747C1
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 9DC5F2B01C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567EC336EE6;
	Thu, 20 Nov 2025 14:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCHFlep+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF7932D0E8;
	Thu, 20 Nov 2025 14:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763648098; cv=none; b=o55xJvhyJcozFc3LPciqvmcrFPw2L9pShR0V+NzKNvPwLeKscxJ1ku1RtvWICTHE0Y5U4Vd/bqwXVdqLMRtsUHMXPFNuYS/Lrz25MlwuvNb61xiI/6+4uFZmNzAahYEXOP8cUhy5s4kkvQGjoNXwo1DWMXiyeWHHsok225r5Hso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763648098; c=relaxed/simple;
	bh=qU7RjS/DzcEXt2yvqfX9/EuoZ/kS5C70NOZsPJM23CM=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=gyqOPlERK54B+Y3Oa8NXKQo4w2YgXTn7/7oT1JwQ90IGO1GwnxtlQBiEERN2d/bVFmY/r2GQaNmbMTSOTZsnpIE+TIxJndZss0dH910izNCf9OEZ74tRJyb75RxEK8TxYwEMdXtRv9HJK2NjQ7rIX/bBTlGSBg3iaCZG7iKmZ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCHFlep+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AB91C4CEF1;
	Thu, 20 Nov 2025 14:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763648097;
	bh=qU7RjS/DzcEXt2yvqfX9/EuoZ/kS5C70NOZsPJM23CM=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=aCHFlep+obOacq9TNPHc+io8b4D9ktDULkeWfb8itwnFyzTURMHh3MdMawAhdwEIK
	 V/d1rkIa07bFO4rJAtQ68Z9qgkZJMJT4QKyqFVvbSXxH505v/b0iNxvI4lUx3LZ2e5
	 Djk3QPDWrcsyj2zsxIIRD+Y0WXej7SUhMauXFezc6FpKlg3E+Ln1Zd82VUgAOMMyeb
	 m5aOuglHuQh/2TMoc380/5GVrsyOJRs+D0M2OXESXIAo+dbFMLq4Ul7FRQQIvlV+Ni
	 UWxf5uOs8oF7zwnklatk5MLJkFex93bQ207ea3b0LTVtwu4NfIEjNGZsjUbCxu1WBa
	 FvCQYufrPzqzw==
From: Rob Herring <robh@kernel.org>
Date: Thu, 20 Nov 2025 08:14:55 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, Eddie Huang <eddie.huang@mediatek.com>, 
 Vince-WL.Liu@mediatek.com, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 devicetree@vger.kernel.org, sirius.wang@mediatek.com, Jh.Hsu@mediatek.com, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: ot_shunxi.zhang@mediatek.com
In-Reply-To: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
Message-Id: <176364782296.1171084.17820068069366614095.robh@kernel.org>
Subject: Re: [PATCH v2 0/5] rtc: Enhance RTC driver with BBPU bit
 definitions and shutdown handling


On Thu, 20 Nov 2025 20:17:56 +0800, ot_shunxi.zhang@mediatek.com wrote:
> From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
> 
> (1) Add new bits definitions for RTC_BBPU register.
> (2) Add new functions to reset the BBPU alarm status in mt6397 RTC driver
> (3) Add mtk_rtc_shutdown function to handle RTC shutdown events.
> (4) For the V1 version comments, the following modifications are made:
> (4.1)the formatting changes are separated into a distinct patch.
> (4.2)Since the rtc-mt6397.c file is a fusion of multiple RTC drivers
> for the mt6358, mt6359, and mt6357 RTCs, the definitions of certain bits
> in the RTC_BBPU register differ among these RTCs. The mt6359 supports
> the alarm status bit, while both mt6358 and mt6357 do not. Therefore,
> the alarm-sta-supported property is added in the mt6359.dtsi file to
> differentiate between the different RTCs.
> (4.3)Additionally, the operation to disable IRQ in the shutdown function
> is removed.
> 
> Shunxi Zhang (5):
>   mfd: mt6397: Fix formatting of RTC_BBPU_KEY definition
>   mfd: mt6397: Add bit definitions and struct members to support alarm
>     status
>   rtc: mt6397: Fix formatting of platform driver structure
>   rtc: mt6397: Add BBPU alarm status reset and shutdown handling
>   arm64: dts: mediatek: mt6359: Add alarm-sta-supported property to RTC
>     node
> 
>  arch/arm64/boot/dts/mediatek/mt6359.dtsi |  1 +
>  drivers/rtc/rtc-mt6397.c                 | 32 +++++++++++++++++++++++-
>  include/linux/mfd/mt6397/rtc.h           |  5 +++-
>  3 files changed, 36 insertions(+), 2 deletions(-)
> 
> --
> 2.45.2
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
 Base: attempting to guess base-commit...
 Base: tags/next-20251119 (exact match)
 Base: tags/next-20251119 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/mediatek/' for 20251120121805.6775-1-ot_shunxi.zhang@mediatek.com:

arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk-ufs.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8390-genio-700-evk.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8195-demo.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r1.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-evb.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8370-grinn-genio-510-sbc.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8390-grinn-genio-700-sbc.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8192-evb.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dtb: pmic (mediatek,mt6359): rtc: Unevaluated properties are not allowed ('mediatek,alarm-sta-supported' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml






