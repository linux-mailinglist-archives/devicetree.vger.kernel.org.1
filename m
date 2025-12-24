Return-Path: <devicetree+bounces-249442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 983D9CDBD62
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:41:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69C30306CC1C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2562333468F;
	Wed, 24 Dec 2025 09:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru1No65p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE80633438F;
	Wed, 24 Dec 2025 09:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569239; cv=none; b=l/V7Oc3HCQdxf8flqyCLpJVlG/NViHnEuSIBfepHKMDTUjx+DrC0kZBSaguONFr2Voga4tk5lld6qDqAWstYU+yYp5awCvRMCC9WrKLSE+uxetZ0O8X3ndlIUv97GKTaIVq0VspoxBZ5wqMQih8fiWmZUPtFavJc3voDm4jUiiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569239; c=relaxed/simple;
	bh=bCuEYCXZDvI9YsvoqCOxGkjEsZb9wkFmokDUCbthdAo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=El6Qg2BerJzPedmlIuq3p+fRIRhD8liBbtirvisBsFSuf9uJ2DjUUcZjyZnnE+gRmfumTok2atbs8nuaEZttOo/bnIJY9lTAH+5wxZlKiht6Tnm0RvYQsTW9R22AOHnWZzsKxG/reT5niedNuKyd369HVQi4ey+2BwfsiwJzmMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru1No65p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2598C4CEFB;
	Wed, 24 Dec 2025 09:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766569238;
	bh=bCuEYCXZDvI9YsvoqCOxGkjEsZb9wkFmokDUCbthdAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ru1No65pSRKiD7dPI/P6khalxTZf5XHQBdNh2k6H1u6qHKE9l6vvT3kxqEiuu7qay
	 8t/7aEH2/hnftxkqxNKXaNNmMNVHS1Ob0R5BrzUNZ+4z+AmtIAfXXCty2MRPlPQykp
	 VLocVdMT/vcDAwAiaEF/hHiZKUNXq/2vmckBIo15lXnjiIF57R3pRWf/9NNYm4r5kE
	 TNbwRrKEpNzNLxJ22DRTaI6IBc0LT8CWGAn5FSHxIwzm6upx0lUnDQB8WXRAtDov9A
	 BV+zF4kaU8adDZUuEsKf22OAnm1PLegcriwBz7+JgOTICqmOFtFuK7LYp2Fcahyswi
	 guT03ondQuKiQ==
Date: Wed, 24 Dec 2025 10:40:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Venkata Gopi Nagaraju Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Nilesh Laad <nilesh.laad@oss.qualcomm.com>, venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com, 
	Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: bridge: lt9211c: Add bindings
Message-ID: <20251224-strong-fabulous-bee-cdd620@quoll>
References: <20251224-add-lt9211c-bridge-v4-0-406e73ec28c5@oss.qualcomm.com>
 <20251224-add-lt9211c-bridge-v4-1-406e73ec28c5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251224-add-lt9211c-bridge-v4-1-406e73ec28c5@oss.qualcomm.com>

On Wed, Dec 24, 2025 at 12:41:40PM +0530, Venkata Gopi Nagaraju Botlagunta wrote:
> From: Yi Zhang <zhanyi@qti.qualcomm.com>
> 
> Add bindings for lt9211c.
> 
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---
>  .../bindings/display/bridge/lontium,lt9211.yaml    | 42 ++++++++++++++++++++--
>  1 file changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> index 9a6e9b25d14a..98079df61cbb 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9211.yaml
> @@ -4,19 +4,20 @@
>  $id: http://devicetree.org/schemas/display/bridge/lontium,lt9211.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Lontium LT9211 DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
> +title: Lontium LT9211/LT9211C DSI/LVDS/DPI to DSI/LVDS/DPI bridge.
>  
>  maintainers:
>    - Marek Vasut <marex@denx.de>
>  
>  description: |
> -  The LT9211 are bridge devices which convert Single/Dual-Link DSI/LVDS
> +  The LT9211 and LT9211C are bridge devices which convert Single/Dual-Link DSI/LVDS
>    or Single DPI to Single/Dual-Link DSI/LVDS or Single DPI.
>  
>  properties:
>    compatible:
>      enum:
>        - lontium,lt9211
> +      - lontium,lt9211c
>  
>    reg:
>      maxItems: 1
> @@ -91,6 +92,43 @@ examples:
>  
>          vccio-supply = <&lt9211_1v8>;
>  
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +
> +            endpoint {
> +              remote-endpoint = <&dsi0_out>;
> +            };
> +          };
> +
> +          port@2 {
> +            reg = <2>;
> +
> +            endpoint {
> +              remote-endpoint = <&panel_in_lvds>;
> +            };
> +          };
> +        };
> +      };
> +    };
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      lvds-bridge@3b {
> +        compatible = "lontium,lt9211c";

Don't add unnecessary examples.

Best regards,
Krzysztof


