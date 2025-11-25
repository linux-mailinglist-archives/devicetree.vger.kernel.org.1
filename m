Return-Path: <devicetree+bounces-241824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A3DC8334A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 04:19:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F1CCA34B44B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 03:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4805821ABD0;
	Tue, 25 Nov 2025 03:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhI68gn7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E94621146C;
	Tue, 25 Nov 2025 03:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764040744; cv=none; b=u7taXnQ+6s7vlNNl6kJOvrzTRGSAdTfMDNyA88HCaDdzy8U66cujqtmP0WUpw+IBjCZW3K//1gO8a7dYyeNrkND+R0LRAylSPY3+1C8myNDEn9/SFaznyl2A5rCyBq/kTukcG6WXNe0lfIZAQQXgcHDwoQDKx2cWMPLL0TWfQw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764040744; c=relaxed/simple;
	bh=vIDD8LFY77iXhoHeON2MfwV+2avvRETkcShcf+gI2PU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cTHihZaUcF15/Its7Arpg3mBPRBfKgQfY8FRrMUVgnCoHIITl+1F8UkRhwbUC7FM/YiRml7VabrVpEtJ3MzVaSJu4YxiUvx512d7d9mhKOXRtL9s5iOsLeBzjIBy5LeKH0cS5zt2OGcRJmvkL/4QJ5ZXSn4fETQzXDND+kq0Er0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhI68gn7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68FB4C4CEF1;
	Tue, 25 Nov 2025 03:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764040743;
	bh=vIDD8LFY77iXhoHeON2MfwV+2avvRETkcShcf+gI2PU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hhI68gn7YzIa81JBKpRwugug9zQIwWklnQcKcl+bhfiTyzV8YPZFR1iphY18FBlYY
	 MSgGHzQPxs3iQwec3bYO5/WJa7Hzs/Gkm8TAWJDJpyNG8R/aYr/WTxriuzerpXET1t
	 Fl7WM0jX+9xgziH7Wk0qIdmB6TYhU8vIRrGKEJSAln8inz7pQ3hrE5o4JqL1awD3My
	 0UuN57Z82T9Hp2yQ4Sxx414CTxj2rGeQBto/VYC6byfeVXGklzJnAwSVNtZtR7menA
	 dUiPGj1oFmlt/bDiWL6gi1DJ1F9vsYsCfQlOK1h7s6wEkXJIq83XxivUkI3z3lnhaJ
	 6I0IlrYeOcpqw==
Date: Mon, 24 Nov 2025 21:19:01 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
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
Subject: Re: [PATCH v2 2/3] dt-bindings: mtd: physmap: Allow using
 memory-region to access memory resources
Message-ID: <20251125031901.GA1580653-robh@kernel.org>
References: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
 <20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121-mtd-memregion-v2-2-c5535fdcebe4@bootlin.com>

On Fri, Nov 21, 2025 at 04:42:36PM +0100, Gregory CLEMENT wrote:
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
> index 1b375dee83b0c..323e89aacaacd 100644
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
> +    memlog {
> +        compatible = "mtd-mem";
> +        memory-region = <&mem_log>;
> +        bank-width = <4>;
> +        device-width = <1>;
> +    };

To repeat v1 comment:

> If we do keep this, I'd rather just add the properties below into the
> /reserved-memory node itself. Devices are created for those nodes if
> they have 'compatible'.

To put it another way, see the ramoops binding and copy that.

Rob

