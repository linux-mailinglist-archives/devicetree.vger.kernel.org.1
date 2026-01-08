Return-Path: <devicetree+bounces-252896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015ED045AC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:27:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 619823163588
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197CE25F797;
	Thu,  8 Jan 2026 16:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egbNkSit"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90D725A34F;
	Thu,  8 Jan 2026 16:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767888836; cv=none; b=n3cp6foHFy5fdhpq4b1iexSJOsddbceTGP3kZH4kkEcQEJgmcHCL80KcBnS2HhPh3GTaJlJKsYQPqUBMGpdgo1PeSKbBHvsDlivWXxbrfTsF823/c64YnEJvojy9RANEyx3NJ+268n+KQ7MT2n1Ytw1PbmHFfklVUXxB+k+Xcnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767888836; c=relaxed/simple;
	bh=UmQqqGxCtoML0TFTnsyx6uOawh78jvPvwr1IW3fraBg=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=VbIpftS35iUSXGBquC0CkQb6C6lpABrJsSU12b10Mdw2xuhPzOEmWaQqyexgEEhmrtpDk9LkXgCGIxmaizvMKP4d5iovVpAxD05Pz9/P2Xvsl4VAsX5Zvc5tsuEOhljZC7cXCJc3Uw8CnYLjIgnzi5zYzYk5Ut7H9IxDZxzNocY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egbNkSit; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82124C116C6;
	Thu,  8 Jan 2026 16:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767888835;
	bh=UmQqqGxCtoML0TFTnsyx6uOawh78jvPvwr1IW3fraBg=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=egbNkSitGtEcHBSEwQqD07FdV8haTfnFGpB1/o+ku9arLELZZZw/Jjc4ml1Tib0VI
	 VWq56zmjZQHgLCp+h9vKEtVPpy3sReRUAFlOSMte+eOzN3bfWmQdowrzrPeYTBMGKv
	 LX2kEC65RaiNN21cC8tQahEilgirOs186J0zsLCBLNNP7kEe4jw/n4z67rZegWN9GN
	 9PjB2spPtoWQ1otRtp+PKrvIXSAWaKa2EyKbAmru/1TyMnCO32/GHUl3X2XMgW2nPA
	 wQsRCpcG/3Q/vQR+GrHy97/Rt+CTrwbdyqK19LSn5T+6WntELTePyvQKhAZ+LTHq5P
	 qfI+21uComC2g==
From: Rob Herring <robh@kernel.org>
Date: Thu, 08 Jan 2026 10:13:54 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: linux-amarula@amarulasolutions.com, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Srinivas Kandagatla <srini@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
In-Reply-To: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
References: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
Message-Id: <176788870833.376387.4028010130652032446.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: add STM32 TAMP NVRAM


On Wed, 07 Jan 2026 20:45:32 +0100, Dario Binacchi wrote:
> Add devicetree bindings for TAMP backup registers. These 32-bit
> registers are retained in all low-power modes and in VBAT mode. As a
> result, they can also be used to store sensitive data because their
> content is protected by a tamper detection circuit.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> ---
> 
>  .../bindings/nvmem/st,stm32-tamp-nvram.yaml   | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
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
 Base: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/st/' for 20260107194541.1843999-1-dario.binacchi@amarulasolutions.com:

arch/arm64/boot/dts/st/stm32mp257f-dk.dtb: tamp@46010000 (st,stm32-tamp): '#address-cells', '#size-cells', 'nvram@46010100', 'ranges' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/stm32/st,stm32-syscon.yaml
arch/arm64/boot/dts/st/stm32mp257f-ev1.dtb: tamp@46010000 (st,stm32-tamp): '#address-cells', '#size-cells', 'nvram@46010100', 'ranges' do not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/arm/stm32/st,stm32-syscon.yaml






