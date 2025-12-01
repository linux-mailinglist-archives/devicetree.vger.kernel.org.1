Return-Path: <devicetree+bounces-243254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF44DC95FA9
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 08:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E328D3A225E
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 07:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DAA296BBB;
	Mon,  1 Dec 2025 07:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p160IBuU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AAB2376E4;
	Mon,  1 Dec 2025 07:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764573492; cv=none; b=al8FJGtDs8mkukFHK4ANXpyMUfI+6YxVF/psU8LARtSm0dGy+LTT3MVIUaGDKleZlQS2JrShGEBLOWhNB/4RoaJfxm2lUjVm0GK77kj/DZcaZ0vcDYUKCr7U8KTARQ6d+tRfoDpMHYXdxNUjGyReK5n10XvV84p7+eqO0zS5KUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764573492; c=relaxed/simple;
	bh=RzxGFcvxFV4g+bm1hI2rm4ioGn9DwOOl+ULt5zaZWbg=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=UglkhqozHuBOZpT15O3EPOs3WAKQsuVPWYLePmL4gkbDQ8Bn0JoM5uXYPree4Rq5avejbgewTDnBNMu4Qbl2pG1UY+Q+oL9ww6wW38Srb+iaghLTB3NwafU4Rt2W4QqSGOUqk+7/HXzocIwUp2NDIwniP+3CpdqFmxMUC2MKRQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p160IBuU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C69E6C4CEF1;
	Mon,  1 Dec 2025 07:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764573492;
	bh=RzxGFcvxFV4g+bm1hI2rm4ioGn9DwOOl+ULt5zaZWbg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=p160IBuUI4c97YRSN9YP6dLyCnKl5lRWXGLgkY8ydzBPFbWGxyGequeRn1Co06rsH
	 git4SmXd1q265nPEm8SBTpNlEQ5t+Jf6rwxt6io9xLsjBXGXprOt7rq9PhujbGXQw7
	 01IThcjwYCJMPJtGtsJFwTnJ6YIwSq9jnY2hXlpMfF7Ok6CDv27hVA/Y7dLTJyQd21
	 viJgkmIyklQNyk1t6C3WFOq4rSvZ/XyV16nc4YKbpnc/K+dogRyKpzr0USMLFDY31L
	 k32RBInR6MDe3yYjX13e5Hxmoxr+0qHXgSqQx6Vt3S1YUDSLNz5RahKHUGvRANyvNg
	 AiE9dIU5jMcoQ==
Date: Mon, 01 Dec 2025 01:18:10 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linmin@eswincomputing.com, lianghujun@eswincomputing.com, 
 vkoul@kernel.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, kishon@kernel.org, 
 conor+dt@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 zhengyu@eswincomputing.com, huangyifeng@eswincomputing.com, 
 linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
 ningyu@eswincomputing.com, fenglin@eswincomputing.com
To: Yulin Lu <luyulin@eswincomputing.com>
In-Reply-To: <20251201061000.488-1-luyulin@eswincomputing.com>
References: <20251201060737.868-1-luyulin@eswincomputing.com>
 <20251201061000.488-1-luyulin@eswincomputing.com>
Message-Id: <176457349023.2265004.4610408030407592182.robh@kernel.org>
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: eswin: Document the EIC7700
 SoC SATA PHY


On Mon, 01 Dec 2025 14:10:00 +0800, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201061000.488-1-luyulin@eswincomputing.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


