Return-Path: <devicetree+bounces-252656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF522D01FB9
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA68D301B80F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:51:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005702DB78C;
	Thu,  8 Jan 2026 08:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FobKct5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB416342519;
	Thu,  8 Jan 2026 08:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862272; cv=none; b=uUusSaowq7EYFyE6n9Jy+8EOc5YxugCl6ZOC/RYVLh6oA5AHFmWenXxJoh3BGNsiAqwwf2SusvZMPSkYGRnqZLSJiGPD1kXijHDCfyJHyqzk4SSIeEHcONwkx9s3wLTwlfCdsjjOJmUHg5bsfJ1u+wqFe9uhTfnqqmh/XKmY/CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862272; c=relaxed/simple;
	bh=U0RdNwymGhxdU7n+ZSNtVa/3CAhVyD3Pla188s6EqUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MPsWdsAaQ7YwTCv28Y4ADkkERi5+3p12hyEu20VqKll+fbMX524Z3nPx/nCvJikWdzUVPPQe5Mpx8aglvRnyYB6527SJbObS0ZclSVcfv7qTDc1XUMCEHHGWO+DRqyjmPx0ahCaUMEwsVONElL66JRzKyX4QsGsDCMAsDMhguCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FobKct5Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEE43C116C6;
	Thu,  8 Jan 2026 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767862271;
	bh=U0RdNwymGhxdU7n+ZSNtVa/3CAhVyD3Pla188s6EqUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FobKct5QaObSbDlpckkxQg6GhMpVn4yfSaG5EIhhQ9W3Y/V76wPkgLhXW2Jit3Hqa
	 2SAtCVqV1L6DY/VyDskRU31yzVCTtTFzCVRXSBL9OM7pwS49mQTuvmioUehU8h7OwA
	 +b2rBF7bzCYeBPGmAZBNEsAjCpahqjmYwXlPTiCBINo1lyHLYR8lM6vPgVnNK8xT1t
	 YGBgAgSNbbrDSBik8WJnpP2ZCNVl6niwEu1ZzIt8mGlmh2gIa+vj2N1NpAjTGCDtXB
	 /eKb7Dp1vmVOFApdrKPv4DNjhgPuHuhiqsyozIj3BgRvsjZ/u+4nPPTfw2Gz4pmRqv
	 W3JZmmpjnXPLA==
Date: Thu, 8 Jan 2026 09:51:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	aradhya.bhatia@linux.dev, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devarsht@ti.com, praneeth@ti.com, h-shenoy@ti.com, 
	u-kumar1@ti.com
Subject: Re: [PATCH v3 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss
 compatible
Message-ID: <20260108-expert-whippet-of-downpour-ba277f@quoll>
References: <20260107174525.1702585-1-s-jain1@ti.com>
 <20260107174525.1702585-2-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260107174525.1702585-2-s-jain1@ti.com>

On Wed, Jan 07, 2026 at 11:15:23PM +0530, Swamil Jain wrote:
> TI's AM62P SoC contains two instances of the TI Keystone Display
> SubSystem (DSS), each with two video ports and two video planes. These
> instances support up to three independent video streams through OLDI,
> DPI, and DSI interfaces.
> 
> DSS0 (first instance) supports:
>  - Two OLDI transmitters on video port 1, configurable in dual-link or
>    single-link mode.
>  - DPI output on video port 2.
> 
> DSS1 (second instance) supports:
>  - One OLDI transmitter on video port 1 (single-link mode only).
>  - DSI controller output on video port 2.
> 
> The two OLDI transmitters can be configured in clone mode to drive a
> pair of identical OLDI single-link displays. DPI outputs from
> DSS0 VP2, DSS1 VP1, and DSS1 VP2 are multiplexed, allowing only one
> DPI output at a time.
> 
> Add the compatible string "ti,am62p-dss" and update related
> description accordingly.
> 
> AM62P has different power domains for DSS and OLDI compared to other
> Keystone SoCs. Therefore, add 'minItems' and set to 1 and 'maxItems'
> field in the power-domains property to 3 for the "ti,am62p-dss"
> compatible entry to reflect this hardware difference.

Last sentence is redundant. You are again explain repeating the diff
which is pointless, but did not explain WHY you think 2 power domains is
correct.

> 
> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 33 ++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 38fcee91211e..e74e710934fc 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> @@ -24,6 +24,19 @@ description: |
>    DPI signals are also routed internally to DSI Tx controller present within the
>    SoC. Due to clocking limitations only one of the interface i.e. either DSI or
>    DPI can be used at once.
> +  The AM62P has two instances of TI Keystone Display SubSystem, each with two
> +  video ports and two video planes. These instances can support up to 3
> +  independent video streams through OLDI, DPI, and DSI interfaces.
> +  DSS0 (first instance) supports:
> +    - Two OLDI TXes on video port 1, configurable in dual-link or
> +      single link clone mode
> +    - DPI output on video port 2
> +  DSS1 (second instance) supports:
> +    - One OLDI TX on video port 1 (single-link mode only)
> +    - DSI controller output on video port 2
> +  The two OLDI TXes can be configured in clone mode to drive a pair of
> +  identical OLDI single-link displays. DPI outputs from DSS0 VP2, DSS1 VP1,
> +  and DSS1 VP2 are muxed, allowing only one DPI output at a time.
>  
>  properties:
>    compatible:
> @@ -31,6 +44,7 @@ properties:
>        - ti,am625-dss
>        - ti,am62a7-dss
>        - ti,am62l-dss
> +      - ti,am62p-dss
>        - ti,am65x-dss
>  
>    reg:
> @@ -81,7 +95,8 @@ properties:
>      maxItems: 1
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>      description: phandle to the associated power domain
>  
>    dma-coherent: true
> @@ -196,6 +211,22 @@ allOf:
>                properties:
>                  endpoint@1: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62p-dss
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 1
> +          maxItems: 3

This is still not constrained enough. You need to define the items
instead. I still do not understand why number of power domains is
flexible.

> +    else:
> +      properties:
> +        power-domains:
> +          minItems: 1

You can drop this one.

> +          maxItems: 1
> +
>  required:
>    - compatible
>    - reg

