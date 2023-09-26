Return-Path: <devicetree+bounces-3580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942C7AF54F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 43CF7B20C21
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B0C125C3;
	Tue, 26 Sep 2023 20:37:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82127125B4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:37:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35521C433C7;
	Tue, 26 Sep 2023 20:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695760630;
	bh=isiCWq7kNpAgGUuwdR4QUnntDfYvQNVLVhuiWQj6Pxk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZlgzqpD2NaRV6M7aQtH/FmuoImG9Wu/Qg1ut7Pfi5hU4yLrsK18SRl/1dw/FLIGqD
	 EMyLo56YAYouj1iPurI0ZNYhFcL27H54KKlNaXtRfZ3fLFHSTutrpX19ZRSnnMeOjv
	 yQ7MPp7cH3hzAOQAIWipgvfxX6enD+BmiXyfx2A5i9V7YwjtDRSVDpfvMGe76OHZwy
	 V/Z8xhlCZMkhZDCr/iQLvkj6w40q/kBAnpXPgphov6Oau9jzFf3TPCTwuzsLVEnlXz
	 ivHS9pwNsjdEabX2TuyWHZ1lgMBtIryueWEYOan4dUAxkUEXcxzW7sc55cHHaLRRyA
	 OX6RukSEy762w==
Received: (nullmailer pid 534509 invoked by uid 1000);
	Tue, 26 Sep 2023 20:37:07 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Cc: Rob Herring <robh+dt@kernel.org>, Lino Sanfilippo <l.sanfilippo@kunbus.com>, linux-integrity@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <ae40859b82494d75e9ad7bf616b3264138ad1f6a.1695754856.git.lukas@wunner.de>
References: <ae40859b82494d75e9ad7bf616b3264138ad1f6a.1695754856.git.lukas@wunner.de>
Message-Id: <169576062741.534473.12201606598910537660.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: reset: Add Infineon SLB9670 TPM reset
 driver
Date: Tue, 26 Sep 2023 15:37:07 -0500


On Tue, 26 Sep 2023 21:09:35 +0200, Lukas Wunner wrote:
> A new reset driver is about to be added to perform the reset sequence of
> the Infineon SLB9670 Trusted Platform Module.
> 
> Document its device tree bindings.
> 
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> ---
>  .../bindings/reset/infineon,slb9670-reset.yaml     | 68 ++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/infineon,slb9670-reset.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/reset/infineon,slb9670-reset.yaml:29:111: [warning] line too long (124 > 110 characters) (line-length)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/reset/infineon,slb9670-reset.example.dtb: /example-0/spi/tpm@0: failed to match any schema with compatible: ['infineon,slb9670']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/ae40859b82494d75e9ad7bf616b3264138ad1f6a.1695754856.git.lukas@wunner.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


