Return-Path: <devicetree+bounces-139323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7643BA151DB
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:32:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D96DE3A9E41
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E0F13C9D4;
	Fri, 17 Jan 2025 14:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFqFrkFE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B1127466;
	Fri, 17 Jan 2025 14:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737124333; cv=none; b=YodkcQ4HTPLTqrmEYbU6hzdaWeByIsVactj+PC8tGWWXZNlJMs65ZvgYi9KSG9RNoOgT7PFFGUv0jov/Ci6CDO5sjQGisO1l4N7oo6KJa5loDULdabNZA6ZFB3A9RQXdZjSSlCqKnUTWKEzKCWMFnLbCxiWR8qfHaWDOyCHgs7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737124333; c=relaxed/simple;
	bh=T8PZajPEts8hiVvPkTDdvWpLe1pkhFePBotfq454ChY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=CoIc4UdIayt9KVTzv5UdQ8cOZJxnlJWRToSOFKgzor4ryFqoBXjU48KaK8EUbzBg/Kllv9porXzFu+t3TFFaQXNoTYue4r0P93TWev4i1DcNbfuDg0GAjw4j/3XWiWsCatwOIrSqHq/65MM7y7wvzyywHEwxs+h2yVW9ihKuC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFqFrkFE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15454C4CEE2;
	Fri, 17 Jan 2025 14:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737124333;
	bh=T8PZajPEts8hiVvPkTDdvWpLe1pkhFePBotfq454ChY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=LFqFrkFEVNscEv0YeH/sYXrvxMdJfFMAieYNA9i6pmPXd5QRzY9yu4XZfaN3AGxs8
	 G+iNr6qE6o1sRfc5gCjwUPkIwye8trsk/Cs9NUNL9XNCKcb3xzrfdVhF46tOXU3W41
	 6pLgLP2VN4QJCFsdjup8taPy0yvUFkfC1q7XOIwp2yLqAYCv9kSzg1yWiFos0170cQ
	 53U/W3W0Wan8pQOT1+o9rtr4NrzsUwCpXNdQ4x7+Esv8Amj3gt2vXRrKfj49xGNJau
	 jwIZo8tlX2NASe3CQYA6uSF/ohvcX5tz90ixxEhcnZlXXQw+fyXOnMHOOE3abk0ydD
	 bh+SYtZ9nE+Fw==
Date: Fri, 17 Jan 2025 08:32:12 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: David Airlie <airlied@gmail.com>, linux-mediatek@lists.infradead.org, 
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Steven Price <steven.price@arm.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
In-Reply-To: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
Message-Id: <173712392224.809745.9286641261845067078.robh@kernel.org>
Subject: Re: [PATCH 0/3] Add Mali GPU support for Mediatek MT8370 SoC


On Thu, 16 Jan 2025 15:25:56 +0100, Louis-Alexis Eyraud wrote:
> This patchset adds the support of the ARM Mali G57 MC2 GPU (Valhall-JM,
> dual core), integrated in the Mediatek MT8370 SoC, to the panfrost driver
> and to the mt8370.dtsi include file.
> 
> I've testing this patchset on a Mediatek Genio 510 EVK board,
> with a kernel based on linux-next (tag: next-20250113) plus [1] patchset.
> 
> The panfrost driver probed with the following messages:
> ```
> panfrost 13000000.gpu: clock rate = 390000000
> panfrost 13000000.gpu: mali-g57 id 0x9093 major 0x0 minor 0x0 status 0x0
> panfrost 13000000.gpu: features: 00000000,000019f7, issues: 00000003,
>   80000400
> panfrost 13000000.gpu: Features: L2:0x08130206 Shader:0x00000000
>   Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
> panfrost 13000000.gpu: shader_present=0x5 l2_present=0x1
> [drm] Initialized panfrost 1.3.0 for 13000000.gpu on minor 0
> ```
> 
> [1] https://lore.kernel.org/linux-mediatek/20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com/
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
> Louis-Alexis Eyraud (3):
>       dt-bindings: gpu: mali-bifrost: Add compatible for MT8370 SoC
>       drm/panfrost: Add support for Mali on the MT8370 SoC
>       arm64: dts: mediatek: mt8370: Enable gpu support
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml |  5 ++++-
>  arch/arm64/boot/dts/mediatek/mt8370.dtsi                    |  9 +++++++++
>  drivers/gpu/drm/panfrost/panfrost_drv.c                     | 10 ++++++++++
>  3 files changed, 23 insertions(+), 1 deletion(-)
> ---
> base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
> change-id: 20250115-mt8370-enable-gpu-3b6f595fa63d
> prerequisite-change-id: 20250113-dts_mt8370-genio-510-3560b8010ba9:v2
> prerequisite-patch-id: af53ae39240467340ac4c9cdbc8fdd949c5457a2
> prerequisite-patch-id: ca07485956f81c1a40029b48d2b4bcf00d74fc13
> prerequisite-patch-id: c34d9870b2c61d87ad8a6facba13d8970682e679
> prerequisite-patch-id: 48784acdcdd8b886fdec9f21c9cb88abb327e2e1
> 
> Best regards,
> --
> Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/mediatek/' for 20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com:

arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: pinctrl@10005000: 'pcie-default' does not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt8188-pinctrl.yaml#
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: pmic: regulators: 'compatible' is a required property
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml#
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: pmic: '#sound-dai-cells', 'mt6359codec', 'mt6359rtc' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/mediatek,mt6397.yaml#
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: mailbox@10320000: 'clock-names' is a required property
	from schema $id: http://devicetree.org/schemas/mailbox/mediatek,gce-mailbox.yaml#
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: mailbox@10330000: 'clock-names' is a required property
	from schema $id: http://devicetree.org/schemas/mailbox/mediatek,gce-mailbox.yaml#
arch/arm64/boot/dts/mediatek/mt8370-genio-510-evk.dtb: jpeg-decoder@1a040000: iommus: [[123, 685], [123, 686], [123, 690], [123, 691], [123, 692], [123, 693]] is too long
	from schema $id: http://devicetree.org/schemas/media/mediatek-jpeg-decoder.yaml#






