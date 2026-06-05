Return-Path: <devicetree+bounces-307146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j5xQH0Q3Imq9TwEAu9opvQ
	(envelope-from <devicetree+bounces-307146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:41:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA77644B86
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:41:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=ewF0gHb2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307146-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307146-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3B485304CB27
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 02:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3E13BA241;
	Fri,  5 Jun 2026 02:38:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49228.qiye.163.com (mail-m49228.qiye.163.com [45.254.49.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED643E2AA4;
	Fri,  5 Jun 2026 02:38:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780627132; cv=none; b=hQSOa1NIBn8iWCR1SgIQ8yoqKc1BJBE5Ud/92rxbfWd15oU/Dwn6rn6Ini08z38C2PawOkeGy7F/PbvS9+XuBatjkZUkIN74gKRThfufuq7aF+Bsl7RnsFURZM+no0duS1THZeWuyl6bukdVf4jbNhbSDW5JyrISMCfI9nt++2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780627132; c=relaxed/simple;
	bh=6H+Ces+9bYYbn8t7HfbY6qVPgNGXR71TmborUaSVSX0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=W9kYk4kebVwJUk+76Xtq86eD9+pLnBPCBHzGtoJ0c8sgaui+fRJeGney/zM58kVFAb4QBpZ4hoaJosT/9fsUNAXzdvb4QYX15XJBZZU9vj76SsSqYUsYwNyrv7KUIac3RwzO66cZINsj/N22PpWn/C7sRvCMj8Xp1fHgYiS0KA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ewF0gHb2; arc=none smtp.client-ip=45.254.49.228
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 412944ced;
	Fri, 5 Jun 2026 10:23:16 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: sebastian.reichel@collabora.com,
	nicolas.frattaroli@collabora.com,
	alchark@gmail.com,
	detlev.casanova@collabora.com,
	cristian.ciocaltea@collabora.com,
	michael.riesch@collabora.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v11 0/3] Add eDP support for RK3576
Date: Fri,  5 Jun 2026 10:23:02 +0800
Message-Id: <20260605022305.3058853-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e9597895003a8kunm9494c84840184
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSR4eVkofS0xDSx4dH0wdSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=ewF0gHb2zHUhiXplbtvTOiSdLmIrvk2wdjGSa3oZuRSgLnSPGyinOjtTNeX5rpkfpgKs072cLKevW9ysr47eTnYLsDIBn6J2iO3nec+AcinsH9ATOiNb9/5IdegKIM9mEDxA7wgYh8KrYDTP1lxk4ka0KJw3/QKikNHIsqnB58U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qmd31Xl8YEPF78aS746HOGoMm6a1yS/+/Q2ASXjijrU=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:sebastian.reichel@collabora.com,m:nicolas.frattaroli@collabora.com,m:alchark@gmail.com,m:detlev.casanova@collabora.com,m:cristian.ciocaltea@collabora.com,m:michael.riesch@collabora.com,m:andy.yan@rock-chips.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:damon.ding@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307146-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,rock-chips.com,vger.kernel.org,lists.infradead.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:from_mime,rock-chips.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7AA77644B86

Picked from:
https://lore.kernel.org/all/20260601065100.1103873-1-damon.ding@rock-chips.com/

Patch 1-2 are to add missing clock "hclk" for RK3588 eDP nodes.
Patch 3 is to add the RK3576 eDP node.

Damon Ding (3):
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
  arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
  arm64: dts: rockchip: Add eDP node for RK3576

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 28 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  4 +--
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  4 +--
 3 files changed, 32 insertions(+), 4 deletions(-)

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

Changes in v11:
- Pick and rebase DT related patches.

-- 
2.34.1


