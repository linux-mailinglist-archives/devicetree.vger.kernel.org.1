Return-Path: <devicetree+bounces-23160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145080A665
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0955280EB1
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5391C20310;
	Fri,  8 Dec 2023 15:00:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38163F1;
	Fri,  8 Dec 2023 07:00:46 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6d9da088ca3so1153657a34.1;
        Fri, 08 Dec 2023 07:00:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702047645; x=1702652445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhQWuvNrfy0nDTet/URpa1HIQtUWnl4nOPZplCeKz7Q=;
        b=STndtIHCyClfCUk87Ad27LlPsWA9C8KNXJbltLeB57byjSdnp2mUtzVcR6LL+IF9Jj
         MvvTYraasWJ7QQ2+TdiInvnysuBUDWSubArhYFXtrREqBuD0sR86d1QNxG2IVu8WzzzQ
         DPKBozKqr0Sdr6ymHjONw6Qv4PFqZaWI6WmpMGyu+daiFiJYkEEt7Y3QQMk5+sxM09oT
         S2furNkEgjhgHpWXYEMbULFZfLe83qUiu9LW3xOielLnn4A5oWPDQDUffFa9u2nFpVZZ
         Olei8ip6emEr23OTfBuweCLLa8r/eC82Z49+aCYA3cFwvIHegR/e+DgCpgGZ7xHJcGEa
         FGvQ==
X-Gm-Message-State: AOJu0Yx+jCSh8yI3w53u4w66b7mTo/W5oTp9XImr2sN2WyGQ46/1pvOm
	HKE7BKT7pncxLBm5uDs4i2bQn10Z/w==
X-Google-Smtp-Source: AGHT+IFNLtyInrOf9nIFSbmfUtQCKSgkpfe0CHZ/yGXwzd/BlzrMLoh/hXXynLP9bXaT2VnqR+WYNQ==
X-Received: by 2002:a05:6830:110f:b0:6d9:ef4a:82db with SMTP id w15-20020a056830110f00b006d9ef4a82dbmr203527otq.13.1702047644628;
        Fri, 08 Dec 2023 07:00:44 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bn20-20020a0568300c9400b006d9e756fac2sm283283otb.51.2023.12.08.07.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:00:43 -0800 (PST)
Received: (nullmailer pid 1287216 invoked by uid 1000);
	Fri, 08 Dec 2023 15:00:42 -0000
Date: Fri, 8 Dec 2023 09:00:42 -0600
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: devicetree@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, Michael Walle <mwalle@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pratyush Yadav <ptyadav@amazon.de>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/3] dt-bindings: mtd: partitions: Add binman
 compatible
Message-ID: <20231208150042.GA1278773-robh@kernel.org>
References: <20231116172859.393744-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231116172859.393744-1-sjg@chromium.org>

On Thu, Nov 16, 2023 at 10:28:50AM -0700, Simon Glass wrote:
> Add a compatible string for binman, so we can extend fixed-partitions
> in various ways.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> (no changes since v5)
> 
> Changes in v5:
> - Add #address/size-cells and parternProperties
> - Drop $ref to fixed-partitions.yaml
> - Drop 'select: false'
> 
> Changes in v4:
> - Change subject line
> 
> Changes in v3:
> - Drop fixed-partition additional compatible string
> - Drop fixed-partitions from the example
> - Mention use of compatible instead of label
> 
> Changes in v2:
> - Drop mention of 'enhanced features' in fixed-partitions.yaml
> - Mention Binman input and output properties
> - Use plain partition@xxx for the node name
> 
>  .../bindings/mtd/partitions/binman.yaml       | 68 +++++++++++++++++++
>  .../bindings/mtd/partitions/partitions.yaml   |  1 +
>  MAINTAINERS                                   |  5 ++
>  3 files changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> new file mode 100644
> index 000000000000..329217550a98
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman firmware layout
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The binman node provides a layout for firmware, used when packaging firmware
> +  from multiple projects. It is based on fixed-partitions, with some
> +  extensions, but uses 'compatible' to indicate the contents of the node, to
> +  avoid perturbing or confusing existing installations which use 'label' for a
> +  particular purpose.
> +
> +  Binman supports properties used as inputs to the firmware-packaging process,
> +  such as those which control alignment of partitions. This binding addresses
> +  these 'input' properties. For example, it is common for the 'reg' property
> +  (an 'output' property) to be set by Binman, based on the alignment requested
> +  in the input.
> +
> +  Once processing is complete, input properties have mostly served their
> +  purpose, at least until the firmware is repacked later, e.g. due to a
> +  firmware update. The 'fixed-partitions' binding should provide enough
> +  information to read the firmware at runtime, including decompression if
> +  needed.

How is this going to work exactly? binman reads these nodes and then 
writes out 'fixed-partitions' nodes. But then you've lost the binman 
specifc parts needed for repacking.

Rob

