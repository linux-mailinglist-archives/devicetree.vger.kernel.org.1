Return-Path: <devicetree+bounces-250507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D25CE9A88
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5FAD63015D30
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED1F2C08BA;
	Tue, 30 Dec 2025 12:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UINzatjl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D770A29BDAE;
	Tue, 30 Dec 2025 12:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767097960; cv=none; b=dN0p1gi5mckuO/mkznwnv2VFi7IQxjyfN3/Rr8mNAzRY3iwt9hVT2QqZGbN1op6nCSLPmW5907C7MNb2t9/Ny1TcU9zIL8HsVYU6xMOGbe59vm5V+U5N/scr6sVP+IX9mzB0OYt0Hg55wluXaYgV5xOyZ0eD/BmJ4EfVMftLavc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767097960; c=relaxed/simple;
	bh=ooyFTLdDrbQcAmZ8GDeW6NgUKDDXOWJg5zX5aLDnNe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ph830LU9alID1jS8efVjIW2599YBxPvxUbXUpwPBbOcfjO57OA5RUtwgftkuU3PjgsrtqzD1kOviLr3PhhaQBb/mRDpWZ3tl2K4GQYZCw4b5NCgr4IIIk6N5Z2+TdwVL/UI9Q1H4szgSq/JsAWsP8WqiMsGrNsuCpByfDj6NRg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UINzatjl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED934C4CEFB;
	Tue, 30 Dec 2025 12:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767097960;
	bh=ooyFTLdDrbQcAmZ8GDeW6NgUKDDXOWJg5zX5aLDnNe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UINzatjlwj2jD4a0ktWOmOEUJqyd92UZVK5EEi0sDhtOs1je7sFz8Qr5a5EIDA+io
	 MaAJBoK2jhGzpb5vUW18MBGJnoi5fiEHrO1Tz7RsjharsDRN9ngnPH5C6s728X8EZT
	 HiSNwKVwoTALS1aa754wILkHf+lvqH7LXxzkMug/21ODjkUmuzYlNOCqdg0yndXgdM
	 48+LTpReB6jL660CRfGwEXNbwD/IOgFCcdt1t6ewrYD0Fs85ypfmJIdZM8bR1hyuPl
	 T0uo5n9RMLAMOyGGpmuSliiOq3SPaKcqOHuKhEqYpHTTnRpN/ct0p5xV2Qh51uYEmI
	 Rt68ed0voGtyw==
Date: Tue, 30 Dec 2025 13:32:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Message-ID: <20251230-kagu-of-scientific-enrichment-6fcd4c@quoll>
References: <20251229-nxp-v1-1-a415fe0080a8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251229-nxp-v1-1-a415fe0080a8@gmail.com>

On Mon, Dec 29, 2025 at 12:49:00PM +0000, Akhila YS wrote:
> +---
> +$id: http://devicetree.org/schemas/mtd/microchip,mchp23k256.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip 23K256 (and similar) SPI SRAM MTD driver

driver? Bindings are for hardware.

> +
> +maintainers:
> +  - Richard Weinberger <richard@nod.at>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  Driver for Microchip 23K256 and compatible (e.g. 23LCV1024) serial SRAM devices

Don't describe drivers...

> +  accessed via SPI. The device exposes the SRAM as an MTD device and supports
> +  optional partitioning via child nodes.

nor DTS, but the hardware.

> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +

If this is SRAM, then it should go to sram directory. But maybe it is
MTD, so NOR or NAND? If so you would be missing here refs to NAND
chips.

Although docs are saying it is SRAM, so just place it there.

> +properties:
> +  compatible:
> +    enum:
> +      - microchip,mchp23k256
> +      - microchip,mchp23lcv1024
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1

Pretty incomplete. Old binding and above cells claim there can be child
nodes, so please add them and test. Works? No. Shall work? Yes... so
either old binding was incorrect or new binding is incomplete. I did not
check the driver, though.

> +
> +required:
> +  - reg
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"
> +  - spi-max-frequency
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        sram@0 {
> +            #address-cells = <1>;
> +            #size-cells = <1>;

They are redundant. Where are children?

> +            compatible = "microchip,mchp23k256";
> +            reg = <0>;
> +            spi-max-frequency = <20000000>;
> +        };
> +    };
> +...
> 
> ---
> base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
> change-id: 20251229-nxp-526e29da9f29
> 
> Best regards,
> -- 
> Akhila YS <akhilayalmati@gmail.com>
> 

