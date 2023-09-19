Return-Path: <devicetree+bounces-1499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C317A6B4F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 21:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A6B31C20321
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB1C428E0E;
	Tue, 19 Sep 2023 19:16:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1828BE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 19:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFD35C433C7;
	Tue, 19 Sep 2023 19:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695150982;
	bh=2dBJWJKc/+JVACFXll4TLB57G7St3eiReB7MSo203Z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b5WMLzdip741vVec0WAqJHL8yELft+IipaDXxYgVLl4ePuOcrSi6XesHpHH7W1SeF
	 /RE7zN0GC5ebjfIZYQK9lJ4DKx3XZEUYnBL9j3AQzN90FkPVvt9h+NDoYsF5PXqQfi
	 p4NNO04JCbSxPQE17t56I1C/J3CqkBq1p69d5pF8Dnzfpv3Sxuuvw6v6SQcXtdZ9CG
	 QuIU7aNY+tTXRDuLKUpKJndgdhi2cY5HpYWpul8xImxYKZQVWqVGUuoSZ0am8k3MtU
	 +J+8ivSkb8zVlSDqMcJYXlZ7LzHPa79e5X5U5qm+uVKymbdXQEhyUpA2Ulto0iX/ho
	 9IS3aM9Kzo2fg==
Received: (nullmailer pid 49346 invoked by uid 1000);
	Tue, 19 Sep 2023 19:16:19 -0000
Date: Tue, 19 Sep 2023 14:16:19 -0500
From: Rob Herring <robh@kernel.org>
To: Tzuyi Chang <tychang@realtek.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 5/7] dt-bindings: pinctrl: realtek: add RTD1315E
 pinctrl binding
Message-ID: <169515097893.49290.12821083628902791514.robh@kernel.org>
References: <20230919101117.4097-1-tychang@realtek.com>
 <20230919101117.4097-6-tychang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919101117.4097-6-tychang@realtek.com>


On Tue, 19 Sep 2023 18:11:15 +0800, Tzuyi Chang wrote:
> Add device tree bindings for RTD1315E.
> 
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> ---
> v2 to v3 change:
>     1. Remove if/then condition under the patternProperties
>        "-pins$".
> v1 to v2 change:
>     1. Add a description for RTD1315E.
>     2. Rename realtek,pdrive, realtekmndrive and realtek,dcycle.
>     3. Add a description for PMOS and NMOS driving strength.
>     4. Remove the wildcard in the compatible strings.
>     5. Use '-pins$' to be node name pattern.
> ---
>  .../pinctrl/realtek,rtd1315e-pinctrl.yaml     | 188 ++++++++++++++++++
>  1 file changed, 188 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/realtek,rtd1315e-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


