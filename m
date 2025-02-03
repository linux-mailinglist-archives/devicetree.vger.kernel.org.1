Return-Path: <devicetree+bounces-142618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11499A25EE9
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96073160803
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08BD22080E6;
	Mon,  3 Feb 2025 15:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGzyDH2Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D901A201270
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 15:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738597026; cv=none; b=CpeTSinwvElYN9Fqb5bjQD2fVHs1SvyzveLPOZGZpICMXT47OYv+R507L2nC5O0DW4CoxbpjnyGoiRmbmL/K/Pk/DKm5kbq3MSKIdurDwlvoWRCEtkgKePha9OVVJleyRbvXO3wPYozb8ClTFZuNMKCjTUQ2CFqIcmryEbZ4wVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738597026; c=relaxed/simple;
	bh=io2jOiAYZgNPcYe++cli+V+FY1fGXApzfdK6XF5tjp0=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=dO/kcVzWLt964Fihci1KVXfcM/8qB5jGbP5PYECdqDgaWW0i0rNy5Nta9oVrqmrqKR6XssMluGvDepY8QtBh1AVlBdQZLJWFIiCmngEPYQ4hJfR4Zd0TAnACsQ0M9EQbpIyvmuptRy6fFlX2OlPXYoC9o26uVoZLXdh/qYLndh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGzyDH2Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A999C4CED2;
	Mon,  3 Feb 2025 15:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738597026;
	bh=io2jOiAYZgNPcYe++cli+V+FY1fGXApzfdK6XF5tjp0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=eGzyDH2Y86s92rWyDtvP8hZxFLJ+cZGw9ftTxnO7NxJEKpZpf2435DcsVMEFOm2dU
	 3z8jQmwU/UvrL49IRy1PA6c6tzqebmnzQYdN+Zgabmp3e4jTCMTBsX8DRmiFQyaWvE
	 6eOUSmeVg6ZtFvwKirZCqlrTrB+W5s61cWOaIIS4exjoRsZyd8pUOI4I9rpqOLxAfU
	 yIxuXT1CPpw/QWJXf7AU7QfMaD7wYdpIz0PZJgbkBehTaDgRpawm7DTOdOYApkr7zc
	 peSUsXcJ90EArpqRWF2ZpD/MQ8HzLggZqB9sODgBvvTq6o9ZIhNykq+khzzO5yZyVf
	 wbeZN0S5/2kcg==
Date: Mon, 03 Feb 2025 09:37:05 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
To: Lorenzo Bianconi <lorenzo@kernel.org>
In-Reply-To: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
References: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
Message-Id: <173859694682.2601632.260969145001463720.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: Introduce more nodes to EN7581 SoC
 evaluation board


On Sat, 01 Feb 2025 15:39:48 +0100, Lorenzo Bianconi wrote:
> Add the following nodes to EN7581 SoC and EN7581 evaluation board:
> - clock controller
> - rng controller
> - pinctrl
> - i2c controllers
> - spi nand controller
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  arch/arm64/boot/dts/airoha/en7581-evb.dts |  8 +++
>  arch/arm64/boot/dts/airoha/en7581.dtsi    | 90 +++++++++++++++++++++++++++++++
>  2 files changed, 98 insertions(+)
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/airoha/' for 20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org:

arch/arm64/boot/dts/airoha/en7581-evb.dtb: soc: i2cclock@0: 'anyOf' conditional failed, one must be fixed:
	'reg' is a required property
	'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm64/boot/dts/airoha/en7581-evb.dtb: system-controller@1fbf0200: compatible: ['syscon', 'simple-mfd'] is too short
	from schema $id: http://devicetree.org/schemas/mfd/syscon-common.yaml#
arch/arm64/boot/dts/airoha/en7581-evb.dtb: i2cclock@0: clock-frequency: 20000000 is greater than the maximum of 5000000
	from schema $id: http://devicetree.org/schemas/i2c/i2c-controller.yaml#
arch/arm64/boot/dts/airoha/en7581-evb.dtb: i2c0@1fbf8000: 'resets' is a required property
	from schema $id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
arch/arm64/boot/dts/airoha/en7581-evb.dtb: i2c1@1fbf8100: 'resets' is a required property
	from schema $id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
arch/arm64/boot/dts/airoha/en7581-evb.dtb: i2c1@1fbf8100: status: 'oneOf' conditional failed, one must be fixed:
	['disable'] is not of type 'object'
	'disable' is not one of ['okay', 'disabled', 'reserved', 'fail', 'fail-needs-probe']
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#






