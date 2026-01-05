Return-Path: <devicetree+bounces-251372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA0ECF2658
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:27:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7FF51300BA18
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E40832E728;
	Mon,  5 Jan 2026 08:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsbsOeG1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CE91E5018;
	Mon,  5 Jan 2026 08:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767601533; cv=none; b=gPSMxaSYyU/EfdWGYa4baqteWBXFfetDKL0QT5xzI4pS3TkVBb4ctD8KJv9Ny7UmALA66Evi9TV/jlA3tJuZ7utvlVhzAaIKdA+MCa19Rdytm6FJAiiq0caXSLMy1mAkw4cdOsK+6BfmRBQSgd4y9+Z+nyk1wyyDoI4gJyDiyIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767601533; c=relaxed/simple;
	bh=dEuKUiM7enbU5BuBSdWzImGTW/K1m42BcWF1WWhcFAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PMIoUmnFkTlaywPsdW+MatQeLNClCCrfzNHKn3w2PqhH2sQ0d70ATRtGTdS+o3clqXFZtajW0UpWrz3XjoD9hLG3L9/H1XBtw6l+b9i4Vx9fc3qnBki+yjI7h51HP3PnjEmeG9dAqimQPOF+0clUuUs4PXM7fhw7vVTBdbJTqyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsbsOeG1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 698D3C116D0;
	Mon,  5 Jan 2026 08:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767601532;
	bh=dEuKUiM7enbU5BuBSdWzImGTW/K1m42BcWF1WWhcFAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FsbsOeG1CwNZN63c6gvGfWGCY912R4avPoyYt74adRNS+GiECns3CM4IcMiQ/BsGq
	 m2YP54TQnnE+Gii5cH5aw5n7ukmu1QI88t5bzRjaj27csHmG28YaGluQo6Bl10vtsl
	 mWXHgpYqFMlemZ5E1rUncmNp89/dqHbSuNrpi/J/8tv6UnEVwkErPKFYkOZGDGv0rV
	 Aq4hfttZWflZFB7ki2tWjmtu8e4TGmicIxeJihbtnSXUmQhEjg0p3uZzxUZM+506st
	 3VTmpaElQ7GD0MOKui16m6oJ4P9aQ9f1DDfpCj11yq0Bs5oTxnj/X45xbXVbIlMD9X
	 Ad0VLzTwlco0w==
Date: Mon, 5 Jan 2026 09:25:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
Message-ID: <20260105-curvy-demonic-whippet-1704f7@quoll>
References: <20260102-nxp-v2-1-05f5dd947459@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260102-nxp-v2-1-05f5dd947459@gmail.com>

On Fri, Jan 02, 2026 at 10:48:50AM +0000, Akhila YS wrote:
> Convert Microchip 23K256 SPI SRAM MTD binding to YAML format.

You changed silently the binding. Every change - like dropping
properties - must be explicitly documented and EXPLAINED WHY in the
commit msg.



> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Removed "#address-cells" and "#size-cells" from the required, properties
>   and example. 
> - Changed description and title for yaml.
> - Link to v1: https://lore.kernel.org/r/20251229-nxp-v1-1-a415fe0080a8@gmail.com
> ---
>  .../bindings/mtd/microchip,mchp23k256.txt          | 18 --------
>  .../bindings/mtd/microchip,mchp23k256.yaml         | 49 ++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt
> deleted file mode 100644
> index 7328eb92a03c..000000000000
> --- a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -* MTD SPI driver for Microchip 23K256 (and similar) serial SRAM
> -
> -Required properties:
> -- #address-cells, #size-cells : Must be present if the device has sub-nodes
> -  representing partitions.
> -- compatible : Must be one of "microchip,mchp23k256" or "microchip,mchp23lcv1024"
> -- reg : Chip-Select number
> -- spi-max-frequency : Maximum frequency of the SPI bus the chip can operate at
> -
> -Example:
> -
> -	spi-sram@0 {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		compatible = "microchip,mchp23k256";
> -		reg = <0>;
> -		spi-max-frequency = <20000000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml
> new file mode 100644
> index 000000000000..e928d375ae81
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/microchip,mchp23k256.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/microchip,mchp23k256.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip 23K256 SPI SRAM
> +
> +maintainers:
> +  - Richard Weinberger <richard@nod.at>
> +
> +description:
> +  The Microchip 23K256 is a 256 Kbit (32 Kbyte) serial SRAM with an
> +  SPI interface,supporting clock frequencies up to 20 MHz. It features
> +  a 32-byte page size for writes and supports byte, page, and
> +  sequential access modes.
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,mchp23k256
> +      - microchip,mchp23lcv1024
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - reg
> +  - compatible
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
> +            compatible = "microchip,mchp23k256";
> +            reg = <0>;
> +            spi-max-frequency = <20000000>;
> +       };

Messed indentation now.

Best regards,
Krzysztof


