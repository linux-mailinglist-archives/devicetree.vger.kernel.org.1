Return-Path: <devicetree+bounces-10659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BF77D25CB
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 22:17:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 605431C208CD
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 20:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77AF134A2;
	Sun, 22 Oct 2023 20:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="h5TcbvBj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90EAA6FA0
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 20:17:44 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6C55F2;
	Sun, 22 Oct 2023 13:17:42 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DB9A33D6;
	Sun, 22 Oct 2023 22:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698005851;
	bh=ddEPPlK70H204Yy7br9DdHH0Cq7Twvu7MQBse/6FuaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h5TcbvBjibMR0naRzrjrdlDAqSoThlYtSEuOMphlpFfQuMbes6fk80e94UBOYdeE6
	 IntMxOoZBX82NPLE8eLpdNogRJE5JjbXpj/7wvXQ5/oCWjLiRBnbxbvG4vCSgmVQbs
	 rDjZaniStSy6XG4s6MWhpEqbWQjAYkpjjvOZKip0=
Date: Sun, 22 Oct 2023 23:17:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: ti,ds90ub960: Add missing type for
 "i2c-alias"
Message-ID: <20231022201748.GA32105@pendragon.ideasonboard.com>
References: <20231020170225.3632933-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231020170225.3632933-1-robh@kernel.org>

Hi Rob,

Thank you for the patch.

On Fri, Oct 20, 2023 at 12:02:24PM -0500, Rob Herring wrote:
> Every DT property needs a type defined, but "i2c-alias" is missing any
> type definition. It's a "uint32", so add a type reference.
> 
> Fixes: 313e8b32c616 ("media: dt-bindings: media: add TI DS90UB960 FPD-Link III Deserializer")
> Signed-off-by: Rob Herring <robh@kernel.org>

This is something I should have paid more attention when reviewing the
bindings. I'll try to keep it in mind for the future.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml b/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> index 289737721c2c..0b71e6f911a8 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml
> @@ -69,6 +69,7 @@ properties:
>              maxItems: 1
>  
>            i2c-alias:
> +            $ref: /schemas/types.yaml#/definitions/uint32
>              description:
>                The I2C address used for the serializer. Transactions to this
>                address on the I2C bus where the deserializer resides are

-- 
Regards,

Laurent Pinchart

