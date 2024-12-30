Return-Path: <devicetree+bounces-134790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 724889FE9C2
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 19:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F9F63A343F
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 18:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927FC1B3946;
	Mon, 30 Dec 2024 18:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zhffs2bb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6974A1B3938;
	Mon, 30 Dec 2024 18:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735582635; cv=none; b=h9Hl2zCZa+0cXPZuAKGWzIBGmEM2I2P9K8eenICtTh5aXadbg9p8oq38i41IG7cECnrT5GNR0vL08REyiWHZgTYzJaYbL3YFOewsF79vERRhm1cdp/0G+h1k27xG/vt1TRSn2S/ZmxA9GqoVHVGwuAjMitVCjDEQUnUCipy0MAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735582635; c=relaxed/simple;
	bh=yO/bDAAjALbmdooiFvPDhcv3ctrG92wc4GGL6V+fiSk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=uMZGxtbFmmbYC0kDU8K4dSk/KydYxCu94w85pwjoxB5bTyheYW+HNyZ6TIXQr9GSTO/pxMpK3LrKXNbyA++/bz9JE3qzq6URNOywU9/2x96IO2BW8mBXLiZoEu+NkARNKnZWSb1IqxortPk1vDCJay5g55vZVTE7BvlZNhnXx7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zhffs2bb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2DD2C4CED6;
	Mon, 30 Dec 2024 18:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735582634;
	bh=yO/bDAAjALbmdooiFvPDhcv3ctrG92wc4GGL6V+fiSk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Zhffs2bbyXPE3L1zn5MNztjnOMSJAzkqiRxv2VHJnIX4tbQYGojgAgpYtH2DJu80o
	 bctRSbqot6s7R73zULPZaN29ngPsiEtnxlqJYrT6rLAtnlUthxgyTj0DDfbxa7QUtP
	 ydUwinjHQH6mCKXfOnB9ykYmqRlWKW+5BESYiq1YFMsK7CKqkAG9t721YaQLVuR2uZ
	 V6LPodkOIUoqLTPwtfTlNTClcH1LH6+pIhFRwGnHNZLZrU5eNKWM/lz0ACdpvACh/e
	 qIXkjyMwLUcDoPAGdvwnK1KRWG2n/EPGBF62o5tneVKLdtqzJPay2GGBWWkk7yrBv2
	 B/H2x6UzisL+A==
Date: Mon, 30 Dec 2024 12:17:13 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org
To: Ivan Sergeev <ivan8215145640@gmail.com>
In-Reply-To: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
References: <20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com>
Message-Id: <173558214299.2262675.7745978856834508715.robh@kernel.org>
Subject: Re: [PATCH v4 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and
 Pi2


On Mon, 30 Dec 2024 17:58:17 +0300, Ivan Sergeev wrote:
> BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
> BigTreeTech for the intent of using as a 3d printer control board.
> It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
> the device trees for CB2 and Pi2 are also done in the same manner: the
> common nodes and properties are put into a dtsi file that the
> board-specific device trees include.
> 
> Changes in v4:
> - Removed invalid `i2c,ignore-nak` properties
> - Set `#address-cells` and `size-cells` on `sdmmc1`
> - Fixed `phy-supply` properties of usb host nodes
> - Link to v3: https://lore.kernel.org/r/20241227-bigtreetech-cb2-v3-0-91c556adcffe@gmail.com
> 
> Changes in v3:
> - Proper formatting and patch series sending (using b4)
> - Converted spaces to tab indentation in the dtsi file
> - Fixed empty line where the license identifier should be
> - Link to v2 1/2: https://lore.kernel.org/linux-rockchip/20241224135751.350379-2-ivan8215145640@gmail.com/
> - Link to v2 2/2: https://lore.kernel.org/linux-rockchip/20241224140057.350667-2-ivan8215145640@gmail.com/
> 
> Changes in v2:
> - Added bigtreetech cb2 and pi2 boards to the list of platforms
> - Split BigTreeTech CB2 and Pi2 into two device trees using common dtsi
> - Link to v1: https://lore.kernel.org/linux-rockchip/20241222203952.84217-2-ivan8215145640@gmail.com/
> 
> Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
> ---
> Ivan Sergeev (2):
>       dt-bindings: arm: rockchip: Add BigTreeTech CB2 and Pi2
>       arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |  11 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   2 +
>  .../dts/rockchip/rk3566-bigtreetech-cb2-manta.dts  |  10 +
>  .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 943 +++++++++++++++++++++
>  .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
>  5 files changed, 976 insertions(+)
> ---
> base-commit: d6ef8b40d075c425f548002d2f35ae3f06e9cf96
> change-id: 20241224-bigtreetech-cb2-18944b349916
> 
> Best regards,
> --
> Ivan Sergeev <ivan8215145640@gmail.com>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-bigtreetech-cb2-manta.dtb rockchip/rk3566-bigtreetech-pi2.dtb' for 20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com:

arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: /i2c@fe5c0000/ns2009@48: failed to match any schema with compatible: ['ti,tsc2007']
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: /i2c@fe5c0000/ns2009@48: failed to match any schema with compatible: ['ti,tsc2007']
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: host-port: phy-supply: 'oneOf' conditional failed, one must be fixed:
	[[181, 182]] is not of type 'object'
	[181, 182] is too long
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: host-port: phy-supply: 'oneOf' conditional failed, one must be fixed:
	[[184, 185]] is not of type 'object'
	[184, 185] is too long
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: host-port: phy-supply: 'oneOf' conditional failed, one must be fixed:
	[[181, 182]] is not of type 'object'
	[181, 182] is too long
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: host-port: phy-supply: 'oneOf' conditional failed, one must be fixed:
	[[184, 185]] is not of type 'object'
	[184, 185] is too long
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: wireless-bluetooth: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: touch: touch-gpio: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: wireless-bluetooth: uart1-gpios: {'rockchip,pins': [[2, 13, 0, 187]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: touch: touch-gpio: {'rockchip,pins': [[0, 13, 0, 189], [0, 14, 0, 187]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






