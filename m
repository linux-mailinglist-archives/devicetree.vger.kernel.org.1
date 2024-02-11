Return-Path: <devicetree+bounces-40492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E1C8509A3
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 15:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 269E9B20D73
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 14:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C711E519;
	Sun, 11 Feb 2024 14:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJLCdW2o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E6620
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 14:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707661883; cv=none; b=p3+Q3Pv4wFiNXPoZbdCCVvYsXhCi3VuyzELFt42Mb8f0U3QlP/jTgyC2lJWq5tUMckQZqVHYwwydS78UMhL1Lm7deX8Xp+NDuuyBCMAP6Adke+Kj5BH8c9NQjPa/RrwU3GEHqR6tdMFxsO5lBaBv+eeT0zc42BucqmmDvaRgRuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707661883; c=relaxed/simple;
	bh=M2ROTBpPPeoXDo4q3ygSvsi+wjQ5/8bZ4o1Eldz6b5Q=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=X7YJb/B07+tBWjOZ6G25ja8F8GDtzUD9ii7K0yxbMkwDb1bUlvQklMd1jklbOm9yMvNc+h7BXNuHasM8codyCTT7W/Ov/jv8AlfbIQfTOfuxRBS7aX/b+AkDuItG7XoCbVgWRdZzOjvIl5UJhhdAzGoz5QE96n4Y46SfojsZmOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJLCdW2o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80A82C43394;
	Sun, 11 Feb 2024 14:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707661882;
	bh=M2ROTBpPPeoXDo4q3ygSvsi+wjQ5/8bZ4o1Eldz6b5Q=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=EJLCdW2oul0Wqblq4lCB7WW4E4SNMavTBqZtnuAHxWR+QBN61F/n5TJEVdA9tGRxE
	 yfdONdRZaSXQvjanRxLxwv9ANlMugq3og4e/mL/5HWGQTvuuRkcTcLBplFRyoNF7os
	 iFNk2dmijQG513ac3YQ6ShvU/RJIy13r8ULqYNyfVLtypqFN/vsU1JhPGVLi87RVmE
	 73ndYszdKOLu/IULVyhRKKwvubgqkWkBxuLi3wa8l5mgjYQAExrMLRUSWZl5U/daw0
	 EUTwxOF4q24fgIBCWsevT44R6hjkPHyLiRKYWhP5vckFcdVffN/zID+tQFAI12Apn+
	 MHQMvI1jl0qAw==
Date: Sun, 11 Feb 2024 08:31:21 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 dri-devel@lists.freedesktop.org, Robert Foss <rfoss@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Sam Ravnborg <sam@ravnborg.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
 David Airlie <airlied@gmail.com>, Simha BN <simhavcs@gmail.com>, 
 Michael Walle <mwalle@kernel.org>, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20240211095144.2589-4-tony@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
 <20240211095144.2589-4-tony@atomide.com>
Message-Id: <170766188030.1496210.4618630360601260863.robh@kernel.org>
Subject: Re: [PATCH v3 03/10] dt-bindings: display: bridge: tc358775: Add
 support for tc358765


On Sun, 11 Feb 2024 11:51:08 +0200, Tony Lindgren wrote:
> The tc358765 is similar to tc358775. The tc358765 just an earlier version
> of the hardware, and it's pin and register compatible with tc358775 for
> most part.
> 
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml:87:8: [error] empty value in block mapping (empty-values)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml: allOf:0:if: None is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml: allOf:0:then: 'anyOf' conditional failed, one must be fixed:
	'stby-gpios' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml: ignoring, error in schema: allOf: 0: if
Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.example.dtb: /example-0/i2c@78b8000/bridge@f: failed to match any schema with compatible: ['toshiba,tc358775']
Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.example.dtb: /example-1/i2c@78b8000/bridge@f: failed to match any schema with compatible: ['toshiba,tc358775']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240211095144.2589-4-tony@atomide.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


