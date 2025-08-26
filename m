Return-Path: <devicetree+bounces-209448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A86B37519
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 00:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41D457B76F3
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 22:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A492DF6EA;
	Tue, 26 Aug 2025 22:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrCrDouQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535612D94B0
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 22:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756248745; cv=none; b=cf82KksE0NOihD8sQ99aqmA7/k3rp2tS9eyrhjr9lBPY4/P8kiFe9xbB51YTRCQwNo9Q+E2EglvwmVdBARoMWpYrdziYvcM0f/u6Y52qaAlTPZSaeoJdx+h3BQ3UInPSf974xqplrpoz5YFlrOhnm75QB4bWYSXwRs9x6mzkOA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756248745; c=relaxed/simple;
	bh=UCUr8OIeqwKQ6JXL0ui3NgRUlTa2WSOoL5P1WHpO7Y0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SZGQQssngehNEpdOQl1zfiwUx6qSM2vxpzCFd5YvQfQMUCrmA20TfChs8T5V7u7LAyxbeUg4lQIqxc3tEH974BCv65pl0re2+5IseL3WbqZfZxdf0S4qNzk8/U5oX+1wjVWJPchyMtL32n8gMyFgxNBih72YlOxoPkIRr4lmlcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrCrDouQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 142D1C4CEF1;
	Tue, 26 Aug 2025 22:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756248745;
	bh=UCUr8OIeqwKQ6JXL0ui3NgRUlTa2WSOoL5P1WHpO7Y0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nrCrDouQ3BoLbyAbNa79IzIiNd0FybLkY069TZ6rHUrtALlmDAd5r4nGSUBjkta10
	 sOS5Gxqyi9SekHkp1lpq9kauzSBslGiEvAvG2A97culHlxe0oSEyAq1Av8VB6VUHLS
	 t2Rpq5dHbHi9C+Vrow2s0Lauaok9Im8pBWzTOOAKiCXzl1delJRUP/4rqUZf/w7iVN
	 WR+NHYreVnAlBwcYqk6WLRlkWnqDwYkJCoxLHwqC+nVWkIZp2s/o/H6qt13xB0zx3l
	 dA8/Ano1P4+TK+pRGrUEImxp+OCh4uTRgEJuHMxYkgmiSySMT4a/V9wigJlA8XZMYw
	 fTQRGzbD9Wc1A==
Date: Tue, 26 Aug 2025 17:52:23 -0500
From: Rob Herring <robh@kernel.org>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: dsi-controller: add bridge to
 patternProperties
Message-ID: <20250826225223.GA612738-robh@kernel.org>
References: <20250822182352.2006834-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822182352.2006834-1-h-shenoy@ti.com>

On Fri, Aug 22, 2025 at 11:53:52PM +0530, Harikrishna Shenoy wrote:
> This patch extends the binding schema by adding a new `bridge@[0-3]` to

Use imperative mood. See submitting-patches.rst.

> represent any bridge devices attached as DSI peripheral.
> 
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
>  .../bindings/display/dsi-controller.yaml       | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/dsi-controller.yaml b/Documentation/devicetree/bindings/display/dsi-controller.yaml
> index 67ce10307ee0..d7ca700070a9 100644
> --- a/Documentation/devicetree/bindings/display/dsi-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/dsi-controller.yaml
> @@ -73,6 +73,24 @@ patternProperties:
>      required:
>        - reg
>  
> +  "^bridge@[0-3]$":

Rather than duplicating all this, just change 
the above entry to: '^(panel|bridge)@[0-3]$'

> +    description: Bridge connected to the DSI link
> +    type: object
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 3
> +        description:
> +          The virtual channel number of a DSI peripheral. Must be in the range
> +          from 0 to 3, as DSI uses a 2-bit addressing scheme. Some DSI
> +          peripherals respond to more than a single virtual channel. In that
> +          case the reg property can take multiple entries, one for each virtual
> +          channel that the peripheral responds to.
> +
> +    required:
> +      - reg
> +
>  additionalProperties: true
>  
>  examples:
> -- 
> 2.34.1
> 

