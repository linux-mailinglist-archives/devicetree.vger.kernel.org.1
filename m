Return-Path: <devicetree+bounces-13187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C681E7DCD5D
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 13:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBCA6B20E7B
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 12:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 846A1D294;
	Tue, 31 Oct 2023 12:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A35D1134B3
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 12:57:09 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA182BD;
	Tue, 31 Oct 2023 05:57:07 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6cd0a8bc6dcso3763144a34.2;
        Tue, 31 Oct 2023 05:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698757027; x=1699361827;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FtG9QhzR7J+O+f8JayPYsLnoKybZwF7lAbt6Ys0d80s=;
        b=Fij7LAdLyV6JR7HDfkTGoGhzGIprx6uaCjQglcF/G25OSy12PMAeod1spQa9zoe2Mq
         0cuupnnmOhM70vh9vtxkjjGaVVWqd0WPwkhu+D8aYxjwUA5MkQU4WQhZ9ojQtpKKGtZP
         rkJCm0185FRskSrY85r9BYV8LWpBtH2uV8pd4FzH1q2B3rPn3TSxpmJcaQgAyMMgqHBc
         pWQsnhoSFBMRr6ZJrDHVwEX9RDezmf09kdFF8l5o0Gj9HRZxWAWFXpywmcD544j7yw3I
         g3+eCqjWeSF8IMxX7EvRzMpCtycRMKKM2p8w3jlUjlr0qrIBsAh8V5uhbmIS6xQ9ROA7
         T0Ow==
X-Gm-Message-State: AOJu0YxyW64h0Db5sWGwXDrk+O5UFju6DzKdRXveNxw2q9LpzS6eaLYA
	vbMO8g2jkPc2CZs80/nKLA==
X-Google-Smtp-Source: AGHT+IF3pfx/dun0ty4hvZSHtDRvIH6ofJEzghjkTJbFoMU8eC+a+vIrPaBJx5So39dUszTj/6Y5og==
X-Received: by 2002:a05:6830:4117:b0:6ce:2985:a8c1 with SMTP id w23-20020a056830411700b006ce2985a8c1mr16529459ott.2.1698757027094;
        Tue, 31 Oct 2023 05:57:07 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6553000000b006ce2e6eb5bfsm210956otl.0.2023.10.31.05.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 05:57:06 -0700 (PDT)
Received: (nullmailer pid 1364958 invoked by uid 1000);
	Tue, 31 Oct 2023 12:57:05 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: "Yuxi (Yuxi) Wang" <Yuxi.Wang@monolithicpower.com>
Cc: conor+dt@kernel.org, pavel@ucw.cz, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, lee@kernel.org, linux-leds@vger.kernel.org, wyx137120466@gmail.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <c8bbeb3c3d9b44049d790e90d9738a83@monolithicpower.com>
References: <c8bbeb3c3d9b44049d790e90d9738a83@monolithicpower.com>
Message-Id: <169875521165.1325395.12809005225623147568.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: leds: add mps mp3326 LED
Date: Tue, 31 Oct 2023 07:57:05 -0500


On Tue, 31 Oct 2023 06:59:50 +0000, Yuxi (Yuxi) Wang wrote:
> 
> Document mps mp3326 LED driver devicetree bindings.
> 
> Signed-off-by: Yuxi Wang <Yuxi.Wang@monolithicpower.com>
> ---
>  .../devicetree/bindings/leds/leds-mp3326.yaml | 184 ++++++++++++++++++
>  1 file changed, 184 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/leds-mp3326.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:compatible: [{'const': 'mps,mp3326'}] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_r:properties:required: ['reg', 'color'] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties: 'patternProperties' should not be valid under {'$ref': '#/definitions/json-schema-prop-names'}
	hint: A json-schema keyword was found instead of a DT property name.
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:patternProperties: 'anyOf' conditional failed, one must be fixed:
	'^led@[0-3]$' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:compatible: [{'const': 'mps,mp3326'}] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_b: 'anyOf' conditional failed, one must be fixed:
	'reg' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_b: 'anyOf' conditional failed, one must be fixed:
	'color' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_g: 'anyOf' conditional failed, one must be fixed:
	'reg' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_g: 'anyOf' conditional failed, one must be fixed:
	'color' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_r:properties: 'required' should not be valid under {'$ref': '#/definitions/json-schema-prop-names'}
	hint: A json-schema keyword was found instead of a DT property name.
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_r:properties:required: ['reg', 'color'] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: 'oneOf' conditional failed, one must be fixed:
	'unevaluatedProperties' is a required property
	'additionalProperties' is a required property
	hint: Either unevaluatedProperties or additionalProperties must be present
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_g: 'reg' is not one of ['type', 'description', 'dependencies', 'dependentRequired', 'dependentSchemas', 'properties', 'patternProperties', 'additionalProperties', 'unevaluatedProperties', 'deprecated', 'required', 'not', 'allOf', 'anyOf', 'oneOf', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/nodes.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_g: 'color' is not one of ['type', 'description', 'dependencies', 'dependentRequired', 'dependentSchemas', 'properties', 'patternProperties', 'additionalProperties', 'unevaluatedProperties', 'deprecated', 'required', 'not', 'allOf', 'anyOf', 'oneOf', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/nodes.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_b: 'reg' is not one of ['type', 'description', 'dependencies', 'dependentRequired', 'dependentSchemas', 'properties', 'patternProperties', 'additionalProperties', 'unevaluatedProperties', 'deprecated', 'required', 'not', 'allOf', 'anyOf', 'oneOf', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/nodes.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: properties:multi-led:properties:led_b: 'color' is not one of ['type', 'description', 'dependencies', 'dependentRequired', 'dependentSchemas', 'properties', 'patternProperties', 'additionalProperties', 'unevaluatedProperties', 'deprecated', 'required', 'not', 'allOf', 'anyOf', 'oneOf', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/nodes.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: mps,led-protect: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/leds/leds-mp3326.yaml: patternProperties: missing type definition
Documentation/devicetree/bindings/leds/leds-mp3326.example.dtb: /example-0/i2c/mp3326@30: failed to match any schema with compatible: ['mps,mp3326']
Documentation/devicetree/bindings/leds/leds-mp3326.example.dtb: /example-1/i2c/mp3326@30: failed to match any schema with compatible: ['mps,mp3326']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/c8bbeb3c3d9b44049d790e90d9738a83@monolithicpower.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


