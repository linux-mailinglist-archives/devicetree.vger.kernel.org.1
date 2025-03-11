Return-Path: <devicetree+bounces-156694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF0DA5D0C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 21:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C2043B75D3
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 20:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD20264611;
	Tue, 11 Mar 2025 20:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5pzssPT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7675725D208
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 20:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741724648; cv=none; b=oMLT/+0fAPWWqpLe5ukJZxyt5OE3BCIAtaddiNAVYnuh8ERA0DZE2WMnJGUUiWA9mmr+QsBQu74BpNiRUAsf8XYl4XK7ALvFYbVKpNvAc62973IcIngSovmpvXU05DTtCW5FNOOEhlOK6VWtnpaZ4vyqg1J+TiqXrxPpZuXvaYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741724648; c=relaxed/simple;
	bh=lDwYcYL8DQlb47+KVmbSPC3vM2Na2GTDR5bm4oiQq4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ITvgDopxFywaTAyzybCHTHCRZaO29ATzOUA1G7glp5b8XXyS8h1/R/ANSUpPnXSuEdLuiIKLljN7/pkBj5Cb/n4WODvOQUCJ4mBjyqZSHz1cW/1NB7SJbA9SburE3X5S6tUTA5wVi1iO6uubeQj2jVmbdDuQShUNro0575No/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5pzssPT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D569C4CEE9;
	Tue, 11 Mar 2025 20:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741724647;
	bh=lDwYcYL8DQlb47+KVmbSPC3vM2Na2GTDR5bm4oiQq4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i5pzssPTTrZsJm2Hw0tDPGZZ8x1jxj7OirsvNjzhPzCAaSZ3pGplaqzFBABGpUuS3
	 cmVWdeVOnm6P1yQo2RI3acUVEIPppz0Dzxw+JrWbeKFsB4TY0xt2HIU0SUbcYUjFxd
	 xwhvTr2xB4/EdeYy4cKoQHaHls5xHVQgDe66Seie/Gi0c2VhwxgQaWTUDZMK6s2OAn
	 sESL7XWb0vdXStUUxBIVzz87Ve6czr0y6mv20HL3rsqlNbdTzyvfOzUpuZSXiVajyX
	 S4fK2iWEm8gR06fRME4NzfgmiR0apzVesXagPzTExSxmP7uDVKyXyt69RMokroLvhD
	 Ak9Fko5Gt5YXQ==
Date: Tue, 11 Mar 2025 15:23:59 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Ma=EDra?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>,
	Jose Maria Casanova Crespo <jmcasanova@igalia.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v3 5/7] dt-bindings: gpu: v3d: Add SMS register to
 BCM2712 compatible
Message-ID: <20250311202359.GA54828-robh@kernel.org>
References: <20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com>
 <20250311-v3d-gpu-reset-fixes-v3-5-64f7a4247ec0@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311-v3d-gpu-reset-fixes-v3-5-64f7a4247ec0@igalia.com>

On Tue, Mar 11, 2025 at 03:13:47PM -0300, Maíra Canal wrote:
> V3D 7.1 exposes a new register block, called V3D_SMS. As BCM2712 has a
> V3D 7.1 core, add a new register item to its compatible. Similar to the
> GCA, which is specific for V3D 3.3, SMS is optional and should only be
> added for V3D 7.1 variants (such as brcm,2712-v3d).

Based on the schema, that is not what optional means for bindings. 
Optional is within a specific compatible, not present for one compatible 
and not present for another compatible.

> 
> Signed-off-by: Maíra Canal <mcanal@igalia.com>
> ---
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index 141f2ed540bb4ddb85a933d7d44a4078c386ba39..7349347da1c0034a8849deaa6d64dde6d9d5a81a 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -57,7 +57,6 @@ allOf:
>            contains:
>              enum:
>                - brcm,2711-v3d
> -              - brcm,2712-v3d
>                - brcm,7278-v3d
>      then:
>        properties:
> @@ -71,6 +70,27 @@ allOf:
>              - const: hub
>              - const: core0
>              - const: bridge
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: brcm,2712-v3d
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: hub register (required)
> +            - description: core0 register (required)
> +            - description: SMS register (required)

minItems tells us these are all 'required'.

> +            - description: bridge register (if no external reset controller)
> +          minItems: 3
> +        reg-names:
> +          items:
> +            - const: hub
> +            - const: core0
> +            - const: sms
> +            - const: bridge

This is an ABI change because previously the 3rd entry was bridge and 
you moved it. Put new entries on the end to keep compatibility. If 
there's no users yet, then that's fine, but the commit message needs to 
say that.

> +          minItems: 3
>    - if:
>        properties:
>          compatible:
> 
> -- 
> Git-154)
> 

