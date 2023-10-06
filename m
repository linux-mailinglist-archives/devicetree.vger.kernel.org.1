Return-Path: <devicetree+bounces-6508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DC07BB9E0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:59:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19E9282265
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E9D2377B;
	Fri,  6 Oct 2023 13:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k04UhtoG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A0679C3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:58:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D68CC433B6;
	Fri,  6 Oct 2023 13:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696600739;
	bh=B+nSMcPQ6Dfl5BlciIkViTGxDzdj1bYUxQNg0HS+Vlw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=k04UhtoGjZnMPVLw1q7zv7NSaXAEqjNHtEAZ6QQwW/wQXu3UXIRE53/OhcfRygQFj
	 8cfsn5qYN4SUe7gTGM6NtQ62xmxxbk7ejeFoTRi0UcOK+hVT4hbRAI5F+EgOUNlATV
	 JHD0CgF5uFi8/RCs+vAvITjxJq8Skzhm0jKgIJxAgi6w4sucOptQ+o+ISnCw7H27n4
	 imMHSuXHOAZGEn5xUkU9kPd9xFmqJaM0XhfLbaIKlmszJmQP3IPgSCx0F+k8/zBZ5S
	 Zq0GKUfvRS/g1WPl1/rrZ7qJgDt2JWQUNrEI6SK33mpZ1g7xoyM/qT7lEyIR461a5k
	 BzNlNQjyw1sAA==
Received: (nullmailer pid 3776809 invoked by uid 1000);
	Fri, 06 Oct 2023 13:58:51 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: konrad.dybcio@linaro.org, andi.shyti@kernel.org, mchehab@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org, andersson@kernel.org, linux-media@vger.kernel.org, rfoss@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, loic.poulain@linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, todor.too@gmail.com, agross@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20231006120159.3413789-5-bryan.odonoghue@linaro.org>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-5-bryan.odonoghue@linaro.org>
Message-Id: <169660073123.3776792.1207909917818505118.robh@kernel.org>
Subject: Re: [PATCH 4/5] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Date: Fri, 06 Oct 2023 08:58:51 -0500


On Fri, 06 Oct 2023 13:01:58 +0100, Bryan O'Donoghue wrote:
> Add bindings for qcom,sc8280xp-camss in order to support the camera
> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/media/qcom,sc8280xp-camss.yaml   | 598 ++++++++++++++++++
>  1 file changed, 598 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml: properties:power-domain-names:items: 'oneOf' conditional failed, one must be fixed:
	[{'description': 'ife0'}, {'description': 'ife1'}, {'description': 'ife2'}, {'description': 'ife3'}, {'description': 'top'}] is not of type 'object'
	Additional properties are not allowed ('description' was unexpected)
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dts:26:18: fatal error: dt-bindings/clock/qcom,sc8280xp-camcc.h: No such file or directory
   26 |         #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231006120159.3413789-5-bryan.odonoghue@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


