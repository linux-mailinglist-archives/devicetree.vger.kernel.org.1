Return-Path: <devicetree+bounces-7871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA297C5D7A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9AF928210D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 19:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4881312E54;
	Wed, 11 Oct 2023 19:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkMMmg7T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C40612E4B
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:14:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F33C7C433C7;
	Wed, 11 Oct 2023 19:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697051674;
	bh=fiAK9g87Vz98ytokGLJJe4d+TJ34yfcDzT+bs6nScOI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NkMMmg7Tvq8YNnI2Ymlv97+QC2ZVEs0V4cO7h//tDlJMkh8/oCV0mroqx8+ju8bK+
	 R+be2T7O4knF2nKxq44B4KndhAGZTRB5PIkdYy5Y3uK9hy5C0SR6XcL7+w086rWjpR
	 yri0ADeQCZpnyr28kFuB3dTDIy5AsgwRxD1pzIo14KY3OgtouCD+h+49em6VUJFFBr
	 y4Aw8axW+SJGj5+TqCI10CqElw7VsQo1I+G+K+965iy/fGfDK1eHlpIweeBbY4WwLr
	 GEjw4vj5df3eZAdadiimx2sBIUDHbTq0UV+jggO6bM3L4YgFtknYY4ly2yhLAcqjbV
	 uOMW6w/pmXVjA==
Received: (nullmailer pid 1840053 invoked by uid 1000);
	Wed, 11 Oct 2023 19:14:31 -0000
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
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, konrad.dybcio@linaro.org, agross@kernel.org, dmitry.baryshkov@linaro.org, andersson@kernel.org, robh+dt@kernel.org, mturquette@baylibre.com, jonathan@marek.ca, quic_tdas@quicinc.com, sboyd@kernel.org, vladimir.zapolskiy@linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20231011185540.2282975-4-bryan.odonoghue@linaro.org>
References: <20231011185540.2282975-1-bryan.odonoghue@linaro.org>
 <20231011185540.2282975-4-bryan.odonoghue@linaro.org>
Message-Id: <169705167192.1839996.9701202822807464812.robh@kernel.org>
Subject: Re: [PATCH v3 3/4] media: dt-bindings: media: camss: Add
 qcom,sc8280xp-camss binding
Date: Wed, 11 Oct 2023 14:14:31 -0500


On Wed, 11 Oct 2023 19:55:39 +0100, Bryan O'Donoghue wrote:
> Add bindings for qcom,sc8280xp-camss in order to support the camera
> subsystem for sc8280xp as found in the Lenovo x13s Laptop.
> 
> This patch depends-on:
> https://lore.kernel.org/lkml/20231004161853.86382-2-bryan.odonoghue@linaro.org/T
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231011185540.2282975-4-bryan.odonoghue@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


