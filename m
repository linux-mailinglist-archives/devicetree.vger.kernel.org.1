Return-Path: <devicetree+bounces-12165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 849D77D8352
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:09:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86EBE1C20A9A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990162DF7E;
	Thu, 26 Oct 2023 13:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB36411C9F
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:09:49 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE79212A;
	Thu, 26 Oct 2023 06:09:47 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3b4145e887bso457606b6e.3;
        Thu, 26 Oct 2023 06:09:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698325787; x=1698930587;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NO5m7fhdZ86xZ6oZ/eNUrPW8qSlU9o/6HhuyLwLwsFw=;
        b=Rnt+X6ZQ9t5E1J2gkzJ22mTpJ/jh41L9S/zygpf33P2j3IBc7hcsQnbbaEeJ8UUuhP
         hTOue1YY26+tGq26MQqDbM4QNrh2oy/cNyuxU4ArJJhqVzutb3ww2XtCq94B+o7nkiir
         L2lOjCC0z0ist9qfg7smd2rAiq7WTLTH9phEZAdz7pyPq5k33mliuqHImRX6YSZVLpQj
         E+aMQavMTfAjgfvyNucD7TJfWIzynXjPz1Tt0YVs8HbeXgKuoyiwU9lvpR9irq6lvxTk
         +9BG6OawpdFzt3R8peM3nyEHH7sbZc73gVudMrIGF/kvl9oW2X//5vwJnqHpKaK9hFO4
         HTXA==
X-Gm-Message-State: AOJu0Yy2sWUHulIQrfJz9MlcHFwGZFnaUZLUMrxQ9In1p79P2M4QHBDq
	Dz5MhSV4KrUsw/XrUfFQdw==
X-Google-Smtp-Source: AGHT+IFbYix8XnLYfgLgwHIbCKasrWZ3A/+3Wi6GBgZ2V81n3ck6jlEHxn3qMHqcfAbPpBPMDmMobA==
X-Received: by 2002:a05:6808:2029:b0:3b2:f192:5a6b with SMTP id q41-20020a056808202900b003b2f1925a6bmr21367755oiw.16.1698325787239;
        Thu, 26 Oct 2023 06:09:47 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r33-20020a056808212100b003a747ea96a8sm2756099oiw.43.2023.10.26.06.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 06:09:46 -0700 (PDT)
Received: (nullmailer pid 3504841 invoked by uid 1000);
	Thu, 26 Oct 2023 13:09:45 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Guo Mengqi <guomengqi3@huawei.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, chenweilong@huawei.com, robh+dt@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, dmaengine@vger.kernel.org, xuqiang36@huawei.com
In-Reply-To: <20231026072549.103102-3-guomengqi3@huawei.com>
References: <20231026072549.103102-1-guomengqi3@huawei.com>
 <20231026072549.103102-3-guomengqi3@huawei.com>
Message-Id: <169832512997.3486292.15938415768767321000.robh@kernel.org>
Subject: Re: [PATCH v6 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
Date: Thu, 26 Oct 2023 08:09:45 -0500


On Thu, 26 Oct 2023 15:25:49 +0800, Guo Mengqi wrote:
> Add device-tree binding documentation for sdma hardware on
> HiSilicon Ascend SoC families.
> 
> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
> ---
>  .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml: dma-can-stall: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231026072549.103102-3-guomengqi3@huawei.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


