Return-Path: <devicetree+bounces-137657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C4A0A355
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 12:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9499C7A44AC
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 11:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8341D194C92;
	Sat, 11 Jan 2025 11:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="IZ8Bp6y9"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19ECE193425;
	Sat, 11 Jan 2025 11:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736594849; cv=none; b=CKPFLHxsOKK/6pNoodDulafiD9vNenJZqAjS3RJ8hSo2HhU/ruiJIj67m8XnIa2EZXW0M0z5Or+Wr29dsdHJzhtEUq3l/i0wX9cTWpkSa4eheSZtPoBRcy7IqjIOKYz8dubP1H9ljCmmUAq/SM+6J1qBjIpm/Q+4c41kf3Z6jG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736594849; c=relaxed/simple;
	bh=NeBuZILsPjjUWdt5mwyKbdEUIMmu4nNs1dDoee6y3fM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FJTcmwvUgNW98AYacBRqCJPazhw3zeQyLKieKTb/B5Y73dYWtBbUrHgfrSv9dorYBeGYPhsWcm+hv337S1fzLwqYETlsLNqBu7PZlPMZlYwV3ymyQ0hTwVDSOtlWLal1wXz0U+hh6e4JYnuXsezA9MAMr9QGiBJySvHl+fODG0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=IZ8Bp6y9; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=axwj1
	a7CY9td4ZxrvElu+4T1mZkP2eLMBnmoeanF1YY=; b=IZ8Bp6y97t05YdKAo3FkW
	8+NHlaWeD7Ye1emzbe8zwYf6Yx0hAfnznTOyq2TWryIFY63IVNgmj0DyxmQ8fUZj
	stV6VSvL2Ju0Q3uDt7jQ1HzTCG30WT1t4BmT3+vZRbo7Pg1lixEfTQe0X16F465t
	iE1GJW5lGm7dvsN/cCCF2U=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wDn36JYVYJnnIeyFQ--.42561S2;
	Sat, 11 Jan 2025 19:26:20 +0800 (CST)
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
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v11 00/11] VOP Support for rk3576
Date: Sat, 11 Jan 2025 19:25:58 +0800
Message-ID: <20250111112614.432247-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDn36JYVYJnnIeyFQ--.42561S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw1xuryUGryxXrW3Zr4xZwb_yoW5uryrp3
	95C3s8XrWxGF1jqr4kJw1DCr1SqanIyFWfK34fKw13Ja4qyFyIkrWa9r1Yvr9xX3W8Zr4j
	9F4Sya1UKanFvF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UkrchUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gzRXmeCTmhtaAAAsX

From: Andy Yan <andy.yan@rock-chips.com>


Patches that have already been merged in drm-misc-next are dropped.

PATCH 1~9 are preparations for rk3576 support
PATCH 10~11 are real support for rk376

I test it with a 1080P/4K HDMI output with modetest and weston
output.

If there are some one want to have a try, I have a tree based on
Linux 6.13-rc6 here[0]

[0]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v10

Links to V10:
https://lore.kernel.org/linux-rockchip/20250110100832.27551-1-andyshrk@163.com/

Changes in v11:
- Remove redundant min/maxItems constraint

Changes in v10:
- Move interrupt-names back to top level
- Add constraint of interrupts for all platform
- Add constraint for all grf phandles
- Reorder some properties

Changes in v9:
- Drop 'vop-' prefix of interrupt-names.
- Add blank line between DT properties
- Remove list interrupt-names in top level
- Drop 'vop-' prefix of interrupt-names.

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

 .../display/rockchip/rockchip-vop2.yaml       |   97 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1473 +++-----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  275 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1798 ++++++++++++++++-
 4 files changed, 2377 insertions(+), 1266 deletions(-)

-- 
2.34.1


