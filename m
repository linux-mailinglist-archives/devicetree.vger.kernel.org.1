Return-Path: <devicetree+bounces-244854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CBCA9826
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 23:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23813300908F
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 22:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E712EBBB8;
	Fri,  5 Dec 2025 22:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7iICjNV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3B22E542C;
	Fri,  5 Dec 2025 22:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764974203; cv=none; b=nsF3lGbRE7e95s2kNAjfmYFw0Qzw3F1yLk4ym7Xi7E9asmrBU97c9KjeyV7uclbidRoSST5J42z5beqW66rkAF2uDVspwxQXfGU5broa57w8itGdaAkP/LMX6X3mCL+Y5JjkBKAv7B231MTO5Mj1/BGnPsu1yg5jEyc0zKL6Uac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764974203; c=relaxed/simple;
	bh=SlAK6xyJudQcjrejrHOJwdit6sCrE8s7ZDp+cOwhoFA=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Atl1ACv6kMa0uoTo6ijp6OSxIB0nzy2S6FxtMK1XiH9kdH77eJIKyhWUrG8SvbD++kho5sz1iBukNzoauj6t7q4Nrk2qM89ACPcTQjpwRL2zYyF6xZr758ADpyPXraLINMHguXOt0pRqA11TzBJo5ULDK3vqgcbWuUPba3AvnRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7iICjNV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 887CEC4CEF1;
	Fri,  5 Dec 2025 22:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764974202;
	bh=SlAK6xyJudQcjrejrHOJwdit6sCrE8s7ZDp+cOwhoFA=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=a7iICjNVsj6TudEqpKDnq2DS0Wi33ftlxsP5VGwc9swybPAdtYsjWUB1xpxsHXCpa
	 31wFW3PzwgwwHYL5XzSIIvXIlrRyT2rNQavYAL0QVUHWulEYDzEGhakRkLN4VMFNsa
	 +PT2qGPTBCBE/UiEMX4JbtNMDD191xAhJAa2tnfRsqRKR/gdlMT9Xzqmnng0ZvipQg
	 d5JyCbWX9YzxwZDjzcNKZlGHiNL8l0O2i0gUPmWpmNgKLy49Z55TUyJWMTPWplETe2
	 bO2X1AGk/E1rRHnTyKlm3GF+0pJsK8uW8aegSh1ID9K3IZCmg5TaYtxrWDZzMFyLkH
	 gsMdI7c3WtQeg==
From: Rob Herring <robh@kernel.org>
Date: Fri, 05 Dec 2025 16:36:40 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 linux-mediatek@lists.infradead.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Gary Bisson <bisson.gary@gmail.com>
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
Message-Id: <176497381428.863411.12977178737118474815.robh@kernel.org>
Subject: Re: [PATCH v5 0/5] Add support for Ezurio MediaTek platforms


On Wed, 03 Dec 2025 22:20:36 +0100, Gary Bisson wrote:
> This series adds support for Ezurio MediaTek platforms called
> "Tungsten". It includes support for MT8370-based Tungsten 510 and
> MT8390-based Tungsten 700 SOMs.
> 
> Changes in v2:
> - Use b4 to cc all maintainers properly
> - Squashed patches 2/3 together
> - Updated dts node names to be generic
> 
> Changes in v3:
> - Added per-commit changelog
> - Added missing Acked-by on 1st patch
> - Link to v2: https://lore.kernel.org/r/20251201-review-v2-0-dc2df44eec7e@gmail.com
> 
> Changes in v4:
> - Fixed remaining DTB warnings
> - Link to v3: https://lore.kernel.org/r/20251201-review-v3-0-07f9af7341fd@gmail.com
> 
> Changes in v5:
> - Fixed DTB per Angelo's comments
> - Added a MT8188 patch for easier mmc eint interrupt change
> - Link to v4: https://lore.kernel.org/r/20251202-review-v4-0-93f5cd2a0d4a@gmail.com
> 
> Regards,
> 
> Gary Bisson (5):
>   dt-bindings: vendor-prefixes: Add Ezurio LLC
>   dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
>   arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
>   arm64: dts: mediatek: add device tree for Tungsten 510 board
>   arm64: dts: mediatek: add device tree for Tungsten 700 board
> 
>  .../devicetree/bindings/arm/mediatek.yaml     |    2 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
>  arch/arm64/boot/dts/mediatek/Makefile         |    2 +
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi      |    6 +-
>  .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
>  .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
>  .../dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 +++++++++++++++++
>  7 files changed, 1534 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi
> 
> --
> 2.43.0
> 
> ---
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Matthias Brugger <matthias.bgg@gmail.com>
> To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> To: Sean Wang <sean.wang@mediatek.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> 
> ---
> Gary Bisson (5):
>       dt-bindings: vendor-prefixes: Add Ezurio LLC
>       dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
>       arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
>       arm64: dts: mediatek: add device tree for Tungsten 510 board
>       arm64: dts: mediatek: add device tree for Tungsten 700 board
> 
>  .../devicetree/bindings/arm/mediatek.yaml          |    2 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
>  arch/arm64/boot/dts/mediatek/Makefile              |    2 +
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi           |    6 +-
>  .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
>  .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
>  .../boot/dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 ++++++++++++++++++++
>  7 files changed, 1534 insertions(+), 3 deletions(-)
> ---
> base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
> change-id: 20251201-review-750072579991
> 
> Best regards,
> --
> Gary Bisson <bisson.gary@gmail.com>
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
 Base: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/mediatek/' for 20251203-review-v5-0-b26d5512c6af@gmail.com:

arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: pmic (mediatek,mt6359): '#sound-dai-cells' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 917504]] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: pmic (mediatek,mt6359): '#sound-dai-cells' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml
arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg: [[0, 275906560, 0, 917504]] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml
arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dtb: scp@10720000 (mediatek,mt8188-scp-dual): reg-names: ['cfg'] is too short
	from schema $id: http://devicetree.org/schemas/remoteproc/mtk,scp.yaml






