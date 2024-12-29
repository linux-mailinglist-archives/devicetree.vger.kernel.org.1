Return-Path: <devicetree+bounces-134548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F989FDE89
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 560B23A1745
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26FBD13C914;
	Sun, 29 Dec 2024 10:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYUUz7Kb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE30D78F3E;
	Sun, 29 Dec 2024 10:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735467223; cv=none; b=RlXQbgMZ7siejgr7im7PZnoQCEI5mZC26eIdjlGD4lsY7dvWZtCNWP47yc2ZXehB416x5F4pK90G1HLNPa1YUCoJmcoUx30u1nLdtw2qRM4E9+l/DdnvJhdnQLbTPWoEwjZZfNZD2S+z+mZG2VLCU/k5x5PQ7SGe0Jl60aBP0nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735467223; c=relaxed/simple;
	bh=NlqLtU37r1XG0IgHPwMy4frz80Jlp1bKAGpkHbUnyXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YuudwgrH0qw/P7BQ83E2ak1I++oVNl0XIzAubQcs5ovdxd5Bfdi1Go2RfX1aNomaxOJ4TbNEx2Zd3+YvDL3yaEejRAEdqAvMeyH1TwvIqU4+RIHlClz3XUIP4f23MES1Mn0VJocXspUQ95bLCSJ+o2JmbbepYEukHF3Y1a6VwnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYUUz7Kb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9A45C4CED7;
	Sun, 29 Dec 2024 10:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735467222;
	bh=NlqLtU37r1XG0IgHPwMy4frz80Jlp1bKAGpkHbUnyXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EYUUz7KbakQWAduLPLZpPfKAw0zp7Chn4RWyHuhb5R2UOX6eOEVMrAmh61gg9EUGf
	 xZS+fu1oK4e9KBzP3jRUBOSbx/5OSjZKYmSCYH6xSpS1aXZZUR1+EnelbVI81IZDfm
	 WyowfbLqx16SJ5k6LkShsjZXVaI/u7DY4RNtT4lSkY2RMdJ6qC09pJUxWD0HnbuUQn
	 FEEjF8MrmcpT7ULqKXA7f5hZNtn/Ev0qv0cipNpxiolTfU7VQnPxCbl2OwdSnJ/pXD
	 JhWHuT1EqTGLEkbdSkU3LZE3D3i3919LV7WDc3gx1IPxKVykdrI44JUu6Dv9WlLnKI
	 irQ271wgWebVA==
Date: Sun, 29 Dec 2024 11:13:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, joro@8bytes.org, 
	cl@rock-chips.com, robh@kernel.org, hjc@rock-chips.com, vkoul@kernel.org, 
	devicetree@vger.kernel.org, detlev.casanova@collabora.com, cristian.ciocaltea@collabora.com, 
	dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
References: <20241228122155.646957-1-andyshrk@163.com>
 <20241228122155.646957-6-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241228122155.646957-6-andyshrk@163.com>

On Sat, Dec 28, 2024 at 08:21:48PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v1:
> - ordered by soc name
> - Add description for newly added interrupt
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 70 +++++++++++++++----
>  1 file changed, 56 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 2531726af306..f28cea4a6d82 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -20,6 +20,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -37,10 +38,22 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> -    description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      - description:

That's contradictory. min/max say 1-4, but here you list two interrupts.

> +          vop system interrupt, such as bus error, and vsync for vop version under
> +          rk3576.
> +      - description:
> +          independent interrupts for each video port, such as vsync and other video
> +          port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: vop-sys
> +      - const: vop-vp0
> +      - const: vop-vp1
> +      - const: vop-vp2

And this says exactly 4.

Best regards,
Krzysztof


