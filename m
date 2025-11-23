Return-Path: <devicetree+bounces-241428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 56661C7DF33
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 11:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 13D364E151D
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 10:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71DAF2773CC;
	Sun, 23 Nov 2025 10:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbNzN9G+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4852A12FF69;
	Sun, 23 Nov 2025 10:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763892028; cv=none; b=Vgzj8fGlxA/btu5VJ/h03pt2uB8c+NiskXu/8xSXAYdVsNKVn8gZWhidc+0S3l7l1Hk6hJ4zAi9LI5APx3KeGzj9nhexOFcC8DxQ2IAxN80gUvRo12C0pBg8bhTsCyR8eEp0kX0zLs+djS1smQjKFo0ZYrEimxwMkUEJy3RjcNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763892028; c=relaxed/simple;
	bh=FSwJ15t9tlE5D0OR1/lOks/3PouYtALN84vg3Jg6ULA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ucgDD9mt5bptZUkrz2OIqcoPgPJo4FiApSatd1eehL1vJSTw3cIm/LTc+Twrl/xczVYIEgCiW5ycROgnCBia1mni7y3RffqJFVdt8p1zaJKy7nNWof7ePr8DnCG2Nq+nLWjvcmQc0nia/A5yZtaIdob3hXgLngoQ+oRZR4EDDZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbNzN9G+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35581C113D0;
	Sun, 23 Nov 2025 10:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763892027;
	bh=FSwJ15t9tlE5D0OR1/lOks/3PouYtALN84vg3Jg6ULA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dbNzN9G+AZx+w8Rb8FnlVKWUPJUS61L/XSvaVBA1vII7luB9ZjHlgURYVpvoiXg44
	 FZRIR2BF653Z1kwWw/2SBQWx36HzQglTKu0EPvaVVgRmPnLYaiCZfkGPUzJB2rXVai
	 2dY/T9fMFQ2MMmqcjh8bx8rX9y8MRvyyXxMFiCtWGJGVhPXHjysBMpHR57jLOtrMc+
	 ZEoGywukcHZ4bZSS+nNUhtbrAO6Er9GY0Kut8HT3OuWmgGU/XsQa9w/DEvDlqpN1sU
	 WHeAox9xcDP+FaCsF9NRr6hxrYN+HhJPjq9Wr1NaweCwxwjcoBwvVUnKR/kTPV3HAg
	 VPh9J43VuZtFw==
Date: Sun, 23 Nov 2025 11:00:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: robh@kernel.org, Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, devarsht@ti.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, rfoss@kernel.org, s-jain1@ti.com, simona@ffwll.ch, 
	sjakhade@cadence.com, tzimmermann@suse.de, u-kumar1@ti.com, yamonkar@cadence.com, 
	pthombar@cadence.com, nm@ti.com
Subject: Re: [PATCH v3] dt-bindings: drm/bridge: Update reg-name and reg
 description list for cdns,mhdp8546 compatible
Message-ID: <20251123-flying-sweet-raven-bf3571@kuoka>
References: <20251121123437.860390-1-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251121123437.860390-1-h-shenoy@ti.com>

On Fri, Nov 21, 2025 at 06:04:37PM +0530, Harikrishna Shenoy wrote:
> Remove j721e-intg register name from reg-name list for cdns,mhdp8546
> compatible. The j721e-integ registers are specific to TI SoCs, so they
> are not required for compatibles other than ti,j721e-mhdp8546.
> 
> Update reg and reg-names top level constraints with lists according
> to compatibles.
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
> Link to v2:
> <https://lore.kernel.org/all/20251119122447.514729-1-h-shenoy@ti.com/>
> 
> Changelog v2 --> v3:
> -Add the reg description list and reg-name list in top level constraints
> using oneOf for either of compatible.
> Logs after testing some cases: https://gist.github.com/h-shenoy/a422f7278859cd95447e674963caabd9
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
>  .../display/bridge/cdns,mhdp8546.yaml         | 85 ++++++++++++++-----
>  1 file changed, 66 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> index c2b369456e4e2..632595ef32f63 100644
> --- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> @@ -17,23 +17,45 @@ properties:
>        - ti,j721e-mhdp8546
>  
>    reg:
> -    minItems: 1
> -    items:
> -      - description:
> -          Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
> -          The AUX and PMA registers are not part of this range, they are instead
> -          included in the associated PHY.
> -      - description:
> -          Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
> -      - description:
> -          Register block of mhdptx sapb registers.
> +    oneOf:
> +      - minItems: 2
> +      - items:

This is wrong syntax. You created here a list, so you now allow
anything with minItems 2.

> +          - description:
> +              Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
> +              The AUX and PMA registers are not part of this range, they are instead
> +              included in the associated PHY.
> +          - description:
> +              Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
> +          - description:
> +              Register block of mhdptx sapb registers.
> +          - description:
> +              Register block for mhdptx DSC encoder registers.
> +
> +      - minItems: 1

Actually anything with minItems 1... I asked for list of TWO, not FOUR,
items. Or if syntax is getting to complicated, just min and maxItems.


> +      - items:
> +          - description:
> +              Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
> +              The AUX and PMA registers are not part of this range, they are instead
> +              included in the associated PHY.
> +          - description:
> +              Register block of mhdptx sapb registers.
> +          - description:
> +              Register block for mhdptx DSC encoder registers.
>  
>    reg-names:
> -    minItems: 1
> -    items:
> -      - const: mhdptx
> -      - const: j721e-intg
> -      - const: mhdptx-sapb
> +    oneOf:
> +      - minItems: 2
> +      - items:

Also wrong.

> +          - const: mhdptx
> +          - const: j721e-intg
> +          - const: mhdptx-sapb
> +          - const: dsc
> +
> +      - minItems: 1
> +      - items:
> +          - const: mhdptx
> +          - const: mhdptx-sapb
> +          - const: dsc
>  
>    clocks:
>      maxItems: 1
> @@ -100,18 +122,43 @@ allOf:
>        properties:
>          reg:
>            minItems: 2
> -          maxItems: 3

Your commit msg says you "remove" but here you ADD one more item, thus
growing this 3->4.

How remove can result in 3 becoming 4?


Best regards,
Krzysztof


