Return-Path: <devicetree+bounces-4311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 913AB7B2005
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:47:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9FD991C20A3B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E013FB3C;
	Thu, 28 Sep 2023 14:47:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46073FB33
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:47:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ACCFC433C9;
	Thu, 28 Sep 2023 14:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912445;
	bh=9utg3AtOlgvU+dD8ZuBn4ETN3zDDvdFefT2/CLiMqY0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=m4T6xNag9RC/mJ1OD13Oj50LYwU3n6aBKwCnuhNNTpPQSss2vLM9acUfbPis8iaDI
	 FpGBH6K777L59GMJChlYWsH2xRuX5Rqga2tRacTKDfNljyCmNKP/6vYgSDMKah+tV4
	 qxezf4CQ9cGIL4Epg/BehIeD2iGzi95y7NhkCJtnp1e1RHKo9qOp2HTMxrfUSqbcyT
	 hpyY4FhzSiwQZ9rMxQqpzAt5h/PezxqhJI3YOsWKiSPeo2srooRCCSy/Dx5wYAn339
	 pVY6YPj9zpK43ZGe0c5wBkjInn5o60ULsAGpv3rHbUVsno1G8HNajpSSk0Uit1K3s0
	 M6QQ90TfI7gWA==
Received: (nullmailer pid 408732 invoked by uid 1000);
	Thu, 28 Sep 2023 14:47:11 -0000
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-clk@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230928063448.3544464-2-xianwei.zhao@amlogic.com>
References: <20230928063448.3544464-1-xianwei.zhao@amlogic.com>
 <20230928063448.3544464-2-xianwei.zhao@amlogic.com>
Message-Id: <169591240751.408219.17789737380283170194.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: clock: add Amlogic C3 PLL clock
 controller bindings
Date: Thu, 28 Sep 2023 09:47:11 -0500


On Thu, 28 Sep 2023 14:34:45 +0800, Xianwei Zhao wrote:
> Add the C3 PLL clock controller dt-bindings for Amlogic C3 SoC family
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>  .../bindings/clock/amlogic,c3-pll-clkc.yaml   | 53 +++++++++++++++++++
>  .../dt-bindings/clock/amlogic,c3-pll-clkc.h   | 42 +++++++++++++++
>  2 files changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,c3-pll-clkc.h
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml:2:1: [error] missing document start "---" (document-start)
./Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml:50:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.example.dts'
Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml:4:1: but found another document
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml:4:1: but found another document
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/clock/amlogic,c3-pll-clkc.yaml: Documentation/devicetree/bindings/clock/amlogic,s4-pll-clkc.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230928063448.3544464-2-xianwei.zhao@amlogic.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


