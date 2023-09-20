Return-Path: <devicetree+bounces-1918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 663057A8F77
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 00:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20351282075
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 22:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CAB03F4AD;
	Wed, 20 Sep 2023 22:33:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6D523CF
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 22:33:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E143C433CC;
	Wed, 20 Sep 2023 22:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695249189;
	bh=SBThQbOMOMdYmyDrdiY4+dScgD2UaJ6Jd/k2Lspawco=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uOk2QfJTBwQDO+Hv2Hn3QAXr/yVpQ9Mklh4At1SracF88uIUlVaZVZnpQeAz3F2wX
	 HFKXu5ZOvVj49fbD/n++FrtR3JQ8t7AF5+9QV75HrhB3oH9TxnXg9WCiNEFZvZL97I
	 MIYKOXv1zU4lqw/sHcXBderrAwdQYWLq3aF3p4mWzJiAAx6kLVbR/gezIT1iEfTdi6
	 oAKIRAipLXWtar8tSCbX/2Cc5iyTAK9hQbJZ9iQtWpZfUhelilA2K1PU5ygLkZMhbC
	 svL8G+8aLdHXeAogiW1WUhZUzs3ZNmX8K/xEFe97mzaYHU8/oOhcvXBbCI2GMsSBYF
	 xlBz+uD+KMzSw==
Received: (nullmailer pid 3103973 invoked by uid 1000);
	Wed, 20 Sep 2023 22:33:04 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>, Robert Foss <rfoss@kernel.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Jonas Karlman <jonas@kwiboo.se>, patchwork-lst@pengutronix.de, devicetree@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>, Sandor Yu <sandor.yu@nxp.com>, Adam Ford <aford173@gmail.com>, Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Richard Leitner <richard.leitner@skidata.com>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Neil Armstrong <neil.armstrong@linaro.org>, Pengutronix Kernel Team <kernel@pengutronix.de>
In-Reply-To: <20230920171009.3193296-1-l.stach@pengutronix.de>
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
Message-Id: <169524918454.3103954.3587892243903347971.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI PVI
Date: Wed, 20 Sep 2023 17:33:04 -0500


On Wed, 20 Sep 2023 19:10:08 +0200, Lucas Stach wrote:
> Add binding for the i.MX8MP HDMI parallel video interface block.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.example.dtb: display-bridge@32fc4000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pvi.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230920171009.3193296-1-l.stach@pengutronix.de

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


