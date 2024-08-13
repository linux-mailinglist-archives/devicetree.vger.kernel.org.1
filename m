Return-Path: <devicetree+bounces-93302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8A795063D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 15:18:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D4CD1C21805
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 13:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 375A360EC4;
	Tue, 13 Aug 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=sntech.de header.i=@sntech.de header.b="G244lL1n"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6509D29A5;
	Tue, 13 Aug 2024 13:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723555103; cv=none; b=FBYJSLUcwjp6Svb+7AJzehzS8qrQq0ayryBFjHRj3qK56R75iXj0NPZPI8PkZOQUp8WDHiJbeAeDnOGg12TXWbSzsJoazdKF0OA1kcW/ikz+d5MmxiDJcfGpjDCkd7a3T9TUS2JToOzQlDkTGmbYn7e3xG/yf8fW6KOADRB1SyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723555103; c=relaxed/simple;
	bh=QxJgUlPp+do3355NmsB8bX6OEgdTHtbytcB/7x2W4As=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=g+NSe8RdKT+nX2URG5GkJFU3eegTdF8L20MBLhaluNyzBhw1eJks3oUZZYtzAPRweYK1hm5al2uFKIiR9sAVe3jiNa5UbWsawuQZzGfaJ5e9zTPXDlAKRkOGoV/MIT/uGaY0NFKyzAiDPd9TH+cdAj9U48Ozk5kViuAAb0RDX0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=fail (0-bit key) header.d=sntech.de header.i=@sntech.de header.b=G244lL1n reason="key not found in DNS"; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u74mvDQoeCXxOK3A7GukZyX7dsdADP3JWCfmDGUIEGM=; b=G244lL1ngDJeW4mSEkMPunTGgZ
	/ehrSjWm/ejw43wPeicvWorefz2lc/yZzFO9V++8XJA6BHY004sOLTnhHx1rJz5cY04Ckd6u0jRNx
	h/tJKWztwZmdKL4/33O0V+WL1HurI2lCZG1XhgieX+sUc/iNNE+ofdzPsqOktTecwwOZVbzrMS4IS
	GASCXYL8nNBHR47cVUG0wLVEjNVWuBI2x7+vFhxpsYOEfoZo4D9O8G6w2TWxYt8JLaQnuUijHWBfE
	YDJ/GX8SZ/s+tJ+SS4CobMFdwEkcfGiLetiny2/HOprCClkNqU/ZF+oXVsaZ9kkwAjC+7jGL6a4u8
	nxzQdBYQ==;
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sdrP9-0001iC-Ii; Tue, 13 Aug 2024 15:17:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject:
 Re: [PATCH v3 0/5] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Tue, 13 Aug 2024 15:17:37 +0200
Message-ID: <2006431.fxN4lLDhpz@diego>
In-Reply-To:
 <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
References:
 <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 7. August 2024, 13:07:22 CEST schrieb Cristian Ciocaltea:
> The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
> 2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
> different from those used in the previous generations of Rockchip SoCs.
> 
> The controller supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
> 
> This is the last component that needs to be supported in order to enable
> the HDMI output functionality on the RK3588 based SBCs, such as the
> RADXA Rock 5B.  The other components are the Video Output Processor
> (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for which basic
> support has been already made available via [1] and [2], respectively.
> 
> Please note this is a reworked version of the original series, which
> relied on a commonized dw-hdmi approach.  Since the general consensus
> was to handle it as an entirely new IP, I dropped all patches related to
> the old dw-hdmi and Rockchip glue code - a few of them might still make
> sense as general improvements and will be submitted separately.
> 
> It's worth mentioning the HDMI output support is currently limited to
> RGB output up to 4K@60Hz, without audio, CEC or any of the HDMI 2.1
> specific features.  Moreover, the VOP2 driver is not able to properly
> handle all display modes supported by the connected screens, e.g. it
> doesn't cope with non-integer refresh rates.
> 
> A possible workaround consists of enabling the display controller to
> make use of the clock provided by the HDMI PHY PLL.  This is still work
> in progress and will be submitted later, as well as the required DTS
> updates.
> 
> To facilitate testing and experimentation, all HDMI output related
> patches, including those part of this series, are available at [3].
> 
> So far I could only verify this on the RADXA Rock 5B board.

On a rk3588-tiger-haikou (including its DSI hat and my preliminary DSI
driver) it also works.

Even with both DSI and HDMI at the same time. Both hdmi plugged in on
boot and also plugging it in during runtime of the board, generates a
clean image on my 1080p display.

So, series
Tested-by: Heiko Stuebner <heiko@sntech.de>




