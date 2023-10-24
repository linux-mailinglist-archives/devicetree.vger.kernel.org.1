Return-Path: <devicetree+bounces-11370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B51497D57C2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 209AEB20CF5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EDFF2C866;
	Tue, 24 Oct 2023 16:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9326F266C4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:16:49 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD202E8;
	Tue, 24 Oct 2023 09:16:47 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6c7c2c428c1so2744901a34.0;
        Tue, 24 Oct 2023 09:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698164206; x=1698769006;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RXPrvqhlemMI7g9xIhmWAAMr6+6qbQ1ZU0REA78QcHI=;
        b=CZZzCXRTp+5Kkrc6PLfrFzeQ5/QACxIJoJD9vR3KY3i2ZUBlUz2+eNVKl3a2k5b8+z
         kfpn6UM+pQ1ofREpxO6CK+HqJ6IlbS/MxOweL4kuwtbhy7pLhFPgFL9QS4G/73Jdqg02
         ksYoOy/DLA1PfeZSpLLn7Vgo9LbfDozxvtTiUoGtAlbvLnUeNl23puJNRwKC/NdV1taW
         eoOo4AgR9Waj96pv0M8fE2VV8mI+g2jLhnjFwLy1SiTUqPZ9xVcDBjduVGv15WxAFlcR
         nLoPmPKS3wqWoYCSJX45ak64DI87aV5nMNrNwOaqRsBTJjWu6K1OcOUmy1AADez1/J59
         ZbIg==
X-Gm-Message-State: AOJu0Yw4Gk/WYQ1kpTOAmrH9a7NybjuYTlLmkUTJWsMk5QeXo4aWvwKk
	fMC76YAxZlzYRqAMxNYp7g==
X-Google-Smtp-Source: AGHT+IHcKt9w7bZiBt4/3rwDVdR83Ok9yFwzHM6Yw+yCPtpOKiwL2Yodvx6SUVggzi+iygsVFKZgpg==
X-Received: by 2002:a05:6808:1306:b0:3b2:e379:c11d with SMTP id y6-20020a056808130600b003b2e379c11dmr10337541oiv.22.1698164206547;
        Tue, 24 Oct 2023 09:16:46 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k2-20020a544702000000b003b2f2724c48sm1975040oik.11.2023.10.24.09.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 09:16:45 -0700 (PDT)
Received: (nullmailer pid 4031785 invoked by uid 1000);
	Tue, 24 Oct 2023 16:16:44 -0000
Date: Tue, 24 Oct 2023 11:16:44 -0500
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>, Michael Walle <mwalle@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Tom Rini <trini@konsulko.com>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: binman-partition: Add binman
 compatibles
Message-ID: <20231024161644.GB3707756-robh@kernel.org>
References: <20231009220436.2164245-1-sjg@chromium.org>
 <20231009220436.2164245-2-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009220436.2164245-2-sjg@chromium.org>

On Mon, Oct 09, 2023 at 04:04:14PM -0600, Simon Glass wrote:
> Add two compatible for binman entries, as a starting point for the
> schema.
> 
> Note that, after discussion on v2, we decided to keep the existing
> meaning of label so as not to require changes to existing userspace
> software when moving to use binman nodes to specify the firmware
> layout.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v4:
> - Correct selection of multiple compatible strings
> 
> Changes in v3:
> - Drop fixed-partitions from the example
> - Use compatible instead of label
> 
> Changes in v2:
> - Use plain partition@xxx for the node name
> 
>  .../mtd/partitions/binman-partition.yaml      | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> new file mode 100644
> index 000000000000..35a320359ec1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/binman-partition.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman partition
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +select: false

So this schema is never used. 'select: false' is only useful if 
something else if referencing the schema.

> +
> +description: |
> +  This corresponds to a binman 'entry'. It is a single partition which holds
> +  data of a defined type.
> +
> +allOf:
> +  - $ref: /schemas/mtd/partitions/partition.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: binman,entry     # generic binman entry

'binman' is not a vendor. You could add it if you think that's useful. 
Probably not with only 1 case...

> +      - items:
> +          - const: u-boot       # u-boot.bin from U-Boot project
> +          - const: atf-bl31     # bl31.bin or bl31.elf from TF-A project

Probably should use the new 'tfa' rather than old 'atf'. Is this the 
only binary for TFA? The naming seems inconsistent in that every image 
goes in (or can go in) a bl?? section. Why does TFA have it but u-boot 
doesn't? Perhaps BL?? is orthogonal to defining what is in each 
partition. Perhaps someone more familar with all this than I am can 
comment.

Once you actually test this, you'll find you are specifying:

compatible = "u-boot", "atf-bl31";


> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    partitions {
> +        compatible = "binman";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        partition@100000 {
> +            compatible = "u-boot";
> +            reg = <0x100000 0xf00000>;
> +        };
> +
> +        partition@200000 {
> +            compatible = "atf-bl31";
> +            reg = <0x200000 0x100000>;
> +        };
> +    };
> -- 
> 2.42.0.609.gbb76f46606-goog
> 

