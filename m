Return-Path: <devicetree+bounces-5000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B687B4AE6
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 05:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 68CD42814EF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 03:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4497E3;
	Mon,  2 Oct 2023 03:26:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9491651
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2662DC433C8;
	Mon,  2 Oct 2023 03:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696217160;
	bh=umloP2u3BJXv1acMbzuV5GBFTBo+KeGBE1l6rpSfUeM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=u2NmWl0nM6Ihm3xQ6tQjXnrZrtSv2wHtRKftlfOGdvGA3/ycoKXKG7jvwJ1ow9F3D
	 Serd7VIa38vz+CjFwGuj8YZTuBu/S4WNSRL4VxeD09evxEGc3mOWtaA311ZKqjwb3L
	 up83tQK2CuPHPtCGIU8lXQmEdSWT8SlOUOrlC+oWUuXqAHm3YTnUJMVIOUN8FRa/X0
	 WxgSvPNHrDoN/33O7DXSMsN/IxVZjslyLUtriuerQ0ficJglLNX2uOtv+DawVHkS13
	 hwBZdZmiFlu3U1Uy1swgEPuriHz8jtwtMsiiJc86O1XrphDf2e3HvsTs7a/mjS9eAv
	 q9Z5A0Q/XjAFw==
Received: (nullmailer pid 690411 invoked by uid 1000);
	Mon, 02 Oct 2023 03:25:58 -0000
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
Cc: Oleksii_Moisieiev@epam.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linus.walleij@linaro.org, cristian.marussi@arm.com, sudeep.holla@arm.com, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, conor+dt@kernel.org, robh+dt@kernel.org
In-Reply-To: <20231002021602.260100-5-takahiro.akashi@linaro.org>
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-5-takahiro.akashi@linaro.org>
Message-Id: <169621715805.690395.8010550700107076644.robh@kernel.org>
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl
 based gpio
Date: Sun, 01 Oct 2023 22:25:58 -0500


On Mon, 02 Oct 2023 11:16:02 +0900, AKASHI Takahiro wrote:
> A dt binding for SCMI pinctrl based gpio driver is defined in this
> commit. It basically conforms to generic pinctrl-gpio mapping framework.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> ---
>  .../bindings/gpio/arm,scmi-gpio.yaml          | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/gpio/arm,scmi-gpio.example.dts:20.34-28.11: Warning (unit_address_vs_reg): /example-0/scmi_gpio@0: node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/gpio/arm,scmi-gpio.example.dtb: /example-0/scmi_gpio@0: failed to match any schema with compatible: ['arm,scmi-gpio']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231002021602.260100-5-takahiro.akashi@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


