Return-Path: <devicetree+bounces-134524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFE79FDBDB
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 19:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7988E188278F
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 18:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D846719067A;
	Sat, 28 Dec 2024 18:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="knDEfBmA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FB1E2AE84;
	Sat, 28 Dec 2024 18:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735411013; cv=none; b=nWr9o1tkYDjnMjci5HHjqW0yrhJGo4vKUSw9K71znoay/XOwDUG8zqlb5AiWkF5BYCe8y5ceW22BqPijZsLS9aMv92q1cWy62Bk1EyWONpjOttiD3WjDPP5xcnTMuXaqmRH1KfDhDfTfA3Hx7crN025xOP26AfzHgWj3kdsGujA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735411013; c=relaxed/simple;
	bh=C+vT3Mb5n2NmuINbHOL6ZOImMtIhn7yEGF29R3kEP/w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=to5Aw2ROQYBbeYnBjqyjPFPpJPzxqIDORqgT4QdDpDuSRLOKnr5ORYvoBuWsxWYPEdyUiorvbLaidVQxrUb0smpb7+mh8JRuySuSUPuo5hDS0Z0eCkkaa7nBKiLCLzYmtd9+MyBcOFr6tg+WfFenbo+RufFqxeRPVmo+sGq64Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=knDEfBmA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nBlPYUAfJE99prwgl1RwOc9LFZC3mnK2dVfyXf1Y5l4=; b=knDEfBmAo4iqovMBoT4w5yHZbU
	Ky08vorJm64O2z1rIvDky0lTMU+8TyVZfWsV2wO2ilqE8D/hOB7GWHxVRYuwNGhN2AGV3/79qXDko
	sFicTp/rDSp99YzjmdLtfe/T7k7/7HHgdAZ6JOGqxNYSpnkrlItRJE9oaXb8Ii0fcHoNAhqPkWLji
	g/fynF3ShxX2b3S0pbJn7W33TnqqN6yqVDCqrDvZEgIDyKliPFCmF10c+pxgkhSSF6oUs3bTO4ZP1
	Qns3DUv7+tyhT2EUuLQGA0v2JTSh00BqXkineWPlBfncxZIQ3g0NMOZZlVhzNdyOB5rVqz3GUikyn
	oOfuSUtQ==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tRbfx-000866-Po; Sat, 28 Dec 2024 19:36:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: krzk+dt@kernel.org, joro@8bytes.org, Andy Yan <andyshrk@163.com>
Cc: cl@rock-chips.com, robh@kernel.org, hjc@rock-chips.com, vkoul@kernel.org,
 devicetree@vger.kernel.org, detlev.casanova@collabora.com,
 cristian.ciocaltea@collabora.com, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 0/8] Add display subsystem dt node on rk3576
Date: Sat, 28 Dec 2024 19:36:36 +0100
Message-ID: <4950097.GXAFRqVoOG@diego>
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Samstag, 28. Dezember 2024, 13:21:43 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> As the VOP[0] and HDMI[1] driver have already been submitted for review.
> This series send all display related device tree part together.
> [0] https://lore.kernel.org/linux-rockchip/20241219073931.3997788-1-andyshrk@163.com/T/#t
> [1] https://lore.kernel.org/linux-rockchip/20241225103741.364597-1-andyshrk@163.com/T/#t

not to confuse you too much, I mainly meant that we were missing the
"arm64: dts: rockchip:" patches from this series.

The dt-binding patches are (already) part of the driver changes and
should stay part of those series, to prevent confusion of what part goes
where :-) .


Heiko


> Changes in v2:
> - Wrap commit message according to Linux coding style
> - Make "rockchip,rk3588-hdptx-phy" const for "rockchip,rk3576-hdptx-phy"
> - Make declare phy/ropll/lcpll reset line are not exit on rk3576
> - describe constraint SOC by SOC for vop2 binding, as interrupts of rk3576
>   is very different from others
> - Drop Krzysztof's Reviewed-by for vopp2 bindings, as this version changed a lot.
> 
> Changes in v1:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Andy Yan (8):
>   dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
>   dt-bindings: phy: Add rk3576 hdptx phy
>   dt-bindings: display: rockchip: Add rk3576 hdmi controller
>   dt-bindings: iommu: rockchip: Add Rockchip RK3576
>   dt-bindings: display: vop2: Add rk3576 support
>   arm64: dts: rockchip: Add vop for rk3576
>   arm64: dts: rockchip: Add hdmi for rk3576
>   arm64: dts: rockchip: Enable hdmi display on sige5
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
>  .../display/rockchip/rockchip-vop2.yaml       |  70 ++++++++--
>  .../bindings/iommu/rockchip,iommu.yaml        |   1 +
>  .../phy/rockchip,rk3588-hdptx-phy.yaml        |  62 ++++++---
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
>  .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  47 +++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 126 ++++++++++++++++++
>  7 files changed, 276 insertions(+), 32 deletions(-)
> 
> 





