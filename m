Return-Path: <devicetree+bounces-137144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D0FA0797A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2E4188A8F2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C46421B18C;
	Thu,  9 Jan 2025 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdAa5quY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598B121B185;
	Thu,  9 Jan 2025 14:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736433633; cv=none; b=seoiLOiBiJJby3ZQ4Ga3RA4vqdZtmVFUo4aIm1SBB+jOSQ/3uMnbas4FHMvCux5KgaXZfVJoxhvob8cLITfYAwclxDjiPv42sSAB1+YZAWU5PEiVRVB1hpIVrBG1vO+wbCJJpPUdUoH7+jvHg7QptRK87NQudGIUR+fRzi8+OUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736433633; c=relaxed/simple;
	bh=FzKpk1Kq8AuWIYuSSIRzcUeb4DT9dYfnfccqrFUAL34=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=X8CiPpv1iQZ4S9CaPqDajaOvwxrPwHpSvSIbAXqtL5OimXr5yKclRO2kpGfgkEGfDkVIUyGsNgTOlS9cEFLzLWnBJ1g7HyFwy9UCkAHxSoPHJC+8k1gDWxEsSAjUNxh76fONOxl2G4eNreiPuM5Ar3FecKVAIrTQlcjsdEnx220=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdAa5quY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6F4CC4CED2;
	Thu,  9 Jan 2025 14:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736433632;
	bh=FzKpk1Kq8AuWIYuSSIRzcUeb4DT9dYfnfccqrFUAL34=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=tdAa5quYNqCwXnECoYvmsZuPDGKgx6KKp6hbctwCi00dmAUQP16Rk7E3osEbhkvG7
	 ksaAWFnCDrzIBqj3+kJzUoc+h1M63ac0Q7uzQheE5olAFrKC8+EIKHLlgYYIQ19dCX
	 7COiZRmSP6HHlIK3gPWJWqV8nVI8dr3NWz6UhNSmHcIgB4fLi1VBcMOlYyBpGeD/Oo
	 ELYHsHIRTBEv1QJ61nDTTfRpF5g9QmBAI5c2IlLlcb1WW61fx8zv6jhp9iYGRUkGbb
	 khCFIEpU1fWTv9pu1hBzYzhTzA+6KLc5ieIMat6+j6TjNT53U5OvSX2hCBZyhIa+ft
	 5gkFXptrYYraQ==
Date: Thu, 09 Jan 2025 08:40:31 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: David Airlie <airlied@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 CK Hu <ck.hu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Fabien Parent <fparent@baylibre.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
 Conor Dooley <conor+dt@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>, 
 linux-mediatek@lists.infradead.org, Maxime Ripard <mripard@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: amergnat@baylibre.com
In-Reply-To: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
Message-Id: <173643343500.3320207.10375372470982398627.robh@kernel.org>
Subject: Re: [PATCH v6 0/6] Add display support for the MT8365-EVK board


On Thu, 09 Jan 2025 11:37:53 +0100, amergnat@baylibre.com wrote:
> The purpose of this series is to add the display support for the mt8365-evk.
> 
> This is the list of HWs / IPs support added:
> - Connectors (HW):
>   - HDMI
>   - MIPI DSI (Mobile Industry Processor Interface Display Serial Interface)
> - HDMI bridge (it66121)
> - DSI pannel (startek,kd070fhfid015)
> - SoC display blocks (IP):
>   - OVL0 (Overlay)
>   - RDMA0 (Data Path Read DMA)
>   - Color0
>   - CCorr0 (Color Correction)
>   - AAL0 (Adaptive Ambient Light)
>   - GAMMA0
>   - Dither0
>   - DSI0 (Display Serial Interface)
>   - RDMA1 (Data Path Read DMA)
>   - DPI0 (Display Parallel Interface)
> 
> The Mediatek DSI, DPI and DRM drivers are also improved.
> 
> The series is rebased on top of Angelo's series [1] to
> use the OF graphs support.
> 
> Regards,
> Alex
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
> Changes in v6:
> - Fix DPI binding: remove the duplicated property (power-domains).
> - Squash defconfig commit.
> - Fix the property order in the DTS.
> - Link to v5: https://lore.kernel.org/r/20231023-display-support-v5-0-3905f1e4b835@baylibre.com
> 
> Changes in v5:
> - Patch merged, then removed from the series:
>   - dt-bindings: display: mediatek: rdma: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: ovl: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: gamma: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: dpi: add compatible for MT8365
>   - dt-bindings: display: mediatek: dsi: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: dither: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: color: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: ccorr: add compatible for MT8365 SoC
>   - dt-bindings: display: mediatek: aal: add compatible for MT8365 SoC
> - Enable STARTEK KD070FHFID015 panel in the defconfig.
> - Rebase on top of 6.13-rc6.
> - Link to v4: https://lore.kernel.org/all/20231023-display-support-v4-0-ed82eb168fb1@baylibre.com
> 
> Changes in v4:
> - Patch merged, then removed from the series:
>   - dt-bindings: display: mediatek: dpi: add power-domains property
>   - dt-bindings: pwm: mediatek,pwm-disp: add compatible for mt8365 SoC
>   - clk: mediatek: mt8365-mm: fix DPI0 parent
> - Remove mediatek,mt8365-dpi compatible from mtk_drm_drv.c because it
>   use the mt8192's data. It's a miss.
> - Add MT8365 OF graphs support, remove the hardcoded display path and
>   rebase on top of Angelo's series [1].
> - Link to v3: https://lore.kernel.org/r/20231023-display-support-v3-0-53388f3ed34b@baylibre.com
> 
> Changes in v3:
> - Drop "drm/mediatek: add mt8365 dpi support" because it's the same
>   config as mt8192 SoC
> - Drop "dt-bindings: pwm: mediatek,pwm-disp: add power-domains property"
>   because an equivalent patch has been merge already.
> - Add DPI clock fix in a separate commit.
> - Improve DTS(I) readability.
> - Link to v2: https://lore.kernel.org/r/20231023-display-support-v2-0-33ce8864b227@baylibre.com
> 
> Changes in v2:
> - s/binding/compatible/ in commit messages/titles.
> - Improve commit messages as Conor suggest.
> - pwm-disp: Set power domain property for MT8365. This one is optionnal
>   and can be used for other SoC.
> - Fix mediatek,dsi.yaml issue.
> - Remove the extra clock in the DPI node/driver and fix the dpi clock
>   parenting to be consistent with the DPI clock assignement.
> - Link to v1: https://lore.kernel.org/r/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com
> 
> [1] https://lore.kernel.org/lkml/20240516081104.83458-1-angelogioacchino.delregno@collabora.com/
> 
> ---
> Alexandre Mergnat (4):
>       drm/mediatek: dsi: Improves the DSI lane setup robustness
>       arm64: defconfig: enable display support for mt8365-evk
>       arm64: dts: mediatek: add display blocks support for the MT8365 SoC
>       arm64: dts: mediatek: add display support for mt8365-evk
> 
> Fabien Parent (2):
>       dt-bindings: display: mediatek: dpi: add power-domains example
>       drm/mediatek: add MT8365 SoC support
> 
>  .../bindings/display/mediatek/mediatek,dpi.yaml    |   2 +
>  arch/arm64/boot/dts/mediatek/mt8365-evk.dts        | 236 +++++++++++++++
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi           | 336 +++++++++++++++++++++
>  arch/arm64/configs/defconfig                       |   2 +
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c             |   8 +
>  drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +
>  6 files changed, 586 insertions(+)
> ---
> base-commit: 9d89551994a430b50c4fffcb1e617a057fa76e20
> change-id: 20231023-display-support-c6418b30e419
> 
> Best regards,
> --
> Alexandre Mergnat <amergnat@baylibre.com>
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/mediatek/' for 20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com:

arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: switch@31: 'interrupts' is a dependency of 'interrupt-controller'
	from schema $id: http://devicetree.org/schemas/net/dsa/mediatek,mt7530.yaml#
arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dtb: /soc/audio-controller@11220000/mt8183-afe-pcm: failed to match any schema with compatible: ['mediatek,mt8183-audio']
arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama-sku16.dtb: vcodec@17020000: 'assigned-clocks' is a required property
arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: reg: [[0, 270602240, 0, 4096], [0, 268455936, 0, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: pwm@1401f000: compatible: 'oneOf' conditional failed, one must be fixed:
	['mediatek,mt8173-disp-pwm', 'mediatek,mt6595-disp-pwm'] is too long
	'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt6795-disp-pwm', 'mediatek,mt8167-disp-pwm']
	'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt8186-disp-pwm', 'mediatek,mt8188-disp-pwm', 'mediatek,mt8192-disp-pwm', 'mediatek,mt8195-disp-pwm', 'mediatek,mt8365-disp-pwm']
	'mediatek,mt8173-disp-pwm' was expected
	'mediatek,mt8183-disp-pwm' was expected
	from schema $id: http://devicetree.org/schemas/pwm/mediatek,pwm-disp.yaml#
arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dtb: /soc/audio-controller@11220000/mt8183-afe-pcm: failed to match any schema with compatible: ['mediatek,mt8183-audio']
arch/arm64/boot/dts/mediatek/mt8195-demo.dtb: charger: usb-otg-vbus-regulator: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
	from schema $id: http://devicetree.org/schemas/power/supply/mt6360_charger.yaml#
arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dtb: i2c@1100e000: Unevaluated properties are not allowed ('id' was unexpected)
	from schema $id: http://devicetree.org/schemas/i2c/i2c-mt65xx.yaml#
arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dtb: /soc/audio-controller@11220000/mt8183-afe-pcm: failed to match any schema with compatible: ['mediatek,mt8183-audio']
arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu-sku22.dtb: /soc/audio-controller@11220000: failed to match any schema with compatible: ['mediatek,mt8183-audiosys', 'syscon']
arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dtb: dp-bridge@5c: 'extcon' is a required property
	from schema $id: http://devicetree.org/schemas/display/bridge/ite,it6505.yaml#






