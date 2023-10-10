Return-Path: <devicetree+bounces-7334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A9A7C0196
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB8781C20942
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13D39CA60;
	Tue, 10 Oct 2023 16:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChpBcrZz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2AD24C6A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B793C433C7;
	Tue, 10 Oct 2023 16:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696955264;
	bh=uWXn+ySubgsLikSzKdVOCQoQctLYGPs6WUFA/M9wNbo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ChpBcrZz6NosHeHHlQuDmUftzhWGCTXcX/+RJ1wUGSZ0jy6Lnos9nwoRZ3XpyoVQ4
	 DJScejQpFrbGdanfXgrcMWBZeH9pVwgoS4sMGcCYD1OKI3JpakLHtTrRlxGmIUtP+I
	 yThkpXhXPZ+zXmVqVU4Nlc2b/FAD3IduCzFmwU2Ga1K0iJQZ5CrNlQnHf2/AZrYPT0
	 fRgK0YAiDmMAJ7HUEujdE0ZMJ4g+PI2P/N6BG2LnMw7mp21EWop7HjURp9/HJOIIJm
	 JAcr36VtaypWggAN3Aufrc75svyinUT7QO/G3HbZvL8OatWoN6/iVTb19eVT5PjgAH
	 Aoi+lRBx65nZw==
Received: (nullmailer pid 1012903 invoked by uid 1000);
	Tue, 10 Oct 2023 16:27:41 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Maramaina Naresh <quic_mnaresh@quicinc.com>
Cc: linux-scsi@vger.kernel.org, Avri Altman <avri.altman@wdc.com>, Bjorn Andersson <andersson@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, "James E.J. Bottomley" <jejb@linux.ibm.com>, quic_nguyenb@quicinc.com, Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>, "Martin K. Petersen" <martin.petersen@oracle.com>, quic_cang@quicinc.com
In-Reply-To: <1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com>
References: <1696952947-18062-1-git-send-email-quic_mnaresh@quicinc.com>
 <1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com>
Message-Id: <169695526157.1012881.14879634429567807944.robh@kernel.org>
Subject: Re: [PATCH V1 1/4] dt-bindings: ufs: qcom: Add qos property
Date: Tue, 10 Oct 2023 11:27:41 -0500


On Tue, 10 Oct 2023 21:19:04 +0530, Maramaina Naresh wrote:
> Add bindings for per-cpu QoS for QCOM UFS. This improves random io
> performance by 20% for QCOM UFS.
> 
> Signed-off-by: Maramaina Naresh <quic_mnaresh@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/ufs/qcom,ufs.yaml:83:6: [warning] wrong indentation: expected 6 but found 5 (indentation)
./Documentation/devicetree/bindings/ufs/qcom,ufs.yaml:85:6: [warning] wrong indentation: expected 6 but found 5 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml: properties:qos: 'anyOf' conditional failed, one must be fixed:
	'cpumask' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml: properties:qos: 'anyOf' conditional failed, one must be fixed:
	'vote' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml: qos: missing type definition
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/qcom,ufs.example.dtb: ufs@1d84000: Unevaluated properties are not allowed ('qos0', 'qos1' were unexpected)
	from schema $id: http://devicetree.org/schemas/ufs/qcom,ufs.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


