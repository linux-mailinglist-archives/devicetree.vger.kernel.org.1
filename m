Return-Path: <devicetree+bounces-7292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B18BF7BFECB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:11:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DC0E2817A7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911C124C82;
	Tue, 10 Oct 2023 14:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6wAs56Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704B324C7D
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE249C433C8;
	Tue, 10 Oct 2023 14:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947080;
	bh=jj1+fLJZsCU4ttgJGWE1H7sLG+V4ATAPOgfWeIvsre0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O6wAs56Yb0BsoZrPov/aXG2OPjbtjlNNEKin6nfyev5DQYEObqWGXGn/Ol7DOEWvL
	 zcGLfLaYK+JRkRWH17ObOGGtHVWuU60hW33JoMfs5X3CBkFfpLCH63JiCndNGn3Hp5
	 Hi5D7DwZWB9UIAtL0X+U1GNL3CvfOOyopaYZAhQA8NXZ2zHvM3eF1nsC/U3clFGlM7
	 ILlnCSpYJ896+0fWMumCb5ocBMBmxvZF45pvtaD30o7TNYGrTCNa7/LXHrOyTOBYQ+
	 3L4OkSK9LI4XBS55fXbyVEf3jNokOmqmiWWWIIsNtEyC3aMLYpHnJ2TvJOxirrIJi2
	 DYE6oau2OsB1A==
Received: (nullmailer pid 753400 invoked by uid 1000);
	Tue, 10 Oct 2023 14:11:18 -0000
Date: Tue, 10 Oct 2023 09:11:18 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: lee@kernel.org, pavel@ucw.cz, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andy.shevchenko@gmail.com, kernel@sberdevices.ru, rockosov@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v1 02/11] dt-bindings: leds: aw200xx: fix led dt node
 pattern
Message-ID: <20231010141118.GA686993-robh@kernel.org>
References: <20231006160437.15627-1-ddrokosov@salutedevices.com>
 <20231006160437.15627-3-ddrokosov@salutedevices.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006160437.15627-3-ddrokosov@salutedevices.com>

On Fri, Oct 06, 2023 at 07:04:28PM +0300, Dmitry Rokosov wrote:
> AW200XX controllers have the capability to declare more than 0xf LEDs,
> therefore, it is necessary to accept LED names using an appropriate
> regex pattern.
> 
> Fixes: e338a05e76ca ("dt-bindings: leds: Add binding for AW200xx")
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> ---
>  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> index feb5febaf361..73b81f7a7258 100644
> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
> @@ -42,7 +42,7 @@ properties:
>        Leds matrix size
>  
>  patternProperties:
> -  "^led@[0-9a-f]$":
> +  "^led@[0-9a-f]+$":

There should be some updated constraints on 'reg' too. Actually, looks 
like they were missing altogether. Please add.

>      type: object
>      $ref: common.yaml#
>      unevaluatedProperties: false
> -- 
> 2.36.0
> 

