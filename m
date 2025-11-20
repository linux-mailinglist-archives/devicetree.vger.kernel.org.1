Return-Path: <devicetree+bounces-240795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DA6C759A5
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 18:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4BAF24E2DAF
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D701536C5B0;
	Thu, 20 Nov 2025 17:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5uFQpvh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0002F1FF3;
	Thu, 20 Nov 2025 17:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763658681; cv=none; b=dV7U1rH+QFmpOsjFPliCw2VtUZepkpalyEJqGg0PRofIKfjDnek48mTPSLeumUZh8y01fNjzlR/AWcytyy1R/EkVwb2dZ4vmWnhkBO2CYh9KoJJLvif6PYa4BDF+InrNq+7XboViDGARowtAkqylkoOvvvpDhWadyoigCJeg4Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763658681; c=relaxed/simple;
	bh=TfM2YGVstdUmq53j7IGiDD+amyYXGtUqIi5XE9Ifz5g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EcYtEnAVGG/BgUFcCVw9ZNvuwXUHpca9VQeDIsMVUBdgDTJWrUhxFoUO/4x89k63W56olXGzMCf9pMfuquT0JJh6n7GIPtjNFkqbR2fdKFOQ9h/FoJmTcaT5Gwp0d20pEXDjQkPbooEAC1iC0Phat90Ak6v2zGkDEQ2QrNTL3Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5uFQpvh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CA96C4CEF1;
	Thu, 20 Nov 2025 17:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658681;
	bh=TfM2YGVstdUmq53j7IGiDD+amyYXGtUqIi5XE9Ifz5g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c5uFQpvh4EUbZUfHI+5dPnMVhzGhcSvQWpCEZdWd9vKaFLSpJcbsiNlywguxdr/3Q
	 2pu7Pn2ytetA9M7shWSXDZfs/I5HVOtl/RQT/Dap0d0gjW/wnBVey2VN99wk3u+CVx
	 +POI0wDOrFmOt5lpqkTxQh4eXMgNo+lB21aD2KkGPXOoMT3FCwG547zhHbTyjnwW/6
	 5w/9/cnJDPUgPAZx0H4Zgu9G9yCkj3OdamRno+nFbXp1zU0EJDDuHhd3/foxfSH0wa
	 MQlAwk7ObCBIBJuRIDY+VEnPTi5QhMCeQ3OlwUIXkAgK3DAkVOnzJpBIa2x9c5IWCH
	 EPI5YSHLK0d4Q==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506
 VOP
Message-Id: <176365867573.207696.11271190998956084830.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


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

[2/9] dt-bindings: phy: rockchip-inno-dsidphy: Add compatible for rk3506
      commit: 323c5c05a0a07b931ede1fa0a3396a1a165ed798
[6/9] phy: rockchip: inno-dsidphy: Add support for rk3506
      commit: 785a9d5bb145109558063080ebc9a3e8be86471d

Best regards,
-- 
~Vinod



