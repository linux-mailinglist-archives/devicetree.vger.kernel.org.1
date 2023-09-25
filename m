Return-Path: <devicetree+bounces-3016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBE17AD1A2
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:26:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 65AA3B20A3B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507AB10968;
	Mon, 25 Sep 2023 07:26:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA1F10964;
	Mon, 25 Sep 2023 07:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CB83C433C9;
	Mon, 25 Sep 2023 07:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695626801;
	bh=I4CNi9Q/JBftF6qP99taJllMHcyGXlOe1VzUdcgnrWs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=j+Zfq8JXfDD5lGXmuBZtgQo6VKdWDgPUMBpj0dWZTupcXLhcRTmXkeMs0Aaq5G26L
	 V11jhZjeoSR/2Ug+4fLlfnYLPrwtA+Ut8zH5BsrVHn2sPozS3nVjGObrxPDRZCH2nj
	 ZJvDqOTOgG4Cj75dOue7ZRUwHO8JKVsYtlVQwcgXkkmsMMUgX9P1B1owgk3fb398so
	 4Gqq6PYbts8Qk1xJbO33NbU/jGpLMHs2Q2SbeFaaj9WJoUJk6oHYg7//E9mWLtYYqJ
	 dFL3W9Iz2L1ruJQHkyd/1V8r6MOoPuFbwmMNlh/mMJcfDkZOH+h7BTZoCNvHrwLig5
	 L/MAWdDlIjFug==
Received: (nullmailer pid 286711 invoked by uid 1000);
	Mon, 25 Sep 2023 07:26:38 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: devicetree@vger.kernel.org, agross@kernel.org, linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org, andersson@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, ndesaulniers@google.com, nathan@kernel.org, konrad.dybcio@linaro.org, conor+dt@kernel.org, baruch@tkos.co.il, robh+dt@kernel.org, linux-kernel@vger.kernel.org, trix@redhat.com, krzysztof.kozlowski+dt@linaro.org, llvm@lists.linux.dev
In-Reply-To: <20230925065915.3467964-3-quic_devipriy@quicinc.com>
References: <20230925065915.3467964-1-quic_devipriy@quicinc.com>
 <20230925065915.3467964-3-quic_devipriy@quicinc.com>
Message-Id: <169562679800.286677.6236841313565579111.robh@kernel.org>
Subject: Re: [PATCH V12 2/3] dt-bindings: pwm: add IPQ6018 binding
Date: Mon, 25 Sep 2023 02:26:38 -0500


On Mon, 25 Sep 2023 12:29:14 +0530, Devi Priya wrote:
> DT binding for the PWM block in Qualcomm IPQ6018 SoC.
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
> v12:
> 
>   Picked up the R-b tag
> 
> v11:
> 
>   No change
> 
> v10:
> 
>   No change
> 
> v9:
> 
>   Add 'ranges' property to example (Rob)
> 
>   Drop label in example (Rob)
> 
> v8:
> 
>   Add size cell to 'reg' (Rob)
> 
> v7:
> 
>   Use 'reg' instead of 'offset' (Rob)
> 
>   Drop 'clock-names' and 'assigned-clock*' (Bjorn)
> 
>   Use single cell address/size in example node (Bjorn)
> 
>   Move '#pwm-cells' lower in example node (Bjorn)
> 
>   List 'reg' as required
> 
> v6:
> 
>   Device node is child of TCSR; remove phandle (Rob Herring)
> 
>   Add assigned-clocks/assigned-clock-rates (Uwe Kleine-König)
> 
> v5: Use qcom,pwm-regs for phandle instead of direct regs (Bjorn
>     Andersson, Kathiravan T)
> 
> v4: Update the binding example node as well (Rob Herring's bot)
> 
> v3: s/qcom,pwm-ipq6018/qcom,ipq6018-pwm/ (Rob Herring)
> 
> v2: Make #pwm-cells const (Rob Herring)
> 
>  .../devicetree/bindings/pwm/ipq-pwm.yaml      | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/ipq-pwm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pwm/ipq-pwm.example.dtb: syscon@1937000: compatible: ['qcom,tcsr-ipq6018', 'syscon', 'simple-mfd'] is too long
	from schema $id: http://devicetree.org/schemas/mfd/qcom,tcsr.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pwm/ipq-pwm.example.dtb: syscon@1937000: '#address-cells', '#size-cells', 'pwm@a010', 'ranges' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/qcom,tcsr.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230925065915.3467964-3-quic_devipriy@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


