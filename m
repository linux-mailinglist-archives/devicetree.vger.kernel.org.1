Return-Path: <devicetree+bounces-138127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5168A0BBCD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DC451882827
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2137C1FBBCF;
	Mon, 13 Jan 2025 15:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSDMpSA6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA37E1FBBC1;
	Mon, 13 Jan 2025 15:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736781972; cv=none; b=UqjUbrzXgVTRMosyqb7SvgrWxlev0CqjDx/UNJLLQL8bQ74ksvNt09DnaBpjskRdYu4gRPlsEyEOtArNomgDpX4VuKrcbeqqgUZFgL2iPl+P/oWdaOvNLkScvxESFRtZpFduSiF/eDOvRBh2TMO0VTJmkqAHO0l4WqRXOx+HoG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736781972; c=relaxed/simple;
	bh=mgTx6aOYLPXtqcfI3g1VHKq5JpmA5YkehPbZVMZdgaY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=rWDS0iWQKauifwN1DpQ8YX1XDlU4+fJrtH3mgW2HCsq0Bmw88s7n/I6kMaQunvsQb27WxK9wzPvv0c4XgcUjPJ7ewQorokoHQfIiIc0McW+mBrxUp6WymyR1z1a4Sh7vrgcjUAJBZ3Mh5Un2kvrd93YNa5eFKt3ElZc2KSg3hLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSDMpSA6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA5F9C4CEE3;
	Mon, 13 Jan 2025 15:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736781971;
	bh=mgTx6aOYLPXtqcfI3g1VHKq5JpmA5YkehPbZVMZdgaY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=dSDMpSA6C7sZPmyjE97Q3KaGNovHhACtHy3/gldzUUQqt9qeDYLvlneExcnp17wec
	 aGF6aHuF648gSUljdj7UGdneY2TzkuZUQKHYM23k6PZDdCIn24Jn5aw4QWm8CQw3uy
	 TcGDVNQLuJhTaTJnT1sOvQnROTcb1NfDd7PYRJzHz8uMUbUZLztdDoRvUERcE9Qu2k
	 zrpoeT4L4CMextWc8WgHGUmFXmO7lrc+92rsTeqV8o+nNyIf3MTkCKXv4sRlmgvx7k
	 YraJ4NYWaU9a6ffYM1hGo0tuEB3Imd/BikEWjpw71do+MOUdhBx7rBt4ideXfkwSK/
	 aWfifrReyTnpg==
Date: Mon, 13 Jan 2025 09:26:10 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-aspeed@lists.ozlabs.org, Joel Stanley <joel@jms.id.au>, 
 devicetree@vger.kernel.org, Andrew Jeffery <andrew@codeconstruct.com.au>, 
 linux-arm-kernel@lists.infradead.org, Patrick Williams <patrick@stwcx.xyz>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
 Conor Dooley <conor+dt@kernel.org>
To: Potin Lai <potin.lai.pt@gmail.com>
In-Reply-To: <20250113-potin-catalina-dts-update-20250102-v2-1-1725117fe7a9@gmail.com>
References: <20250113-potin-catalina-dts-update-20250102-v2-1-1725117fe7a9@gmail.com>
Message-Id: <173678161661.2153651.3945745286602645687.robh@kernel.org>
Subject: Re: [PATCH v2] ARM: dts: aspeed: catalina: Update DTS to support
 multiple PDB board sources


On Mon, 13 Jan 2025 14:16:23 +0800, Potin Lai wrote:
> This patch updates the Catalina device tree to support different sources
> of PDB boards.
> 
> Changes for Main source PDB board
> - Thermal Sensor Monitoring:
>   - Added IOB NIC nodes (TMP421) for thermal sensor monitoring.
>   - Added FIO remote thermal node (TMP75) for thermal sensor monitoring.
> - Fan Monitoring and Control:
>   - Add fan p12V power sensor node (MP5990) for sensor monitoring.
>   - Add fan controllers (MAX31790) for fan control and tach monitoring.
> 
> Changes for 2nd source PDB board
> - Fan Monitoring and Control:
>   - Added 2nd source fan controllers (NCT7363) for fan duty control and
>     tach monitoring.
> - Power Monitoring:
>   - Added 2nd source HSC nodes (XDP710) for power sensor monitoring.
> - Address Conflicts:
>   - Removed all ina238 nodes due to address conflicts. Moved the driver
>     probe for ina238 to userspace.
> 
> Changes for PDB brick board
> - Power Monitoring:
>   - Add delta brick nodes for power sensor monitoring.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
> Updating the Catalina DTS to support multiple PDB board sources.
> ---
> Changes in v2:
> - Add delta_brick nodes to support PDB brick board
> - Link to v1: https://lore.kernel.org/r/20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com
> ---
>  .../dts/aspeed/aspeed-bmc-facebook-catalina.dts    | 170 ++++++++++++++++++---
>  1 file changed, 147 insertions(+), 23 deletions(-)
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20250113-potin-catalina-dts-update-20250102-v2-1-1725117fe7a9@gmail.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: /ahb/apb/fsi@1e79b000/cfam@0,0/hub@3400/cfam@1,0/i2c@1800: failed to match any schema with compatible: ['ibm,fsi-i2c-master']
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2600-gfx', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dtb: lpc@1e789000: lpc-snoop@90: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@63: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@64: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@65: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@66: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dtb: /ahb/apb/bus@1e78a000/i2c@100/i2c-mux@70/i2c@3/delta_brick@67: failed to match any schema with compatible: ['pmbus']
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-nicole.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2500-gfx', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-asus-x4tf.dtb: /ahb/apb/video@1e700000: failed to match any schema with compatible: ['aspeed,ast2600-video-engine']
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2600-gfx', 'syscon']






