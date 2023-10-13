Return-Path: <devicetree+bounces-8460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF30E7C8415
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CE0C1C209C8
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBEA0134B0;
	Fri, 13 Oct 2023 11:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MACYzMfx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CCB11720
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:09:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E240C433C8;
	Fri, 13 Oct 2023 11:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697195350;
	bh=le+2qGTCU1t+l8JNaHTYW0wqbcQZU/JZA582Ub2H9/k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MACYzMfx8sEglf6T2OY6eGNLR1drRbk8bdeU/kbbWrplHpJ9NJMOH6ttGFxieOfvv
	 SHW1iFesy7aWFZoUMynFWQEXzBVmDToN8Ed3nb8e+CazabhuG1aobve+21TepOZGzL
	 uUu0wxEsufiaEGoh6P2LTajcrkQstcK2GhG5Jc4uaqGNy0NDQJf9OX+segg61sdzkf
	 61yhkNV0oBEx4ORnuPAstcJplM+vgPLq4zwYSxtVpM4uv/UnN6pRcy8mFzws5ZGLxx
	 D6X7KS1UGsEi4nS+faaHIfKcTq3TK2BuEkaEVffH+SjOqgdi+7pOCYNl6ldcI1yFX6
	 suIETj7z8anQg==
Received: (nullmailer pid 3388714 invoked by uid 1000);
	Fri, 13 Oct 2023 11:09:08 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, michal.simek@amd.com, linux-arm-kernel@lists.infradead.org, srinivas.kandagatla@linaro.org
In-Reply-To: <20231013101450.573-3-praveen.teja.kundanala@amd.com>
References: <20231013101450.573-1-praveen.teja.kundanala@amd.com>
 <20231013101450.573-3-praveen.teja.kundanala@amd.com>
Message-Id: <169719534802.3388697.15453927606673268163.robh@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: nvmem: Convert xlnx,zynqmp-nvmem.txt
 to yaml
Date: Fri, 13 Oct 2023 06:09:08 -0500


On Fri, 13 Oct 2023 15:44:47 +0530, Praveen Teja Kundanala wrote:
> Convert the xlnx,zynqmp-nvmem.txt to yaml.
> 
> Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
> ---
>  .../bindings/nvmem/xlnx,zynqmp-nvmem.txt      | 46 ---------------
>  .../bindings/nvmem/xlnx,zynqmp-nvmem.yaml     | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 46 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml:18:11: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231013101450.573-3-praveen.teja.kundanala@amd.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


