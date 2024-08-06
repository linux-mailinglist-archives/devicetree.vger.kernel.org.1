Return-Path: <devicetree+bounces-91385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FB19491DF
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 15:44:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C84E28772E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25F31D3625;
	Tue,  6 Aug 2024 13:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwHh4RZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E67D1D61A6
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 13:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722951823; cv=none; b=ZukAXRlgbAanuZqLQeTFvY57wIIToJevC0uaBFF42venU1u2KzTBLeuvI8zP4EuquPzDMvL8UIuvpNwEOTl1+6KL+QqbgvB7R30a/Zd5p4ed1mc3Lv8M/figsuA0qfNGzr7nnaGk7ip6HtKUTSyBa8iTFwY/57zJuu+bBEFWiQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722951823; c=relaxed/simple;
	bh=7cgpMKZ/sRoxMwB5sW8eWWI81jOeYc0K6w4lNJu+HD4=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=YYcYQiigaJJSNlK2KxwkMm216Kum+Pf6R9RknCSwUU1FoY2iFi4P3ojA+QWqKpsOb58kh9PHxq4LdxmY/uWk0nTf7UKTtEFRIrtnU5BokbO7+iNpUarS1w08Xigjvp9vvkX0cBzRJKu4ZXcaPzafhosSww1Rpg3VFG1prbvdZyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwHh4RZ8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5198C32786;
	Tue,  6 Aug 2024 13:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722951823;
	bh=7cgpMKZ/sRoxMwB5sW8eWWI81jOeYc0K6w4lNJu+HD4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=hwHh4RZ8gZdKdrU0Uu1D1uNE8rxtqIANcdo3t4Ixd03WAD9mg74UDhKwd9rZWLQC0
	 IY9MtA2fKCAZNkZTscqk0Q86bc+UVfmxdWRUryv1r6p7jlhxKt24A5fTY0lvBkr7Wv
	 GMDxKYHbpMPOMua5+Eih3gwnUSLec+65jc5KaRqinZiFHCDMzrO2wvaTh3pQm9iHYt
	 x4Fy8/gwvpQqDnoPuVWY2aiR+N0uFNFhJlyEWQt6pdrMwaSGPQtHUZ1pg4WjZg/grQ
	 TKFlgxz6Seg9qbL0Tqb/GYFKs/nIKJvEAeQjv9RpnG5vuhiDz4AF0p9eD0qI/bvAaV
	 74IAQl23rNxqw==
Date: Tue, 06 Aug 2024 07:43:41 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20240805232932.2030-1-naoki@radxa.com>
References: <20240805232932.2030-1-naoki@radxa.com>
Message-Id: <172295171605.1220315.16278406037765570238.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: add support for
 Radxa ROCK Pi E v3.0


On Tue, 06 Aug 2024 08:29:31 +0900, FUKAUMI Naoki wrote:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240805232932.2030-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']






