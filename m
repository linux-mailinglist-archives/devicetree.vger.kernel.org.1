Return-Path: <devicetree+bounces-66753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D26E8C4768
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 21:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F17961F23195
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 19:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260714500D;
	Mon, 13 May 2024 19:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgqMdJp2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AC457C8A
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715627714; cv=none; b=sh2PWFCXzwJ8v/aUwaF5B0FslcZ6wTaZXumlOlr4XyPbNTpS1i023TSSBrHh6ld3+m/LrD3ir066dNFUhg6i74a0EvcPIjq6gVCUjDPrnmx9cZKaeX0U1OfJC6Npb18eUoVSVeGKVSBV2/ohJvnPrUAffGDXhDnOmquAFP3Fm+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715627714; c=relaxed/simple;
	bh=Nx+z+KJBCiF53aKwgk/VwUujM/BpannTCKuZlhavkvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aAkU18bNAyQhgGXC/R6wHw2Fw2EwBIogy+yNsBs9gM6TKjt7sn4bSVAiU7umkVY9uHyiOkf+S5Yu+cgA0GLaER50IgB+YGYGvStxSI2fGhlVoD6QY5xp8kiDKykYN2XRvo7XoYK2iDicZUSOVWINJgxM8LMgYnQGq1p54ZmyGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgqMdJp2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5419DC113CC;
	Mon, 13 May 2024 19:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715627713;
	bh=Nx+z+KJBCiF53aKwgk/VwUujM/BpannTCKuZlhavkvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IgqMdJp2i09R1yjv39hNHj0GKprT2weCpqrG2EK0QMSIfDr9JzavV+pfF6Z3mPbiF
	 G1bWc6mdcZfdtTbxPzVGZbUf67iEyiNSOo5YihwYbnhi+VZs784DGW/c/59Sq8w4eY
	 bW1Npc4kZE2gCVnDIf8bvql9pW6KesfnfD63gtFIWGqDynGL42SnrF6ydNhVjzc/Nb
	 5jx+e9VJNkeSwblObUZnfYj27zZEHPx+ARxzsTja+sU2z+/DZ/xC0+r/MJE1wMkr9q
	 HT6DlAxh39IAVhg4qa3Y99B7M+lpfPrdFXhwUAAVDWJy+T2SdpfnfIHDOYFbvSpYxy
	 PnXuP3zQZSuqg==
Date: Mon, 13 May 2024 14:15:11 -0500
From: Rob Herring <robh@kernel.org>
To: Xiaxi Shen <shenxiaxi26@gmail.com>
Cc: devicetree@vger.kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	javier.carrasco.cruz@gmail.com, skhan@linuxfoundation.org
Subject: Re: [PATCH] ASoC: dt-bindings: ak4104: convert to dt schema
Message-ID: <20240513191511.GA2975244-robh@kernel.org>
References: <20240511055606.51333-1-shenxiaxi26@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240511055606.51333-1-shenxiaxi26@gmail.com>

On Fri, May 10, 2024 at 10:56:06PM -0700, Xiaxi Shen wrote:
> Convert ak4104 binding to DT schema
> 
> Signed-off-by: Xiaxi Shen <shenxiaxi26@gmail.com>
> ---
>  .../devicetree/bindings/sound/ak4104.txt      | 25 ---------
>  .../bindings/sound/asahi-kasei,ak4104.yaml    | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/ak4104.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/ak4104.txt b/Documentation/devicetree/bindings/sound/ak4104.txt
> deleted file mode 100644
> index ae5f7f057dc3..000000000000
> --- a/Documentation/devicetree/bindings/sound/ak4104.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -AK4104 S/PDIF transmitter
> -
> -This device supports SPI mode only.
> -
> -Required properties:
> -
> -  - compatible : "asahi-kasei,ak4104"
> -
> -  - reg : The chip select number on the SPI bus
> -
> -  - vdd-supply : A regulator node, providing 2.7V - 3.6V
> -
> -Optional properties:
> -
> -  - reset-gpios : a GPIO spec for the reset pin. If specified, it will be
> -		  deasserted before communication to the device starts.
> -
> -Example:
> -
> -spdif: ak4104@0 {
> -	compatible = "asahi-kasei,ak4104";
> -	reg = <0>;
> -	spi-max-frequency = <5000000>;
> -	vdd-supply = <&vdd_3v3_reg>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml
> new file mode 100644
> index 000000000000..88daa0c7c74f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4104.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/asahi-kasei,ak4104.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AK4104 S/PDIF transmitter
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +maintainers:
> +  - Liam Girdwood <lgirdwood@gmail.com>
> +  - Mark Brown <broonie@kernel.org>
> +  - Rob Herring <robh@kernel.org>
> +  - Krzysztof Kozlowski <krzk+dt@kernel.org>
> +  - Conor Dooley <conor+dt@kernel.org>

This should be someone with the h/w, not subsystem maintainers.

> +
> +properties:
> +  compatible:
> +    const: asahi-kasei,ak4104
> +
> +  reg:
> +    description: Chip select number on the SPI bus 
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: A regulator node providing between 2.7V and 3.6V.
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: Optional GPIO spec for the reset pin, deasserted before communication starts.

Wrap lines at <80.

> +    
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +   i2c {
> +     #address-cells = <1>;
> +     #size-cells = <0>;
> +     codec@0 {
> +       compatible = "asahi-kasei,ak4104";
> +       reg = <0>;
> +       vdd-supply = <&vdd_3v3_reg>;
> +     };
> +   };
> -- 
> 2.34.1
> 

