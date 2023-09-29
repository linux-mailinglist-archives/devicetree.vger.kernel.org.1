Return-Path: <devicetree+bounces-4714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A967B386E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 38B6F1C20AB0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E51513A3;
	Fri, 29 Sep 2023 17:15:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D2541745
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:15:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB92C433C8;
	Fri, 29 Sep 2023 17:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696007756;
	bh=7AVz0kPivWQBR06i2p6a/CrWEaQAzDjbiSIr2+/B5fE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dte4q0nIE1wdPH8uWWsKdRseAuGKtJpYAB5SkFGzIRMcDNQ9/Sr0aobhUd/K+xElh
	 pSgTl8maVw/r/OCtg0JG7KXPVKYZLr6A+gwEjVmXSTawdaRGJ4q8z35PHNQVdNnQlC
	 2HkD6eMvLsdlb04DDTdXSRWrciQL91pvatt5AJr+xZ4H4YFT8YsZ8pVaMP4VhzbncG
	 CNv+gyZQADOmmrxLm9LSOdzed+tp91AfSRnCGcKQksKodOXgaCRWNlmwMi+yEYGriZ
	 Xw4Dzgb7mxb4O9LGyR34dcHFRJfWd3Xoeizmnm6u3EWwJJ0hiOO0XLV54vSlF164Ok
	 hOKVoHHgzuo+g==
Received: (nullmailer pid 4170258 invoked by uid 1000);
	Fri, 29 Sep 2023 17:15:53 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Caleb Connolly <caleb.connolly@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>, linux-remoteproc@vger.kernel.org, Amit Kucheria <amitk@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Zhang Rui <rui.zhang@intel.com>, linux-arm-msm@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, Andy Gross <agross@kernel.org>, Bhupesh Sharma <bhupesh.linux@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>
In-Reply-To: <20230905-caleb-qmi_cooling-v1-2-5aa39d4164a7@linaro.org>
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
 <20230905-caleb-qmi_cooling-v1-2-5aa39d4164a7@linaro.org>
Message-Id: <169600775352.4170222.9360806659423431462.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Date: Fri, 29 Sep 2023 12:15:53 -0500


On Fri, 29 Sep 2023 17:16:18 +0100, Caleb Connolly wrote:
> The cooling subnode of a remoteproc represents a client of the Thermal
> Mitigation Device QMI service running on it. Each subnode of the cooling
> node represents a single control exposed by the service.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  13 ++
>  .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +
>  .../bindings/thermal/qcom,qmi-cooling.yaml         | 168 +++++++++++++++++++++
>  3 files changed, 187 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.example.dtb: remoteproc@4080000: cooling: 'compatible' is a required property
	from schema $id: http://devicetree.org/schemas/remoteproc/qcom,msm8996-mss-pil.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230905-caleb-qmi_cooling-v1-2-5aa39d4164a7@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


