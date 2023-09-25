Return-Path: <devicetree+bounces-3234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 747097ADCFD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:25:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1B1BA281B3C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8B921A19;
	Mon, 25 Sep 2023 16:25:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB421115
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:25:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0251C433C8;
	Mon, 25 Sep 2023 16:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695659111;
	bh=k44ZVpNI7Cq7j38SfPe5poWW99evd2e78ncnRvDGIGU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SCG1NXeKouPC7336hAAj5rxp1TD7jepacPz8lMaAcry8WDFMqziGPKh/bUQ28hBp6
	 qNOCEHGkT3HPYNlYR3gTKZeUFUWSUZfxxCgJArLTWYaFhyUh5/RuggBQtmN3MlJ/eO
	 DboMVh5/khCO0nd2dkpHvW3m1Uf71ZhJcK6S9TEqSZaiXjPnsZgs+1yRTKaitbT5R/
	 EH4OZOdE8YPGlR67hxEJRkk5Ka+iECOOncmTo3OG4m9WPPgMFPJvMUUlUgKwPvom7A
	 v845EvVBo4i2h3lPEBvJiCO1bAxGXY54U1cfP3HhbwuXmZ8FMC9xAq1rdzlltRkRuf
	 7uEpdd45B9eDQ==
Received: (nullmailer pid 1468913 invoked by uid 1000);
	Mon, 25 Sep 2023 16:25:09 -0000
Date: Mon, 25 Sep 2023 11:25:09 -0500
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jeff LaBundy <jeff@labundy.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: input: touchscreen: goodix: clarify
 irq-gpios misleading text
Message-ID: <169565910910.1468857.379234431707593994.robh@kernel.org>
References: <20230925032208.11698-1-luca.ceresoli@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925032208.11698-1-luca.ceresoli@bootlin.com>


On Mon, 25 Sep 2023 05:22:08 +0200, Luca Ceresoli wrote:
> The irq-gpios description misleading, apparently saying that driving the
> IRQ GPIO resets the device, which is even more puzzling as there is a reset
> GPIO as well.
> 
> In reality the IRQ pin can be driven during the reset sequence to configure
> the client address, as it becomes clear after checking both the datasheet
> and the driver code. Improve the text to clarify that.
> 
> Also rephrase to remove reference to the driver, which is not appropriate
> in the bindings.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> ---
> 
> Changed in v2:
>  - reworded to clarify even further
> ---
>  .../devicetree/bindings/input/touchscreen/goodix.yaml        | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


