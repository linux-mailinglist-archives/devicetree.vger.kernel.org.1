Return-Path: <devicetree+bounces-11058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA477D3E03
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9586A28111D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5669D21347;
	Mon, 23 Oct 2023 17:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663C01B26B
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:41:09 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3D0083;
	Mon, 23 Oct 2023 10:41:05 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6ce2eaf7c2bso2450967a34.0;
        Mon, 23 Oct 2023 10:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082865; x=1698687665;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jrHGmmgJnxvcu0aF/frpi8exyKp+I/kU2DrQ15Xurn8=;
        b=uSNPXBoRiAem2dBV1r+WVTlbg0pNXpixoKvsNKST8nTZ6jbt4eUOpgSwj6NbQ0jBwZ
         nCV1va4o7dr4PiiN5XvRbj2Q21K5r/4s5BY1djIr4B0wdRkXyiXp1vVdcZYW4MwcghA4
         +QB4IDM1XbkZSSVyrh3m/fVkF+cheLK9+6d+D4Ne1naUr1g3GCJN1oyj4FP6OuPVWgxn
         f4YbOKGtybF2XV05gCho+ehDsP8fu+/j5Rbl9PQtUNz5PWpVp7FjcxVQyPpmOiHnXkKX
         i/FUZsmysYrrcOg8b9Uz2dY03vw/g3C2/cPuf+ZBCWq2W7zRgsySv2LRE+FLocjuYRsd
         a+7A==
X-Gm-Message-State: AOJu0YwIkiNu5tMSo5pf7qIxu41lPNDxmBJAtJgOsW3ykb+0TI0ffE+T
	nMxLAIkB5l3Mqv5ySawudoZKnQE6dQ==
X-Google-Smtp-Source: AGHT+IEx/JacqqUPgOlNNIQktm6yur5clajdO6fQdAx2h4z7TeeHJXXdXO8tS0gP0OH1P1yeuR0b/g==
X-Received: by 2002:a05:6830:348b:b0:6bc:c542:6f75 with SMTP id c11-20020a056830348b00b006bcc5426f75mr14124559otu.0.1698082864788;
        Mon, 23 Oct 2023 10:41:04 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6e0:8169:8cd7:6070:de02:c079])
        by smtp.gmail.com with ESMTPSA id t8-20020a9d66c8000000b006ce2fce83cbsm1515829otm.25.2023.10.23.10.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:41:04 -0700 (PDT)
Received: (nullmailer pid 864628 invoked by uid 1000);
	Mon, 23 Oct 2023 17:40:49 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, quic_tingweiz@quicinc.com, robh+dt@kernel.org, devicetree@vger.kernel.org, konrad.dybcio@linaro.org, andersson@kernel.org, kernel@quicinc.com
In-Reply-To: <1698052857-6918-2-git-send-email-quic_zhenhuah@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-2-git-send-email-quic_zhenhuah@quicinc.com>
Message-Id: <169808265940.861205.969756956835183901.robh@kernel.org>
Subject: Re: [PATCH v1 1/5] dt-bindings: soc: qcom: Add memory_dump driver
 bindings
Date: Mon, 23 Oct 2023 12:40:49 -0500


On Mon, 23 Oct 2023 17:20:53 +0800, Zhenhua Huang wrote:
> Add bindings for the QCOM Memory Dump driver providing debug
> facilities. Firmware dumps system cache, internal memory,
> peripheral registers to reserved DDR as per the table which
> populated by the driver, after crash and warm reset.
> 
> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
> ---
>  .../bindings/soc/qcom/qcom,mem-dump.yaml           | 42 +++++++++++++++++++++
>  .../devicetree/bindings/sram/qcom,imem.yaml        | 44 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:55:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:72:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:119:1: [error] syntax error: found character '\t' that cannot start any token (syntax)
./Documentation/devicetree/bindings/soc/qcom/qcom,mem-dump.yaml:5:10: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/sram/qcom,imem.example.dts'
Documentation/devicetree/bindings/sram/qcom,imem.yaml:119:1: found a tab character where an indentation space is expected
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/sram/qcom,imem.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:119:1: found a tab character where an indentation space is expected
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sram/qcom,imem.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1698052857-6918-2-git-send-email-quic_zhenhuah@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


