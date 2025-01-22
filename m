Return-Path: <devicetree+bounces-140194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBD8A18D4F
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3CFE169F79
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 08:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA751A841F;
	Wed, 22 Jan 2025 08:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLKfsMmM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DE28F7D;
	Wed, 22 Jan 2025 08:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737533102; cv=none; b=D00w5D4R453r74SdMGUnYBvfFVu34gmHHyH/ugVfRmzFrtTI7Z8bUXNDaakH2xGdZMNbTZoj+VPsZbHzcmBhEUxoX5cs2Z994lfcaTHWjlwtp/TCPD1voLuc8KHhOwBCK5APf+ZlseoR9ZVFuUunR57ONFWdyLtpO5HFyWrQ7Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737533102; c=relaxed/simple;
	bh=1/e0OSzJAkm9egv4lYiRA3flNXYIZL51hjzunRXP6Yw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=chYhmqyHzlHnq47UauTxRNPTyaF1Uf8ve7D547HAlTdTn8fGcIwlZo2P8jiLSzrQx15U21uSdOlvTNSibR1nbc3E6v9FsanMzIuhXSeNHxfaI7Ba24BUo2yQ2Y9Z76t0wtUKFA6TCC4k6MQhFHg+890LPLdEFS7lXJxkvH0E+YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLKfsMmM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733C0C4CED6;
	Wed, 22 Jan 2025 08:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737533102;
	bh=1/e0OSzJAkm9egv4lYiRA3flNXYIZL51hjzunRXP6Yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uLKfsMmMhpnUUg6byVeYeaga1dPXE6WfDsDg3HAw127zk6NflkfKW4HaemNncVg5D
	 6zOzAktmQZNYP51oC5GopHcrtC/AY2O3RfboDaQGrBHKwLoTMUx/UZE+t1lr5noVoI
	 ge0S2i0NO9j2aFQ0oGFqE4IJrRrxG8jjKgsAKB5JVoYnbtOB38FDwmUAXXFcKNJLHR
	 MAokw5APZMy+e9aLDtdb5ECzM9q9m12kRXRy7yr57fuin78poFhD7dDt6aoKA82jdB
	 CEnHsZ+6Eq9NosSOPF6dlSHTeSuWSzS3Ceyb6un+maKhw3GpyuDxPJU2nYik9V8u32
	 C+d5W+1HWP4Yw==
Date: Wed, 22 Jan 2025 09:04:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, daniel@fooishbar.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250121103500.2528258-1-andyshrk@163.com>

On Tue, Jan 21, 2025 at 06:34:57PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v12:
> - Split from patch 10/13

Order your patches finally. It's v12 and you still send binding after
the user. Read carefully submitting bindings/patches.

> 
> Changes in v11:
> - Remove redundant min/maxItems constraint
> 
> Changes in v10:
> - Move interrupt-names back to top level
> - Add constraint of interrupts for all platform
> - Add constraint for all grf phandles
> - Reorder some properties
> 
> Changes in v9:
> - Drop 'vop-' prefix of interrupt-names.
> - Add blank line between DT properties
> - Remove list interrupt-names in top level
> 
> Changes in v8:
> - Fix dt_binding_check errors
> - ordered by soc name
> - Link to the previous version:
>   https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u
> 
> Changes in v4:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v3:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Changes in v2:
> - Add dt bindings
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 55 ++++++++++++++++++-
>  1 file changed, 52 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 157a37ed84da..a2a6369c7b6f 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -38,10 +39,21 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>      description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +      For VOP version under rk3576, the interrupt is shared by several interrupt
> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
> +      For VOP version from rk3576 there is a system interrupt for bus error, and
> +      every video port has it's independent interrupts for vsync and other video
> +      port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: sys
> +      - const: vp0
> +      - const: vp1
> +      - const: vp2
>  
>    # See compatible-specific constraints below.
>    clocks:
> @@ -135,6 +147,8 @@ allOf:
>          interrupts:
>            maxItems: 1

So this change moves to this patch.

>  
> +        interrupt-names: false
> +
>          ports:
>            required:
>              - port@0
> @@ -148,6 +162,39 @@ allOf:
>        required:
>          - rockchip,grf
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-vop
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5

No. You did not implement my comment at all.

So again:
"Why minItems? Nothing in this patch makes sense for me. Neither changing
existing binding nor new binding for rk3576."

To address such comment, come with reasonable answer to "why". Not just
send the same. It's a waste of my time to keep reviewing the same.

Best regards,
Krzysztof


