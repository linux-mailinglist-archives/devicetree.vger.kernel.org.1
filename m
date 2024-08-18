Return-Path: <devicetree+bounces-94572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FDD955E5E
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A570D1F21171
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC4713B293;
	Sun, 18 Aug 2024 17:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Wcnk5txf"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEB6129E9C;
	Sun, 18 Aug 2024 17:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724003245; cv=none; b=XHqNORLBKHMoqiOwNMvoVZmhb8YnNm5D0jkkGSXWwrczbZQGX4re6jEQKCfPr7U4sfwdGUTUl3Jo7mCm3Uj6ORktbOPGGmx3r+55mWB8WJEZZ6KGUsvmKdhzbuKaacCCLP1cTJ0D3pdP/1o/7wnlzCPVX8N1XYK+XVY3EPiC5BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724003245; c=relaxed/simple;
	bh=mSqn4Gb3nYN7bq1wMWuPkirN69s9DYJDsLSC1UO7f3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pcps8boA8opb9YMG92SFbEfxETkrqKCltxLUzCbJy7sVsdxA4IBQF33MGfz/5JafJsKwPr9MyFTe3Xvn3zMb2q+RPs2mUq9ytjWk8bjCmrfsglYabMkaGGKrb3UIdWecK6FvfITq6vI9sfQDXGYGVsARt5uhDfUGvg2h1YpxqFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Wcnk5txf; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BC618541;
	Sun, 18 Aug 2024 19:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1724003182;
	bh=mSqn4Gb3nYN7bq1wMWuPkirN69s9DYJDsLSC1UO7f3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wcnk5txfIBp7NE0L7x5uh59YFtx7okufy3TuElfDwUIvPUbVh8D/PSkXvwAmYUcvu
	 gCHU0D64VxcEWJPjgxr7rL2aQGzFdKv8shGKSYcZ4rn3vgYihKVtNkIiNidmUFcnmK
	 DoYiCAgazwNMLAtmPeHmDAAQE47ZFr2jj9nAG8uU=
Date: Sun, 18 Aug 2024 20:46:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: display: renesas,du: add top-level
 constraints
Message-ID: <20240818174655.GD29465@pendragon.ideasonboard.com>
References: <20240818173003.122025-1-krzysztof.kozlowski@linaro.org>
 <20240818173003.122025-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240818173003.122025-2-krzysztof.kozlowski@linaro.org>

Hi Krzysztof,

Thank you for the patch.

On Sun, Aug 18, 2024 at 07:30:03PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks, clock-names, interrupts, resets, reset-names, renesas,cmms
> and renesas,vsps.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
>  .../bindings/display/renesas,du.yaml          | 26 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/renesas,du.yaml b/Documentation/devicetree/bindings/display/renesas,du.yaml
> index 147842b6465a..9a2d1c08cb1f 100644
> --- a/Documentation/devicetree/bindings/display/renesas,du.yaml
> +++ b/Documentation/devicetree/bindings/display/renesas,du.yaml
> @@ -46,12 +46,26 @@ properties:
>      maxItems: 1
>  
>    # See compatible-specific constraints below.
> -  clocks: true
> -  clock-names: true
> +  clocks:
> +    minItems: 1
> +    maxItems: 8
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 8
> +
>    interrupts:
> +    minItems: 1
> +    maxItems: 4
>      description: Interrupt specifiers, one per DU channel
> -  resets: true
> -  reset-names: true
> +
> +  resets:
> +    minItems: 1
> +    maxItems: 2
> +
> +  reset-names:
> +    minItems: 1
> +    maxItems: 2
>  
>    power-domains:
>      maxItems: 1
> @@ -77,6 +91,8 @@ properties:
>  
>    renesas,cmms:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 2
> +    maxItems: 4
>      items:
>        maxItems: 1
>      description:
> @@ -85,6 +101,8 @@ properties:
>  
>    renesas,vsps:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1
> +    maxItems: 4
>      items:
>        items:
>          - description: phandle to VSP instance that serves the DU channel

-- 
Regards,

Laurent Pinchart

