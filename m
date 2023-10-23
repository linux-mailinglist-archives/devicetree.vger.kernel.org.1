Return-Path: <devicetree+bounces-11056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1087D3DFF
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:41:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A87F4281099
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669DE210E9;
	Mon, 23 Oct 2023 17:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EDF21351
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:41:02 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B168B127;
	Mon, 23 Oct 2023 10:40:59 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1e59894d105so2455059fac.1;
        Mon, 23 Oct 2023 10:40:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082859; x=1698687659;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WHWTYZr8FmE5PUvdMZVU7eOQxQR0Lau59W2wz9H66io=;
        b=rv6MvtoMBvJvvrqQljs7hyfMf602Jloa/ZxYE3g6ohSZfsgnwg/hOoHjFvgUBb8wN2
         +yhONBk1mNyzPEbjDnyeKSg14fmXs1HuAP6TE7gZZHu70y3L0onZS4MuqSGqRPEiA5PN
         BtRWjdbNinrbalafMyptKrsJ5F3i02pSkYL3W6gBUe83HRojVJkBWS9hlLyMeetf4ZVR
         5jqCP2z/oOJ2rqNWKhVkoLWVsxET2pLHl5wxrer58OdnF8oHB2wRJidnecgjTnO246+4
         68BoKv3QYUYGyaPMfo7txINzRGc2XvHJS9sXNPyZHO/yYkkjiiT7U9Hw5VtCQx12Y6Z3
         wSkw==
X-Gm-Message-State: AOJu0Ywqyg1f7jVqCPPxYl21Bk7bW0ToGZvujQJeqTWro1aViEzFxAl2
	XRAgqcPhzMO+ZcmKyXfSdzWKNV7w7w==
X-Google-Smtp-Source: AGHT+IFdkzQW0SkH8ivVGhUgbuDwmE2LjOJ5Rnm5NYbNyP8uexHH0vKzEUigqypqTE+3qABbcu0gsA==
X-Received: by 2002:a05:6870:2183:b0:1e9:b2fe:9ea7 with SMTP id l3-20020a056870218300b001e9b2fe9ea7mr12765065oae.43.1698082858883;
        Mon, 23 Oct 2023 10:40:58 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6e0:8169:8cd7:6070:de02:c079])
        by smtp.gmail.com with ESMTPSA id ec24-20020a0568708c1800b001e5dd8a29c6sm1744864oab.29.2023.10.23.10.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:40:58 -0700 (PDT)
Received: (nullmailer pid 864630 invoked by uid 1000);
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
Cc: robh+dt@kernel.org, quic_tingweiz@quicinc.com, agross@kernel.org, linux-arm-msm@vger.kernel.org, andersson@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@quicinc.com
In-Reply-To: <1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com>
Message-Id: <169808266064.861239.7420927840211548252.robh@kernel.org>
Subject: Re: [PATCH v1 2/5] dt-bindings: sram: qcom,imem: document sm8250
Date: Mon, 23 Oct 2023 12:40:49 -0500


On Mon, 23 Oct 2023 17:20:54 +0800, Zhenhua Huang wrote:
> Add compatible for sm8250 IMEM.
> 
> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
> ---
>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:56:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:73:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: found a tab character where an indentation space is expected
./Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: found a tab character where an indentation space is expected

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


