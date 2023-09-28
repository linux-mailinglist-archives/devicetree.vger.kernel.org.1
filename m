Return-Path: <devicetree+bounces-4359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E02D7B224E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 31217281BFF
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAFD651228;
	Thu, 28 Sep 2023 16:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74783C6BE
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A15C433C8;
	Thu, 28 Sep 2023 16:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695918555;
	bh=LG+moJvLbepueQzWQQecSwms6HjXEU/1gKFwfkORCTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ouERZ/MprezX3a5c9ZZTjxPB9BLKv1tLho8yqQpBMqsMzMWRz0B4CIdMajfvsmgFB
	 LxmJuqTfegmUH3a3wkWcG+NUR3YOdX6FZcWHNtIvZn11z4XbdcFEBuiWYPMLHleWrK
	 XIcOJQkB0VhqWE02X/LBIZSDa3CBgQjLKZ35XoD7DXVXh9IvzEHx0jVHcMDyTJNwNa
	 2MP5vAoPmI9Wvjc+16LAt6/x3imPZ4wih39MQw+2pPsJTEntU5pRcax9AG+9ZRdGIg
	 ji/Povq0mb9W4jHO/gHapz+oSIZOHADJkgoNsgtJYgl9nlxok7GoRx8qhMeUFb52XJ
	 jxQlWNHGz7Hcw==
Received: (nullmailer pid 815154 invoked by uid 1000);
	Thu, 28 Sep 2023 16:29:12 -0000
Date: Thu, 28 Sep 2023 11:29:12 -0500
From: Rob Herring <robh@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>, Andy Shevchenko <andy@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Bartosz Golaszewski <brgl@bgdev.pl>, Marco Felsch <m.felsch@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-gpio@vger.kernel.org, Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: gpio: vf610: correct i.MX8ULP and
 i.MX93
Message-ID: <169591855248.815095.5147614277877224854.robh@kernel.org>
References: <20230926-vf610-gpio-v4-0-b57b7f6e8368@nxp.com>
 <20230926-vf610-gpio-v4-2-b57b7f6e8368@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926-vf610-gpio-v4-2-b57b7f6e8368@nxp.com>


On Tue, 26 Sep 2023 11:33:18 +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8ULP and i.MX93 actually has two interrupts for each gpio
> controller, one for Trustzone non-secure world, one for secure world.
> 
> And they has one register based, not two as i.MX7ULP or VF610.
> 
> Although the Linux Kernel driver gpio-vf610.c could work with
> fsl,imx7ulp-gpio compatible, it is based on some tricks did in
> device tree with some offset added to base address.
> 
> So actually i.MX8ULP/i.MX93 is not compatible with i.MX7ULP.
> 
> Last, i.MX93 is directly derived from i.MX8ULP, so make i.MX93 GPIO
> compatible with i.MX8ULP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/gpio/gpio-vf610.yaml       | 36 +++++++++++++++++++---
>  1 file changed, 31 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


