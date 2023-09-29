Return-Path: <devicetree+bounces-4707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E924C7B382A
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:55:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C4A6DB20C1E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A617441211;
	Fri, 29 Sep 2023 16:55:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F47215AF2
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:55:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C6BC433C9;
	Fri, 29 Sep 2023 16:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696006552;
	bh=uf3unOmquHNeo7Ua/HDausdM3DppGA02+6/jUxVaBPU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jcv5ZVlkiH0PDq8XbPRd0TeLlyedF1el5RuKNHTtcFvvEv2AxevxgeCp6CqWrYHHI
	 9R21E0jn2gtFAq7xxMp+ldIceBIij/8NRzCii41Px2RRBVtYvW55MJlhpUEPyN0/OR
	 e/Z+QMiwnkR5dQqsckubwYTmBD3TPYBlW1rlY7rmFrq8Z0R+Jt5jvyWguRD/IXtlGQ
	 /6xIQtdZsn9s+wJ/vt22NrALe9PD3CxqLAfS4wxNJQeEn39gnZWUFuuYw7oZ6jilb6
	 kAOa4ndgt33bjayHekPc9PNCXpFOb62xQG8Er2Umy4q3Pu7K08y5ZG7frnuUEcyvwR
	 lkl9/EuYCyH5w==
Received: (nullmailer pid 4105451 invoked by uid 1000);
	Fri, 29 Sep 2023 16:55:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, martink@posteo.de, Steve Longerbeam <slongerbeam@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-media@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Fabio Estevam <festevam@gmail.com>, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20230929151825.6535-6-jacopo.mondi@ideasonboard.com>
References: <20230929151825.6535-1-jacopo.mondi@ideasonboard.com>
 <20230929151825.6535-6-jacopo.mondi@ideasonboard.com>
Message-Id: <169600654899.4105435.9416613828918752316.robh@kernel.org>
Subject: Re: [PATCH 5/7] media: bindings: ovti,ov5640: Fix handling of
 video-interface-device
Date: Fri, 29 Sep 2023 11:55:49 -0500


On Fri, 29 Sep 2023 17:18:23 +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Omnivision OV5640 sensor.
> 
> There is no reason to restrict the allowed rotation degrees to 0 and 180,
> as the sensor can be mounted with any rotation.
> 
> Also, as all the properties described by video-interface-device.yaml are
> allowed for the image sensor, make them accepted by changing
> "additionalProperties: false" to "unevaluatedProperties: false" at the
> schema top-level.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  .../devicetree/bindings/media/i2c/ovti,ov5640.yaml         | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml: 'unevaluatatedProperties' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml: 'oneOf' conditional failed, one must be fixed:
	'unevaluatedProperties' is a required property
	'additionalProperties' is a required property
	hint: Either unevaluatedProperties or additionalProperties must be present
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230929151825.6535-6-jacopo.mondi@ideasonboard.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


