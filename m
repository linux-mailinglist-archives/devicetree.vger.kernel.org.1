Return-Path: <devicetree+bounces-238352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D78C5A49D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AB283AE2EF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472182C0293;
	Thu, 13 Nov 2025 22:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="YEkTkthx"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0045435957
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 22:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763071810; cv=none; b=DTIH+qoseEmb70WDSy+HUdNkfTi/YvywmdVFZ8U4R51j28uflbgxgNgHDXZk2nTTXhDGoDy6oQf+O3vAoWe8r+XazG+9ZNBWH9+3B8VS1XwGIr1GMLwH/r+oqlPomwme602wJGSOn+/2hl74zjdAsHDdnaseFe1W+8aRpeWvkgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763071810; c=relaxed/simple;
	bh=dKdEN6uk0uJTL9PTysEpXfawWX1Up2xnGgIfoHRGKbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d5y7uUthqH/O2JycNRnWgfnD759jY4zcZI/KE11H048VCA9zmb9Nok2KTmHCAx1xzD/tY/317HiVx1l7FlzIqjfKE4t38ZtE+LG8SczzL4C1IOCUEiT6elT4J+5LUDu+wrR/VgL1e0revKOOoPWJ+IsHd+mHAFFNIQq8fqUexgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=YEkTkthx; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-165-222.bb.dnainternet.fi [82.203.165.222])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 9B62DA8F;
	Thu, 13 Nov 2025 23:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1763071683;
	bh=dKdEN6uk0uJTL9PTysEpXfawWX1Up2xnGgIfoHRGKbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YEkTkthxQzEcJJhVrVrzjcyCeXDHk0PRd12zVw3NKYtS1fZEUFNHTXi+TqT2nCGnD
	 4XSmGjRSfT+B2cQIAvoIdHKu1kIQRe5sRgyipDliGwwZck+5BGH98n7ClTy7ntDcCm
	 zKvDpmFq4nUVZpKGqGmnqHDx3vdhemfmfVsLr+Gg=
Date: Fri, 14 Nov 2025 00:09:51 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v3 0/2] drm/rockchip: dw_hdmi_qp: Fixup usage of
 enable_gpio
Message-ID: <20251113220951.GA5912@pendragon.ideasonboard.com>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>

Andy, Heiko, Sandy, could one of you push this to drm-misc ?

On Tue, Oct 28, 2025 at 12:26:39AM +0200, Laurent Pinchart wrote:
> Hello,
> 
> The dw_hdmi_qp driver supports a "enable-gpios" DT property that is not
> documented in the corresponding DT bindings, and is not used in any
> upstream device tree sources. This patch series renames the property to
> "frl-enable-gpios" to express its purpose more clearly, and documents it
> in the bindings.
> 
> In the previous these two patches were part of "[PATCH v2 0/5] arm64:
> dts: rockchip: Add device tree for the Orange Pi CM5 Base board" ([1]).
> I have split them from the Orange Pi CM5 Base DT and rebased them on top
> of the drm-misc-next branch to ease integration.
> 
> The other main change compared to v2 is the rename of the property from
> "tmds-enable-gpios" to "frl-enable-gpios".
> 
> [1] https://lore.kernel.org/all/20251005235542.1017-1-laurent.pinchart@ideasonboard.com/
> 
> Cristian Ciocaltea (2):
>   dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
>   drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main
>     struct
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 11 +++++++++++
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 14 +++++++-------
>  2 files changed, 18 insertions(+), 7 deletions(-)
> 
> 
> base-commit: 18ff1dc462ef6dacba76ea9cb9a4fadb385d6ec4

-- 
Regards,

Laurent Pinchart

