Return-Path: <devicetree+bounces-304941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SETNKCAxHWqtWAkAu9opvQ
	(envelope-from <devicetree+bounces-304941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:13:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9761AC10
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 964173052478
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 07:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1B6382F31;
	Mon,  1 Jun 2026 07:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="BbEFmojq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973176.qiye.163.com (mail-m1973176.qiye.163.com [220.197.31.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10C01A3172;
	Mon,  1 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780297597; cv=none; b=hTYyAzH8EpercH3TWW4p0nW0d6yNqzsRz27t8arrt47gcHOIErpeuDEbuoM8ci4218fNC/+thzsUCe1zTaZQdWuiJkKSuoF+MLOKu9h/dkEj3Ks2IdwEp6daI7wxI1N/1kxlEozAh67BngO0WuuWr2JCheV6RaJXzZjf0ku3QHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780297597; c=relaxed/simple;
	bh=wqw08JPYOUOKuzSfhlH4BeLOTbghimyjLEV2ZXNzXDA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KS8NQ8T78/bYrotWqEtIhtPNQGC2r0hE8G36yD7KGSoiktYmahfcY64gehlXJyd3OGBGf9YlFDx/D2RDYq4y/kuleadFyRFti9Yt07l/YBk5Rx0dzYDnUXXOg9NJyaIeGUMnfsOqxd4USTDZbSNcIZ1CnbVVMbfNgkEfSLrOgA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=BbEFmojq; arc=none smtp.client-ip=220.197.31.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 408ded03f;
	Mon, 1 Jun 2026 14:51:04 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v10 00/11] Add eDP support for RK3576
Date: Mon,  1 Jun 2026 14:50:49 +0800
Message-Id: <20260601065100.1103873-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e81f344ad03a8kunm111da268257dd3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSkIZVktLTkgdGEsYGEpJGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=BbEFmojqL5VuWNR/cP/JHKYZGtkKTBQPNDakZkYZftYU2sRev9DDh51Wbt9c2yXBsAgIWDNe2pNxfSuM20F9QTQZoac5kzhw65vcb9qGLOggxpsw0lpXPrytSp7R83FtA49PaLeuYGovGLaH3BRkFGKWHKTMoPcibWrtlieebS0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=B0wiE8GgyXz8eIceQeCC4HinJBNyLgrIHBKykFHjKJ4=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304941-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:mid,rock-chips.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D4C9761AC10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Patch 1-5 are to add missing clock "hclk" for RK3588 eDP nodes.
Patch 6 is to use automatic cleanup to fix OF node reference leak
        reported by Sashiko.
Patch 7-8 are to add the RK3576 eDP node.
Patch 9-11 are to support the RK3576 Analogix DP controller.

Damon Ding (11):
  dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock
    for RK3588
  dt-bindings: display: rockchip: analogix-dp: Add per-clock
    descriptions
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
  drm/rockchip: analogix_dp: Enable hclk for RK3588
  drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
  arm64: dts: rockchip: Add eDP node for RK3576
  drm/bridge: analogix_dp: Rename and simplify is_rockchip()
  drm/bridge: analogix_dp: Add support for RK3576
  drm/rockchip: analogix_dp: Add support for RK3576

 .../rockchip/rockchip,analogix-dp.yaml        | 47 ++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  4 +-
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  4 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  3 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 18 +++----
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 31 +++++++++---
 include/drm/bridge/analogix_dp.h              | 13 ++++-
 8 files changed, 124 insertions(+), 24 deletions(-)

---

Changes in v2:
- Split out separate patches to add the "hclk" clock reference.
- Split out separate patches to enable the "hclk" clock.
- Add Reviewed-by tag.

Changes in v3:
- Add a patch to expand descriptions for clocks of the eDP node.
- Add Reviewed-by tag.

Changes in v4:
- Modify commit msg.

Changes in v5:
- Enforce the correct third clock name on a per-compatible basis.
- Modify the commit msg simultaneously.
- Add Acked-by tag.

Changes in v6:
- Expand more detail commit msg about using hclk instead of grf clock.

Changes in v7:
- List all valid clock names at the top level, and constrain the clock
  count for each platform with minItems/maxItems in allOf.

Changes in v8:
- Fix indentation to 10 for enum in clock-names property.

Changes in v9:
- Restore the explicit clock-names for RK3399 and RK3588 eDP dt-bindings.

Changes in v10:
- Use automatic cleanup to fix OF node reference leak reported by
  Sashiko.

-- 
2.34.1


