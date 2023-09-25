Return-Path: <devicetree+bounces-2880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD8E7ACCED
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7BB19281325
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 23:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E11101D2;
	Sun, 24 Sep 2023 23:33:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5302FDF52
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3FCC433C7;
	Sun, 24 Sep 2023 23:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695598397;
	bh=10atyq5flJp3Ki/ZHhh3d7snv45LW/GTM3IFPzoakjo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=s/5nBCeThoxFxFlynFAx0qEZpuPC27/wZcZJ/P3TLvLkclJBU8ZZehIRyBNZQFRRL
	 F/XtmSZMeuikrvR1vmk+TmYxhCeuiOF8JKI3dLCGEnG63qhZhu2muOmnNd+uYQ+lAK
	 lhwhslGvm7RvCeuVlSrECVuWK1nLkFZXkhIaNFG6IJoUpBcXhKoFkZEZWe8Zo90Pb5
	 PNpYE0TjyPO0csAzIC8mmcMmd8hSpPXCixZUmZlCjT1vZAko5LHaVg62k1NNehdW9g
	 QDE5fXSbLC0LvkjBbirwFNSWL0Pc5Ovfj0Krz++p7OCdOwv/L7vOFz2WBD55nsnMLq
	 ai+gDO09UNsuQ==
Received: (nullmailer pid 3866087 invoked by uid 1000);
	Sun, 24 Sep 2023 23:33:15 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, jic23@kernel.org, linux-omap@vger.kernel.org, chenhuiz@axis.com, jean-baptiste.maneyrol@tdk.com, bcousson@baylibre.com, robh+dt@kernel.org, tony@atomide.com, lars@metafoo.de, andy.shevchenko@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20230924222559.2038721-2-andreas@kemnade.info>
References: <20230924222559.2038721-1-andreas@kemnade.info>
 <20230924222559.2038721-2-andreas@kemnade.info>
Message-Id: <169559839506.3866057.16365029701473740413.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: iio: imu: mpu6050: Add level shifter
Date: Sun, 24 Sep 2023 18:33:15 -0500


On Mon, 25 Sep 2023 00:25:57 +0200, Andreas Kemnade wrote:
> Found in ancient platform data struct:
> level_shifter: 0: VLogic, 1: VDD
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml: properties:invensense,level-shifter: True is not of type 'object'
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml: properties:invensense,level-shifter: More than one condition true in oneOf schema:
	{'description': 'Vendor specific properties must have a type and '
	                'description unless they have a defined, common '
	                'suffix.',
	 'oneOf': [{'additionalProperties': False,
	            'description': 'A vendor boolean property can use "type: '
	                           'boolean"',
	            'properties': {'deprecated': True,
	                           'description': True,
	                           'type': {'const': 'boolean'}},
	            'required': ['type', 'description']},
	           {'additionalProperties': False,
	            'description': 'A vendor string property with exact values '
	                           'has an implicit type',
	            'oneOf': [{'required': ['enum']}, {'required': ['const']}],
	            'properties': {'const': {'type': 'string'},
	                           'deprecated': True,
	                           'description': True,
	                           'enum': {'items': {'type': 'string'}}},
	            'required': ['description']},
	           {'description': 'A vendor property needs a $ref to '
	                           'types.yaml',
	            'oneOf': [{'required': ['$ref']}, {'required': ['allOf']}],
	            'properties': {'$ref': {'pattern': 'types.yaml#/definitions/'},
	                           'allOf': {'items': [{'properties': {'$ref': {'pattern': 'types.yaml#/definitions/'}},
	                                                'required': ['$ref']}]}},
	            'required': ['description']},
	           {'description': 'A vendor property can have a $ref to a a '
	                           '$defs schema',
	            'properties': {'$ref': {'pattern': '^#/(definitions|\\$defs)/'}},
	            'required': ['$ref']}],
	 'type': 'object'}
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230924222559.2038721-2-andreas@kemnade.info

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


