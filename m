Return-Path: <devicetree+bounces-7117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD787BF40A
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14DE6281CF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 07:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49ADED295;
	Tue, 10 Oct 2023 07:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpBLS3o2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A294291D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 07:22:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B24C8C433C7;
	Tue, 10 Oct 2023 07:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696922572;
	bh=aWLkWwYvRoHDbQn1SUD7QtMlHzJiUwMZf8YceHldzlw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PpBLS3o2g4lbJj4LYKgq7hMrOkNwiWJTHHVM/JfaJFglREZMu5E1zGqg+id37jzPm
	 9EWwr5kZsuGNATC5rSvMWrt9ZHqKc+bABI2Wta0co0DFXUXe6UE99v3veP/60PQVR8
	 Mg/RgNLSOGUSWoa5kbeLET6m4J4bMFvKYN6WCgf+VuIg8FE/oh/N6I5vaMz8oBB9ox
	 LzS1bIG3yFVbvIimf8JBzFRVdSFknHpfvyDVWtgFJeFIUhxOk9xRWdOjHXqxGdgIRw
	 ELKNASR4Rn4uMC0AUALPheo+8SRGBXLvAbfGTnjB0ywDupPk434t/iqOtODpCdrZcw
	 Ca0jQ3uJAaZSw==
Received: (nullmailer pid 4170102 invoked by uid 1000);
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
Cc: Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, Chuan Liu <chuan.liu@amlogic.com>, linux-arm-kernel@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20231010062917.3624223-3-xianwei.zhao@amlogic.com>
References: <20231010062917.3624223-1-xianwei.zhao@amlogic.com>
 <20231010062917.3624223-3-xianwei.zhao@amlogic.com>
Message-Id: <169692256724.4170065.17606508498612532069.robh@kernel.org>
Subject: Re: [PATCH V2 2/4] dt-bindings: clock: add Amlogic C3 peripherals
 clock controller bindings
Date: Tue, 10 Oct 2023 02:22:47 -0500


On Tue, 10 Oct 2023 14:29:15 +0800, Xianwei Zhao wrote:
> Add the peripherals clock controller dt-bindings for Amlogic C3 SoC family
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> V1 -> V2: Fix errors when check binding use "make dt_binding_check"
> ---
>  .../clock/amlogic,c3-peripherals-clkc.yaml    |  92 +++++++
>  .../clock/amlogic,c3-peripherals-clkc.h       | 230 ++++++++++++++++++
>  2 files changed, 322 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,c3-peripherals-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,c3-peripherals-clkc.h
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/clock/amlogic,c3-peripherals-clkc.example.dts:18:18: fatal error: dt-bindings/clock/amlogic,c3-pll-clkc.h: No such file or directory
   18 |         #include <dt-bindings/clock/amlogic,c3-pll-clkc.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/clock/amlogic,c3-peripherals-clkc.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231010062917.3624223-3-xianwei.zhao@amlogic.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


