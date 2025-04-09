Return-Path: <devicetree+bounces-164932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B315CA82DC1
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:39:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1DB71B804CB
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDE8276057;
	Wed,  9 Apr 2025 17:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="CVwyQiTx"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67B31C9DC6;
	Wed,  9 Apr 2025 17:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744220302; cv=none; b=OeQmAZbeUKpzALIcZ8X6uF+gdJ2002Nv5ud9gCF9XKK58tuBri4+hPb35/RXJBBDQjZqCpi4pSH1k7BxCe56BUEhFtoHZjoQi6mtdz9+D5UhoHqqFwFeUCUMO3un4TjE1wheTV5Pita5xWyqlwfRF/SiFiLjNx85yWwT5F1y/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744220302; c=relaxed/simple;
	bh=6S/DEIqoHl3He5FLWqaZegVfDIxrJRDlfXB7/hpvR0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cu8P3+wjtIyXGs48uJPxKtcFcybtUIDKlnP8D1wS4QBLavWz2CK8nj8sgqi73uphQnA1BhlH8VgwpVR5XM2sRI9DOr5uGioM8dAu8Fv8eAE9aBkWB+t22C6m6AJhsMRfKuferLnr3s+OSQ+TzeqRByjLqso/rl0yOSdjTaVDgUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=CVwyQiTx; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0FA3A73B;
	Wed,  9 Apr 2025 19:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744220178;
	bh=6S/DEIqoHl3He5FLWqaZegVfDIxrJRDlfXB7/hpvR0s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CVwyQiTxWHOGnkeV7xSX7DjIpTW2mESsILXLFS/XMwvKARn16FEipOZ1m7UuveH7Y
	 tTQzxt7Ji8zHy7AWLKZbRxReeXhnny34ra7sriFJ1Y+5V4v+0ED0Jqeb9paqQ9MpAN
	 Iy6+gATc/J2JbPgswih+71UU+gCAQ59AHzQPW0LE=
Date: Wed, 9 Apr 2025 20:37:51 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: media: renesas,vsp1: Document
 RZ/V2H(P)
Message-ID: <20250409173751.GD22519@pendragon.ideasonboard.com>
References: <20250408193158.80936-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250408193158.80936-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250408193158.80936-2-prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi Prabhakar,

Thank you for the patch.

On Tue, Apr 08, 2025 at 08:31:57PM +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> The VSPD block on the RZ/V2H(P) SoC is identical to the one found on the
> RZ/G2L SoC.
> 
> No driver changes are required, as `renesas,r9a07g044-vsp2` will be used
> as a fallback compatible string on the RZ/V2H(P) SoC.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/media/renesas,vsp1.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
> index 1a03e67462a4..9d03b972f522 100644
> --- a/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
> +++ b/Documentation/devicetree/bindings/media/renesas,vsp1.yaml
> @@ -25,6 +25,7 @@ properties:
>            - enum:
>                - renesas,r9a07g043u-vsp2   # RZ/G2UL
>                - renesas,r9a07g054-vsp2    # RZ/V2L
> +              - renesas,r9a09g057-vsp2    # RZ/V2H(P)
>            - const: renesas,r9a07g044-vsp2 # RZ/G2L fallback
>  
>    reg:

-- 
Regards,

Laurent Pinchart

