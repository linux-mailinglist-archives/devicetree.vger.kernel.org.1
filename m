Return-Path: <devicetree+bounces-132516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D9A9F75E0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:41:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BE841896726
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 07:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841B121770D;
	Thu, 19 Dec 2024 07:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="hY1Msfr4"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A6F1FA8C2;
	Thu, 19 Dec 2024 07:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734594022; cv=none; b=tbiHk+jOi3F8iRdhpinhxBe+4njSSVeMASrqJ+mucqi87owSVN+fTv+LjVsUmVMQe1O7xpq3Y3hzcQBls10Gjzy4t4creI7ZFFUxHIwR8kF1FNxeRdmq9KhVgodnceqxERL3nfnPTbdx//9WitEVB/z/6jowcLOfILoShRFHSX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734594022; c=relaxed/simple;
	bh=VRJbeKBjn6s3cjYWxqNt8maZkIxAm1QTFUEvv3lAeHU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WRy8XPhjYQP1YfhauQf7O7co97HCk/ss4NlWyH3fikw6SmeXqPg6rZON2UcjMZAT4QeaH7Sm2UJOObrbsdtqkJ3dQnLs8h9dJG4y52ejTilh5/Nva5bXLKr8Xn625bMK566NmwO5/DgiunIIjOuLTicnvnQXIPE5tHP9AKXNTN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=hY1Msfr4; arc=none smtp.client-ip=117.135.210.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=B6bBn
	hQ+Yihvnob8cdt9x+XWI3cSDJeBWRRdp8mfg8Y=; b=hY1Msfr4b51Z/y2FwVrS7
	wAxtMk3NoMueuRYIgmqhDuj4qdsv1mKFbgOUZUTA1YZQDL9A7EFOvnx3MUm38TlS
	ExzFYbVO7P/3cikxyaXF90nOpEFFnSK38PrHQLfoqiOanDrga29DbVEufYm9SCa4
	eo7i0tP2qNjRxuIvIrK6X4=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wBnUtq0zWNnL5jUAA--.6492S2;
	Thu, 19 Dec 2024 15:39:36 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	daniel@fooishbar.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v7 0/9] VOP Support for rk3576
Date: Thu, 19 Dec 2024 15:39:08 +0800
Message-ID: <20241219073931.3997788-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBnUtq0zWNnL5jUAA--.6492S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr4Dtry3Kw1UJr48uFWrAFb_yoW8KrW5pa
	98CFyrZrWxGFy2qrs7Jw4UCrWrKFnayayxG393K3WfJ342yry7Kr1a9F15Zr9xX3WxZr4j
	93yfCa47KF42vFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UEeHgUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQS6XmdjzK8brAAAsZ

From: Andy Yan <andy.yan@rock-chips.com>


Here is the V7, because I find that I missed sync with Heiko's
dp+dsi maxclk verification patch[0]:

Patches that have already been merged in V6 are dropped.

PATCH 1~7 are preparations for rk3576 support
PATCH 8~9 are real support for rk376

I test it with a 1080P/4K HDMI output with modetest and weston
output.

If there are some one want to have a try, I have a tree based on
Linux 6.13-rc2 here[1]

[0]https://lore.kernel.org/linux-rockchip/20241115151131.416830-1-heiko@sntech.de/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v6

Changes in v7:
- Fix rk3588 dp+dsi maxclk verification

Changes in v6:
- Add a blank line after hardware version check code
-  More specific explanation about the AXI_BUS_ID register bit of
   cluster window.

Changes in v5:
- Add axi id configuration
- Remove the non-existent CBCR scale register.

Changes in v4:
- Typo fix: selet->select

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check
- Add comments for why we should treat rk3566 with special care.
- ordered by soc name
- Add description for newly added interrupt
- Share the alpha setup function with rk3568
- recoder the code block by soc

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (9):
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Support for different layer select configuration
    between VPs
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576

 .../display/rockchip/rockchip-vop2.yaml       |   13 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1454 +++----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  271 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1797 ++++++++++++++++-
 4 files changed, 2307 insertions(+), 1228 deletions(-)

-- 
2.34.1


