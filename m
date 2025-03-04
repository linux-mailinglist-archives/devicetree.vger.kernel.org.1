Return-Path: <devicetree+bounces-153577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF72A4D20B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 04:24:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B99203AD97D
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 03:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8001C82866;
	Tue,  4 Mar 2025 03:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is6q4CGm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586C9BA2E
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 03:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741058684; cv=none; b=BdmqlCygUyWf2MfYj1Hlht6uLgh3x9kZLMeY0uqaY8T7tGXoIyAtvXV6ujPvfkYJ34gNR0/gtPRLDkICEcHsTZR3uGoZJp9z3n8vtTKZwpa2iLqIDWjBsg2sKl40BeJ4NZOJJfGACuaUoPswRpWRUrJpBdv1aTLa+uzSW846r/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741058684; c=relaxed/simple;
	bh=zPVdx1fQPP2x9Q4mt2d3e4nQ491s+/oWZWndKGSEY2g=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=naa96gnUJeeL2brTZr+OsdB6WPjF3a+s8Y+3OKfJIGDqze/lc0rYvCzmImbbJT9bhw13DUyYKcpq+4UyjxWo0wTcnD5+PD+Li+BPz5C9+KC9F1lS5SwiM9dqFUT3xOMdnHuqg5KPLc0Y4r7kujIIE5R2lklwntWRuM1okamKtow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is6q4CGm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E3AFC4CEE4;
	Tue,  4 Mar 2025 03:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741058683;
	bh=zPVdx1fQPP2x9Q4mt2d3e4nQ491s+/oWZWndKGSEY2g=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Is6q4CGmOu6R/T7R42SqJUCFZ+PEDPIamXKtGlm7rHSYdoB5fUQ09kV19nVSQLF8c
	 5UevK7LV8c4dyIEVAgpTnz6aDtcblVK4lpfPwO4FNLbIjtcSnY4QQ4PzEsmp3c+htV
	 iQUfrIHRbn8QpR6P9JLObBqvsmDrteFr9zi6AqOGNizVIr+sUiKufZ38uNQDDjcuaW
	 nnVSLBiMgcYG/FfIK5rQbRUN441uqvg2QGLeTmenHrLTuzOP/A9GS2wYD6kzwFv/Z4
	 N0GLHk0EEyv5XZenC3MRD6JjTKmNzQYV332PZpoozUV++zTon6Bo1OuuGXRkTUlnEl
	 yQr4Afd5lb45A==
Date: Mon, 03 Mar 2025 21:24:41 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: broonie@kernel.org, devicetree@vger.kernel.org, tiwai@suse.com, 
 amadeuszx.slawinski@linux.intel.com, alsa-devel@alsa-project.org
To: Zhang Yi <zhangyi@everest-semi.com>
In-Reply-To: <20250304014520.83292-3-zhangyi@everest-semi.com>
References: <20250304014520.83292-1-zhangyi@everest-semi.com>
 <20250304014520.83292-3-zhangyi@everest-semi.com>
Message-Id: <174105868195.540562.12665161671260028240.robh@kernel.org>
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: Add Everest ES8389 audio
 CODEC


On Tue, 04 Mar 2025 09:45:20 +0800, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/everest,es8389.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sound/everest,es8389.example.dts:20.11-24: Warning (reg_format): /example-0/es8389@10:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/sound/everest,es8389.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/everest,es8389.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/everest,es8389.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/everest,es8389.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/everest,es8389.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250304014520.83292-3-zhangyi@everest-semi.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


