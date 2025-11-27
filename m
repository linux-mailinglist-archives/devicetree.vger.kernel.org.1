Return-Path: <devicetree+bounces-242621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 26693C8D2C2
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:46:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 16F0D4E477E
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B18F8322A21;
	Thu, 27 Nov 2025 07:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL6otSG/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F9322A0A;
	Thu, 27 Nov 2025 07:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764229527; cv=none; b=t6t4hOFcJE/gYMuzi6/ZeesI0JJyDFa+Ur3Fj5eMRskCSuQ3mMXWxgK+4k734nBahxOP6zPm2TXCyPBa4KLtlabG+ikuzm0YMd3WRjywxuMKC8Z+KH+VzIq4XSomTE8I6pys/b6StlAY7VY1fO7k8zzlXrKtW5ZqIvsX5PboAJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764229527; c=relaxed/simple;
	bh=SQkbKg+mYENU74Dce0PVRLxFiBMp0l2CgZfktdP5n+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ONWypT7wFrtQ72uX8PYfOPWcnesfiOsI40OJE74lDPtKjOkSyXK3ppoLnty308iERCaGamg3LM8iy5Pm7cZog1t/1V8Kpsmxjtx734+EajutvdnKIPpmojXHRcUECrXv1XQEPWKVP6xeO+DQiL69GwJezeLY8n94Rp6IWehLfhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL6otSG/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D565C113D0;
	Thu, 27 Nov 2025 07:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764229526;
	bh=SQkbKg+mYENU74Dce0PVRLxFiBMp0l2CgZfktdP5n+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sL6otSG/IWUVfR+94s9WVDUSq+wccI1m26tGr6odY6hgE2jFrU29SymECwAaXyFlt
	 lIzDK3Rq7gTmREKJzFpSuGQ7D1BVNV6r1AqHXxUJlKio+XVh4oOXjiJKF5Rpp15+O7
	 W5oGlw2g8b7aG6Hn0JsEz0fcSK8qD666PEVqDBd6RfoYj0iAihoAJCzsad4htHKXAe
	 oMTAO+7e6jiLEVbIqf6ucyNc6vY/U1LGNSNlHKhmNw5oIQ+ez1CbC92T2208JDpZko
	 blVdhRmYkCt9dVDR8gBIFQeQKazj1YoYKb1+h0PKcF1CkkJ6vZDEvE9PgnaE1wyRIr
	 PXw5J4DfmhIsQ==
Date: Thu, 27 Nov 2025 08:45:24 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	aradhya.bhatia@linux.dev, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devarsht@ti.com, praneeth@ti.com, h-shenoy@ti.com, 
	u-kumar1@ti.com
Subject: Re: [PATCH v2 1/3] dt-bindings: display: ti,am65x-dss: Add am62p dss
 compatible
Message-ID: <20251127-quizzical-mussel-of-discourse-bfeaab@kuoka>
References: <20251125165942.2586341-1-s-jain1@ti.com>
 <20251125165942.2586341-2-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251125165942.2586341-2-s-jain1@ti.com>

On Tue, Nov 25, 2025 at 10:29:40PM +0530, Swamil Jain wrote:
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
> 
> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 361e9cae6896..3945ae048b8f 100644
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
> @@ -197,6 +211,17 @@ allOf:
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

This is conflicting with top-level constraints. You need to update these
and then narrow each variants. See also writing schema (Property Schema
chapter).

Best regards,
Krzysztof


