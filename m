Return-Path: <devicetree+bounces-10662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 676227D2611
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 23:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1B1A28144D
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 21:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7F4134DB;
	Sun, 22 Oct 2023 21:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5A11078F
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 21:13:54 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFB6EAD;
	Sun, 22 Oct 2023 14:13:52 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-579de633419so27153737b3.3;
        Sun, 22 Oct 2023 14:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698009231; x=1698614031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7altDW3iLD1hJkh5bq+RenC4wfZp29IviHsdT4eIlA=;
        b=m5qNMdn2ptQ6n01Mfzk61jFXDWKihX5yljIwC+KqTALd+wINcHEg6FdskqVd2Ym/5P
         0UzQ2Bz+cE9SmTlLOqZNftGVmDGv9JL2vDRIO0kLK6m+EoTDTRyoZpmdyJEFOq7Md41J
         dor1E0ktadGhwmC1aHo4riDtz/6q4n1l7HVoHx+FrQfZ2nRuoCN1nky8a7N0urmmTkmf
         vACfa7j7w1ktWQlkwHECHGyHy65VaiAOo7xPAVJB6q2KJ/u/Ry52BkoKpOnD6/bT8Aos
         lP6Mq5S2Xl57xBj18lyMtMsTAKzoigd9xoVcaTSEuo6OZc/ARiyvoBs7AoTlb88MQZ6z
         Nzsg==
X-Gm-Message-State: AOJu0Ywaae7EwLiMDXcuUTF1tRSpKNWx3hUvqPoIkLI3T75yGcDZyyc1
	JljS82sIQZ+NH2r+r9UMcA==
X-Google-Smtp-Source: AGHT+IFEil4Wtp2HBQexBRNE2hIDjHAPT4UaP+tJX3tIVD4uLeHG5TzVYD80JHuaTRfmfY2F9HwOQA==
X-Received: by 2002:a81:480c:0:b0:5a9:117d:ddbc with SMTP id v12-20020a81480c000000b005a9117dddbcmr4992933ywa.15.1698009230839;
        Sun, 22 Oct 2023 14:13:50 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c1:8e5d:a109:ceb8:bec4:d970])
        by smtp.gmail.com with ESMTPSA id h84-20020a816c57000000b005a0f9718a5fsm2572322ywc.78.2023.10.22.14.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 14:13:50 -0700 (PDT)
Received: (nullmailer pid 688966 invoked by uid 1000);
	Sun, 22 Oct 2023 21:13:48 -0000
Date: Sun, 22 Oct 2023 16:13:48 -0500
From: Rob Herring <robh@kernel.org>
To: Guo Mengqi <guomengqi3@huawei.com>
Cc: vkoul@kernel.org, dmaengine@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, xuqiang36@huawei.com, chenweilong@huawei.com
Subject: Re: [PATCH v5 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
Message-ID: <20231022211348.GA682758-robh@kernel.org>
References: <20231021093454.39822-1-guomengqi3@huawei.com>
 <20231021093454.39822-3-guomengqi3@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231021093454.39822-3-guomengqi3@huawei.com>

On Sat, Oct 21, 2023 at 05:34:53PM +0800, Guo Mengqi wrote:
> Add device-tree binding documentation for sdma hardware on
> HiSilicon Ascend SoC families.
> 
> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
> ---
>  .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
> 
> diff --git a/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
> new file mode 100644
> index 000000000000..7b452b54fe0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/hisilicon,ascend-sdma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon Ascend System DMA (SDMA) controller
> +
> +description: |
> +  The Ascend SDMA controller is used for transferring data
> +  in system memory.
> +
> +maintainers:
> +  - Guo Mengqi <guomengqi3@huawei.com>
> +
> +allOf:
> +  - $ref: dma-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - hisilicon,ascend310-sdma
> +      - hisilicon,ascend910-sdma
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#dma-cells':
> +    const: 1
> +    description:
> +      Clients specify a single cell with channel number.
> +
> +  dma-channel-mask:
> +    minItems: 1
> +    maxItems: 2
> +
> +  iommus:
> +    maxItems: 1
> +
> +  pasid-num-bits:
> +    description: |
> +      This tells smmu that this device supports iommu-sva feature.

How is this a feature of the DMA controller? Shouldn't this be part of 
the iommu cells? How does pasid relate to SVA?

> +      This determines the maximum number of digits in the pasid.
> +    maximum: 0x10
> +
> +  dma-coherent: true
> +
> +  dma-can-stall: true

What is this?

> +
> +required:
> +  - compatible
> +  - reg
> +  - dma-channel-mask
> +  - '#dma-cells'
> +  - iommus
> +  - pasid-num-bits
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dma-controller@880e0000 {
> +        compatible = "hisilicon,ascend310-sdma";
> +        reg = <0x880e0000 0x10000>;
> +        dma-channel-mask = <0xff00>;
> +        iommus = <&smmu 0x7f46>;
> +        pasid-num-bits = <0x10>;
> +        dma-coherent;
> +        dma-can-stall;
> +        #dma-cells = <1>;
> +    };
> +
> +...
> -- 
> 2.17.1
> 

