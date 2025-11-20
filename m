Return-Path: <devicetree+bounces-240548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A6C72B18
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:01:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9A6884E122E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C22226ED53;
	Thu, 20 Nov 2025 08:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNDwayjq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65E015A85A;
	Thu, 20 Nov 2025 08:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763625677; cv=none; b=DdTfGPj8USJcGpV3To2qzOI9dIRyq90O5Fbmn5hpKhba+voSppsHz95JiDxN/lAFgT3u/eFeDvFJGWp9+Zc0TvstYUFFLrfR0A8L4Z/Erc52yndPe4dms4aWm/cnT6ozseoC3V3GDZVkpRYt31Gm6EupLngrV386H12fY30sh28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763625677; c=relaxed/simple;
	bh=As/jvSL3IOMOesT4YT8FTUNl6qTIMobi3j/9Q/djVfU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FFYILUC6D8FqmRDCZ+5WBNOHoDOxRPYm/wPMXxJyyFV13FwANTv9L9elP1yr/ltlKaMAMU7T8O7ryA8TKOPKb0ef4oCSYnJdIa90ueD9V9uOThBp0dRmXUWpTbc9ln7zz+AENW6OBPyqwutt96CZpFXu7C8lUFXH5o4FcI8EcLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNDwayjq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F14DC4CEF1;
	Thu, 20 Nov 2025 08:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763625676;
	bh=As/jvSL3IOMOesT4YT8FTUNl6qTIMobi3j/9Q/djVfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bNDwayjqMBaNQq6I0g3hF1/1k3CoTowwwwDKr1LcY42MtGFeq/wvfmUNbEu44GrW5
	 lOqKEcJlJTOk0kZITBBI/CpANTBv8wl0C+dpdsA+wXjjaYntwtaEgGUx38HEMOJlEL
	 JdFqnELLhVW61FQPJZDZ69OciW49jsIzWCB0Q4eo+O0vc+IET/yvPmHRB4e5vu4m74
	 68fx64bLHc3h2z9/efhNFRcWia/iYiS7rphoqDYH9rcN1beVqRvT3j7CYqzm8YhJYv
	 b/kqY5NQsgEHSsXoSeDHMZcmUpATkzTR0ENABAdp3LUDrnny++JISLjfS0uq0toLPy
	 cFHijzXBruLwA==
Date: Thu, 20 Nov 2025 09:01:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: robh@kernel.org, Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, devarsht@ti.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, rfoss@kernel.org, s-jain1@ti.com, simona@ffwll.ch, 
	sjakhade@cadence.com, tzimmermann@suse.de, u-kumar1@ti.com, yamonkar@cadence.com, 
	pthombar@cadence.com, nm@ti.com
Subject: Re: [PATCH v2] dt-bindings: drm/bridge: Update reg-name and reg
 description list for cdns,mhdp8546 compatible
Message-ID: <20251120-groovy-violet-tamarin-7ae42c@kuoka>
References: <20251119122447.514729-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251119122447.514729-1-h-shenoy@ti.com>

On Wed, Nov 19, 2025 at 05:54:47PM +0530, Harikrishna Shenoy wrote:
> Remove j721e-intg register name from reg-name list for cdns,mhdp8546
> compatible. The j721e-integ registers are specific to TI SoCs, so they
> are not required for compatibles other than ti,j721e-mhdp8546.
> 
> Move the register name constraints and reg description list to the
> appropriate compatibility sections to ensure the correct register
> names are used with each compatible value also adding the DSC register
> to make bindings align with what the hardware supports.
> 
> Fixes: 7169d082e7e6 ("dt-bindings: drm/bridge: MHDP8546 bridge binding changes for HDCP")
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
> 
> Links to some discussions pointing to need for a fixes patch: 
> https://lore.kernel.org/all/20250903220312.GA2903503-robh@kernel.org/
> https://lore.kernel.org/all/d2367789-6b54-4fc2-bb7c-609c0fe084d3@ti.com/
> 
> Link to v1:
> <https://lore.kernel.org/all/20251107131535.1841393-1-h-shenoy@ti.com/>
> 
> Changelog v1 --> v2:
> -Update the reg description list for each compatible and add register space
> for dsc to make the bindings reflect what hardware supports although 
> the driver doesn't support dsc yet.
> 
> Note: j721e-integ are not optional registers for ti-compatible.
> 
>  .../display/bridge/cdns,mhdp8546.yaml         | 46 ++++++++++++-------
>  1 file changed, 29 insertions(+), 17 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> index c2b369456e4e2..6de4330d13f95 100644
> --- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> @@ -18,22 +18,9 @@ properties:
>  
>    reg:
>      minItems: 1
> -    items:
> -      - description:
> -          Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
> -          The AUX and PMA registers are not part of this range, they are instead
> -          included in the associated PHY.
> -      - description:
> -          Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
> -      - description:
> -          Register block of mhdptx sapb registers.

You just removed completely upper constraint, so 20 items are valid...
This is exactly explained in writing schema. I expect here either oneOf
with two lists or maxItems.


>  
>    reg-names:
>      minItems: 1
> -    items:
> -      - const: mhdptx
> -      - const: j721e-intg
> -      - const: mhdptx-sapb

Please read writing schema and writing bindings.

Best regards,
Krzysztof


