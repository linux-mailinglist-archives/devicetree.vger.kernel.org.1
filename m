Return-Path: <devicetree+bounces-1501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD727A6B57
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 21:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BF531C2082C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A6F28E16;
	Tue, 19 Sep 2023 19:17:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78548BE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 19:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4E07C433C8;
	Tue, 19 Sep 2023 19:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695151064;
	bh=ebjAjtM0augVTdmL4SjqfI+x/1ojv/CTauE35eGA8Pg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=chfSUdX4YrcFga2P5HeNsgBGIoP5Mqcv+nEQK/fhk7hO86e0YwFJrrLYPTU1yXYu9
	 aQ/cY6fJqckwoMxTZIv0GHf6FhCrIfB2bWYHknQ32FV4FZecSUNaPuLdRutbo6AUbP
	 TmQU4oc1u4bmbojONBCy+jZ+3nezy4Gu0YKRNqNUsw+AzYxKPH2d7i7FdjvU4PrUBC
	 1gMbTDNXU1vf42R6gbfDolf+jQjI9LQkKtk4JR8zhYPUFD/kuggQe2yXD+NdiaawFU
	 O5NFQcQZ3yOgI6FZyHejheJiLXwcidS+cPq/xmGoLYnmWOeaom+90lqvBhWxOK80b3
	 nPieriSiDsxsw==
Received: (nullmailer pid 51062 invoked by uid 1000);
	Tue, 19 Sep 2023 19:17:42 -0000
Date: Tue, 19 Sep 2023 14:17:42 -0500
From: Rob Herring <robh@kernel.org>
To: Tzuyi Chang <tychang@realtek.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v3 7/7] dt-bindings: pinctrl: realtek: add RTD1619B
 pinctrl binding
Message-ID: <169515106224.50995.5876042785043035967.robh@kernel.org>
References: <20230919101117.4097-1-tychang@realtek.com>
 <20230919101117.4097-8-tychang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919101117.4097-8-tychang@realtek.com>


On Tue, 19 Sep 2023 18:11:17 +0800, Tzuyi Chang wrote:
> Add device tree bindings for RTD1619B.
> 
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> v2 to v3 change:
>     1. Use '-pins$' to be node name pattern.
>     2. Remove if/then condition under the patternProperties
>        "-pins$".
> v1 to v2 change:
>     1. Add a description for RTD1619B.
>     2. Rename realtek,pdrive, realtekmndrive and realtek,dcycle.
>     3. Add a description for PMOS and NMOS driving strength.
>     4. Remove the wildcard in the compatible strings.
>     5. Use '-pins$' to be node name pattern.
> ---
>  .../pinctrl/realtek,rtd1619b-pinctrl.yaml     | 186 ++++++++++++++++++
>  1 file changed, 186 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/realtek,rtd1619b-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


