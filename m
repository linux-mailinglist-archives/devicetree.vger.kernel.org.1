Return-Path: <devicetree+bounces-11823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 169277D6BCA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:33:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 474FF1C20DE9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF70273C8;
	Wed, 25 Oct 2023 12:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23214219F3
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:33:07 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D8218E;
	Wed, 25 Oct 2023 05:33:05 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b2f2b9a176so3734225b6e.0;
        Wed, 25 Oct 2023 05:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698237184; x=1698841984;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8CPemYXBUDg57/WVb4vOz03sRB1TRQWESGKykqWrHzg=;
        b=kfLk/HwAJFNxCDS+nCShcYMgexOfU/V3ciNtLYJaAiyrRLl1uGf5AFtwQcNjACeymm
         R+4K4MxTfgXSYYAwtYORC9mN6+tBQ46ElyGYSPi+Pbms486qPrYVkYXmX9VLPOMf3eSz
         jD31HY3D/n4+M3/ROXdk0SnXHAhZfyUIa8v86hfPC3cyKQMo/E/1EDVOrlXVU8hUQ2P9
         ZHGzKimEmmRwYOoDqgGCqWxG8FzK44dq9plY/7R4B8bTcvPsWDgCiu9oSnc5ZcEtLvW2
         zqTPjZvWb6/ON5ErUpG0hgER3/UDhIOKOp/Z0jrPtL72OkzNICQjGH7nU04UtvmWXiqm
         XZyQ==
X-Gm-Message-State: AOJu0Yxj1yR9R9oUF14JCE00lCLR3VihFz/FAIpPzX98RzGbBm9yuZbX
	qkd5bf3kMo5Bisxb7y3Wpg==
X-Google-Smtp-Source: AGHT+IGFRmvPp4komL3PmPB+n4EaJxfBNyiGvm6AYFq8mhHjHNqEKyiOmK8UKYdLkHWzvM0ogmXGug==
X-Received: by 2002:a54:4581:0:b0:3a8:ccf0:103f with SMTP id z1-20020a544581000000b003a8ccf0103fmr16717681oib.3.1698237184122;
        Wed, 25 Oct 2023 05:33:04 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n12-20020aca240c000000b003afe584ed4fsm2356547oic.42.2023.10.25.05.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 05:33:03 -0700 (PDT)
Received: (nullmailer pid 3559498 invoked by uid 1000);
	Wed, 25 Oct 2023 12:33:02 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Edward Chow <equu@openmail.cc>
Cc: linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20231025052937.830813-1-equu@openmail.cc>
References: <20231025052937.830813-1-equu@openmail.cc>
Message-Id: <169823714202.3554834.10341623302238023195.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd-partitions: Export special values
Date: Wed, 25 Oct 2023 07:33:02 -0500


On Wed, 25 Oct 2023 13:29:37 +0800, Edward Chow wrote:
> There are special "offset" and "size" values defined and documented in
> linux/mtd/partitions.h:
> 
> // consume as much as possible, leaving size after the end of partition.
> 
> // the partition will start at the next erase block.
> 
> // the partition will start where the previous one ended.
> 
> (Though not explicitly, they are compared against variables in uint64_t
> in drivers/mtd/mtdpart.c, so they had better be considered as such.)
> 
> // the partition will extend to the end of the master MTD device.
> 
> These special values could be used to define partitions automatically
> fitting to the size of the master MTD device at runtime.
> 
> However, these values used not to be exported to dt-bindings, thus
> seldom used before, since they might have been only used in numeric form,
> such as "(-1) (-3)" for MTDPART_OFS_RETAIN.
> 
> Now, they are exported in dt-bindings/mtd/partitions.h as 32-bit cell
> values, so 2-cell addressed should be defined to use special offset values,
> such as "MTDPART_OFS_SPECIAL MTDPART_OFS_RETAIN" for MTDPART_OFS_RETAIN in
> linux/mtd/partitions.h. An example is added to fixed-partitions.yaml.
> 
> Signed-off-by: Edward Chow <equu@openmail.cc>
> ---
>  .../mtd/partitions/fixed-partitions.yaml      | 29 +++++++++++++++++++
>  MAINTAINERS                                   |  2 ++
>  include/dt-bindings/mtd/partitions.h          | 15 ++++++++++
>  3 files changed, 46 insertions(+)
>  create mode 100644 include/dt-bindings/mtd/partitions.h
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example.dts:225.24-25 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231025052937.830813-1-equu@openmail.cc

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


