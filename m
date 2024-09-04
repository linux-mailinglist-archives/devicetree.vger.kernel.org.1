Return-Path: <devicetree+bounces-99983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BDD96BB7F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:03:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B67441F24DA9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC871D5CF4;
	Wed,  4 Sep 2024 12:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="l1FPea8S"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B7B1D58B0
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451406; cv=none; b=tlLaA/Pxl6JGfISs8ndaQKYIuFUbA8X0p8jIYARHhlJ8+IF5UF0h7xX/uL4NtuE0YVXJAZRRkNAXzpwkrgLEM8XIThFsJHxCj7tGr7dRgGDVPBFsA4sj3rYXLSiITYgpgWtdGCfGl6uMpN/7xZe1R944ah/q1fkkQ5TvXjBu6cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451406; c=relaxed/simple;
	bh=KQAJgQ/WZm7Px/41njQafztQNj1vCABDeNJ0osF/6fg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CbwQ95SGyB03gd/Y0Qp0bY9+za/NABQmD/eTa+I7dK5Hs7I9uTqc5MOTrsrnTmrRjVPF0CoXfT7RdLHwMHD1i+2BNpavChCybH/SpGLTnXYYUZOfggFGHGmPkLkpk5bclxv/gtZSJavl2Ho+m+0K1DX+e1MGwJBINZVdaydLV5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=l1FPea8S; arc=none smtp.client-ip=220.197.31.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Pox9q
	DQ86t18rogfI7aGKkiX3ROJpF4gTG4iFYPl5Og=; b=l1FPea8SzzM9Y5ECYKdc/
	fJ8H8bthWBycnKgg1kv94fYoYm2GbgYn4XViTdUXL4bfJkRRD9WVWK9V06rTZFwt
	2dmLSNt691kO97SoPOz+88kuqhmG8WbgHhKUiQyf3VcRczrKQGvw3g+dCp8h12Y9
	sGw4GbRneWfagi1utAHVEc=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S2;
	Wed, 04 Sep 2024 20:02:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Cc: sjoerd@collabora.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	hjc@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 00/11] VOP Support for rk3576
Date: Wed,  4 Sep 2024 20:02:27 +0800
Message-Id: <20240904120238.3856782-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wA3HxFgTNhmiRMZCA--.50872S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFyDArW5Aw18tFy8XF1UWrg_yoW8AF43pw
	s8ua43XrW8CFy2qrn7tws8CrWrtwnayayxKw4fG3W3Jw1IyF9rGr9xuFn8ZrZxtF1xZa1U
	Crs8KayUGF4Ivr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UMHqxUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQdQXmVOCpvzKwAAsC

From: Andy Yan <andy.yan@rock-chips.com>


Thanks for the basic work from Collabora, I can bringup a HDMI
display out on rk3576.

The hdmi depends on WIP patch from Cristian[0]

I test it with a 1080P/4K HDMI output with modetest and weston output.

If there are some one want to have a try, I have a tree here[1]
[0]https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v2

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (11):
  drm/rockchip: vop2: Add debugfs support
  drm/rockchip: vop2: Support for different layer selet configuration
    between VPs
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576
  phy: phy-rockchip-samsung-hdptx: Don't request
    RST_PHY/RST_ROPLL/RST_LCPLL

 .../display/rockchip/rockchip-vop2.yaml       |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1560 ++++---------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  274 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1989 ++++++++++++++++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c |   17 +-
 5 files changed, 2701 insertions(+), 1140 deletions(-)

-- 
2.34.1


