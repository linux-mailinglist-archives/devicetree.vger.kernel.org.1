Return-Path: <devicetree+bounces-302763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMW5HS5oFGriNAcAu9opvQ
	(envelope-from <devicetree+bounces-302763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 17:18:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4695A5CC2A6
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 17:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6367E3036627
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 15:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7AD234C9A3;
	Mon, 25 May 2026 15:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Unbu8r8i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3290.qiye.163.com (mail-m3290.qiye.163.com [220.197.32.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979393F44C5;
	Mon, 25 May 2026 15:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779722197; cv=none; b=KavpEbGroulIkUpteRNl9qSCRpkp0u9LLfjntvELaZ4bXkDJwErhVZnmp9vXy0oYHcgLis+Pn+Z1JyFo/CZLBSeQ0Q/K0vbBuJ4OSYstrIvke7bux3liJ0jH6iMwmIzSJvaByvHONmR4HjFCcME1CzpDTiibSCTl8Ee+lV9dbdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779722197; c=relaxed/simple;
	bh=hC2PiAnL7iVsUhwI37Obo54ip1RzK2jZF6PcsE73xCY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JjxPN4m9ULmXCUf40boCZGCjftKsGpA+NtvoINkLl/JGdjy8VpRt3yV1NX5Ep1boD07L5AiUGgvptFMdsEz7mhg+JpztB2czC+UwNKfGjSrm7jyvnMN4OC4ZpmPNrpMjYr02Wf6hWnVKpxVgX+2y+wCr9+onvEJWknX5VMD1PcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Unbu8r8i; arc=none smtp.client-ip=220.197.32.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fbb28c33;
	Mon, 25 May 2026 20:53:51 +0800 (GMT+08:00)
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
Subject: [PATCH v8 00/10] Add eDP support for RK3576
Date: Mon, 25 May 2026 20:53:21 +0800
Message-Id: <20260525125331.140059-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e5f32e6b203a8kunm7b8971f5af5ca0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaQkIZVk9PHUhCHk5OSUtJGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Unbu8r8icwtrjcO9bJWbgyedDBWLtIQMcJ/L7/Fu8f7fEzaQTTRhR5S9GA+bptIqGqeKVRmj8E8HRavqsTn4KT8Q24RZXo7j8iDwup7+eTmC1EvQi/soT2/NbDpyaAdY07kVagckD7cr+vhRS28XTsDImhf7zDtNM3BeXUK10ho=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1chQECBbO/WhCQ59gb6Beg7H8hoog+2uyixWh6CVuXg=;
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
	TAGGED_FROM(0.00)[bounces-302763-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 4695A5CC2A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Patch 1-5 are to add missing clock "hclk" for RK3588 eDP nodes.
Patch 6-7 are to add the RK3576 eDP node.
Patch 8-10 are to support the RK3576 Analogix DP controller.

Damon Ding (10):
  dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock
    for RK3588
  dt-bindings: display: rockchip: analogix-dp: Add per-clock
    descriptions
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
  drm/rockchip: analogix_dp: Enable hclk for RK3588
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
  arm64: dts: rockchip: Add eDP node for RK3576
  drm/bridge: analogix_dp: Rename and simplify is_rockchip()
  drm/bridge: analogix_dp: Add support for RK3576
  drm/rockchip: analogix_dp: Add support for RK3576

 .../rockchip/rockchip,analogix-dp.yaml        | 41 ++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  4 +-
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  4 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  3 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 18 ++++----
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 15 +++++++
 include/drm/bridge/analogix_dp.h              | 13 +++++-
 8 files changed, 108 insertions(+), 18 deletions(-)

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

-- 
2.34.1


