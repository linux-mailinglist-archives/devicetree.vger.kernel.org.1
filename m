Return-Path: <devicetree+bounces-11891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4537D6E9E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CED001C20AFB
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7461629420;
	Wed, 25 Oct 2023 14:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AC08473
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:25:16 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F57099;
	Wed, 25 Oct 2023 07:25:15 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ce2cf67be2so3654683a34.2;
        Wed, 25 Oct 2023 07:25:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698243914; x=1698848714;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PsDU6unZ9oc6UCJkdOraO8O4Nijhy1TmXbsiiZnftNA=;
        b=gw9ek/L9Itw033vgtb8l0IjmAR/T/6hKA26/cMGGXb6rErbH6nTKNwjnyuL3vGA35y
         9aPVjgnLOZVNbI9vhNGMwQVKGPkzDS1OAFAJCW68EgAwvAf6g1y2LwvrJxnKERZe0mOV
         BDJlvfG95ajNZXPiUrtGJEpPeQjCn4g6pg9WBGGbPkEMUVzppHD4Rm9y1hGfWJX5iHgM
         JjVWnIsW5DUXxuYjvLjQvyee2yV88PGfIqIvCluPd4mXC2clPSGDbdGS1D/SmwyZb/KB
         1N7auKv7Lf34fbNtjWJPON9w04Wdl8RE0aY6qlyzcJrRXkt3uAUcDuL0FGvVhdZ2kHgA
         mxYA==
X-Gm-Message-State: AOJu0YyJpG6r6x2hrPeU2v7ZqHviOAZcU9TJLaeG+OphjcGPTLEtTtQl
	LRiYPrYO62rcqDOFLM4Odg==
X-Google-Smtp-Source: AGHT+IEJMt/OKE5hn7HICeD4NHHvB/xTt8NPVXJOPA+84mEStvR1sIAotcj+fA8OdlowPY0s5aeQ6g==
X-Received: by 2002:a05:6830:908:b0:6b9:bd9d:e333 with SMTP id v8-20020a056830090800b006b9bd9de333mr17227122ott.3.1698243914529;
        Wed, 25 Oct 2023 07:25:14 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m6-20020a05683026c600b006c4d38e12b9sm2282446otu.65.2023.10.25.07.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:25:13 -0700 (PDT)
Received: (nullmailer pid 112955 invoked by uid 1000);
	Wed, 25 Oct 2023 14:25:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Wei-Shih Lin <frank101417@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-input@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20231025082054.1190-2-Weishih_Lin@novatek.com.tw>
References: <20231025082054.1190-1-Weishih_Lin@novatek.com.tw>
 <20231025082054.1190-2-Weishih_Lin@novatek.com.tw>
Message-Id: <169824355638.62574.6102936426435011763.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: touchscreen: Add Novatek NT519XX
 series bindings
Date: Wed, 25 Oct 2023 09:25:12 -0500


On Wed, 25 Oct 2023 16:20:53 +0800, Wei-Shih Lin wrote:
> This patch adds device tree bindings for Novatek NT519XX series
> touchscreen devices.
> 
> Signed-off-by: Wei-Shih Lin <Weishih_Lin@novatek.com.tw>
> ---
>  .../input/touchscreen/novatek,nt519xx.yaml    | 60 +++++++++++++++++++
>  MAINTAINERS                                   |  9 +++
>  2 files changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.yaml: title: 'Novatek nt519xx touchscreen controller bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
Error: Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.example.dts:25.40-41 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/input/touchscreen/novatek,nt519xx.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231025082054.1190-2-Weishih_Lin@novatek.com.tw

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


