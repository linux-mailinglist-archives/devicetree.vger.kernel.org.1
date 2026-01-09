Return-Path: <devicetree+bounces-253118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 76155D07AE8
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B18A301C805
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607AE2F9D9A;
	Fri,  9 Jan 2026 08:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="gocwaOuH"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FD41925BC;
	Fri,  9 Jan 2026 08:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945728; cv=none; b=dVnB24tgQ7BCmo23ClLdNBA3WbU5ZE2LWDtOgl+590sjdlopqxDHYr/GWExRfAphckKdWQCDNxEYR98lZPPDRKezzfjTxiVi5uBQL5w+8CW4UR8qXHB8Yohw5P0jOcVkFgI3nE/DdXrErjo+oTjFuu6ED3XFuhqzDwuvx0nHYI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945728; c=relaxed/simple;
	bh=lRsPnvIQVOUZKFBALAYriHGMpEogPABlQLSsfupSZkE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UOVvfLpyhG9030+Y51BZXd9viIq111Pd8oQG9oexDbnvjAAw4bte0xlf5Awg4g/NKu64naZgvrW5b4mrHEIf2bLzTdz3o6D9n4nU5d35lmBx/JRo8/Hs5SVZy3X/ZtUrW2Qf0UsxN55IZ52o4CfJAvBGuxK+9jBk45Cc4c1dSpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=gocwaOuH; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=qh
	xsnG7oHQhHQY/RtF0hhxwdrp2042d1OP3qas3MQFs=; b=gocwaOuHbVwslHW7cO
	PmHP4h4jSvsNX8ANIEzJ4jpgM6y1YQK4YlCmk0+1k2GzpaOfAkG0TY3s3UJxzZXJ
	igeNEfz3oXY59JZFwuNEvE33S3CNlFSwd4+447xzPOsrJYw8g7BpedkALupUYVCz
	khvlW5wGPMRbjoX8Xl6VvwlTo=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S2;
	Fri, 09 Jan 2026 16:01:00 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	hjc@rock-chips.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 0/5] Add DisplayPort support for rk3576
Date: Fri,  9 Jan 2026 16:00:43 +0800
Message-ID: <20260109080054.228671-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw4rWw1xXw4UCr17Zw4Dtwb_yoWkXFgEka
	4fZryDXa18uasIyFyxJw4fW3sxJw4qgr4kKF15tr1qqFy8A3W8ta4kAa4UJ3W5AF47Zr1f
	CryUXF1kCw13WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnVWlDUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxRwPbWlgtby92gAA3c

From: Andy Yan <andy.yan@rock-chips.com>


The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in qual pixel mode and support for MST.

This patch series aims to add basic display output, not include audio
and MST, which will be the work for the next stage.

Only test with 2 lane standard DP port output now.



Andy Yan (5):
  dt-bindings: display: rockchip: Add rk3576 DisplayPort
  drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
  drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
  drm/rockchip: dw_dp: Add DisplayPort support for rk3576
  arm64: dts: rockchip: Add DisplayPort dt node for rk3576

 .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 ++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 12 ++------
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c     | 27 ++++++++++++++---
 include/drm/bridge/dw_dp.h                    |  7 +++++
 5 files changed, 87 insertions(+), 16 deletions(-)

-- 
2.43.0

base-commit: ad939ed1f8108513e84e93da90ad7ea31b56ef87
branch: rk3576-dp-upstream


