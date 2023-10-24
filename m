Return-Path: <devicetree+bounces-11374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1EB7D584A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:29:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 824A8B20D1E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2560839948;
	Tue, 24 Oct 2023 16:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCF3210FD
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:29:27 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F9E11B3;
	Tue, 24 Oct 2023 09:29:22 -0700 (PDT)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5845a94dae1so1213608eaf.0;
        Tue, 24 Oct 2023 09:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698164962; x=1698769762;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lyvP8rg0cN3uMaVGkUZJYnGyShBPgeG7niyvmwU0I7E=;
        b=JdeIWagfaoq9xk2goPqmXPpIX6xPdQmlRevemgvciTpSzNIfMv6I5OEsaHdO3wKV1J
         f9xzvpspkDe1R5l7vBODvIVpLDsZEMry0Gc5hVu6DPbszniUdF1E95JcEOa1komsWvw7
         b6QuP229mCW9TVlBDTe+A1sW84D+vzRTj2a2XKA94uBpWFIGi0OP5v20I6jdEjHbNdqO
         E5a2AntNsIxi6RfksT2nmuWt2eiW9wxrA0pNmYBFKvRwTAVehgRq2l5HauSzVD5mtg7g
         FHLXQvHWyoeLh2ostLtCC1ZSeQT3xOQozZMkfCG50ZOHZJnnO1ITLloQ4K9RANJGd0iW
         v0Qg==
X-Gm-Message-State: AOJu0YykRMOK5aGBQJU6k5ZyeWHHmPyydnfEBwP7elc1rUFK0TyLF/Qm
	X3+Z8gsEzteDuCIdBNpzwg==
X-Google-Smtp-Source: AGHT+IHHMl2/oHWft2yTTAv4LNNI02Tu07uYTbFvwLbExU9mIcFCwW29I/FboUp1wYBFIRXZrsw17A==
X-Received: by 2002:a4a:e751:0:b0:571:aceb:26d3 with SMTP id n17-20020a4ae751000000b00571aceb26d3mr7013547oov.4.1698164961620;
        Tue, 24 Oct 2023 09:29:21 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id di11-20020a0568201e8b00b0057b43a25deasm1997587oob.3.2023.10.24.09.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 09:29:20 -0700 (PDT)
Received: (nullmailer pid 4048334 invoked by uid 1000);
	Tue, 24 Oct 2023 16:29:19 -0000
Date: Tue, 24 Oct 2023 11:29:19 -0500
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>, Michael Walle <mwalle@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Tom Rini <trini@konsulko.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] dt-bindings: mtd: binman-partitions: Add
 alignment properties
Message-ID: <20231024162919.GC3707756-robh@kernel.org>
References: <20231009220436.2164245-1-sjg@chromium.org>
 <20231009220436.2164245-3-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231009220436.2164245-3-sjg@chromium.org>

On Mon, Oct 09, 2023 at 04:04:15PM -0600, Simon Glass wrote:
> Add three properties for controlling alignment of partitions, aka
> 'entries' in binman.
> 
> For now there is no explicit mention of hierarchy, so a 'section' is
> just the 'binman' node.
> 
> These new properties are inputs to the packaging process, but are also
> needed if the firmware is repacked, to ensure that alignment
> constraints are not violated. Therefore they are provided as part of
> the schema.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - Fix 'a' typo in commit message
> 
>  .../mtd/partitions/binman-partition.yaml      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> index 35a320359ec1..8e8a3b6d4d14 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> @@ -28,6 +28,42 @@ properties:
>            - const: u-boot       # u-boot.bin from U-Boot project
>            - const: atf-bl31     # bl31.bin or bl31.elf from TF-A project
>  
> +  align:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This sets the alignment of the entry. The entry offset is adjusted
> +      so that the entry starts on an aligned boundary within the containing
> +      section or image. For example ‘align = <16>’ means that the entry will
> +      start on a 16-byte boundary. This may mean that padding is added before

Only your example defines that alignment is in bytes.

> +      the entry. The padding is part of the containing section but is not
> +      included in the entry, meaning that an empty space may be created before
> +      the entry starts. Alignment should be a power of 2. If ‘align’ is not
> +      provided, no alignment is performed.

Would be nice to have some constraints. Unfortunately, no way to say 
'power of 2' in json-schema (we could add something possibly), so the 
only way is:

enum: [ 2, 4, 8, 16, 32, 64, ... ]

Kind of verbose if we add all 31 possibilities...

Could also do this:

minium: 2
maximum: 0x80000000
multipleOf: 2

> +
> +  align-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This sets the alignment of the entry size. For example, to ensure
> +      that the size of an entry is a multiple of 64 bytes, set this to 64.
> +      While this does not affect the contents of the entry within binman
> +      itself (the padding is performed only when its parent section is
> +      assembled), the end result is that the entry ends with the padding
> +      bytes, so may grow. If ‘align-size’ is not provided, no alignment is
> +      performed.
> +
> +  align-end:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This sets the alignment of the end of an entry with respect to the
> +      containing section. Some entries require that they end on an alignment
> +      boundary, regardless of where they start. This does not move the start
> +      of the entry, so the contents of the entry will still start at the
> +      beginning. But there may be padding at the end. While this does not
> +      affect the contents of the entry within binman itself (the padding is
> +      performed only when its parent section is assembled), the end result is
> +      that the entry ends with the padding bytes, so may grow. If ‘align-end’
> +      is not provided, no alignment is performed.
> +
>  additionalProperties: false
>  
>  examples:
> @@ -40,10 +76,13 @@ examples:
>          partition@100000 {
>              compatible = "u-boot";
>              reg = <0x100000 0xf00000>;
> +            align-size = <0x1000>;
> +            align-end = <0x10000>;
>          };
>  
>          partition@200000 {
>              compatible = "atf-bl31";
>              reg = <0x200000 0x100000>;
> +            align = <0x4000>;
>          };
>      };
> -- 
> 2.42.0.609.gbb76f46606-goog
> 

