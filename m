Return-Path: <devicetree+bounces-253227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF6D08B97
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE9C33094826
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CAB3385A6;
	Fri,  9 Jan 2026 10:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AAPEsk+x"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9458F33985A;
	Fri,  9 Jan 2026 10:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767955924; cv=none; b=SKhaQyUSrS9HAwkBTJgpDzFqiLdstqr/C8oLdWXY2HjveA7m/UNjd4GNoN2zqFQxXDrH/5CFGjwHRH35HDYWgV6rhn6ToST9j8QqxnIuTlK7ISpyt3BrbfWtlkzOTs4n6fSP5NJ9ZZwQ02wwaVT5oe8vIQeEu6ZshL4UR/RvX2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767955924; c=relaxed/simple;
	bh=9lQNb2q4CbIx4pkt2Ijpz8sD4OzrNTkPKDpPKC7VDKs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Rr0gELOKVLnYrYiBg/hOB8BCuhNPGwy2Y+YianG63gq+GNe91qPvpciZbQ2j+oCOc0+kTDN6pNgIeFvDMzcY29DZQDQwEZWN4TIOJQTeum+QT2juwanpy9wB2lqeQFB2FzWykBhasSV/5BAE6KSMeGWGhC8KSEF5vAajs/8Mkug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AAPEsk+x; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gwNEC5AE48ylOMzH/SaxYiiWRV8yyduKiL7IIFn5vPQ=; b=AAPEsk+x52EH28zA0vBkkdtnD0
	gtzr8zwh7ggSOviJHCy00uEidTwGJ9NiNSlHjy07hHzJWNr5A3LYNk9x0pIgilL0akDhudvP6mUQ6
	mpEoCN5uc3KLpLSyylxKzXBt3rOd9Zp8gdQpOcwsUKhcQ5F6nT23e3CRTPOoTmJpxhbcxzKgdV2Qb
	Jemff9KR/SxTqpZjE77A97+V+7cf+1nxp+NAG4H3ABl+OAKdcHxEqUTwtXsvtZcnh3O9SfMWhqJrp
	rXx7LpSnch/5kkjERnB1XfpH1WOzU1NfOH/rK6p2kyO8rcmGLpfc+c2JCH2v9A6ZiVJ/ub8r7o4hx
	vJjMZieQ==;
Received: from i53875b6d.versanet.de ([83.135.91.109] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veA5k-001cYs-6Z; Fri, 09 Jan 2026 11:51:40 +0100
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
Date: Fri,  9 Jan 2026 11:51:37 +0100
Message-ID: <176795589082.3371389.9844187707084142114.b4-ty@sntech.de>
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

[8/9] drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP
      commit: 0244539f9a4f3b564604dfe4d639f61cecec381a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

