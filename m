Return-Path: <devicetree+bounces-7116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A677BF407
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DB21281B29
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 07:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF30C8EE;
	Tue, 10 Oct 2023 07:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0kX3vIC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8193F291D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 07:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5955CC433C9;
	Tue, 10 Oct 2023 07:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696922569;
	bh=HdveOZcCi6fbx2k3SXgqy9feZFP15W5KsiQ52J4+Hl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P0kX3vICr8l+I3vZqvv2Rw5r6agrRkILfihq9evNZ2MXgUs5DcLz0PTcWivxYskBj
	 WrTtur4NQUJ4G6GYtQMKJEx4/gduo/bWcr7spDibbRdwZNWj0JJx3FcOHrP/s+STE9
	 BZEKEC/lb7l8Om6t47ujTuLFJsGcS8f0gfnjj2r6zPXJ56JH0bI5g7haNxuGU98Ban
	 NdA88UPAsUeCQNnD8YYnbESvt1p43n6XJ+lOuwEhXIXCkEb0+8JjB2r/9Kdkx755R1
	 NCuVfXkyKG5+n0Vsi4ipckAsUSnO7LefkHR4+j2OIrXMSX1/A2hQ3iMbzOZdR0q2b1
	 OUtEBWgVpsuyQ==
Received: (nullmailer pid 4170099 invoked by uid 1000);
	Tue, 10 Oct 2023 07:22:47 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-clk@vger.kernel.org, Chuan Liu <chuan.liu@amlogic.com>, linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20231010062917.3624223-2-xianwei.zhao@amlogic.com>
References: <20231010062917.3624223-1-xianwei.zhao@amlogic.com>
 <20231010062917.3624223-2-xianwei.zhao@amlogic.com>
Message-Id: <169692256667.4170036.13538067012213224006.robh@kernel.org>
Subject: Re: [PATCH V2 1/4] dt-bindings: clock: add Amlogic C3 PLL clock
 controller bindings
Date: Tue, 10 Oct 2023 02:22:47 -0500


On Tue, 10 Oct 2023 14:29:14 +0800, Xianwei Zhao wrote:
> Add the C3 PLL clock controller dt-bindings for Amlogic C3 SoC family
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> V1 -> V2: Fix errors when check dtbinding use "make dt_binding_check"
> ---
>  .../bindings/clock/amlogic,c3-pll-clkc.yaml   | 59 +++++++++++++++++++
>  .../dt-bindings/clock/amlogic,c3-pll-clkc.h   | 42 +++++++++++++
>  2 files changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,c3-pll-clkc.h
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.example.dts:18:18: fatal error: dt-bindings/clock/amlogic,c3-peripherals-clkc.h: No such file or directory
   18 |         #include <dt-bindings/clock/amlogic,c3-peripherals-clkc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231010062917.3624223-2-xianwei.zhao@amlogic.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


