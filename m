Return-Path: <devicetree+bounces-2355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA68A7AA9A1
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:02:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B6FC81C20862
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08E2171BC;
	Fri, 22 Sep 2023 07:02:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA09168A2
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 07:02:02 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5AC418F
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:02:00 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a9f139cd94so224605866b.2
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695366119; x=1695970919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jMuggZZvKYcFUdy/dK+81rshpboXDd4s3uqzGI3A5Y=;
        b=K5rxQq5ot5FxzBgxgpFlZHjgXFbXo4MEKdyvaJJ1BlTG77yJ0Uzdo/PJadBIRP9xgF
         KxIbg91/4ISsMI4PSClorRXx78SbHHQAVDSVIT0dkAoYSUfyRVc9B4t/VqItJuosrrc7
         SxU09qWm73WFE9mh58y9te4l4uu3E37hCcyhGN/wIEO6GAD2eyH0LfNnbkh1QuO0k99G
         QV9ccgkb2DuS3o3cO9uMq8kl2uc3a7OhLKEe01cRe38yh+kbHYAJrOvRAKrxcnzFo8WT
         /RkW0YxPdj2AVXPcgPA4vgypJLeMyRSyUaf42WInxud7QgxGB0Xgnpaxxq4GB0Q6dj+c
         FaRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695366119; x=1695970919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2jMuggZZvKYcFUdy/dK+81rshpboXDd4s3uqzGI3A5Y=;
        b=wRRJXEjZ3Zh6QYI/2ylyPuKFial9PQo0IYNiRr8sEVppYxs0VXcz8pTC8obejcTzlD
         N8qbEHIGXDNe/agzNTTGehdnzcDYM7l+zNPydhUe71ib3e1EXHEmBB4txVlbKa0DOBPo
         RylDXAgfg3ZAKSWvyRoUjpr9sVuvRIuFyra9rOr+KDrAIxn4eGgTpVARgLLBmISE/0vo
         Z2cYfr8F2qecn+6LclnuRRhjPrGzHwtv1d/LCG+llp2D0ozxQsC2Vy+on+a332oSD1Zq
         zBOgnUvSsxbmxht4Jui7BUu0/D8/fvc3yH77vXMIS7UgJa4Wyoihd+eHTQAcqryXnlkK
         GmBA==
X-Gm-Message-State: AOJu0Yxbt6v+OnxGUVjlocKwej3UXn/xcgf4wnLj8AnBUhn8XHdxzijm
	0A/0sy2hbpDRQ8vF/VqrixjxnQ==
X-Google-Smtp-Source: AGHT+IG0i7UDbq0G1Fggapv+viejE9QTHLY0IXIcvKnvjvzePXoImlcw3a294mo0jaA03y9ttLUk9Q==
X-Received: by 2002:a17:906:519c:b0:9ae:5be8:ff90 with SMTP id y28-20020a170906519c00b009ae5be8ff90mr3193946ejk.68.1695366119042;
        Fri, 22 Sep 2023 00:01:59 -0700 (PDT)
Received: from [10.41.192.245] ([77.241.232.19])
        by smtp.gmail.com with ESMTPSA id k20-20020a170906681400b0099bd046170fsm2220195ejr.104.2023.09.22.00.01.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 00:01:58 -0700 (PDT)
Message-ID: <da77e965-2893-097a-b438-85787c43dcb0@linaro.org>
Date: Fri, 22 Sep 2023 09:01:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
Content-Language: en-US
To: Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
 linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dhruva Gole <d-gole@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21/09/2023 20:45, Simon Glass wrote:
> Binman[1] is a tool for creating firmware images. It allows you to
> combine various binaries and place them in an output file.
> 
> Binman uses a DT schema to describe an image, in enough detail that
> it can be automatically built from component parts, disassembled,
> replaced, listed, etc.
> 
> Images are typically stored in flash, which is why this binding is
> targeted at mtd. Previous discussion is at [2] [3].
> 
> [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
> [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.org/
> [3] https://www.spinics.net/lists/devicetree/msg626149.html
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  .../bindings/mtd/partitions/binman.yaml       | 50 +++++++++++++++
>  .../bindings/mtd/partitions/binman/entry.yaml | 61 +++++++++++++++++++
>  .../bindings/mtd/partitions/partitions.yaml   |  1 +
>  MAINTAINERS                                   |  5 ++
>  4 files changed, 117 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> new file mode 100644
> index 00000000000000..c792d5a37b700a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> @@ -0,0 +1,50 @@
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
> +  from multiple projects. For now it just supports a very simple set of
> +  features, as a starting point for discussion.
> +
> +  Documentation for Binman is available at:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
> +
> +  with the current image-description format at:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> +
> +properties:
> +  compatible:
> +    const: u-boot,binman
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      binman {
> +        compatible = "u-boot,binman";
> +
> +        u-boot {

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.


> +          size = <0xa0000>;
> +        };
> +
> +        atf-bl31 {
> +          offset = <0x100000>;
> +        };
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> new file mode 100644
> index 00000000000000..8003eb4f1a994f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/binman/entry.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman entry
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The entry node specifies a single entry in the firmware.
> +
> +  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
> +  is missing, the name is used as the type.
> +
> +  Note: This definition is intended to be hierarchical, so that entries can
> +  appear in other entries. Schema for that is TBD.
> +
> +properties:
> +  $nodename:
> +    pattern: "^[-a-z]+(-[0-9]+)?$"

Why do you need this?

> +
> +  type:
> +    $ref: /schemas/types.yaml#/definitions/string
> +
> +  offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the offset of this entry from the start of its parent section.
> +      If this is omitted, Binman will determine this by packing the enclosing
> +      section according to alignment rules, etc.
> +
> +  size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the size of this entry in bytes. If this is omitted, Binman will
> +      use the content size, along with any alignment information, to determine
> +      the size of the entry.
> +


Best regards,
Krzysztof


