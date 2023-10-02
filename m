Return-Path: <devicetree+bounces-5241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 785537B5B0F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id CB56AB20A19
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244611F61B;
	Mon,  2 Oct 2023 19:17:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1548A1F195
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:17:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEF3C433C7;
	Mon,  2 Oct 2023 19:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274244;
	bh=AjV8yz9iZed8v8NYsx9Z7iJNjHPdZH0VknplKPpqFcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F3LioIjESDU8AldBD1iTyCLjZ+qtqPHUl0LhZxv7w+Md09L9qgYxQx+Imclre2XA/
	 2vCNLTzopi/U/WBTVbq/MO7s0LvMVc8b/uxaphVBPDUltRxcpCyEg+bL0ddN61v6B1
	 7Sv4jCL4E5VOERFGMoR5lSgZUEPS+8URhbpGI0w2Q63NVbSkfVgKQuQGeJmwv4VSKp
	 ftQ3b9MiEwtLu1mJSK6Jx2vKTTZpaY0hQA3bKQX3i8HSHW+Cu6qXqRpkphbgmfvdFw
	 aU310zSCacgwrnM5IRmNtFzGQ40RKlmabnaBypuCmVCyVXR32JhhPlM+yU68ArRs9K
	 k60THvB0wvjpg==
Received: (nullmailer pid 2375990 invoked by uid 1000);
	Mon, 02 Oct 2023 19:17:21 -0000
Date: Mon, 2 Oct 2023 14:17:21 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, martink@posteo.de
Subject: Re: [PATCH v3 2/7] media: dt-bindings: hynix,hi846: Restrict
 endpoint properties
Message-ID: <20231002191721.GB2351787-robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-3-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-3-jacopo.mondi@ideasonboard.com>

On Sat, Sep 30, 2023 at 04:59:46PM +0200, Jacopo Mondi wrote:
> Only properties explicitly listed in the schema are accepted as
> endpoint properties.
> 
> Make sure this is actually enforced by setting 'additionalProperties'
> to false and explicitly allow 'remote-endpoint' in the list of
> endpoint properties.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
> index 60f19e1152b3..f2ca86501d3c 100644
> --- a/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/hynix,hi846.yaml
> @@ -58,7 +58,7 @@ properties:
>      properties:
>        endpoint:
>          $ref: /schemas/media/video-interfaces.yaml#
> -        unevaluatedProperties: false
> +        additionalProperties: false

If anything 'additionalProperties' is the exception and 
'unevaluatedProperties' is the rule. Just grep refs to 
video-interfaces.yaml. Why did you change this for just 
this 1 device? 

I'm more worried about undocumented properties than a documented 
property which makes no sense for the h/w being present. So I think 
as-is was fine.

>  
>          properties:
>            data-lanes:
> @@ -73,6 +73,7 @@ properties:
>                    - const: 2
>  
>            link-frequencies: true

I suppose we could remove this as it has no effect on the schema 
validation, but it's probably worthwhile to keep for documentation 
purposes.

Rob

> +          remote-endpoint: true
>  
>          required:
>            - data-lanes
> -- 
> 2.42.0
> 

