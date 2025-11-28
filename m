Return-Path: <devicetree+bounces-243023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A335C928F5
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 17:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 31AB434704C
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9632261B70;
	Fri, 28 Nov 2025 16:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brGHbkxx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6707D07D;
	Fri, 28 Nov 2025 16:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764346766; cv=none; b=sXhcmEc/qYQdxSBg/Z1+YzM8igHZxeJIQ0PvOyBWv7xqsF20oGPdlzEW/m1dvRmRwgM19znPBuS11yr+8nICGVFgw6gVQ+NhcEPHhg+dAsZlpCG2JpWVr98ZZzNZGAHRaBZolk9p56ZhtMYo3aV/F9NSwLSKNB75TxM3397zsXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764346766; c=relaxed/simple;
	bh=fNpIJptsLgSqgMEWGMcj7vU1VfVYIyNLp5BnDPyA+TE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=SlM4rB/D+IV6gDYefhZjVgcAAthtq1ZxjaX54Rl7X8K4NllXdEvSuzE1gXJ1c2auTzYAONQ8kZk/tdgpUJeUub2v3YTV7sACmj6kdE2FgzQ2BCml9FalKMO1bf14KBmqU1fBxMpEN7ZV9RmJ6xMjogXTBg/CzROC3n22s7u11hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brGHbkxx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1BAAC4CEF1;
	Fri, 28 Nov 2025 16:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764346766;
	bh=fNpIJptsLgSqgMEWGMcj7vU1VfVYIyNLp5BnDPyA+TE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=brGHbkxxx1SqzAQtApuXiEqQXiZQfFGWaD9ZMegNVAZprwd3IiDdGR1mieRAHs4oH
	 Slqq9T6eH8kqvKPrRIyuO1WZDmk2Qf3X/fRgCyCV2KiEHosszu6v2SH3nV6c64SBCp
	 dz52YP+fg2YHA4s4A5jOBRzziiatocct7nBQrkjt0c9ETCkAON8cMpCXoagCxQYaa0
	 xvHE66l+BDtI3D9TlfTj3H/97n7YBTTYBxorqi+ahMvKsSoLbet2nFNiHRvRJ6Fu2l
	 xhQNyvEAIwCY5J8szTJcQ27qdaCEybSWT3yG83fR2Oe7e5veWpnMdmQNssQQgUYjuF
	 oB4dzTYdz7JwQ==
Date: Fri, 28 Nov 2025 10:19:24 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
In-Reply-To: <20251128144627.24910-2-antoniu.miclaus@analog.com>
References: <20251128144627.24910-1-antoniu.miclaus@analog.com>
 <20251128144627.24910-2-antoniu.miclaus@analog.com>
Message-Id: <176434676315.2173764.11206021200019707175.robh@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: switch: adg1712: add ADG1712 SPST
 switch binding


On Fri, 28 Nov 2025 16:46:13 +0200, Antoniu Miclaus wrote:
> Add devicetree bindings for the ADG1712 quad SPST switch.
> 
> The ADG1712 contains four independent single-pole, single-throw (SPST)
> switches, each controlled by a dedicated GPIO pin. While the device
> uses the existing gpio-mux driver infrastructure (as each switch can be
> modeled as a simple 2-state mux), a dedicated binding document is needed
> to provide clear documentation on how to properly represent the ADG1712
> in devicetree, following the pattern of one mux-controller node per
> independent switch.
> 
> The binding references the gpio-mux schema and demonstrates how each of
> the four independent switches should be instantiated as separate
> mux-controller nodes in the devicetree.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  .../bindings/switch/adi,adg1712.yaml          | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/switch/adi,adg1712.yaml
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251128144627.24910-2-antoniu.miclaus@analog.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


