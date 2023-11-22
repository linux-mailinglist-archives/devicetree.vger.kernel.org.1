Return-Path: <devicetree+bounces-17853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 039867F449B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 353321C209E6
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 520A120B3B;
	Wed, 22 Nov 2023 11:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4ED9112;
	Wed, 22 Nov 2023 03:02:44 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-35beca6d020so1603445ab.0;
        Wed, 22 Nov 2023 03:02:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650964; x=1701255764;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X10iSrSJiLW8LyM0talGPqTy1zkMfImzMBighRZvlwg=;
        b=iWzQByOi5M09Ug3FgZNSmfOmFnM6y1UG6bq6KZJ8+tK+VappvulSV9pNxmTotGIyag
         V/osHdVBIa9r/Zax/JR9OCk3IqSsvCe2pTl+ReZVr/6ZdH9bzOyLzdO2QgrhVcyMh4aH
         pDMqJm5JWpFnSiiq2JD9kJ6lHM0gpxNa1IKYwhL22J3vaFeeKBMJ3YGF15Uk8m9osORe
         uA3542+fQIdTCwwja5zHm9lxtbNHVMPUN45mIV4itiiS5BOLiTsCKjpUPaLYxA5A8Xxo
         y8tv9c5T4O8wwvBS3+5SirdfIgZfOmAI65KvV3v8ejdEUwWBm3Q+a7s0cGcfHuKsY/w7
         dWiQ==
X-Gm-Message-State: AOJu0YxlbFvZtzWrTKICNp8+C48C5yr4hLhDpHDIUh+hNz03xyixzKLQ
	4zioiAQqtX82H16uCsFjT5ds8MjfJA==
X-Google-Smtp-Source: AGHT+IH2mZ0askqoBGHQkIxYGw8nOgipZAyvI9PDUQ8iF4C0cRZP3ofm99PzzhdferLm2xLxnweLXQ==
X-Received: by 2002:a05:6e02:80e:b0:357:f41c:8bf6 with SMTP id u14-20020a056e02080e00b00357f41c8bf6mr1929799ilm.17.1700650963816;
        Wed, 22 Nov 2023 03:02:43 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id bc23-20020a056e02009700b0035742971dd3sm3874075ilb.16.2023.11.22.03.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 03:02:43 -0800 (PST)
Received: (nullmailer pid 116320 invoked by uid 1000);
	Wed, 22 Nov 2023 11:02:29 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Nikita Shubin <nikita.shubin@maquefel.me>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Alexander Sverdlin <alexander.sverdlin@gmail.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Richard Weinberger <richard@nod.at>, devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>, Miquel Raynal <miquel.raynal@bootlin.com>
In-Reply-To: <20231122-ep93xx-v5-18-d59a76d5df29@maquefel.me>
References: <20231122-ep93xx-v5-0-d59a76d5df29@maquefel.me>
 <20231122-ep93xx-v5-18-d59a76d5df29@maquefel.me>
Message-Id: <170065093852.115999.17127754687917725425.robh@kernel.org>
Subject: Re: [PATCH v5 18/39] dt-bindings: mtd: Add ts7200 nand-controller
Date: Wed, 22 Nov 2023 04:02:29 -0700


On Wed, 22 Nov 2023 11:59:56 +0300, Nikita Shubin wrote:
> Add YAML bindings for ts7200 NAND Controller.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
>  .../devicetree/bindings/mtd/technologic,nand.yaml  | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231122-ep93xx-v5-18-d59a76d5df29@maquefel.me

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


