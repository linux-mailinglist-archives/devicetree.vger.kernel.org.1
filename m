Return-Path: <devicetree+bounces-231802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B239C11B15
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:27:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ABB21A630A2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4012F39CD;
	Mon, 27 Oct 2025 22:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="CRF4vxI3"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151692DF6EA
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604018; cv=none; b=X/k5l5uXC8WYOaxXuvwWXpxiENC64pmplYVOzAgA+1E0QfKaECZBjS7SrqYfj8EaEq20TemUuT7YnnX3xb74qTDqGwzIZjXrzV7gQ2sLrYx8yr4k37q8w16RtO/3a/ykWwDu4ixEG0ne/gxxNzH71vA6+1qeFeDsOXYmzfjXonQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604018; c=relaxed/simple;
	bh=JtCpqLjogAgnkkq5jEJlUF7nafrHhCAohKr6UYuwGKw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VQil2MPhKW3rzCp/xfTh/rLFP5f42fZS0eCNYRu/fPpyHUiKVeu0ol93BxXPwVqMF+JWN7+Vj/5DzQRVosxPKIREOL2k26hWqfJTLukhcZ+97FgE3fGFurkZzB904vnhHRQEx87HK6D0xT2K2g8TifcuKW7wDskRKB7KvbCKaZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=CRF4vxI3; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 497B0E9B;
	Mon, 27 Oct 2025 23:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761603907;
	bh=JtCpqLjogAgnkkq5jEJlUF7nafrHhCAohKr6UYuwGKw=;
	h=From:To:Cc:Subject:Date:From;
	b=CRF4vxI36CsIYxjAJZ1og3kWsZnLsKbKMcxr4oc5Lfcu8tqRYNv2ncgl32mQv5u5D
	 0DHMXg6uF4J4ebQCIzAPpJ0SXAuWQCTmGgZBhM+G5L5EiJIShmM1LnG3+IyCfXg9U1
	 STKoTKjhTLI+fhZgaLmj65pY57Qw2UDJQg8eBQ9U=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 0/2] drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio
Date: Tue, 28 Oct 2025 00:26:39 +0200
Message-ID: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

The dw_hdmi_qp driver supports a "enable-gpios" DT property that is not
documented in the corresponding DT bindings, and is not used in any
upstream device tree sources. This patch series renames the property to
"frl-enable-gpios" to express its purpose more clearly, and documents it
in the bindings.

In the previous these two patches were part of "[PATCH v2 0/5] arm64:
dts: rockchip: Add device tree for the Orange Pi CM5 Base board" ([1]).
I have split them from the Orange Pi CM5 Base DT and rebased them on top
of the drm-misc-next branch to ease integration.

The other main change compared to v2 is the rename of the property from
"tmds-enable-gpios" to "frl-enable-gpios".

[1] https://lore.kernel.org/all/20251005235542.1017-1-laurent.pinchart@ideasonboard.com/

Cristian Ciocaltea (2):
  dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
  drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main
    struct

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 11 +++++++++++
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 14 +++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)


base-commit: 18ff1dc462ef6dacba76ea9cb9a4fadb385d6ec4
-- 
Regards,

Laurent Pinchart


