Return-Path: <devicetree+bounces-5127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2930D7B5573
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:51:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D3530281E6C
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F291A709;
	Mon,  2 Oct 2023 14:50:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7120468C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:50:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54D86C433C7;
	Mon,  2 Oct 2023 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696258257;
	bh=oCle2xQolRrS//2ZNzGCyX4K5r5ldYzVf098n5iryoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rSNx8wAfhzbmf/rAkSYfSy/g8xcgWARkygitgnHKqBk9ZlLNmvkU9oOQwDMnuuISM
	 joWE7C6FpMYCmGV6g7WRft+g9fryeTXIaadTKb9XNcYOBz8Vvhpou3M1uVOz2oCr/o
	 TQaWKZnmG1YX9g7lEJlB4YOCrOsr33MWRnoPjXxrwTJYf1tw1QS0lGGDlOELUrkNE5
	 DSABcVScP8VSVSNlfcsyERWsPEzFHkBac/COj4Dqxpc4WQRsOds9YUhUXuabBvoyWL
	 s6uG4f+ojpQx94Z/EAO06S/3U/I4rSC5ub7qsn9JXnt5CBm1ZdbFPTj17CyHX1626Q
	 oZdyS6Op+gcIQ==
Received: (nullmailer pid 1694626 invoked by uid 1000);
	Mon, 02 Oct 2023 14:50:52 -0000
Date: Mon, 2 Oct 2023 09:50:52 -0500
From: Rob Herring <robh@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de, neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 19/28] dt-bindings: pinctrl: renesas: set
 additionalProperties: false
Message-ID: <20231002145052.GA1690001-robh@kernel.org>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
 <20230929053915.1530607-20-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929053915.1530607-20-claudiu.beznea@bp.renesas.com>

On Fri, Sep 29, 2023 at 08:39:06AM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Set additionalProperties: false.
> 
> Suggested-by: Rob Herring <robh@kernel.org>

I did?

> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v2:
> - this patch is new in v2 and added as suggested by Rob
> 
>  .../devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml     | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> index 4782f96feb7e..eb726770f571 100644
> --- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
> @@ -106,8 +106,7 @@ additionalProperties:
>          line-name: true
>  
>      - type: object
> -      additionalProperties:
> -        $ref: "#/additionalProperties/anyOf/0"
> +      additionalProperties: false

With no properties defined, this only allows an empty node which is 
probably not what you want. It's the other anyOf entry that needed it, 
but I already sent a fix which Linus applied.

Rob

