Return-Path: <devicetree+bounces-253004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C480D05B97
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 20:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EB84302CDDC
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 19:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74458314B60;
	Thu,  8 Jan 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BD6a4vJX"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789293002CF;
	Thu,  8 Jan 2026 19:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767899093; cv=none; b=hmRbRz0b4MWeSKuNCtw+D1zwjG72weFU8i1Xg0nwqmBwoAtbxzMJMK8EYKqS9BwiXhw8k8TcWrWlENSYDP0McrTC3ZvYnlNHsqjlJvsYg1TtTyBNJ0M/jRJxq5lLduAbNvBAuI2xZcw7dX1uNeUl6ZDNa7ydBXzSGpnVZ6WN3Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767899093; c=relaxed/simple;
	bh=zNl6lb1HN6EqSLtCVuMl20ghZ7Ek+AeHO/vR/mdeEwg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=suz3qh6ftl02/S9BU7bF+g91h1hx5hVVLM96EfG71/X1wt+8xV/TM7PHOa6EUIMMRh7Mxww79x4B3Tcxj/YKkk2C/yt8K8x/W3epo8DVhc4iyRpMcNt1TsAuFMWbcehnb/R0MjPzRR4r9nBHy9EqR8MNAjb0NWE+vWY2/nr3ZfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BD6a4vJX; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WBscWiAcWdp/hFnULczKZ/bdY9UUlluznf57AoT+VeU=; b=BD6a4vJXOQQcwp946mh2IuOht6
	QCqrXoCfVvwFYyjRpEyGtotTZjI5gEECIGbVWgYpFVizelst7RqVFw7V6ipRBUFYfFi//vrk4t02L
	lNoyQTwoyh6tdVBIwGrPBP8PfuUrgw6itGx7kyw66jq2iLAcjOai7M3FeJv+sFgRtctCEMgYmLvnb
	x8JqNBdRGMFgDMN3XldtxauDM2KgODhvWrNSBTAwsiCqPKlneKIL76yBa2XnEYfyIwPoF52M62eRo
	KIjeQBcXHdkmxNDvAJrgK/7opHfNwQ3j3hYAUyPcsT2u/A/RapUegEkebxEOeHdfMgMm3QKZkEIdT
	UNqPZt/g==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdvJI-001XT5-Fo; Thu, 08 Jan 2026 20:04:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506 VOP
Date: Thu,  8 Jan 2026 20:04:36 +0100
Message-ID: <176789904486.3303270.3558903343785181315.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 06 Nov 2025 10:06:23 +0800, Chaoyi Chen wrote:
> The VOP on rk3506:
> - Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
> - Support RGB interface.
> - Max output resolution is 1280x1280@60fps.
> - WIN1 layer support RGB888/ARGB8888/RGB565.
> - Support Gamma LUT.
> 
> [...]

Applied, thanks!

[3/9] dt-bindings: display: rockchip,dw-mipi-dsi: Add compatible for rk3506
      commit: 3af0f4d5d433921fa399bbe6396221c8a9985869
[4/9] dt-bindings: display: rockchip,vop: Add compatible for rk3506
      commit: 7919273e495b9154cc7e5f7713f002290f4d9597
[7/9] drm/rockchip: dsi: Add support for rk3506
      commit: cabeacc7eadc2d0033a2fc7304dfb900f9a32095
[9/9] drm/rockchip: vop: Add support for rk3506
      commit: ec27500c8f2b65a3be6ce39a5844d6d246d1b2b0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

