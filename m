Return-Path: <devicetree+bounces-16717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5A67EF6F9
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 18:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05FD61C2074F
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC7A30CEE;
	Fri, 17 Nov 2023 17:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31150A5;
	Fri, 17 Nov 2023 09:32:39 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d261cb07dcso1321573a34.3;
        Fri, 17 Nov 2023 09:32:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700242358; x=1700847158;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4S/ec2GwXMEDgodu8Dp1Lk3HdoFb4k1XivOumHh1GgI=;
        b=gdgDqxoCfr/SowEUZC+Vkbzn+lDlac5zw1OA1/i9JRFuBLAnaySAYCKjLxyKiZ36Ws
         M7F3/jUXfj3OmJSlU6q7TOXELPxDjzhiRjfT4F2VxZXMwExBrdtZSzgt/FXYCxCjll7u
         8dW77SdiV0Oks91uVdEFA6WMYiruJs1wHHkd/cPggF/v7kT3HU2J37NCMvpLf4K4I7l4
         R9aJRqMmaLfcJ1Eje8ysvED/c4hD6jrAs/cBVXA/dY1kbvArOs8DWe9mYcCKn8JPYakl
         AkOaiaKcLajPlMTyHfovZsKaU3gmGURDCRszPZd1PpyRcwc2DAKTM+x21ZESVVkNg9R1
         MC8g==
X-Gm-Message-State: AOJu0YzLuhY5LipgKLCkkkf9/scLkUZnegg13JkPCOrPPEympgZEkVia
	0zT/ipsgmw/cqTY4rHVr0h3RpINTFQ==
X-Google-Smtp-Source: AGHT+IENcOdeZog7yqJ5QnrNxZdL429ema4GkIhCtwuxzVuOwfOYl6UI9G7rrEG8iz4nSd6Vbna01g==
X-Received: by 2002:a05:6830:20b:b0:6d6:4c54:72e4 with SMTP id em11-20020a056830020b00b006d64c5472e4mr12715956otb.36.1700242358397;
        Fri, 17 Nov 2023 09:32:38 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b26-20020a9d755a000000b006ce2c31dd9bsm303819otl.20.2023.11.17.09.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 09:32:36 -0800 (PST)
Received: (nullmailer pid 1869910 invoked by uid 1000);
	Fri, 17 Nov 2023 17:32:33 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: James Tai <james.tai@realtek.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20231117162709.1096585-2-james.tai@realtek.com>
References: <20231117162709.1096585-1-james.tai@realtek.com>
 <20231117162709.1096585-2-james.tai@realtek.com>
Message-Id: <170024235327.1869893.15173077111056096496.robh@kernel.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: interrupt-controller: Add support
 for Realtek DHC SoCs
Date: Fri, 17 Nov 2023 11:32:33 -0600


On Sat, 18 Nov 2023 00:27:04 +0800, James Tai wrote:
> Add the YAML documentation for Realtek DHC SoCs.
> 
> CC: Thomas Gleixner <tglx@linutronix.de>
> CC: Marc Zyngier <maz@kernel.org>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: linux-kernel@vger.kernel.org
> CC: devicetree@vger.kernel.org
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
> v1 to v2 change:
> - Tested the bindings using 'make dt_binding_check'
> - Fixed code style issues
> 
>  .../realtek,rtd1319-intc.yaml                 | 79 +++++++++++++++++++
>  .../realtek,rtd1319d-intc.yaml                | 79 +++++++++++++++++++
>  .../realtek,rtd1325-intc.yaml                 | 79 +++++++++++++++++++
>  .../realtek,rtd1619b-intc.yaml                | 78 ++++++++++++++++++
>  4 files changed, 315 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1319-intc.yaml
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1319d-intc.yaml
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1325-intc.yaml
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1619b-intc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1319d-intc.yaml: title: 'Realtek DHC RTD1319D Interrupt Controller Device Tree Bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1325-intc.yaml: title: 'Realtek DHC RTD1325 Interrupt Controller Device Tree Bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1619b-intc.yaml: title: 'Realtek DHC RTD1619B Interrupt Controller Device Tree Bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd1319-intc.yaml: title: 'Realtek DHC RTD1319 Interrupt Controller Device Tree Bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231117162709.1096585-2-james.tai@realtek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


