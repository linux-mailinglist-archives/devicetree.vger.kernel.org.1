Return-Path: <devicetree+bounces-7242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBBB7BFD57
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 811801C20AEF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9421F4736C;
	Tue, 10 Oct 2023 13:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkmlMgVh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7761545F51
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:25:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56C2AC433C7;
	Tue, 10 Oct 2023 13:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696944335;
	bh=CjZnlq6PzXFC5yUfCHTOpCZbP5ACEIMB0ADocMWjz+4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WkmlMgVhyK4Z5ScLp/rxBvroVpyPiPi6jgW6x26BZjj0OEp32n5JneyAUoDv3/UEi
	 UDxopoID5WnVuDh7FMjZf4KiVVWg2FJzuJYaRLbZm9YSz4gpt8PMxcQnFt7qVP72D8
	 IeKVCuVzxFA3MvJrUL217toLRGYnaa2v8qFC+rZb2U0RWPne91dlZm2V42PXURK42m
	 0JeT4vo1lqC7HtZFiK0H0JzGYacy7Hbu6yakmBxUTbC0KGi+fxcnmlVYg/8aQ6bf3g
	 XRrIIw8aIQlrs/+UEAOv8TfEVL2PAxRVAzMBPo5lyDReR30YTnM2v4UrMXQZhKd52n
	 S1WPZb87bI3ug==
Received: (nullmailer pid 625805 invoked by uid 1000);
	Tue, 10 Oct 2023 13:25:33 -0000
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
Cc: konrad.dybcio@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonathan@marek.ca, andersson@kernel.org, quic_tdas@quicinc.com, robh+dt@kernel.org, linux-clk@vger.kernel.org, agross@kernel.org, linux-kernel@vger.kernel.org, sboyd@kernel.org, krzysztof.kozlowski+dt@linaro.org, vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org, mturquette@baylibre.com
In-Reply-To: <20231010122539.1768825-3-bryan.odonoghue@linaro.org>
References: <20231010122539.1768825-1-bryan.odonoghue@linaro.org>
 <20231010122539.1768825-3-bryan.odonoghue@linaro.org>
Message-Id: <169694433325.625737.10533845261157845416.robh@kernel.org>
Subject: Re: [PATCH v2 2/3] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Date: Tue, 10 Oct 2023 08:25:33 -0500


On Tue, 10 Oct 2023 13:25:38 +0100, Bryan O'Donoghue wrote:
> Add bindings for qcom,sc8280xp-camss in order to support the camera
> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/media/qcom,sc8280xp-camss.yaml   | 582 ++++++++++++++++++
>  1 file changed, 582 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dts:26:18: fatal error: dt-bindings/clock/qcom,sc8280xp-camcc.h: No such file or directory
   26 |         #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231010122539.1768825-3-bryan.odonoghue@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


