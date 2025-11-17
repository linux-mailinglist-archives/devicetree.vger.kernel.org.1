Return-Path: <devicetree+bounces-239516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DE5C65A43
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D7B04E970B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A3A309F09;
	Mon, 17 Nov 2025 17:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7wTL+Kw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56482302753;
	Mon, 17 Nov 2025 17:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763402398; cv=none; b=PplsDx8WQRVZncEGZ2lVB/hmN1zOi63J2Co8h/AylJGvJeslnGmw2MUedPGzBPWegClYq9Fb8EKjjk+d0H2CMnDX4GY4Y6Q2iUKc8Cyj86iAMlox9H56DtZi24PB0cGqofVuXajXyaZ9+LAmKHWRYBp2bDBEoXuQ2E2niK9JJcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763402398; c=relaxed/simple;
	bh=zz92o1OZD/mEvjkXD1QCuckIGo1/cOITFNC020wMh5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mecqBBCd9QG4h1WFQgYd0IcCciaDALnEUtv82DIkyG+GAMTSrC2dvPYNYlXFIUakzdotYTPpwUhSN0HhvNPDyA1yN4HbFtZE7/4iPV4CbF8qf1HduqMFbvvqfhJK8385lRRqhMV1qSJ2DZZbhmpMSc9iR1LpSY8nwETnglyybls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7wTL+Kw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BD0AC2BCB2;
	Mon, 17 Nov 2025 17:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763402397;
	bh=zz92o1OZD/mEvjkXD1QCuckIGo1/cOITFNC020wMh5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G7wTL+Kwv71q3PJg8tZNc2IK9+lrvGbk+0oKeD5VCy7QwY0k1lD2K7E59pyif5rUR
	 L3N4IVnNL5SsOkfK0N6LJ+xx0iyGzo4L3QR4Uhn/sm88vIPkvLIPNscM1WyBOLgZt4
	 vH0iKLhr99IU3X+m2M0d2qFfk0wx5uEEBn72RPNAJPgxHZZcwYgx1BdjPD+CMHqnQw
	 mVxQ6qcSixYgig27PIerRvK8nJ6kEwOhnh5L0AEtxBF+S6IqqezpH+fkk0bDS0xCa/
	 P0EZNo67g4ZzEERjC19H4ofT9fMsYXWmhHg8MNWp1fzbLcw1Lq5Rg4Pb1fBG+IPtzK
	 QOJHf8n3yHe1Q==
Date: Mon, 17 Nov 2025 11:59:55 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Saravana Kannan <saravanak@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: mtd: physmap: Allow using memory-region
 to access memory resources
Message-ID: <20251117175955.GA225586-robh@kernel.org>
References: <20251117-mtd-memregion-v1-0-7b35611c79a6@bootlin.com>
 <20251117-mtd-memregion-v1-2-7b35611c79a6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-mtd-memregion-v1-2-7b35611c79a6@bootlin.com>

On Mon, Nov 17, 2025 at 06:00:15PM +0100, Gregory CLEMENT wrote:
> Enable access to memory resources not only via I/O address using reg,
> but also through a portion of main memory using memory-region. To
> achieve this, new compatible strings have been introduced: mtd-mem and
> mtd-memro.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/mtd-physmap.yaml       | 59 +++++++++++++++-------
>  1 file changed, 40 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> index 1b375dee83b0c..0f75a1204b263 100644
> --- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> +++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> @@ -13,10 +13,6 @@ description: |
>    Flash chips (Memory Technology Devices) are often used for solid state
>    file systems on embedded devices.
>  
> -allOf:
> -  - $ref: mtd.yaml#
> -  - $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
> -
>  properties:
>    compatible:
>      oneOf:
> @@ -61,6 +57,8 @@ properties:
>            - jedec-flash
>            - mtd-ram
>            - mtd-rom
> +          - mtd-mem
> +          - mtd-memro

I thought we had a flag for read only.

>  
>    reg:
>      description: |
> @@ -116,6 +114,10 @@ properties:
>      minItems: 1
>      maxItems: 8
>  
> +  memory-region:
> +    items:
> +      - description: Memory regions to map into mtd
> +
>    '#address-cells':
>      const: 1
>  
> @@ -129,21 +131,25 @@ properties:
>  
>  required:
>    - compatible
> -  - reg
> -
> -if:
> -  properties:
> -    compatible:
> -      contains:
> -        const: cortina,gemini-flash
> -then:
> -  properties:
> -    syscon:
> -      $ref: /schemas/types.yaml#/definitions/phandle
> -      description:
> -        Phandle to the syscon controller
> -  required:
> -    - syscon
> +
> +allOf:
> +  - $ref: mtd.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - mtd-mem
> +              - mtd-memro
> +    then:
> +      required:
> +        - memory-region
> +      properties:
> +        addr-gpios: false
> +    else:
> +      $ref: /schemas/memory-controllers/mc-peripheral-props.yaml#
> +      required:
> +        - reg
>  
>  unevaluatedProperties: false
>  
> @@ -223,4 +229,19 @@ examples:
>              reg = <0 0x04000000>;
>          };
>      };
> +
> +  - |
> +    /* An example using mtd-mem */
> +    mem_logs: mem_logs@10000800 {
> +        reg = <0x1 0x0000800 0x0 0x000f800>;
> +        no-map;
> +    };
> +
> +    sram {

It's really an abuse of /reserved-memory to define regions outside of 
what's defined in /memory nodes (or whatever defines system memory). Is 
that the case here with the suspicious 'sram'?

If we do keep this, I'd rather just add the properties below into the 
/reserved-memory node itself. Devices are created for those nodes if 
they have 'compatible'.


> +        compatible = "mtd-mem";
> +        memory-region = <&mem_log>;
> +        bank-width = <4>;
> +        device-width = <1>;
> +    };
> +
>  ...
> 
> -- 
> 2.51.0
> 

