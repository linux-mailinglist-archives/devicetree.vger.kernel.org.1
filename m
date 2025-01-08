Return-Path: <devicetree+bounces-136611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F4A05A8E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:54:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2DBE16694E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A15FC1FAC5E;
	Wed,  8 Jan 2025 11:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="XZNhefNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEEA21F9439;
	Wed,  8 Jan 2025 11:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337208; cv=none; b=spLoRVCTevuejcvEwl5P2YSV69xvuKk8R25FEmpDNgi+BzhU3m9ZEZf557QAIX8Oy6LsVO5xk+AN9AmqcAp78Yk5R1a5fknNvucwaOiN+GtPkxEvTVNN1cnh24azCQuSy5JkjOFHfYG1jf/g+jkDJdXbulVS1QLusTOikEfHbeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337208; c=relaxed/simple;
	bh=o1Vn4nlp5io5VZ5I8SBEfGHqGVWI6p/1Hv4S4o0uaFo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZOX3OBKGZB8yUYiAYiBwFpCsWnVLMlqbYksqzje2ZGsOzMe6kzMTD3BVWQJZwmMQgzRrZhnGyM61nwrMx/irAy10Yg9xE6bNzrbUrYr4Zau8kSOntTLKg0gXfX89ctMhrgRNGI3rJLILVxGCOAviKtWoq4Hy/xx/667D0xqzutM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=XZNhefNJ; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=4LcjG
	yekeFEURKdSLZKry28vQydjU2mCOSzKHjhnX+w=; b=XZNhefNJ4KWubkSGIHFJS
	yYHDGtoWCQIegcZsYNUbqvb3tY2R94NmML6akr4P+cq5Re4zDfXAKkK732d0P6Am
	uSwZ7QudHoNzxRh9s0mq1j6rspcHNALSqZz/ZO0EAN3BZaX1MuNKEjKzrVltd2zn
	oonBQxbWzPvxycY8U8DulE=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHpyUCZ35n8Xn7EQ--.26804S2;
	Wed, 08 Jan 2025 19:52:40 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v9 00/11] VOP Support for rk3576
Date: Wed,  8 Jan 2025 19:52:17 +0800
Message-ID: <20250108115233.17729-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDHpyUCZ35n8Xn7EQ--.26804S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw1xuryUZryfXryxtFyrZwb_yoW5CrW3p3
	98Cr98XrWxGF12qr4kJw1DCFySqFsayFWSg3yfKw13Ja4qyrW7Krya9r1YvrnxX3W8ZF4j
	9F4Sya1UKanFvF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UvD7-UUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hHOXmd+YSuN9QAAs4

From: Andy Yan <andy.yan@rock-chips.com>


Here is the V9

Patches that have already been merged in drm-misc-next are dropped.

PATCH 1~9 are preparations for rk3576 support
PATCH 10~11 are real support for rk376

I test it with a 1080P/4K HDMI output with modetest and weston
output.

If there are some one want to have a try, I have a tree based on
Linux 6.13-rc2 here[0]

[0]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v6

Changes in v9:
- Drop 'vop-' prefix of interrupt-names.
- Add blank line between DT properties in dt-binding
- Remove list interrupt-names in top level in dt-binding
- Link to V8:
  https://lore.kernel.org/linux-rockchip/20241231090802.251787-10-andyshrk@163.com/T/#u

Changes in v8:
- Remove redundant blank line before drm_bus_format_enum_list
- Add a blank line before DRM_ENUM_NAME_FN
- Fix dt_binding_check errors
- ordered by soc name
- Link to the previous version:
  https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u

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
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check
- Add comments for why we should treat rk3566 with special care.
- ordered by soc name
- Add description for newly added interrupt
- Share the alpha setup function with rk3568
- recoder the code block by soc

Changes in v2:
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (10):
  drm/rockchip: vop2: Rename TRANSFORM_OFFSET to TRANSFORM_OFFS
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Merge vop2_cluster/esmart_init function
  drm/rockchip: vop2: Support for different layer select configuration
    between VPs
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576

Heiko Stuebner (1):
  drm/rockchip: vop2: use devm_regmap_field_alloc for cluster-regs

 .../display/rockchip/rockchip-vop2.yaml       |   83 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1473 +++-----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  275 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1798 ++++++++++++++++-
 4 files changed, 2361 insertions(+), 1268 deletions(-)

-- 
2.34.1


