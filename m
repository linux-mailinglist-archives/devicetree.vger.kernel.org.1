Return-Path: <devicetree+bounces-12166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6987D8353
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:09:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58705281F9D
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 510C02DF8E;
	Thu, 26 Oct 2023 13:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46DC2D049
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:09:50 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE9B196;
	Thu, 26 Oct 2023 06:09:49 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3b2f28caab9so466980b6e.1;
        Thu, 26 Oct 2023 06:09:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698325789; x=1698930589;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=59EyrAnu6qu4iHYGTTXbA1AsQ1YSI979KXGXmgmKV/k=;
        b=BCFV5gWQbfz9f79IxAhmllOOj+/CfeiPgEaK/xhEFffDPQ5pj9hdrKfHGS3xWmJy6u
         1tSdKg7egiPvslAezrZcYogyQaEfV4iVIO5MEtPDoIB1BBDGch+mAV5Z8Xqy41UToq3Z
         oZlnavm6eRreF34EAuvMdOzBpXoyDwxHrutc4H8mP/gs4VICzjL2yrFnjmDOFE3EmyzL
         k/obYaJl/c+fFu/xTyGisV/+6nyVS92Xwl7fshnJKgMtB8Q8dgqZ5L9fwQhnA2pmTMw6
         UxUPkFpRbLRL82eJ5vmQ18Po8aAnGg9FewDm4BbJEifZVI2rtdTQEi2UzXIq7AYONIb7
         ujKA==
X-Gm-Message-State: AOJu0YzbMyNFdUnON6wWjOtPs5Ik63gO9pezSrNNlAVvIQb+ycLr39VX
	3fAbcBwVns+zU4JXAICL3A==
X-Google-Smtp-Source: AGHT+IFscanbjXkpHtFuekjcih1hv9YgNyuLg5VVZtCmF+VKMRcVJ8dLyWrFPHDKcKi8JP+29tsb5w==
X-Received: by 2002:a05:6808:3c2:b0:3b2:e649:a830 with SMTP id o2-20020a05680803c200b003b2e649a830mr18921177oie.23.1698325788764;
        Thu, 26 Oct 2023 06:09:48 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bm23-20020a0568081a9700b003af638fd8e4sm2784381oib.55.2023.10.26.06.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 06:09:48 -0700 (PDT)
Received: (nullmailer pid 3504844 invoked by uid 1000);
	Thu, 26 Oct 2023 13:09:45 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Li peiyu <579lpy@gmail.com>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org, jdelvare@suse.com, linux@roeck-us.net, linux-kernel@vger.kernel.org
In-Reply-To: <20231026080226.52170-1-579lpy@gmail.com>
References: <caa50763-74be-4c40-9d8d-7f1f64ce5144@kernel.org>
 <20231026080226.52170-1-579lpy@gmail.com>
Message-Id: <169832513050.3486335.8686944561228010224.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: hwmon: lm87: convert to YAML
Date: Thu, 26 Oct 2023 08:09:45 -0500


On Thu, 26 Oct 2023 16:02:26 +0800, Li peiyu wrote:
> Convert the lm87 hwmon sensor bindings to DT schema
> 
> Signed-off-by: Li peiyu <579lpy@gmail.com>
> ---
> Changes for v2:
> - replace node name lm87 with sensor
> - replace character '\t' with spaces
> 
>  .../devicetree/bindings/hwmon/lm87.txt        | 30 ----------
>  .../devicetree/bindings/hwmon/lm87.yaml       | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/lm87.txt
>  create mode 100644 Documentation/devicetree/bindings/hwmon/lm87.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/lm87.yaml: has-temp3: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/lm87.yaml: has-in6: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/hwmon/lm87.yaml: has-in7: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231026080226.52170-1-579lpy@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


