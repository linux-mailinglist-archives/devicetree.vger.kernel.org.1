Return-Path: <devicetree+bounces-303197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHuNBJ9aFmo9lgcAu9opvQ
	(envelope-from <devicetree+bounces-303197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 04:44:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB28F5DEAAB
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 04:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6CA56300B9CA
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 02:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647032DECBA;
	Wed, 27 May 2026 02:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="MDPoRqeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m82252.xmail.ntesmail.com (mail-m82252.xmail.ntesmail.com [156.224.82.252])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FE819D074;
	Wed, 27 May 2026 02:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.224.82.252
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779849879; cv=none; b=W1a6wwUBaCwpYTRGnVkAdCncjQdRtzASBqlArNkKIcCpBSbtDasm1TL2rDsUpiH6JN9GIRsKL7rnVRq3+K4KNbwysOiwQBpUZf2Gd2U9R8VNee79PADfbTDlahFJ9K+xrYFgQzE4AftE+O1PED/cMIWXUCeGLL6XaCKa5fwxdyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779849879; c=relaxed/simple;
	bh=eF/zDtkOVlH2gwdegYpzag24hppifqpUO5mCfHQOLgo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kqFxxecHSZaY/UzRCJF13ZeDKJB+5nybr/YjS9yOFoTBEMhPzs+ZnAVXi1qW4tDHh9bbMvT7vUco1mVKvcXHdUtgjB3vPfh4Hz1gNo0GgXPsj/CPdTfUb+dxPZnuA7Tfv5d6vbCeMDgc6Mp2BXl85v0lX++EGmVUQ5H4bNsBUCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MDPoRqeN; arc=none smtp.client-ip=156.224.82.252
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3ff559aa3;
	Wed, 27 May 2026 10:44:30 +0800 (GMT+08:00)
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
	Damon Ding <damon.ding@rock-chips.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 02/10] dt-bindings: display: rockchip: analogix-dp: Add per-clock descriptions
Date: Wed, 27 May 2026 10:43:28 +0800
Message-Id: <20260527024336.191433-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260527024336.191433-1-damon.ding@rock-chips.com>
References: <20260527024336.191433-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e6751be5303a8kunm8053ce91bced8e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSU9IVkpPTU9LSU9MQ0gdSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=MDPoRqeN87zMRHfhG53G5kv+ctCCBq2F+zToVjNnThHfTQ7MjWug22ocNJ61bERf7t50ciuQH88liyFga2KKbASDwu141TGprThOhBp38nkzhswKTvIBgPP46aNhmKkR3gu6wnPAgbvpw3HMUc5ii1dkBPEN1IxUIW6Y9/7lsk4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=8wZdWrZcctCV9qTZxW4lLYgtdTAhgCemqTuoXrbEqzM=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303197-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[31];
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
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com,microchip.com];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: EB28F5DEAAB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Supplement dedicated description for each clock in the clocks
property, clarifying the function of each clock input for the
Analogix DP controller binding.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Modify the commit msg.

Changes in v5:
- Add Acked-by tag.
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml      | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index 6643889f2a9c..1ef1d56ef6e2 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -19,7 +19,10 @@ properties:
 
   clocks:
     minItems: 2
-    maxItems: 3
+    items:
+      - description: Reference clock
+      - description: APB bus clock
+      - description: GRF or AHB bus clock
 
   clock-names:
     minItems: 2
-- 
2.34.1


