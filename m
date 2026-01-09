Return-Path: <devicetree+bounces-253228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FEED08B56
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:52:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F8B2301ABB7
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA7C33A9CD;
	Fri,  9 Jan 2026 10:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="F2KAnBkX"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FBE2D73A9;
	Fri,  9 Jan 2026 10:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767955925; cv=none; b=VjpxJ1HwhuswyisfF0qgtlf8E1udHWgCefb9689KbcZnzG1VZhlx/4JTaglziCYLekjOE9KyDg5G6Di+DxLPmzRdI/1xMFY0C0Pgf3NHPp46WoBPbj/QLnMbupXgC7+3Eex3o5pdaGNpPnSo4PHB7pMsuI6yWqu2IiZ7CwI+nnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767955925; c=relaxed/simple;
	bh=oxLO5SHQ5zrJqsUlnWK1EklvzR1rtNg7eQgrP8RhlWM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uxMxDHKOFVJRWgll3c6dhazahQTj9pKk0StteAJrNAp0ec/dFIUN9214/yV8WURGJpuG0Pwz0KIrrbvu69Pw1WHPAQg7jD3K6szvGP3vQMsV9MdDkVtyLWC0xqHU2GlfoFJQZD+EF4fv609ML/g6AuP20PnmZAEZO7g7K3ifBs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=F2KAnBkX; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dvijv8uUpBbSdpjrMPdUmY9MqFhbG/70BQyKWf7xOy0=; b=F2KAnBkXKhmjoyFSFhoLcIB1UY
	YlCl4a0i0k1Wkn2OjubQVUv8d7+hFouwIXlum5Ezf2sRdpqCkY8IyXh0PAwQcPZ1lirsjgoijnPkg
	1pnRsYycmZl6sPlJvGAOtI1QTl0QWfPUJELoUVkF8jbjK8Wep1cjWOkuH7JZMtaCOaNo6IdJTW020
	vI9Ar+E61U5+tYIOtA9SmMJTfulOUDICm70jtb7QlkyM6HWXmtRrm8KoQAvx2lzFj1/5ES7gMncuS
	v+NyVWPBuD/5gg0Uxq4wJLYzLzWu54FHveuh1SX8T+XioojSCo6JGN0KAfVhBjDbb2CWVbEw5wbk0
	kb4WV4Dw==;
Received: from i53875b6d.versanet.de ([83.135.91.109] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veA5t-001cZG-Ra; Fri, 09 Jan 2026 11:51:50 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Subject:
 Re: [PATCH 8/9] drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP
Date: Fri, 09 Jan 2026 11:51:49 +0100
Message-ID: <2629918.TLnPLrj5Ze@diego>
In-Reply-To: <4e01f121-1912-4897-98e8-cb543a501707@rock-chips.com>
References:
 <20251106020632.92-1-kernel@airkyi.com> <4072834.X9hSmTKtgW@phil>
 <4e01f121-1912-4897-98e8-cb543a501707@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Freitag, 9. Januar 2026, 02:26:00 Mitteleurop=C3=A4ische Normalzeit schr=
ieb Chaoyi Chen:
> On 1/9/2026 3:03 AM, Heiko Stuebner wrote:
> > Am Donnerstag, 6. November 2025, 03:06:31 Mitteleurop=C3=A4ische Normal=
zeit schrieb Chaoyi Chen:
> >> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >>
> >> On the RK3506 platform, there is no iommu hardware. And even on
> >> platform that have iommu hardware, it should be possible to use
> >> VOP without enabling iommu. In this case, a contiguous memory
> >> space like CMA should be used.
> >>
> >> So this patch removes the dependency on ROCKCHIP_IOMMU.
> >>
> >> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> >> ---
> >>  drivers/gpu/drm/rockchip/Kconfig | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockch=
ip/Kconfig
> >> index b7b025814e72..a056d419190c 100644
> >> --- a/drivers/gpu/drm/rockchip/Kconfig
> >> +++ b/drivers/gpu/drm/rockchip/Kconfig
> >> @@ -1,7 +1,8 @@
> >>  # SPDX-License-Identifier: GPL-2.0-only
> >>  config DRM_ROCKCHIP
> >>  	tristate "DRM Support for Rockchip"
> >> -	depends on DRM && ROCKCHIP_IOMMU
> >> +	depends on DRM
> >> +	depends on ROCKCHIP_IOMMU || !ROCKCHIP_IOMMU
> >=20
> > I don't really understand this yes+no line :-)
> >=20
> > Can't you just
> > - drop the dependency altogether
> > or
> > - do a depends on ROCKCHIP_IOMMU if ARM64
> >=20
> >
>=20
> This trick is called optional-dependencies [0]. In addition to the=20
> familiar depends on ROCKCHIP_IOMMU part, the newly added !ROCKCHIP_IOMMU
> ensures that DRM_ROCKCHIP can still be built even when ROCKCHIP_IOMMU
> is not build.
>=20
> [0]: https://docs.kernel.org/kbuild/kconfig-language.html#optional-depend=
encies

thanks a lot for pointing me to this nifty feature :-)

Heiko



