Return-Path: <devicetree+bounces-82105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0815491E728
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6C821F25C45
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2694416EB60;
	Mon,  1 Jul 2024 18:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smt5AEH8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0229A14BF8F
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 18:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719857422; cv=none; b=GRu6KGOC5CNIhND+usaDh/8SfCuq6jvzqRTiWGAVNtMgyBm/cse5RxzurUrUsAjs8JReNTxqik0pBbX2t2x80lK2BDGSQZzGMFMDgoknqesF7Js7kEROlEq7VIO7zXiBtn3v3V4j85frVbAot/11MMeFTMTdc+BGH21mqGXIXh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719857422; c=relaxed/simple;
	bh=42+iNoMF14DtqzqhxbInBjWKbLDDhJxeyWwx2WLtC1o=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=PKNSDt8J/b5jaP7ZXcZb+ng0f20tHsfZd5hI683RpW9pLkwbeKLbQ38o1JmBXqShC7L6Tz+IIxyxoWxOC3PPpZMsWok+u3cuLqo4Zo0idKzXosWCbZFC0x8EvHfNc37Ne+ybcq4KWp8v5tAB5/HCRtfov9jPrxRUkEyVkW42dZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smt5AEH8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A5E4C32781;
	Mon,  1 Jul 2024 18:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719857421;
	bh=42+iNoMF14DtqzqhxbInBjWKbLDDhJxeyWwx2WLtC1o=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=smt5AEH8QL5nagLdczW5xMrkVGISw2IBh0c6PMgnUaJFpJtJ9nELunnWviupwHh1v
	 whceka3Z8h2hiceGdHhtDN3Xl+AFbqc5f2DT0v2vsQuAqWPEC85Ll8wNdxZLvnSOsJ
	 JXuFqv3FJgrhmm2TgghkEthsEpolns2TaIfYSEIMIyIA8O7aSsX1pTLPUTzTwv3owr
	 kp9iRnJemtkRFQse66czG+FzFf7oSO7MwD2s0jXi8kSdSelNedGjT3xYPphi9BQ+WR
	 sgB+3i1KCxg0R25yW2f/m2LZRLaFOIB0KwfmmP3aXEZ8xwfLa5ULgPkDR4NEq0vBu7
	 CRbtWgQNPUjCA==
Date: Mon, 01 Jul 2024 12:10:20 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: kernel@dh-electronics.com, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Christophe Roullier <christophe.roullier@foss.st.com>, 
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20240629171100.20285-1-marex@denx.de>
References: <20240629171100.20285-1-marex@denx.de>
Message-Id: <171985715690.313627.4404278514791505125.robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH
 STM32MP13xx DHCOR DHSBC board


On Sat, 29 Jun 2024 19:10:30 +0200, Marek Vasut wrote:
> Describe ethernet MAC address nvmem cells in DH STM32MP13xx DHCOR DHSBC
> board DT. The MAC address can be fused in BSEC OTP fuses and used to set
> up MAC address for both ethernet MACs on this board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>  arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 4 ++++
>  1 file changed, 4 insertions(+)
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


New warnings running 'make CHECK_DTBS=y st/stm32mp135f-dhcor-dhsbc.dtb' for 20240629171100.20285-1-marex@denx.de:

arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800a000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#
arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet@5800e000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts-extended', 'mdio', 'nvmem-cell-names', 'nvmem-cells', 'phy-handle', 'phy-mode', 'snps,axi-config', 'snps,mixed-burst', 'snps,pbl', 'snps,tso', 'stmmac-axi-config' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/stm32-dwmac.yaml#






