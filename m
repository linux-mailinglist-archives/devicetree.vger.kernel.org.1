Return-Path: <devicetree+bounces-8680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FC07C9AF7
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:18:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C76022817CC
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 19:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4348E11703;
	Sun, 15 Oct 2023 19:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6FE11702
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 19:18:04 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8171CB7;
	Sun, 15 Oct 2023 12:18:01 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6c63588b554so2575767a34.0;
        Sun, 15 Oct 2023 12:18:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697397481; x=1698002281;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4J9M6Q/Fs2kk5+JVwAA7fWPPg0+sN3LtWvj/onmeBpI=;
        b=Vfh5uqf6K61puPn1Zqw20AWTscLhXJEGaCY6BH4u+9MdQYI0UPrFSPSlvbLGcikRQ0
         kPzucuTgQ+TbFPb2ZIJCf+2yovGTBoajXcv3QVJNjmWqHz5pVToGUZRAFYbmEnADZUTI
         gBsUqGEzCDfYhkmQ71VXp6gXuWEG8tXDcIGpZ0gmXJEws1Ggt3BXTRPeLbc3j1vQ7Pz1
         +Hi6mLtM1s4mbEvJBOXD/TXV/6uNQuAV36kUMvkdLStjCe2OAEJbwCsJi6okqHcNdWcG
         /xrb0FxOtAfu9l59qE54Ra4O7nCwwTwqVT441CQlJmpL0lexcIxc3/n12mj5RwVHQ4ZD
         h+pw==
X-Gm-Message-State: AOJu0Yy0p3uU7SjmGvUhdxvbL0ZILlk/rVceX44X1PJ5lpcgHiGipI5o
	0GacwH+glvp9wJg9Z4wzyOnE2el8eQ==
X-Google-Smtp-Source: AGHT+IGkt06dc7qCuMxBb7Nw9BsjyJwuBXkEDdDzef3EKu7IjKViBYtfVjhVjm4sz0+Mjr27UFstbg==
X-Received: by 2002:a9d:4d0a:0:b0:6bd:93e:460b with SMTP id n10-20020a9d4d0a000000b006bd093e460bmr30718901otf.19.1697397480689;
        Sun, 15 Oct 2023 12:18:00 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id dj23-20020a0568303a9700b006b9a9bc7773sm1455775otb.56.2023.10.15.12.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 12:17:59 -0700 (PDT)
Received: (nullmailer pid 609034 invoked by uid 1000);
	Sun, 15 Oct 2023 19:17:55 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: werneazc@gmail.com
Cc: devicetree@vger.kernel.org, Andre Werner <andre.werner@systec-electronic.com>, jic23@kernel.org, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-iio@vger.kernel.org, conor+dt@kernel.org, lars@metafoo.de
In-Reply-To: <20231015184517.3582-1-andre.werner@systec-electronic.com>
References: <20231015184517.3582-1-andre.werner@systec-electronic.com>
Message-Id: <169739747509.608933.6680883828849778208.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: ti,ads7038: Add
 description for ADS7038
Date: Sun, 15 Oct 2023 14:17:55 -0500
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Sun, 15 Oct 2023 20:32:20 +0200, werneazc@gmail.com wrote:
> From: Andre Werner <andre.werner@systec-electronic.com>
> 
> Add basic description for ADS7038 ADC devices.
> The devicetree adds the following device specific options:
> 
> - average-samples: Program device's programmable average filter.
> - crc-enabled: Enable the CRC check for SPI transfers. Sadly, this
>   option has currently no effect in the driver.
> - status-enabled: Enable the appending of the device's status on the
>   measure value transmission.
> - gpio-controller: Sadly function not implemented yet in the driver.
> 
> Signed-off-by: Andre Werner <andre.werner@systec-electronic.com>
> ---
> v3:
> - Delete ADS7138 compatible and comments.
> - Add options for CRC, status and average samples as well as
>   gpio-controller.
> - Update example.
> ---
>  .../bindings/iio/adc/ti,ads7038.yaml          | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:14: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:16: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:18: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:20: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:22: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:24: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:39:26: [warning] too few spaces after comma (commas)
./Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml:65:6: [error] missing starting space in comment (comments)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml: required:5: None is not of type 'string'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml: properties:gpio-controller:const: True is not of type 'integer', 'string'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml: properties:gpio-controller: 'anyOf' conditional failed, one must be fixed:
	'decription' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml: properties:gpio-controller: Additional properties are not allowed ('const', 'decription' were unexpected)
	from schema $id: http://devicetree.org/meta-schemas/boolean.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/ti,ads7038.yaml: ignoring, error in schema: required: 5
Documentation/devicetree/bindings/iio/adc/ti,ads7038.example.dts:25.17-52: ERROR (duplicate_property_names): /example-0/spi/adc@0:avdd-supply: Duplicate property name
ERROR: Input tree has errors, aborting (use -f to force output)
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/iio/adc/ti,ads7038.example.dtb] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231015184517.3582-1-andre.werner@systec-electronic.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


