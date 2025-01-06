Return-Path: <devicetree+bounces-135927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88325A03094
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:28:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B76D91885509
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6FA1DFDA2;
	Mon,  6 Jan 2025 19:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyTFwFGj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A31DFD96;
	Mon,  6 Jan 2025 19:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736191679; cv=none; b=CFolKm26aPPstrhwwKv9Wqq/rxU7v5GUsY0cC0UvnrXNQqcE0n4KC4N0Rlcab2xbmA6Y3Lh0pYojSJZDZlil41gO9qUUqRiR39NeHTdATap9K3ViT+RQPszNaj2eu5sUAYtVgp9sTZvekI6POPSlPLCG0kcyY9lNbixf4E0nRwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736191679; c=relaxed/simple;
	bh=rsXG31WH7wfyTDNrN8YIiWEPDkdjB/Gf7A7Pi2iMbIk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=uhl602CwRkbWX2+0b4lDLVoIbup+kiNpN9fcnH3e/1qrQd/qDjas7rYdCjhOiD3LuZd50PYUNHi58H1VX/LVHU5RjY7YlljOt2mFtFXWHxPfLQibxIL6rX90dkzNa6OMYR8nMqpNZfv6X5m8vNbTlPC9Xy6Xdz6UrFyS7SMPZZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyTFwFGj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D257BC4CEEC;
	Mon,  6 Jan 2025 19:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736191679;
	bh=rsXG31WH7wfyTDNrN8YIiWEPDkdjB/Gf7A7Pi2iMbIk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=oyTFwFGjHshqZLl6kWwazxmVcUO1HWN8CR+4P6qWhdh6SxT70rczFKCCQ7v3vn/Kc
	 KYrdvmLH1qoT2h7bwQSPRMrSSeQ7/lJfUSlNVlP1vht/OgI9cHAZCvp5Io8PrhYp3N
	 sX45dmPwW69Vo1z0AaRa9yxjfCNP+1KjfaCgbMQXWtpWDA0miryzJuhlWL3A1OBHI4
	 ABBbTdIB91bwoJNZnKxsSj/6BlvJBOmV3hf1X4uHFjQNa9LLLctXfFj0/gdb7HQePG
	 5S66n+tp+y+mNlfl24j1RDbGsbSQE451qEJ0jtuFHe/hGXx8kvq2XcBf+VL6Knd5iz
	 PmKZhmApT/kCg==
Date: Mon, 06 Jan 2025 13:27:58 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org
To: Ivan Sergeev <ivan8215145640@gmail.com>
In-Reply-To: <20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com>
References: <20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com>
Message-Id: <173619154629.838782.15013037487294078992.robh@kernel.org>
Subject: Re: [PATCH v6 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and
 Pi2


On Sun, 05 Jan 2025 13:40:29 +0300, Ivan Sergeev wrote:
> BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
> BigTreeTech for the intent of using as a 3d printer control board.
> It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
> the device trees for CB2 and Pi2 are also done in the same manner: the
> common nodes and properties are put into a dtsi file that the
> board-specific device trees include.
> 
> Changes in v6:
> - Fixed node names missed in v5
> - Link to v5: https://lore.kernel.org/r/20250105-bigtreetech-cb2-v5-0-923f911b10c0@gmail.com
> 
> Changes in v5:
> - Applied requested changes
> - Fixed usb `phy-supply` format
> - Removed improperly named pinctrl nodes that were unused.
> - Fixed names of other pinctrl nodes
> - Link to v4: https://lore.kernel.org/r/20241230-bigtreetech-cb2-v4-0-26d2d30e07ce@gmail.com
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
>  .../boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  | 919 +++++++++++++++++++++
>  .../boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |  10 +
>  5 files changed, 952 insertions(+)
> ---
> base-commit: 63676eefb7a026d04b51dcb7aaf54f358517a2ec
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-bigtreetech-cb2-manta.dtb rockchip/rk3566-bigtreetech-pi2.dtb' for 20250105-bigtreetech-cb2-v6-0-ee7bc9c4df46@gmail.com:

arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: /i2c@fe5c0000/touchscreen@48: failed to match any schema with compatible: ['ti,tsc2007']
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: /i2c@fe5c0000/touchscreen@48: failed to match any schema with compatible: ['ti,tsc2007']
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dtb: pmic: soc-slppin-gpio: {'rockchip,pins': [[0, 2, 0, 196]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2-manta.dtb: pmic: soc-slppin-gpio: {'rockchip,pins': [[0, 2, 0, 196]]} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






