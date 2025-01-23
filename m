Return-Path: <devicetree+bounces-140598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A968CA1A76C
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 16:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D60627A22DE
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 15:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684F7212D94;
	Thu, 23 Jan 2025 15:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3kuVMyw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422502139AC;
	Thu, 23 Jan 2025 15:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737647868; cv=none; b=HGtkAVYKslcoRh5ZPk5uqkYvOJGVIMd71NMfVUpna27HKhjLowlG4ahRHFeuUNyoDdhoitIJWxD7vKPDX8N3AQxMNY/mZsSkl2o9TL1VEL0ridDIYpfaFrr/YCo1riVSqLhb8O07AUg8TJo5VMc5nZnTMH+ZzlG7si6IiOua3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737647868; c=relaxed/simple;
	bh=HDXxO9qAlUO62itZdH9ffW5f6oieeEZ+qyLExIJ0csA=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=jZwzXR9SkzG+y7UQNtsFk4NTBxKzh0kyb4DJWrsFDZmBtPG/GL4VGmkYjl6Yk/5yPI8Cbsurv3ubQ2hiQ1rxUU3kkIEap/erUm9impjQfx8mNgwRDsTHGsAK62Kv6ZIaVkMmU6e7FRpExzGKPksb1NyK0Y9O908cbPF6roeGKFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3kuVMyw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0404DC4CEDD;
	Thu, 23 Jan 2025 15:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737647868;
	bh=HDXxO9qAlUO62itZdH9ffW5f6oieeEZ+qyLExIJ0csA=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=S3kuVMywcjybsUaZb5GdvcQCDNGNFTj8NgmSOjNj2PrcKbU+ru6FEP3VtzSwBvQsS
	 8PhobbLGxx03onDIusJ3bSI5ujoimWBPLAvjvHo4DH0D6H37YDFRKA1JC+sEhHRUXg
	 71n06VS2YLC94oqcZmI/teGKjpRHZck9qT1X4ildlb8aDhgReeuQ+666Umvj8vKP3w
	 smRtG9fxfRxTrqKypY6zFGAFBcXRoKA/3a8TdOTQULF2pYpuIY7fJu8p5jJWB3FCW2
	 pU3GN4MQCA5Vo5MtoFi4ZT5ajUbfMA5nXHWoO37jwD5FU39ZltMM20BbFiggocTPp1
	 Ke7CW+B4gAb9w==
Date: Thu, 23 Jan 2025 09:57:47 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
To: Marc Kleine-Budde <mkl@pengutronix.de>
In-Reply-To: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
References: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
Message-Id: <173764775141.3793586.6690578690442295161.robh@kernel.org>
Subject: Re: [PATCH stm32-next v3 0/2] ARM: dts: stm32: lxa-fairytux2: add
 gen{1,2} boards


On Tue, 21 Jan 2025 12:14:04 +0100, Marc Kleine-Budde wrote:
> Hello,
> 
> this series adds support for the Linux Automation GmbH FairyTux2
> boards generation 1 and 2.
> 
> The FairyTux2 is a small Linux device based on an Octavo Systems
> OSD32MP153c SiP, that occupies just two slots on a DIN rail.
> 
> regards,
> Marc
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes in v3:
> - 2/2: fix use generic node names for external GPIO and USB Type-C controller (thanks Krzysztof)
> - 2/2: LEDs: replace label by color and function property (thanks Krzysztof)
> - 2/2: gen2: sort nodes of i2c1 by address (thanks Krzysztof)
> - Link to v2: https://patch.msgid.link/20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de
> 
> Changes in v2:
> - 1/2: Added Krzysztof's Acked-by
> - 2/2: fix alignment for gpio-line-names (thanks Krzysztof)
> - 2/2: only use color:function for LED labels (thanks Krzysztof)
> - 2/2: use generic node names for external GPIO and USB Type-C controller
> - Link to v1: https://patch.msgid.link/20241210-lxa-fairytux-v1-0-9aea01cdb83e@pengutronix.de
> 
> ---
> Leonard Göhrs (2):
>       dt-bindings: arm: stm32: add compatible strings for Linux Automation GmbH LXA FairyTux 2
>       ARM: dts: stm32: lxa-fairytux2: add Linux Automation GmbH FairyTux 2
> 
>  .../devicetree/bindings/arm/stm32/stm32.yaml       |   2 +
>  arch/arm/boot/dts/st/Makefile                      |   2 +
>  .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen1.dts | 103 ++++++
>  .../boot/dts/st/stm32mp153c-lxa-fairytux2-gen2.dts | 147 ++++++++
>  .../arm/boot/dts/st/stm32mp153c-lxa-fairytux2.dtsi | 397 +++++++++++++++++++++
>  5 files changed, 651 insertions(+)
> ---
> base-commit: b7ebfb84a09de6b44492974339654d8ffc5ad9e1
> change-id: 20241210-lxa-fairytux-e730979d3d3f
> 
> Best regards,
> --
> Marc Kleine-Budde <mkl@pengutronix.de>
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/st/' for 20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de:

arch/arm/boot/dts/st/ste-hrefv60plus-tvk.dtb: gpio@a03fe000: compatible:0: 'stericsson,db8500-gpio' is not one of ['st,nomadik-gpio', 'mobileye,eyeq5-gpio']
	from schema $id: http://devicetree.org/schemas/gpio/st,nomadik-gpio.yaml#






