Return-Path: <devicetree+bounces-8147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C037C6DFC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 200A4282105
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD6F26295;
	Thu, 12 Oct 2023 12:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXAo4H23"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE6826291
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:24:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 703CCC433C7;
	Thu, 12 Oct 2023 12:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697113492;
	bh=1GyAZLXBp65moRKSORYgOCHrvhgp+SxDzz7EnfVjVUk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aXAo4H2341hCLiNHeYtUIkEE8BIZpaaoCB0X8Xl5ewS0BVCn69f7haypyvkcPPIu4
	 dB6E8XstAvbZpOkfhtmE0cs5tYGcQbfxg/TmwlpmB23wZaLx9vvbNVIEHgRh3ZzLrA
	 LheqF5JlnNNk3/7I5cgbUtpdrbP39NRSk6KK+8zvmGu1h0YbRRmBzSpdGAd+RJhkGC
	 twuAC/6CQJqWhDw2PHPz47IjC1LuELgfbCstxM9EktBRM0dWvahPGzF9wU3fJZuxK7
	 +aM4/Nx2RV/KIhiOEhUp5fRCTzdo/dn6DsPnzUNWF7+YqDG/PbbWQRGm4WWDVCpgwp
	 bNmqclV3cVCrQ==
Received: (nullmailer pid 393373 invoked by uid 1000);
	Thu, 12 Oct 2023 12:24:49 -0000
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
Cc: agross@kernel.org, dmitry.baryshkov@linaro.org, quic_tdas@quicinc.com, linux-arm-msm@vger.kernel.org, andersson@kernel.org, vladimir.zapolskiy@linaro.org, devicetree@vger.kernel.org, mturquette@baylibre.com, krzysztof.kozlowski+dt@linaro.org, jonathan@marek.ca, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, conor+dt@kernel.org
In-Reply-To: <20231012113100.3656480-4-bryan.odonoghue@linaro.org>
References: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
 <20231012113100.3656480-4-bryan.odonoghue@linaro.org>
Message-Id: <169711348945.393357.13855655138263608622.robh@kernel.org>
Subject: Re: [PATCH v4 3/4] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Date: Thu, 12 Oct 2023 07:24:49 -0500


On Thu, 12 Oct 2023 12:30:59 +0100, Bryan O'Donoghue wrote:
> Add bindings for qcom,sc8280xp-camss in order to support the camera
> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> This patch depends-on:
> https://lore.kernel.org/lkml/20231004161853.86382-2-bryan.odonoghue@linaro.org/T
>  .../bindings/media/qcom,sc8280xp-camss.yaml   | 581 ++++++++++++++++++
>  1 file changed, 581 insertions(+)
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231012113100.3656480-4-bryan.odonoghue@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


