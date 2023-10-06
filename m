Return-Path: <devicetree+bounces-6499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4FC7BB8E2
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 620EF1C209A1
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 13:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA7B20B12;
	Fri,  6 Oct 2023 13:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUL+Mg0D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB391D55B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 13:18:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4F85C433C7;
	Fri,  6 Oct 2023 13:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696598326;
	bh=t5ARPJAi2ZOUMZALtc2xCSh/huEsxLMt7Ehm+RTiBAs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dUL+Mg0D3X2BTRDPZgGw1VyWx9Kz+W5i+mUkXP8CH+bQZvKxeJC7wl4Q4KDjN18uP
	 ZsEaOuI7Mq/P4sho67CCeoTs85GApeQM89Jhljx4hsmChrXsWx0GGduVbsUgZsaCTC
	 JhexH+gAwpBSlLHgAD+y+Yh31/ruLPrhhtF/CftYqMs4+q4c2x1rkWBLm92a7K69qN
	 8PCBaOcV6s4YbzWNyl6pPaRTsNPb+aJhVfy+7Gz1dJNjriYHpCLAL4HpRxiYdk+EUI
	 5yjM2wjYoraeHpRZAkK4G4tS9w2EoNWTCsXtndVWCLlGiodoZlz3gIHftFKZn90sjV
	 yORXNHAEfB6Sw==
Received: (nullmailer pid 3410056 invoked by uid 1000);
	Fri, 06 Oct 2023 13:18:43 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: robh+dt@kernel.org,
 linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org,
 Oleksii_Moisieiev@epam.com,
 devicetree@vger.kernel.org,
 sudeep.holla@arm.com,
 krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org,
 cristian.marussi@arm.com
In-Reply-To: <20231005025843.508689-6-takahiro.akashi@linaro.org>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org>
Message-Id: <169659832273.3409847.15694416126257533842.robh@kernel.org>
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Date: Fri, 06 Oct 2023 08:18:43 -0500


On Thu, 05 Oct 2023 11:58:43 +0900, AKASHI Takahiro wrote:
> A dt binding for pin controller based generic gpio driver is defined in
> this commit. One usable device is Arm's SCMI.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> ---
> RFC v2 (Oct 5, 2023)
> * rename the binding to pin-control-gpio
> * add the "description"
> * remove nodename, hog properties, and a consumer example
> RFC (Oct 2, 2023)
> ---
>  .../bindings/gpio/pin-control-gpio.yaml       | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/gpio/pin-control-gpio.example.dts:18.23-26.11: Warning (unit_address_vs_reg): /example-0/gpio@0: node has a unit name, but no reg or ranges property

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231005025843.508689-6-takahiro.akashi@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


